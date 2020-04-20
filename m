Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E78171B063E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 12:08:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W2twurivrsZ6A01trc9CaSwqtgxf04WJXGl70Y4xfys=; b=UnWitnrRiuvAZY
	5Soqt7eZw5ZOP8BSY/BGWOysGBTlSeGj8xMrGIM65RiDLetbU6UqYAWf5qxRz1U1broQvPqGUsnVp
	JA6Jy1yImDruRsZqUyxRDlWrHbaYunyPNsLFQWNAol1jRjVdKXIoDnxAxINMTnGQBwQj2/Bgyq1Ky
	suZbxJgmBS0s6R+JPlMQr5qNNUxSqDAzGMuYami2XxPJe7vTp+T8pNHeVnn1mk2u4bLww3Q4rISP8
	M0zZ1jfj2iyoO24my2dRQZe4Innp1XHAfqChW/lpgx/M9YJGB0p7oB6MsenAy8DE5yujkHKqiU8xd
	RPvAPEqRwnS8p/icIxrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQTLl-0000yQ-S6; Mon, 20 Apr 2020 10:08:25 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQTLS-0000n3-Oy
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 10:08:08 +0000
Received: by mail-pf1-x429.google.com with SMTP id p25so4691571pfn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 03:08:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BnAC1hbVK6lZpRP0Ydha1Gljhb6wHC7kfdrL2QnVe3Y=;
 b=xc9/HiwgNtxKwEl9kNuhFcDrZtg4ATTKgCsGx+X/7B9TAY/qx0kUN8eWvQzztM2YoG
 yjs8sgJOWhuwViY0IjbHuX8yJC5TmgYcPEMksn6wXFcwZbPIyplQBevcEQDaLr7FXhUv
 9DyUJQHKCJAZvK5ukXfCqS4i6ISSzPGKVzV/nw4Fi+hUFThT+TpkwrP4nhhqiMLPOyQ4
 Fk1o3rbJTbFveetwXmnY6kwCbjUuZurU2hUfi6PPJg4Lxg8iwYQr/RUlFk++nr/dbRnP
 L6IBrv7U80ImkIzMUmoS/+NwTx84jUSTE+i4lIUUKREbUskv4n5CTmkk8Pq+7DDNVe9t
 QVvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BnAC1hbVK6lZpRP0Ydha1Gljhb6wHC7kfdrL2QnVe3Y=;
 b=pxmsTyDjwAMgjmt+hEfpu/nauMkgd3nPvzmn04NuCe7McGsG5XEJq64kNY4Gx6E6gu
 8sVJzVSjoqCm8Vb29hLuvTj6wXZ6KIBVAqJVRQO7bgS6mXdGIXTYStUxb/JG4WTbOqyV
 MpvJHhuljFnag+32teTY6pfpEGGhPcbrLMWZMOFFDrWz9pqSv19yfZBuWIKYGiT+4Sz5
 Jin52qnTwYcOD2JLbNt0zZdVvu29CwsWLE1C5rp8UFXMQ7NiCqqlvqf3kdq+wYTOYUmZ
 cHq16UvfkGmmlmJLgYw6882FvVzS5VY4ql9xHzVboP4qHB7lBGY12t7vR9P1M2Tc7K67
 6Y4w==
X-Gm-Message-State: AGi0PuZ2LBbR7x6pR3g+ofK4GXDTWF1MWrJl9qSiCo1hHeDVhbqalJOL
 qrUa00qnsNgq6K0kHbLtVJiFXg==
X-Google-Smtp-Source: APiQypINB3tIGNy5nKYAXVoh1nU6G/P+BmATCOUamr3GuOstIVxTWm0RI7LtZqnTrDDEC/ImaepLCA==
X-Received: by 2002:aa7:9690:: with SMTP id f16mr3469930pfk.20.1587377284109; 
 Mon, 20 Apr 2020 03:08:04 -0700 (PDT)
Received: from devnote (NE2965lan1.rev.em-net.ne.jp. [210.141.244.193])
 by smtp.gmail.com with ESMTPSA id o15sm728045pgj.60.2020.04.20.03.08.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 03:08:03 -0700 (PDT)
Date: Mon, 20 Apr 2020 19:07:41 +0900
From: Masami Hiramatsu <masami.hiramatsu@linaro.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>, Rob Herring
 <robh@kernel.org>
Subject: [PATCH v2 1/2] dt-bindings: arm: Add Akebi96 board support
Message-Id: <20200420190741.c029df34dd1354fa146a28bc@linaro.org>
In-Reply-To: <158737719165.27947.6617937231903079086.stgit@localhost>
References: <158737719165.27947.6617937231903079086.stgit@localhost>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_030806_852545_F8C5D10B 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:429 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
