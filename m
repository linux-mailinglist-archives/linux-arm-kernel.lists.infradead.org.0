Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B4C17C9B6
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 01:27:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dbEJZzuCiXlyZb0HxznaECKZnJQBtvrCI3UVFZbzDFU=; b=EfmgIEq85y7BCe
	hIq4aWWzVBghqUF1dZHqO6yipTcXaLc7jP5lipjx6T+30+K9atwiWkRziBztAhcL3U+Qh+59qmBOF
	YbWxg4U2sPriWYbSj22AQ/ea2jSX+/pim1KUWCBKjt+EkntAA3Ap+qqWIfMvWDDjL45itDyov6WNv
	b8Dhx5ouThlSYJuQYIppaPcGqdFrsbsELVGKCVf1RurfD/Gdaec9OJE0LEDcLJcTiunKTV0W3g55T
	fzHVTJPnU5kgsap7xPnSawXrNJ10+gpYsHafBJHGoUnQtTXv0LVTeWMkPQMLE9EmGNbOKyAYAHIWQ
	F0r5+52tjAXx9NdUQjfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jANJg-0002Td-VT; Sat, 07 Mar 2020 00:27:44 +0000
Received: from gateway31.websitewelcome.com ([192.185.144.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jANJZ-0002T5-PW
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Mar 2020 00:27:39 +0000
Received: from cm16.websitewelcome.com (cm16.websitewelcome.com [100.42.49.19])
 by gateway31.websitewelcome.com (Postfix) with ESMTP id B65B920432
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  6 Mar 2020 18:25:53 -0600 (CST)
Received: from br164.hostgator.com.br ([192.185.176.180]) by cmsmtp with SMTP
 id ANHtjQxsg8vkBANHtjKMa2; Fri, 06 Mar 2020 18:25:53 -0600
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=castello.eng.br; s=default; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=a0fH3cAF828a4S/+b1Nbsier8zx9VXfLEXnuCfekO00=; b=EpxtDvLgSuOZQ7sofuiVpGCRFs
 6RdXWHY6RtMMGx1ldUhC+j9iMeVI2Thg2V2qKefOhji1J8Qls+nEs2pciJuVztr3GeIF+4bwbEr/0
 WCC3tDwVv64wzTFiUECIyj7QVpevzHme/2+Q0OG0vnbIPE/7hu3xLfaawTQBXUhFf1OTJ0F1jS0vA
 8ruTO/pYEZ+PXoLzlHZJ+gFPITFDb8+JV4V2fXrKWSzGJ9aGRihO/Q/4Plv3PEDbmEWJ2lkEkiW7X
 zY2Hg9RDsMmEH6/nj5udwibpccWTO9QBBWfEGAMrR4LyQOszG69v29MqRalxmxw3CTTvWPTl6psFL
 JHE9iyWA==;
Received: from [191.31.207.132] (port=48872 helo=castello.castello)
 by br164.hostgator.com.br with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92)
 (envelope-from <matheus@castello.eng.br>)
 id 1jANHt-001YDM-4h; Fri, 06 Mar 2020 21:25:53 -0300
From: Matheus Castello <matheus@castello.eng.br>
To: afaerber@suse.de, manivannan.sadhasivam@linaro.org, mark.rutland@arm.com,
 robh+dt@kernel.org
Subject: [PATCH v2 2/3] dt-bindings: arm: actions: Document Caninos Loucos
 Labrador
Date: Fri,  6 Mar 2020 21:24:52 -0300
Message-Id: <20200307002453.350430-3-matheus@castello.eng.br>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200307002453.350430-1-matheus@castello.eng.br>
References: <20200229104358.GB19610@mani>
 <20200307002453.350430-1-matheus@castello.eng.br>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - br164.hostgator.com.br
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - castello.eng.br
X-BWhitelist: no
X-Source-IP: 191.31.207.132
X-Source-L: No
X-Exim-ID: 1jANHt-001YDM-4h
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (castello.castello) [191.31.207.132]:48872
X-Source-Auth: matheus@castello.eng.br
X-Email-Count: 19
X-Source-Cap: Y2FzdGUyNDg7Y2FzdGUyNDg7YnIxNjQuaG9zdGdhdG9yLmNvbS5icg==
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_162737_878802_B1AFD3D9 
X-CRM114-Status: UNSURE (   5.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.144.96 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Update the documentation to add the Caninos Loucos Labrador. Labrador
project consists of a computer on module based on the Actions Semi S500
processor and the Labrador base board.

Signed-off-by: Matheus Castello <matheus@castello.eng.br>
---
 Documentation/devicetree/bindings/arm/actions.yaml | 5 +++++
 1 file changed, 5 insertions(+)

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
--
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
