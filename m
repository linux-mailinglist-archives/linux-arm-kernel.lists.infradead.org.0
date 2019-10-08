Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C85C8CFC73
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 16:31:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pq/4HOlSZh72VfTtD6WPCbymLqjNoUSXllLSbyvEU5Y=; b=FJxFJjyCAlRWEd
	T1RWgz6bY9XyI8FnSsfYLVUGt8Dc0y+rM0KFgaYY/k5Vd8YsUpR29MtZdS6hhDP7l9QfICJxOw5pr
	UbwgXJWngodfQeMHNnbI1sBbrcz9Q+jcOShgcDjDW/8XTwx/DbGPb7biJw+trwz244dSUAjBPolCv
	4V6NUer7CqP9lUhgUwod11KPmN2AdwdSCUn1dW75GO3HWx93d1/mclS2T+USA4wsDLZnTXPKZ2u+Z
	6vzmXpSNb0omEUMmEdPidLR9TwR2TLiYGmUsE82wKzfnFmTvdTqCi2AwTGg84d4+4e9WWnMMRjHhk
	DG24wx6/GpQ1CmA8HxZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHqWc-0004CP-5r; Tue, 08 Oct 2019 14:31:42 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHqWQ-0004BM-Pz
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 14:31:32 +0000
X-Originating-IP: 86.207.98.53
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 56FA7C0007;
 Tue,  8 Oct 2019 14:31:22 +0000 (UTC)
Date: Tue, 8 Oct 2019 16:31:21 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Michal Simek <michal.simek@xilinx.com>
Subject: Re: [PATCH] rtc: xilinx: Fix calibval variable type
Message-ID: <20191008143121.GX4254@piout.net>
References: <20765c4c27aa92c75426b82fd2815ebef6471492.1570544738.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20765c4c27aa92c75426b82fd2815ebef6471492.1570544738.git.michal.simek@xilinx.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_073130_977373_0AB97D32 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-rtc@vger.kernel.org, Srinivas Goud <srinivas.goud@xilinx.com>,
 monstr@monstr.eu, Alessandro Zummo <a.zummo@towertech.it>,
 linux-kernel@vger.kernel.org, git@xilinx.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 08/10/2019 16:25:41+0200, Michal Simek wrote:
> From: Srinivas Goud <srinivas.goud@xilinx.com>
> 
> This patch fixes the warnings reported by static code analysis.
> Updated calibval variable type to unsigned type from signed.
> 
> Signed-off-by: Srinivas Goud <srinivas.goud@xilinx.com>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> ---
> 
>  drivers/rtc/rtc-zynqmp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/rtc/rtc-zynqmp.c b/drivers/rtc/rtc-zynqmp.c
> index 2c762757fb54..da0dbea8def3 100644
> --- a/drivers/rtc/rtc-zynqmp.c
> +++ b/drivers/rtc/rtc-zynqmp.c
> @@ -44,7 +44,7 @@ struct xlnx_rtc_dev {
>  	void __iomem		*reg_base;
>  	int			alarm_irq;
>  	int			sec_irq;
> -	int			calibval;
> +	unsigned int		calibval;

Note that ideally, this varialbe should be removed and replaced by
.read_offset and .set_offset callbacks so userspace can properly
recalibrate the crystal instead of relying on a static value inside the
device tree.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
