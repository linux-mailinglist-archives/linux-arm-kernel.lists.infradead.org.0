Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2755B1E046D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 03:31:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WKgV075IjGgJ7b+BxW0zTZDBSwAxUXw2nnzFmh9ZaDA=; b=rTKBGnZgvm1zjn
	X0MIZtbW+pioMAVFiXwdlG8Wgilf1/d30do2yPlqFuZ4GVq4l20gSRekucQElytq1Bio3pTTF/D04
	mg7NDIP5TM7o9nyOSMv4f/gwppvmo43DzHOxqKyup1O+YUbXQPnARkZySvsUKW6pW6U00lHrkhFZH
	STzXjtEMWFU825LVzxnTkdu8Oc/QIx+j8TEwVa11W79z30BBKIOi1nFm7lxFTblMbRjRL6e5yor3R
	8YWkFnIyH8pYKMb8uItwghJB0b890i2v9+ZG4yjcV1YkvqHKiOUqXNhLINqLb9tVvWx+5kXN+eqLc
	MOecFOlJawy0fhpekDnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd1xc-0007bl-4R; Mon, 25 May 2020 01:31:24 +0000
Received: from gateway20.websitewelcome.com ([192.185.50.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd1x2-0007Ho-3I
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 01:30:49 +0000
Received: from cm12.websitewelcome.com (cm12.websitewelcome.com [100.42.49.8])
 by gateway20.websitewelcome.com (Postfix) with ESMTP id 20521400C57AE
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 24 May 2020 19:11:54 -0500 (CDT)
Received: from br164.hostgator.com.br ([192.185.176.180]) by cmsmtp with SMTP
 id d1x1jqK651s2xd1x1jKrWA; Sun, 24 May 2020 20:30:47 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=castello.eng.br; s=default; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=E45E1Vj+A/NTDChq03v5v3U7lpRMI2oRWZNhEsEFnGQ=; b=a6KU2szuPIjfoOQt8Wu2X8q5VP
 LuAZEH+8p+NDoRRABl0NlePlU3NLsWKsM1Uh8wj2alIjrzDoRNibqMB3T4ko21Rvd7j+FxFLdCmb/
 DTtSMucvKYUvieP94F5iBe8bfOUHTcFgXksWgdAcBWcupioVeezVIzIm9sAAeWHCESv6gyqmjew1G
 jrVsG1XXEFecb3EAp43A20UWoul2WcUGT4xP3w7QgJ00HJGLnN7H9FCTbBi7E6qIpjAjFZjHNoG/u
 CxTKG5XQ4/0LBoPPssSBu3ZVvcCftDmlmZSYNUOdzYfEa+4MVLK34IvsNyHYo0YC8p1Uw1CjpDemk
 LGDYjOQA==;
Received: from [191.31.196.240] (port=34284 helo=castello.castello)
 by br164.hostgator.com.br with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92)
 (envelope-from <matheus@castello.eng.br>)
 id 1jd1x0-004Dik-F5; Sun, 24 May 2020 22:30:46 -0300
From: Matheus Castello <matheus@castello.eng.br>
To: afaerber@suse.de, manivannan.sadhasivam@linaro.org, mark.rutland@arm.com,
 robh+dt@kernel.org
Subject: [PATCH v5 2/3] dt-bindings: arm: actions: Document Caninos Loucos
 Labrador
Date: Sun, 24 May 2020 22:30:07 -0300
Message-Id: <20200525013008.108750-3-matheus@castello.eng.br>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200525013008.108750-1-matheus@castello.eng.br>
References: <20200525013008.108750-1-matheus@castello.eng.br>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - br164.hostgator.com.br
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - castello.eng.br
X-BWhitelist: no
X-Source-IP: 191.31.196.240
X-Source-L: No
X-Exim-ID: 1jd1x0-004Dik-F5
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (castello.castello) [191.31.196.240]:34284
X-Source-Auth: matheus@castello.eng.br
X-Email-Count: 28
X-Source-Cap: Y2FzdGUyNDg7Y2FzdGUyNDg7YnIxNjQuaG9zdGdhdG9yLmNvbS5icg==
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_183048_278763_3F8B863B 
X-CRM114-Status: UNSURE (   5.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.50.28 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.185.50.28 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Documentation/devicetree/bindings/arm/actions.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/actions.yaml b/Documentation/devicetree/bindings/arm/actions.yaml
index ace3fdaa8396..2187e1c5bc73 100644
--- a/Documentation/devicetree/bindings/arm/actions.yaml
+++ b/Documentation/devicetree/bindings/arm/actions.yaml
@@ -19,6 +19,11 @@ properties:
               - allo,sparky # Allo.com Sparky
               - cubietech,cubieboard6 # Cubietech CubieBoard6
           - const: actions,s500
+      - items:
+          - enum:
+              - caninos,labrador-v2 # Labrador Core v2
+              - caninos,labrador-base-m # Labrador Base Board M v1
+          - const: actions,s500
       - items:
           - enum:
               - lemaker,guitar-bb-rev-b # LeMaker Guitar Base Board rev. B
--
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
