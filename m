Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57CBA1D33DA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 17:00:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WKeQQgrsAzw8H7rHkeGLzNE1AvQr4GR9LB9V8JwkSKs=; b=SyFOPD/egOVoaJ
	Mk3tl/rd3AjZsB3AMfMkgPodcceC5aZOnc1zZHtrTAcotTF/ibk1XAF5Eg9xNl+JIF//t3r/h7pq/
	uAd+kh3rEiBTfZ3WY32kW78KF2SBdK08z1Ed6g358Av2slnspMbH4x/lQbXOv0/TBacFnf0uOxAt1
	TJMMstm1wQzViBVadXnOKltFaEUWQVnFk5ghuEbcPVY5ynm4MKqBG5z5IkP8KYTs/zNNQ1uEotfkJ
	Hojgd9fxMOCKITBOIR9QzyK63zOz4q6y8gKEhP22AIblhKo5OdGUtiitza3wXF+js/8oxnkOXlXOv
	vvX1/5kBUSq79t136y2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZFL1-0003Qw-0T; Thu, 14 May 2020 14:59:55 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZFKp-0003ME-DK; Thu, 14 May 2020 14:59:47 +0000
X-UUID: c9d63fa0fc8146e2b2432f1cd24697ae-20200514
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=uTJlwni3Pyu0Wbuq7O34MNOI0GdhWDymx/mWX/Hdhgg=; 
 b=asseTBgVOYdMFIYoaAJFVhAnJ+oZ7vYlIOPdkz8Ld0LmDnGsm7R46lnq4it5Ylpo01q6dSM02yJW1w+DD5bjnU+PpjsB6eGRp6IX9RJ/3EkPOPmmPPvcA+wZNkMBFJcZf8aFkXuWYHC6Eu79rBJNjSAHxYHttLuHSAQAkSkLg90=;
X-UUID: c9d63fa0fc8146e2b2432f1cd24697ae-20200514
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 506614466; Thu, 14 May 2020 06:59:40 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 14 May 2020 07:49:35 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 14 May 2020 22:49:23 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 14 May 2020 22:49:23 +0800
Message-ID: <1589467766.3197.100.camel@mtkswgap22>
Subject: Re: [PATCH v1 4/4] scsi: ufs: Fix WriteBooster flush during runtime
 suspend
From: Stanley Chu <stanley.chu@mediatek.com>
To: "Asutosh Das (asd)" <asutoshd@codeaurora.org>
Date: Thu, 14 May 2020 22:49:26 +0800
In-Reply-To: <1589423030.3197.94.camel@mtkswgap22>
References: <20200512104750.8711-1-stanley.chu@mediatek.com>
 <20200512104750.8711-5-stanley.chu@mediatek.com>
 <725d057c-2379-710e-287f-ac11a59c08bc@codeaurora.org>
 <1589423030.3197.94.camel@mtkswgap22>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 4780976ACDCE7F1FDB5960240E507B019A505AEB464268F722DFBF7EFC13B6632000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_075943_459627_27E7268B 
X-CRM114-Status: GOOD (  31.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "martin.petersen@oracle.com" <martin.petersen@oracle.com>, "Andy Teng
 \($B{}G!9\(\(B\)" <Andy.Teng@mediatek.com>,
 "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
 Chun-Hung Wu =?UTF-8?Q?=28=E5=B7=AB=E9=A7=BF=E5=AE=8F=29?=
 <Chun-hung.Wu@mediatek.com>,
 Kuohong Wang =?UTF-8?Q?=28=E7=8E=8B=E5=9C=8B=E9=B4=BB=29?=
 <kuohong.wang@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "avri.altman@wdc.com" <avri.altman@wdc.com>,
 "cang@codeaurora.org" <cang@codeaurora.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Peter Wang =?UTF-8?Q?=28=E7=8E=8B=E4=BF=A1=E5=8F=8B=29?=
 <peter.wang@mediatek.com>, "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "beanhuo@micron.com" <beanhuo@micron.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "bvanassche@acm.org" <bvanassche@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Asutosh,

On Thu, 2020-05-14 at 10:23 +0800, Stanley Chu wrote:
> Hi Asutosh,
> 
> On Wed, 2020-05-13 at 12:31 -0700, Asutosh Das (asd) wrote:
> > On 5/12/2020 3:47 AM, Stanley Chu wrote:
> > > Currently UFS host driver promises VCC supply if UFS device
> > > needs to do WriteBooster flush during runtime suspend.
> > > 
> > > However the UFS specification mentions,
> > > 
> > > "While the flushing operation is in progress, the device is
> > > in Active power mode."
> > > 
> > > Therefore UFS host driver needs to promise more: Keep UFS
> > > device as "Active power mode", otherwise UFS device shall not
> > > do any flush if device enters Sleep or PowerDown power mode.
> > > 
> > > Fix this by not changing device power mode if WriteBooster
> > > flush is required in ufshcd_suspend().
> > > 
> > > Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
> > > ---
> > >   drivers/scsi/ufs/ufs.h    |  1 -
> > >   drivers/scsi/ufs/ufshcd.c | 39 +++++++++++++++++++--------------------
> > >   2 files changed, 19 insertions(+), 21 deletions(-)
> > > 
> > > diff --git a/drivers/scsi/ufs/ufs.h b/drivers/scsi/ufs/ufs.h
> > > index b3135344ab3f..9e4bc2e97ada 100644
> > > --- a/drivers/scsi/ufs/ufs.h
> > > +++ b/drivers/scsi/ufs/ufs.h
> > > @@ -577,7 +577,6 @@ struct ufs_dev_info {
> > >   	u32 d_ext_ufs_feature_sup;
> > >   	u8 b_wb_buffer_type;
> > >   	u32 d_wb_alloc_units;
> > > -	bool keep_vcc_on;
> > >   	u8 b_presrv_uspc_en;
> > >   };
> > >   
> > > diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
> > > index 169a3379e468..2d0aff8ac260 100644
> > > --- a/drivers/scsi/ufs/ufshcd.c
> > > +++ b/drivers/scsi/ufs/ufshcd.c
> > > @@ -8101,8 +8101,7 @@ static void ufshcd_vreg_set_lpm(struct ufs_hba *hba)
> > >   	    !hba->dev_info.is_lu_power_on_wp) {
> > >   		ufshcd_setup_vreg(hba, false);
> > >   	} else if (!ufshcd_is_ufs_dev_active(hba)) {
> > > -		if (!hba->dev_info.keep_vcc_on)
> > > -			ufshcd_toggle_vreg(hba->dev, hba->vreg_info.vcc, false);
> > > +		ufshcd_toggle_vreg(hba->dev, hba->vreg_info.vcc, false);
> > >   		if (!ufshcd_is_link_active(hba)) {
> > >   			ufshcd_config_vreg_lpm(hba, hba->vreg_info.vccq);
> > >   			ufshcd_config_vreg_lpm(hba, hba->vreg_info.vccq2);
> > > @@ -8172,6 +8171,7 @@ static int ufshcd_suspend(struct ufs_hba *hba, enum ufs_pm_op pm_op)
> > >   	enum ufs_pm_level pm_lvl;
> > >   	enum ufs_dev_pwr_mode req_dev_pwr_mode;
> > >   	enum uic_link_state req_link_state;
> > > +	bool keep_curr_dev_pwr_mode = false;
> > >   
> > >   	hba->pm_op_in_progress = 1;
> > >   	if (!ufshcd_is_shutdown_pm(pm_op)) {
> > > @@ -8226,28 +8226,27 @@ static int ufshcd_suspend(struct ufs_hba *hba, enum ufs_pm_op pm_op)
> > >   			/* make sure that auto bkops is disabled */
> > >   			ufshcd_disable_auto_bkops(hba);
> > >   		}
> > > +
> > Unnecessary newline, perhaps?
> 
> Yap, I will remove it in next version.
> 
> > >   		/*
> > > -		 * With wb enabled, if the bkops is enabled or if the
> > > -		 * configured WB type is 70% full, keep vcc ON
> > > -		 * for the device to flush the wb buffer
> > > +		 * If device needs to do BKOP or WB buffer flush, keep device
> > > +		 * power mode as "active power mode" and its VCC supply.
> > >   		 */
> > > -		if ((hba->auto_bkops_enabled && ufshcd_is_wb_allowed(hba)) ||
> > > -		    ufshcd_wb_keep_vcc_on(hba))
> > > -			hba->dev_info.keep_vcc_on = true;
> > > -		else
> > > -			hba->dev_info.keep_vcc_on = false;
> > > -	} else {
> > > -		hba->dev_info.keep_vcc_on = false;
> > > +		keep_curr_dev_pwr_mode = hba->auto_bkops_enabled ||
> > > +			ufshcd_wb_keep_vcc_on(hba);
> > Should the device be in UFS_ACTIVE_PWR_MODE to perform auto-bkops?
> > 
> > Also, is it needed to keep the device in UFS_ACTIVE_PWR_MODE , if flush 
> > on hibern8 is enabled and the link is being put to hibern8 mode during 
> > runtime-suspend? Perhaps that should also be factored in here?
> 
> Both auto-bkops and WriteBooster flush during Hibern8 need device power
> mode to be "Active Power Mode".
> 
> For auto-bkops, the spec mentions,
> 
> "If the background operations enable bit is set and the device is in
> Active power mode or Idle power mode, then the device is allowed to
> execute any internal operations."
> 
> For WriteBooster flush during Hibern8, the spec mentions,
> 
> "While the flushing operation is in progress, the device is in Active
> power mode."
> 
> Therefore here we can use an unified "keep_curr_dev_pwr_mode" to
> indicate the same requirements of above both features.
> 
> Besides, both operations may access flash array inside UFS device thus
> VCC supply shall be also kept.
> 
> Before this patch, the original code will keep device power mode (stay
> in Active Power Mode) if hba->auto_bkops_enabled is set as true during
> runtime-suspend with UFSHCD_CAP_AUTO_BKOPS_SUSPEND capability is
> enabled. This patch will not change this decision, just add
> "WriteBooster flush during Hibern8" feature as another condition to do
> so.
> 
> Thank you so much to remind me that "Link shall be put in Hibern8" is a
> necessary condition for "WriteBooster flush during Hibern8". I will add
> more checking for keep_curr_dev_pwr_mode to prevent unnecessary power
> drain.  
> 
> > >   	}
> > >   
> > > -	if ((req_dev_pwr_mode != hba->curr_dev_pwr_mode) &&
> > > -	    ((ufshcd_is_runtime_pm(pm_op) && !hba->auto_bkops_enabled) ||
> > > -	    !ufshcd_is_runtime_pm(pm_op))) {
> > > -		/* ensure that bkops is disabled */
> > > -		ufshcd_disable_auto_bkops(hba);
> > > -		ret = ufshcd_set_dev_pwr_mode(hba, req_dev_pwr_mode);
> > > -		if (ret)
> > > -			goto enable_gating;
> > > +	if (req_dev_pwr_mode != hba->curr_dev_pwr_mode) {
> > > +		if ((ufshcd_is_runtime_pm(pm_op) && !hba->auto_bkops_enabled) ||
> > > +		    !ufshcd_is_runtime_pm(pm_op)) {
> > > +			/* ensure that bkops is disabled */
> > > +			ufshcd_disable_auto_bkops(hba);
> > > +		}
> > > +
> > > +		if (!keep_curr_dev_pwr_mode) {
> > > +			ret = ufshcd_set_dev_pwr_mode(hba, req_dev_pwr_mode);
> > 
> > Now, when the WB buffer is completely flushed out, the device should be 
> > put back into UFS_SLEEP_PWR_MODE or UFS_POWERDOWN_PWR_MODE. Say, the 
> > device buffer has to be flushed and during runtime-suspend, the device 
> > is put to UFS_ACTIVE_PWR_MODE and Vcc is kept ON; the device doesn't 
> > resume nor does the system enters suspend for a very long time, and with 
> > AH8 and hibern8 disabled, there will be an unnecessary power drain for 
> > that much time.

Another thought is that if keep_curr_dev_pwr_mode will be set as true
only if link is put in Hibern8 or Auto-Hibern8 is enabled. By this way,
the power consumption shall be very small after flush or auto-bkop is
finished.

Then the checking of flush status during runtime-suspend may be not
necessary.

> > 
> > How about a periodic interval checking of flush status if 
> > keep_curr_dev_pwr_mode evaluates to be true?
> 
> This is a good point!
> 
> The same thing also happens for auto-bkops. How about add a timer to
> leave runtime suspend if keep_curr_dev_pwr_mode is set as true? This is
> simple and also favors power. The timeout value could be adjustable
> according to the available WriteBooster buffer size.
> 
> A periodic interval checking of flush status needs to re-activate link
> to communicate with the device. This would be tricky and the
> re-activation flow is just like runtime-resume.
> 
> What would you think?
> 
> Thanks.
> Stanley Chu
> 
> 
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
