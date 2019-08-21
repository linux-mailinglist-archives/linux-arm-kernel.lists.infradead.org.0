Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63C06985AA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 22:35:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GbWaOJ4EGoFX/7mrjOTuSsHuuKThl3caOVYj4YxsSnY=; b=ZGoAElcbigx0vj
	2asOGzMu9DME/rZC3SAULi1+MyfJe7RD6462ZJ2p+eDqNZp2P9zXgozPSDagBSRdGfsKSuXETCn26
	O3CYvgWVbfQqZXcH/fBrfCcUqMuP6Onit2x9gw6cqMu4AScBsiaydoXax0FoE0AaAOt+sZTtv9tV8
	0P59DwxntPWygt96cjt/5wyjUqfJ2WhAPC5iLxaSKDm51qx3O4lpCZ4QoGD7kb5N32YGYbWYOQc6n
	qZTi+DKhSU9p3ifT+qiPydptY8xLQLN//2oqaFGliV4Gu+QMri89mEuWn/56x76d529JFQ2TlKpYi
	3eMNqJdL00xrAzJxYFcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0XKK-00061S-Sz; Wed, 21 Aug 2019 20:35:28 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0XKD-00060v-3D
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 20:35:22 +0000
Received: by mail-oi1-f195.google.com with SMTP id v12so2629567oic.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 13:35:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=h2MDZ1JBql5nn79XJfoA+yrBiCUG11jsLb+GXd+rHrM=;
 b=UFowu2tpNYcsEwVGAPiRL33tjJ6+3y/tmMw+QSzXv1LnpL6cte4m0Nn6pPktcChRm8
 hhKLGNoiGafq0rfGdfWqFoFb3fbZF3bf7B3qK+/uSsJeH34SCjSCgeVbg8NB9zysvjFQ
 3wtc8Xs21TTbVTktjDw0jQYp5gdDX58haXXSO384Ok2nib3iX+irtRCZrm79RZ9X+HXh
 JUmhe4NHRkuw5+s+USxD5cpCFJaGW7JY6OdPeuJ+7RyP1lc/84rC1QRB+lB6kafPQFL4
 d3GkbC+VVLJTtGh8QPGjTWxK/xvR7CCpHTCSnf+FyrO/HfNpo4UnAM3pYmkS0+bwHCCg
 2jvg==
X-Gm-Message-State: APjAAAVDlnccW6HgavY78eh/ZxYlOXt9l+NdCa7391tu8haFLK1WUyhu
 Hm7krFYR1mlQSIUNOeQuKQ==
X-Google-Smtp-Source: APXvYqwILWH5tWD+Ejh/Q5e8CQ+0m5rPo0bGWRzfqOdxJnwtqq4DpPe/5Sg2e6S6WGL2EmpEOUmWpg==
X-Received: by 2002:aca:d650:: with SMTP id n77mr1414451oig.129.1566419720019; 
 Wed, 21 Aug 2019 13:35:20 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id r8sm7788484oti.76.2019.08.21.13.35.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 13:35:19 -0700 (PDT)
Date: Wed, 21 Aug 2019 15:35:18 -0500
From: Rob Herring <robh@kernel.org>
To: Kamil Konieczny <k.konieczny@partner.samsung.com>
Subject: Re: [RESEND PATCH v5 4/4] dt-bindings: devfreq: exynos-bus: remove
 unused property
Message-ID: <20190821203518.GA12770@bogus>
References: <20190808090234.12577-1-k.konieczny@partner.samsung.com>
 <CGME20190808090252eucas1p1be186b7a34fa75073fddca120c292f04@eucas1p1.samsung.com>
 <20190808090234.12577-5-k.konieczny@partner.samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190808090234.12577-5-k.konieczny@partner.samsung.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_133521_143216_0334F172 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, devicetree@vger.kernel.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 08, 2019 at 11:02:34AM +0200, Kamil Konieczny wrote:
> Remove unused DT property "exynos,voltage-tolerance".
> 
> Signed-off-by: Kamil Konieczny <k.konieczny@partner.samsung.com>
> Acked-by: Chanwoo Choi <cw00.choi@samsung.com>
> ---
>  Documentation/devicetree/bindings/devfreq/exynos-bus.txt | 2 --
>  1 file changed, 2 deletions(-)

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
