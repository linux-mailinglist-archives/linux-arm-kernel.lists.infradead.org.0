Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC9271951D5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 08:19:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jhwOeGL0ERaNMmg9pG+6JK26feaC1lE9A0ZyDHqwbJY=; b=Dqlx26pAHafz8R
	EVpwiQgDnZGEctdTd5FGoKXubS5AsrvDoDJcqItO9c9ExpBlXWNwPtv3wN2FPlh3x84ZN5w9k1rya
	rJH563AwrRlFlkWApcWgvMlWhmeI7sOtGbgXGLrnAXe7zJ/IvviUN0Usu2KOjPaCnh1LNEv+fP4r6
	pYZCz7pUWvEEw/G4p977e1HooLYbnv3q+pmUIVWnQhop+N1JdFB2IWW+8rZpFg1stqdd1tng/IaCu
	kwClT4QmFaSMjlIwOXETlFtQejRpVJYmVhRrMjAl5mZ6LGz9tN3vahSw256Ylhq/B62mGLzZFm4+q
	YwwTOKkBOebkHL4rSSMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHjH8-00052E-JQ; Fri, 27 Mar 2020 07:19:30 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHjGy-00051T-Js
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 07:19:22 +0000
Received: by mail-lf1-x142.google.com with SMTP id v4so6972111lfo.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 00:19:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8yD3/mZAPx4NyJAYvyAM42UOXEcrRRB02HlarcvJcpY=;
 b=cdU3jT5oe/H7QKTBQOhKMp9drgTOsgZe5NhZH3AgSZm3iIiqG7Mpdb7eiSi/aoXspU
 adDnKmgjnNQOPOlbHzzO67tuGNnmIIXVdvnZjQLsWvhaxncdd/E9LNTu0B8xituEt11S
 im4peLookDERzMUR0/fJILym8NflyDU2H23CU1F2sEboZO0GzyBnSX7Sw58NmW1eoFRz
 QmjqAIIJ9eQ8gHc/xFj9sQsbaUodlZeNkmUP/NtCyr8IOePkWyk2t1k8IYPAE5lUA9Un
 TRQsPtLWtJUdSDAhud+rUIempEHW9rwXfg91DpI/kpwYm00hGRzm7ZMusZ+CVcF3VjUC
 zW8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8yD3/mZAPx4NyJAYvyAM42UOXEcrRRB02HlarcvJcpY=;
 b=kqaB8t280sO67YxiN0YKtxzlVzBaTtrn+uY6xMviUxKux4chVSFtbr3nzg1NJENQIp
 H1KPHwzDpatXTjR6QQYaX5yUNSWZxMOSoO5VH+uoqqsRuayckQIMZQCp42olrwM8i/P+
 0nmJBzZQJ4/LsE1+WaSJq3qAbq6kvpprskkn2cmxkq5ay33SFOuGGZsREhh+K3JW2z1s
 EiPELMIuZgST80Zm5/AEOu5QfolBjGItZxXjhy60Z35Fo4ZS+TPUlTj6QM+Ou0OwNUgV
 Yj8Au0ZMKQCIaHulQ3d5UJdGw48y8vZHfMBo6lFDqte91N12QlV9iGmLpIQpwPdRoD9M
 53Kg==
X-Gm-Message-State: ANhLgQ2RaZydt8oEjkC/Umo3KM9bwI+/acPlyTkTPZKUe0nbKzIWb3bw
 18MH0Vxxei3yFupIusP1cKopZmsdWiC4PcVIuHTGEg==
X-Google-Smtp-Source: ADFU+vsVleHzR2OlQgFnip8JwdTpgtyxbozUTC6A2rWBZO45SHy2RsvKY2E8cSZkDmSqmkfRqCMidvfUsGCh9kDJWeQ=
X-Received: by 2002:ac2:53b2:: with SMTP id j18mr8178328lfh.206.1585293557144; 
 Fri, 27 Mar 2020 00:19:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200326182742.487026-1-enric.balletbo@collabora.com>
In-Reply-To: <20200326182742.487026-1-enric.balletbo@collabora.com>
From: Anders Roxell <anders.roxell@linaro.org>
Date: Fri, 27 Mar 2020 08:19:06 +0100
Message-ID: <CADYN=9Kd-eWAFaN-ttX+Aq5HyH2AiUfqeCRC1mMTZM93DBshsA@mail.gmail.com>
Subject: Re: [PATCH] soc: mediatek: mtk-mmsys: Export ddp_dis/connect symbols
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_001920_794725_C6A67D57 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: drinkcat@chromium.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-mediatek@lists.infradead.org, hsinyi@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Collabora Kernel ML <kernel@collabora.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 26 Mar 2020 at 19:27, Enric Balletbo i Serra
<enric.balletbo@collabora.com> wrote:
>
> When building on arm64 with allmodconfig or CONFIG_DRM_MEDIATEK=m we see
> the following error.
>
>   ERROR: modpost: "mtk_mmsys_ddp_disconnect"
>   [drivers/gpu/drm/mediatek/mediatek-drm.ko] undefined!
>   ERROR: modpost: "mtk_mmsys_ddp_connect"
>   [drivers/gpu/drm/mediatek/mediatek-drm.ko] undefined!
>
> Export mtk_mmsys_ddp_connect and mtk_mmsys_ddp_disconnect symbols to be
> able to be used for other modules.
>
> Fixes: 396c3fccaf03 ("soc / drm: mediatek: Move routing control to mmsys device")
> Reported-by: Anders Roxell <anders.roxell@linaro.org>
> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>

Tested-by: Anders Roxell <anders.roxell@linaro.org>

Cheers,
Anders

> ---
>
>  drivers/soc/mediatek/mtk-mmsys.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/soc/mediatek/mtk-mmsys.c b/drivers/soc/mediatek/mtk-mmsys.c
> index 32a92ec447c5..05e322c9c301 100644
> --- a/drivers/soc/mediatek/mtk-mmsys.c
> +++ b/drivers/soc/mediatek/mtk-mmsys.c
> @@ -259,6 +259,7 @@ void mtk_mmsys_ddp_connect(struct device *dev,
>                 writel_relaxed(reg, config_regs + addr);
>         }
>  }
> +EXPORT_SYMBOL_GPL(mtk_mmsys_ddp_connect);
>
>  void mtk_mmsys_ddp_disconnect(struct device *dev,
>                               enum mtk_ddp_comp_id cur,
> @@ -279,6 +280,7 @@ void mtk_mmsys_ddp_disconnect(struct device *dev,
>                 writel_relaxed(reg, config_regs + addr);
>         }
>  }
> +EXPORT_SYMBOL_GPL(mtk_mmsys_ddp_disconnect);
>
>  static int mtk_mmsys_probe(struct platform_device *pdev)
>  {
> --
> 2.25.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
