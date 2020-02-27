Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65ED317295E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 21:17:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q3LKrpDMSUD3p26qm7aRDE4W/7XUTI4UQV1gTcct6cY=; b=JpVc7hNCyc1vkF
	aUgzL3dOfVzhh0oqifFvImg4M9YnJymhT+HzZhEkh3SpEbWeh8QIzQctS6osddYbRK2AI1I+iivJb
	yPhKYMvq0o0PaRXV4l5GpsAPVf0ocK1KXlmFKg4GTi7xsDeUuUPk+uSpUze1vVzSyKdKbWEOOTtGz
	jjqA2x8wzcvHo7gf4K9DKLvGRqrmYEXvl01cjsA0Z9IccTZR3+tixTM5nX7/UZET86B86MfAldOoh
	Uij5Ii73rVLXYbzJMyDciW6FcVVtO54lTHlLGe6xxMf0xHyPJ3Z3gN66d9sYT17VzI8XKjtHrCNh0
	2QLa98e5o4mdzFvCR2ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Pae-0003Vz-Ea; Thu, 27 Feb 2020 20:17:00 +0000
Received: from gateway20.websitewelcome.com ([192.185.68.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7PaH-0003Mk-Cs
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 20:16:39 +0000
Received: from cm10.websitewelcome.com (cm10.websitewelcome.com [100.42.49.4])
 by gateway20.websitewelcome.com (Postfix) with ESMTP id 538BF400D20EA
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 13:02:02 -0600 (CST)
Received: from br164.hostgator.com.br ([192.185.176.180]) by cmsmtp with SMTP
 id 7Pa5jWScaEfyq7Pa5jbybP; Thu, 27 Feb 2020 14:16:25 -0600
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=castello.eng.br; s=default; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qoO2qsaKDDkITqEnriWbR9MEmzTrNQCsMHlNkFBYJ7c=; b=tcjbM6nsjXMnB1U50YJqJ0Xpq+
 qnb6sizE41zDg6WWUl6+PgNcBLucBF18ilJ0ekjStyF0ZK+qs9laPZeAs4HULnEnQJAPcUYmJhJh3
 iNANGLYl0YuK6SGCRzH2kwFqTtzFPqn065TDn2wj+R8SSpz9sqOrctyNxJ7dlKjIGHuo/lxgZJ7gW
 4QE368So677rBzP33fUqD1UHd+Z5E1rOKM1ck0LnzvKzZWMkTYPLf2n/ieBR1K0zTtFiUfv6wle1v
 dp+OsSgF9hYl1BG91kGTsc5PPX0iJg/vbfN2VOy0Txc/DcxMMZxqGE8gjOwKZQLcNBPMf5yjUSZCA
 mj2+zzYA==;
Received: from [191.31.195.84] (port=40030 helo=castello.castello)
 by br164.hostgator.com.br with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92)
 (envelope-from <matheus@castello.eng.br>)
 id 1j7Pa4-002xJo-Nh; Thu, 27 Feb 2020 17:16:25 -0300
From: Matheus Castello <matheus@castello.eng.br>
To: afaerber@suse.de, manivannan.sadhasivam@linaro.org, mark.rutland@arm.com,
 robh+dt@kernel.org
Subject: [PATCH v1 1/2] dt-bindings: arm: actions: Document Caninos Loucos
 Labrador
Date: Thu, 27 Feb 2020 17:15:56 -0300
Message-Id: <20200227201557.368533-2-matheus@castello.eng.br>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200227201557.368533-1-matheus@castello.eng.br>
References: <20200227201557.368533-1-matheus@castello.eng.br>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - br164.hostgator.com.br
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - castello.eng.br
X-BWhitelist: no
X-Source-IP: 191.31.195.84
X-Source-L: No
X-Exim-ID: 1j7Pa4-002xJo-Nh
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (castello.castello) [191.31.195.84]:40030
X-Source-Auth: matheus@castello.eng.br
X-Email-Count: 12
X-Source-Cap: Y2FzdGUyNDg7Y2FzdGUyNDg7YnIxNjQuaG9zdGdhdG9yLmNvbS5icg==
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_121637_571427_1F337EB8 
X-CRM114-Status: UNSURE (   6.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.68.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Matheus Castello <matheus@castello.eng.br>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update the documentation to add the Caninos Loucos Labrador
vendor-prefix and items that were included in the device tree files.

Signed-off-by: Matheus Castello <matheus@castello.eng.br>
---
 Documentation/devicetree/bindings/arm/actions.yaml     | 5 +++++
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 2 files changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/actions.yaml b/Documentation/devicetree/bindings/arm/actions.yaml
index ace3fdaa8396..1b131ceb884a 100644
--- a/Documentation/devicetree/bindings/arm/actions.yaml
+++ b/Documentation/devicetree/bindings/arm/actions.yaml
@@ -24,6 +24,11 @@ properties:
               - lemaker,guitar-bb-rev-b # LeMaker Guitar Base Board rev. B
           - const: lemaker,guitar
           - const: actions,s500
+      - items:
+          - enum:
+              - caninos,labrador-bb # Caninos Loucos Labrador Base Board
+          - const: caninos,labrador
+          - const: actions,s500

       # The Actions Semi S700 is a quad-core ARM Cortex-A53 SoC.
       - items:
diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 9e67944bec9c..3e974dd563cf 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -167,6 +167,8 @@ patternProperties:
     description: Calxeda
   "^capella,.*":
     description: Capella Microsystems, Inc
+  "^caninos,.*":
+    description: Caninos Loucos LSI-TEC NPO
   "^cascoda,.*":
     description: Cascoda, Ltd.
   "^catalyst,.*":
--
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
