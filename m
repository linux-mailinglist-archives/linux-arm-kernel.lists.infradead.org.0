Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C86BA789DC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 12:53:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HLiXmI1uiYTkSvKjO/hFfLAs7r6gbONqsOjzDX7QpKA=; b=lnYGh06sBgyxTC
	PfqgqxnlQGg61YiSyiMI8Oc+qPcEprWwbCN5rFHseU7LWhGcZOIQyCJStaefsw1quot24cmNRpgCY
	1TBKp2Rt92TbAKsUbNF4GftsRBC0vlS0JqEKVxWnLqvR7vb5iPDbZVBV9+jszH95NVMIhRl4StAjz
	+JHeK5oWMOGWGUNyXGV5EqOljfosaa/BDpbC/wc3rpX7BvkMgpd2oXJ+exVyU/KbW5mtQOaEx7Rtx
	2wdhPKijsaxU/244M3xrDQiIYvhO1QOaEfcVSRmWDn9ct6zWMDX+yY6YATdkBz6SGVH/8IuSE3qNT
	3r/6AUg0ysuFBOpNQQjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs3HE-0008Jc-D0; Mon, 29 Jul 2019 10:53:12 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs3H6-0008Hn-Dd
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 10:53:05 +0000
Received: by mail-wm1-x32c.google.com with SMTP id f17so53013634wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 03:53:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=AOLYj7vZFitbpFqErn7oWDZ99uADKiNehnmJGd1HBMQ=;
 b=nlRmEDq3Y+gorIJyMNrwNEssz/SMKtx/EbGSW+70sSXgCdPUXRRW4QFGNQHsrRjUHK
 yk5EhfB9I+l3OqcXJ6syW9AqVN+LZcjMiL0wfMXJmeaJwBw8oejQiKMoTz7TEw6O6FBD
 QBDIPtIRvfl6dXouSOlZuNHp9CEWKAJHrvL6tM/zsmkD+A/NkxTM9t5Ik/oe8pMn5I4F
 nIRTm4pXheok5sJZ3rwV/T5Xxx3GrySMKIK+d5JioDOucs7EFRHgGfXxJHzNiM/QmAv4
 xNR8HXqUjXERpIK8lMphDvUvO+f9oPuOdmpsj44RdUjxYrLGYHAN83FzDj0an1ZCSyUR
 L8Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=AOLYj7vZFitbpFqErn7oWDZ99uADKiNehnmJGd1HBMQ=;
 b=bCGNDRSlTVK8+fPYHg9w4ZXDYDC8PZjWE7w/iYPugSn8OjEcMiQWf/n/25jd/f0S3R
 p+dgTGS1bixrm5HffzLlIfIyoMBD6eVPZDKYWMjE4vwwE02Fjiq3pDKOj4Tv3n6BETth
 Lp5b3ou2qQDM6u0ePxy5raDZxRqE8Nfn90NjUvjNQ7ix93Kf9+BfhXtZOadbKCbS1rLf
 DrP5aRgSEekbhO3HyvFycpSiyERwBNWHwXZsi6Hi44xk21yzBnZlexbU6C+IEK7Sri78
 4iOVpLcCQBLuH1iOqhqrPxxRkBRKOeAaIQe2JK5jDMSJCgZ3IHf9v9JkRWc/bWM8dtfy
 m8rQ==
X-Gm-Message-State: APjAAAUKBo//2Vj5lh0ktC8A3/nQfInRPyljTKqXpzIXAqQBwfGP+fxj
 sdA4r5ODyDJzxCBf8YNWEbR1Qg==
X-Google-Smtp-Source: APXvYqxxAq1qeCj6RzXzLrMQuzQ7BjjgL2TJJi51jQeFJRGXJ36dozWZyeLAR3r9r7D1DIVGG85i8A==
X-Received: by 2002:a05:600c:23d2:: with SMTP id
 p18mr93454869wmb.160.1564397580031; 
 Mon, 29 Jul 2019 03:53:00 -0700 (PDT)
Received: from localhost ([2a01:e34:eeb6:4690:ecfa:1144:aa53:4a82])
 by smtp.gmail.com with ESMTPSA id d10sm50464699wrx.34.2019.07.29.03.52.59
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 29 Jul 2019 03:52:59 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Alexandre Mergnat <amergnat@baylibre.com>
Subject: Re: [PATCH v2] clk: meson: axg-audio: migrate to the new parent
 description method
In-Reply-To: <20190725164023.27855-1-amergnat@baylibre.com>
References: <20190725164023.27855-1-amergnat@baylibre.com>
Date: Mon, 29 Jul 2019 12:52:58 +0200
Message-ID: <1j5znl9kol.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_035304_460332_64B82C3E 
X-CRM114-Status: UNSURE (   7.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32c listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: narmstrong@baylibre.com, sboyd@kernel.org, khilman@baylibre.com,
 Alexandre Mergnat <amergnat@baylibre.com>, linux-kernel@vger.kernel.org,
 baylibre-upstreaming@groups.io, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu 25 Jul 2019 at 18:40, Alexandre Mergnat <amergnat@baylibre.com> wrote:
 
>  /* Audio Master Clocks */
> -static const char * const mst_mux_parent_names[] = {
> -	"aud_mst_in0", "aud_mst_in1", "aud_mst_in2", "aud_mst_in3",
> -	"aud_mst_in4", "aud_mst_in5", "aud_mst_in6", "aud_mst_in7",
> +static const struct clk_parent_data mst_mux_parent_data[] = {
> +	{ .fw_name = "mst_in0", },
> +	{ .fw_name = "mst_in1", },
> +	{ .fw_name = "mst_in2", },
> +	{ .fw_name = "mst_in3", },
> +	{ .fw_name = "mst_in4", },
> +	{ .fw_name = "mst_in5", },
> +	{ .fw_name = "mst_in6", },
> +	{ .fw_name = "mst_in7", },
>  };
>  
>  #define AUD_MST_MUX(_name, _reg, _flag)				\
>  	AUD_MUX(_name##_sel, _reg, 0x7, 24, _flag,		\
> -		mst_mux_parent_names, CLK_SET_RATE_PARENT)
> +		mst_mux_parent_data, CLK_SET_RATE_PARENT)

Actually, you should have dropped the CLK_SET_RATE_PARENT above.

Before, the rate propagation was stopped by the input clock but now,
there no such thing so the rate propagation must be stopped here.

It was almost impossible to know without testing audio, so fixed it
when applying the change.

Thanks for this rework !


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
