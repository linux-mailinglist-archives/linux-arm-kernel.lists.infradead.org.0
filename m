Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F5AB16041A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Feb 2020 14:09:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ZjAdwxkfTCcoU6gnDbR7mkKnpvMz0rcBvxVd96eH2Uo=; b=cbR
	oQ6EjRoPEnfEUPaSgV8wGVSaYFVQS5TeFKGIJ2+DKH+AClg85TfMoKPxD+VmTaKa98JVv5DK7Du64
	yPcbLM0KLHSxn88b78tGbbMf65Q1wW3g8eh3/OebqDn4OgLRm4E1s2zCTxUzkL4jDfiDT92T1A8lY
	3OvzSWYXexJg+kOaYRGunGsM7JBIllBH8CfaPCnP5r80Ma9YXIUMFUIqd58QjEA6gVx5tu5penxz+
	tkCQt9lW2wjC5KnjnjQyPVT3rcKGmMvV1leoQ/U8vwhd883BXcJcP2X6N+kZAiiOH0nLtzEkXsvsA
	ZGhuD5E0XWoxBrPJz2XR6kWK+5MYOmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3Jfp-0002pE-9x; Sun, 16 Feb 2020 13:09:25 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3Jfi-0002oJ-9w
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Feb 2020 13:09:19 +0000
Received: by mail-wr1-x441.google.com with SMTP id r11so16345317wrq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Feb 2020 05:09:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=tvEL8XnoDDDhJQlXis+I/7w3i0GDb/4zBR+iz8nChnM=;
 b=ANCfJbi3lxVWxfXdaHspdZaflNulvt7zkwgyAowutB2HsQvuU0nsGoh5Wqx+vRWPja
 kwfDa8w0uJAx9KlP8c6HjNPXWh+d5hJ/F0oyUkPbUkwXMyiLUjcHO0WRD1Qzw4SYdmbQ
 joIPP+2RopZRPNnYWKojDLP0+vLxwyaFuwDJ2KySU0UaYLy4b3hBwMzDOVX44lHqYBgj
 QDUbGfbUl4NaVRK+XbzRSifmEgn0yIKeC2XGr5IeDo3G+Jvd7uAJUjNY5UpOeD5nNE1B
 qcMuFvjPkDbA3N/nj9PHB1RQTg3t1L5OzdkU43ZxOJAJnlCu+GxEzF7RAVm8PoO9fjAG
 pueA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=tvEL8XnoDDDhJQlXis+I/7w3i0GDb/4zBR+iz8nChnM=;
 b=gTe5SB1nwHcEYKoFgIXmghsSmXcIZw3RgtpPLSCxUpk5EKdyA819Vs2DBNFqLjliFO
 47Bz6wQMbatHa+5GXGUaAWVGmfd5LYCQNPbA2M8zvPLthY81FgaWLPsHTsZ2RPqB/UQU
 YOrOawwcfkqIgwN9Vq4TlkbWsrLt51NpyytIel4RuiI6gFbZAiG6o/oqfEoJ7GRzL8eB
 u7egNIUPZMdZLgoD097F3muuMJV/2u6DAT/58KK0ZhtCTy1im+rMzQpNWz9g6i0culSF
 dyuokqtqh9dp//OWeiXr8MiBK3Bu6jMfwIYOnUvQ6+rSVoyb5BjaoPlWn1EELhRx0kgT
 eJig==
X-Gm-Message-State: APjAAAUuDp0Tsto2jyObHd8WoRwk0DfqItq5bamKj9nvKov77SdxPiZ9
 I7nSYBJI5VvymnflNfh+G1k=
X-Google-Smtp-Source: APXvYqziHWt5hYUHIy4pUIFjT8JvtyU6AKXR/9w0NkI9dxoCdNmyzFFsR2OMMhFcHeJGw4h9m/JRIw==
X-Received: by 2002:a5d:54c1:: with SMTP id x1mr15424575wrv.240.1581858555439; 
 Sun, 16 Feb 2020 05:09:15 -0800 (PST)
Received: from felia.fritz.box ([2001:16b8:3868:8500:68a0:3d5f:3add:6e47])
 by smtp.gmail.com with ESMTPSA id x6sm15747748wrr.6.2020.02.16.05.09.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 16 Feb 2020 05:09:14 -0800 (PST)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Benjamin Gaignard <benjamin.gaignard@st.com>,
 Fabrice Gasnier <fabrice.gasnier@st.com>, Rob Herring <robh@kernel.org>
Subject: [PATCH] MAINTAINERS: adjust to stm32 timer dt-bindings conversion
Date: Sun, 16 Feb 2020 14:08:41 +0100
Message-Id: <20200216130841.4187-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_050918_373371_83362073 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lukas.bulwahn[at]gmail.com]
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Joe Perches <joe@perches.com>,
 Lukas Bulwahn <lukas.bulwahn@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The commit 56fb34d86e87 ("dt-bindings: mfd: Convert stm32 timers bindings
to json-schema") and commit b88091f5d84a ("dt-bindings: mfd: Convert stm32
low power timers bindings to json-schema") converted some files from txt to
yaml format in ./Documentation/devicetree/bindings/, but they missed to
adjust MAINTAINERS.

Since then, ./scripts/get_maintainer.pl --self-test complains:

  no file matches F: Documentation/devicetree/bindings/*/stm32-*timer*
  no file matches F: Documentation/devicetree/bindings/pwm/pwm-stm32*

So, repair the MAINTAINERS entry now.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
Benjamin, Fabrice, please ack.
Rob, please pick this patch.
applies cleanly on current master and on next-20200214

 MAINTAINERS | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index a0d86490c2c6..9175b59e2b4c 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -15923,8 +15923,7 @@ F:	drivers/*/stm32-*timer*
 F:	drivers/pwm/pwm-stm32*
 F:	include/linux/*/stm32-*tim*
 F:	Documentation/ABI/testing/*timer-stm32
-F:	Documentation/devicetree/bindings/*/stm32-*timer*
-F:	Documentation/devicetree/bindings/pwm/pwm-stm32*
+F:	Documentation/devicetree/bindings/mfd/st,stm32-*timer*.yaml
 
 STMMAC ETHERNET DRIVER
 M:	Giuseppe Cavallaro <peppe.cavallaro@st.com>
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
