Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B4E971CE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 07:57:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6OqgDaBpm1YkG9XP7CmZcoLhgmaftC6IihYWd/cKwKQ=; b=iPIea/nBcC7kJg
	SY5f5tbhQVRL3Zg/jMrr3LSU5kd6SSavNsGuSfOnCq/ec4qJvqiibYc7zrGbW36vFJPQbzyH7AfX0
	cZSnca5l00ALUWz+CT2g9J/5MpevRZzTSSh7Y0kBje/N4ruy3myjsX+g68j8x2YoHhc3DCo5ZmNjF
	2AgsOl9d50ATxL3VPBJN9nOUC75OKCqSb71HcOsSW0EmN//dNUOoLIm6pWBBf+jtml3OB7NwTnNj/
	Eled+YBEYe7QlGdsQ1SmnGTFSpEiS+/0whiWty3W4Hqk1C0lXBOFcr65nHHVayWpe7dabkRBw29Mc
	YGZoUpBc36LtiPSC71/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Jc8-0007sW-Qc; Wed, 21 Aug 2019 05:56:56 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0JbF-0007Ml-FQ
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 05:56:02 +0000
Received: by mail-pf1-x443.google.com with SMTP id c81so671786pfc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 22:56:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LRbutwMNPGCcUP4XySCkZI7pdAkUQ3GbmpQv+hp9+4c=;
 b=N+G/+Kd48L+jZ6o/fh73xp/mvKfke7JJ7JPGZJsuzEWn3YO92SpGNDtMZtXQd1yk7t
 /TcD60fht7i0+XwrmcNWyPf8WjO/Lv9z9BIzsTbucr5CKKzgIhEgylC2A2JYU/Su6VWi
 POYuMnJIX+9gfsnoyO5Pdw+hqhI9GTSybTlMGSH4kPlTPUvztTFE/BgZavxTmEjTYoR5
 cQpolg/xXw8hm79XwpuSMp435mSrUQoqLq4lYD5Fpitd8fLzl/QdtZp+huD4s+QHoBbU
 br0eaXacICeU2eSRhyj6TvMghpemugnptuEla8w9XZ2jqeeDp2m4AkV0bHBqxUVxbMZs
 sKLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=LRbutwMNPGCcUP4XySCkZI7pdAkUQ3GbmpQv+hp9+4c=;
 b=rqYcaxSg0P9nsp1Ssu1xSVoDG9Bs72CokI5WzYVVPABKPUyfP4AmYreSqCS5zjUoNt
 P7PFXXa1jfjgHcenejnlZXOFsxJvKRn2z2eKbmYkDBdRjWOFwqQbq3TU0OlsRZ++JHlp
 ycZ7ijLrSNjEBzngy1E1ovGffQ82czrjH89cEPlktk6yuuM0VQf9q1CgSvCedB548E44
 RZPOIBsLSx98gt51iP69qdWnd9eFvNyX48Tuz7cp6OIntQsQUEoeNSSChm97pUZ23nCz
 yieb/XyEaBKkGQ+LuoDudM0qGf8cKv9DdO+xTsPVcnARej3DzQqlTesY196FtFPFjdgA
 2FbA==
X-Gm-Message-State: APjAAAVSlYOu7FICjjjz8nbqPFRWe752n2My11X01eSA4EY8WK0RP1Sr
 HA8Cp81X5MF1BNRMwM43Kd8=
X-Google-Smtp-Source: APXvYqzr/PrY+iSpy/Ko5UjPD7BNJVFwxG0vGqhgQJH5ScpnxINdgIEcUBhvY2O7dE7gdnnQxlcFfw==
X-Received: by 2002:a17:90a:342d:: with SMTP id
 o42mr3727142pjb.27.1566366960863; 
 Tue, 20 Aug 2019 22:56:00 -0700 (PDT)
Received: from voyager.ibm.com ([36.255.48.244])
 by smtp.gmail.com with ESMTPSA id m9sm26568254pfh.84.2019.08.20.22.55.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 22:56:00 -0700 (PDT)
From: Joel Stanley <joel@jms.id.au>
To: Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Olof Johansson <olof@lixom.net>
Subject: [PATCH 2/7] ARM: aspeed: Select timer in each SoC
Date: Wed, 21 Aug 2019 15:25:25 +0930
Message-Id: <20190821055530.8720-3-joel@jms.id.au>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190821055530.8720-1-joel@jms.id.au>
References: <20190821055530.8720-1-joel@jms.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_225601_701294_70AF2BE1 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ryan Chen <ryan_chen@aspeedtech.com>, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>,
 =?UTF-8?q?C=C3=A9dric=20Le=20Goater?= <clg@kaod.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In preparation for adding the ast2600 which does not use this timer.

Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 arch/arm/mach-aspeed/Kconfig | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-aspeed/Kconfig b/arch/arm/mach-aspeed/Kconfig
index a15c3a291386..2979aa4daeea 100644
--- a/arch/arm/mach-aspeed/Kconfig
+++ b/arch/arm/mach-aspeed/Kconfig
@@ -5,7 +5,6 @@ menuconfig ARCH_ASPEED
 	select SRAM
 	select WATCHDOG
 	select ASPEED_WATCHDOG
-	select FTTMR010_TIMER
 	select MFD_SYSCON
 	select PINCTRL
 	help
@@ -18,6 +17,7 @@ config MACH_ASPEED_G4
 	depends on ARCH_MULTI_V5
 	select CPU_ARM926T
 	select PINCTRL_ASPEED_G4
+	select FTTMR010_TIMER
 	help
 	 Say yes if you intend to run on an Aspeed ast2400 or similar
 	 fourth generation BMCs, such as those used by OpenPower Power8
@@ -28,6 +28,7 @@ config MACH_ASPEED_G5
 	depends on ARCH_MULTI_V6
 	select CPU_V6
 	select PINCTRL_ASPEED_G5
+	select FTTMR010_TIMER
 	help
 	 Say yes if you intend to run on an Aspeed ast2500 or similar
 	 fifth generation Aspeed BMCs.
-- 
2.23.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
