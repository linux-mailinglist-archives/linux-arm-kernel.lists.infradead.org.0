Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33AD4103E89
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 16:29:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b1OA/TMQOJqOeQi+2sZKHlXwc6BzNsk13uqrjFNKn+4=; b=mjFHyeUVoKWsfE
	J7M21XhfEafbj7gJDGLh6dFimqIl57CAnmFFXc1qkuxaAjXLJMKVrBEdQ4ujhrLJpy+yvE4xRCGiH
	SO9IsUQlFTKO6lAwd6ZjPPj9rMnIDUHhqPnzYkSZGecMU6k11YjhegII6z/Wm1Z6hugHoGWoaZ/Xu
	Fi14UB/WANRJsZKOdCU7Llr2TyapRPQsFZwSd/7uzb6PujayuGJAAuGXb3v0PNB6T46LHGjydJ11w
	1DVd8tnbcBbEjAmXzZQMkZMFshZ8DJ+7smDvKPCej5TMC6K132okF8h0mv/cp8vhZ3mbghix+WVb6
	94wjgBN+yoR9LldpiaJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXRuu-0000WO-EK; Wed, 20 Nov 2019 15:29:16 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXRuJ-0000HW-PC
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 15:28:40 +0000
Received: by mail-wr1-x442.google.com with SMTP id s5so308752wrw.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 07:28:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mQbJHJ0ZZ045TuFFH0OpDkzJ7tdcb7RCVuOKVisaGsk=;
 b=QnBKM8lFYAgiDp8LfIkxVzinvXpIuyW56oFqGpbPPZxnkZU6XH+vxyVCg4qx0klXcJ
 CYSM3C86zWGfP4zpnLTSfEEKpOJq5/aJG9FThkC1/W3Zd4ehndtC/i/Jq567GL1owuFb
 6vucVz9yPAmXMzHNkZjRm0smO3K0bqeB2Y2ezetgaHphWqV969ZVtaf9L4SvENjkFfDz
 GLV7NMZSBi9CCjHgp0sz9NVftykvrK176B40j3lMgu22suhpXX1cjyGfVNw3Pb4xwgre
 UxM3g3jlZw7YWWFIF9AwhQEugdOL8xdWy+no+wLv4X2T6uXx5Nw5L1WUstUN9iBZ5Au+
 LLgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mQbJHJ0ZZ045TuFFH0OpDkzJ7tdcb7RCVuOKVisaGsk=;
 b=enqh47tumW6CvmxcGSS9pJec34zmcwLunB9onPoUnsoromXqBMHVTKj52lmCMBesbm
 nWCGYEvah0nltvEGvabheTYCB5NSLUmyAFvJ6Ith3AkWGksanb2q7L35mqMHL3XMtqxV
 UmpW4c+DEPkyINPOm+VbFZUsd/dXw4HmqTlf0NUiV8OAxakC+g/2BiGAB7qX2B1szgJQ
 j3Tyuv38/zejf6NJnvOg+GAUAd7+iSH1o96l/IR1gybO2klBthZ1p9pcc1MyLbNFgQ3d
 mX8TArrzalraqSXz2cQzxYuODj6Tr9mra3YQebsoxaRu/RfPUz2ejZxUorNHml9VIq57
 64bA==
X-Gm-Message-State: APjAAAWyLGe1Fez8L86h5NWPu3ETOcCQYhDPgtsj8md7gFspbKI2g4j9
 bITHJ2oL/eb3zOXKqhjKLgA=
X-Google-Smtp-Source: APXvYqxh3eO87gK5Jlc/kSuzcfY8YgxD33Qo+k4FW0XQA3xxsWgsLM/AlJuIgFsEP2rpMDutlyvygw==
X-Received: by 2002:a5d:6706:: with SMTP id o6mr4098747wru.54.1574263718682;
 Wed, 20 Nov 2019 07:28:38 -0800 (PST)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id w4sm31797881wrs.1.2019.11.20.07.28.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Nov 2019 07:28:38 -0800 (PST)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mark.rutland@arm.com,
 mripard@kernel.org, robh+dt@kernel.org, wens@csie.org
Subject: [PATCH v2 1/3] dt-bindings: crypto: add new compatible for A33 SS
Date: Wed, 20 Nov 2019 16:28:31 +0100
Message-Id: <20191120152833.20443-2-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191120152833.20443-1-clabbe.montjoie@gmail.com>
References: <20191120152833.20443-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_072839_812340_5D466309 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

The A33 SS has a difference with all other SS, it give SHA1 digest
directly in BE.
This difference need to be handlded by the driver and so need a new
compatible.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 .../devicetree/bindings/crypto/allwinner,sun4i-a10-crypto.yaml  | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/crypto/allwinner,sun4i-a10-crypto.yaml b/Documentation/devicetree/bindings/crypto/allwinner,sun4i-a10-crypto.yaml
index 80b3e7350a73..5fc88fb3a91b 100644
--- a/Documentation/devicetree/bindings/crypto/allwinner,sun4i-a10-crypto.yaml
+++ b/Documentation/devicetree/bindings/crypto/allwinner,sun4i-a10-crypto.yaml
@@ -23,6 +23,8 @@ properties:
       - items:
         - const: allwinner,sun7i-a20-crypto
         - const: allwinner,sun4i-a10-crypto
+      - items:
+        - const: allwinner,sun8i-a33-crypto
 
   reg:
     maxItems: 1
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
