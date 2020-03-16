Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03EBD186510
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 07:35:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sPgJcutV/ojvmUMSF/Nmwhsf44eLZLBxb2OhLvzMo6M=; b=ZMpOy2ggNB5gen3bkrRozNuE7
	3tHXBYKr+JQLlbRidaKwFgAfIwnUdQy/qReb8LsgMkF7A7TZRrNEO/Rg0YMgW3d0tCVBndQ593Wrg
	Oc137JbOowm9OLfb3Gz3YmgRNYbyzXJBy8gchnr21Ecw8CA7PsbDHTot5BjS2ESnJOgfabr7s17X7
	nBXjtThjl+U9c5DYc5xwQWHPzEB3S5tYRV1RrVbOBYKkYYqQ1sKlZ4ipmrRa6NJ5YZ2qs4B8nP3NR
	FW6pJrgWaGk3V0BBZiTf/Cdteu8uUas5e+xaj9EycmyVvTgLnU/NAMTZKX0/cK8Jg3xMBxDjji36j
	zbxmOKG3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDjLL-0002r2-VZ; Mon, 16 Mar 2020 06:35:19 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDjLA-0002gk-TK
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 06:35:12 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1584340511; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=OwErceFW23ZNn6eud/cydjRhiFjDFARC1CNzkO9VKPQ=;
 b=BAvMnM376imdrxh1sDfSRHVbq/s6P0lbelkk5iovW+jcbtp/W7bMHMXI4OieUTWfpk2T636n
 096SfjZdHsgzP5E74BiNm0USiJbWc/E/hgrYfW7d2p0MxrZMRajUtxHPZ7tpwmRs0qPiqRWu
 +ZyZtl24FAba0TQ4UpnjqnXB2+o=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e6f1e09.7f25e78b03b0-smtp-out-n01;
 Mon, 16 Mar 2020 06:34:49 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 3D356C4478C; Mon, 16 Mar 2020 06:34:48 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,URIBL_BLOCKED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: cang)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id F0662C433D2;
 Mon, 16 Mar 2020 06:34:41 +0000 (UTC)
MIME-Version: 1.0
Date: Mon, 16 Mar 2020 14:34:41 +0800
From: Can Guo <cang@codeaurora.org>
To: Stanley Chu <stanley.chu@mediatek.com>
Subject: Re: [PATCH v5 7/8] scsi: ufs: make HCE polling more compact to
 improve initialization latency
In-Reply-To: <20200316034218.11914-8-stanley.chu@mediatek.com>
References: <20200316034218.11914-1-stanley.chu@mediatek.com>
 <20200316034218.11914-8-stanley.chu@mediatek.com>
Message-ID: <b25d211adfe0f14c729dbf4e6eb5e159@codeaurora.org>
X-Sender: cang@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_233511_312836_D764CBCB 
X-CRM114-Status: GOOD (  15.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: bvanassche@acm.org, linux-scsi@vger.kernel.org, andy.teng@mediatek.com,
 jejb@linux.ibm.com, chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, avri.altman@wdc.com, martin.peter~sen@oracle.com,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 alim.akhtar@samsung.com, matthias.bgg@gmail.com, asutoshd@codeaurora.org,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-03-16 11:42, Stanley Chu wrote:
> Reduce the waiting period between each HCE (Host Controller Enable)
> polling from 5 ms to 1 ms. In the same time, increase the maximum 
> polling
> times to make "total polling time" unchanged approximately.
> 
> This change could make HCE initializatoin faster to improve latency of
> ufshcd initialization, error recovery, and resume behaviors.
> 
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
> Reviewed-by: Avri Altman <avri.altman@wdc.com>

Reviewed-by: Can Guo <cang@codeaurora.org>

> ---
>  drivers/scsi/ufs/ufshcd.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
> index dcbf45d547d8..cd33d07c56cf 100644
> --- a/drivers/scsi/ufs/ufshcd.c
> +++ b/drivers/scsi/ufs/ufshcd.c
> @@ -4301,7 +4301,7 @@ int ufshcd_hba_enable(struct ufs_hba *hba)
>  	ufshcd_wait_us(hba->hba_enable_delay_us, 100, true);
> 
>  	/* wait for the host controller to complete initialization */
> -	retry = 10;
> +	retry = 50;
>  	while (ufshcd_is_hba_active(hba)) {
>  		if (retry) {
>  			retry--;
> @@ -4310,7 +4310,7 @@ int ufshcd_hba_enable(struct ufs_hba *hba)
>  				"Controller enable failed\n");
>  			return -EIO;
>  		}
> -		ufshcd_wait_us(5000, 100, true);
> +		ufshcd_wait_us(1000, 100, true);
>  	}
> 
>  	/* enable UIC related interrupts */

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
