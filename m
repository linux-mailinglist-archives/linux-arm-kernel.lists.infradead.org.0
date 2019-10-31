Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BC5DEA8E5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 02:41:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=2gtjLRYFqHI33Sz6//jA2c5EdY/HoIodScbUW9Lp6XI=; b=CAm
	zVSbp/Bg3uhiGKrSc6q1IBYmBwUdKcmTPjaS/GXVnpmMmPq/zIBSh84ymJQ8XogqGHDL19a7A3gvc
	I4KDFvqgriF6nJKtzinN+KQH0wOUvoEDVUJKNMtRtwWKHF+Oqzpew1GS7JcoW1essg1EzUDdb8jqC
	ey/53O3U2BKtbkCGIs5aulUAFb0AD9P017PUF6a/fKBUaCieX6OFKxXESj08lfgEH4NCqettQ9fwO
	Y8DgmL3UQooqhcrsLaZbKFpCI3kbILDaSYFsEO3caKkJicuihqJqA8odRVXUsX0o8QGHtl8rYSzlC
	aF95A//juVjpO6pHsvvzA2yOBO5Jdiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPzSX-0005lh-Lx; Thu, 31 Oct 2019 01:41:09 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPzSK-0005kk-Sz; Thu, 31 Oct 2019 01:40:59 +0000
Received: by mail-pg1-x544.google.com with SMTP id f19so2805559pgn.13;
 Wed, 30 Oct 2019 18:40:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=THm33sey/F8tpDHX1qubvNAiBD6mm2zUX4cg4vLd7dI=;
 b=o2dIOgZ7+lrcRu01IRgjF317J2s/ys08d+KlzGOc2rpbAn+U6OLC1C30Ea8ZTaDfoE
 xxPZYszouo/8gDSk0vgl92TBm4esyFtuEihG41LCQ4HmtXJFQBQeIN2goqfliVb2s+5e
 U7r2pPvF8AhBLm3h8R2m6mwiJeHVepdQCR1lOePl7k+rpI617iIlvRymhYr0iSRaa6NF
 VyhVcYPrWyoY8MsndkbiCmQta31LA6p+n0OhCxrOZ1Wcw8Exuq8fqJS4tkVNifX92DPH
 lEIASj3sBYw3iP0THYEkZs1GgTc8MgWCYCz37blqQI2/5/Jrjfj3qQ4ARv7Dux9v/dbG
 12Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=THm33sey/F8tpDHX1qubvNAiBD6mm2zUX4cg4vLd7dI=;
 b=fSzvU1FyphSUnGACfoqAOTc5BGFQaBX/I0RZQY73MKpmbzIqYnFvYeCxkNjyvBjdxC
 gI1z829fhdcw5n9HMQ6hhYSMfFV6ZFDZTnXoACVNHCLRst35THZ/N7EfASzm2oCyes/j
 IvHf+SKjUqLES+ES4U/rGGkiFbT4olFQJELTmSciEEc+eB8yEyHzCWD5OE5DndxFrdQh
 qHY/cDvuUiun1Xt0PCnAnmCd0YrSx8UKNk0n3wVHtZ96u1+XXEQJ87j/JBz66eHu6vMf
 ju1rC9PbBEPGuaL0U3Jv8VIk40nCKQLFdWI2U3uj4nsl3OeeysR4fb6GocvR07lo6/G6
 fqfA==
X-Gm-Message-State: APjAAAUUXIKykVbNr1sAzHpGHKIISS/R6gEK795HjoG0eT4Z5nP45rru
 cWgf3WUV94Foo7vphPsI1Zk=
X-Google-Smtp-Source: APXvYqyiiRYmWih5L7Km/8PhYX+xDLNb0WRqCF0+D79eVEcUhmNcBHqLVY85E0aeQ3LEWB8Yel6ujA==
X-Received: by 2002:aa7:9687:: with SMTP id f7mr2805612pfk.230.1572486055591; 
 Wed, 30 Oct 2019 18:40:55 -0700 (PDT)
Received: from taoren-ubuntu-R90MNF91.thefacebook.com
 ([2620:10d:c090:200::1:e375])
 by smtp.gmail.com with ESMTPSA id b9sm1287811pfp.77.2019.10.30.18.40.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Oct 2019 18:40:55 -0700 (PDT)
From: rentao.bupt@gmail.com
To: Russell King <linux@armlinux.org.uk>,
 Matthias Brugger <matthias.bgg@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 Linus Walleij <linus.walleij@linaro.org>,
 Paul Burton <paulburton@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Mike Rapoport <rppt@linux.ibm.com>,
 Doug Anderson <armlinux@m.disordat.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 arm@kernel.org, soc@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 openbmc@lists.ozlabs.org, taoren@fb.com
Subject: [PATCH v2] ARM: ASPEED: update default ARCH_NR_GPIO for ARCH_ASPEED
Date: Wed, 30 Oct 2019 18:40:40 -0700
Message-Id: <20191031014040.12898-1-rentao.bupt@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_184056_959018_00504016 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rentao.bupt[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Tao Ren <rentao.bupt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tao Ren <rentao.bupt@gmail.com>

Increase the max number of GPIOs from default 512 to 1024 for ASPEED
platforms, because Facebook Yamp (AST2500) BMC platform has total 594
GPIO pins (232 provided by ASPEED SoC, and 362 by I/O Expanders).

Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
---
 Changes in v2:
   - updated Reviewed-by and added ARM SoC and SoC maintainers to
     reviewers' list.

 arch/arm/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index b7dbeb652cb1..57504f3365c7 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -1359,7 +1359,7 @@ config ARCH_NR_GPIO
 	int
 	default 2048 if ARCH_SOCFPGA
 	default 1024 if ARCH_BRCMSTB || ARCH_RENESAS || ARCH_TEGRA || \
-		ARCH_ZYNQ
+		ARCH_ZYNQ || ARCH_ASPEED
 	default 512 if ARCH_EXYNOS || ARCH_KEYSTONE || SOC_OMAP5 || \
 		SOC_DRA7XX || ARCH_S3C24XX || ARCH_S3C64XX || ARCH_S5PV210
 	default 416 if ARCH_SUNXI
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
