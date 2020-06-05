Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F6C11EF3B9
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 11:10:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fvXUvJ8yH9/0BxyiARjXByFsIFXoBmVrBbbTL9zgvIM=; b=epx42ib/EBwpCe
	ww8F1o9IM2h0A/cwZXKPT3cnA5EamgyJNS+af+EGHmypzB0eqIBw92BvtC4LX29O/4mpq5QQAir8P
	BgsLR6z8mcQoTtXhbDaKAsZ+p7NKV+9n/PUshpo93XVa323NcE/hkdm2DGMNPGPMXClBolfkDUCkn
	oxjqpkccD3BL+Er4syl/VEDqKtOeO+p2OTHH0oME0JStdDmwjaUNTuCjx49gB/JvTBYCjuPDYwt0L
	jPodklR7ugJGabvvdIvvuo8cEj2bFfc+0qPl+2WFKIuJY1yVdb8LjrNs5dARL5ldBkDh7FyTT1Ndg
	PSIK/cAV00CTqlZXXNbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh8Mo-0004rQ-5r; Fri, 05 Jun 2020 09:10:22 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh8Me-0004jh-BZ; Fri, 05 Jun 2020 09:10:14 +0000
X-UUID: c0a01acc12cd45f988df559337340d18-20200605
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=VjXux5WMEXt+SNJUOpjSrCg/TII0W/Rj7aI7a6xVHpE=; 
 b=ls9R6n9IGXDUKqpHS5IXQejgeStm7Hy3+RXWs4hTJ+knZzsD4Aj62NTea3yFMY7uIt/Cx9DNQ051TNBTkashYSbBdUJw9kVVg0KNw/5u0eXPOEut2d+yF3+spTGiZ6k0hKFYz/p2IE3avUG0c/DpU/75Uhtw2dsTCwaVZ+FZ+3g=;
X-UUID: c0a01acc12cd45f988df559337340d18-20200605
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <neal.liu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 995161006; Fri, 05 Jun 2020 01:10:03 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 5 Jun 2020 02:00:06 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 5 Jun 2020 16:59:42 +0800
Received: from [172.21.77.33] (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 5 Jun 2020 16:59:42 +0800
Message-ID: <1591347582.21704.9.camel@mtkswgap22>
Subject: Re: Security Random Number Generator support
From: Neal Liu <neal.liu@mediatek.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Date: Fri, 5 Jun 2020 16:59:42 +0800
In-Reply-To: <20200605080905.GF1551@shell.armlinux.org.uk>
References: <1591085678-22764-1-git-send-email-neal.liu@mediatek.com>
 <CAMj1kXHjAdk5=-uSh_=S9j5cz42zr3h6t+YYGy+obevuQDp0fg@mail.gmail.com>
 <85dfc0142d3879d50c0ba18bcc71e199@misterjones.org>
 <1591169342.4878.9.camel@mtkswgap22>
 <fcbe37f6f9cbcde24f9c28bc504f1f0e@kernel.org>
 <20200603093416.GY1551@shell.armlinux.org.uk>
 <1591341543.19510.4.camel@mtkswgap22>
 <20200605080905.GF1551@shell.armlinux.org.uk>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 877F0A62BB37F3A937A5DF7C63E4C12D4C5FEB8F623D563618F2A16D037472AE2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_021012_409152_3404245B 
X-CRM114-Status: GOOD (  15.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED
 DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 Julius Werner <jwerner@google.com>, Herbert Xu <herbert@gondor.apana.org.au>,
 Arnd Bergmann <arnd@arndb.de>, Marc Zyngier <maz@kernel.org>,
 Matt Mackall <mpm@selenic.com>, Sean Wang <sean.wang@kernel.org>,
 lkml <linux-kernel@vger.kernel.org>, wsd_upstream <wsd_upstream@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Crystal Guo =?UTF-8?Q?=28=E9=83=AD=E6=99=B6=29?= <Crystal.Guo@mediatek.com>,
 Ard
 Biesheuvel <ardb@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2020-06-05 at 09:09 +0100, Russell King - ARM Linux admin wrote:
> On Fri, Jun 05, 2020 at 03:19:03PM +0800, Neal Liu wrote:
> > On Wed, 2020-06-03 at 17:34 +0800, Russell King - ARM Linux admin wrote:
> > > This kind of thing is something that ARM have seems to shy away from
> > > doing - it's a point I brought up many years ago when the whole
> > > trustzone thing first appeared with its SMC call.  Those around the
> > > conference table were not interested - ARM seemed to prefer every
> > > vendor to do off and do their own thing with the SMC interface.
> > 
> > Does that mean it make sense to model a sec-rng driver, and get each
> > vendor's SMC function id by DT node?
> 
> _If_ vendors have already gone off and decided to use different SMC
> function IDs for this, while keeping the rest of the SMC interface
> the same, then the choice has already been made.
> 
> I know on 32-bit that some of the secure world implementations can't
> be changed; they're burnt into the ROM. I believe on 64-bit that isn't
> the case, which makes it easier to standardise.
> 
> Do you have visibility of how this SMC is implemented in the secure
> side?  Is it in ATF, and is it done as a vendor hack or is there an
> element of generic implementation to it?  Has it been submitted
> upstream to the main ATF repository?
> 

Take MediaTek as an example, some SoCs are implemented in ATF, some of
them are implemented in TEE. We have no plan to make generic
implementation in "secure world".

Due to there must have different implementation in secure world for
vendors, we plan to provide a generic SMC interface in secure rng kernel
driver for more flexibility.

Vendors can decide which "secure world" they want (HYP/ATF/TEE) by
different smc/hvc and different SMC function IDs in DT node.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
