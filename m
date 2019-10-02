Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BC71C8B2B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 16:27:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fJKE8kMHtZ2/HUHrrHvijv0jUhBYT9nZPWJkuXI/UIU=; b=r26as+VgBl8KQP
	ebdz+tR9O25TgbjL12x5v+wYRKcxrHud7ddOqOFKEGff9R5q4lXyQ2pgkehp/k6lU+h73pXSw//+I
	Vm5ExQ83qPCY1GTUPjLmayVheig2AcLq9hkWqu5xZmpaHgw04A46Q3+HS3ELMye2CSTu2shfzLXcQ
	N8GecFCgh3iFliI755Evsg05qX60ypDYRzI+gS59kmYlxGUVfQdkHFmTxax0O3zcJbnqMmG3rxW2C
	oD28ooJkx3vUSXRft1xgCVe6v2BDgYB0gq1ao2FHAry/I3XPxdZ3E55DOvFoVRVEtqHan0KfQQ7/f
	6zqIxELwppbJ5CLZ+cRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFfb5-00060U-73; Wed, 02 Oct 2019 14:27:19 +0000
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFfaw-0005zZ-QC
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 14:27:13 +0000
Received: by mail-wm1-f65.google.com with SMTP id p7so7449666wmp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 07:27:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=uObNUHqWJewvYqHBCnMGF7TkZjRFqm/2PPATnntgxrY=;
 b=aPwoaaFMoEM1exEvCW4mm5UbaTPjyAdHpy12Oyc21iMwk76N/btCrk+1t4Ga7ctqjL
 ZV+BRfQrtYucrgzF2nIU4hKBbXEJBOD8kXEDoTV9vjc3nvfmep6qAEiq0nEpdWgIf0hG
 T89tZZL2qqyHYQ5eXpNEM5LyRWBYF98/q9g8Ijv2vDBPelbRQw9atre6xTzzIpy/RWqh
 Hscvfi2CtyCIu1uEvE+Aes9xtrOgvMDkoeyzw1W8t7dW7Jyq907eLLpvLfpgTTubnQc7
 G45ecNXKut19h4XtQDM0Rv6dzzokamj0wqoxfyQqgo0SDm4wDRbTAg4ea9XT8FtPCq8B
 qdtw==
X-Gm-Message-State: APjAAAUFrooqnzcROJWrfaPAU17PPQEIt7GtEdLUI8WPQpVantRBrAmv
 KcEZfL/zUGhInffEhXVZN3Y=
X-Google-Smtp-Source: APXvYqysX7HSYX87cRrnR2+oscG/k3IGiCv5SJ8a7cJKlBjiDbbsPBGuHSOfaCiO5IvNEEqeSzk9Nw==
X-Received: by 2002:a1c:a7d2:: with SMTP id q201mr3036457wme.146.1570026428477; 
 Wed, 02 Oct 2019 07:27:08 -0700 (PDT)
Received: from pi3 ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id u10sm37896458wrg.55.2019.10.02.07.27.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Oct 2019 07:27:07 -0700 (PDT)
Date: Wed, 2 Oct 2019 16:27:04 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kamil Konieczny <k.konieczny@partner.samsung.com>
Subject: Re: [RESEND PATCH v5 3/4] ARM: dts: exynos: add initial data for
 coupled regulators for Exynos5422/5800
Message-ID: <20191002142704.GA15827@pi3>
References: <20190808090234.12577-1-k.konieczny@partner.samsung.com>
 <CGME20190808090252eucas1p2afec3e288965bb7e7aa6f96f67686273@eucas1p2.samsung.com>
 <20190808090234.12577-4-k.konieczny@partner.samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190808090234.12577-4-k.konieczny@partner.samsung.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_072712_046066_F1A032B5 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.65 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Stephen Boyd <sboyd@kernel.org>, Viresh Kumar <vireshk@kernel.org>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, devicetree@vger.kernel.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 08, 2019 at 11:02:33AM +0200, Kamil Konieczny wrote:
> From: Marek Szyprowski <m.szyprowski@samsung.com>
> 
> Declare Exynos5422/5800 voltage ranges for opp points for big cpu core and
> bus wcore and couple their voltage supllies as vdd_arm and vdd_int should
> be in 300mV range.
> 
> Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
> [k.konieczny: add missing patch description]
> Signed-off-by: Kamil Konieczny <k.konieczny@partner.samsung.com>
> Reviewed-by: Chanwoo Choi <cw00.choi@samsung.com>

The bindings were acked. Can I pick it up?

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
