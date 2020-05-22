Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E4221DE641
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 14:08:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fdDvQJXm5QX8a7vpIgXdkznTdDxnsU4rh63dbzN5lzA=; b=SukBEeBgqmzM+h
	VRjVmMFqLo0mj5O6wfzlGHDm9tEYxoT4K33BsZkdEV2Bc9DGgsluYg4zAQQ1w73qcOoMxLxne3DWT
	N6pB9/Jzgxn52cs7XjUQcH8hjSsD6ews21xYT0qLAttHdCCbyUcnpm9iyUDkrolRDWxwRDq4e1dF9
	W1mdJ1dRn9LvU9G6h7I/9WNBfv7jCpVHwppngGC6EH1W9Cy56O0oCR5ICvwXoj9cxLMhMdXaP7JjI
	gfEKatv5sDUMlwPgBoLMZ6Qw96QBs+jlu13zoHoeVMkAV/5crWAJJtkGoIkGZhsCag07df4MuRH10
	1+gugSf267oz2i0NzP1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc6TB-0003jQ-BT; Fri, 22 May 2020 12:08:09 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc6SU-0003Hh-Mi
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 12:07:29 +0000
Received: by mail-wm1-x344.google.com with SMTP id w64so9557418wmg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 05:07:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SYamWCGpGqZL1TdMciPU3s1N0hd2ppZ++0/IfJ1caGY=;
 b=z09pplDzbGu8zzHYZwmUG8WYuN5QnZoIThbQYmhBMWEdeanmgiQmeEaOJAAsMBH5co
 Vc9SJuMdt4nXdaLIqtA5xDnvUSVBnfcy8+HUHt+7XekAI9e36/NJH0qHuP3oPkZSLY28
 LxPlZYlsDw4W1ckHD0Es7lqGaXILSlhaTD2WhJ45RQCKFru6rVsyfbYXPtNE6rVrSQRh
 IE0Bnp/5oPPCepTQASBnHTtpJDXwfdNkKtDoTYs/yLZbblVMktuo8Y5utgxPeh07MRaN
 2JzjgOFu1d/xixp3xct7DO4Siv8YXryeMOIM+u9ZZWnonUMTeRGBc7bTnOhr9As4Kam8
 2eFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SYamWCGpGqZL1TdMciPU3s1N0hd2ppZ++0/IfJ1caGY=;
 b=O2R7EFTyFPh0IuoOt0apu/HqgG/kUvIdiCNzb6nsTGiWp5heWoG8TaFpWMcKhC2PGE
 VcKbEcKuLTgUFSkxjwXVBVL+rykZd4rVra2rM2znpp8aLJaEmTUi8aljsxJ+XGDDiVnQ
 Eipb6HMMZOOoYsz3L5qPve+WbqEf5/77ND9l5wgw0pctPHDvOlIGhibASCyBVoQFrLrx
 wnvBYujLr9jAGaYZO3S59Pkc7f/p9iuqt+WlGkWcYGg19LboXCq91hmeRPgdxEQ9wstS
 Qg0z0Q8kKBBR0vS/MnkLizuVdl3WiZFGw1Gk755Mdxs+oln8Z45sVGMvZtYbh/p30NUG
 w3Wg==
X-Gm-Message-State: AOAM533VVwQhdPRk2NSjY6ct9dJhP8dLaTZTrUfTbP7F9EP40fk/ToSW
 LDxwdMj0aviNCogyDI8v71cw0w==
X-Google-Smtp-Source: ABdhPJw0hJl3cQP5flK/6nQax5Ceb2AK3ZRifZ2de+tpHbVYDyDSC0mU0F2KKkWDNbi4cMfQO0bWhg==
X-Received: by 2002:a1c:5402:: with SMTP id i2mr14046163wmb.185.1590149243221; 
 Fri, 22 May 2020 05:07:23 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id f128sm9946233wme.1.2020.05.22.05.07.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 05:07:22 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v5 02/11] dt-bindings: add new compatible to mediatek,pericfg
Date: Fri, 22 May 2020 14:06:51 +0200
Message-Id: <20200522120700.838-3-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200522120700.838-1-brgl@bgdev.pl>
References: <20200522120700.838-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_050726_761963_722D9248 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
