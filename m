Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA7C141E69
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Jan 2020 15:06:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PkPCmeH9jgsbeea3y5npAJO70tMaH84gTUjDt9ffHb4=; b=Z6m+6ZxuJW1+V0
	l9MPouRZwajnMu3enlHRnLdh2BGNNmfnhbt5hmpzSUMkGIqqIDA5b0NPb+xsvcnFG2EClLt9ImVVG
	O2zBMgRMBCrX3bhnGKWchPRHpj5Vk9J21C7mDjVQ2amCb+2hMO5HB3HUNhD+zO34jrCipJtjg1w7n
	rJHd+bL+uPikn62svaI+ewbt44mwb8B5VKd7RwOslfA4USoUxQVHIF0Ztv260NXoAoNQjuxsBc2zy
	/VRwKGor2uLoO1AF841mIYUzHE6M33FuADrJpp1eM3G4HbmG54bV8pB7TZU7ZhmyYfm0+TWXZk9gJ
	KDRP4WLX7mMj10MG7Amw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itBDG-00025m-4f; Sun, 19 Jan 2020 14:06:02 +0000
Received: from mail-vk1-xa44.google.com ([2607:f8b0:4864:20::a44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itBD7-00023p-1g; Sun, 19 Jan 2020 14:05:54 +0000
Received: by mail-vk1-xa44.google.com with SMTP id y184so7850734vkc.11;
 Sun, 19 Jan 2020 06:05:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zQ9s6aXRXnoAgbGD22gB4cMgUN7RxJiXOnF2aQocl4w=;
 b=D4HYewrwAwcrLYakl62CNJiFBQ21pi4ZSSvdtblf5pnIkzSU7vQ+QY6eS6wSb8soGu
 tWXzPn5F/se0Rt6m2pey0k3xdLx/CPVJvnLKhitOq7+owIV1+R5iZeE5z4pSsJNCkf8w
 9cApU/2Bw8FkyDzMqpEWX1fm7IyJ5SQEn57J5Qk85uadJEJsl5oX8erdX/F+tAUnEiLI
 ooIHwdS/TjwcABk0pNszo9xzH0Tfl3ocK7J89gLrm95DRPpMbOH2bo5WXnN2Ez8myrue
 G2GYZx1QKuIkjbZyo+WNcvLRqhBtqXcAVgmIJZ18tFRm1rwxDn2FtSvje/bPn2pnzNAZ
 L/JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zQ9s6aXRXnoAgbGD22gB4cMgUN7RxJiXOnF2aQocl4w=;
 b=tkDAmnyJkAPbygDwbuCdTU97dvowktQhouKvnoDzff0gQX4l+zvNfZ1w+tqKfjYGYy
 SMYm/Yijr1odFvXaiADsCKwnJPd+u9+0/iZU4Z64IwgnpiKdezCvZQfMTT7Q6kw2gJ8/
 2R4/Lt6b8gG2bsI3SJlKZFotbEBY5g+iHWQfdGirIYcRpgIbJ7cpuZY4x59S0b5sl3KB
 CFUuzEJ7UMxBUi+xVYBhy/5Hjd86cKXG0aDzOAe1bFcA7BPbGJ0apZaOwE04/nFSpTjW
 xuvD5YX1HRFa7YpRpGDMwVBygX/grHxgaTgBuWL0xpbYz5MD6CqodgszmQ+Vm7RZY/uu
 KNGA==
X-Gm-Message-State: APjAAAW2kYzeMijkWDv4grzEdBP3CCIxKcb/9X5WOeNE7MQCVVPy1DYt
 6v19A3IjUmBumOabVfgvYKQdMthB6ssJgMeJL6k=
X-Google-Smtp-Source: APXvYqw9nG6xAj+S2gKKCAQ+BbMHU9VAljMkDzXB0Wf9p2t4X/nPF33r/AvPVp0cjllf4FH2e95K5MuKmSvD66pWLFI=
X-Received: by 2002:a1f:8f44:: with SMTP id r65mr7356012vkd.8.1579442749175;
 Sun, 19 Jan 2020 06:05:49 -0800 (PST)
MIME-Version: 1.0
References: <20200117035108.19699-1-stanley.chu@mediatek.com>
 <20200117035108.19699-2-stanley.chu@mediatek.com>
In-Reply-To: <20200117035108.19699-2-stanley.chu@mediatek.com>
From: Alim Akhtar <alim.akhtar@gmail.com>
Date: Sun, 19 Jan 2020 19:35:12 +0530
Message-ID: <CAGOxZ51ju5sKxtVzXQAFBKz_4Pc9YEZ0i4o4iHkutGx2d+H2QQ@mail.gmail.com>
Subject: Re: [PATCH v1 1/3] scsi: ufs-mediatek: add dbg_register_dump
 implementation
To: Stanley Chu <stanley.chu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_060553_092660_175E4CED 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [alim.akhtar[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Fri, Jan 17, 2020 at 9:44 AM Stanley Chu <stanley.chu@mediatek.com> wrote:
>
> Add dbg_register_dump variant vendor implementation in MediaTek
> UFS driver.
>
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
> ---

Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>

>  drivers/scsi/ufs/ufs-mediatek.c | 16 ++++++++++++++++
>  drivers/scsi/ufs/ufs-mediatek.h |  5 +++++
>  2 files changed, 21 insertions(+)
>
> diff --git a/drivers/scsi/ufs/ufs-mediatek.c b/drivers/scsi/ufs/ufs-mediatek.c
> index 8d999c0e60fe..d5194d0c4ef5 100644
> --- a/drivers/scsi/ufs/ufs-mediatek.c
> +++ b/drivers/scsi/ufs/ufs-mediatek.c
> @@ -406,6 +406,21 @@ static int ufs_mtk_resume(struct ufs_hba *hba, enum ufs_pm_op pm_op)
>         return 0;
>  }
>
> +static void ufs_mtk_dbg_register_dump(struct ufs_hba *hba)
> +{
> +       ufshcd_dump_regs(hba, REG_UFS_REFCLK_CTRL, 0x4, "Ref-Clk Ctrl ");
> +
> +       ufshcd_dump_regs(hba, REG_UFS_EXTREG, 0x4, "Ext Reg ");
> +
> +       ufshcd_dump_regs(hba, REG_UFS_MPHYCTRL,
> +                        REG_UFS_REJECT_MON - REG_UFS_MPHYCTRL + 4,
> +                        "MPHY Ctrl ");
> +
> +       /* Direct debugging information to REG_MTK_PROBE */
> +       ufshcd_writel(hba, 0x20, REG_UFS_DEBUG_SEL);
> +       ufshcd_dump_regs(hba, REG_UFS_PROBE, 0x4, "Debug Probe ");
> +}
> +
>  static int ufs_mtk_apply_dev_quirks(struct ufs_hba *hba,
>                                     struct ufs_dev_desc *card)
>  {
> @@ -430,6 +445,7 @@ static struct ufs_hba_variant_ops ufs_hba_mtk_vops = {
>         .apply_dev_quirks    = ufs_mtk_apply_dev_quirks,
>         .suspend             = ufs_mtk_suspend,
>         .resume              = ufs_mtk_resume,
> +       .dbg_register_dump   = ufs_mtk_dbg_register_dump,
>         .device_reset        = ufs_mtk_device_reset,
>  };
>
> diff --git a/drivers/scsi/ufs/ufs-mediatek.h b/drivers/scsi/ufs/ufs-mediatek.h
> index 31b7fead19eb..fccdd979d6fb 100644
> --- a/drivers/scsi/ufs/ufs-mediatek.h
> +++ b/drivers/scsi/ufs/ufs-mediatek.h
> @@ -13,6 +13,11 @@
>   * Vendor specific UFSHCI Registers
>   */
>  #define REG_UFS_REFCLK_CTRL         0x144
> +#define REG_UFS_EXTREG              0x2100
> +#define REG_UFS_MPHYCTRL            0x2200
> +#define REG_UFS_REJECT_MON          0x22AC
> +#define REG_UFS_DEBUG_SEL           0x22C0
> +#define REG_UFS_PROBE               0x22C8
>
>  /*
>   * Ref-clk control
> --
> 2.18.0



-- 
Regards,
Alim

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
