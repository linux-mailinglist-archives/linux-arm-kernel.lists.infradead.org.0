Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 411A2FC935
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 15:49:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VKzVJF11zx2lIyitsZmdqcEDxPHe/aTHOCA8McPi9bQ=; b=g0K+zWqeIp6/i2
	FDDlRXkQokxSgZ2+Hec+WqH21GMIu+JqMeSpBzxz3uans8fLX708tj+ICUqb54Al+kkFrBRTpMWx8
	vnLNyL14D/bCtmChbzO2jAb3F6g07lrnvmCi2dtMJJlLmM9bohYuzo5CnrI0L71q/s+tbRHXGuD5w
	ZA/Hsz2ACyEjTuhdq7p5DoFqAaddTkbhBdn03rpiDPvWc3jdgigwqN5zfqLBwxYJ+LXZgxpJitmEf
	RWSpyWSKqThy4nDIrpJtFacOhrUSNEIFD2xSwxJjl05SM18K+5bWam872vAevxcHH6RNp67QYkXFm
	kRrrSTbE7gdnAo0fjvdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVGQa-0001gK-7K; Thu, 14 Nov 2019 14:48:56 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVGQD-0001VC-ML
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 14:48:35 +0000
Received: by mail-wm1-x344.google.com with SMTP id t26so6212425wmi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 06:48:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2B2LpipVnpcikIQT0x1upjHHHGv7Y9LmS9XCwDXMgAk=;
 b=QzTOvJsUoxtW+SPuB8afNzO6eZZrc2SOdfCV0ACcBTuBEAcMOXqLF/nskjVebVDkyS
 BX3at3Hcvn7tTSNiAiodto6NtTirEPfXAcqEzetWCGqFahNxJNxJlV+84fzykRP6BeZF
 lh/gYiDte4hbIC6KK94Twg9ue+ejEsjUPBnTRRHlz98c/1MfkWcQcfMYf8IoioHMFwR7
 iSzpKj7p7VaPlkAgRhxVRedPzdDQWI3twMr320zX6QUgqWqiRstvHzYK/0VLuFZj7O8G
 8eJvGTjMoggxwYiwqhFotNXMqwRDn817oyWRxhb2GnBKuUSW+e6f022GCX9tC0fkQ/5l
 kLjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2B2LpipVnpcikIQT0x1upjHHHGv7Y9LmS9XCwDXMgAk=;
 b=fYn36/+S/Pe2ypuliwLsGG0ca+nCDZSrU+dTlKPM5SFDQKrudLTRvQfcM3L1p8kGHV
 9gJDCpfaSuldPr8QHtaGpm+vfngdsSEiQX5ZPgzrBt7huGmDBhfOtGeAw5BwF4OcYh68
 Fh4rAliisAu84xu6p5/82/Cv2jOoxbs8LlWLHN1Si0BD9cF9QT+9x8BZlrXDFVOK7cVC
 ttRU0x4grN/iI8ZYhvVZhIy5TGJImJHeCoJc3Oxuu8FH27S7TV8Jt4x58bcIM0/C6TQ4
 +zMUE6LFFnv4nifGf80PppUK2kG+rMNlBemxYKdIFlG1fcx0Rt7R5DJXquRniN4UScoL
 gUcA==
X-Gm-Message-State: APjAAAXAxD98bjEaqhQ6VGg/adOTiHeGupUnLf4HWxl4uc2WjV2Iz4pA
 Mx6Yo0J0t71irx66CXSWJog=
X-Google-Smtp-Source: APXvYqwVWKJ+CPBpdBrfIygTU0IjG98m6xBqS5XBMsByPkTK63A8CefzDxud1WiLu/6YFlckiteNRA==
X-Received: by 2002:a1c:650b:: with SMTP id z11mr8196107wmb.149.1573742912178; 
 Thu, 14 Nov 2019 06:48:32 -0800 (PST)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id v9sm7153223wrs.95.2019.11.14.06.48.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2019 06:48:31 -0800 (PST)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mark.rutland@arm.com,
 mripard@kernel.org, robh+dt@kernel.org, wens@csie.org
Subject: [PATCH 1/3] dt-bindings: crypto: add new compatible for A33
 SecuritySystem
Date: Thu, 14 Nov 2019 15:48:10 +0100
Message-Id: <20191114144812.22747-2-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191114144812.22747-1-clabbe.montjoie@gmail.com>
References: <20191114144812.22747-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_064833_726932_FED665EE 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The A33 SecuritySystem has a difference with all other SS, it give SHA1 digest
directly in BE.
This difference need to be handlded by the driver and so need a new
compatible.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 .../devicetree/bindings/crypto/allwinner,sun4i-a10-crypto.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/crypto/allwinner,sun4i-a10-crypto.yaml b/Documentation/devicetree/bindings/crypto/allwinner,sun4i-a10-crypto.yaml
index 80b3e7350a73..ae6dcfa795d1 100644
--- a/Documentation/devicetree/bindings/crypto/allwinner,sun4i-a10-crypto.yaml
+++ b/Documentation/devicetree/bindings/crypto/allwinner,sun4i-a10-crypto.yaml
@@ -23,6 +23,9 @@ properties:
       - items:
         - const: allwinner,sun7i-a20-crypto
         - const: allwinner,sun4i-a10-crypto
+      - items:
+        - const: allwinner,sun8i-a33-crypto
+        - const: allwinner,sun4i-a10-crypto
 
   reg:
     maxItems: 1
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
