Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FF0019B61
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 12:17:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8LExoEneGJS9R+f0EoaNOWcx5gSRyYifexneJbmzSu4=; b=mIUOVBLEuvTI3b
	4F683dWzfhKezDbrRuIM2agcvW++IhVghSU0v1ApKbEt61ZmtXit4N/McI1rv6PMGj1hRV0YYFvMM
	22Ef1HXbRKROiGPHTsRA2IkC7oZfL+9yUjOGVpxq4z5nwHJTbgt/zdslh5VovOAQOrqzpMwakDmo0
	liNSKkZdpuHmSRVWgfeXDnQ91VAuGCeGN1BHFYVEv70AO62S6jvhsVh7aJSmKc1JttKGUoxplZiv0
	VHRotJUvNdJ+jrRyuahjc/voPkmIPoP/EEaAgjCaLo3m7T9MWNlvHKdjy5Oxl5rhJmw0HaMXG20c3
	+3zxV1rqJ5SKtzx0HHrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP2ab-0008KA-D6; Fri, 10 May 2019 10:17:17 +0000
Received: from gate2.alliedtelesis.co.nz ([202.36.163.20])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP2ZS-0006rQ-91
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 10:16:09 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 38EB7891B3;
 Fri, 10 May 2019 22:15:42 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1557483342;
 bh=cBmgtWPtR8bm2vfMAsIZOxpjTEg5yj09yLAca0bGPtA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=09oJrTYjER+pQU8gRPvy7tUl7QtuvRCzYfjZI+XRQpmGnwsExS9DIBEi0gv9DN7rR
 C8TkNpK0HF4fD/ulmEiECSPHHPVZw2FP1tm/dk5B2ijW/mr4ULmNnuJjVgUcIJAkwb
 sf0jVWpXe808cMTuN9lXBpdVX9vJBF/HIdHGpglK8KWYulyYwF1yb5BYyW0Ta1ki65
 C42MNvkt6UNJ7u0k5RcGk+okqm+nNJStLoU8cwgFMSlU/e47s9tVXZKl2Swc2qeVEP
 mgamgeshHUi1byda7+PwznsbhMjNIIB47DD9+KnzTSUqUJdYyE+trUuKU1rWEzegjH
 4TRBaMJJo7+ew==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5cd54f4c0004>; Fri, 10 May 2019 22:15:41 +1200
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
 by smtp (Postfix) with ESMTP id 155B313EF9C;
 Fri, 10 May 2019 22:15:40 +1200 (NZST)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
 id 9E7871E1D5B; Fri, 10 May 2019 22:15:39 +1200 (NZST)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: linux@armlinux.org.uk, bp@alien8.de, mark.rutland@arm.com,
 robh+dt@kernel.org, mchehab@kernel.org, james.morse@arm.com,
 jlu@pengutronix.de, gregory.clement@bootlin.com
Subject: [PATCH v8 4/9] ARM: l2x0: support parity-enable/disable on aurora
Date: Fri, 10 May 2019 22:15:31 +1200
Message-Id: <20190510101536.6724-5-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190510101536.6724-1-chris.packham@alliedtelesis.co.nz>
References: <20190510101536.6724-1-chris.packham@alliedtelesis.co.nz>
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_031606_965541_6AE29E1E 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.36.163.20 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-edac@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The aurora cache on the Marvell Armada-XP SoC supports the same tag
parity features as the other l2x0 cache implementations.

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
[jlu@pengutronix.de: use aurora specific define AURORA_ACR_PARITY_EN]
Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 arch/arm/mm/cache-l2x0.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/mm/cache-l2x0.c b/arch/arm/mm/cache-l2x0.c
index 7d2d2a3c67d0..b70bee74750d 100644
--- a/arch/arm/mm/cache-l2x0.c
+++ b/arch/arm/mm/cache-l2x0.c
@@ -1505,6 +1505,13 @@ static void __init aurora_of_parse(const struct device_node *np,
 		mask |= AURORA_ACR_FORCE_WRITE_POLICY_MASK;
 	}
 
+	if (of_property_read_bool(np, "arm,parity-enable")) {
+		mask |= AURORA_ACR_PARITY_EN;
+		val |= AURORA_ACR_PARITY_EN;
+	} else if (of_property_read_bool(np, "arm,parity-disable")) {
+		mask |= AURORA_ACR_PARITY_EN;
+	}
+
 	*aux_val &= ~mask;
 	*aux_val |= val;
 	*aux_mask &= ~mask;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
