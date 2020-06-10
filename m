Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55F841F50D4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 11:07:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Tt+tbCNaYAHccpXcGr2lmLDX3nkFlJLY0S+gNziP/A=; b=COmNY8XQt9/zJO
	hYJ0wmWh3ULNWBXRERcn07RfEfhdtsCTlXuxBaJZr+O0KGlVK/kejBzBdB1T+kPa0AowqZ++zjG8K
	RcHLvIIKRvGZX8uQJo7nB70/W9LUrD3qUsh0oEPAu1wIvjxVe0si9r8aQXGqoIHYWuiIRmrmWOM9U
	GXhMuf8MxgxuORX9G126O4k8ipf80nAO5gxicHfJu+Pyh1v1poEa7x1N8GnrBXZVE55sXtJoHa4E9
	n1aKsZfh8j+N3wq+p51yYXqBANNJWLTZ4nZTKjaMNTZwsDO0vYGmfHlZIS2vaVioWato8yNcewmYx
	bvBaU33RcxP6VPiC3KUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiwhT-0001UX-7W; Wed, 10 Jun 2020 09:07:11 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiwgu-0001DU-Gr; Wed, 10 Jun 2020 09:06:38 +0000
Received: by mail-wr1-x442.google.com with SMTP id c3so1327521wru.12;
 Wed, 10 Jun 2020 02:06:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hJE0N3sQWCYDZd2K2v2aUUyDKr9zLBCD5upNatqrvns=;
 b=jR8yqW9faRx6jDMBWUQM1MyeETZVp0RnCXVrTV5Pk8g6XuyfnGiWZ4NbZRovA3ynH6
 MmRNUuJt2ad8LZ48QSkOAoIShCgD/eAwqLG/VSduq9d0RAfWektR8fgdBAaKN8E5eK3A
 jOts4wfXb7yoI3bvsZsLXbSQqZxp3KaVGPhQslBFe9s3YK/xDHhFdtEthHFGLtgDprkm
 9DyKB85qz6h5INhtmYatqzEsWFbpnU3VwI+/SU8kC79j5O74k0g2z0cird/uNKY0fijr
 9COnJJ7FFrJs0xAgeM8o7YMlqfYUNZD1fnCxQp5fUXdY95Ws9aguIMEnOXXdZ53ft0Pq
 OzGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hJE0N3sQWCYDZd2K2v2aUUyDKr9zLBCD5upNatqrvns=;
 b=revU/OUUWQPPWy6dUA6UH9qgmQc/HcO3X6zmOI4uXURZcvlEy+KhWV8H9QMWE22+sy
 OJfUtviwPJJMZ30PgXOzXQNULM51sy5aZ/qKIyFZgOa8YExYQ551b4PEeR1Ys3EVv69F
 xBeuokcl6V08MzPIAyALuNv0zyIO93ytDp3AgJjuCKSSWijdhLRqtFy8FwpPpft3UDrZ
 qngIDy3VzdkM+uZ/OSO2liKL1pUbkf5iIC6cBYE5em4s7FRFyo8OzuUtrGKWRk5uANaN
 WTjQtdJFO+oW4xgyqFDTFOHaMJp3fPgpTzmZJ7+Gl/SzU0OOSBGAceK4Ve1CxEJ/58/f
 cSnw==
X-Gm-Message-State: AOAM532fZNpWaOQjh0IE5w7ard33eCOHnPg1YUFJ/nNYcWyfuCqdLiv6
 yfwZQJ5+Mr1TUj6Imt5gjJY=
X-Google-Smtp-Source: ABdhPJwaBPobM6YCEvv+1MJfH887E5h3N1Ogqek8oHI9rtfhwm7C3nS0RJAprmmT1qKM18Oz8Evyxw==
X-Received: by 2002:a5d:6150:: with SMTP id y16mr2648501wrt.219.1591779994792; 
 Wed, 10 Jun 2020 02:06:34 -0700 (PDT)
Received: from ubuntu-laptop ([2a01:598:b90a:8f5:dd1:7313:78f9:539b])
 by smtp.googlemail.com with ESMTPSA id b19sm6618937wmj.0.2020.06.10.02.06.31
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 10 Jun 2020 02:06:34 -0700 (PDT)
Message-ID: <bc93a1d6b38e993a606fec3078a6cad3f056041b.camel@gmail.com>
Subject: Re: [PATCH v1 1/2] scsi: ufs: Add DELAY_BEFORE_LPM quirk for Micron
 devices
From: Bean Huo <huobean@gmail.com>
To: Stanley Chu <stanley.chu@mediatek.com>, linux-scsi@vger.kernel.org, 
 martin.petersen@oracle.com, avri.altman@wdc.com, alim.akhtar@samsung.com, 
 jejb@linux.ibm.com, asutoshd@codeaurora.org
Date: Wed, 10 Jun 2020 11:06:26 +0200
In-Reply-To: <20200610053645.19975-2-stanley.chu@mediatek.com>
References: <20200610053645.19975-1-stanley.chu@mediatek.com>
 <20200610053645.19975-2-stanley.chu@mediatek.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_020636_777055_EDD3B6F5 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [huobean[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: bvanassche@acm.org, andy.teng@mediatek.com, cc.chou@mediatek.com,
 chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, chaotian.jing@mediatek.com,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2020-06-10 at 13:36 +0800, Stanley Chu wrote:
> It is confirmed that Micron device needs DELAY_BEFORE_LPM
> quirk to have a delay before VCC is powered off. So add Micron
> vendor ID and this quirk for Micron devices.
> 
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Bean Huo <beanhuo@micron.com>


Thanks,
Bean

> ---
>  drivers/scsi/ufs/ufs_quirks.h | 1 +
>  drivers/scsi/ufs/ufshcd.c     | 2 ++
>  2 files changed, 3 insertions(+)
> 
> diff --git a/drivers/scsi/ufs/ufs_quirks.h
> b/drivers/scsi/ufs/ufs_quirks.h
> index e3175a63c676..e80d5f26a442 100644
> --- a/drivers/scsi/ufs/ufs_quirks.h
> +++ b/drivers/scsi/ufs/ufs_quirks.h
> @@ -12,6 +12,7 @@
>  #define UFS_ANY_VENDOR 0xFFFF
>  #define UFS_ANY_MODEL  "ANY_MODEL"
>  
> +#define UFS_VENDOR_MICRON      0x12C
>  #define UFS_VENDOR_TOSHIBA     0x198
>  #define UFS_VENDOR_SAMSUNG     0x1CE
>  #define UFS_VENDOR_SKHYNIX     0x1AD
> diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
> index 04b79ca66fdf..dea4fddf9332 100644
> --- a/drivers/scsi/ufs/ufshcd.c
> +++ b/drivers/scsi/ufs/ufshcd.c
> @@ -216,6 +216,8 @@ ufs_get_desired_pm_lvl_for_dev_link_state(enum
> ufs_dev_pwr_mode dev_state,
>  
>  static struct ufs_dev_fix ufs_fixups[] = {
>  	/* UFS cards deviations table */
> +	UFS_FIX(UFS_VENDOR_MICRON, UFS_ANY_MODEL,
> +		UFS_DEVICE_QUIRK_DELAY_BEFORE_LPM),
>  	UFS_FIX(UFS_VENDOR_SAMSUNG, UFS_ANY_MODEL,
>  		UFS_DEVICE_QUIRK_DELAY_BEFORE_LPM),
>  	UFS_FIX(UFS_VENDOR_SAMSUNG, UFS_ANY_MODEL,
> -- 
> 2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
