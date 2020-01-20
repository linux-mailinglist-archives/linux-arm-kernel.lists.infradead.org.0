Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A01143307
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 21:49:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AewCdv9pIa/lDb+/8D+LPj+5KwQocTAhnY2jw74mL5s=; b=ccUTLnRr3bQcijx4KZW326oWS
	MuV6rI+F8Zbwq+HDOb0QjTfIeEkOD90pIfRpSS4gaCPF6cUAsXc0oUioTGPGi3PC/7DCG0BCIy2ec
	TTrFGARcFajqp47X0ejpVGznhJCl5WqKncfdvwxY42dwDmJ/cUsSAZ3tDmZebh+VUVzKLLspVI7yU
	loamti6MlUw8VjtzuBZJUyCOVx009Qj/q3NgqwItNBr9EgCCOJmBrQk8Ob00hrGn5ZsC7aoYeLT/d
	KjIqU31zKEoNvXkIcaMNbTr5rymX7lVfQNVSxxuQFfHUE1XVnePUyBbje+7YkYEGMLdWcHOJGucZR
	fLRP9FERQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itdzE-0007lb-N2; Mon, 20 Jan 2020 20:49:28 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itdz5-0007l2-3o
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 20:49:21 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1579553358; h=Content-Transfer-Encoding: Content-Type:
 In-Reply-To: MIME-Version: Date: Message-ID: From: References: Cc: To:
 Subject: Sender; bh=kcD4cIT6TO+GhmHS0MBwC7/uH5JRJvAdsZCjW78zRow=;
 b=tnN7AwmYaMylaH8bNS/osu3p/JmpqzBQCVb7Nj6PeWseDlACmpZEze4Jc3abkPxK/qMzbX09
 dpCMKovgXlbb9XsxVC6Z4qkJsVjmh7Vyb3yjN508oj/QqSNl1xgfTOvIHn+Ck/a16n2nb5PZ
 63f/mGP/oKy1U0sMQzZ/5rqebE4=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e26124d.7efaf3d70b90-smtp-out-n02;
 Mon, 20 Jan 2020 20:49:17 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id A260EC447A4; Mon, 20 Jan 2020 20:49:15 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from [10.46.161.159] (i-global254.qualcomm.com [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: asutoshd)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 92D2AC43383;
 Mon, 20 Jan 2020 20:49:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 92D2AC43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=asutoshd@codeaurora.org
Subject: Re: [PATCH v1 2/3] scsi: ufs: export some functions for vendor usage
To: Stanley Chu <stanley.chu@mediatek.com>, linux-scsi@vger.kernel.org,
 martin.petersen@oracle.com, avri.altman@wdc.com, alim.akhtar@samsung.com,
 jejb@linux.ibm.com
References: <20200117035108.19699-1-stanley.chu@mediatek.com>
 <20200117035108.19699-3-stanley.chu@mediatek.com>
From: "Asutosh Das (asd)" <asutoshd@codeaurora.org>
Message-ID: <4dc0cb58-13f6-0678-dcf2-6b0394200157@codeaurora.org>
Date: Mon, 20 Jan 2020 12:49:13 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200117035108.19699-3-stanley.chu@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_124919_216956_0CFBAECC 
X-CRM114-Status: GOOD (  19.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
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
Cc: bvanassche@acm.org, andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, linux-arm-kernel@lists.infradead.org,
 beanhuo@micron.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/16/2020 7:51 PM, Stanley Chu wrote:
> Export below functions for vendor usage,
> 
> int ufshcd_hba_enable(struct ufs_hba *hba);
> int ufshcd_make_hba_operational(struct ufs_hba *hba);
> int ufshcd_uic_hibern8_exit(struct ufs_hba *hba);
> 
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
> ---

LGTM.

Reviewed-by: Asutosh Das <asutoshd@codeaurora.org>

>   drivers/scsi/ufs/ufshcd.c | 11 +++++++----
>   drivers/scsi/ufs/ufshcd.h |  3 +++
>   2 files changed, 10 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
> index bea036ab189a..1168baf358ea 100644
> --- a/drivers/scsi/ufs/ufshcd.c
> +++ b/drivers/scsi/ufs/ufshcd.c
> @@ -250,7 +250,6 @@ static int ufshcd_probe_hba(struct ufs_hba *hba);
>   static int __ufshcd_setup_clocks(struct ufs_hba *hba, bool on,
>   				 bool skip_ref_clk);
>   static int ufshcd_setup_clocks(struct ufs_hba *hba, bool on);
> -static int ufshcd_uic_hibern8_exit(struct ufs_hba *hba);
>   static int ufshcd_uic_hibern8_enter(struct ufs_hba *hba);
>   static inline void ufshcd_add_delay_before_dme_cmd(struct ufs_hba *hba);
>   static int ufshcd_host_reset_and_restore(struct ufs_hba *hba);
> @@ -3865,7 +3864,7 @@ static int ufshcd_uic_hibern8_enter(struct ufs_hba *hba)
>   	return ret;
>   }
>   
> -static int ufshcd_uic_hibern8_exit(struct ufs_hba *hba)
> +int ufshcd_uic_hibern8_exit(struct ufs_hba *hba)
>   {
>   	struct uic_command uic_cmd = {0};
>   	int ret;
> @@ -3891,6 +3890,7 @@ static int ufshcd_uic_hibern8_exit(struct ufs_hba *hba)
>   
>   	return ret;
>   }
> +EXPORT_SYMBOL_GPL(ufshcd_uic_hibern8_exit);
>   
>   void ufshcd_auto_hibern8_update(struct ufs_hba *hba, u32 ahit)
>   {
> @@ -4162,7 +4162,7 @@ static int ufshcd_complete_dev_init(struct ufs_hba *hba)
>    *
>    * Returns 0 on success, non-zero value on failure
>    */
> -static int ufshcd_make_hba_operational(struct ufs_hba *hba)
> +int ufshcd_make_hba_operational(struct ufs_hba *hba)
>   {
>   	int err = 0;
>   	u32 reg;
> @@ -4208,6 +4208,7 @@ static int ufshcd_make_hba_operational(struct ufs_hba *hba)
>   out:
>   	return err;
>   }
> +EXPORT_SYMBOL_GPL(ufshcd_make_hba_operational);
>   
>   /**
>    * ufshcd_hba_stop - Send controller to reset state
> @@ -4285,7 +4286,7 @@ static int ufshcd_hba_execute_hce(struct ufs_hba *hba)
>   	return 0;
>   }
>   
> -static int ufshcd_hba_enable(struct ufs_hba *hba)
> +int ufshcd_hba_enable(struct ufs_hba *hba)
>   {
>   	int ret;
>   
> @@ -4310,6 +4311,8 @@ static int ufshcd_hba_enable(struct ufs_hba *hba)
>   
>   	return ret;
>   }
> +EXPORT_SYMBOL_GPL(ufshcd_hba_enable);
> +
>   static int ufshcd_disable_tx_lcc(struct ufs_hba *hba, bool peer)
>   {
>   	int tx_lanes, i, err = 0;
> diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
> index b1a1c65be8b1..fca372d98495 100644
> --- a/drivers/scsi/ufs/ufshcd.h
> +++ b/drivers/scsi/ufs/ufshcd.h
> @@ -799,8 +799,11 @@ static inline void ufshcd_rmwl(struct ufs_hba *hba, u32 mask, u32 val, u32 reg)
>   
>   int ufshcd_alloc_host(struct device *, struct ufs_hba **);
>   void ufshcd_dealloc_host(struct ufs_hba *);
> +int ufshcd_hba_enable(struct ufs_hba *hba);
>   int ufshcd_init(struct ufs_hba * , void __iomem * , unsigned int);
> +int ufshcd_make_hba_operational(struct ufs_hba *hba);
>   void ufshcd_remove(struct ufs_hba *);
> +int ufshcd_uic_hibern8_exit(struct ufs_hba *hba);
>   int ufshcd_wait_for_register(struct ufs_hba *hba, u32 reg, u32 mask,
>   				u32 val, unsigned long interval_us,
>   				unsigned long timeout_ms, bool can_sleep);
> 


-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
