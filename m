Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63A63151898
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 11:11:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JEWbNNwQ7gUO2dH1KOh4aK2CE8UX5XjKRMKdV9MxgDo=; b=fO8gaZxjFCqJHd
	LIQU/YOqCM5co9yDaCI7I/9PwIPvDKpnvKuXuaapC7gYZrg8CGwpE6+XCV4U7bt5pnF8yy7SaQtSg
	661w2Z988H0nAb5lyXm/nMOpXaulTQJLb7dAIR1fr6WpYrqS65DlnsmOHFIRpEoC74oun4lA+nEf1
	CAVQHlAO5Wv+kxZChDE50zTIg4cjpb4HusuNkB9+Znt2USluEI535JlLlDtMbmeiIXXHLQBCwRrKv
	Rd2vmMKWldVjf2sRXGVBzGcbpYRSazj+eAUXkWtSoK/oNHB6Bx9mvEhE/ojsBVGo2/0WSDB/QSW9T
	AxHhw9D/aRkcl96wEOBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyvB1-00015O-Fg; Tue, 04 Feb 2020 10:11:27 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyvAN-0000RI-32
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 10:10:49 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 014A5eas027812; Tue, 4 Feb 2020 11:10:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=LKI8G68MpBnrq3cMYnWhas9QoAyLUbV2xIYeGqpMMjQ=;
 b=Lsm6BuNWh6WT4pYMHdTJHrK2sHcXbMG9yVG/sZYxSqwQ8H7yXDXCFTKf4P8FXb1+6rci
 mVnmzXFeVrXOEvet4ooBwWqnzwpF8y4/Dx5BPXkeae11AEE03D8sTFDPeroaOi2pVhwy
 FR0vzizXk3sFMjJRErsNaiu/G19geAFyyrhoSp3CXblzJmzzqDuFiGLGmZYmYZKTFLDo
 VeUnYKo0K92T8bQ2aulVndYCzNtBqVyzp3q7O1SJjUiohbQ4XtbFFjlxrSi8fj9QlHmD
 AIkJKq2IenpXK6P9n1ksYQBPX8gY11f5uNtyUFGjuDnX7IXRFnttaNHvLWjLwQQIbDkZ 4A== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xw0018516-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 04 Feb 2020 11:10:37 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 3A97D100034;
 Tue,  4 Feb 2020 11:10:31 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 1FB952AD9D9;
 Tue,  4 Feb 2020 11:10:31 +0100 (CET)
Received: from localhost (10.75.127.44) by SFHDAG6NODE2.st.com (10.75.127.17)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2;
 Tue, 4 Feb 2020 11:10:30 +0100
From: Olivier Moysan <olivier.moysan@st.com>
To: <jic23@kernel.org>, <robh+dt@kernel.org>, <olivier.moysan@st.com>
Subject: [PATCH 1/4] dt-bindings: iio: adc: sd modulator: add vref support
Date: Tue, 4 Feb 2020 11:10:05 +0100
Message-ID: <20200204101008.11411-2-olivier.moysan@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200204101008.11411-1-olivier.moysan@st.com>
References: <20200204101008.11411-1-olivier.moysan@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG2NODE2.st.com (10.75.127.5) To SFHDAG6NODE2.st.com
 (10.75.127.17)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-04_02:2020-02-04,
 2020-02-04 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_021047_426735_E9E36B34 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lars@metafoo.de,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, pmeerw@pmeerw.net,
 knaack.h@gmx.de, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add vref supply support to sigma delta modulator.

Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
---
 .../devicetree/bindings/iio/adc/sigma-delta-modulator.yaml    | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/sigma-delta-modulator.yaml b/Documentation/devicetree/bindings/iio/adc/sigma-delta-modulator.yaml
index a390343d0c2a..2afe0765e971 100644
--- a/Documentation/devicetree/bindings/iio/adc/sigma-delta-modulator.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/sigma-delta-modulator.yaml
@@ -8,6 +8,7 @@ title: Device-Tree bindings for sigma delta modulator
 
 maintainers:
   - Arnaud Pouliquen <arnaud.pouliquen@st.com>
+  - Olivier Moysan <olivier.moysan@st.com>
 
 properties:
   compatible:
@@ -21,6 +22,9 @@ properties:
   '#io-channel-cells':
     const: 0
 
+  vref-supply:
+    description: Phandle to the vref input analog reference voltage.
+
 required:
   - compatible
   - '#io-channel-cells'
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
