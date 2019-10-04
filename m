Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E1BCBD54
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 16:34:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8sjJRNXP4u3oF0i+0ev9xN2y+XdeoZFLrbjDXHGb4t0=; b=VoALmtUOfFLnYJ
	HEu4AL/lIRW+WTI14gq9++rO9DUp3r7MoEbVWTB1hDJxRozFDz4FLWScO3ZsQvOnV//2/tVnkAWe8
	6ETiSr23p2ixdcqMJ5mRu0+irlHPplJ8h+lh1w7r3HTe5kg0EXJpR9jS4AAu3R4iBYqRk7IQYifdd
	C3l9ZBAvTbyWbLEPyCMmOq2XBcHw/EU4xn27QxXeMjmRKCtmklCHpUFlXDYrkRaB5sAamEQtKGcyE
	3cFZ0m74Ni/u5M14oiwaEQyprk59G/fEMBz155+8vWrEfHWThFUbMbPcKs3PCeAFSF54O8JaKLSN2
	24BhM1EbaqKLGMOs5zmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGOeo-0003t4-Gv; Fri, 04 Oct 2019 14:34:10 +0000
Received: from mail.bitwise.fi ([109.204.228.163])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGOdg-0002l0-6D
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 14:33:02 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.bitwise.fi (Postfix) with ESMTP id A3E8260027;
 Fri,  4 Oct 2019 17:32:55 +0300 (EEST)
X-Virus-Scanned: Debian amavisd-new at mail.bitwise.fi
Received: from mail.bitwise.fi ([127.0.0.1])
 by localhost (mail.bitwise.fi [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1_nSWJbb_H5q; Fri,  4 Oct 2019 17:32:52 +0300 (EEST)
Received: from [192.168.5.238] (fw1.dmz.bitwise.fi [192.168.69.1])
 (using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested) (Authenticated sender: anssiha)
 by mail.bitwise.fi (Postfix) with ESMTPSA id C99FB60064;
 Fri,  4 Oct 2019 17:32:52 +0300 (EEST)
Subject: Re: [PATCH 2/6] net: can: xilinx_can: Fix flags field initialization
 for axi can and canps
To: Appana Durga Kedareswara rao <appana.durga.rao@xilinx.com>
References: <1552908766-26753-1-git-send-email-appana.durga.rao@xilinx.com>
 <1552908766-26753-3-git-send-email-appana.durga.rao@xilinx.com>
From: Anssi Hannula <anssi.hannula@bitwise.fi>
Message-ID: <d1bedb13-f66f-b0fd-bd6d-9f95b64fc405@bitwise.fi>
Date: Fri, 4 Oct 2019 17:32:52 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1552908766-26753-3-git-send-email-appana.durga.rao@xilinx.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_073300_418078_2B2D637A 
X-CRM114-Status: GOOD (  14.80  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.204.228.163 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 michal.simek@xilinx.com, mkl@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-can@vger.kernel.org,
 davem@davemloft.net, wg@grandegger.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18.3.2019 13.32, Appana Durga Kedareswara rao wrote:
> AXI CAN IP and CANPS IP supports tx fifo empty feature, this patch updates
> the flags field for the same.
>
> Signed-off-by: Appana Durga Kedareswara rao <appana.durga.rao@xilinx.com>
> ---
>  drivers/net/can/xilinx_can.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/net/can/xilinx_can.c b/drivers/net/can/xilinx_can.c
> index 2de51ac..22569ef 100644
> --- a/drivers/net/can/xilinx_can.c
> +++ b/drivers/net/can/xilinx_can.c
> @@ -1428,6 +1428,7 @@ static const struct dev_pm_ops xcan_dev_pm_ops = {
>  };
>  
>  static const struct xcan_devtype_data xcan_zynq_data = {
> +	.flags = XCAN_FLAG_TXFEMP,
>  	.bittiming_const = &xcan_bittiming_const,
>  	.btr_ts2_shift = XCAN_BTR_TS2_SHIFT,
>  	.btr_sjw_shift = XCAN_BTR_SJW_SHIFT,

Thanks for catching this, this line seemed to have been incorrectly
removed by my 9e5f1b273e ("can: xilinx_can: add support for Xilinx CAN
FD core").

But:

> @@ -1435,6 +1436,7 @@ static const struct xcan_devtype_data xcan_zynq_data = {
>  };
>  
>  static const struct xcan_devtype_data xcan_axi_data = {
> +	.flags = XCAN_FLAG_TXFEMP,
>  	.bittiming_const = &xcan_bittiming_const,
>  	.btr_ts2_shift = XCAN_BTR_TS2_SHIFT,
>  	.btr_sjw_shift = XCAN_BTR_SJW_SHIFT,


Are you sure this is right?
In the documentation [1] there does not seem to be any TXFEMP interrupt,
it would be interrupt bit 14 but AXI CAN 5.0 seems to only go up to 11.

Or maybe it is undocumented or there is a newer version somewhere?

[1]
https://www.xilinx.com/support/documentation/ip_documentation/can/v5_0/pg096-can.pdf

-- 
Anssi Hannula / Bitwise Oy
+358 503803997


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
