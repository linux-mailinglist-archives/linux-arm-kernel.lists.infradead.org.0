Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74986F94A1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 16:45:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3MtJ2a/WGS6I8cMnPhXKGPaPzXQ9f1sa2gWtaPbU1aY=; b=CU6riB3FKavHlI
	LCo8h2a+IZ2UF5ZH7p28fbTd70uWejNaNeCh2m2NsCBcdH2XMEYntz7wE2GNQSX0t6psyT+otOmSN
	KruZ8fhb13YTAhb3nrPbGfoVMm5MeOeWde5JOKh159DHDh3+QrdbN3OPUH2RJBw39QyDwOOUyWWR3
	Oa1jXoeswwIicUaenzFdbBWK7gcmGmq643uLappvaitP++nNftQ1XoE05vULtCwRuZqaWE3mCbFfs
	I1LjRWbeUcgWOBbpm+ttOB2t9qF/oOB2kf5EYfsos6NobTF/YiRtUCnF8UyF0OD+lh64uwRtngpke
	TpiAzGIC1jrY32lobE4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUYMM-0000AC-Iy; Tue, 12 Nov 2019 15:45:38 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1iUYMA-00008S-F8; Tue, 12 Nov 2019 15:45:28 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID xACFjDFd012295,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCASV02.realtek.com.tw[172.21.6.19])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id xACFjDFd012295
 (version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 12 Nov 2019 23:45:13 +0800
Received: from RTEXMB03.realtek.com.tw (172.21.6.96) by
 RTITCASV02.realtek.com.tw (172.21.6.19) with Microsoft SMTP Server (TLS) id
 14.3.468.0; Tue, 12 Nov 2019 23:45:13 +0800
Received: from RTEXMB03.realtek.com.tw (172.21.6.96) by
 RTEXMB03.realtek.com.tw (172.21.6.96) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Tue, 12 Nov 2019 23:45:13 +0800
Received: from RTEXMB03.realtek.com.tw ([::1]) by RTEXMB03.realtek.com.tw
 ([fe80::3d7d:f7db:e1fb:307b%12]) with mapi id 15.01.1779.005; Tue, 12 Nov
 2019 23:45:13 +0800
From: James Tai <james.tai@realtek.com>
To: =?iso-8859-1?Q?Andreas_F=E4rber?= <afaerber@suse.de>
Subject: [PATCH v3 1/2] dt-bindings: arm: realtek: Document RTD1619 and
 Realtek Mjolnir EVB
Thread-Topic: [PATCH v3 1/2] dt-bindings: arm: realtek: Document RTD1619 and
 Realtek Mjolnir EVB
Thread-Index: AdWZPZ4hLyuFH8slSvOL26B5ueH3TQ==
Date: Tue, 12 Nov 2019 15:45:13 +0000
Message-ID: <d655415326064b079b9d1d791024c725@realtek.com>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [114.37.182.66]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_074526_642912_19CD41CF 
X-CRM114-Status: UNSURE (   7.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, 'DTML' <devicetree@vger.kernel.org>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Define compatible strings for Realtek RTD1619 SoC and Realtek Mjolnir EVB.

Signed-off-by: James Tai <james.tai@realtek.com>
---
 Documentation/devicetree/bindings/arm/realtek.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/realtek.yaml b/Documentation/devicetree/bindings/arm/realtek.yaml
index ab59de17152d..2444eff2c3d5 100644
--- a/Documentation/devicetree/bindings/arm/realtek.yaml
+++ b/Documentation/devicetree/bindings/arm/realtek.yaml
@@ -33,4 +33,10 @@ properties:
           - enum:
               - synology,ds418 # Synology DiskStation DS418
           - const: realtek,rtd1296
+
+      # RTD1619 SoC based boards
+      - items:
+          - enum:
+              - realtek,mjolnir # Realtek Mjolnir EVB
+          - const: realtek,rtd1619
 ...
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
