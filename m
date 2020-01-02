Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2186712EAA6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 20:51:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xNJA9/+kmeUNP9SdQ5oJOq/SNiHZGWoyhJwPvUpzF+E=; b=MnwKH6+iReVv6r
	gqMnCtDWWi/QaNJ6h8Yhecao9eAM846zUHxi4PF5Yp+fps+Ff+Xd29BTg6L2FdXG99AfPH/zWuWRJ
	PtKinkBMlW50oeWHUxsnwMbt48r/i8goOFLNXEAZhOfai1w65mUsehUQPWe3o6w1pl7c/aX+UtKi6
	usXpnsldIAnLmyNLs07gkrfbyFHlrweOIA758YaiCpeYXgt8NQiHdNuRM73EMCcDKtUwDooAyMFuH
	0sUK+MsmoRh/x9tvM2kn5Cjr9eQTT4i93ZalpeE4dZLcvspdW4xblJ5Oz+wxACNhgD2Ob23cV7vH2
	nS17jVAw2MgubzeOACUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in6V5-0003gF-N4; Thu, 02 Jan 2020 19:51:19 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in6Uy-0003fn-VK
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 19:51:14 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 942208087;
 Thu,  2 Jan 2020 19:51:52 +0000 (UTC)
Date: Thu, 2 Jan 2020 11:51:08 -0800
From: Tony Lindgren <tony@atomide.com>
To: "H. Nikolaus Schaller" <hns@goldelico.com>
Subject: Re: [PATCH] ARM: dts: Add omap3-echo
Message-ID: <20200102195108.GF16702@atomide.com>
References: <20191224161005.28083-1-nerv@dawncrow.de>
 <20191224184503.GK35479@atomide.com>
 <60412339-53BF-4DC1-8AF6-4FB0E75D429C@goldelico.com>
 <53e6cbbd-1094-cba2-4942-981502a738d4@dawncrow.de>
 <20191230172948.GL35479@atomide.com>
 <55E6481C-2137-4086-ACDF-5F7D86E41A21@goldelico.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <55E6481C-2137-4086-ACDF-5F7D86E41A21@goldelico.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_115113_051952_9394AC67 
X-CRM114-Status: GOOD (  13.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, =?utf-8?B?QW5kcsOp?= Hentschel <nerv@dawncrow.de>,
 linux@arm.linux.org.uk, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, bcousson@baylibre.com,
 linux-omap@vger.kernel.org, Adam Ford <aford173@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* H. Nikolaus Schaller <hns@goldelico.com> [191231 08:16]:
> > Am 30.12.2019 um 18:29 schrieb Tony Lindgren <tony@atomide.com>:
> > And let's also add minimal dm3725.dtsi, am3715.dtsi and am3703.dtsi
> > to make things simple.
> 
> Well, is that "simple"?

Well simple from "adding support for a new device in most case" point
of view yes..

> We also have to add omap3503, omap3515, omap3520, omap3530.dtsi.
> And probably am3351,2,4,6,7,8,9 variants with different capabilities
> (PRU, SGX, CAN, ZCZ ports to name some).
> 
> And to be correct, there should be a different "compatible".

..and yes the number of permutations quickly gets out of control :)

The SoC specific compatibles should be there though. So everybody,
please keep adding them as we encounter the missing ones.

Note that we don't seem to have much any feature detection for the
newer TI parts. At least am4 and dra7 already rely on
of_machine_is_compatible() checks for omap_hwmod_43xx_data.c and
omap_hwmod_7xx_data.c.

> Rob asked me when reviewing the pvrsgx bindings if the img,5xx variants
> can be autodetected to reduce bindings complexity.

Yes also dynamic detection is needed, and we do have that working
for many SoCs. The use in ti-sysc driver is still missing though,
and newer SoCs never had feature detection added.

> > The device tree is supposed to describe the
> > hardware, and in most cases the SoC version is fixed and need no
> > dynamic detection.
> 
> There may be exactly the same board populated with either one since
> they are drop-in pin compatible. So this may proliferate to the
> board.dts files and u-boot can have to load different .dtb.

Yeah. I'm afraid we're already depending for bootloader picking
the right dtb for many cases, such as capes etc.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
