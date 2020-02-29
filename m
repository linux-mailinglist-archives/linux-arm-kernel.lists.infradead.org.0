Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9B0F1746D2
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Feb 2020 13:27:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5cm9z/Wjb6RZynyGnbXcbpKBowMKXgZejxh3Elia10k=; b=Ey7om0csrcy6fCOm8xOZhVSlHP
	AxT+wUzABPlSa9eMz6olU5VHHyE8t/BkaG3LUnDnPTch0CzWHSZyZYabrtD2jwjJ+pKV9nTrJwgHP
	Zodi0IfRU33qTxqePXSB0SBhr5v0bCCFIF8m6o79sBG8ablBu/wvgmQiF+MpOP/7dVOY7hZ2ipfx+
	v2lfH2vFcoMAKF3tvI3TsRusGeoLyFGmaAl2WFoGMlg0gIgbTizNTAyZ1LoHKjI+hqOFevPOS+/RO
	9Bf9Wh6mz8PLu9DQvgPAL6YBwgUq+aOeU2LFbxO9e7Dm1C7XPrEFcUq+sRZEqXTpmJPUgh0UL7ar4
	2W3+IiEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j81Cn-00018P-Hi; Sat, 29 Feb 2020 12:26:53 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j81CG-0000rf-8G; Sat, 29 Feb 2020 12:26:22 +0000
Received: by mail-lj1-x22c.google.com with SMTP id e3so6362105lja.10;
 Sat, 29 Feb 2020 04:26:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=NmeW9ngS8eifN3sjrGPI1hv1F6A8Nf5uvazYyp+BS9k=;
 b=Ketu3fQ6Ze4H9aFJMlXmKKQN7tIVmjfhxYLU8gbB37F7Wx3uqV0mPGvtfLG5BKG5pS
 w3MLbR7v3B5J/+7fuwkHaE23gTJ11269NV/Bl/rBnkw+K8VaYyBkw60+3Hwki3lturdi
 eEth5epY1HMBxNhZumxrtjlIttVRIWJhRIajeJ1oHcmMJjGZgALhP0cBO1HwWA1n4ixN
 UHiJ6DGwnkUpnTOAaOdbgm6a0Ym8xYCVaohzfLrAWDFRMYlPJEVgeOfN2xaGIzQ2YieY
 U1o/MeSNdyAoWRRIz+//DsGmdufdH3VRv457vvhzXTCmi4WKLJGXvvtvZe/9L6EghIQF
 wnhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=NmeW9ngS8eifN3sjrGPI1hv1F6A8Nf5uvazYyp+BS9k=;
 b=d045+AG8LuZFjL8Bxa8pRdjODSbFlM83raj9T6WlzNqDzBGIJAP8dGF30j8XyKmDBK
 iWS1RqFv6AytHn5iy0NOlD+XX4eySBEcM1tmqz38gWK8oMfiIAd0PkwKMU0zj/jYoO/Y
 oXo8MAoTPydiOfs9GFgMOHAO0f0I01kaOAV+uNs89zcFeiGMKCjzfo0Be+HXBZvA73Tg
 uX8BZ8j/YEBl5HkG7YQEY0g7x/25WvxweNY9bEGo2geq10HYNPfDH1BxMFP0UPyomdig
 vrXW/SEWnZE8lIkjjVC8mlEsJKUpgk/7cPy6DXj3+dN2PIfl6u6BN1Qlv8n5nMyaw8Br
 x0pg==
X-Gm-Message-State: ANhLgQ1+u2f1YOBQbYPHzCMIen/xGixNQ7/bhh7FiPKv3g7ZI/Kzhaqs
 ftRHx1+4j10ahaJnmXXdJoE=
X-Google-Smtp-Source: ADFU+vsAnBstYODjBmvZJiZ3Gr/avovYtapZ6FgPl7iPSa0uXBWmmqSC4JBhAdk+wwTrXPY2n6A4kw==
X-Received: by 2002:a2e:3202:: with SMTP id y2mr6112641ljy.132.1582979178364; 
 Sat, 29 Feb 2020 04:26:18 -0800 (PST)
Received: from localhost.localdomain ([87.200.95.144])
 by smtp.gmail.com with ESMTPSA id r10sm8950775ljk.9.2020.02.29.04.26.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 29 Feb 2020 04:26:17 -0800 (PST)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v5 1/3] dt-bindings: add vendor prefix for SmartLabs LLC
Date: Sat, 29 Feb 2020 16:25:22 +0400
Message-Id: <1582979124-82363-2-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582979124-82363-1-git-send-email-christianshewitt@gmail.com>
References: <1582979124-82363-1-git-send-email-christianshewitt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_042620_294020_A68F8835 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:22c listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [christianshewitt[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
