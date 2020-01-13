Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EB9413997A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 19:59:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bMRQ9l/uF2wLMK5ZafrMndVj0vkU7yXvvpBlY2MHzgs=; b=Ot7KmMha54DSDNIK6ib5/c6ek
	4ceX5UNztCDdGnzfjLAL+RuVbYI/uGGGmqiAFoF14Bl91cEcsPso5IghwTWakvGQ8ZDfeT1LGFP4/
	YX55DOlT823NJaMBGepXm2pObcXg0dnjl3aaxm3mUq/4t5m7+f6lKsaqwlWK/fUEA3y+jJNpmE0A4
	QtPh/9kI7YyNEop2spS+2kXJ4znJuh5pQdkPH4yV232lpIANzYJ6bKEYMsQWuwh7G2sqEfzPrkldO
	1jlfVPaKrCKuy9S6lNLnGma5OnM8hvJvunu6HpkZmTgnQKN2Xy+d004ANOr5n4oac6d/moR6SStf2
	QCE8YkVig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir4vy-0001Fo-SU; Mon, 13 Jan 2020 18:59:30 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir4vl-0001Ec-Fs
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 18:59:19 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1578941958; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=rEVhNoA+SMCklIOXL2qRZ8K89XUanuaNJQR/wOG0Dcw=;
 b=rdHuiu7lgZkXohhgbFRqPIm/E4F7DjpvpIXG16Cx0Q58yMszUpD/2OYzmF07ZLhh7BNicWAi
 +yB0CSbhdpTjZpIs/hh2An+WIcJXtMfqbX6+dF4TRlqkThH77H6+sRxsncTpVXoBel5flxnq
 i+g6HmloB1cItkZPFVM4l88Nz60=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e1cbdfa.7f83ae025fb8-smtp-out-n01;
 Mon, 13 Jan 2020 18:59:06 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id D2515C447A5; Mon, 13 Jan 2020 18:59:04 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: asutoshd)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 758BBC433CB;
 Mon, 13 Jan 2020 18:59:03 +0000 (UTC)
MIME-Version: 1.0
Date: Mon, 13 Jan 2020 10:59:03 -0800
From: asutoshd@codeaurora.org
To: Stanley Chu <stanley.chu@mediatek.com>
Subject: Re: [PATCH v1 2/3] scsi: ufs: add device reset history for vendor
 implementations
In-Reply-To: <1578147968-30938-3-git-send-email-stanley.chu@mediatek.com>
References: <1578147968-30938-1-git-send-email-stanley.chu@mediatek.com>
 <1578147968-30938-3-git-send-email-stanley.chu@mediatek.com>
Message-ID: <20ed97a2333ff27d5901c373579f710a@codeaurora.org>
X-Sender: asutoshd@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_105918_306966_F026514C 
X-CRM114-Status: GOOD (  13.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
 andy.teng@mediatek.com, jejb@linux.ibm.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org, avri.altman@wdc.com,
 cang@codeaurora.org, linux-mediatek@lists.infradead.org,
 peter.wang@mediatek.com, alim.akhtar@samsung.com, matthias.bgg@gmail.com,
 bvanassche@acm.org, linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-01-04 06:26, Stanley Chu wrote:
> Device reset history shall be also added for vendor's device
> reset variant operation implementation.
> 
> Cc: Alim Akhtar <alim.akhtar@samsung.com>
> Cc: Asutosh Das <asutoshd@codeaurora.org>
> Cc: Avri Altman <avri.altman@wdc.com>
> Cc: Bart Van Assche <bvanassche@acm.org>
> Cc: Bean Huo <beanhuo@micron.com>
> Cc: Can Guo <cang@codeaurora.org>
> Cc: Matthias Brugger <matthias.bgg@gmail.com>
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
> ---
>  drivers/scsi/ufs/ufshcd.c | 5 +++--
>  drivers/scsi/ufs/ufshcd.h | 6 +++++-
>  2 files changed, 8 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
> index bae43da00bb6..29e3d50aabfb 100644
> --- a/drivers/scsi/ufs/ufshcd.c
> +++ b/drivers/scsi/ufs/ufshcd.c
> @@ -4346,13 +4346,14 @@ static inline int
> ufshcd_disable_device_tx_lcc(struct ufs_hba *hba)
>  	return ufshcd_disable_tx_lcc(hba, true);
>  }
> 
> -static void ufshcd_update_reg_hist(struct ufs_err_reg_hist *reg_hist,
> -				   u32 reg)
> +void ufshcd_update_reg_hist(struct ufs_err_reg_hist *reg_hist,
> +			    u32 reg)
>  {
>  	reg_hist->reg[reg_hist->pos] = reg;
>  	reg_hist->tstamp[reg_hist->pos] = ktime_get();
>  	reg_hist->pos = (reg_hist->pos + 1) % UFS_ERR_REG_HIST_LENGTH;
>  }
> +EXPORT_SYMBOL_GPL(ufshcd_update_reg_hist);
> 
>  /**
>   * ufshcd_link_startup - Initialize unipro link startup
> diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
> index e05cafddc87b..de1be6a862b0 100644
> --- a/drivers/scsi/ufs/ufshcd.h
> +++ b/drivers/scsi/ufs/ufshcd.h
> @@ -805,6 +805,8 @@ int ufshcd_wait_for_register(struct ufs_hba *hba,
> u32 reg, u32 mask,
>  				u32 val, unsigned long interval_us,
>  				unsigned long timeout_ms, bool can_sleep);
>  void ufshcd_parse_dev_ref_clk_freq(struct ufs_hba *hba, struct clk 
> *refclk);
> +void ufshcd_update_reg_hist(struct ufs_err_reg_hist *reg_hist,
> +			    u32 reg);
> 
>  static inline void check_upiu_size(void)
>  {
> @@ -1083,8 +1085,10 @@ static inline void
> ufshcd_vops_dbg_register_dump(struct ufs_hba *hba)
> 
>  static inline void ufshcd_vops_device_reset(struct ufs_hba *hba)
>  {
> -	if (hba->vops && hba->vops->device_reset)
> +	if (hba->vops && hba->vops->device_reset) {
>  		hba->vops->device_reset(hba);
> +		ufshcd_update_reg_hist(&hba->ufs_stats.dev_reset, 0);
> +	}
>  }
> 
>  extern struct ufs_pm_lvl_states ufs_pm_lvl_states[];

Reviewed-by: Asutosh Das <asutoshd@codeaurora.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
