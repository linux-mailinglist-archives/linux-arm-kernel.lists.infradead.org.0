Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7964EC57F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 16:17:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2CNYALWUGzeHwFzFmNL3FnFlw4zWzvkkSX5ei/B4PiE=; b=hGdsAxgGUJDrlS
	11OiKwuRcEDW2MI80/62EGkRp9giU3cv4fdiaKSwgVHQdg3FoHWpOXKZPxT/pcONBn+iKDdS/BbCg
	TxTUmua/gc58x+97AGm+640kAP/iVpsf0ZlRl9hu4+oEZD3Mv/d8QFKJpUdCORdWZSP2Gpq2Bww/W
	LqM7YbNu5+2AaKwT93WLn91/kNDsRKYTcnoJOb6BRwuvgWXK2y4ZDfRMcwYKlfT6+mnsyjxLGSXDj
	JvL1UaUiPGLC33t1kIBv5z/X+l4s7F/6V7jwTNo4MVfGCWyB+plUSHr0zJfXVPxFeciITeN2ck6DO
	STujWOpldlp/fDmA2FFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQYfk-0007eR-A9; Fri, 01 Nov 2019 15:17:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQYff-0007da-2D
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 15:17:04 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 644B32080F;
 Fri,  1 Nov 2019 15:17:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572621422;
 bh=y/sBWZM32NByFxip6aAiq9YEwye2JIRpLnEQuV8OBYY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qCiy9IvPq+C6YK0qaV5GZ6W7rkpB3beO5SeVWdyzokBvZ3wirucNRFU/HZfi6nYHR
 wqGTNG3wUXlonzWUt+lCoxlKcb6xhHhE9n3C2pZtTRpW1WQqzmw32QkySU7T3ky0Ms
 QOo9qbVJoRNDiIkKA4NcYFrbQT/zICr9Pj3uuwhc=
Date: Fri, 1 Nov 2019 15:16:58 +0000
From: Will Deacon <will@kernel.org>
To: Joakim Zhang <qiangqing.zhang@nxp.com>
Subject: Re: [PATCH V3 3/4] perf/imx_ddr: Add enhanced AXI ID filter support
Message-ID: <20191101151657.GB3287@willie-the-truck>
References: <20191101083317.29510-1-qiangqing.zhang@nxp.com>
 <20191101083317.29510-3-qiangqing.zhang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191101083317.29510-3-qiangqing.zhang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_081703_140812_B639B77A 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, Frank Li <frank.li@nxp.com>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 01, 2019 at 08:36:16AM +0000, Joakim Zhang wrote:
> With DDR_CAP_AXI_ID_FILTER quirk, indicating HW supports AXI ID filter
> which only can get bursts from DDR transaction, i.e. DDR read/write
> requests.
> 
> This patch add DDR_CAP_AXI_ID_ENHANCED_FILTER quirk, indicating HW
> supports AXI ID filter which can get bursts and bytes from DDR
> transaction at the same time. We hope PMU always return bytes in the
> driver due to it is more meaningful for users.

Thanks. I've queued the series locally, but the part I'm still wondering
about is how we advertise the enhanced filter.

For example, how does userspace know whether or not it will get bursts
or bytes back when specifying an AXI filter? Should we create something
like caps/enhanced_filter which reads as 0/1 depending on whether or
not the quirk is set? You can look at intel-pt.c and arm_spe_pmu.c for
examples of this sort of thing.

If you agree, please send a patch on top to implement this.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
