Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7FBD126923
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 19:33:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BsFulgsnu6ln9gdPuTHU7WpmFhHTv60tt4AYFYkhgDQ=; b=bI8i6H6e5mW3Ov
	zGLkrZ4BmPX6uR2Lm1vzEVaL8G/f6uXGOTxQ2JGEP3ijhz9CEsByDwf1xO5htU7+id9FFKZctPI1E
	ZP4q4qngjnmRhMxf+Ir7gsyOdWcQ7Yo3EWR0tJyjMe5WhcSt8AXfdNKvkcwoAw1ePALKYisVffAt8
	W7FTWD6x9iecPBUsVxuEUvEE6U8T7ssEXbLFJGJojvzo4a5RsaZ2QwpA37a0+7VcAQd3AdrAtWRoW
	2mxt/C7te4WHR4XQ6ES/gxWTq9+etM7eaACJaeqpclxthwcOCW4zPLKD6y61QKdNIkKElt/xeHO1l
	sAj28YcUpymXAvlo+Iiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii0bp-000652-7B; Thu, 19 Dec 2019 18:33:13 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii0bc-00063J-CM; Thu, 19 Dec 2019 18:33:01 +0000
Received: by mail-ua1-x943.google.com with SMTP id f7so2301555uaa.8;
 Thu, 19 Dec 2019 10:33:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VOyymaYGcmSJ1WRzuqz4Ak0rmhgIqLCqZ8zG2kPHNMo=;
 b=glXTEz6xo8pZIYtMNXBEZKiZ6kJgRXxgzHEMYNU3S58gEmx1YdW2HvnbOPO9ixmQ1w
 JTqyRLAr76LLdCT4bxMI1SmmDS/6dXWPYgyri6gBmzDXrBgFdhKFUgezb0cIDPigANgE
 E9IZQvFNURFRyGqU7OKos8+sbog3m8xUCEzQCYb4PR/viN3IIsMviu0e1K/E5IbFVg4t
 oPHGjpJNZInKrcf3fI8mbv5IeegUQpAy8NxZ4n9nvDz3nSOZYq9q7WQZ9J6+V08tlCJl
 sylHG8fEiJAvulZsLjgf3pWqz+Jj4RgxEue9g0gKXdrtHYI/6Nz0A9v/zZ5U0kZbdVX0
 awWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VOyymaYGcmSJ1WRzuqz4Ak0rmhgIqLCqZ8zG2kPHNMo=;
 b=Ne52wCQwYU6Zwp0Sh129wGq1lQ7ymH4YaHnualW4XzuXJTa4vNV7nhwt9aNLn0euCe
 0al/YW701B6xHlki9kU1d35RcgQBI+SAmXzSZomdB1zvyiCul9XEUuth+w1COumI/K+j
 ZA9LzOyuNUI7jqGx+3l0tYPFU6JsAnm8Uf211lS7CatDqUXX9HZrJn6vCcfW53vB1g/t
 fVDYePohUVgj0KPWEjCpgS6PXlWRUSEU+JBzi5QzNC/4Vt+6bRArgMGwvc7VTYA3LP36
 yzEJz0tq9eSVtkJ/emj35EpHXMn6uiIiu753is2pMEPyZUePQPal3AY9zQtouEfJNOpc
 1RZQ==
X-Gm-Message-State: APjAAAUeLP/Te+XAWzA47GVbhxoQ//F9i2jDiSFGb7+PDHw9RTwzvQ27
 PUZFzXS/GwpLATlh7v7txJxBaDOWzNSDv/+q0jIpSVu66ts=
X-Google-Smtp-Source: APXvYqwM3UEwSjHttH0IdDl/GVqzd05+x7SvoHGEo+WgDCx2bVOHaGPhK0SsHTOHsJq/GpXPgXIoNGKQmA3xGy6FlWA=
X-Received: by 2002:ab0:7049:: with SMTP id v9mr6389360ual.95.1576780379310;
 Thu, 19 Dec 2019 10:32:59 -0800 (PST)
MIME-Version: 1.0
References: <1576224695-22657-1-git-send-email-stanley.chu@mediatek.com>
 <1576224695-22657-3-git-send-email-stanley.chu@mediatek.com>
In-Reply-To: <1576224695-22657-3-git-send-email-stanley.chu@mediatek.com>
From: Alim Akhtar <alim.akhtar@gmail.com>
Date: Fri, 20 Dec 2019 00:02:22 +0530
Message-ID: <CAGOxZ52ffkFwkcrdyq+gjuXarjr-aqGRw2ck25Yu0QgppGh9hQ@mail.gmail.com>
Subject: Re: [PATCH v1 2/4] scsi: ufs: export ufshcd_auto_hibern8_update for
 vendor usage
To: Stanley Chu <stanley.chu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_103300_444212_C41988E2 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
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

On Fri, Dec 13, 2019 at 2:07 PM Stanley Chu <stanley.chu@mediatek.com> wrote:
>
> Export ufshcd_auto_hibern8_update to allow vendors to use common
> interface to customize auto-hibernate timer.
>
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>

Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>

> ---
>  drivers/scsi/ufs/ufs-sysfs.c | 20 --------------------
>  drivers/scsi/ufs/ufshcd.c    | 18 ++++++++++++++++++
>  drivers/scsi/ufs/ufshcd.h    |  1 +
>  3 files changed, 19 insertions(+), 20 deletions(-)
>
> diff --git a/drivers/scsi/ufs/ufs-sysfs.c b/drivers/scsi/ufs/ufs-sysfs.c
> index ad2abc96c0f1..720be3f64be7 100644
> --- a/drivers/scsi/ufs/ufs-sysfs.c
> +++ b/drivers/scsi/ufs/ufs-sysfs.c
> @@ -118,26 +118,6 @@ static ssize_t spm_target_link_state_show(struct device *dev,
>                                 ufs_pm_lvl_states[hba->spm_lvl].link_state));
>  }
>
> -static void ufshcd_auto_hibern8_update(struct ufs_hba *hba, u32 ahit)
> -{
> -       unsigned long flags;
> -
> -       if (!ufshcd_is_auto_hibern8_supported(hba))
> -               return;
> -
> -       spin_lock_irqsave(hba->host->host_lock, flags);
> -       if (hba->ahit != ahit)
> -               hba->ahit = ahit;
> -       spin_unlock_irqrestore(hba->host->host_lock, flags);
> -       if (!pm_runtime_suspended(hba->dev)) {
> -               pm_runtime_get_sync(hba->dev);
> -               ufshcd_hold(hba, false);
> -               ufshcd_auto_hibern8_enable(hba);
> -               ufshcd_release(hba);
> -               pm_runtime_put(hba->dev);
> -       }
> -}
> -
>  /* Convert Auto-Hibernate Idle Timer register value to microseconds */
>  static int ufshcd_ahit_to_us(u32 ahit)
>  {
> diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
> index b5966faf3e98..589f519316aa 100644
> --- a/drivers/scsi/ufs/ufshcd.c
> +++ b/drivers/scsi/ufs/ufshcd.c
> @@ -3956,6 +3956,24 @@ static int ufshcd_uic_hibern8_exit(struct ufs_hba *hba)
>         return ret;
>  }
>
> +void ufshcd_auto_hibern8_update(struct ufs_hba *hba, u32 ahit)
> +{
> +       unsigned long flags;
> +
> +       if (!(hba->capabilities & MASK_AUTO_HIBERN8_SUPPORT))
> +               return;
> +
> +       spin_lock_irqsave(hba->host->host_lock, flags);
> +       if (hba->ahit == ahit)
> +               goto out_unlock;
> +       hba->ahit = ahit;
> +       if (!pm_runtime_suspended(hba->dev))
> +               ufshcd_writel(hba, hba->ahit, REG_AUTO_HIBERNATE_IDLE_TIMER);
> +out_unlock:
> +       spin_unlock_irqrestore(hba->host->host_lock, flags);
> +}
> +EXPORT_SYMBOL_GPL(ufshcd_auto_hibern8_update);
> +
>  void ufshcd_auto_hibern8_enable(struct ufs_hba *hba)
>  {
>         unsigned long flags;
> diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
> index 2740f6941ec6..86586a0b9aa5 100644
> --- a/drivers/scsi/ufs/ufshcd.h
> +++ b/drivers/scsi/ufs/ufshcd.h
> @@ -927,6 +927,7 @@ int ufshcd_query_flag(struct ufs_hba *hba, enum query_opcode opcode,
>         enum flag_idn idn, bool *flag_res);
>
>  void ufshcd_auto_hibern8_enable(struct ufs_hba *hba);
> +void ufshcd_auto_hibern8_update(struct ufs_hba *hba, u32 ahit);
>
>  #define SD_ASCII_STD true
>  #define SD_RAW false
> --
> 2.18.0



-- 
Regards,
Alim

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
