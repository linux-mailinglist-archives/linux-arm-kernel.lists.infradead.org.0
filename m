Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A3EE1C295B
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 May 2020 03:51:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5kjW+4QpcA3PxCT0iW/rLMqm1vagXbKeqfnYmRaVbgE=; b=KiSuETe61t4WW2v2UjwWisUik
	bXMIeJxiNi2sIGt/4wBD/h1Kbz27J4AwE+adf6K2Cad8ocYV+80NHDwaUnHWDeUSO1z8/WXVkAcwt
	Gtg/Nd1fdZGqWXGHXEDSw6e8wP1AcgPgclHGE66+H/djhsH1HqUCmr+bvGUpRX5y4Bi8H6504k+PH
	G9q2oN99H2yemQybwHxYzi4xOg+AJXsj9EH6ULr+H/BsHwXcZJLkPnME/M9PbyJ3TDywDRhZS8n+5
	MMdkeWrGtykHEe6EfNg7h7qjQrVcbHJ8evFLf0KShl4lUMjjVjr5h+MiQEI0IcHcxRkGe4fFMWwuQ
	2d6G3Bejw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jV3n9-000885-1K; Sun, 03 May 2020 01:51:39 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jV3n0-00085n-7Y
 for linux-arm-kernel@lists.infradead.org; Sun, 03 May 2020 01:51:31 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1588470687; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=hB4FBkH/8U2uRl5gbiUMkGwH/lIPHxjTpsf9dChF1Ic=;
 b=jqb9iKsxAtUrGPda4tpn0q/zHUWgXrHACPLiPiIDnfPtTnNuO4M5oV99Pgea/jo6Jwchwqzk
 bbhsPGg2KjOmIJd/xiksu69IcDFd1dmR/8jCc9vqXPwr1MXwMBvaYeqWBRxmphbsTjXWfeua
 CzZHpGnTn/CQbjx8rM31u/fLbBI=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5eae239e.7f6a8bd234c8-smtp-out-n01;
 Sun, 03 May 2020 01:51:26 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id EEFDDC44791; Sun,  3 May 2020 01:51:25 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: cang)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 14C02C433D2;
 Sun,  3 May 2020 01:51:24 +0000 (UTC)
MIME-Version: 1.0
Date: Sun, 03 May 2020 09:51:24 +0800
From: Can Guo <cang@codeaurora.org>
To: Stanley Chu <stanley.chu@mediatek.com>
Subject: Re: [PATCH v3 2/5] scsi: ufs: add "index" in parameter list of
 ufshcd_query_flag()
In-Reply-To: <20200501143835.26032-3-stanley.chu@mediatek.com>
References: <20200501143835.26032-1-stanley.chu@mediatek.com>
 <20200501143835.26032-3-stanley.chu@mediatek.com>
Message-ID: <e4528d5ec4cba4bfb50aeb8c1012672b@codeaurora.org>
X-Sender: cang@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200502_185130_339225_5F9D0CBF 
X-CRM114-Status: GOOD (  20.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
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
 alim.akhtar@samsung.com, matthias.bgg@gmail.com, beanhuo@micron.com,
 bvanassche@acm.org, linux-arm-kernel@lists.infradead.org,
 asutoshd@codeaurora.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-01 22:38, Stanley Chu wrote:
> For preparation of LU Dedicated buffer mode support on WriteBooster
> feature, "index" parameter shall be added and allowed to be specified
> by callers.
> 
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
> Reviewed-by: Bean Huo <beanhuo@micron.com>

Reviewed-by: Can Guo <cang@codeaurora.org>

> ---
>  drivers/scsi/ufs/ufs-sysfs.c |  2 +-
>  drivers/scsi/ufs/ufshcd.c    | 28 +++++++++++++++-------------
>  drivers/scsi/ufs/ufshcd.h    |  2 +-
>  3 files changed, 17 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/scsi/ufs/ufs-sysfs.c 
> b/drivers/scsi/ufs/ufs-sysfs.c
> index 93484408bc40..b86b6a40d7e6 100644
> --- a/drivers/scsi/ufs/ufs-sysfs.c
> +++ b/drivers/scsi/ufs/ufs-sysfs.c
> @@ -631,7 +631,7 @@ static ssize_t _name##_show(struct device 
> *dev,				\
>  	struct ufs_hba *hba = dev_get_drvdata(dev);			\
>  	pm_runtime_get_sync(hba->dev);					\
>  	ret = ufshcd_query_flag(hba, UPIU_QUERY_OPCODE_READ_FLAG,	\
> -		QUERY_FLAG_IDN##_uname, &flag);				\
> +		QUERY_FLAG_IDN##_uname, 0, &flag);			\
>  	pm_runtime_put_sync(hba->dev);					\
>  	if (ret)							\
>  		return -EINVAL;						\
> diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
> index c6668799d956..f23705379b7d 100644
> --- a/drivers/scsi/ufs/ufshcd.c
> +++ b/drivers/scsi/ufs/ufshcd.c
> @@ -2784,13 +2784,13 @@ static inline void ufshcd_init_query(struct
> ufs_hba *hba,
>  }
> 
>  static int ufshcd_query_flag_retry(struct ufs_hba *hba,
> -	enum query_opcode opcode, enum flag_idn idn, bool *flag_res)
> +	enum query_opcode opcode, enum flag_idn idn, u8 index, bool 
> *flag_res)
>  {
>  	int ret;
>  	int retries;
> 
>  	for (retries = 0; retries < QUERY_REQ_RETRIES; retries++) {
> -		ret = ufshcd_query_flag(hba, opcode, idn, flag_res);
> +		ret = ufshcd_query_flag(hba, opcode, idn, index, flag_res);
>  		if (ret)
>  			dev_dbg(hba->dev,
>  				"%s: failed with error %d, retries %d\n",
> @@ -2811,16 +2811,17 @@ static int ufshcd_query_flag_retry(struct 
> ufs_hba *hba,
>   * @hba: per-adapter instance
>   * @opcode: flag query to perform
>   * @idn: flag idn to access
> + * @index: flag index to access
>   * @flag_res: the flag value after the query request completes
>   *
>   * Returns 0 for success, non-zero in case of failure
>   */
>  int ufshcd_query_flag(struct ufs_hba *hba, enum query_opcode opcode,
> -			enum flag_idn idn, bool *flag_res)
> +			enum flag_idn idn, u8 index, bool *flag_res)
>  {
>  	struct ufs_query_req *request = NULL;
>  	struct ufs_query_res *response = NULL;
> -	int err, index = 0, selector = 0;
> +	int err, selector = 0;
>  	int timeout = QUERY_REQ_TIMEOUT;
> 
>  	BUG_ON(!hba);
> @@ -4177,7 +4178,7 @@ static int ufshcd_complete_dev_init(struct 
> ufs_hba *hba)
>  	bool flag_res = true;
> 
>  	err = ufshcd_query_flag_retry(hba, UPIU_QUERY_OPCODE_SET_FLAG,
> -		QUERY_FLAG_IDN_FDEVICEINIT, NULL);
> +		QUERY_FLAG_IDN_FDEVICEINIT, 0, NULL);
>  	if (err) {
>  		dev_err(hba->dev,
>  			"%s setting fDeviceInit flag failed with error %d\n",
> @@ -4188,7 +4189,7 @@ static int ufshcd_complete_dev_init(struct 
> ufs_hba *hba)
>  	/* poll for max. 1000 iterations for fDeviceInit flag to clear */
>  	for (i = 0; i < 1000 && !err && flag_res; i++)
>  		err = ufshcd_query_flag_retry(hba, UPIU_QUERY_OPCODE_READ_FLAG,
> -			QUERY_FLAG_IDN_FDEVICEINIT, &flag_res);
> +			QUERY_FLAG_IDN_FDEVICEINIT, 0, &flag_res);
> 
>  	if (err)
>  		dev_err(hba->dev,
> @@ -5003,7 +5004,7 @@ static int ufshcd_enable_auto_bkops(struct 
> ufs_hba *hba)
>  		goto out;
> 
>  	err = ufshcd_query_flag_retry(hba, UPIU_QUERY_OPCODE_SET_FLAG,
> -			QUERY_FLAG_IDN_BKOPS_EN, NULL);
> +			QUERY_FLAG_IDN_BKOPS_EN, 0, NULL);
>  	if (err) {
>  		dev_err(hba->dev, "%s: failed to enable bkops %d\n",
>  				__func__, err);
> @@ -5053,7 +5054,7 @@ static int ufshcd_disable_auto_bkops(struct 
> ufs_hba *hba)
>  	}
> 
>  	err = ufshcd_query_flag_retry(hba, UPIU_QUERY_OPCODE_CLEAR_FLAG,
> -			QUERY_FLAG_IDN_BKOPS_EN, NULL);
> +			QUERY_FLAG_IDN_BKOPS_EN, 0, NULL);
>  	if (err) {
>  		dev_err(hba->dev, "%s: failed to disable bkops %d\n",
>  				__func__, err);
> @@ -5219,7 +5220,7 @@ static int ufshcd_wb_ctrl(struct ufs_hba *hba,
> bool enable)
>  		opcode = UPIU_QUERY_OPCODE_CLEAR_FLAG;
> 
>  	ret = ufshcd_query_flag_retry(hba, opcode,
> -				      QUERY_FLAG_IDN_WB_EN, NULL);
> +				      QUERY_FLAG_IDN_WB_EN, 0, NULL);
>  	if (ret) {
>  		dev_err(hba->dev, "%s write booster %s failed %d\n",
>  			__func__, enable ? "enable" : "disable", ret);
> @@ -5243,7 +5244,7 @@ static int
> ufshcd_wb_toggle_flush_during_h8(struct ufs_hba *hba, bool set)
>  		val = UPIU_QUERY_OPCODE_CLEAR_FLAG;
> 
>  	return ufshcd_query_flag_retry(hba, val,
> -			       QUERY_FLAG_IDN_WB_BUFF_FLUSH_DURING_HIBERN8,
> +			       QUERY_FLAG_IDN_WB_BUFF_FLUSH_DURING_HIBERN8, 0,
>  				       NULL);
>  }
> 
> @@ -5264,7 +5265,8 @@ static int ufshcd_wb_buf_flush_enable(struct 
> ufs_hba *hba)
>  		return 0;
> 
>  	ret = ufshcd_query_flag_retry(hba, UPIU_QUERY_OPCODE_SET_FLAG,
> -				      QUERY_FLAG_IDN_WB_BUFF_FLUSH_EN, NULL);
> +				      QUERY_FLAG_IDN_WB_BUFF_FLUSH_EN,
> +				      0, NULL);
>  	if (ret)
>  		dev_err(hba->dev, "%s WB - buf flush enable failed %d\n",
>  			__func__, ret);
> @@ -5283,7 +5285,7 @@ static int ufshcd_wb_buf_flush_disable(struct
> ufs_hba *hba)
>  		return 0;
> 
>  	ret = ufshcd_query_flag_retry(hba, UPIU_QUERY_OPCODE_CLEAR_FLAG,
> -				      QUERY_FLAG_IDN_WB_BUFF_FLUSH_EN, NULL);
> +				      QUERY_FLAG_IDN_WB_BUFF_FLUSH_EN, 0, NULL);
>  	if (ret) {
>  		dev_warn(hba->dev, "%s: WB - buf flush disable failed %d\n",
>  			 __func__, ret);
> @@ -7263,7 +7265,7 @@ static int ufshcd_device_params_init(struct 
> ufs_hba *hba)
>  	ufshcd_get_ref_clk_gating_wait(hba);
> 
>  	if (!ufshcd_query_flag_retry(hba, UPIU_QUERY_OPCODE_READ_FLAG,
> -			QUERY_FLAG_IDN_PWR_ON_WPE, &flag))
> +			QUERY_FLAG_IDN_PWR_ON_WPE, 0, &flag))
>  		hba->dev_info.f_power_on_wp_en = flag;
> 
>  	/* Probe maximum power mode co-supported by both UFS host and device 
> */
> diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
> index 056537e52c19..e555d794d441 100644
> --- a/drivers/scsi/ufs/ufshcd.h
> +++ b/drivers/scsi/ufs/ufshcd.h
> @@ -946,7 +946,7 @@ int ufshcd_read_desc_param(struct ufs_hba *hba,
>  int ufshcd_query_attr(struct ufs_hba *hba, enum query_opcode opcode,
>  		      enum attr_idn idn, u8 index, u8 selector, u32 *attr_val);
>  int ufshcd_query_flag(struct ufs_hba *hba, enum query_opcode opcode,
> -	enum flag_idn idn, bool *flag_res);
> +	enum flag_idn idn, u8 index, bool *flag_res);
> 
>  void ufshcd_auto_hibern8_enable(struct ufs_hba *hba);
>  void ufshcd_auto_hibern8_update(struct ufs_hba *hba, u32 ahit);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
