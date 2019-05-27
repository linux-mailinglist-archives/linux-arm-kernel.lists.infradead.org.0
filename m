Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 479822BB76
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 22:41:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WQIFez36k8FQyYpjYjCYoX1j/nAq6Z8j2yx25H3rA8w=; b=eRMy4maJtuB6b8
	5/du/yIpGgxM80lZEmJ6IUbHWiHRrmIJIttjEliJb8Hm4GVWgHoNJqpYO4n/HaahGaq5jd3JvgE24
	mN025lTaBGRklybiz/mqyLcpk6EvWtXIHMovJagjIR/JOXSZKthOMc32rRggdTAAaHLXCbgk8xlOW
	Wc7pbbfEDFSWxD+7+vYwyBAefVM1kJ+wCiJVWTNAjVFEtUukHpUnIG/WxG4VjmFmxNZpZ1TbI83c0
	xd7WxoRwPxG1FQATcgAeYidMUEVgFWzIARkEtfrm5Ec1QE0vrHI4joAJrhwBYzhp+eAXG8Focp2TO
	n5LgbEMN9cMloDUxtEFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVMRM-0000HH-AI; Mon, 27 May 2019 20:41:52 +0000
Received: from emh03.mail.saunalahti.fi ([62.142.5.109])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVMRE-0000Gc-8H
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 20:41:46 +0000
Received: from darkstar.musicnaut.iki.fi (85-76-68-2-nat.elisa-mobile.fi
 [85.76.68.2])
 by emh03.mail.saunalahti.fi (Postfix) with ESMTP id D2E5140020;
 Mon, 27 May 2019 23:41:35 +0300 (EEST)
Date: Mon, 27 May 2019 23:41:35 +0300
From: Aaro Koskinen <aaro.koskinen@iki.fi>
To: Tony Lindgren <tony@atomide.com>
Subject: Re: omap2plus_defconfig broken on ARMv6
Message-ID: <20190527204135.GA24195@darkstar.musicnaut.iki.fi>
References: <20190524220731.GB4597@t60.musicnaut.iki.fi>
 <20190527055746.GH5447@atomide.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190527055746.GH5447@atomide.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_134145_102328_33F96328 
X-CRM114-Status: UNSURE (   7.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.142.5.109 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-omap@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Sun, May 26, 2019 at 10:57:46PM -0700, Tony Lindgren wrote:
> * Aaro Koskinen <aaro.koskinen@iki.fi> [190524 22:07]:
> > Noticed today that booting omap2plus_defconfig on N8x0 crashes
> > early. Disabling CONFIG_SMP makes it work.
> 
> OK. It sure used to work when I last tested but that's been quite
> a while now. Any ideas which commit caused the ldrexd regression?

No idea, I tried even 3.16 and even that seems to have the same issue
if multi v6/v7 and SMP is selected.

A.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
