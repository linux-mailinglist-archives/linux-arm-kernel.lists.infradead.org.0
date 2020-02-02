Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D651214FD93
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  2 Feb 2020 15:36:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6KzdTlJ9reHAmOm6cqZyMXVIC1Z8eWQqKRo82WSsr0M=; b=KO9NgpuX1stzps
	gA8PeBIxW2xAN8Hyp/CfuZc2DapB1vQDY3JUv4s4wv3kZx2rPqwrYgz0pc5N0emekiA02j4vKuW+q
	Nm0StfH4HYnYfEFlDTXy0vyKjJqLCx5DpbciZDY+fRm9AGU5csOifpff8gt7jLKA47tsn1BqlSDGn
	DnlCqzoGbE+pad7LIVk/jciabFUsZcwJurnCQN74KwxL1vqpBpFAqoo6APjXKrrojtPxLxfsz+ehl
	rbehhDCRlWEmEcxX595wQ4l+Y6osWaV6j2XIOaoNb2vX72a2wVB7PPejaJZmHU69zqeNJjeKygtb6
	kWDq0XJiX9qyDifKEgdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyGMH-0002XJ-C8; Sun, 02 Feb 2020 14:36:21 +0000
Received: from mail-vk1-xa41.google.com ([2607:f8b0:4864:20::a41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyGM4-0002Vk-NY; Sun, 02 Feb 2020 14:36:10 +0000
Received: by mail-vk1-xa41.google.com with SMTP id o200so3422763vke.4;
 Sun, 02 Feb 2020 06:36:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+7SXwisOz3MJdWhABlsmYfw2UinRaMfqXmyYRTMi5bI=;
 b=nkGIcVJUjrMDSCgg9dnvxyApE+KcfK1JRDvG9M7U69uj4lu4YeheYaqQ2B2zYSHejF
 HtyDT9986T1/59nJv7gUpX4p3b04B4cUUJ38raYyX5kaGSuNmDDQX2tuz7BF4FG5J4ri
 /o0xrbv1G0wkzFupwOvxgiHxTfde5/sY89NBglGhIQ9zKDqPrbcmikAM/SO9aD9VMLJ7
 DENW0BEgzEZ8NGFO7Dbz6loV1SAF3rKSJvkB029la8q0b0d9qxwf/hzaM5N6Z84EQVRT
 HyaLMek17KZSxzfbyj84G5GprKqrNJeuXLNuFuM2RlKt4ERX0B6YGiY+K7wXz1SHYocf
 5ukg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+7SXwisOz3MJdWhABlsmYfw2UinRaMfqXmyYRTMi5bI=;
 b=CPlYPQFGUOQ36Zpyzht5S6vn/fOSQffgcsdDqDJa4aS/oHRU68BZIwQNTPdHnvWKTE
 mnz1KEHMfEZngXnZ9Cz7MMR6coVtJS6oTy5ZJlIyZ9d3oWfBqoh9JwYwr3Qbpisa9yh7
 OsKEQaOYNpYS+Gwf6wQwhtcq1y/dbr0y+49J5d/Fg2v3Z02ljHP8L9BODcpRe7q4fzyg
 XHutVXf2uBvB0Cn5EvWBvFZWPpvZJ7vToSfMjgRbbhh4C92Oax/QC2XZC5jVWUwr+9A3
 x0ftT+ajlMEAFyqjmDBJ0zT3WSfMiK15r1i6PLpCclbl6VTtOghGb+8xFaZa+cIk6pYK
 xdFw==
X-Gm-Message-State: APjAAAUvPwVGO4YVeasNpLamH2BEvtM3cSdLujwW0OALxWIi6p8rqDj4
 FuJv9ZJW4BzhpTXpxRl1e0IYtYG+SIXtzxyUAiQ=
X-Google-Smtp-Source: APXvYqxUF/vzSYFVDONbzX5O+4sOxZwqpd7IDmHOLLBnyBb6Su9xFaTefRJE+qFipRJfPxVP+N294T442JccyQNgqDc=
X-Received: by 2002:a1f:4541:: with SMTP id s62mr11624924vka.59.1580654167536; 
 Sun, 02 Feb 2020 06:36:07 -0800 (PST)
MIME-Version: 1.0
References: <20200129073902.5786-1-stanley.chu@mediatek.com>
 <20200129073902.5786-3-stanley.chu@mediatek.com>
In-Reply-To: <20200129073902.5786-3-stanley.chu@mediatek.com>
From: Alim Akhtar <alim.akhtar@gmail.com>
Date: Sun, 2 Feb 2020 20:05:31 +0530
Message-ID: <CAGOxZ51Up7xQm0MXFhy3_oDOVy69NM2e4MKjoZvzK8-0SFyKWg@mail.gmail.com>
Subject: Re: [PATCH v3 2/4] scsi: ufs-mediatek: support linkoff state during
 suspend
To: Stanley Chu <stanley.chu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_063608_767890_1D60AE48 
X-CRM114-Status: GOOD (  16.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a41 listed in]
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

Hi Stanley

On Wed, Jan 29, 2020 at 1:11 PM Stanley Chu <stanley.chu@mediatek.com> wrote:
>
> If system suspend or runtime suspend mode is configured as
> linkoff state, phy can be powered off and reference clock
> can be gated in MediaTek Chipsets.
>
> In the same time, remove redundant reference clock control
> in suspend and resume callbacks because such control can be
> well-handled in setup_clocks callback..
>
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>

> ---
>  drivers/scsi/ufs/ufs-mediatek.c | 12 +++++++-----
>  1 file changed, 7 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/scsi/ufs/ufs-mediatek.c b/drivers/scsi/ufs/ufs-mediatek.c
> index 7ac838cc15d1..d78897a14905 100644
> --- a/drivers/scsi/ufs/ufs-mediatek.c
> +++ b/drivers/scsi/ufs/ufs-mediatek.c
> @@ -167,7 +167,7 @@ static int ufs_mtk_setup_clocks(struct ufs_hba *hba, bool on,
>
>         switch (status) {
>         case PRE_CHANGE:
> -               if (!on) {
> +               if (!on && !ufshcd_is_link_active(hba)) {
>                         ufs_mtk_setup_ref_clk(hba, on);
>                         ret = phy_power_off(host->mphy);
>                 }
> @@ -437,10 +437,11 @@ static int ufs_mtk_suspend(struct ufs_hba *hba, enum ufs_pm_op pm_op)
>                 err = ufs_mtk_link_set_lpm(hba);
>                 if (err)
>                         return -EAGAIN;
> -               phy_power_off(host->mphy);
> -               ufs_mtk_setup_ref_clk(hba, false);
>         }
>
> +       if (!ufshcd_is_link_active(hba))
> +               phy_power_off(host->mphy);
> +
>         return 0;
>  }
>
> @@ -449,9 +450,10 @@ static int ufs_mtk_resume(struct ufs_hba *hba, enum ufs_pm_op pm_op)
>         struct ufs_mtk_host *host = ufshcd_get_variant(hba);
>         int err;
>
> -       if (ufshcd_is_link_hibern8(hba)) {
> -               ufs_mtk_setup_ref_clk(hba, true);
> +       if (!ufshcd_is_link_active(hba))
>                 phy_power_on(host->mphy);
> +
> +       if (ufshcd_is_link_hibern8(hba)) {
>                 err = ufs_mtk_link_set_hpm(hba);
>                 if (err)
>                         return err;
> --
> 2.18.0



-- 
Regards,
Alim

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
