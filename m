Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 145131FFFDD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 03:48:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BUb/QF0RYMdgUvF0oMIiKIVmPWBVhIKOqUYjliBrCog=; b=qXVeXO7b0fveVz
	NUXlo/Q/XaTTwBKTDvTjAxMvk4+uRTTO7lC10Hfza0uBvEGpDka8CBIguY7FTtrjIFONNareE/C7S
	d6Z0phl7WRjhbT+LIw9Do86JUdwipgZEGWew+BoaGr9qPP4M8FMWuRHPE6U5lUS9I6EvSb8o80R9z
	581NCO3YkjcfxkSDHDPtP2nRvL4hJwSdXgN6cyTHuOqlX9gDzrcrhNoyVBWCyJ4wOvVwCvvLUlmWA
	aVpL1+zHYrJChXSOVxOfNfNznH2gE05hpQMf1yB0hwsFAMxkXCszwstdINAn4w0smE8niJLkM/V/b
	5dBEMnrF1u8cXaqpp6tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jm68S-000179-G7; Fri, 19 Jun 2020 01:48:04 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jm68J-00015V-45; Fri, 19 Jun 2020 01:47:56 +0000
X-UUID: 70a54a09e5934659829bcf1d3912993c-20200618
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=DE1s9SBibd4ThP5Mt1aI+rVY3mxb520JHblT3mUqGaQ=; 
 b=nPYs9bQSvMx758JJes/N3Y8rvqsdPvHmviSI1TY6cSoPhSkjVX3Bmzk7BUDczhxNNAtPCh9+pATpCY2K/6fX/he20/r8cXVlnMmHS159p+QMO59fvhnPatJVJ2ctHETzepaZc5tN9PDF8fNQHm/KIHoRrmGU6+bGJUj3uO84ge8=;
X-UUID: 70a54a09e5934659829bcf1d3912993c-20200618
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <neal.liu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1401431628; Thu, 18 Jun 2020 17:47:49 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 18 Jun 2020 18:47:42 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 19 Jun 2020 09:47:39 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 19 Jun 2020 09:47:44 +0800
Message-ID: <1592531264.19628.2.camel@mtkswgap22>
Subject: Re: Security Random Number Generator support
From: Neal Liu <neal.liu@mediatek.com>
To: Marc Zyngier <maz@kernel.org>
Date: Fri, 19 Jun 2020 09:47:44 +0800
In-Reply-To: <c3d5d4a79c7fe158cae117ff79ab332b@kernel.org>
References: <1591085678-22764-1-git-send-email-neal.liu@mediatek.com>
 <CAMj1kXHjAdk5=-uSh_=S9j5cz42zr3h6t+YYGy+obevuQDp0fg@mail.gmail.com>
 <85dfc0142d3879d50c0ba18bcc71e199@misterjones.org>
 <1591169342.4878.9.camel@mtkswgap22>
 <fcbe37f6f9cbcde24f9c28bc504f1f0e@kernel.org>
 <1591170857.19414.5.camel@mtkswgap22>
 <c3d5d4a79c7fe158cae117ff79ab332b@kernel.org>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: DFDBAF610BC86DD2371E32B64FAA3749787DA7AB10884CFFC46B8422DC8468052000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_184755_170496_2015A8BF 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE
 TREE BINDINGS" <devicetree@vger.kernel.org>, Julius Werner <jwerner@google.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Jose.Marinho@arm.com,
 Sean Wang <sean.wang@kernel.org>, lkml <linux-kernel@vger.kernel.org>,
 wsd_upstream <wsd_upstream@mediatek.com>,
 Crystal Guo =?UTF-8?Q?=28=E9=83=AD=E6=99=B6=29?= <Crystal.Guo@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, Neal Liu <neal.liu@mediatek.com>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Matt Mackall <mpm@selenic.com>, Matthias
 Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org, Ard
 Biesheuvel <ardb@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On Thu, 2020-06-18 at 10:50 +0100, Marc Zyngier wrote:
> On 2020-06-03 08:54, Neal Liu wrote:
> 
> Hi Neal,
> 
> > Do you know which ARM expert could edict this standard?
> > Or is there any chance that we can make one? And be reviewed by
> > maintainers?
> 
> It appears that ARM just released a beta version of the spec at [1].
> 
> I'd encourage you (and anyone else) to have a look at it and provide 
> feedback to ARM.
> 
> Thanks,
> 
>          M.
> 
> [1] 
> https://developer.arm.com/-/media/Files/pdf/DEN0098-True_Random_Number_Generator_Firmware_Interface-1.0BET2.pdf

I also received this spec from ARM. I'll take a look and see if it meets
our needs.
Thanks for your sharing.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
