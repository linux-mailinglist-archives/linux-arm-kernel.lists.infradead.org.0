Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B02FB1B91EC
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 19:00:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=doNQ6sdb22tCANCSwn/mXYQ22tmVv2gpyv/Jk0Gu7Qc=; b=DkxxlT7Ow/j+E9
	YdX2qvI9SXsUl75DNwgb4qGPw6GftgHxDlQ3bojiz2NfrACmrEMpXwRlVP8SAmyN6yi44xfhqaM6W
	nAHALxlScMMKfJNDKqiGu9EE/DVwWrqchQUIv1ae4zH1dwRxSB6f9A+0EyTd399GnmdzwuETm9Vqa
	/VY298EO42uFctawgyziT+HaGynXcDIWLyuWx3YCMisl5XO8tZrfgt+ealQNn3GSaNbvPNVbd3VL4
	KomTLB8Jp4dmJeBRK17sX9WOYcc417YbEszkXwvvG/cYJ+EylisB6VaECeBlYixjOzg4fDKzZ1+Px
	Qz2ea6Yl9EZmQAjXoOFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSkdi-0005nR-UI; Sun, 26 Apr 2020 17:00:22 +0000
Received: from gateway20.websitewelcome.com ([192.185.60.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSkcz-0005WK-Vy
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 16:59:39 +0000
Received: from cm14.websitewelcome.com (cm14.websitewelcome.com [100.42.49.7])
 by gateway20.websitewelcome.com (Postfix) with ESMTP id 1B693400C5B78
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Apr 2020 10:42:11 -0500 (CDT)
Received: from br164.hostgator.com.br ([192.185.176.180]) by cmsmtp with SMTP
 id SkcyjvkymXVkQSkcyj5vYx; Sun, 26 Apr 2020 11:59:36 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=castello.eng.br; s=default; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=L9IFJwn+V53zeEbUx2QDuDodLJgNgaJjo+gyedcMwIk=; b=vfRw+43jptaURSLFe+ah82hW/S
 C48fJGnAe5lkMiyqZ5UogmGn/nkoDwZpi1hPF65+Cv3/dO47WGyLvqwU1xdt4mpgLXGZbnZecPKPY
 NCajx1rhsNSywhB+qz/EIj7eIyFPl84gb4nXMk2+KCraTNzpGD8fo8yda/03uKY4emC8CGCmw2kea
 jhCx2FTSpKMq1cJqC0Df0xbGTkaNpLVxBxdgYypk+N7Jjnpw74Wtl0QG+VFBavHTdOibXmkO8ewbV
 1poJiSahbyu7M17IdjBqc21f8UH15QJlsBZod5SpkR6PZcMPf9DXdX6GEwECKp3F6RmhYCW2nBGEK
 8GaWp5tw==;
Received: from [191.31.197.205] (port=35482 helo=castello.castello)
 by br164.hostgator.com.br with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92)
 (envelope-from <matheus@castello.eng.br>)
 id 1jSkcx-001TTf-St; Sun, 26 Apr 2020 13:59:36 -0300
From: Matheus Castello <matheus@castello.eng.br>
To: afaerber@suse.de, manivannan.sadhasivam@linaro.org, mark.rutland@arm.com,
 robh+dt@kernel.org
Subject: [PATCH v4 2/3] dt-bindings: arm: actions: Document Caninos Loucos
 Labrador
Date: Sun, 26 Apr 2020 13:58:34 -0300
Message-Id: <20200426165835.105970-3-matheus@castello.eng.br>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200426165835.105970-1-matheus@castello.eng.br>
References: <f9e48fba-0da8-7ba9-d44a-7909067a1df1@castello.eng.br>
 <20200426165835.105970-1-matheus@castello.eng.br>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - br164.hostgator.com.br
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - castello.eng.br
X-BWhitelist: no
X-Source-IP: 191.31.197.205
X-Source-L: No
X-Exim-ID: 1jSkcx-001TTf-St
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (castello.castello) [191.31.197.205]:35482
X-Source-Auth: matheus@castello.eng.br
X-Email-Count: 42
X-Source-Cap: Y2FzdGUyNDg7Y2FzdGUyNDg7YnIxNjQuaG9zdGdhdG9yLmNvbS5icg==
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_095938_124735_98C9E05C 
X-CRM114-Status: UNSURE (   5.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.60.19 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 Matheus Castello <matheus@castello.eng.br>, linux-actions@lists.infradead.org,
 linux-kernel@vger.kernel.org, igor.lima@lsitec.org.br,
 edgar.righi@lsitec.org.br, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update the documentation to add the Caninos Loucos Labrador. Labrador
project consists of a computer on module based on the Actions Semi S500
processor and the Labrador base board.

Signed-off-by: Matheus Castello <matheus@castello.eng.br>
Acked-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/arm/actions.yaml | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/actions.yaml b/Documentation/devicetree/bindings/arm/actions.yaml
index ace3fdaa8396..50dd976128dc 100644
--- a/Documentation/devicetree/bindings/arm/actions.yaml
+++ b/Documentation/devicetree/bindings/arm/actions.yaml
@@ -21,9 +21,14 @@ properties:
           - const: actions,s500
       - items:
           - enum:
-              - lemaker,guitar-bb-rev-b # LeMaker Guitar Base Board rev. B
-          - const: lemaker,guitar
-          - const: actions,s500
+	      - caninos,labrador-v2 # Labrador Core v2
+	      - caninos,labrador-base-m # Labrador Base Board M v1
+	  - const: actions,s500
+      - items:
+          - enum:
+	      - lemaker,guitar-bb-rev-b # LeMaker Guitar Base Board rev. B
+	  - const: lemaker,guitar
+	  - const: actions,s500

       # The Actions Semi S700 is a quad-core ARM Cortex-A53 SoC.
       - items:
--
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
