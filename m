Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 300BE84D75
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 15:36:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T3gqTOKciUfpnJTtx3fKz8xnhMvSSL819ycJPb/Se9A=; b=JzEU0XB+5o9QFG
	bK+8Ope1PmDkD5RO3USCm5YlboAsBkqm+imBH9hOmiCh7YuxIrAUbbxTKek9Ds5dlL35jLrVmcUOu
	0bSOYi10e+gO7W+OXf1Xy4/g/ifF5Jyz3stHVZinYWwsMz1v2odQyo6K/CNoy2pEqBvZbcOVfj+fL
	gLsQUtNjuBIse0QjdesrlEA6Cwv4Fp9BKdeY+SxBw0BgmRdEam5cjwwAmL2uytzITn70YIqSFZQrG
	HPN/GZcPXtqWin6rTsxKTpYZXhG3rYt/Z0/hmhVgOyShA1rKbmnhs1Uru2fIxDexxCCRSvETUM2T3
	qk38CJOHBEHC6CwK1NVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvM76-0001Yn-W8; Wed, 07 Aug 2019 13:36:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvM6v-0001YP-KT
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 13:36:15 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1hvM6t-0004Mp-Kl; Wed, 07 Aug 2019 15:36:11 +0200
Message-ID: <1565184971.5048.8.camel@pengutronix.de>
Subject: Re: [PATCH] firmware: arm_scmi: Use {get,put}_unaligned_le32 accessors
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Date: Wed, 07 Aug 2019 15:36:11 +0200
In-Reply-To: <20190807130038.26878-1-sudeep.holla@arm.com>
References: <20190807130038.26878-1-sudeep.holla@arm.com>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_063613_675076_6609DF01 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sudeep,

On Wed, 2019-08-07 at 14:00 +0100, Sudeep Holla wrote:
> Instead of type-casting the {tx,rx}.buf all over the place while
> accessing them to read/write __le32 from/to the firmware, let's use
> the nice existing {get,put}_unaligned_le32 accessors to hide all the
> type cast ugliness.
> 
> Suggested-by: Philipp Zabel <p.zabel@pengutronix.de>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  drivers/firmware/arm_scmi/base.c    |  2 +-
>  drivers/firmware/arm_scmi/clock.c   | 10 ++++------
>  drivers/firmware/arm_scmi/common.h  |  2 ++
>  drivers/firmware/arm_scmi/perf.c    |  8 ++++----
>  drivers/firmware/arm_scmi/power.c   |  6 +++---
>  drivers/firmware/arm_scmi/reset.c   |  2 +-
>  drivers/firmware/arm_scmi/sensors.c | 12 +++++-------
>  7 files changed, 20 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/firmware/arm_scmi/base.c b/drivers/firmware/arm_scmi/base.c
> index 204390297f4b..f804e8af6521 100644
> --- a/drivers/firmware/arm_scmi/base.c
> +++ b/drivers/firmware/arm_scmi/base.c
[...]
> @@ -204,14 +204,12 @@ scmi_clock_rate_get(const struct scmi_handle *handle, u32 clk_id, u64 *value)
>  	if (ret)
>  		return ret;
>  
> -	*(__le32 *)t->tx.buf = cpu_to_le32(clk_id);
> +	put_unaligned_le32(clk_id, t->tx.buf);
>  
>  	ret = scmi_do_xfer(handle, t);
>  	if (!ret) {
> -		__le32 *pval = t->rx.buf;
> -
> -		*value = le32_to_cpu(*pval);
> -		*value |= (u64)le32_to_cpu(*(pval + 1)) << 32;
> +		*value = get_unaligned_le32(t->rx.buf);
> +		*value |= (u64)get_unaligned_le32(t->rx.buf + 1) << 32;

Isn't t->rx.buf a void pointer? If I am not mistaken, you'd either have
to keep the pval local variables, or cast to (__le32 *) before doing
pointer arithmetic.

regards
Philipp

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
