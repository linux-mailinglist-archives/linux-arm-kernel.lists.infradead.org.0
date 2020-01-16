Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8C8513DE80
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 16:20:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tRosAc1nqOWvqlJ+QPALP6XYpyZfzDz/pNHDIFqfX3o=; b=A0YDwvhfgV/kCV
	rKCYbYE/7yNcyqmDv9eQxZASd69BaF0Vg0s0/IEkfhHeH0fjAaOFonPEWkJwTiVOns7fIglotU+tt
	efIpA5mfcRQflFNYuEtcYsVlnuqUTFiTvSJiPiaH880oR1t+1taIgNphbG03inZw56nbFP28PhY00
	bPfEQVsQdz25oN1xL/gmwFs7Hx011GIvv71HonU8c7nKrV0YpImpp7ZHnjfTqB6apRD3dlWlJZVsY
	rZ2hLbwcbfiMnUfJaZIYMHGIO+l/U3/3bDSjTicANHQ1xbTYyF8iHTGoQxqQcTQ2y+JV5R5OyEE0z
	Gm4frif0RhrdQXA4G6cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is6wq-0008NC-Tz; Thu, 16 Jan 2020 15:20:40 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is6vx-0006gx-8U
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 15:19:53 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00GFHVJs003155; Thu, 16 Jan 2020 16:19:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=C+b4GqJxMy8KX4XkFdZFKvRKGdv1UhxpiPcv4vNpcww=;
 b=ghYmlgyKI6/OLX1Ml6QIqVdAXqrTA7cFlSuUO8cJbxI941U98/AJrJu1rrmRXcVTju8w
 4RbUOE9d2mTwX5bcWNtbuxn6oJvVtgaoHPx9jX2ue2jwL6RISxuN3Aof6E3CHfIOY2oa
 KlzdyFEingtnjnJV2tgVhjZ4D0FfNUns3UGBMPuplG/WDScWmfTwJKfLd34aCrc3nJym
 bdyJ6c9MaELpknjBPRCHIB2zuOriT0CrFuxG66eKzVs19Iv6shx7Rlr6GXu+z6193Mbb
 Bzpf/ZFu7MC6iRoR7dThq7mVtOLlGu2SpWo5KOHe7VIYtu6BCMH61pVumVa3doXJklfj mQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xf7fp1tyq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 16 Jan 2020 16:19:22 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 59D5910002A;
 Thu, 16 Jan 2020 16:19:21 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 4BC1021ECF3;
 Thu, 16 Jan 2020 16:19:21 +0100 (CET)
Received: from localhost (10.75.127.46) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 16 Jan 2020 16:19:20
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <daniel.lezcano@linaro.org>, <tglx@linutronix.de>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <linux@armlinux.org.uk>, <p.paillet@st.com>,
 <linus.walleij@linaro.org>
Subject: [PATCH v2 1/2] dt-bindings: mfd: Document STM32 low power clkevent
 bindings
Date: Thu, 16 Jan 2020 16:19:17 +0100
Message-ID: <20200116151918.20987-2-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20200116151918.20987-1-benjamin.gaignard@st.com>
References: <20200116151918.20987-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG8NODE2.st.com (10.75.127.23) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-16_04:2020-01-16,
 2020-01-15 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_071945_596753_AA1FE5BB 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 Benjamin Gaignard <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a subnode to STM low power timer bindings to support clkevent driver

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
version 2:
- document the bindings inside stm32 lptimer yaml

 .../devicetree/bindings/mfd/st,stm32-lptimer.yaml          | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/st,stm32-lptimer.yaml b/Documentation/devicetree/bindings/mfd/st,stm32-lptimer.yaml
index 1a4cc5f3fb33..535e0b40cdf9 100644
--- a/Documentation/devicetree/bindings/mfd/st,stm32-lptimer.yaml
+++ b/Documentation/devicetree/bindings/mfd/st,stm32-lptimer.yaml
@@ -81,6 +81,16 @@ patternProperties:
     required:
       - compatible
 
+  clkevent:
+    type: object
+
+    properties:
+      compatible:
+        const: st,stm32-clkevent-lp
+
+    required:
+      - compatible
+
 required:
   - "#address-cells"
   - "#size-cells"
@@ -115,6 +125,10 @@ examples:
       counter {
         compatible = "st,stm32-lptimer-counter";
       };
+
+      clkevent {
+        compatible = "st,stm32-clkevent-lp";
+      };
     };
 
 ...
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
