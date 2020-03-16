Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7535A18672B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 09:57:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zJEL0owivL9DmYEUswSe9G4dabMzhDmJHXJjXa6mzu0=; b=awPcy7VsukFa+UZhA4JHsLCsl
	3nSMI0hLeENxMTmvEqsHU8nKPKcipMIyUxP/WVT529WamnMmBGM4eh55se56GWVmd30hycHabOKug
	+4JvRm/DuLonbHI6sI6BqhkVa6aAHA//h67BiXnox5IX7bnbAH/57m/QMrl0hO68NEQRGhuFtoi4a
	6fZZR+uZGBGx0jgYftTEMhTwLlN7HeKp+iHyVe1r0gWesi3KhCphH4oGmKq6WmpX0znUjlehZCWB+
	rs1azS1mlr9WLuR/Q9fPhU1PwAzWyYjQVvRSLzoA0gd2D6GxazRXTdwjk/QoVsPRAJBfqZuMKImQA
	GyD6ymAPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDlYk-0004wS-6w; Mon, 16 Mar 2020 08:57:18 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDlYU-0004ux-0h
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 08:57:06 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1584349024; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=ijq3uor9SMJb3ExZBsPo87hwudJNjl8YhdOh+sCNnWA=;
 b=TvJQWGzpgjEmH/lQPnQktE07cc8DIIFaqXHZS214rV0QJrXqc5moLQ65JQWkcfhPtM743hdM
 LEXD21Hv/Nl5y/d2Zw4P+ByhhB5oYNDnhJ3Mb0sK1DnTNKx8/HK0qVlh3m8DF5Do1iRLx9IQ
 o/5IAwcALewoKNs2zj8I/gDNkzE=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e6f3f56.7f2fb99fd500-smtp-out-n05;
 Mon, 16 Mar 2020 08:56:54 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id D7EDFC44788; Mon, 16 Mar 2020 08:56:52 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,URIBL_BLOCKED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: cang)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 37B92C433CB;
 Mon, 16 Mar 2020 08:56:51 +0000 (UTC)
MIME-Version: 1.0
Date: Mon, 16 Mar 2020 16:56:51 +0800
From: Can Guo <cang@codeaurora.org>
To: Stanley Chu <stanley.chu@mediatek.com>
Subject: Re: [PATCH v6 3/7] scsi: ufs: introduce common delay function
In-Reply-To: <20200316085303.20350-4-stanley.chu@mediatek.com>
References: <20200316085303.20350-1-stanley.chu@mediatek.com>
 <20200316085303.20350-4-stanley.chu@mediatek.com>
Message-ID: <19f7e050d992c67e363d6d582393c5a0@codeaurora.org>
X-Sender: cang@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_015704_675450_B4564F39 
X-CRM114-Status: GOOD (  19.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On 2020-03-16 16:52, Stanley Chu wrote:
> Introduce common delay function to collect all delay requirements
> to simplify driver and take choices of udelay and usleep_range into
> consideration.
> 
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
> Reviewed-by: Avri Altman <avri.altman@wdc.com>

Reviewed-by: Can Guo <cang@codeaurora.org>

> ---
>  drivers/scsi/ufs/ufshcd.c | 27 ++++++++++++++++++---------
>  drivers/scsi/ufs/ufshcd.h |  1 +
>  2 files changed, 19 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
> index 314e808b0d4e..9fea346f7d22 100644
> --- a/drivers/scsi/ufs/ufshcd.c
> +++ b/drivers/scsi/ufs/ufshcd.c
> @@ -597,6 +597,18 @@ static void ufshcd_print_pwr_info(struct ufs_hba 
> *hba)
>  		 hba->pwr_info.hs_rate);
>  }
> 
> +void ufshcd_wait_us(unsigned long us, unsigned long tolerance, bool 
> can_sleep)
> +{
> +	if (!us)
> +		return;
> +
> +	if (us < 10 || !can_sleep)
> +		udelay(us);
> +	else
> +		usleep_range(us, us + tolerance);
> +}
> +EXPORT_SYMBOL_GPL(ufshcd_wait_us);
> +
>  /*
>   * ufshcd_wait_for_register - wait for register value to change
>   * @hba - per-adapter interface
> @@ -620,10 +632,7 @@ int ufshcd_wait_for_register(struct ufs_hba *hba,
> u32 reg, u32 mask,
>  	val = val & mask;
> 
>  	while ((ufshcd_readl(hba, reg) & mask) != val) {
> -		if (can_sleep)
> -			usleep_range(interval_us, interval_us + 50);
> -		else
> -			udelay(interval_us);
> +		ufshcd_wait_us(interval_us, 50, can_sleep);
>  		if (time_after(jiffies, timeout)) {
>  			if ((ufshcd_readl(hba, reg) & mask) != val)
>  				err = -ETIMEDOUT;
> @@ -3565,7 +3574,7 @@ static inline void
> ufshcd_add_delay_before_dme_cmd(struct ufs_hba *hba)
>  	}
> 
>  	/* allow sleep for extra 50us if needed */
> -	usleep_range(min_sleep_time_us, min_sleep_time_us + 50);
> +	ufshcd_wait_us(min_sleep_time_us, 50, true);
>  }
> 
>  /**
> @@ -4289,7 +4298,7 @@ int ufshcd_hba_enable(struct ufs_hba *hba)
>  	 * instruction might be read back.
>  	 * This delay can be changed based on the controller.
>  	 */
> -	usleep_range(1000, 1100);
> +	ufshcd_wait_us(1000, 100, true);
> 
>  	/* wait for the host controller to complete initialization */
>  	retry = 10;
> @@ -4301,7 +4310,7 @@ int ufshcd_hba_enable(struct ufs_hba *hba)
>  				"Controller enable failed\n");
>  			return -EIO;
>  		}
> -		usleep_range(5000, 5100);
> +		ufshcd_wait_us(5000, 100, true);
>  	}
> 
>  	/* enable UIC related interrupts */
> @@ -6224,7 +6233,7 @@ static int ufshcd_abort(struct scsi_cmnd *cmd)
>  			reg = ufshcd_readl(hba, REG_UTP_TRANSFER_REQ_DOOR_BELL);
>  			if (reg & (1 << tag)) {
>  				/* sleep for max. 200us to stabilize */
> -				usleep_range(100, 200);
> +				ufshcd_wait_us(100, 100, true);
>  				continue;
>  			}
>  			/* command completed already */
> @@ -7786,7 +7795,7 @@ static void ufshcd_vreg_set_lpm(struct ufs_hba 
> *hba)
>  	 */
>  	if (!ufshcd_is_link_active(hba) &&
>  	    hba->dev_quirks & UFS_DEVICE_QUIRK_DELAY_BEFORE_LPM)
> -		usleep_range(2000, 2100);
> +		ufshcd_wait_us(2000, 100, true);
> 
>  	/*
>  	 * If UFS device is either in UFS_Sleep turn off VCC rail to save 
> some
> diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
> index 52425371082a..842f0223f5e5 100644
> --- a/drivers/scsi/ufs/ufshcd.h
> +++ b/drivers/scsi/ufs/ufshcd.h
> @@ -792,6 +792,7 @@ int ufshcd_init(struct ufs_hba * , void __iomem *
> , unsigned int);
>  int ufshcd_make_hba_operational(struct ufs_hba *hba);
>  void ufshcd_remove(struct ufs_hba *);
>  int ufshcd_uic_hibern8_exit(struct ufs_hba *hba);
> +void ufshcd_wait_us(unsigned long us, unsigned long tolerance, bool 
> can_sleep);
>  int ufshcd_wait_for_register(struct ufs_hba *hba, u32 reg, u32 mask,
>  				u32 val, unsigned long interval_us,
>  				unsigned long timeout_ms, bool can_sleep);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
