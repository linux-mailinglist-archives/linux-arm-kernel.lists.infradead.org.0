Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BB05C900B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 19:38:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VOqloPdSZ4cuBJc1+JbbluTtsPhOCdgviQHzxByAows=; b=lTNdbgMt9SjKfQ
	ExniZIvSJGx2WnwLVl6Eom6438sbaGkauW6TgHxrRfKLNKVo2unZ9ufJJ/koYx1I8mnZ+1D7Ai9gE
	rmfcMskU4nQ0vb/jT854lOTrFQL6KDB/g3WZPP2A0BvKZydm0PA3fDZDxJPokOlSt7Yqr/SGGSLBd
	+9GTdBagBG2d28ZjW/kLJVnww08pVOF4pILYibJzsVd1a5vKaQr06Hqzgqzx7JsJS8eJJk5FQAymL
	1md9P/ypCzU9K8HsR5jvzB8NZPkm3vXB4ml74+k+27PnVsZcezjx/q1ZiiyM8TfNkGpMLcwnXKEx8
	nBroi3RN6l8swiATVPfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFia2-0000uG-IY; Wed, 02 Oct 2019 17:38:26 +0000
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFiZv-0000tk-Uv
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 17:38:21 +0000
Received: by mail-wr1-f65.google.com with SMTP id y19so6333wrd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 10:38:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=YTmH8EafQxbdYgDMckejIA27/8MmwdAdTeYHGHhQuPA=;
 b=OKlNQ/0GGSHY9PLWNjJ1HuU34ybuG/zYj88dFbQJ57DWDDLXyEivABUIM7BY/e9VLg
 YY5cSLjClvFz44mm4YESz902nHS515ReIDyuutFWuOhynAgV1UZrZwjtfS7Hw/+Puc6s
 +g33zzcPk39wtUMdJN2iNByD75mFj34v8BxYHpRk37ztymTiE62vVB9m9w6nVgH4AxUg
 zCnuNoGa5ezcJA9s2hs3fFEIFGsPE2rkKE6JUHVml2XWNMKdBDs4MSjzfblnlf1DvpT/
 ae12eJvdV9ehnsYBNRs4jGFIb+rodDdx+HZtLjsDWD47PoBP0QjUHvhaJM50rX4vZBA+
 sEsQ==
X-Gm-Message-State: APjAAAX8/+oRUdCvHc/bFkevhCHkh9/nVLyL1iE6dleN9a0xu8NVbeTo
 61kz6hCyia589pP9hCVwSeg=
X-Google-Smtp-Source: APXvYqylJhVMEK3ifyltGwEzTf9OuJVwke1QEVnvk2FVIatTz4vfsE+ISc2rNCBhpXG9RhGqGRoxkQ==
X-Received: by 2002:adf:fe92:: with SMTP id l18mr3630971wrr.369.1570037898167; 
 Wed, 02 Oct 2019 10:38:18 -0700 (PDT)
Received: from kozik-lap ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id q66sm6742037wme.39.2019.10.02.10.38.16
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 02 Oct 2019 10:38:17 -0700 (PDT)
Date: Wed, 2 Oct 2019 19:38:14 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Lukasz Luba <l.luba@partner.samsung.com>
Subject: Re: [PATCH v3 4/4] memory: samsung: exynos5422-dmc: Add support for
 interrupt from performance counters
Message-ID: <20191002173814.GF21463@kozik-lap>
References: <20191002060455.3834-1-l.luba@partner.samsung.com>
 <CGME20191002060507eucas1p169394dec59f010e112eb38d83e3fb8ba@eucas1p1.samsung.com>
 <20191002060455.3834-5-l.luba@partner.samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002060455.3834-5-l.luba@partner.samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_103819_994803_FFCAD19A 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 willy.mh.wolff.ml@gmail.com, linux-samsung-soc@vger.kernel.org,
 b.zolnierkie@samsung.com, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, cw00.choi@samsung.com,
 kyungmin.park@samsung.com, kgene@kernel.org, myungjoo.ham@samsung.com,
 s.nawrocki@samsung.com, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 02, 2019 at 08:04:55AM +0200, Lukasz Luba wrote:
> Introduce a new interrupt driven mechanism for managing speed of the
> memory controller. The interrupts are generated due to performance
> counters overflow. The performance counters might track memory reads,
> writes, transfers, page misses, etc. In the basic algorithm tracking
> read transfers and calculating memory pressure should be enough to
> skip polling mode in devfreq.
> 
> Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
> ---
>  drivers/memory/samsung/exynos5422-dmc.c | 345 ++++++++++++++++++++++--

Thanks, applied.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
