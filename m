Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6432EE5A08
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 13:46:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KvSrUaYdUsIoMkGXgm/jMZDUpZc/EhIHL04tM4N9ijU=; b=N8jBYvGKlkLCYO
	NtVNN7kVLVlb+d6fYuVKOY3OKsKxlS+M3mjbcfKQ3AZrObVYrlYf9086U5CMfXLMTVTqe1ObzPmfR
	9JriQz+jirSdhq/DmAnJZkIsSMDQDSWljSVUBz6icSFqm6lg9KxwxIhndwSX2EZPN0VOz+Z8jbMeI
	L7aso/+WRuew7axjJeYKox/rN+pWYXKzH7SjJgbIoj7QJpyok0le18GNFeIeF2ck8jJ8PBTwo0hNV
	MpOObMgaSp92JH74VSVYNNy7imR0WwIGz7ZjCueImccmrdyjzJn7eWNZaygZmvBWGS6W/rRNvt9bb
	W1J4eT7U+WrbqQPQ1FYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOKWj-00018V-Ss; Sat, 26 Oct 2019 11:46:37 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOKWZ-00017k-E8
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 11:46:29 +0000
Received: by mail-wm1-x341.google.com with SMTP id v6so4597636wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 26 Oct 2019 04:46:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=WvV3v05v3ZEEVXEmLYdFb7lylJednPWrhNA9CKc5BuQ=;
 b=W4ZHEiZIpNqE3hsCeGHeX4lyrYRkFJ8+N2pzP5EIW+H2uFC30kwXAhqq34aA7o+DDB
 BmU1dchLy+sQVZesfH/mgQBQDsdBbSDqrjHp4rrvN/hygQxIKYOORGF6JIgpFkpPKVlt
 UX1ZC79a1kG1Tb5S12311GoebWaT7Ub492bZ3+7A2UGgJVGEzG5ccbJhAnhhApB30gp6
 2Yqv04+sNcM7GWXQPNdhpABEuHMIeuWBCyxbJaIKRZFaUFVHsK2SJ0wyxH1aC4ARqZoq
 AL38hGrSHCxmYez764UcYWBgdjsfFclVsenwWzYKCLW3HlF04rxnTaEz+TXd8tgEc2TJ
 nAKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=WvV3v05v3ZEEVXEmLYdFb7lylJednPWrhNA9CKc5BuQ=;
 b=t5tgzxFrTMoaFE8IAZs8RLAG3nnH7oP0N8vDzuXFojzkO2CS5ygbXdGDEt9KEWU72W
 aFDpGYmvu2cJ4oHNLEVIi2VW22x/Tz/B3QnQnRgt2qDnQEq+R5lVEgkAYPdYjH9oPNOx
 eFcq9Lt2G3ZlyWmj7CEQI12Zw7klv1ndibRitB9P8BG/3w0HCSAVC8FDFhwsNUpQStQA
 ucg33G1laACB1r1xa7DP9e5D1KHQZAUJVaSY90T2qXVI2Czbvd0umcWg5XZ+kRcWxUW3
 V+fiyK1jD8p6S7Ev81uWP71nusf8NLtw514T7/Inrhj2zMyl58ajIpXArV04mUso4tA3
 2Esg==
X-Gm-Message-State: APjAAAWTD/T3t7ZCDUAQQ9zVvTQb1HYfJXuOavvrTsNGAcJYN3hl0Blg
 8TkFhTo8HNZKFheoUdhoGhONNA==
X-Google-Smtp-Source: APXvYqzIGA1fzbnD59EkfsIe3VNpri1WAOprW76nJRcZAdCg/+VTJ8MZ+ItfjZ0R+iC4V6eP5dKUrg==
X-Received: by 2002:a05:600c:2387:: with SMTP id
 m7mr7366917wma.137.1572090385092; 
 Sat, 26 Oct 2019 04:46:25 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id o73sm5340728wme.34.2019.10.26.04.46.23
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 26 Oct 2019 04:46:24 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Corentin Labbe <clabbe@baylibre.com>, davem@davemloft.net,
 herbert@gondor.apana.org.au, mark.rutland@arm.com, robh+dt@kernel.org
Subject: Re: [PATCH v3 4/4] ARM64: dts: amlogic: adds crypto hardware node
In-Reply-To: <1571288786-34601-5-git-send-email-clabbe@baylibre.com>
References: <1571288786-34601-1-git-send-email-clabbe@baylibre.com>
 <1571288786-34601-5-git-send-email-clabbe@baylibre.com>
Date: Sat, 26 Oct 2019 13:46:22 +0200
Message-ID: <7ho8y3g25t.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_044627_578570_34D422A2 
X-CRM114-Status: UNSURE (   6.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Corentin Labbe <clabbe@baylibre.com>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Corentin Labbe <clabbe@baylibre.com> writes:

> This patch adds the GXL crypto hardware node for all GXL SoCs.
>
> Reviewed-by: Kevin Hilman <khilman@baylibre.com>
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>

Queued for v5.5,

Thanks,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
