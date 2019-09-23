Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69872BB13C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 11:18:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6wADLwFRNAvjOvTXgreouWE5q17RDVGuPsjsbQdSD9Q=; b=doGYYfiSc3E+f4
	CqYniWza84Q/9bmmed1vFBZ12btMm1BuEvBtyM0eYbOHu8hLxl2Uv1kD5TAcTX1gGdVqioGliDke3
	uJ2Dpug6HrzFj9NgrTuV9ZHqXKkoMSzN8hWUDWXPuUaQweKKQZ89+ZjjyzsCb83v/63bU9optComa
	JKzgpBa4O93SG2LG3T0wX1/pt1uA/z4GHrms3zkJz2AyD9ZhI2hvB9cxop4+X6mglYm8g1RBRw7Xw
	bZMlvbscrywEFXcx8IpOD24ahAkPjfKQTAJTCJTrOw3+k7+i7zjhMtjsxSmgB8nSqQuBArtxbUv4x
	i7n1juLoaUP2uXE7bXJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCKTx-0002dt-UV; Mon, 23 Sep 2019 09:18:10 +0000
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCKTf-0002dH-3Y
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 09:17:52 +0000
Received: by mail-wr1-f65.google.com with SMTP id o18so13005131wrv.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 02:17:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MqnEXcdlN87EqTUKJmOH+iKlmaz8lFCv3VuvTRPKNYg=;
 b=msh/V7FXUEyBBG13tJZOqpvumUcEBKSjnV2kwkj16350Mm8yg0UWSKbo9hqndIPMCX
 j5UaBpCa31770gPWnCr7SwME1Lj+WRB1A8PQ/YQf4aGrFf+t6EvKeDt79C3nBlZs6NOd
 zkIlHkNqLkeHpeFMh0mObbJR9EIYAolCIvZQKhGydh8D8/dDOtFJevufnByZgQJa8T/R
 Cnyhu5uoJ1LmFDj4ms+05+J6goUXgv+ZY+HlDwjku7PwIRmCNheC1cRDtH36Q8GedPAa
 Ts2DRQyL6KbY2EKwWogWgD0EdZk9yeATjyMWpCS7tTWasr0/JBTInGVB52/77vDcDloF
 XUMA==
X-Gm-Message-State: APjAAAXSp2K3zHDWbzTzB4rC/qUPsFR8lDqEEZSwyL0JsuRi5Kd6k6Rg
 jXXbQ8XkdQp+DwPXMzLC68g=
X-Google-Smtp-Source: APXvYqyX2jsTQWCdkodTgpoobxQ2dq01kENJEKFTxZS+dJ/vtJUB1wHtTZ9GqHaa13+NkGl3qyyvLg==
X-Received: by 2002:a05:6000:14b:: with SMTP id
 r11mr1293264wrx.58.1569230269807; 
 Mon, 23 Sep 2019 02:17:49 -0700 (PDT)
Received: from pi3 ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id y13sm13602712wrg.8.2019.09.23.02.17.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2019 02:17:48 -0700 (PDT)
Date: Mon, 23 Sep 2019 11:17:46 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH v2 08/10] ASoC: samsung: Rename Arndale card driver
Message-ID: <20190923091746.GD4577@pi3>
References: <20190920130218.32690-1-s.nawrocki@samsung.com>
 <CGME20190920130323eucas1p218c6822eca3869eb0d3b7380497bbca4@eucas1p2.samsung.com>
 <20190920130218.32690-9-s.nawrocki@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190920130218.32690-9-s.nawrocki@samsung.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_021751_148571_94FB2EBC 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.65 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-samsung-soc@vger.kernel.org, ckeepax@opensource.cirrus.com,
 b.zolnierkie@samsung.com, sbkim73@samsung.com, patches@opensource.cirrus.com,
 lgirdwood@gmail.com, robh+dt@kernel.org, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 20, 2019 at 03:02:17PM +0200, Sylwester Nawrocki wrote:
> Rename arndale_rt5631.c to just arnddale.c as we support other CODECs
> than RT5631.  While at it replace spaces in Kconfig with tabs.
> 
> Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
> ---
> Changes since v1:
>  - new patch.
> ---
>  sound/soc/samsung/Kconfig                         | 10 +++++-----
>  sound/soc/samsung/Makefile                        |  4 ++--
>  sound/soc/samsung/{arndale_rt5631.c => arndale.c} |  0
>  3 files changed, 7 insertions(+), 7 deletions(-)
>  rename sound/soc/samsung/{arndale_rt5631.c => arndale.c} (100%)

Acked-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
