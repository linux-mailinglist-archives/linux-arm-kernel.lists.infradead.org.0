Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68BFE14FD8C
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  2 Feb 2020 15:35:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2y/sJ5xP0QTf2Ul06SK69PpGGYQuelAPirXotbonZAo=; b=mE3WqMivBrxJQz
	C7/wBbKv1MtqOgzu7T50DAPrSrVJEx2dyZVxbuISxZ1JNXnJiIThYwlTYUoKHzWTvqIBHyDsr0Ehw
	t1M7bp6V+sbJAiHx9wWiF6ia0wg1D3FnZLhb2XoOp9MVfiMzNYi6fPTFJiKtcsmxdcy8qdyi0l3E4
	LB4qFsf953u3kfoOnFW8+sZBnzHtVounSruQes3fvBDl2+5mk1DMke6yX6JGrZFq7ko2AjsD2Tjmr
	yfL74crX0hm91ckz9j59AfQVivY+GWu3ZCatwPpOV0nh0bV8DPNDerbacLWiZOHsa4r4T9NE8yrNn
	uOlBGLafoacOz141oghA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyGLh-0002G3-5D; Sun, 02 Feb 2020 14:35:45 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyGLa-0002E4-EA; Sun, 02 Feb 2020 14:35:39 +0000
Received: by mail-vs1-xe41.google.com with SMTP id x18so7311498vsq.4;
 Sun, 02 Feb 2020 06:35:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LZE+Xo98zuPfEJJYc3IqeQRPxedI7zj+vekRKI0XAyw=;
 b=mcWFcyryu3pb908p8t2ntneOZGWX637x+66nF8J6woHFUe8Nfw26wsxiSbrLieqQZf
 u/B7Bv73fme8G/rf4KYLbrJdYkXrq2F1DFiOQciq9P+SRlDN6F4Ry/ySeWMERU3Di0v5
 BYEXlSRbilubviP4KoXvTS4c8ImwmqWC9iYOk9dMsGuAieWURS09EtY8wnhgxXJnwrqq
 HNbQgKsucidqfbOEY+4aseWUiC1tCiurI3vguTqqAGHLRIdAPkBHUUpFDD+FlWH0UiU9
 1IYJywc/l7rmVPf5EyMcK4xM+GfQZl2ru89QJc12JfJJDGo3ZClbJl2OBviUKn1Z9pKG
 jdvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LZE+Xo98zuPfEJJYc3IqeQRPxedI7zj+vekRKI0XAyw=;
 b=dcbM6Ldbyg5PRO0B4Ggy9QszoW1INY0R3F5fV4VgguBGBj6ZtkSeJnr3YMKYDzHV5i
 83pU4wYPMpvmjkquRgo0FNGHpY4jpW4Q+fu7zUhlKenKm/pB1ZFaqoMpAAmwGAyEfG3Y
 h/Ha1UJXw7sXaCE4LF1l298dAdzSUwXYPoj5ZTUR93RzhBK8tkga1KvuQgWELT82Ciyw
 oHjfWAeqqw2+BwtcGSVox9bhVCCpCydsJMEglG/VTJQBbsCC5IvtQEIeE3HGiqYCGY1t
 d03PT0dettURtmRNgKMLf03sp1rlA5ocYmLvClIDMCJIWpgUJw7EmCZbSptGm6xOFmyq
 +qeg==
X-Gm-Message-State: APjAAAWYSKiHzEhUYYM+iufhhv4zEGTJZp7EB4oog6ueYFJdsLmGUj5k
 RXzV8cFl0MLw7FHsqNU9IatpBA6TBODf3++Vs/k=
X-Google-Smtp-Source: APXvYqxZNyOg7XGNhoutzokbnVc5nQbhtV3AlWk76sEbJJ8d09qRGIpzB/q7iLwEM4Rkk0nO84vGVSnjlYvqgh9b+S8=
X-Received: by 2002:a67:fb14:: with SMTP id d20mr11886738vsr.136.1580654131573; 
 Sun, 02 Feb 2020 06:35:31 -0800 (PST)
MIME-Version: 1.0
References: <20200129073902.5786-1-stanley.chu@mediatek.com>
 <20200129073902.5786-2-stanley.chu@mediatek.com>
In-Reply-To: <20200129073902.5786-2-stanley.chu@mediatek.com>
From: Alim Akhtar <alim.akhtar@gmail.com>
Date: Sun, 2 Feb 2020 20:04:55 +0530
Message-ID: <CAGOxZ521Vz4EcmWApZLqcDwkwa-XHLFLDx2n1HRht0Pf0fFkmw@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] scsi: ufs-mediatek: ensure UniPro is not powered
 down before linkup
To: Stanley Chu <stanley.chu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_063538_479658_7A0E0457 
X-CRM114-Status: GOOD (  15.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [alim.akhtar[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-scsi@vger.kernel.org,
 "Martin K. Petersen" <martin.petersen@oracle.com>, andy.teng@mediatek.com,
 "James E.J. Bottomley" <jejb@linux.ibm.com>, chun-hung.wu@mediatek.com,
 Kuohong Wang <kuohong.wang@mediatek.com>,
 open list <linux-kernel@vger.kernel.org>, Avri Altman <avri.altman@wdc.com>,
 Can Guo <cang@codeaurora.org>, linux-mediatek@lists.infradead.org,
 peter.wang@mediatek.com, Alim Akhtar <alim.akhtar@samsung.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, asutoshd@codeaurora.org,
 Bart Van Assche <bvanassche@acm.org>, linux-arm-kernel@lists.infradead.org,
 "Bean Huo \(beanhuo\)" <beanhuo@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

HI Stanley

On Wed, Jan 29, 2020 at 1:09 PM Stanley Chu <stanley.chu@mediatek.com> wrote:
>
> MediaTek Chipsets can enter proprietary UniPro low-power mode during
> suspend while link is in hibern8 state. Make sure leaving low-power
> mode before every link startup to prevent lockup in any possible error recovery
> path.
>
> In the same time, re-factor related funcitons to improve code readability.
>
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>

Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>
> ---
>  drivers/scsi/ufs/ufs-mediatek.c | 19 ++++++++++---------
>  1 file changed, 10 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/scsi/ufs/ufs-mediatek.c b/drivers/scsi/ufs/ufs-mediatek.c
> index 53eae5fe2ade..7ac838cc15d1 100644
> --- a/drivers/scsi/ufs/ufs-mediatek.c
> +++ b/drivers/scsi/ufs/ufs-mediatek.c
> @@ -30,6 +30,11 @@
>  #define ufs_mtk_device_reset_ctrl(high, res) \
>         ufs_mtk_smc(UFS_MTK_SIP_DEVICE_RESET, high, res)
>
> +#define ufs_mtk_unipro_powerdown(hba, powerdown) \
> +       ufshcd_dme_set(hba, \
> +                      UIC_ARG_MIB_SEL(VS_UNIPROPOWERDOWNCONTROL, 0), \
> +                      powerdown)
> +
>  static void ufs_mtk_cfg_unipro_cg(struct ufs_hba *hba, bool enable)
>  {
>         u32 tmp;
> @@ -290,6 +295,8 @@ static int ufs_mtk_pre_link(struct ufs_hba *hba)
>         int ret;
>         u32 tmp;
>
> +       ufs_mtk_unipro_powerdown(hba, 0);
> +
>         /* disable deep stall */
>         ret = ufshcd_dme_get(hba, UIC_ARG_MIB(VS_SAVEPOWERCONTROL), &tmp);
>         if (ret)
> @@ -390,9 +397,7 @@ static int ufs_mtk_link_set_hpm(struct ufs_hba *hba)
>         if (err)
>                 return err;
>
> -       err = ufshcd_dme_set(hba,
> -                            UIC_ARG_MIB_SEL(VS_UNIPROPOWERDOWNCONTROL, 0),
> -                            0);
> +       err = ufs_mtk_unipro_powerdown(hba, 0);
>         if (err)
>                 return err;
>
> @@ -413,14 +418,10 @@ static int ufs_mtk_link_set_lpm(struct ufs_hba *hba)
>  {
>         int err;
>
> -       err = ufshcd_dme_set(hba,
> -                            UIC_ARG_MIB_SEL(VS_UNIPROPOWERDOWNCONTROL, 0),
> -                            1);
> +       err = ufs_mtk_unipro_powerdown(hba, 1);
>         if (err) {
>                 /* Resume UniPro state for following error recovery */
> -               ufshcd_dme_set(hba,
> -                              UIC_ARG_MIB_SEL(VS_UNIPROPOWERDOWNCONTROL, 0),
> -                              0);
> +               ufs_mtk_unipro_powerdown(hba, 0);
>                 return err;
>         }
>
> --
> 2.18.0



-- 
Regards,
Alim

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
