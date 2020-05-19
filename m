Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDDEC1DA52C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 01:10:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FGDIo1uvs5q2EFCEejrvvBcY3AKNK2cG3Ml9ZNo9fME=; b=armynOucj9yb01
	spJGnBmeEVSFOzP0b4X/uPOcTgIfaqEODRo7pS5YQEhH3VJvNwJdUSkS4A3Z/yShBeIGkzKCbvKYz
	nTs2fYGKV0UVlcYgefok/KiLClRN8aXdNf5JYuOQ0Bh/VcdSM5IAS78dH+8iuZDsnrnxLLGIoMg5A
	Olsed1Hzuxyd/A1D1xAqiM57oH6J8m823qLPIiafQnM5W98rVdOWnA5lJPSKEu+Wsj6s0sKek08TQ
	RlnhA20MoZeAaEVRyLCtQxFDaM6KcOfG/rw3sPijo1cyknjOS/Escekkwoijj2npLBw7EeP9zVBxk
	Iv41/RbFASUeWKZzllQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbBNd-0004w6-07; Tue, 19 May 2020 23:10:37 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbBNU-0004uu-AN
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 23:10:29 +0000
Received: by mail-pj1-x1043.google.com with SMTP id n15so380450pjt.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 16:10:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YIhBgtFrqanZxaoDE99ayOKzut2GbNqr9j2tD0I6nAw=;
 b=Dr8ZTOprcAXuKEo3lno5QfSoo2JmOs9jR81zKjrpOBd/I/howaMAk9kD88lyo3RsFN
 GyXXxM8QdWWgKvp3tjNNhr3Ex3z1XDOCy8edrckMCu0yKDK7ZHP/qNSjoVg7f/hWm8Jo
 0CDbtZCE5WxNTMz50+iquyWVnM7OMwa1HkR+tKZol7nkDsNxubbJVt3EyCWinqPy5+rf
 40BVralUHrmDhSDDMFErcsxlHLFqsCsAYpJM8dQphqPaaZTXEU3W9+iNta7ATjjlWkYh
 iIVSUakYD+iG9nX4Ez1PA9K3XDCUAoEpO8Rs8LUWPrdNfXFqyo8IcSEE3C9qusTefyvT
 cJ8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YIhBgtFrqanZxaoDE99ayOKzut2GbNqr9j2tD0I6nAw=;
 b=qgeSKCHwIvsSSnLv6yRRJTH3/SqWx7bYXk6Gd4X4I5V8hFaN2iMZUvPCthfYXAxIJB
 fU6CsbYOj6qqeKVYKNnVIgpNvJqLI7DEPS6rpNhrSk6l+BiPXcDkFpWDhSu5VHErY5P0
 TjrduqJ8tbRI5+FwKWzSnu1KJcQPHJyr7rnBZuyJaQcPFhdHO8fxLI+ysU7u3tdTWbwB
 MQIxMOS+GzoQGLxovvzy+EzJx92UiYEaBrJJ8WB/KC15QAam9IV1DEtkvX261nh+biAN
 pUnjk0a+XV5/+Ss4oU2DXihYn68peYr8qXFjMaAFYGhbJmYiEp87ib4BDHJ6uZpKb30b
 7Qvw==
X-Gm-Message-State: AOAM5320AoX8HT0OAGcNWW4Tp/r7nYb1et5oNtULroWIeLfTSYmbi1YI
 EKhEoufFqjxjkXb1Fm47EBMc0Q==
X-Google-Smtp-Source: ABdhPJwBXr1mJnyNqJYn1wuy0/66dvQDSpj0yB5i/10Uf5tQtLlF1F1nIa3TamCG1/p9Wc7yiMkeEw==
X-Received: by 2002:a17:90a:a43:: with SMTP id
 o61mr1935891pjo.179.1589929827249; 
 Tue, 19 May 2020 16:10:27 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id kr1sm454125pjb.26.2020.05.19.16.10.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 May 2020 16:10:26 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 0/2] arm64: dts: meson-sm1: add thermal nodes
Date: Tue, 19 May 2020 16:10:25 -0700
Message-Id: <158992977729.3767.17121497893810166214.b4-ty@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200512093916.19676-1-narmstrong@baylibre.com>
References: <20200512093916.19676-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_161028_362006_297F4C69 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 12 May 2020 11:39:14 +0200, Neil Armstrong wrote:
> SM1 Thermal is missing and broken since the G12A/G12B thermal enablement,
> fix this here by moving the g12b thermal nodes to meson-g12b.dtsi
> and adding the proper sm1 thermal nodes.
> 
> Neil Armstrong (2):
>   arm64: dts: meson-g12b: move G12B thermal nodes to meson-g12b.dtsi
>   arm64: dts: meson-sm1: add cpu thermal nodes
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: meson-g12b: move G12B thermal nodes to meson-g12b.dtsi
      commit: fef8ddfeaef8b7c91175e76bda7e4bd207b2d179
[2/2] arm64: dts: meson-sm1: add cpu thermal nodes
      commit: 410763ffbf629eee72f0257501dd448f861e3693

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
