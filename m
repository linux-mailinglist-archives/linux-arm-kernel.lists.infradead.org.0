Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 010C21E6323
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 15:59:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cXhNS00P+icLvjDvrUXFHwu1hZROTUB8/hOEQClq/GY=; b=qussD2OosGG09k
	A+/jlbczcLjlsbyBFaNFMnXfpoA028S1WuNgD9UprK9Bn8zFrr10LC/+AOmJ7r4PG/luUhhWoBup+
	L8XvlLI2yPklUo2yg68wtF9lmG8KadQdswkojJWt7ufBDw8BrE5LoVym6EK1Sc3uWjW+WtZ0ZP9Qp
	zFnL7tg6NVdoaB5K5+Js5v1dcbyXgc4T+xkEn8R/UOFvrzS40Ncy6gO22xbntSolTtaPt9bSeRlJq
	BNnl+TDVmhEk27ZlSMJ/TODM90k9hkm7gvXGIt0Ogx43C3cFvqT/T9JVsmg5xWENvf923PhqVcGsI
	iY1CU3KIQ+hJRhzPGcPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeJ4B-0000Cc-7N; Thu, 28 May 2020 13:59:27 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeJ3r-0008WN-7w
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 13:59:10 +0000
Received: by mail-wm1-x344.google.com with SMTP id n5so3313169wmd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 06:59:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=z4Mht0hOJ/x269vYNUbhZmvFvBpXKo/z9k8ZE3MlgiM=;
 b=miP7UbEnqGNLwbuCqX3AjlcLiVr/EEW+iM9ZpMml9MEg9sEtBhsE1bnK0HHD2uRhfF
 ADhtu3NmeTdU1c/V4b/dzY7krJThryWtxqu9nO06W+kDnFqn9IS9Sfknoz7lVfmo899S
 eDnBBRKKKyv6X5DgQFNmSm6ReWWv49Rd3VQbPJ2J0GJTRVXxJVR4yKEPRHo/F/K2rrur
 wtwbTHAPGLqhAzcaiKZCw8Sxw3dIK8TCHAMTYW2WnbKUh9rmUlyYwoziHLLhZm6zhmnw
 XokQF5+qlAi+Y/cFuLWs/+HMfeny26GRAeu553j7xxdsSymRXQPvz3pB+w/CKf3GFHJX
 0S9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=z4Mht0hOJ/x269vYNUbhZmvFvBpXKo/z9k8ZE3MlgiM=;
 b=RJXUWLkkICkRFjDcVJzHee9KvcZlEj+nTcwUaGPOwZShno1VXEmA1elDyv3jHTRNNB
 VGNQ9G/vQ0fCFBio981xHUcSH6BlZQMzcJrGKMSvEP0T2Kda+NsTCD/grM51R5w3rp1R
 b2xLJ9aoYwMLXl/Vfsc5BgDPU+pK8PziHyGRV/5yWeKaEQu1xl96Y19SqvNP79oucNDB
 pg1ZcH2W5Gg/IV++V4TiIExxMb2SYm9jz0m2m2ns9bzqf4O58tvUGzRmfocfPR0rly/9
 wVOlE/TlF4IQVRl0I9BchfqwqTAlgF9hKJUeyWwZwgLR3ot/l/qQlCQ/TmgF5sNTsZwm
 SjBA==
X-Gm-Message-State: AOAM53249hU9SYaSGf41u6qW3ZmehuZXT6aeHJM3mFulijaG6I0ARdcW
 wyPvkLdK5TIXMExcR+DmdRFziw==
X-Google-Smtp-Source: ABdhPJwa2kiLYWJHItumPfhGeufMSpJNKjrDcHYRwjVY19oFSl+hS6FpEyyraLAC5F2EWT/iMGIlLA==
X-Received: by 2002:a7b:ca47:: with SMTP id m7mr1760608wml.173.1590674345652; 
 Thu, 28 May 2020 06:59:05 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id f2sm6395917wrg.17.2020.05.28.06.59.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 06:59:04 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH net-next v2] dt-bindings: net: rename the bindings document
 for MediaTek STAR EMAC
Date: Thu, 28 May 2020 15:59:02 +0200
Message-Id: <20200528135902.14041-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_065907_369573_9C376F4E 
X-CRM114-Status: GOOD (  10.61  )
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
 Stephane Le Provost <stephane.leprovost@mediatek.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Fabien Parent <fparent@baylibre.com>,
 linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

The driver itself was renamed before getting merged into mainline, but
the binding document kept the old name. This makes both names consistent.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
v1 -> v2:
- update the id field as well

 .../net/{mediatek,eth-mac.yaml => mediatek,star-emac.yaml}      | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename Documentation/devicetree/bindings/net/{mediatek,eth-mac.yaml => mediatek,star-emac.yaml} (96%)

diff --git a/Documentation/devicetree/bindings/net/mediatek,eth-mac.yaml b/Documentation/devicetree/bindings/net/mediatek,star-emac.yaml
similarity index 96%
rename from Documentation/devicetree/bindings/net/mediatek,eth-mac.yaml
rename to Documentation/devicetree/bindings/net/mediatek,star-emac.yaml
index f85d91a9d6e5..aea88e621792 100644
--- a/Documentation/devicetree/bindings/net/mediatek,eth-mac.yaml
+++ b/Documentation/devicetree/bindings/net/mediatek,star-emac.yaml
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/net/mediatek,eth-mac.yaml#
+$id: http://devicetree.org/schemas/net/mediatek,star-emac.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
 title: MediaTek STAR Ethernet MAC Controller
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
