Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FEF315A7C0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 12:24:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OS5cDwlscuuuLZkVVBGBSZsNcQTVvDYyAaQqYxBroQ0=; b=DLaLZY7i5tIeVe
	NHXUUA/lyvIchgp4CSTyYXSHxVjbbjpQU3DbVglFUd6ZeE3HgUh4/Wq33uFAwmLo9gBhliy2rbxqI
	jSBGYw7VYZBKtjDhgROUBOcLblaq4nw82Gx/7jhQij1HpHKYzn2Ytw/AOQB6BY5MAlnyXD+oXr+HO
	dLulp4ZtEVY8Q3DW1FDQYHQyWx92X8NZ3QHYJ9hP2Rv0KPB7A8PcW9gLyrWChzGOYo7DU1qOe2S6h
	cnezPgQ7whRGPJG3VbeRhem5chsJpT7gjfFuMPa48/TDmpI2R492lIwmQmedqKhgBIP7oPyvIF9qD
	W/UgwNVeB4Cn/1EAyz/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1q7Y-0000vS-Dw; Wed, 12 Feb 2020 11:23:56 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1q7Q-0000um-IT
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 11:23:50 +0000
X-Originating-IP: 90.65.102.129
Received: from localhost (lfbn-lyo-1-1670-129.w90-65.abo.wanadoo.fr
 [90.65.102.129])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 094DFC000A;
 Wed, 12 Feb 2020 11:23:42 +0000 (UTC)
Date: Wed, 12 Feb 2020 12:23:42 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Srinivas Neeli <srinivas.neeli@xilinx.com>
Subject: Re: [PATCH v2] rtc: zynqmp: Clear alarm interrupt status before
 interrupt enable
Message-ID: <20200212112342.GC3326@piout.net>
References: <1581503079-387-1-git-send-email-srinivas.neeli@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1581503079-387-1-git-send-email-srinivas.neeli@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_032348_749235_C361D3A0 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-rtc@vger.kernel.org, a.zummo@towertech.it, sgoud@xilinx.com,
 michal.simek@xilinx.com, linux-kernel@vger.kernel.org, git@xilinx.com,
 shubhraj@xilinx.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/02/2020 15:54:39+0530, Srinivas Neeli wrote:
> Fix multiple occurring interrupts for alarm interrupt. RTC module doesn't
> clear the alarm interrupt status bit immediately after the interrupt is
> triggered.This is due to the sticky nature of the alarm interrupt status
> register. The alarm interrupt status register can be cleared only after
> the second counter outruns the set alarm value. To fix multiple spurious
> interrupts, disable alarm interrupt in the handler and clear the status
> bit before enabling the alarm interrupt.
> 
> Fixes: 11143c19eb57 ("rtc: add xilinx zynqmp rtc driver")
> Signed-off-by: Srinivas Neeli <srinivas.neeli@xilinx.com>
> ---
> Changes in V2:
> Addressed Michal Simek comments
>  - Removed new line in declartion part.
>  - Added new line before return.
> ---
>  drivers/rtc/rtc-zynqmp.c | 27 +++++++++++++++++++++++----
>  1 file changed, 23 insertions(+), 4 deletions(-)
> 
Applied, thanks.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
