Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0385698803
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 01:40:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bbV19Rsz5oZBDB+ODFz9xJQYd2EMAV6yAM3yrZ328ns=; b=ItziryBTH3utnG
	8IF3UhAkz/9kzCr7qhU989TlCbI9bmdm7gPVw5q7cTV2XZX3n9d2chjlmuQ3dXEmj7nz67Hli2Q/y
	8Woh3eht88ISL2gR1hyjG8KfN4r6gofRH6FJubdbFErqPO2ljsaIHK/S4VIh85DtSGS9ETZknheLl
	MJMMqzGREcnmVos5fUIf5NVxfI5380edYFTn9KV4En1Km3Ma6VwCvEpUEug0mzZ+f/jHaXUKt4oZc
	DGpVbNDHDBh68EV2HwnNQiEdn5bgR6NzvyS9y3S2kUO6SWNQckcftRfvickF34jAlq7DPHO1gRfmP
	bGrN7p3WBHEsLy4ZVdnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0aDf-0007Je-W3; Wed, 21 Aug 2019 23:40:48 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0aDW-0007Hr-8F
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 23:40:39 +0000
Received: by mail-pl1-x642.google.com with SMTP id m9so2229228pls.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 16:40:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=PdGmstYjj4UcbwNUp869OtVuxov1WvQjhoAxWHt7vJo=;
 b=mzfyNIBHNRCTGRIjuIu6tTYOToZwmVVnG633lROYmZz407Fg369qEh433GRk9g46qr
 qZET8vlULsVr/1I0eG4WGKcI+worE3kCeP24qFF+KIORfCcaQs8wyob4PbLoMIm1XpDf
 WanKKGUVelZOnpW4sKm+nFUXJMthRLptAYWZmioldfobL4WbEeKjQzxZq4uhY3SxNFuD
 N3vUAk0TwaNsSApmgBV3FFc/UXPQrBiGaG02+d+yUDGbCdSRiN8TghsG86TSNeadztFI
 cT9z4ZPH3G821E42COUqMezutD91ivm1ulCeE0SkybxPehAzaryyXVVOA6mOBtYcSZOu
 pVAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=PdGmstYjj4UcbwNUp869OtVuxov1WvQjhoAxWHt7vJo=;
 b=KsCO4m97ozJTlLLonc0jAwD/OyYMIqx9zjqfYgOmguUJOpL6eeYPM7kABEK7rSRN0h
 kTSE+8Zw0h0omAxWqNh1KwfY4DfktVqmMae04MFmUFX+z0Ewpt3498VwIYVmYiNtaLMN
 suztHcVzO+YKS1cDBZpCD+xd6/Xq7PBZLQuz+NW9NXcnX4fbhQehotIamCOM99D/dggl
 emuhPZ5uqLzza3X6Hzm14BCJeODyM495HvoRR/2nHp6IuL0slLOEsn8lsKrDrZDz/TdT
 aNU10UXhv5f5mJswDeByAd3rOiCkdf2XgBHitbLB0GDIa5zM+r/0eEkfODLfC24SzZcZ
 nZKg==
X-Gm-Message-State: APjAAAWqVHeIZyBhRWC9b2EcfFknq1sbq297s5RbaCbgjqBHfNkGopQa
 Wh4g31CFP7XCCM5oQ8GJQ1RQ4w==
X-Google-Smtp-Source: APXvYqzBpl28fBuk/sy46hFZ1+kwlWBC/dMV3X0jeBb3i46IAc+BgSafaFw9tf/2hKy8B3vf8N/ceQ==
X-Received: by 2002:a17:902:e592:: with SMTP id
 cl18mr5064788plb.291.1566430837336; 
 Wed, 21 Aug 2019 16:40:37 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id e17sm1122052pjt.6.2019.08.21.16.40.36
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 21 Aug 2019 16:40:36 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Guillaume La Roque <glaroque@baylibre.com>, rui.zhang@intel.com,
 edubezval@gmail.com, daniel.lezcano@linaro.org
Subject: Re: [PATCH v4 1/6] dt-bindings: thermal: Add DT bindings
 documentation for Amlogic Thermal
In-Reply-To: <20190821222421.30242-2-glaroque@baylibre.com>
References: <20190821222421.30242-1-glaroque@baylibre.com>
 <20190821222421.30242-2-glaroque@baylibre.com>
Date: Wed, 21 Aug 2019 16:40:35 -0700
Message-ID: <7hef1e5bpo.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_164038_289971_1EAE6165 
X-CRM114-Status: UNSURE (   6.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Guillaume La Roque <glaroque@baylibre.com> writes:

> Adding the devicetree binding documentation for the Amlogic temperature
> sensor found in the Amlogic Meson G12 SoCs.
> the G12A  and G12B SoCs are supported.
>
> Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
> Reviewed-by: Rob Herring <robh@kernel.org>

nit: put your sign-off at the end.  The tags you collect from
reviewers/testers should go first.

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
