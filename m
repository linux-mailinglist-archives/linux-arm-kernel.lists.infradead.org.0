Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AB951B1E82
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 08:00:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DsUbXyj9YESugXRhOQ232zW8BQfWfyyRUMTyGmxzd7U=; b=oxsJw4ccbh4UDMiqMp7nj9Vqs
	dB1NgGcdye+qFBm/57jmUuA4cCzuHMjQtgH3oJwsbRj97AmAd1d2p640lqMcoA8wDJHRBuzJIHrNh
	OeU9BLO/P5DEJDKTpOzfSx5Km4DU1TgO24wBW63gVAaSqpCgApCBtq/H/Po9kFldXX/sjHmnYFvML
	QrwDa99ojVMuC2TDhiVRhkcaYdJRz9w50wtBsWc3VsMvu7tJxyYLSCTs+sO06OiFoXdhl5X7cBPiW
	GY56+3iQccKvUqr+kAxxwabvefOwpr6rxRmY0j1VplvBliSQKsWOyhA72IvwAtoBCHyybluhuPy9Y
	Y5iFyTgEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQlxK-0007JI-MT; Tue, 21 Apr 2020 06:00:26 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQlwt-00070U-L5
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 06:00:02 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587448799; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=6hb8wYCKDHUtF5zKPgcv9momlAi99Ke0ASNHcZgP6Yk=;
 b=I7LkVpwXOEakfMkHYStyFOMPtbHDaCfwdrW9fhdpq1rHBl9KuNIU1d2F927hs7dEr3N9dgWX
 0Gp8WVUFX+a9wfoOYLFoRgWxZD/FY9OKqFwvgy4sheA100CtjB2YHmGfYWyBZz8PxQHh7IJA
 AGA+WvQYw/s18Fjq8A/uXwTYV8I=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e9e8bde.7f8f47a85228-smtp-out-n02;
 Tue, 21 Apr 2020 05:59:58 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 7CB07C44788; Tue, 21 Apr 2020 05:59:57 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: cang)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 8F49FC433D2;
 Tue, 21 Apr 2020 05:59:56 +0000 (UTC)
MIME-Version: 1.0
Date: Tue, 21 Apr 2020 13:59:56 +0800
From: Can Guo <cang@codeaurora.org>
To: Alim Akhtar <alim.akhtar@samsung.com>
Subject: Re: [PATCH v6 03/10] scsi: ufs: add quirk to enable host controller
 without hce
In-Reply-To: <20200417175944.47189-4-alim.akhtar@samsung.com>
References: <20200417175944.47189-1-alim.akhtar@samsung.com>
 <CGME20200417181012epcas5p2004ac8f0d793abd4d58c096ff490da68@epcas5p2.samsung.com>
 <20200417175944.47189-4-alim.akhtar@samsung.com>
Message-ID: <f03a005a77a96d337aa5d532c534577e@codeaurora.org>
X-Sender: cang@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_225959_786094_CD009BE0 
X-CRM114-Status: GOOD (  19.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: robh@kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, krzk@kernel.org,
 kwmad.kim@samsung.com, avri.altman@wdc.com, stanley.chu@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-04-18 01:59, Alim Akhtar wrote:
> Some host controllers don't support host controller enable via HCE.
> 
> Signed-off-by: Seungwon Jeon <essuuj@gmail.com>
> Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>

They are back again finally...

Reviewd-by: Can Guo <cang@codeaurora.org>

> ---
>  drivers/scsi/ufs/ufshcd.c | 76 +++++++++++++++++++++++++++++++++++++--
>  drivers/scsi/ufs/ufshcd.h |  6 ++++
>  2 files changed, 80 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
> index 0e9704da58bd..ee30ed6cc805 100644
> --- a/drivers/scsi/ufs/ufshcd.c
> +++ b/drivers/scsi/ufs/ufshcd.c
> @@ -3534,6 +3534,52 @@ static int ufshcd_dme_link_startup(struct 
> ufs_hba *hba)
>  			"dme-link-startup: error code %d\n", ret);
>  	return ret;
>  }
> +/**
> + * ufshcd_dme_reset - UIC command for DME_RESET
> + * @hba: per adapter instance
> + *
> + * DME_RESET command is issued in order to reset UniPro stack.
> + * This function now deal with cold reset.
> + *
> + * Returns 0 on success, non-zero value on failure
> + */
> +static int ufshcd_dme_reset(struct ufs_hba *hba)
> +{
> +	struct uic_command uic_cmd = {0};
> +	int ret;
> +
> +	uic_cmd.command = UIC_CMD_DME_RESET;
> +
> +	ret = ufshcd_send_uic_cmd(hba, &uic_cmd);
> +	if (ret)
> +		dev_err(hba->dev,
> +			"dme-reset: error code %d\n", ret);
> +
> +	return ret;
> +}
> +
> +/**
> + * ufshcd_dme_enable - UIC command for DME_ENABLE
> + * @hba: per adapter instance
> + *
> + * DME_ENABLE command is issued in order to enable UniPro stack.
> + *
> + * Returns 0 on success, non-zero value on failure
> + */
> +static int ufshcd_dme_enable(struct ufs_hba *hba)
> +{
> +	struct uic_command uic_cmd = {0};
> +	int ret;
> +
> +	uic_cmd.command = UIC_CMD_DME_ENABLE;
> +
> +	ret = ufshcd_send_uic_cmd(hba, &uic_cmd);
> +	if (ret)
> +		dev_err(hba->dev,
> +			"dme-reset: error code %d\n", ret);
> +
> +	return ret;
> +}
> 
>  static inline void ufshcd_add_delay_before_dme_cmd(struct ufs_hba 
> *hba)
>  {
> @@ -4251,7 +4297,7 @@ static inline void ufshcd_hba_stop(struct
> ufs_hba *hba, bool can_sleep)
>  }
> 
>  /**
> - * ufshcd_hba_enable - initialize the controller
> + * ufshcd_hba_execute_hce - initialize the controller
>   * @hba: per adapter instance
>   *
>   * The controller resets itself and controller firmware initialization
> @@ -4260,7 +4306,7 @@ static inline void ufshcd_hba_stop(struct
> ufs_hba *hba, bool can_sleep)
>   *
>   * Returns 0 on success, non-zero value on failure
>   */
> -int ufshcd_hba_enable(struct ufs_hba *hba)
> +static int ufshcd_hba_execute_hce(struct ufs_hba *hba)
>  {
>  	int retry;
> 
> @@ -4308,6 +4354,32 @@ int ufshcd_hba_enable(struct ufs_hba *hba)
> 
>  	return 0;
>  }
> +
> +int ufshcd_hba_enable(struct ufs_hba *hba)
> +{
> +	int ret;
> +
> +	if (hba->quirks & UFSHCI_QUIRK_BROKEN_HCE) {
> +		ufshcd_set_link_off(hba);
> +		ufshcd_vops_hce_enable_notify(hba, PRE_CHANGE);
> +
> +		/* enable UIC related interrupts */
> +		ufshcd_enable_intr(hba, UFSHCD_UIC_MASK);
> +		ret = ufshcd_dme_reset(hba);
> +		if (!ret) {
> +			ret = ufshcd_dme_enable(hba);
> +			if (!ret)
> +				ufshcd_vops_hce_enable_notify(hba, POST_CHANGE);
> +			if (ret)
> +				dev_err(hba->dev,
> +					"Host controller enable failed with non-hce\n");
> +		}
> +	} else {
> +		ret = ufshcd_hba_execute_hce(hba);
> +	}
> +
> +	return ret;
> +}
>  EXPORT_SYMBOL_GPL(ufshcd_hba_enable);
> 
>  static int ufshcd_disable_tx_lcc(struct ufs_hba *hba, bool peer)
> diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
> index 53096642f9a8..f8d08cb9caf7 100644
> --- a/drivers/scsi/ufs/ufshcd.h
> +++ b/drivers/scsi/ufs/ufshcd.h
> @@ -529,6 +529,12 @@ enum ufshcd_quirks {
>  	 * that the interrupt aggregation timer and counter are reset by s/w.
>  	 */
>  	UFSHCI_QUIRK_SKIP_RESET_INTR_AGGR		= 1 << 7,
> +
> +	/*
> +	 * This quirks needs to be enabled if host controller cannot be
> +	 * enabled via HCE register.
> +	 */
> +	UFSHCI_QUIRK_BROKEN_HCE				= 1 << 8,
>  };
> 
>  enum ufshcd_caps {

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
