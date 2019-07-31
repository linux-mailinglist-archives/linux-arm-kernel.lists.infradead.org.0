Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 074147C1DD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 14:44:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mG6Xl/kXB5BzXQxeuzlOadot852YgEYz/ZjicAnnaPA=; b=IueRY0aXDxP+M2
	7iLBZAQXycJi6lV9zeDXQfY5rAJj6sTrDdrQNQrdjk3AJJFrFsUQreIiGSNELmNQclxKnY/wIDtgL
	FD2FA/Y2Cy4FfTzJ3J2ia/21Tondn9B3sN6+sfPnpIDaLIaA4H/W53dbSfGMWh/Q6DoMCcZiGN2NR
	J4yh7sqViC5RzUWZMD/UmQgURvV3B5j58hBMeC8k+kGdqHXnB1t4vn6RHb05EeKmB/AI9SMvWKFui
	Y23PKpTkGQJqJxTWRq2EAq+9JwLOXF8He7pHrJYkt030UhlQwAR1zR6yH8Gzlq9ttWwMpPKA68grt
	ZcGDYJR+i5su9pmECFWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsnxc-0005pr-CF; Wed, 31 Jul 2019 12:44:04 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsntr-00008h-EH
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 12:40:16 +0000
Received: by mail-wm1-x342.google.com with SMTP id 207so60662854wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 05:40:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vlLAZG3376vvQfzbiUNES3FqbulnmazxfSm05rud9uw=;
 b=DhP64lAedWvamo5W5NN3GbWU9atBaCuUKmKTJnuEu3/Q6NUXbc5eQ/QJshDzy0Otjh
 /owLX8DA1RrZS89bHOW8e1LI53M7I9FuQMgCNi829xpzCzFcbB0rCmqHrnD/fBUeCVO5
 qCdACesG6Sm21tnByeCJSWeD9JXw/1MyIBydetMPrQHz12+VKhTZJn5BVKn7hSTlc8uo
 AObZiLM7xMJb6jqTP7riFTsok5p2fqw9Mxq/lVLcXlPAMUsBpsx7KerNv0DZ2b9BpikY
 iAaXHGM2U0CsVTUVwMtc8fFV7DLMtP2iXcYfCdoZxraBQ+A/7J/yVAQN26sZDlrI29Rv
 ub6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vlLAZG3376vvQfzbiUNES3FqbulnmazxfSm05rud9uw=;
 b=Muuj9uTLMUcPilBykIvbYZ9wqtIi4CApwcjsqsB0Ojmsex1RnDStK+zrV6q5N+zrVn
 WrCv7wYjdXeWRv6KoyPwWYdBTYJ1dd7gp1EfftKD1H+NeIjj1JNK78jzVMniexV+wsPK
 TLcON9scDs/xzU5qVdkkR5GWws9GkwEMSq74tVxQ4eDD6qxvbiRPFNzoIa2jdIGYIhFL
 3KR43c8He0G78C7xdQXwuVk/Gd6odtZ7vMRhuP0jWwgkKMmRNCeas8sZdNtilaIwUH5t
 XJS5Wsl8j0Jt83qyzIqgDHourBmweeZ/DL7oNo0UblvP0hcxPMnGNmIbuE4+HKNt/znH
 eFUg==
X-Gm-Message-State: APjAAAVwXcgUQV7CYXcQz5RIetGL/DQkXLeZVLtDQecUF9BkgMOkJSxL
 gKqqD6TaU7e9EdV3AlZ2VjncOw==
X-Google-Smtp-Source: APXvYqwdhbsgWyNma56uwz+SEJ9Te+cQwX4Tmf9Ld57twlw4YO82/Yo6aO7smXGtz7lwTn98lqEPIw==
X-Received: by 2002:a7b:c1c1:: with SMTP id a1mr116321019wmj.31.1564576805437; 
 Wed, 31 Jul 2019 05:40:05 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id x185sm62504271wmg.46.2019.07.31.05.40.04
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 31 Jul 2019 05:40:04 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com,
	devicetree@vger.kernel.org
Subject: [PATCH 2/6] dt-bindings: arm: amlogic: add bindings for G12B based
 S922X SoC
Date: Wed, 31 Jul 2019 14:39:56 +0200
Message-Id: <20190731124000.22072-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190731124000.22072-1-narmstrong@baylibre.com>
References: <20190731124000.22072-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_054011_517518_7E1D7806 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
Cc: linux-amlogic@lists.infradead.org, christianshewitt@gmail.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a specific compatible for the Amlogic G12B family based S922X SoC
to differentiate with the A311D SoC from the same family.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 Documentation/devicetree/bindings/arm/amlogic.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
index 325c6fd3566d..3c3bc806cd23 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -139,6 +139,7 @@ properties:
         items:
           - enum:
               - hardkernel,odroid-n2
+          - const: amlogic,s922x
           - const: amlogic,g12b
 
 ...
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
