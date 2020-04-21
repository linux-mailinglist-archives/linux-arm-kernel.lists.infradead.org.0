Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B0C1B20DE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 10:03:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ecoax8HCMzjWr01a9n5QcJmAi5bka+eAzucm/jEVOzc=; b=lNvmAMoSSmf3ST
	N38AUzqiSzX83nmdaY0Aj2f1aQiXMVgPiy6zL52kmYLeYC93wga0lxshDiG/VUEd6Jq8PIeUEr4T/
	0b7h4wM7U103mUztdc+Jru1lFEx8v6+Dai2mYpTl2Zv1YaU0Ap9xKMNycXSSJIsX/5UlmI+zbC2M8
	aWbSMRA4bdOVC5K6FnufZM6sLyAu0EQJagENH9CWN1DcPaLhxh+5IWvxvMX4V20XMkAL7He429lqH
	+ruiS4USfMM7B6uxWtwYbn7TY7p+/2TspPCB6FWcTxgmgQY+cU6jcmoKtor0hV0dPwD3ov4I/uVdQ
	BTmFdFTqtnuZoFnG0CCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQnsB-000337-OV; Tue, 21 Apr 2020 08:03:15 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQnqG-0001Ch-4a
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 08:01:18 +0000
Received: by mail-wr1-x442.google.com with SMTP id s10so6190305wrr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 01:01:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8x2qbrmvJrvzLhSdZyiezkJo4hKvmqVH04B778IZt90=;
 b=dGTNCcnGr7YtPFf7J6XDaRYOU2CiBaCJhYNx09RmlAPeojd7c14ojBOwblaGyqje5J
 WlHC8CdEZ5ZGd2aGNslxywnwSLnzXx66X945Y1gGFesYLDy7pTBXaZVH2xHQ2llnHRJE
 vDYT9lWrKI+Xl6GV5za29OV/+p9Lnm7qhD7moZpHDPwhUYzF301asuOKHkFSC0FrJ5eb
 8Coh7+dbLi4ywxt7d0Wxl/e2rvqbPOGO+/6LRv7cJrOZkSqXFinuBl0ytSHkNtPqWvOM
 sTPL5jKQ/j4QtCgLNgZYIl92+Xf5k0fU8Bdgrv98mdvjRzX4hbDwRD5PWihG8IOAlhAA
 UdBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8x2qbrmvJrvzLhSdZyiezkJo4hKvmqVH04B778IZt90=;
 b=i8HVDIlr2U2nLcCaAIxUF5wQzIqznqAlVE4fynbhG7pECgqCrfq+dZg9fB7leICZtI
 RBxBEUJfkNd/fk+6QjfazaYsFaZz8fkrghv3xocvNWatXG4gM27EEc6ZrGZgvCiJ79dw
 12PoUOyA2yynttahhSUoTfU5HOYu1GHo40KqpIB6o0/Z9mDse5eAgbjuOk5+HC00XgeY
 OjB6meN/SX4ryM1ckgEb+n0fhEGdsPnrNRKf0uSeCLpue5TzG9RWTsV1V/wlkd0drqnK
 EpLbmK93Dj5+SKDplKe+ijscCL5YraBuWvncMMJrFGK7giy8cfoBMxYwrIeDyAyGCnvo
 lcFA==
X-Gm-Message-State: AGi0PuYr4KtKD5ifqLX3XEFLTgmQWSqAEU2wY9TDujc2NxWD1d82RACM
 7SzL0jiOQp8PWAmbHTIwoi3SLA==
X-Google-Smtp-Source: APiQypIiWqXPmC/5mQtYcIdPcfFDsrYy87KwONuuyBh3FM0Eo21Qb7uC8L4gifzvCSJ9ml9PyD7LFQ==
X-Received: by 2002:a5d:4381:: with SMTP id i1mr22202504wrq.194.1587456074451; 
 Tue, 21 Apr 2020 01:01:14 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e35:2ec0:82b0:39cc:a07:8b48:cc56])
 by smtp.gmail.com with ESMTPSA id
 x132sm2561552wmg.33.2020.04.21.01.01.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2020 01:01:13 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: lee.jones@linaro.org, jdelvare@suse.com, linux@roeck-us.net,
 srinivas.kandagatla@linaro.org
Subject: [RFC 5/8] MAINTAINERS: add myself as maintainer for Khadas MCU drivers
Date: Tue, 21 Apr 2020 10:00:59 +0200
Message-Id: <20200421080102.22796-6-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200421080102.22796-1-narmstrong@baylibre.com>
References: <20200421080102.22796-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_010116_233963_36305FA4 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-hwmon@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, nick@khadas.com,
 linux-amlogic@lists.infradead.org, art@khadas.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the HWMON and NVMEM drivers along the MFD drivers and header
as Maintained by myself.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 MAINTAINERS | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index b816a453b10e..4484fa568d42 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -9431,6 +9431,17 @@ F:	include/linux/kdb.h
 F:	include/linux/kgdb.h
 F:	kernel/debug/
 
+KHADAS MCU MFD DRIVER
+M:	Neil Armstrong <narmstrong@baylibre.com>
+L:	linux-amlogic@lists.infradead.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/mfd/khadas,mcu.yaml
+F:	drivers/mfd/khadas-mcu.c
+F:	include/linux/mfd/khadas-mcu.h
+F:	drivers/hwmon/khadas-mcu-fan.c
+F:	drivers/nvmem/khadas-mcu-user-mem.c
+
 KMEMLEAK
 M:	Catalin Marinas <catalin.marinas@arm.com>
 S:	Maintained
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
