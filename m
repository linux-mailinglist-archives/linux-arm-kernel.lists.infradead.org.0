Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6657B126928
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 19:34:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DG9oNWRsTqrFbh8w2JTYzxwfXMIreS+76baeIdMQKjQ=; b=TcHZueD5mlVC6H
	sHG0ljOfVC3/4NgD00EK9yC3cogQp9BLgYytfixUYzf53GOU4c3TD4xnkhNvW7WGQPzlXH7+qA4Bc
	QxAS1v2enSPr+pkYeUXTRpn9n0nCSgcLpPuoU7hSjhOBFaGvwmdfV46DRG04SvlwOnrUCPbntQlS4
	C+c8xd2s11Z8Z1xURfFhuYGwiWbnfKe9xHYo8lfP7/WlZAr6mg3GLviuOy80JAOWvOOh4ZEkMtd3C
	8/vkOoMDn2LynDQJUBBSlo9B/NyjM9cjHnpuuqHRp601fYMoEnmordHT6ggDIINXbVIyRYqe/LkVS
	D0srLQ59h5APqh157BWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii0cb-0006R0-Eu; Thu, 19 Dec 2019 18:34:01 +0000
Received: from mail-vk1-xa42.google.com ([2607:f8b0:4864:20::a42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii0cL-0006Lo-BX; Thu, 19 Dec 2019 18:33:46 +0000
Received: by mail-vk1-xa42.google.com with SMTP id p191so1902655vkf.8;
 Thu, 19 Dec 2019 10:33:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ml4mAJAjd+UzALjuvInIbq2ljDjbxyxCZlmTfZ9UxCk=;
 b=FkJK2kMXU/9fnYvBIr1pmuDBc/Q4Sb9TKnfUaJQ1oGe4RNu9T/nhYd4+rUNAmtJyvv
 8Q2KMCV8W5KOW3EqmHVLyLsU2HGFdKykwecFg/lDk4PIhR+U0jWK61TeH0Fh5w4S+UTl
 vZcLbPi306O1yUfb/1DudDZsFoHN7K9Ad6Jivgm5IjuxpJNLGsMUokzNv2e1gNtmORX3
 w1HfECY+fFGnurtud2eXIApj668AfEunCX9Ulm/vVb59FhI5uYFQnvtn+5fgZrJNICwP
 104Vfo66LHfLmpTygUCT0XLGtVbGeds4qm27YjzLyEA41/YL2LrmwuctfqITBeB7jRWK
 U9pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ml4mAJAjd+UzALjuvInIbq2ljDjbxyxCZlmTfZ9UxCk=;
 b=aR9hBmUnWsfncyaLL2wRXEPFlzFN3h5P5aUrZZG4FQr70s9rYI7MZGTE8c+aPX2+Q6
 Fakzk2u1M3h7W0Pgcf7l1dX7V4FrTA7jXdcYjzJTwVrhka6UcTu+IeoLYiOYPPa7lmd4
 HPiNJGY0gYlKGl9B3322bhwabnjbiOW+X2bYND2kR6GufAsjEozyRc/FJgtOcIVojaZg
 UyFqU0q62kqJsHuLGrlbjy83r8IXMSuDkrec/8MdG72erigV7fXaFwlKTlGS3HOoIv6U
 WixjA7spxVPaPrjjXL4rL0CDyY/HQwvYP0FtWYrazvdfOQcV0rW1awZmBesqYHlNDcGO
 BF0g==
X-Gm-Message-State: APjAAAVkG6yO13Cmk7MZhcsCmuEbA93aIlJzZ5AYKYxQ/1/02VpUlV3X
 U4jveOYuE2NlgD27LNweSFo06MvsA0FCQohqFWI2zeNZ8yQ=
X-Google-Smtp-Source: APXvYqzIKnrV2MFDOoxVD8lAQN7aW5bueKopZBhGbsA12grhFVgxAF32grZKsQMBuFY1Kl4E16Tfj31nxPSxsQzBbPE=
X-Received: by 2002:a1f:db81:: with SMTP id s123mr7008579vkg.45.1576780423321; 
 Thu, 19 Dec 2019 10:33:43 -0800 (PST)
MIME-Version: 1.0
References: <1576224695-22657-1-git-send-email-stanley.chu@mediatek.com>
 <1576224695-22657-5-git-send-email-stanley.chu@mediatek.com>
In-Reply-To: <1576224695-22657-5-git-send-email-stanley.chu@mediatek.com>
From: Alim Akhtar <alim.akhtar@gmail.com>
Date: Fri, 20 Dec 2019 00:03:07 +0530
Message-ID: <CAGOxZ524P=fDR3Y7+EH381xex8RHWT0Qgw3GvVaAMJsdJZFtgQ@mail.gmail.com>
Subject: Re: [PATCH v1 4/4] scsi: ufs-mediatek: configure and enable clk-gating
To: Stanley Chu <stanley.chu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_103345_397694_19CC0CDB 
X-CRM114-Status: GOOD (  14.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alim.akhtar[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org,
 "Bean Huo \(beanhuo\)" <beanhuo@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 13, 2019 at 2:42 PM Stanley Chu <stanley.chu@mediatek.com> wrote:
>
> Enable clk-gating with customized delayed timer value in
> MediaTek Chipsets.
>
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>

Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>

> ---
>  drivers/scsi/ufs/ufs-mediatek.c | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
>
> diff --git a/drivers/scsi/ufs/ufs-mediatek.c b/drivers/scsi/ufs/ufs-mediatek.c
> index 71e2e0e4ea11..282ad06ec846 100644
> --- a/drivers/scsi/ufs/ufs-mediatek.c
> +++ b/drivers/scsi/ufs/ufs-mediatek.c
> @@ -205,6 +205,9 @@ static int ufs_mtk_init(struct ufs_hba *hba)
>         /* Enable runtime autosuspend */
>         hba->caps |= UFSHCD_CAP_RPM_AUTOSUSPEND;
>
> +       /* Enable clock-gating */
> +       hba->caps |= UFSHCD_CAP_CLK_GATING;
> +
>         /*
>          * ufshcd_vops_init() is invoked after
>          * ufshcd_setup_clock(true) in ufshcd_hba_init() thus
> @@ -293,6 +296,23 @@ static int ufs_mtk_pre_link(struct ufs_hba *hba)
>         return ret;
>  }
>
> +static void ufs_mtk_setup_clk_gating(struct ufs_hba *hba)
> +{
> +       unsigned long flags;
> +       u32 ah_ms;
> +
> +       if (ufshcd_is_clkgating_allowed(hba)) {
> +               if (ufshcd_is_auto_hibern8_supported(hba) && hba->ahit)
> +                       ah_ms = FIELD_GET(UFSHCI_AHIBERN8_TIMER_MASK,
> +                                         hba->ahit);
> +               else
> +                       ah_ms = 10;
> +               spin_lock_irqsave(hba->host->host_lock, flags);
> +               hba->clk_gating.delay_ms = ah_ms + 5;
> +               spin_unlock_irqrestore(hba->host->host_lock, flags);
> +       }
> +}
> +
>  static int ufs_mtk_post_link(struct ufs_hba *hba)
>  {
>         /* disable device LCC */
> @@ -308,6 +328,8 @@ static int ufs_mtk_post_link(struct ufs_hba *hba)
>                         FIELD_PREP(UFSHCI_AHIBERN8_SCALE_MASK, 3));
>         }
>
> +       ufs_mtk_setup_clk_gating(hba);
> +
>         return 0;
>  }
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
