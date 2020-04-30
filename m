Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 278201BF976
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 15:25:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W2twurivrsZ6A01trc9CaSwqtgxf04WJXGl70Y4xfys=; b=Pinmbl+yQDvwzO
	lHT9HiLU4DNB3wtMfqs81ta1dMg8QOjLklzfdfyRiFaGG3FS74ExNQNI1XPLQjI1AgbzmVqPbVThT
	lRtOrfhZNEyXzZanr9sY9J2yjrRb0q5JLUfYKHBSSSz/6An3thSNWJcJ35ycqiH+D8SL2BMmlfYf1
	UNsERM88hL/LV1khJnfpzIO1E5CLELCq7lVF72uypM4N1aRCJvPd+3qpjzYYztZgNq35UcuU23mZf
	YTInfwZsReAU+S7xXKfCd8NVkdcx2XMg7CMKWxbgMzzSx42INlSKx91VWEghRsP2NjQXKOZhDFO8/
	j+lawcQ1gwOsHhRo+KGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU9C5-0006OI-Cu; Thu, 30 Apr 2020 13:25:37 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU9Bk-00067p-0L
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 13:25:17 +0000
Received: by mail-pj1-x1034.google.com with SMTP id y6so683615pjc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 06:25:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BnAC1hbVK6lZpRP0Ydha1Gljhb6wHC7kfdrL2QnVe3Y=;
 b=H+Yik8dur/zMWlkhhhAZ/p0JRWaIhASGJgvuag9nSCNSjcwYXzm879vZ7bfluRWADf
 bZ5JshFMKBW/U5TDr8mkNdbmJZxwNSpe+0vLYPl2JftqVrb2g0jLrdYE+zJfRVNT4i0J
 l+t75wePe6LVyhYikGF1RsXYbARDri71Mi/jnOzZIko3kp3vREGXeOy9FQrXVgyV0BXM
 T34AVV29o1og4uA9tzroiez44NbRH0h6TkKOTLTa4rz2VHrp7iiW9TYjLIoWu7UlDnQa
 JRp8Se7lm4EdK+mtF3KaCGCBt04ZiO9obRxTArYZRTxBF7B+dCO7Q8ZaDHvJge3msRAT
 nbXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BnAC1hbVK6lZpRP0Ydha1Gljhb6wHC7kfdrL2QnVe3Y=;
 b=gefcVbiDGYe/xxks0yH9sUCWAhi5rHTGDHZWyGfS/T09pdKEGH0tAbx7vmn1I4r1OV
 WAvlSZqETLjWDDSQnLmHVWHCeAec0X3dUMDoTCq76FYzl2iagIOXsBFuegOnfXMqMP14
 3jaNrRd77dV0OfRtfCccofAaXPcSDlkNRVTtC6lLHRejHGS8FyRDQRL36JTBo0y2aIUl
 K9GahjBZaRDJ6yDtTL3CT1JDgr1WsNzNxhFscifSwcGojwEi7JkfOXiHTIkb4fbaho7f
 d6JrmJWo3Z5Z07Jml8tB/0J18kOd/deIHu08xFH/hhlo4+xI4xPKQILf+0xbdzrenJK7
 hJdQ==
X-Gm-Message-State: AGi0PubfyMpSHsc0LPCV0xCyn6n1Zpy9uO+POr3J2PH+ivbLOhZW9Rbn
 MnD6PdYqYL3gKwTm6MhIdtkLJQ==
X-Google-Smtp-Source: APiQypKTuuXpbq3lvIBZDBjmrimHR8+C7q0E8e5x+YC8XooF9fgbNjEhRu9FOfq2SpdDuFxJ99E2Ew==
X-Received: by 2002:a17:90a:f418:: with SMTP id
 ch24mr2988645pjb.68.1588253113474; 
 Thu, 30 Apr 2020 06:25:13 -0700 (PDT)
Received: from devnote (NE2965lan1.rev.em-net.ne.jp. [210.141.244.193])
 by smtp.gmail.com with ESMTPSA id e11sm3541893pfl.85.2020.04.30.06.25.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 06:25:13 -0700 (PDT)
Date: Thu, 30 Apr 2020 22:25:09 +0900
From: Masami Hiramatsu <masami.hiramatsu@linaro.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>, Rob Herring
 <robh@kernel.org>
Subject: [PATCH v5 1/2] dt-bindings: arm: Add Akebi96 board support
Message-Id: <20200430222509.c0c3699e42b3e2e3c290ceae@linaro.org>
In-Reply-To: <158824887998.2799.1402930732677315138.stgit@localhost>
References: <158824887998.2799.1402930732677315138.stgit@localhost>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_062516_053386_A4C5640F 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1034 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add uniphier-ld20-akebi96 compatible string for
Akebi96 board support.

Signed-off-by: Masami Hiramatsu <masami.hiramatsu@linaro.org>
---
 .../bindings/arm/socionext/uniphier.yaml           |    1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/socionext/uniphier.yaml b/Documentation/devicetree/bindings/arm/socionext/uniphier.yaml
index 65ad6d8a3c99..10a7f0752281 100644
--- a/Documentation/devicetree/bindings/arm/socionext/uniphier.yaml
+++ b/Documentation/devicetree/bindings/arm/socionext/uniphier.yaml
@@ -51,6 +51,7 @@ properties:
       - description: LD20 SoC boards
         items:
           - enum:
+            - socionext,uniphier-ld20-akebi96
             - socionext,uniphier-ld20-global
             - socionext,uniphier-ld20-ref
           - const: socionext,uniphier-ld20


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
