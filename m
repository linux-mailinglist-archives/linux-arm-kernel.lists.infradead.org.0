Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 975601D04F4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 04:31:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H3rKG20szoP8JDk11oc/Wjo5+K5lfoD5YOZFm8CBfik=; b=YH5+sp0zTFtl/I
	y8qMu36vcwEMVPaqdlG8/cihvD+6mPNfn222PDY1ovGwNpwsxjrSl9NcvZYm1RGhyzWDl11RaWGhc
	QI7b+1UsLsc7MOiaqjtlTM7v19PkJ5+pB5fr/wRmbHiry8vww+HJllCZKRwj7Q4sQAlaFS/H8CVrU
	6nfBiEgfbpMAZMCzHmMgoNKG6GxnSQxh9IXowelvXyQNOkio2zzYRtVKALMa4b2AOKykyhOX25eS0
	9vGVHjHbtcVIkWNRHAfvku81wCHGX4KsSoSy6q2XRyYcHTTxZ0cxQRXaqgLFfTkdKgiz57oKxAXBl
	4IN6p9I3Ut2OHxtnfmmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYhB3-0007g0-4q; Wed, 13 May 2020 02:31:21 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYhAu-0007f4-GA; Wed, 13 May 2020 02:31:14 +0000
X-UUID: 88141e78cbf8460eab5af47c368b7656-20200512
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=FEa8S57yUP1uBt7sF+Iuhy7qLD+6bZVqAcdAPC8F9JE=; 
 b=MofD5KKpO/m36BxdJRtjBzFkVHXb10wjpOslr9htC/NJWkvKVnPxstr/NMHx1QQyZstkHJ6vrNnLLJbsI9xXEwU81tlcEMmeGf8AlA4Tm+Rq7ynThQR/0wtp2gtWsshF2uOdPC3ZvSK8sOknIW9FGMpNifr1QpbN1tSpMcgPaig=;
X-UUID: 88141e78cbf8460eab5af47c368b7656-20200512
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 336705563; Tue, 12 May 2020 18:31:03 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 12 May 2020 19:21:01 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 13 May 2020 10:21:03 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 13 May 2020 10:21:03 +0800
Message-ID: <1589336464.3197.68.camel@mtkswgap22>
Subject: Re: [PATCH v1 4/4] scsi: ufs: Fix WriteBooster flush during runtime
 suspend
From: Stanley Chu <stanley.chu@mediatek.com>
To: "Asutosh Das (asd)" <asutoshd@codeaurora.org>
Date: Wed, 13 May 2020 10:21:04 +0800
In-Reply-To: <3740c6fa-77f1-53eb-ec8e-8f9d09f2646f@codeaurora.org>
References: <20200512104750.8711-1-stanley.chu@mediatek.com>
 <20200512104750.8711-5-stanley.chu@mediatek.com>
 <3740c6fa-77f1-53eb-ec8e-8f9d09f2646f@codeaurora.org>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_193112_547519_3E9AC80C 
X-CRM114-Status: GOOD (  25.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 cang@codeaurora.org, linux-mediatek@lists.infradead.org,
 peter.wang@mediatek.com, alim.akhtar@samsung.com, matthias.bgg@gmail.com,
 bvanassche@acm.org, linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Asutosh,

On Tue, 2020-05-12 at 10:04 -0700, Asutosh Das (asd) wrote:
> Hi Stanley,
> 
> On 5/12/2020 3:47 AM, Stanley Chu wrote:
> > Currently UFS host driver promises VCC supply if UFS device
> > needs to do WriteBooster flush during runtime suspend.
> > 
> > However the UFS specification mentions,
> > 
> > "While the flushing operation is in progress, the device is
> > in Active power mode."
> > 
> > Therefore UFS host driver needs to promise more: Keep UFS
> > device as "Active power mode", otherwise UFS device shall not
> > do any flush if device enters Sleep or PowerDown power mode.
> > 
> > Fix this by not changing device power mode if WriteBooster
> > flush is required in ufshcd_suspend().
> > 
> > Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
> > ---
> >   drivers/scsi/ufs/ufs.h    |  1 -
> >   drivers/scsi/ufs/ufshcd.c | 39 +++++++++++++++++++--------------------
> >   2 files changed, 19 insertions(+), 21 deletions(-)
> > 
> > diff --git a/drivers/scsi/ufs/ufs.h b/drivers/scsi/ufs/ufs.h
> > index b3135344ab3f..9e4bc2e97ada 100644
> > --- a/drivers/scsi/ufs/ufs.h
> > +++ b/drivers/scsi/ufs/ufs.h
> > @@ -577,7 +577,6 @@ struct ufs_dev_info {
> >   	u32 d_ext_ufs_feature_sup;
> >   	u8 b_wb_buffer_type;
> >   	u32 d_wb_alloc_units;
> > -	bool keep_vcc_on;
> >   	u8 b_presrv_uspc_en;
> >   };
> >   
> > diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
> > index 169a3379e468..2d0aff8ac260 100644
> > --- a/drivers/scsi/ufs/ufshcd.c
> > +++ b/drivers/scsi/ufs/ufshcd.c
> > @@ -8101,8 +8101,7 @@ static void ufshcd_vreg_set_lpm(struct ufs_hba *hba)
> >   	    !hba->dev_info.is_lu_power_on_wp) {
> >   		ufshcd_setup_vreg(hba, false);
> >   	} else if (!ufshcd_is_ufs_dev_active(hba)) {
> > -		if (!hba->dev_info.keep_vcc_on)
> > -			ufshcd_toggle_vreg(hba->dev, hba->vreg_info.vcc, false);
> > +		ufshcd_toggle_vreg(hba->dev, hba->vreg_info.vcc, false);
> >   		if (!ufshcd_is_link_active(hba)) {
> >   			ufshcd_config_vreg_lpm(hba, hba->vreg_info.vccq);
> >   			ufshcd_config_vreg_lpm(hba, hba->vreg_info.vccq2);
> > @@ -8172,6 +8171,7 @@ static int ufshcd_suspend(struct ufs_hba *hba, enum ufs_pm_op pm_op)
> >   	enum ufs_pm_level pm_lvl;
> >   	enum ufs_dev_pwr_mode req_dev_pwr_mode;
> >   	enum uic_link_state req_link_state;
> > +	bool keep_curr_dev_pwr_mode = false;
> >   
> >   	hba->pm_op_in_progress = 1;
> >   	if (!ufshcd_is_shutdown_pm(pm_op)) {
> > @@ -8226,28 +8226,27 @@ static int ufshcd_suspend(struct ufs_hba *hba, enum ufs_pm_op pm_op)
> >   			/* make sure that auto bkops is disabled */
> >   			ufshcd_disable_auto_bkops(hba);
> >   		}
> > +
> >   		/*
> > -		 * With wb enabled, if the bkops is enabled or if the
> > -		 * configured WB type is 70% full, keep vcc ON
> > -		 * for the device to flush the wb buffer
> > +		 * If device needs to do BKOP or WB buffer flush, keep device
> > +		 * power mode as "active power mode" and its VCC supply.
> >   		 */
> > -		if ((hba->auto_bkops_enabled && ufshcd_is_wb_allowed(hba)) ||
> > -		    ufshcd_wb_keep_vcc_on(hba))
> > -			hba->dev_info.keep_vcc_on = true;
> > -		else
> > -			hba->dev_info.keep_vcc_on = false;
> > -	} else {
> > -		hba->dev_info.keep_vcc_on = false;
> > +		keep_curr_dev_pwr_mode = hba->auto_bkops_enabled ||
> > +			ufshcd_wb_keep_vcc_on(hba);
> >   	}
> >   
> > -	if ((req_dev_pwr_mode != hba->curr_dev_pwr_mode) &&
> > -	    ((ufshcd_is_runtime_pm(pm_op) && !hba->auto_bkops_enabled) ||
> > -	    !ufshcd_is_runtime_pm(pm_op))) {
> > -		/* ensure that bkops is disabled */
> > -		ufshcd_disable_auto_bkops(hba);
> > -		ret = ufshcd_set_dev_pwr_mode(hba, req_dev_pwr_mode);
> > -		if (ret)
> > -			goto enable_gating;
> > +	if (req_dev_pwr_mode != hba->curr_dev_pwr_mode) {
> > +		if ((ufshcd_is_runtime_pm(pm_op) && !hba->auto_bkops_enabled) ||
> > +		    !ufshcd_is_runtime_pm(pm_op)) {
> > +			/* ensure that bkops is disabled */
> > +			ufshcd_disable_auto_bkops(hba);
> > +		}
> > +
> > +		if (!keep_curr_dev_pwr_mode) {
> > +			ret = ufshcd_set_dev_pwr_mode(hba, req_dev_pwr_mode);
> > +			if (ret)
> > +				goto enable_gating;
> > +		}
> >   	}
> >   
> >   	flush_work(&hba->eeh_work);
> > 
> 
> Can you please confirm that you've tested and found that with the 
> previous code, the flush operation in the device was not happening.
> 
> If so, please can you let me know the test-case that you ran to figure 
> this out.
> 
> I'd like to verify this at my end.

Sorry currently I have no easy test cases or scripts available.

To precisely confirm the flush behavior by logs, I added some codes to
query "available WriteBooster buffer" before entering runtime suspend
and after leaving runtime resume, and observe the trend of available
WriteBooster buffer.

My test steps are as below,

1. Create a writer to write large data in a short time to fill-in
WriteBooster buffer.

2. Do something to prevent system suspend

3. Do something to prevent link entering Hibern8, for example, disable
Auto-Hibern8 and disable Hibern8 during clock gating. Because the
Hibern8 period before runtime-suspend is known that VCC is provided and
device can flush WriteBooster buffer if "Flush During H8" is enabled as
upstream kernel currently.

4. Shrink the runtime suspend delay (maybe 100ms ~ 200ms) to make
runtime suspend happen earlier.

5. After "available WriteBosoter buffer" reaches lower-level, for
example, 10%, stop the writer.

6. Observe the trend of WriteBooster available buffer.


In the previous code, the available WriteBooster buffer is increased
very very slowly. Especially no increasing is observed during
runtime-suspend.

After applying this fix, the available WriteBooster buffer is increased
much faster and the increasing can be easily observed during
runtime-suspend.

Thanks,
Stanley Chu

> 
> --
> Thanks,
> -asd
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
