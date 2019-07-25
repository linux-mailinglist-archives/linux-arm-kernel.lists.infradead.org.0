Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6720A751C8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 16:50:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wved60r+gYyxvsecZXZirTMiCaEH+DZiebDzWLLqFWw=; b=AuhELbo1CtMlpr
	gBeDziwsoXYD3oNPE4ZXxobbyi1ncwOq4UI0Jqm42wVZNFUi3iJ8aQtsczDmlCBfTqTZW1UtZMaf3
	0ebEPIFl2ckUX1nbG8XYb1Q2gVmrRhXtQsqwdKifIasvzx42zkgIOi3+hipRRhiYQCxY/0u9Cw/4L
	NxzIRgZP64pPNdmEJ8Fs1Y9tDkg7qrOjMdVpMcqhPvxCwpbviilGU52KCLmjXXuSqhamRRHD/a6IV
	SSv+QMYE2ruiDdebWa//jEs8ba7O8q+hsJ72Yp7DHovXzom37LqyMzW9c7QjJjDNuRyguDqJuzfsw
	QjinrSn4soS+v5Lv/rYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqf4X-0007cK-0Q; Thu, 25 Jul 2019 14:50:21 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqf46-0007aN-By
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 14:49:55 +0000
Received: by mail-wm1-x343.google.com with SMTP id u25so34650948wmc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 07:49:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=3b3X8WfBqIW5LOW4V5TVp6ae4N5qP2OGB1HYZV9x7QM=;
 b=CYZF+istrGEAPBiAE0ogP75C5buboZkGqyOM5L/9I/3bnu/dHopK+cjGrEHepiV3O1
 dUVGk1Yy7Q9qNheRnqVKn48/a2KXDZytITvRzcqEuMieITUMWSIgvdJRQfn6gLPcgzS0
 13hYrFFuvaFvCRF+jdMAMNQ4/z8lZ5Yc7n5FRgMzaGaytfwK5AuN5YrwW0PmR+Wtxayj
 j47u0RHnSXMnk6ULmKR1KI1l1WQ94QMefCU+hXR8wr0f67iSfE3AYSCzjwXARHQFacIS
 bHbwD5rxoMiymF86Mg2rubifTzBXk3vUicbHfk81Gg1anQrVWpmTJsYpRtTIWX1NvUi5
 CGnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=3b3X8WfBqIW5LOW4V5TVp6ae4N5qP2OGB1HYZV9x7QM=;
 b=gE8+/upzqVN4fM3zoBx1qKyDsaDr2DwXWibafsI7tHfvqWEbwAWu21INOGg/3z5YE7
 +PoeWM/R4Ke9Cx7ggcCFzHYq17Qk90kU/mMzOqDRY5Kq0Uuo22ugsuCU2E9ZVSc+bTpu
 FcO5I2DMmokqjwFF9FtOex3Tle4xWaOwoHNWyl5rrAS0sppqV/0rSG7Sv8W8wDp/MZpP
 BfJQNNtEq6jLVkmcENM/eAcjjNKv8yDg7kjjtn5Yj04++nsQtbkRS5PUteUdGqIUNF4S
 sIHAwpY/BctrxO9XmPK0LKnWuNMOnQ1o9uIzm2Hcn16nbNgQFgcLYPLRPEmc+SPTV6hL
 ZD+w==
X-Gm-Message-State: APjAAAW0j8rprV953xb2oG10QQuHQVGKOTq9eFxKZ9QHvxTmJqUdM//V
 GJyoTueGoJc6+BYx1zNjpX5MWQ==
X-Google-Smtp-Source: APXvYqzIwsQJYuxzT5dWpKHmTvybHpnoxkfBrMYfdmTdr8KgCK9iYKnYda5Yubj39ML7jNr8yVrQ1A==
X-Received: by 2002:a05:600c:da:: with SMTP id
 u26mr77769552wmm.108.1564066193002; 
 Thu, 25 Jul 2019 07:49:53 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id c11sm85376061wrq.45.2019.07.25.07.49.52
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 25 Jul 2019 07:49:52 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Alexandre Mergnat <amergnat@baylibre.com>
Subject: Re: [PATCH 3/8] clk: meson: gxbb: migrate to the new parent
 description method
In-Reply-To: <20190722095425.14193-4-amergnat@baylibre.com>
References: <20190722095425.14193-1-amergnat@baylibre.com>
 <20190722095425.14193-4-amergnat@baylibre.com>
Date: Thu, 25 Jul 2019 16:49:51 +0200
Message-ID: <1j5znqxj74.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_074954_409948_0A6B0DA9 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Mon 22 Jul 2019 at 11:54, Alexandre Mergnat <amergnat@baylibre.com> wrote:


> @@ -1592,13 +1737,29 @@ static struct clk_regmap gxbb_vid_pll_div = {
>  	.hw.init = &(struct clk_init_data) {
>  		.name = "vid_pll_div",
>  		.ops = &meson_vid_pll_div_ro_ops,
> -		.parent_names = (const char *[]){ "hdmi_pll" },
> +		.parent_data = &(const struct clk_parent_data) {
> +			/*
> +			 * This clock is declared here for GXL and GXBB SoC, so
> +			 * we must use string name to set this parent to avoid
> +			 * pointer issue.
> +			 */

I don't really get the issue with this comment.

How about:

/*
 * Note:
 * gxl and gxbb have different hdmi_plls (with different struct clk_hw).
 * We fallback to the global naming string mechanism so vid_pll_div picks
 * up the appropriate one.
 */

> +			.name = "hdmi_pll",
> +			.index = -1,
> +		},
>  		.num_parents = 1,
>  		.flags = CLK_SET_RATE_PARENT | CLK_GET_RATE_NOCACHE,
>  	},
>  };

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
