Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4551A141E70
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Jan 2020 15:13:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qwy5Wkjvp29XWxaJI1aKo1i897swPbv9+K79w84B3tk=; b=YgRB5hv1eRER7q
	csjZpk1srfaKvgPUTMGiSQdgKBaP+o8/mN4iaMrv9UmmYBS/HPq+repHDWabcpQNDJS/GllUlH/Qj
	amNjVNRuLIkuSgAJYCzexdWMMW1GtGJWG8AuPUh620tpoFoDcG5HIvXJJ6WD/iKvh5nyVLRaFWT66
	oI5s/mKXgwFcsrycJDFW6pVw36+/YmXNsBl5tnWSfH/wBY9Ci0VIEFJ+gO8sWRqhJD5iwUPuBtki6
	zUyR8TZV+Yvc1WqagZsZga+07qc8+lBaZ7ItdrqgIFVFHipJekXELV3VeNmn0zSeT2/hbCP3dPMAg
	aQ3boohDxIY/4J8bWMdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itBKc-0003yP-9f; Sun, 19 Jan 2020 14:13:38 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itBKS-0003xN-8m; Sun, 19 Jan 2020 14:13:29 +0000
Received: by mail-vs1-xe44.google.com with SMTP id x123so17521973vsc.2;
 Sun, 19 Jan 2020 06:13:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WS4hpiPJ4ZsLS0bhjTBuxcDiBx1tLS6ob2vAGCFesxE=;
 b=QOuc3nSYWc5b82Vq+EXtiBO+wIuxcXrcnVdRw/OwDX2vo59211p80vm6G1wVNEp1FM
 M1hPMqTOcarVwUNrjg0dqeaFu8FrMx59Dq3k2BSCiVoScLFrbKnUz3Lskx8u/csP/K2M
 n3hJXUaO58pnk9dWkgzWpLCq7BbR5svTUBAoLU1f3Gd05sNJQGmX2fGVE0MEKIbc5FFd
 E3prO93PSEy3ktg88DgQuxu7NSiW+hufzXPrXUjeJwpW3pegx9B9nCoevU333c5xsZv0
 XLa0eXZQUyIC0ansVKKx0WYWEEdb+ZWaapL8tieFU1MjzPyZv77eb/HbXLh4f82hziGm
 iTTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WS4hpiPJ4ZsLS0bhjTBuxcDiBx1tLS6ob2vAGCFesxE=;
 b=F3ssQnE7nMKnJywCSmbRpAncdm/Ek1vahn0QHPDxp8Axxk0Twrq8re0b2ySoO5fU57
 O5XqQlqe0uEZd6ekyGCefUE2pxCQPLgJ5k2NcDuwkBK3noaQLs5m4/RpDwQRCdtwzdm1
 dzcxpJcU6G6LcHW8Ni3aya/ChbBlPwLAARKlomvFjbC2Zj2uG5dbXQKa7TQe6DCO0DL6
 R4Fk9uMr/j/xskexh4hit9QmupyUjhMKXRVXhu6LgeT7mzACcwEfq2obMR9/786OLrcX
 7HLY+qrfAPTb4Vd4tuU2XphSJQ+V+DZfYXagQtGGsLMpdUTLXXm2ZZTt03a+9QmdyMtS
 XIiA==
X-Gm-Message-State: APjAAAX6E9BPZT1zudMAvR28JCALSXRMFbcBU99xO5j5k88KBU7akift
 dJD2jtaG3YSIUGMh4TepIsb9UKdtRj7aF5Mx2cU=
X-Google-Smtp-Source: APXvYqzJeseQkiqZA+gTc1YOvzk4DZiccEVSWTY2QS9PIluU6q/4bOX3Rmonl/yu7V0uTSOkcMg7w5SonnYmnn5BK1o=
X-Received: by 2002:a67:1447:: with SMTP id 68mr9872067vsu.76.1579443206847;
 Sun, 19 Jan 2020 06:13:26 -0800 (PST)
MIME-Version: 1.0
References: <20200117035108.19699-1-stanley.chu@mediatek.com>
 <20200117035108.19699-3-stanley.chu@mediatek.com>
In-Reply-To: <20200117035108.19699-3-stanley.chu@mediatek.com>
From: Alim Akhtar <alim.akhtar@gmail.com>
Date: Sun, 19 Jan 2020 19:42:50 +0530
Message-ID: <CAGOxZ51K1EWY56Kw1aBJJ-8DubXjmY+ew6XUYKSCPXzPZvcs2w@mail.gmail.com>
Subject: Re: [PATCH v1 2/3] scsi: ufs: export some functions for vendor usage
To: Stanley Chu <stanley.chu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_061328_335466_02E6461A 
X-CRM114-Status: GOOD (  13.60  )
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

On Fri, Jan 17, 2020 at 9:45 AM Stanley Chu <stanley.chu@mediatek.com> wrote:
>
> Export below functions for vendor usage,
>
> int ufshcd_hba_enable(struct ufs_hba *hba);
> int ufshcd_make_hba_operational(struct ufs_hba *hba);
> int ufshcd_uic_hibern8_exit(struct ufs_hba *hba);
>
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
> ---
Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>

>  drivers/scsi/ufs/ufshcd.c | 11 +++++++----
>  drivers/scsi/ufs/ufshcd.h |  3 +++
>  2 files changed, 10 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
> index bea036ab189a..1168baf358ea 100644
> --- a/drivers/scsi/ufs/ufshcd.c
> +++ b/drivers/scsi/ufs/ufshcd.c
> @@ -250,7 +250,6 @@ static int ufshcd_probe_hba(struct ufs_hba *hba);
>  static int __ufshcd_setup_clocks(struct ufs_hba *hba, bool on,
>                                  bool skip_ref_clk);
>  static int ufshcd_setup_clocks(struct ufs_hba *hba, bool on);
> -static int ufshcd_uic_hibern8_exit(struct ufs_hba *hba);
>  static int ufshcd_uic_hibern8_enter(struct ufs_hba *hba);
>  static inline void ufshcd_add_delay_before_dme_cmd(struct ufs_hba *hba);
>  static int ufshcd_host_reset_and_restore(struct ufs_hba *hba);
> @@ -3865,7 +3864,7 @@ static int ufshcd_uic_hibern8_enter(struct ufs_hba *hba)
>         return ret;
>  }
>
> -static int ufshcd_uic_hibern8_exit(struct ufs_hba *hba)
> +int ufshcd_uic_hibern8_exit(struct ufs_hba *hba)
>  {
>         struct uic_command uic_cmd = {0};
>         int ret;
> @@ -3891,6 +3890,7 @@ static int ufshcd_uic_hibern8_exit(struct ufs_hba *hba)
>
>         return ret;
>  }
> +EXPORT_SYMBOL_GPL(ufshcd_uic_hibern8_exit);
>
>  void ufshcd_auto_hibern8_update(struct ufs_hba *hba, u32 ahit)
>  {
> @@ -4162,7 +4162,7 @@ static int ufshcd_complete_dev_init(struct ufs_hba *hba)
>   *
>   * Returns 0 on success, non-zero value on failure
>   */
> -static int ufshcd_make_hba_operational(struct ufs_hba *hba)
> +int ufshcd_make_hba_operational(struct ufs_hba *hba)
>  {
>         int err = 0;
>         u32 reg;
> @@ -4208,6 +4208,7 @@ static int ufshcd_make_hba_operational(struct ufs_hba *hba)
>  out:
>         return err;
>  }
> +EXPORT_SYMBOL_GPL(ufshcd_make_hba_operational);
>
>  /**
>   * ufshcd_hba_stop - Send controller to reset state
> @@ -4285,7 +4286,7 @@ static int ufshcd_hba_execute_hce(struct ufs_hba *hba)
>         return 0;
>  }
>
> -static int ufshcd_hba_enable(struct ufs_hba *hba)
> +int ufshcd_hba_enable(struct ufs_hba *hba)
>  {
>         int ret;
>
> @@ -4310,6 +4311,8 @@ static int ufshcd_hba_enable(struct ufs_hba *hba)
>
>         return ret;
>  }
> +EXPORT_SYMBOL_GPL(ufshcd_hba_enable);
> +
>  static int ufshcd_disable_tx_lcc(struct ufs_hba *hba, bool peer)
>  {
>         int tx_lanes, i, err = 0;
> diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
> index b1a1c65be8b1..fca372d98495 100644
> --- a/drivers/scsi/ufs/ufshcd.h
> +++ b/drivers/scsi/ufs/ufshcd.h
> @@ -799,8 +799,11 @@ static inline void ufshcd_rmwl(struct ufs_hba *hba, u32 mask, u32 val, u32 reg)
>
>  int ufshcd_alloc_host(struct device *, struct ufs_hba **);
>  void ufshcd_dealloc_host(struct ufs_hba *);
> +int ufshcd_hba_enable(struct ufs_hba *hba);
>  int ufshcd_init(struct ufs_hba * , void __iomem * , unsigned int);
> +int ufshcd_make_hba_operational(struct ufs_hba *hba);
>  void ufshcd_remove(struct ufs_hba *);
> +int ufshcd_uic_hibern8_exit(struct ufs_hba *hba);
>  int ufshcd_wait_for_register(struct ufs_hba *hba, u32 reg, u32 mask,
>                                 u32 val, unsigned long interval_us,
>                                 unsigned long timeout_ms, bool can_sleep);
> --
> 2.18.0



-- 
Regards,
Alim

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
