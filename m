Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 098901FB01F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 14:18:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BNs+DDZCm0Xungp6VermkoXoHYhinsWt+JLrUu/h35g=; b=TTy5IXs2h+QQDn
	PYEq8j/8KHyjo7rIgPBn0Fw2S5rSVIRJ/vp1c+G0mmkwvS/Pc9gCONZS6tHei+iEyKYgV5auqusAd
	2DRuJfNKCQ66WHMDGegSkyyQ05uZIo988GuHrrnjhj49Geie6iJIqLGoTceJk7+EwIDSVFgyZ9oN1
	fbRkLNpn9Qacck49ogwZAWrdYErh3m6VvSPrlzNn0+bFH6IplmXhSyq21KQwpfMv8eouXyac1fF8Z
	sta4Ubw/A9KALsAEaHihC7vMuwubrFQ+IgrEVXaksC+i8GJHseduDn0mCHtV3eoR+EoxqtfLw+owR
	dOzkcIDltv+LHFyuoKJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlAYB-0001Ef-Qz; Tue, 16 Jun 2020 12:18:47 +0000
Received: from mail-pf1-x433.google.com ([2607:f8b0:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlAWm-0000Gp-MN
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 12:17:22 +0000
Received: by mail-pf1-x433.google.com with SMTP id d66so9424103pfd.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 05:17:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0x0f.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7Ofrbcs6powOIpLHVgUb+s2Y6gSuASwM2PMR2S8GC/8=;
 b=K9GBZe8gNJO/W9HkRUGhLRRenI1uWzOY2VyMcVpQ1qpJoy8XFBU/gN9hplt+ZBwytp
 Vl3FWj2Xe9Qotiq1GXQaR+lcoBmvS22iEhQgk3IrWMNrUgSANF8Ny/DCdDURZNZ9npKx
 4DV78QiAjJ4kj6JhAdhMLmVrC5LAM7JTlQYnI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7Ofrbcs6powOIpLHVgUb+s2Y6gSuASwM2PMR2S8GC/8=;
 b=En2mWnfLKtPKaSl98tJgJAG24+9OYNzczZ0b6ZGaaXrk9rjD+tw8RK+DVX5O5Orriy
 jKMojEHoh8cxXDecX+FPVl8OExRRaPEgM1iaXk50PxHMmN0flo3D4NZsTb1ELXhR07Q1
 RUa3hjkyhTJhoR692vISWCqmkCK0EWftnoKPUK7mY8kJOuuTuatLFYdQwsF4KXLUS4Hs
 knlQmjX4z4sAgqF5qhubgsJEdj6VezpnPT6C55h0D8umEtQXYZTZtgtLH3dXV6pkf5fW
 tGGon3BVfAV41QyUzVZjcGs04wgNwOVni9dIowGIwutdYowkF4fN1yXjVVKSx2jqy84B
 IsFA==
X-Gm-Message-State: AOAM531Nrr9GiQXvlRiiUXqTmiOrxutvLnwgJbPbAlvfWxcf0YAseGSz
 B7nVBTjtOBVKYrIRUifsqv7ogbJZJVA=
X-Google-Smtp-Source: ABdhPJx2/ZThHxd7TkGqkTWZKS35Q9MJ8+CEueo+tZWGJimgB1gnkJ2ft0DeXHEgR4K/xPkFcWleWw==
X-Received: by 2002:a62:7dd1:: with SMTP id y200mr1787559pfc.184.1592309839077; 
 Tue, 16 Jun 2020 05:17:19 -0700 (PDT)
Received: from shiro.work (p1285116-ipngn200805sizuokaden.shizuoka.ocn.ne.jp.
 [114.171.61.116])
 by smtp.googlemail.com with ESMTPSA id f23sm2360703pja.8.2020.06.16.05.17.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 05:17:18 -0700 (PDT)
From: Daniel Palmer <daniel@0x0f.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 04/12] dt-bindings: vendor-prefixes: Add thingy.jp prefix
Date: Tue, 16 Jun 2020 21:15:17 +0900
Message-Id: <20200616121525.1409790-5-daniel@0x0f.com>
X-Mailer: git-send-email 2.27.0.rc0
In-Reply-To: <20200616121525.1409790-1-daniel@0x0f.com>
References: <20200612130032.3905240-2-daniel@0x0f.com>
 <20200616121525.1409790-1-daniel@0x0f.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_051720_750807_87CC9CF7 
X-CRM114-Status: UNSURE (   8.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:433 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Daniel Palmer <daniel@0x0f.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add prefix for thingy.jp

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 53cd050668e6..c209b3dc7ecc 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1038,6 +1038,8 @@ patternProperties:
     description: Three Five Corp
   "^thine,.*":
     description: THine Electronics, Inc.
+  "^thingyjp,.*":
+    description: thingy.jp
   "^ti,.*":
     description: Texas Instruments
   "^tianma,.*":
-- 
2.27.0.rc0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
