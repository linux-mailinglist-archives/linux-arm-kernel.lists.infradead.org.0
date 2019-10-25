Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B5C9E432E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 08:03:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KQDMlZh1onWH3c94f8uAOOU/utTsdJf45oCkAbVswJQ=; b=d1zTvCtjr/FDsq
	FoprFaXHpPqSP+i05JOVNnQeLF7JDibfHmKCoI/WSAkc49OnMmGwxHE3SdKtk+iz9i+hiMqSpD3DQ
	+aeq3MlkykmLK9Opw0hT4L85fovrvB2lESrktlwaUA70iDGrjQqbFbStBeL3uzif0HqlUpmcLYpUf
	+6fQZzrG5S90bGzVlSfPWT3s3Hojv3X8oMrad67wrqLHdHvgITdWUQtI+6pcks8qDaj03AolroCU5
	9KsKCEU3XYA29EWtbvtc12sVNmy1tUrg7texzopLwCwooVRJWKnoF6nZxmjd4lG4qVbI9alGwNSZ4
	krNbmKhOv0dtbdGQfUlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNsh2-0001Sj-Uu; Fri, 25 Oct 2019 06:03:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNsgk-0001S8-RE
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 06:03:08 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3C5C920867;
 Fri, 25 Oct 2019 06:03:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571983384;
 bh=c7ti4GFrsA/oZs298kHAMXgQFVfjX7ZmHcLTMl0QR3M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oaIhGzc9JKCukybgOrrWj2QeJSTSiNvDM/LxGvxL1c3HU9/hpRItpkw70ruGmQ2f6
 +NusTR+UpmVIvEi63OhyFO+Em2BX2qITuUYKxu2Cc2O4ijxJ988mtARRj4J6BIohI1
 3i1qgUcsJdLmlyu+OiwrYFVTNA4ubHHB19vroI6M=
Date: Fri, 25 Oct 2019 14:02:52 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH] ARM: dts: imx6q-gw54xx: Do not use
 'simple-audio-card,dai-link'
Message-ID: <20191025060250.GB3208@dragon>
References: <20191008163024.17703-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191008163024.17703-1-festevam@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_230306_910116_8671E950 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Tim Harvey <tharvey@gateworks.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 08, 2019 at 01:30:24PM -0300, Fabio Estevam wrote:
> According to Documentation/devicetree/bindings/sound/simple-card.txt
> the 'simple-audio-card,dai-link' may be omitted when the card has
> only one DAI link, which is the case here.
>     
> Get rid of 'simple-audio-card,dai-link' in order to fix the following
> build warning with W=1:
> 
> arch/arm/boot/dts/imx6q-gw54xx.dts:19.32-31.5: Warning (unit_address_vs_reg): /sound-digital/simple-audio-card,dai-link@0: node has a unit name, but no reg property
> 
> Cc: Tim Harvey <tharvey@gateworks.com>
> Signed-off-by: Fabio Estevam <festevam@gmail.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
