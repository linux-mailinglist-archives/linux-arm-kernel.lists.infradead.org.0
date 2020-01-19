Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B77C141E8B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Jan 2020 15:28:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/uQs4cpYNpC1rju8kQEM1+NgiYt7jzSYvqVze/xe0IQ=; b=cJ01mbIDyq3E8P
	Kbv3PajjMunzKHY//0MR5yMPt2pwjiLFSGNZZcofqE6DVrbWvEqgOjqNW6ZgMqVxOmX8iRVNaoAat
	P8N+zh85/g74ptgN+riNi7ZAzafkfsVRFn0deenS4wBew9KWbPVND+WuijfFLN+1tWLVgGI3eurSD
	OVxDvMVhA7Wp2kMH6uGK/Lm2+iNJC2vT5O4LGzvmD67Qc6bQ+02FmZux14yoZE875Gh94aGm+dT1J
	xGDvT2qbqEWB+OOAiOOho2TccRRQmfAe16lpcxfev/8oiMj0ba1IJtg5pXfRFdKcbUtWR+d+GWWyu
	B2ydppTW+4/dpysSSZTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itBZ5-0000TL-RE; Sun, 19 Jan 2020 14:28:35 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itBYu-0000S5-Ch; Sun, 19 Jan 2020 14:28:25 +0000
Received: by mail-vs1-xe44.google.com with SMTP id g15so17529378vsf.1;
 Sun, 19 Jan 2020 06:28:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hXWYeX6AjtCDD1kv6pJLbNztbwW499IxeNUMgb5p23o=;
 b=rYQjOwK7eKiea9ZzsLJpVr/fXJw6Odp4y9oVfXjpZ5Ypqm1TDdcsTmyDgkF57qzaM3
 53Fh+Opzf06Zj7t1IOM3DK3rTYv90QhGYbmx6pPAwUP040ziVECm/V3YfHOFFy4DOd/4
 qE7Tbmq1b17DI1RiJ4bHccmrRBUIeGj9SxyczYA2s7+lAGcKi+CoS0iqHiwBbr6otv/w
 YAm7LuJDbwNjDxqdx/zCp3cfc4QdE1vwREHwUhvdoS+56RYx07QOtlwEKrdKRYdQvgSi
 8p1OGceTrELl9lJSaLNZzzPImLJu6d9xW2BoEAjSyh6yU1TivUsROh9Lz/Ck48TAEOox
 CNEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hXWYeX6AjtCDD1kv6pJLbNztbwW499IxeNUMgb5p23o=;
 b=bqY24cSzSZnm1nujdnoFP9VXyXOSMvRsUrCX8E9I7CTro9JAa8x+T5pWu+UENFNYeq
 7XhaDfLXV1uQjLOSTMXVyzWOxAtU3slmJ/6DERyasmUEhbP1wuCxEozRtwprqUZAMhSl
 D6QnQtvek/comhsprQO9i+HYnhrbeYRfhCWYHH+OWvqO995cNfgwRIIGPLqp8MTpiVIQ
 +Vs6xbrVqZhy8gAHVFUYJ7B2SHj8J2Ee2YphIOR4jJcJPLCS3qk6jI+K5xLSNJ8CPm01
 NSUa9PmLHSVZoVMDzrDDE0pkvivV7saqEF/g+2mIOU05Nt98r0FMQI+CJsPgKkSJ4b2e
 xaZg==
X-Gm-Message-State: APjAAAUIATLlmYULu8eFf8dKMj4mrOPLAD3xYnTUFFoZ/X6QCUS72pI/
 u3y9YTnURRQlX1NJNbeV5z+b1OqPvhA4mWsn16M=
X-Google-Smtp-Source: APXvYqzDPJ2ye9YaeF3DaCU8q4S+yDkAYV36sI64ueyCEDAUkMAT1qlcYKkyjVH8mMpwuJiwXy9m1uyuXVfhdKfKCds=
X-Received: by 2002:a05:6102:3102:: with SMTP id
 e2mr10235569vsh.179.1579444103046; 
 Sun, 19 Jan 2020 06:28:23 -0800 (PST)
MIME-Version: 1.0
References: <20200117035108.19699-1-stanley.chu@mediatek.com>
 <20200117035108.19699-4-stanley.chu@mediatek.com>
In-Reply-To: <20200117035108.19699-4-stanley.chu@mediatek.com>
From: Alim Akhtar <alim.akhtar@gmail.com>
Date: Sun, 19 Jan 2020 19:57:47 +0530
Message-ID: <CAGOxZ51V6XmAuu4ki_X7kEkCoUHZguM1=peEHSktsuu1obyDFw@mail.gmail.com>
Subject: Re: [PATCH v1 3/3] scsi: ufs-mediatek: enable low-power mode for
 hibern8 state
To: Stanley Chu <stanley.chu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_062824_456358_026A69FF 
X-CRM114-Status: GOOD (  14.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
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

On Fri, Jan 17, 2020 at 9:44 AM Stanley Chu <stanley.chu@mediatek.com> wrote:
>
> In MediaTek Chipsets, UniPro link and ufshci can enter proprietary
> low-power mode while link is in hibern8 state.
>
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
> ---
Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>

>  drivers/scsi/ufs/ufs-mediatek.c | 53 +++++++++++++++++++++++++++++++++
>  1 file changed, 53 insertions(+)
>
> diff --git a/drivers/scsi/ufs/ufs-mediatek.c b/drivers/scsi/ufs/ufs-mediatek.c
> index d5194d0c4ef5..f32f3f34f6d0 100644
> --- a/drivers/scsi/ufs/ufs-mediatek.c
> +++ b/drivers/scsi/ufs/ufs-mediatek.c
> @@ -382,11 +382,60 @@ static void ufs_mtk_device_reset(struct ufs_hba *hba)
>         dev_info(hba->dev, "device reset done\n");
>  }
>
> +static int ufs_mtk_link_set_hpm(struct ufs_hba *hba)
> +{
> +       int err;
> +
> +       err = ufshcd_hba_enable(hba);
> +       if (err)
> +               return err;
> +
> +       err = ufshcd_dme_set(hba,
> +                            UIC_ARG_MIB_SEL(VS_UNIPROPOWERDOWNCONTROL, 0),
> +                            0);
> +       if (err)
> +               return err;
> +
> +       err = ufshcd_uic_hibern8_exit(hba);
> +       if (!err)
> +               ufshcd_set_link_active(hba);
> +       else
> +               return err;
> +
> +       err = ufshcd_make_hba_operational(hba);
> +       if (err)
> +               return err;
> +
> +       return 0;
> +}
> +
> +static int ufs_mtk_link_set_lpm(struct ufs_hba *hba)
> +{
> +       int err;
> +
> +       err = ufshcd_dme_set(hba,
> +                            UIC_ARG_MIB_SEL(VS_UNIPROPOWERDOWNCONTROL, 0),
> +                            1);
> +       if (err) {
> +               /* Resume UniPro state for following error recovery */
> +               ufshcd_dme_set(hba,
> +                              UIC_ARG_MIB_SEL(VS_UNIPROPOWERDOWNCONTROL, 0),
> +                              0);
> +               return err;
> +       }
> +
> +       return 0;
> +}
> +
>  static int ufs_mtk_suspend(struct ufs_hba *hba, enum ufs_pm_op pm_op)
>  {
> +       int err;
>         struct ufs_mtk_host *host = ufshcd_get_variant(hba);
>
>         if (ufshcd_is_link_hibern8(hba)) {
> +               err = ufs_mtk_link_set_lpm(hba);
> +               if (err)
> +                       return -EAGAIN;
>                 phy_power_off(host->mphy);
>                 ufs_mtk_setup_ref_clk(hba, false);
>         }
> @@ -397,10 +446,14 @@ static int ufs_mtk_suspend(struct ufs_hba *hba, enum ufs_pm_op pm_op)
>  static int ufs_mtk_resume(struct ufs_hba *hba, enum ufs_pm_op pm_op)
>  {
>         struct ufs_mtk_host *host = ufshcd_get_variant(hba);
> +       int err;
>
>         if (ufshcd_is_link_hibern8(hba)) {
>                 ufs_mtk_setup_ref_clk(hba, true);
>                 phy_power_on(host->mphy);
> +               err = ufs_mtk_link_set_hpm(hba);
> +               if (err)
> +                       return err;
>         }
>
>         return 0;
> --
> 2.18.0



-- 
Regards,
Alim

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
