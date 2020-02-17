Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66522161268
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 13:58:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Routh+NxTiSxfsm5L2qtENrGu40WjBtZJAgOkPOseVk=; b=L3oYKTR7mgcj39bKUGXLWM3pb
	2/jhFZm6PQ8eCRE/xqvLs4yEzFhM084y7PY1QholDTRnIIphE6NelwTIiO4RhnadI9MbA6IulWUi0
	o7zqKTFg8A8NlxrpcEEXS6fC0HJQ1q6aZeXsDo0UfrWoH5sz/oe69XR+Qpx+9vAv8nVA21ek03Sc6
	AK2LME0dfn48aPU9aA3yv2vyWSoh9yxIQqEdVr54XK55aSzNAY+MIgTQlLvMSWWLMb0LFO6FdPj9D
	O5Ka6XWuhTFuY2tQctZfbp96YzYQnOUemm03+IRaC5t9ESz84wwCsAgnS108jJQj2g0ONGsJLqODp
	yTRw5Hfng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3fz1-0007yC-R7; Mon, 17 Feb 2020 12:58:43 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3fyh-0007v0-Q1
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 12:58:25 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1581944303; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=F6hhLqoUemqMuF73oXb4UEU9cz/dkxAFWWHo7Eh0TSQ=;
 b=Tla5eXqwghiXXGIzaSJjli3QWyUCUNXEDc0JnYAYVZkmr+FUxZCEiAq/7s9I1+i5IFt6hxUO
 PD5y4+u095k3k9qkQ4WT45MusFPnKT5gAnBrD8l1xPR6NMn/9q4PaW51bLlvRzHV+8QcUoie
 pL1exBLJVn0laR9mVA0ILzbVNOU=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e4a8dee.7f5b2223c9d0-smtp-out-n03;
 Mon, 17 Feb 2020 12:58:22 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id C662EC433A2; Mon, 17 Feb 2020 12:58:22 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: cang)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id E5411C4479D;
 Mon, 17 Feb 2020 12:58:20 +0000 (UTC)
MIME-Version: 1.0
Date: Mon, 17 Feb 2020 20:58:20 +0800
From: Can Guo <cang@codeaurora.org>
To: Stanley Chu <stanley.chu@mediatek.com>
Subject: Re: [PATCH v1 1/2] scsi: ufs: add required delay after gating
 reference clock
In-Reply-To: <20200217093559.16830-2-stanley.chu@mediatek.com>
References: <20200217093559.16830-1-stanley.chu@mediatek.com>
 <20200217093559.16830-2-stanley.chu@mediatek.com>
Message-ID: <c6874825dd60ea04ed401fbd1b5cb568@codeaurora.org>
X-Sender: cang@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_045823_922241_F0EF5670 
X-CRM114-Status: GOOD (  18.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
 andy.teng@mediatek.com, jejb@linux.ibm.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org, avri.altman@wdc.com,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 alim.akhtar@samsung.com, matthias.bgg@gmail.com, asutoshd@codeaurora.org,
 bvanassche@acm.org, linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-02-17 17:35, Stanley Chu wrote:
> In UFS version 3.0, a newly added attribute bRefClkGatingWaitTime 
> defines
> the minimum time for which the reference clock is required by device 
> during
> transition to LS-MODE or HIBERN8 state.
> 
> Currently this time is detected and stored in
> hba->dev_info.clk_gating_wait_us but applied to vendor implementatios 
> only.
> Make it applied to reference clock named as "ref_clk" in device tree in
> common path.
> 
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
> ---
>  drivers/scsi/ufs/ufshcd.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
> index 744b8254220c..7f60721f54d1 100644
> --- a/drivers/scsi/ufs/ufshcd.c
> +++ b/drivers/scsi/ufs/ufshcd.c
> @@ -7417,8 +7417,10 @@ static int __ufshcd_setup_clocks(struct ufs_hba
> *hba, bool on,
>  	struct ufs_clk_info *clki;
>  	struct list_head *head = &hba->clk_list_head;
>  	unsigned long flags;
> +	unsigned long wait_us;
>  	ktime_t start = ktime_get();
>  	bool clk_state_changed = false;
> +	bool ref_clk;
> 
>  	if (list_empty(head))
>  		goto out;
> @@ -7436,7 +7438,8 @@ static int __ufshcd_setup_clocks(struct ufs_hba
> *hba, bool on,
> 
>  	list_for_each_entry(clki, head, list) {
>  		if (!IS_ERR_OR_NULL(clki->clk)) {
> -			if (skip_ref_clk && !strcmp(clki->name, "ref_clk"))
> +			ref_clk = !strcmp(clki->name, "ref_clk") ? true : false;
> +			if (skip_ref_clk && ref_clk)
>  				continue;
> 
>  			clk_state_changed = on ^ clki->enabled;
> @@ -7449,6 +7452,9 @@ static int __ufshcd_setup_clocks(struct ufs_hba
> *hba, bool on,
>  				}
>  			} else if (!on && clki->enabled) {
>  				clk_disable_unprepare(clki->clk);
> +				wait_us = hba->dev_info.clk_gating_wait_us;
> +				if (ref_clk && wait_us)
> +					usleep_range(wait_us, wait_us + 10);

Hi Stanley,

If wait_us is 1us, it would be inappropriate to use usleep_range() here.
You have checks of the delay in patch #2, but why it is not needed here?

Thanks,
Can Guo.

>  			}
>  			clki->enabled = on;
>  			dev_dbg(hba->dev, "%s: clk: %s %sabled\n", __func__,

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
