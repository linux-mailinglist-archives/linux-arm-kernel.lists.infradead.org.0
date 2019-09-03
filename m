Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E2D9A5F9E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 05:22:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0toYgKasP8i3rod3EfQT5Z0ntaEVCjOcSJ3kCcSUtDE=; b=guUBFfm6G9KrwY
	bGh/pIq7MO06dCetAKnR1KtC38GNlcGYbA4EZyFAFxfpoXbBxTfJYiGJSlE3B69McplDxh8uV6XrQ
	t+K3VGCRDmuhjX6IrsbDnQUoHt7DsNgZ5tL55Yqlnm3zqDelDFJ4KM7T7oBmEOVoqumN9kmx5ZYkN
	gZiZgAngIyxOg/0N2ejmHApFlhxtGWwoSmAgPoCnTCeNIsG2ebzm+qmJMSFoIxOWn8jCjzkjuxfUT
	f6U6ZaF0Tv0hEe/Eq6G1/Th3jOUZ72NvWyZK1qdEZ7Ably1KerewBusDvB3NndfA3T7VNYDQPZbQl
	+iJrjsTnmGKp7yxHm/Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4zOs-0007Xg-8x; Tue, 03 Sep 2019 03:22:34 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4zOc-0007Wc-UP
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 03:22:20 +0000
Received: by mail-pg1-x543.google.com with SMTP id l21so8318819pgm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 20:22:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=C5xifJz6MrO6nz3FslQLOA1AK7POvdFVk/nrprJjlLs=;
 b=hzzlGt3VPY9MI79fgkmOFtXWQRrnPdYCLKbZqGO43YHSHmw7NE6GMjchqVOAsvCOPx
 JqNqakKR/gtui26JyGJguAnupphI6I5hrmYf+34IllOSFUAcoURMGsrqoqwN4ujNNae9
 1wDHeNLNGXL+wBw//6l7S1fGJIrniuVCrDNNN9/8cr4Kwr45aprAnFZhcduSmrUH6OVT
 rfCh5/+opQUOoGSSfaqWaH/lKuWQZvzBS3g+Xte0n+E60nkrfEo6+qqqPFr3kS/uMgEW
 cTwOs9RDVVCIBAt8lQkgkyYQPGBTIJ/8HwXpYvn+rsf1NBYMmKakFFTZDj6mAriG9a/o
 AZgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=C5xifJz6MrO6nz3FslQLOA1AK7POvdFVk/nrprJjlLs=;
 b=ES0/gSHRlWoOBFOLKFBJqwJ32CzVL5B+69C5LTkKQF+J14wBG+wBh1DEtXVBF5s/j+
 n85qmqbtRyBPBmwhHXPeE8tQKh/f641uv2iFOcjc6pkg1rYqiw6KK3IYETv0VIXltH+j
 07UFtgQJxw0H2bMy9KMjDqKjdBsSK9YmW3SZY9+8CjbAmLIWdAjurjKxFdQes4+x/4e7
 xe0eTw7TRVm6mbX9g7xxLKMpJhfgCeP5lVLDEO1sji9ae3uQnsriiFDskIQiz+84Uj/d
 YNczlX0dIE6Y/tG335t8sIG/Vhp9XuXI1nfubh/zwvkW8+vunQFA8Fg+ZdHB9v7ai+DX
 e/uA==
X-Gm-Message-State: APjAAAWff+oaiiJI4QK8eJrTnVK+s8yfOndM15LgW3A+eCnvk5D5g9sj
 cml1xkQ+GpE37vht5ivWhlkSxw==
X-Google-Smtp-Source: APXvYqyxTsTf/DMN8g/gI1+80oPnZJl+iqDtLbGop7zzBOTpAboJep3KFSYOKyiRzAeTux4afDVEjA==
X-Received: by 2002:a63:6244:: with SMTP id w65mr14014871pgb.410.1567480938270; 
 Mon, 02 Sep 2019 20:22:18 -0700 (PDT)
Received: from minitux (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id j2sm292826pfe.130.2019.09.02.20.22.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Sep 2019 20:22:17 -0700 (PDT)
Date: Mon, 2 Sep 2019 20:22:15 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH 2/3] arm64: defconfig: Enable the EFI Framebuffer
Message-ID: <20190903032215.GT6167@minitux>
References: <20190902130724.12030-1-lee.jones@linaro.org>
 <20190902130724.12030-2-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190902130724.12030-2-lee.jones@linaro.org>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_202218_994506_E67990C6 
X-CRM114-Status: GOOD (  14.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: arnd@arndb.de, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 olof@lixom.net, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon 02 Sep 06:07 PDT 2019, Lee Jones wrote:

> Tested on the Lenovo Yoga C630 where this patch enables the
> framebuffer (screen/monitor).  Without it the device appears
> not to boot.
> 
> Signed-off-by: Lee Jones <lee.jones@linaro.org>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 0fe943ac53b5..af7ca722b519 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -540,6 +540,7 @@ CONFIG_DRM_LIMA=m
>  CONFIG_DRM_PANFROST=m
>  CONFIG_FB=y
>  CONFIG_FB_MODE_HELPERS=y
> +CONFIG_FB_EFI=y
>  CONFIG_BACKLIGHT_GENERIC=m
>  CONFIG_BACKLIGHT_PWM=m
>  CONFIG_BACKLIGHT_LP855X=m
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
