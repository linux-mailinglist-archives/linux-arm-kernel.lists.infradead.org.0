Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06FED113909
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 01:57:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=odAO/JltxmWVnL9oa5klYD5wkFD8e0Gf/YisOKFpXf0=; b=dRjhtucj5NaNNv
	ljIgnsdlXvBTW/MFMQnVZ5SIgV4VIQhYHhKRhHjed5zkmOrEq3lQoXgsPTiB1OzSTJka2bWk2/5VR
	3aHAOdu2FUgQLbRc5HGNim09fn36vzr4EK3omDPzi5tTL+wO6JMd5kTlaJjqtE7Jqt9VlJQNgdl8o
	qNoEyJMXTfPOGLEcCzIsR8AdvFn4c38tVVNzBsuZofSXwcESTW531NmwB7nzAHtgdbOv1y3VNht6/
	SFxBV8iWzgfLvkx66XJA1UYMFlUHLIczVZo9E7EAq/GXUjg9A+9xxpo7bqvav3eOZp+AfyICt8iI9
	im+DlOBjgN04lusraNbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icfRx-0005Io-FO; Thu, 05 Dec 2019 00:56:57 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icfRp-0005IE-Tx
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 00:56:51 +0000
Received: by mail-pj1-x1041.google.com with SMTP id ep17so542311pjb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 16:56:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=mkK1VbYU8pd8d1R2HwKoX7wARdH4Fdf+a3nqX6mf/A8=;
 b=dbEieWkwvw6WZSpP1x7bC4rsOw5teKRhgEYI1EgQL8Mw6TV1DHWZ3AHvhig8Gj59sY
 LYWUeilhVAielBO2XpkLLJrj/SG4ZABZgXwVppbT3ok1163wByjsemU6rq5Wqu02BFj8
 mQWIyIKJUuY1CwGc+0KWD6po2054VL91TfDls=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mkK1VbYU8pd8d1R2HwKoX7wARdH4Fdf+a3nqX6mf/A8=;
 b=WjpEy8yRFjtStsQPmtH98ir/f/l9poLoQkf3Z2z4TD3QFWYGxwCwVak4HRxSUePrD/
 wjdg3vJ7oBBHbH4zqwZrC40WU9YxRJWNXD6itcn/Bb6w6qzEboOILj+WnU0awmVz4qlj
 Lq6C48HQcLB06QaMtPU0uC31U9O2RiIkTw5IrtfZ/FfR3h+RerhQxyf9pddIOhpSNM24
 j8TiKp1c91fdwRs0eMSNulDoMxFwFKHnxYYM1vcCBj44NFmjfnOT7/zGMhhERblncFW9
 j3ahKDN0VfS2uGXI8p2yBnemvWXBmRIVs3CnzadCrbtlWMhY/werQJuVZmPaNNa14CQF
 w6cA==
X-Gm-Message-State: APjAAAXBj1JwXDBN+j87WkaSvrtMiZrNDDws0eeglkaAMi6C76TlgAmv
 h09sZ42mQBrjDDtkUzRXoPkgqw==
X-Google-Smtp-Source: APXvYqxJ0zxJwZ22BShddeCBPYuInYIfGJ/UwK80td0CdFHYrbpSKP7c3zsMboM8VVVoF2a9Ix3HZw==
X-Received: by 2002:a17:90a:b009:: with SMTP id
 x9mr6338021pjq.124.1575507408713; 
 Wed, 04 Dec 2019 16:56:48 -0800 (PST)
Received: from localhost ([2620:15c:202:1:4fff:7a6b:a335:8fde])
 by smtp.gmail.com with ESMTPSA id u1sm9151663pfn.133.2019.12.04.16.56.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 04 Dec 2019 16:56:48 -0800 (PST)
Date: Wed, 4 Dec 2019 16:56:46 -0800
From: Matthias Kaehlcke <mka@chromium.org>
To: Rakesh Pillai <pillair@codeaurora.org>
Subject: Re: [PATCH] arm64: dts: qcom: sc7180: Make MSA memory fixed for wifi
Message-ID: <20191205005646.GL228856@google.com>
References: <0101016ed035d185-20f04863-0f38-41b7-b88d-76bc36e4dcf9-000000@us-west-2.amazonses.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0101016ed035d185-20f04863-0f38-41b7-b88d-76bc36e4dcf9-000000@us-west-2.amazonses.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_165649_991027_C4214044 
X-CRM114-Status: GOOD (  17.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 04, 2019 at 09:20:18AM +0000, Rakesh Pillai wrote:

> arm64: dts: qcom: sc7180: Make MSA memory fixed for wifi

This is not really done for sc7180, but only for the sc7180-idp,
which should be reflected in the subject (i.e. s/sc7180/sc7180-idp/)

> The MSA memory is at a fixed offset, which will be
> a part of reserved memory. Add this flag to indicate
> that wifi in sc7180 will use a fixed memory for MSA.

ditto, say it's the IDP

> Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
> ---
> This patchet is dependent on the below changes
> arm64: dts: qcom: sc7180: Add WCN3990 WLAN module device node (https://lore.kernel.org/patchwork/patch/1162434/)
> dt: bindings: add dt entry flag to skip SCM call for msa region (https://patchwork.ozlabs.org/patch/1192725/)
> ---
>  arch/arm64/boot/dts/qcom/sc7180-idp.dts | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7180-idp.dts b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> index 8a6a760..b2ca143f 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> +++ b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> @@ -250,6 +250,7 @@
>  
>  &wifi {
>  	status = "okay";
> +	qcom,msa_fixed_perm;
>  };
>  
>  /* PINCTRL - additions to nodes defined in sc7180.dtsi */
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
