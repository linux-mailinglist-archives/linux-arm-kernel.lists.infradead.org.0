Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E0B34551
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 13:20:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mdvDv8fp/ttek7rXt3Ul5a0hFdMdsrfVoiMUMnShLw8=; b=VwmqdI7LGfGVWS
	1ZtJhyFtAtHdcJptEwzXEfWRlWloBow0oThg/ISWBvt6M171c7SaTX5C4S3TNoyAeRKehduBsU2O6
	9lPpgOatsI+Mc4/Rba4eFqj4vNj3MaT4mBjy164mIRJ+fSUeEtjFsB+KPnojQqrzecPfG/urlMCPn
	a2npapSIZhrj6XNA+SrsgSPPrvfMcWtEnOfM2GI46E3Vm6MtVli0GJ7G88XPFBimWks72EooTk00k
	ZDjCut8n4z2TiHYymZzLTRdvUHXqDTL2Sc4PNEEw85NZZqc+WUL3c91fKEubx49pj3tTboWHfolZy
	mmT18A+bP1PoKzNKNKjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY7Ur-0005cD-KM; Tue, 04 Jun 2019 11:20:53 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY7Ud-0005T3-CG
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 11:20:41 +0000
Received: by mail-wr1-x443.google.com with SMTP id o12so8272020wrj.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 04:20:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NfluWg4gx9fiVSiOTrSo1yhr6G3kE919Smpmk8u7f10=;
 b=Nv5/ilVC8pDGJ0SDVL3EZEIzC8pzh40a0mFt7bzyZ0jVXItBQdhJWbnHE4bcsASCmf
 6iKjB/x1auRVBnm5iIsqS5UBXH3tjZ5fB+xaFduy7sAT7jtVo+nIcRcpXiR5vx4YWE4X
 ciDCBrDKWyeqLSII3tI1I77vbnsH/SOOdxKEaxhZQVkT38zaXHSJpMJwCL9useA54NOe
 av/RrznD1GIqHf1AkT17+Viq6Oh1UPGyhvQxg5HXm5nI0pm2LtAxvo1u7xzOYQqyzFSV
 751FE4/b5IfZ/9gHNCfFO0QUhqpfzggmyu1kbjXq+6tSXxeJgK6ok2aCuAfOL4L6BS5n
 G3zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=NfluWg4gx9fiVSiOTrSo1yhr6G3kE919Smpmk8u7f10=;
 b=AcKYCARysjJ/tnalWKC5UQfIjLw/67vwSxrQLdCAuxGjMbMPWgk0yAzxviXb1KxaLh
 wQ7KIK1TDuEIj8MA04QZvASzj0LfGvdCG1vexMR8BcUus6nC7pSDgp47rhWYBfXCXWux
 lLCWASW0No8VOoFcPfPv73N6qHBTJ27pj+GKwqPEqzl8/2OIoJkDmypuwDZJXH1jax/l
 AyMFDJlk1j4ATo3cDCyG6BmYtRAVP9Sz+rpHLGGVHpysDsaISbYkCEex8qhY5XoISIiA
 Q9ffQXn9yP6faR6upW4r4cp5BUOnIHyJYSpH9+RKB+nbu9JEUJaNJhZOVUwFyjhKEIdt
 XpRg==
X-Gm-Message-State: APjAAAXOivh0/1loE+Ex01E0YFDQmaZUjSBqp6P69MnHqVfJiGlHmFbL
 woHqgv7Dir8KtOrY2s2YPR8=
X-Google-Smtp-Source: APXvYqy34B08BoTjG2EO8tqBphUvtAFpwS1/BNxQIcpl7f4Z6C4jZUwnirUFZy4qTx7kRf0qbomymg==
X-Received: by 2002:a5d:53ca:: with SMTP id a10mr6352074wrw.131.1559647237793; 
 Tue, 04 Jun 2019 04:20:37 -0700 (PDT)
Received: from cizrna.lan ([109.72.12.213])
 by smtp.gmail.com with ESMTPSA id g5sm20580044wrp.29.2019.06.04.04.20.35
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 04 Jun 2019 04:20:37 -0700 (PDT)
From: Tomeu Vizoso <tomeu.vizoso@collabora.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] arm64: defconfig: add Panfrost driver
Date: Tue,  4 Jun 2019 13:20:02 +0200
Message-Id: <20190604112003.31813-2-tomeu.vizoso@collabora.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190604112003.31813-1-tomeu.vizoso@collabora.com>
References: <20190604112003.31813-1-tomeu.vizoso@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_042039_660607_B96CD541 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomeu.vizoso[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Arnd Bergmann <arnd@arndb.de>, Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Dinh Nguyen <dinguyen@kernel.org>, arm@kernel.org,
 Jagan Teki <jagan@amarulasolutions.com>, Olof Johansson <olof@lixom.net>,
 Simon Horman <horms+renesas@verge.net.au>,
 "moderated list:ARM64 PORT AARCH64 ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With the goal of making it easier for CI services such as KernelCI to
run tests for it.

Signed-off-by: Tomeu Vizoso <tomeu.vizoso@collabora.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 4d583514258c..d588ceb9aa3c 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -505,6 +505,7 @@ CONFIG_DRM_HISI_HIBMC=m
 CONFIG_DRM_HISI_KIRIN=m
 CONFIG_DRM_MESON=m
 CONFIG_DRM_PL111=m
+CONFIG_DRM_PANFROST=m
 CONFIG_FB=y
 CONFIG_FB_MODE_HELPERS=y
 CONFIG_BACKLIGHT_GENERIC=m
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
