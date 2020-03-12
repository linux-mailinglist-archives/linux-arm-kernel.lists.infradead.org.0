Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3685D1827E1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 05:39:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BV9SI8TklKEWCf+7MUgFTjsN8PHu6Gw9vdw61nS3Fz4=; b=m/DJ6Z1ytTiirOWkE/kM+z6XAH
	cD5evyThAdNoTVQK4u/MPH+9eEXg4GqpW8/MORBX9Ise0JyR04A3do2yeAHPFiOLLibPqXGMl9+JL
	YeTGzcvrrCqVm/HGth/JzUV/hDqt0g/Enp7XJ5LtURINcBiOp4MIt8ainhxNk57OX7prhhSj4YM53
	EJC0gvofV4K1ZbhyQPIQUxzW/Ty8wmmd08ZZdqUyLfekAdOQdSuM3//K/0b2GEKeh64IvKeFXNotL
	BlNWMyQzHKXJiVMnCEcAT0wyVQ16KRcCYgmBEP8rYXIRl+Lgnjs+voF2XcgFdeYa9f3THsoqApXEv
	GsjiAhmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCFd4-00040O-Aj; Thu, 12 Mar 2020 04:39:30 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCFcd-0003l2-0W; Thu, 12 Mar 2020 04:39:04 +0000
Received: by mail-lj1-x235.google.com with SMTP id g12so4852792ljj.3;
 Wed, 11 Mar 2020 21:39:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=CQ5GKeXvkGqParOGBbk3REWEzXGx6iRtxkKUwPdofu8=;
 b=PwGzluP0WgYEtjxd6slxjBTCQ2MCXElCaw1aAJM7OdeBX9Y62hglyUeK1LszMY+bD1
 v7uFtw5T76pg40v3E9xj0x9MZlUalHZGlqKUyw/JbUpi8Z7/7+9OWbWe6GbFZMkFvjxx
 FUYU2516f9coJD1EzSC46OepIfcp95Ziqde7sxBCCxiwj4lQAfyRiVcb7Cwo5f/ia0gC
 7vrmllqUbZEpF81R+ugmFFUwM+Ty4hu4T0wGckJtMOa/2Oc4NgSBFWEIhkjcHoomO9Qf
 4iHz2tXzPdjPffg1XuIOilgBTfA7pFtEcaq7KttUX7KuNr/zCOowaAcMyDT5Wwu60TiC
 B2MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=CQ5GKeXvkGqParOGBbk3REWEzXGx6iRtxkKUwPdofu8=;
 b=E34O0w3WADwmfYKNOR8OauPk0KsIQsKxwv7HJSOS04c76uTvqFZssb7Xb8bqaVPvil
 TlWr6S3cUmDuXF8j2BZyjdBgfRlQEusCI/amj18Q2Vlghrbf5e6yKx8INCQJoqCdhDKC
 2ktgG3dF3khsayvlu6IHKOwMxgXFai6szAt9PxXYKybtWTtPyIemNDm8kho0+SXvZmK9
 lG291R3pUnNAGMnnKee7RDQ41XGwll/GTkZucEq2MS1Vgh1wswkaNleY4pehOS7WLvLw
 WrKBDVI/a1IOhyYyU+oJxbVDUtvp/aUvbGNsYpRx/7iqZSyfCWmIkwK+zLf5S1oZsM6p
 HOKA==
X-Gm-Message-State: ANhLgQ05/TbggZ7nWCo9LA1MJE1/4U4htMndAfnGhZ0TECk1aIdpuRTI
 NCes6BNIyicIv23BV3VfgyM=
X-Google-Smtp-Source: ADFU+vsFSBXwiw010EUlpXZARd0uRs7BApQJI23fC7SCtptQOH7Z11vbSZqTSLxTOovEFUo57s0srA==
X-Received: by 2002:a2e:9b90:: with SMTP id z16mr4054714lji.254.1583987940236; 
 Wed, 11 Mar 2020 21:39:00 -0700 (PDT)
Received: from localhost.localdomain ([87.200.95.144])
 by smtp.gmail.com with ESMTPSA id u2sm8872866lfu.3.2020.03.11.21.38.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 11 Mar 2020 21:38:59 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v7 1/3] dt-bindings: add vendor prefix for SmartLabs LLC
Date: Thu, 12 Mar 2020 08:38:04 +0400
Message-Id: <1583987886-6288-2-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583987886-6288-1-git-send-email-christianshewitt@gmail.com>
References: <1583987886-6288-1-git-send-email-christianshewitt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_213903_049278_3F55702F 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [christianshewitt[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:235 listed in]
 [list.dnswl.org]
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
Cc: Christian Hewitt <christianshewitt@gmail.com>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 =?UTF-8?q?Jer=C3=B4me=20Brunet?= <jbrunet@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SmartLabs LLC are a professional integrator of Interactive TV solutions
and IPTV/VOD devices [1].

[1] https://www.smartlabs.tv/en/about/

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 9e67944..a34ed82 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -901,6 +901,8 @@ patternProperties:
     description: Sitronix Technology Corporation
   "^skyworks,.*":
     description: Skyworks Solutions, Inc.
+  "^smartlabs,.*":
+    description: SmartLabs LLC
   "^smsc,.*":
     description: Standard Microsystems Corporation
   "^snps,.*":
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
