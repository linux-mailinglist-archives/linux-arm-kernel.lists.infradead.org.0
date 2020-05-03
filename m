Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A4731C2A62
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 May 2020 08:16:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SGrJWmJOX64Uw2t0jEHYtcZUYYE47RyqPIE6SyKCXYM=; b=nIT2Cx8ae2NgD+
	9Rnhvy+N03BwC+iOSjpFPI4NHr9C5KgRWR+6GSFqLbt6Bs+16jebrkv6wRjACC8s6/SjkY4qy9QVy
	TrrsMe4aQT1ZDFqgMiMSBQMD9EHzSq/OWBSPJox8o9b8QOvOHe+xfse+AOuqnCpciegt2q9xSf0H0
	YCConXLbnlkc6K4L0CyIEz0yOOsq4YpIsKbelFzOntzrxh1v4hW5bdmGW7GX2FitEwgXBr3LVLEFx
	K5GcbF6WyjBUuReY+bhmvYS3sADRchpU03DBCYjiYq/IbziO95IVOwHC9oCdJ3ByL9xsb4bIaCXV+
	/3B4xkxguwIs2DzFujgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jV7vj-0006Hk-Qc; Sun, 03 May 2020 06:16:47 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jV7vK-00064k-JF; Sun, 03 May 2020 06:16:24 +0000
X-UUID: 38fef07c298342d0917903f5b2a3f581-20200502
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=WxlCRNEd3K/12hGIoH5QpJli1A1K5IiKT1/saoJU2XE=; 
 b=tiYAj+gyvHuwMN6XeJ4cFi0Iw/NDVukQug5t3UkgYaZnrkjjngYxq83IAivwCOaDLkzo8LcF2U+qNYmR5kPz4A/GJw1v8b/KIIGXAUQXzeTs5ZjBq7d6J6xAEyfszXKLVz+yN1sBMRNA6lRGN4c4SuhhwuatdHPD42Gm+xflrsw=;
X-UUID: 38fef07c298342d0917903f5b2a3f581-20200502
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1951770861; Sat, 02 May 2020 22:16:21 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 2 May 2020 23:13:32 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sun, 3 May 2020 14:13:26 +0800
Received: from [172.21.77.33] (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Sun, 3 May 2020 14:13:26 +0800
Message-ID: <1588486406.3197.13.camel@mtkswgap22>
Subject: Re: [PATCH v3 1/5] scsi: ufs: enable WriteBooster on some pre-3.1
 UFS devices
From: Stanley Chu <stanley.chu@mediatek.com>
To: Can Guo <cang@codeaurora.org>
Date: Sun, 3 May 2020 14:13:26 +0800
In-Reply-To: <1d471d07084d7323f0ef021e2c1b9d4e@codeaurora.org>
References: <20200501143835.26032-1-stanley.chu@mediatek.com>
 <20200501143835.26032-2-stanley.chu@mediatek.com>
 <1d471d07084d7323f0ef021e2c1b9d4e@codeaurora.org>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: C3A9AF1BAE99385AD8A90B9EA8391ECD9F3FF53468BCA1C1D23609DCEDBDBD612000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200502_231622_645576_039101C6 
X-CRM114-Status: GOOD (  28.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Can,

On Sat, 2020-05-02 at 15:47 +0800, Can Guo wrote:
> Hi Stanley,
> On 2020-05-01 22:38, Stanley Chu wrote:
> > WriteBooster feature can be supported by some pre-3.1 UFS devices
> > by upgrading firmware.
> > 
> > To enable WriteBooster feature in such devices, introduce a device
> > quirk to relax the entrance condition of ufshcd_wb_probe() to allow
> > host driver to check those devices' WriteBooster capability.
> > 
> > WriteBooster feature can be available if below all conditions are
> > satisfied,
> > 
> > 1. Host enables WriteBooster capability
> > 2. UFS 3.1 device or UFS pre-3.1 device with quirk
> >    UFS_DEVICE_QUIRK_SUPPORT_EXTENDED_FEATURES enabled
> > 3. Device descriptor has dExtendedUFSFeaturesSupport field
> > 4. WriteBooster support is specified in above field
> > 
> > Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
> > ---
> >  drivers/scsi/ufs/ufs_quirks.h |  7 ++++
> >  drivers/scsi/ufs/ufshcd.c     | 66 ++++++++++++++++++++++-------------
> >  2 files changed, 48 insertions(+), 25 deletions(-)
> > 
> > diff --git a/drivers/scsi/ufs/ufs_quirks.h 
> > b/drivers/scsi/ufs/ufs_quirks.h
> > index df7a1e6805a3..e3175a63c676 100644
> > --- a/drivers/scsi/ufs/ufs_quirks.h
> > +++ b/drivers/scsi/ufs/ufs_quirks.h
> > @@ -101,4 +101,11 @@ struct ufs_dev_fix {
> >   */
> >  #define UFS_DEVICE_QUIRK_HOST_VS_DEBUGSAVECONFIGTIME	(1 << 9)
> > 
> > +/*
> > + * Some pre-3.1 UFS devices can support extended features by upgrading
> > + * the firmware. Enable this quirk to make UFS core driver probe and 
> > enable
> > + * supported features on such devices.
> > + */
> > +#define UFS_DEVICE_QUIRK_SUPPORT_EXTENDED_FEATURES (1 << 10)
> > +
> >  #endif /* UFS_QUIRKS_H_ */
> > diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
> > index 915e963398c4..c6668799d956 100644
> > --- a/drivers/scsi/ufs/ufshcd.c
> > +++ b/drivers/scsi/ufs/ufshcd.c
> > @@ -229,6 +229,8 @@ static struct ufs_dev_fix ufs_fixups[] = {
> >  		UFS_DEVICE_QUIRK_HOST_PA_SAVECONFIGTIME),
> >  	UFS_FIX(UFS_VENDOR_SKHYNIX, "hB8aL1" /*H28U62301AMR*/,
> >  		UFS_DEVICE_QUIRK_HOST_VS_DEBUGSAVECONFIGTIME),
> > +	UFS_FIX(UFS_VENDOR_SKHYNIX, "H9HQ21AFAMZDAR",
> > +		UFS_DEVICE_QUIRK_SUPPORT_EXTENDED_FEATURES),
> > 
> >  	END_FIX
> >  };
> > @@ -6800,9 +6802,19 @@ static int ufshcd_scsi_add_wlus(struct ufs_hba 
> > *hba)
> > 
> >  static void ufshcd_wb_probe(struct ufs_hba *hba, u8 *desc_buf)
> >  {
> > +	if (!ufshcd_is_wb_allowed(hba))
> > +		return;
> > +
> > +	if (hba->desc_size.dev_desc <= DEVICE_DESC_PARAM_EXT_UFS_FEATURE_SUP)
> > +		goto wb_disabled;
> > +
> >  	hba->dev_info.d_ext_ufs_feature_sup =
> >  		get_unaligned_be32(desc_buf +
> >  				   DEVICE_DESC_PARAM_EXT_UFS_FEATURE_SUP);
> > +
> > +	if (!(hba->dev_info.d_ext_ufs_feature_sup & 
> > UFS_DEV_WRITE_BOOSTER_SUP))
> > +		goto wb_disabled;
> > +
> >  	/*
> >  	 * WB may be supported but not configured while provisioning.
> >  	 * The spec says, in dedicated wb buffer mode,
> > @@ -6818,11 +6830,29 @@ static void ufshcd_wb_probe(struct ufs_hba
> > *hba, u8 *desc_buf)
> >  	hba->dev_info.b_presrv_uspc_en =
> >  		desc_buf[DEVICE_DESC_PARAM_WB_PRESRV_USRSPC_EN];
> > 
> > -	if (!((hba->dev_info.d_ext_ufs_feature_sup &
> > -		 UFS_DEV_WRITE_BOOSTER_SUP) &&
> > -		hba->dev_info.b_wb_buffer_type &&
> > +	if (!(hba->dev_info.b_wb_buffer_type &&
> >  	      hba->dev_info.d_wb_alloc_units))
> > -		hba->caps &= ~UFSHCD_CAP_WB_EN;
> > +		goto wb_disabled;
> > +
> > +	return;
> > +
> > +wb_disabled:
> > +	hba->caps &= ~UFSHCD_CAP_WB_EN;
> > +}
> > +
> > +static void ufs_fixup_device_setup(struct ufs_hba *hba)
> > +{
> > +	struct ufs_dev_fix *f;
> > +	struct ufs_dev_info *dev_info = &hba->dev_info;
> > +
> > +	for (f = ufs_fixups; f->quirk; f++) {
> > +		if ((f->wmanufacturerid == dev_info->wmanufacturerid ||
> > +		     f->wmanufacturerid == UFS_ANY_VENDOR) &&
> > +		     ((dev_info->model &&
> > +		       STR_PRFX_EQUAL(f->model, dev_info->model)) ||
> > +		      !strcmp(f->model, UFS_ANY_MODEL)))
> > +			hba->dev_quirks |= f->quirk;
> > +	}
> >  }
> > 
> >  static int ufs_get_device_desc(struct ufs_hba *hba)
> > @@ -6862,10 +6892,6 @@ static int ufs_get_device_desc(struct ufs_hba 
> > *hba)
> > 
> >  	model_index = desc_buf[DEVICE_DESC_PARAM_PRDCT_NAME];
> > 
> > -	/* Enable WB only for UFS-3.1 */
> > -	if (dev_info->wspecversion >= 0x310)
> > -		ufshcd_wb_probe(hba, desc_buf);
> > -
> >  	err = ufshcd_read_string_desc(hba, model_index,
> >  				      &dev_info->model, SD_ASCII_STD);
> >  	if (err < 0) {
> > @@ -6874,6 +6900,13 @@ static int ufs_get_device_desc(struct ufs_hba 
> > *hba)
> >  		goto out;
> >  	}
> > 
> > +	ufs_fixup_device_setup(hba);
> > +
> > +	/* Enable WB only for UFS-3.1 */
> 
> Also update this comment to reflect your change?
> 
> > +	if (dev_info->wspecversion >= 0x310 ||
> > +	    (hba->dev_quirks & UFS_DEVICE_QUIRK_SUPPORT_EXTENDED_FEATURES))
> > +		ufshcd_wb_probe(hba, desc_buf);
> > +
> 
> Can we somehow move this after ufshcd_tune_unipro_params() or come up 
> with
> a better way to leverage ufshcd_vops_apply_dev_quirks()? I am asking 
> this
> because if we only rely on adding quirks to ufs_fixups in ufshcd.c, the
> table will keep growing and I am sure it will - as flash vendors are 
> trying
> to make their UFS2.1 products to be capable of WB (different densities 
> and
> different NAND processes from different vendors, the combos can be quite 
> a
> few). Meanwhile, some models are specifically made for some customers to
> support WB, meaning having them in the table may not help in a 
> generalized
> way, and it is not like some hot fixes that we have to take, it is just 
> for
> a non-standard feature. If we can leverage 
> ufshcd_vops_apply_dev_quirks(),
> SoC vendors can freely add the quirk without touching ufs_fixups table,
> which means you don't need to update ufs_fixups every time just for 
> adding
> a new model (GKI rules), you can have your own WB white list in vendor
> driver. What do you think?
> 
> Thanks,
> 
> Can Guo.

Very appreciate your useful and constructive comments : )

Please take a look at v4. In v4, I introduce a "fixup_dev_quirks" vop to
allow vendors to "fix" device quirks which can be a general solution not
only for newly introduced UFS_DEVICE_QUIRK_SUPPORT_EXTENDED_FEATURES but
also for other quirks.

Thanks,
Stanley Chu

> 
> >  	/*
> >  	 * ufshcd_read_string_desc returns size of the string
> >  	 * reset the error value
> > @@ -6893,21 +6926,6 @@ static void ufs_put_device_desc(struct ufs_hba 
> > *hba)
> >  	dev_info->model = NULL;
> >  }
> > 
> > -static void ufs_fixup_device_setup(struct ufs_hba *hba)
> > -{
> > -	struct ufs_dev_fix *f;
> > -	struct ufs_dev_info *dev_info = &hba->dev_info;
> > -
> > -	for (f = ufs_fixups; f->quirk; f++) {
> > -		if ((f->wmanufacturerid == dev_info->wmanufacturerid ||
> > -		     f->wmanufacturerid == UFS_ANY_VENDOR) &&
> > -		     ((dev_info->model &&
> > -		       STR_PRFX_EQUAL(f->model, dev_info->model)) ||
> > -		      !strcmp(f->model, UFS_ANY_MODEL)))
> > -			hba->dev_quirks |= f->quirk;
> > -	}
> > -}
> > -
> >  /**
> >   * ufshcd_tune_pa_tactivate - Tunes PA_TActivate of local UniPro
> >   * @hba: per-adapter instance
> > @@ -7244,8 +7262,6 @@ static int ufshcd_device_params_init(struct 
> > ufs_hba *hba)
> > 
> >  	ufshcd_get_ref_clk_gating_wait(hba);
> > 
> > -	ufs_fixup_device_setup(hba);
> > -
> >  	if (!ufshcd_query_flag_retry(hba, UPIU_QUERY_OPCODE_READ_FLAG,
> >  			QUERY_FLAG_IDN_PWR_ON_WPE, &flag))
> >  		hba->dev_info.f_power_on_wp_en = flag;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
