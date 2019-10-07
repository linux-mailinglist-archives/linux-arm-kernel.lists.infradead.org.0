Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BBE0CDF4F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 12:27:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Achi5D7YhldVXAQS47Tq/2kJzw3XmTquW36kTDNnSBQ=; b=nbokl/SF3+8RpA
	36ep4qiY/iLzKUw84glat7GabgnF6phZrNgGD5d+siDelA3LGTDzARG/iBmOvVGIo2D2sfZmZBMob
	EOhe4mQaiZluVw7fXsVkwtg1nstclLyvYccUA1MOsgcvIeyG0cLFcGSCc25r3ZzS/zk5u7ZPcZI1W
	G5Eb6uVt1wY7Lo/L4ICl8c/BmjMXCsJYGLSxgdOTo6Za1qI3e5X0kKh3XF2tyGA1WJuwo9EUy7rKh
	KZEyN/QBeCsSyOUra8y/D19S9FQVHWCWSPBsGlp9PCNDQu8GbU1YbEe53EdnNwrHe6HUISDN9CW+e
	rhRIEUS8Gk//ExVSiyoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHQEF-00070T-6H; Mon, 07 Oct 2019 10:26:59 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHQDV-0006Rj-3W
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 10:26:14 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x97AKml6026153; Mon, 7 Oct 2019 12:25:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=cIh/B+QlT5Ufq0muAI8MFIZVmvtKiiVeIQjxYFeHv4U=;
 b=LqwFvsFeAgqwBt7UYWHD+Wuf+stCjxWldXnL+ZqqyTjv9PukoK6gjeJKuhHN9HtbFVk/
 qINdmJ8SJp4VZEqHmX8HX/OR77VCCUuep5iwlHbpCQWiz6LmXWlQaz8SRLbONPSU5q7f
 u5QLwVf799PJGBZoVV6fPP6+SEP+pv9mUyv98wqICqgKGn2A94yONlyyI7KdQFyNqdG8
 9zLr5o5ct1m4k2jtoSx/F0kDFB2tW9EcrQESlnfGgWY3iqekCks4uvtZvOsjgzpa0Zb9
 cyZF3E7mbm2nk9Ev6T7CqfrdURgjwdJhs5igOpnTtDmBAgj0UPQO5hiatsex1g1i1Gjl /g== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2vegxvhrn6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 07 Oct 2019 12:25:57 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id EB15210002A;
 Mon,  7 Oct 2019 12:25:56 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id DC7722BFE0A;
 Mon,  7 Oct 2019 12:25:56 +0200 (CEST)
Received: from localhost (10.75.127.50) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 7 Oct 2019 12:25:56
 +0200
From: Alexandre Torgue <alexandre.torgue@st.com>
To: Maxime Ripard <mripard@kernel.org>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, Chen-Yu Tsai <wens@csie.org>, Alexandru Ardelean
 <alexaundru.ardelean@analog.com>, Liam Girdwood <lgirdwood@gmail.com>, Mark
 Brown <broonie@kernel.org>
Subject: [PATCH 3/3] dt-bindings: regulator: Fix yaml verification for
 fixed-regulator schema
Date: Mon, 7 Oct 2019 12:25:52 +0200
Message-ID: <20191007102552.19808-4-alexandre.torgue@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191007102552.19808-1-alexandre.torgue@st.com>
References: <20191007102552.19808-1-alexandre.torgue@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG6NODE1.st.com (10.75.127.16) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-07_02:2019-10-07,2019-10-07 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_032613_450472_36E2AD56 
X-CRM114-Status: GOOD (  12.11  )
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
Cc: devicetree@vger.kernel.org, Alexandre Torgue <alexandre.torgue@st.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This commit fixes an issue seen during yaml check ("make dt_binding_check").
Compatible didn't seem to be seen as a string.

Reported issue:
"properties:compatible:enum:0: {'const': 'regulator-fixed'}
is not of type 'string'"
And
"properties:compatible:enum:1: {'const': 'regulator-fixed-clock'}
is not of type 'string'"

Fixes: 9c86d003d620 ("dt-bindings: regulator: add regulator-fixed-clock binding")
Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>

diff --git a/Documentation/devicetree/bindings/regulator/fixed-regulator.yaml b/Documentation/devicetree/bindings/regulator/fixed-regulator.yaml
index a78150c47aa2..7725cedf1538 100644
--- a/Documentation/devicetree/bindings/regulator/fixed-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/fixed-regulator.yaml
@@ -22,16 +22,20 @@ allOf:
 if:
   properties:
     compatible:
+      allOf:
+        - $ref: "/schemas/types.yaml#/definitions/string"
       contains:
-        const: regulator-fixed-clock
+        const: "regulator-fixed-clock"
   required:
     - clocks
 
 properties:
   compatible:
+    allOf:
+      - $ref: "/schemas/types.yaml#/definitions/string"
     enum:
-      - const: regulator-fixed
-      - const: regulator-fixed-clock
+      - "regulator-fixed"
+      - "regulator-fixed-clock"
 
   regulator-name: true
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
