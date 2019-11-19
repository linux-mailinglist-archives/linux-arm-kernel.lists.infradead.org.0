Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0150102D18
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 20:57:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=quB/eesDXmwz/somHcSariN0Rqz2+ZPjHBu7Z0Ysvrg=; b=juXnNFgIQw3QbG
	fc4W70HluDSTnTBeQzt+6RRNF97tnejBmn0wWMRbJEm6OdNtcZPtN7ktB70/SkpUu1Mkfd737hJiY
	FsHfwcsX2qgOmL42ybJMfehRzHqDgBBxbd6VEl+ZQfEdLDCEaL2ATvJC+8sIHdMQ5RcjJ5eCbSy0P
	3C31+fHq4u+C/wEFUjkz0oSHgBH7CASPPmGUqTMlXCHkUygpXmSr17exHthOppXHBWg4wSkS5zVGx
	VrXK6iCIIZyrHyEnaDBDVD47ZyLdGGgA5Z4N8CyAssDR6KfspGZsdxHsj4lgQRN/89AZiVaw+I5dy
	jXI8VG2AB0r0u66pNrcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX9cz-0003oa-Cz; Tue, 19 Nov 2019 19:57:33 +0000
Received: from smtprelay0040.hostedemail.com ([216.40.44.40]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX9co-0003ns-98
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 19:57:25 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay08.hostedemail.com (Postfix) with ESMTP id 41B74182CF668;
 Tue, 19 Nov 2019 19:57:18 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50, 0, 0, , d41d8cd98f00b204, joe@perches.com,
 :::::::::::::::::::::::,
 RULES_HIT:2:41:355:379:599:800:960:967:973:988:989:1260:1263:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1535:1593:1594:1730:1747:1777:1792:2194:2199:2393:2525:2538:2553:2560:2563:2682:2685:2828:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3165:3354:3622:3865:3867:3870:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4049:4118:4321:4659:5007:6742:9025:9038:10004:10848:11026:11232:11473:11658:11914:12043:12297:12740:12760:12895:13018:13019:13439:13846:14096:14097:14659:21080:21324:21433:21451:21627:21691:21740:30019:30054:30067:30070:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:2, LUA_SUMMARY:none
X-HE-Tag: coat09_3f7cbed42d161
X-Filterd-Recvd-Size: 7563
Received: from XPS-9350.home (unknown [47.151.135.224])
 (Authenticated sender: joe@perches.com)
 by omf09.hostedemail.com (Postfix) with ESMTPA;
 Tue, 19 Nov 2019 19:57:16 +0000 (UTC)
Message-ID: <cb41a8956be6cf11e9d25c1790eeb8c935b9ab29.camel@perches.com>
Subject: Re: [PATCH 2/2] MAINTAINERS: Switch to Marvell addresses
From: Joe Perches <joe@perches.com>
To: Robert Richter <rrichter@marvell.com>
Date: Tue, 19 Nov 2019 11:56:53 -0800
In-Reply-To: <20191119185012.2fekd6f5gbpflpqe@rric.localdomain>
References: <20191119165549.14570-1-rrichter@marvell.com>
 <20191119165549.14570-4-rrichter@marvell.com>
 <64ace55545c028bc39b08370074aafd32e8fc5f5.camel@perches.com>
 <20191119185012.2fekd6f5gbpflpqe@rric.localdomain>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_115723_604919_1D61B2D1 
X-CRM114-Status: UNSURE (   7.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.40 listed in list.dnswl.org]
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
 Arnd Bergmann <arnd@arndb.de>, Catalin Marinas <catalin.marinas@arm.com>,
 Jan Glauber <jglauber@marvell.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "soc@kernel.org" <soc@kernel.org>, arm soc <arm@kernel.org>,
 George Cherian <gcherian@marvell.com>, Will Deacon <will@kernel.org>,
 Sunil Kovvuri Goutham <sgoutham@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-11-19 at 18:50 +0000, Robert Richter wrote:
> On 19.11.19 09:14:36, Joe Perches wrote:
> > On Tue, 2019-11-19 at 16:56 +0000, Robert Richter wrote:
> > >  W:	http://www.cavium.com
> > 
> > Might want to change these W: links too
> 
> Yeah, good catch, was searching only for @cavium, which did not work
> quite well here. Fixed that.

Maybe make that change globally in all the files other
than MAINTAINERS as well eventually.

arch/arm64/mm/numa.c:6: * Author: Ganapatrao Kulkarni <gkulkarni@cavium.com>
arch/mips/cavium-octeon/octeon-usb.c:551:MODULE_AUTHOR("David Daney <david.daney@cavium.com>");
arch/mips/include/asm/octeon/cvmx-coremask.h:6: * Copyright (c) 2016  Cavium Inc. (support@cavium.com).
arch/mips/include/asm/octeon/cvmx-lmcx-defs.h:4: * Contact: support@cavium.com
arch/mips/include/asm/octeon/cvmx-rst-defs.h:4: * Contact: support@cavium.com
drivers/ata/ahci_octeon.c:99:MODULE_AUTHOR("Cavium, Inc. <support@cavium.com>");
drivers/crypto/cavium/cpt/cptpf_main.c:668:MODULE_AUTHOR("George Cherian <george.cherian@cavium.com>");
drivers/crypto/cavium/cpt/cptvf_main.c:860:MODULE_AUTHOR("George Cherian <george.cherian@cavium.com>");
drivers/crypto/cavium/nitrox/nitrox_main.c:593:MODULE_AUTHOR("Srikanth Jampala <Jampala.Srikanth@cavium.com>");
drivers/i2c/busses/i2c-thunderx-pcidrv.c:6: *	    Jan Glauber <jglauber@cavium.com>
drivers/mmc/host/cavium-octeon.c:336:MODULE_AUTHOR("Cavium Inc. <support@cavium.com>");
drivers/mmc/host/cavium.c:11: *   David Daney <david.daney@cavium.com>
drivers/mmc/host/cavium.c:12: *   Peter Swain <pswain@cavium.com>
drivers/mmc/host/cavium.c:13: *   Steven J. Hill <steven.hill@cavium.com>
drivers/mmc/host/cavium.c:14: *   Jan Glauber <jglauber@cavium.com>
drivers/net/ethernet/cavium/common/cavium_ptp.c:338:MODULE_AUTHOR("Cavium Networks <support@cavium.com>");
drivers/net/ethernet/cavium/liquidio/cn23xx_pf_device.c:4: * Contact: support@cavium.com
drivers/net/ethernet/cavium/liquidio/cn23xx_pf_device.h:4: * Contact: support@cavium.com
drivers/net/ethernet/cavium/liquidio/cn23xx_pf_regs.h:4: * Contact: support@cavium.com
drivers/net/ethernet/cavium/liquidio/cn23xx_vf_device.c:4: * Contact: support@cavium.com
drivers/net/ethernet/cavium/liquidio/cn23xx_vf_device.h:4: * Contact: support@cavium.com
drivers/net/ethernet/cavium/liquidio/cn23xx_vf_regs.h:4: * Contact: support@cavium.com
drivers/net/ethernet/cavium/liquidio/cn66xx_device.c:4: * Contact: support@cavium.com
drivers/net/ethernet/cavium/liquidio/cn66xx_device.h:4: * Contact: support@cavium.com
drivers/net/ethernet/cavium/liquidio/cn66xx_regs.h:4: * Contact: support@cavium.com
drivers/net/ethernet/cavium/liquidio/cn68xx_device.c:4: * Contact: support@cavium.com
drivers/net/ethernet/cavium/liquidio/cn68xx_device.h:4: * Contact: support@cavium.com
drivers/net/ethernet/cavium/liquidio/cn68xx_regs.h:4: * Contact: support@cavium.com
drivers/net/ethernet/cavium/liquidio/lio_core.c:4: * Contact: support@cavium.com
drivers/net/ethernet/cavium/liquidio/lio_ethtool.c:4: * Contact: support@cavium.com
drivers/net/ethernet/cavium/liquidio/lio_main.c:4: * Contact: support@cavium.com
drivers/net/ethernet/cavium/liquidio/lio_main.c:39:MODULE_AUTHOR("Cavium Networks, <support@cavium.com>");
drivers/net/ethernet/cavium/liquidio/lio_vf_main.c:4: * Contact: support@cavium.com
drivers/net/ethernet/cavium/liquidio/lio_vf_main.c:32:MODULE_AUTHOR("Cavium Networks, <support@cavium.com>");
drivers/net/ethernet/cavium/liquidio/lio_vf_rep.c:4: * Contact: support@cavium.com
drivers/net/ethernet/cavium/liquidio/lio_vf_rep.h:4: * Contact: support@cavium.com
drivers/net/ethernet/cavium/liquidio/liquidio_common.h:4: * Contact: support@cavium.com
drivers/net/ethernet/cavium/liquidio/liquidio_image.h:4: * Contact: support@cavium.com
drivers/net/ethernet/cavium/liquidio/octeon_config.h:4: * Contact: support@cavium.com
drivers/net/ethernet/cavium/liquidio/octeon_console.c:4: * Contact: support@cavium.com
drivers/net/ethernet/cavium/liquidio/octeon_device.c:4: * Contact: support@cavium.com
drivers/net/ethernet/cavium/liquidio/octeon_device.h:4: * Contact: support@cavium.com
drivers/net/ethernet/cavium/liquidio/octeon_droq.c:4: * Contact: support@cavium.com
drivers/net/ethernet/cavium/liquidio/octeon_droq.h:4: * Contact: support@cavium.com
drivers/net/ethernet/cavium/liquidio/octeon_iq.h:4: * Contact: support@cavium.com
drivers/net/ethernet/cavium/liquidio/octeon_mailbox.c:4: * Contact: support@cavium.com
drivers/net/ethernet/cavium/liquidio/octeon_mailbox.h:4: * Contact: support@cavium.com
drivers/net/ethernet/cavium/liquidio/octeon_main.h:4: * Contact: support@cavium.com
drivers/net/ethernet/cavium/liquidio/octeon_mem_ops.c:4: * Contact: support@cavium.com
drivers/net/ethernet/cavium/liquidio/octeon_mem_ops.h:4: * Contact: support@cavium.com
drivers/net/ethernet/cavium/liquidio/octeon_network.h:4: * Contact: support@cavium.com
drivers/net/ethernet/cavium/liquidio/octeon_nic.c:4: * Contact: support@cavium.com
drivers/net/ethernet/cavium/liquidio/octeon_nic.h:4: * Contact: support@cavium.com
drivers/net/ethernet/cavium/liquidio/request_manager.c:4: * Contact: support@cavium.com
drivers/net/ethernet/cavium/liquidio/response_manager.c:4: * Contact: support@cavium.com
drivers/net/ethernet/cavium/liquidio/response_manager.h:4: * Contact: support@cavium.com
drivers/perf/thunderx2_pmu.c:5: * Author: Ganapatrao Kulkarni <gkulkarni@cavium.com>
drivers/perf/thunderx2_pmu.c:1054:MODULE_AUTHOR("Ganapatrao Kulkarni <gkulkarni@cavium.com>");
drivers/spi/spi-cavium-thunderx.c:6: * Authors: Jan Glauber <jglauber@cavium.com>
drivers/staging/octeon-usb/octeon-hcd.c:11: * Copyright (c) 2003-2010 Cavium Networks (support@cavium.com). All rights
drivers/staging/octeon-usb/octeon-hcd.c:3736:MODULE_AUTHOR("Cavium, Inc. <support@cavium.com>");
drivers/staging/octeon-usb/octeon-hcd.h:11: * Copyright (c) 2003-2010 Cavium Networks (support@cavium.com). All rights
drivers/usb/storage/unusual_devs.h:2140:/* Reported-by George Cherian <george.cherian@cavium.com> */
drivers/watchdog/octeon-wdt-main.c:607:MODULE_AUTHOR("Cavium Inc. <support@cavium.com>");





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
