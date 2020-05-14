Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26C1A1D296A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 10:01:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fdDvQJXm5QX8a7vpIgXdkznTdDxnsU4rh63dbzN5lzA=; b=fpywUfeEzYy04L
	DJxna4tYYmHMdjmeGE5eWk77McvKNkZZUv+bfVrpKA9sZIvitAoj68rYIRZyOeFnihZT5dDhbqIlB
	I32s4RAImUgA3zthW6l6YVQ6nVhjwi72zB4ofsZlSgh1T0jg7L1FX420cNQMs6GaZ4KN3Sxt1XBfE
	4TQYUQApry2JEbMi2RYxFtfdA9eqml/JE620I6Tk0GcPyPYm8XuyCNBD5HcunLFLV0kLvx3cNWSEu
	funipLaT0yZXVZdUkKLbDAzr+zBaFDRTVe4J0ksIcEVeohlUrnFTZ71wtazW/xcWlIqhPk+YchtUY
	pc1tePgRSI/rG3LrEpmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ8ns-0004VT-V3; Thu, 14 May 2020 08:01:17 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ8mn-0002mM-4Z
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 08:00:11 +0000
Received: by mail-wm1-x342.google.com with SMTP id y24so31346824wma.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 01:00:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SYamWCGpGqZL1TdMciPU3s1N0hd2ppZ++0/IfJ1caGY=;
 b=P+q8w1goUvDD7gR6IchyV00vB3pVcrHK1pDbN1eYY/VOYjgNmBkbQGQCYfXXV+eFP6
 4nf1Uy7o9a0eFzUc8hHDpXmqBGjs705jAZsWOO2j2XQAD5HlSFiVxGUeeRognXurIqJe
 FPIsufHTJ4GuF9r/qJTFwlF/Fy+VxgGQq58XWZHFrz4MxV/et4oTsm0Oxzuw/HD9nc34
 8yEi+GIBBK+Y9nC12SRDgelejI8LlrfC6x25QcgYArrW4SBm3ZgFtZI/79b1TeNOtPUw
 LLPr2Q1C3Wtpg+JZ6L/7KyJwhrYoECFXR4fNhARaTt4abxJ9QBuZXWngiMdxSPFy1aIr
 7f6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SYamWCGpGqZL1TdMciPU3s1N0hd2ppZ++0/IfJ1caGY=;
 b=hYONinwWLC5BL3ADdoH9EPtegYheG3LF5Rde4bLjXl0h0gW0QWOy3D8RKqFURdaDNd
 3LLdZZ2sTz/C2CgO8M1nPqhUZ8SfXd3vsLIN1Y2A61FXytuNed6GuCkRkJ0XdDBH5bCz
 AfYAe1JRlY6v1eKgqs475NrzWgqmGYt9EBhS9saUJA6w8UyFSAINrskFvRKEK8d7V60X
 UVRa5x9XEUkyCOc8y9hDz9jOKV6kCMVsK710Nar6WSvrrTAvBMzT9gtt9UQKasy25ief
 64qotEKvtmx9BPcslvhCSKEGhgovxgZiKm8QM8PFVpi4UCnwlJZRY4Ukan6cwQTEGfBZ
 4h+A==
X-Gm-Message-State: AGi0PuYMRI3Yw/i/rXbmJOSUTx32nNajwGHIeHTzviy0kjfBFfxvdHG7
 +k8l51N6/+589yYM5VgN+I7nPA==
X-Google-Smtp-Source: APiQypLkU2jxnKbFs8gBgz1ml8D56KMxK6JlEHw7o56nvtnY9O7hz8Oxa+M4tm30hkKVFqKw1ft9IQ==
X-Received: by 2002:a1c:f012:: with SMTP id a18mr45714052wmb.41.1589443207361; 
 Thu, 14 May 2020 01:00:07 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id 81sm23337446wme.16.2020.05.14.01.00.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 May 2020 01:00:06 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Jonathan Corbet <corbet@lwn.net>, Rob Herring <robh+dt@kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v3 02/15] dt-bindings: add new compatible to mediatek,pericfg
Date: Thu, 14 May 2020 09:59:29 +0200
Message-Id: <20200514075942.10136-3-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200514075942.10136-1-brgl@bgdev.pl>
References: <20200514075942.10136-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_010009_181648_2D1D6BC7 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org,
 Stephane Le Provost <stephane.leprovost@mediatek.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

The PERICFG controller is present on the MT8516 SoC. Add an appropriate
compatible variant.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 .../devicetree/bindings/arm/mediatek/mediatek,pericfg.yaml       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,pericfg.yaml b/Documentation/devicetree/bindings/arm/mediatek/mediatek,pericfg.yaml
index 1340c6288024..55209a2baedc 100644
--- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,pericfg.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,pericfg.yaml
@@ -25,6 +25,7 @@ properties:
           - mediatek,mt8135-pericfg
           - mediatek,mt8173-pericfg
           - mediatek,mt8183-pericfg
+          - mediatek,mt8516-pericfg
         - const: syscon
       - items:
         # Special case for mt7623 for backward compatibility
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
