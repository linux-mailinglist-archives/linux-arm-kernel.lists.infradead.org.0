Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6502A5F9F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 05:23:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mu6DjNlp7YmIvfL9Wt5ORMfyt8MRglKy5j/hBThnbjE=; b=UN9J2Jh4vQ4tML
	0mCIASeISPGXVXMcdStk23KgZ6BsQUUSx7WRhswnuT2Bzp1MGOIfxXDhQ1HiltWNej28Pi7oLo4tZ
	YKw2ltVmNExAimLA6VFGz6i3WDmzzwXssEFv1XsPKPyPp8M54EqYzF/oZX07okrwKQxNpwpBCIrsB
	j5NinxEQ7F/PgkEFHSjaxHpMbuQ5IZNm048phSSREHU7N+UWiEJNypUSJrYzpPIp9hnt8vSRT3Gta
	vTqrkTh6nniidhOP95K8Ubc7XNgcg5OHvX5RgKkdhkyy3e/f28a6HBXIf/hwgl/pVKPSINkv9J81+
	lggW8ZaTCy24vLlRxuJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4zPB-0007lv-N7; Tue, 03 Sep 2019 03:22:53 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4zOv-0007kY-Pf
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 03:22:39 +0000
Received: by mail-pl1-x643.google.com with SMTP id y10so1342247pll.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 20:22:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=jRZjBMyGv80xAQC7s33gam9Ckf3o8Pfle8efSqPMXgw=;
 b=f6GrosI0QIkCUKNeMhcqlSO4/8rCTMIn4OR0fcybLTac9ENK7suUAHJ4jfqzBd+NhT
 eWRWviXByZB7JQbqM/CrsjHbu0L+Xl+Me67c0/U8STdPBMr751awGiyGwpRAfMgjaWfv
 DiScNMgn8gRZXTSItfmOEoGKc/tki45ht/0vV0+uQc0DXTIiJ7AOrCTBF4VicQTbZVW+
 9Go9v0Hu0+BJgwnECe1AXJ6jcntj24PQn8BBJxX3iZws/uXflQcS20vLfsZTRmngVPc7
 E0AhU0YJYiAjApwioQTTtcBG0mLXskyVC8OnyuizAmNyP2IYG1dbdJOwZL9lnDExXtR9
 6NoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=jRZjBMyGv80xAQC7s33gam9Ckf3o8Pfle8efSqPMXgw=;
 b=KQI/qWg5s6rM/zRL0OgTdAr4dE4b/1QOXiTt2f3/Q7l+cCd4+40tbLyZXD6xa+d4CE
 o3Q/9S1xAqy1e5LmqS7bHirP/jufmkwkf87UDz6btFz/gyTMvzwJ8qCUah1ieQ/D5ddo
 w2ZkwfyAOIcOGz7moQ92InBzCibYA14Ko4kGbZeuPpE8Y/kqD/d9ptnSOFK1fjsyF4Uv
 0EtnO8F2apT9LWhKXpOIaAlt1DQevvSHIphDVb0iq495/2ib4M1Y6xiKa/pG7OUK4B8j
 e3n7aAI4EB8w1HQe89NAKjWguGeIAYfyxtvtbb1NCZ5j4JWcFAmVY8hJXdIbVXQOBiDY
 qrZw==
X-Gm-Message-State: APjAAAUHaQvM6RGDL2jxXJ8SfN+VrlGUmbk8xfOozQelhBgbYg+ZMRQG
 kducvaKY8A2Bl4DUnF+gWNH9XA==
X-Google-Smtp-Source: APXvYqwVw+D1Itw5DwUiGmgA/MHAj1uXcwQjCWqKXTRuwWUOS4waChIRinNTMSG/lnWRGWR5Hvo6bA==
X-Received: by 2002:a17:902:31a4:: with SMTP id
 x33mr33259889plb.68.1567480957176; 
 Mon, 02 Sep 2019 20:22:37 -0700 (PDT)
Received: from minitux (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id x10sm13072767pjo.4.2019.09.02.20.22.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Sep 2019 20:22:36 -0700 (PDT)
Date: Mon, 2 Sep 2019 20:22:34 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH 3/3] arm64: defconfig: Enable Qualcomm QUSB2 PHY
Message-ID: <20190903032234.GU6167@minitux>
References: <20190902130724.12030-1-lee.jones@linaro.org>
 <20190902130724.12030-3-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190902130724.12030-3-lee.jones@linaro.org>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_202237_846255_6C63290F 
X-CRM114-Status: GOOD (  14.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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

> Tested on the Lenovo Yoga C630 where this patch enables USB.
> Without it USB devices are not enumerated.
> 
> Signed-off-by: Lee Jones <lee.jones@linaro.org>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index af7ca722b519..a94d002182ee 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -770,6 +770,7 @@ CONFIG_PHY_HISTB_COMBPHY=y
>  CONFIG_PHY_HISI_INNO_USB2=y
>  CONFIG_PHY_MVEBU_CP110_COMPHY=y
>  CONFIG_PHY_QCOM_QMP=m
> +CONFIG_PHY_QCOM_QUSB2=m
>  CONFIG_PHY_QCOM_USB_HS=y
>  CONFIG_PHY_RCAR_GEN3_PCIE=y
>  CONFIG_PHY_RCAR_GEN3_USB2=y
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
