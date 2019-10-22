Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3F06E0E22
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 00:20:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3uvke0TQyg4/5vmz+EMTDG/4feQdjzrvb/4f4eZpIYM=; b=JVRs3LExj3RQCW
	z2EXMpdhuwpyd/lgJ08AFHNLPqKjEeeLJ56AiY6ik3fZxNslmuMqokOoTuhWMNF+yn89EoWHzxmT7
	HzITBmHugdiqe4UEq+hEg0hOCVf7TQh9Mdgl95fHRfJchHImEqc+c3koX/doH7l6ZWS3g0Anw+JEU
	c9bosxwZmoOgumCY6Ox7MkeC7H2+CaGmA2h9Mwircdl5f1u8Pu/HqJ6TAL74F11M8NlMZhPqPWI38
	RNZkewCJMoXVnOum4mPwXu55hOnTEFgmbrsFTBE1oFw5Tlk0WpKnvgv5iqLxQPl4OroI8qDofwXQh
	V6D7YPFVCTo1MLTjfVSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN2Vm-0007bB-MC; Tue, 22 Oct 2019 22:20:18 +0000
Received: from gate2.alliedtelesis.co.nz ([202.36.163.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN2Vd-0006Iu-2F
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 22:20:10 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 07525806A8;
 Wed, 23 Oct 2019 11:20:02 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1571782802;
 bh=LtvxEKkSPHNyKRPgRkt0mLmoWuIQEMyTQMTbpJmYd90=;
 h=From:To:Cc:Subject:Date;
 b=JeFmbIAlCo9DhZjJ1FxwXIAL7L/7mQe2qKyW7ybOI51joj1Pmh57AuxCaFCFViCMQ
 a4ZuNy+bFVzXvi42zpzrL0FTE9hx5tDHNWoJzfQcyYVAvIQi05h4Ws7D8k2pwHYE1G
 ctXud6XnoELJLn1W14Ibis9/kttSzOBekfaMKKnDc7ja22R45ZMHvNXhi7eVUgKvcA
 3lxBpwJ7HYWJupmkT0hVxoBDLomIJ7K+ZT6K5IcEmndwiJlcpZyLZ1k1V13DU7v7km
 R67TZ3r7cPK/SQI71jO6agO4A5F/LtwGAMNsbIt4qCE83MXTh5BAKbqHRoQeA8VT/s
 S08MyFszQZBUQ==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5daf80900000>; Wed, 23 Oct 2019 11:20:02 +1300
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.20])
 by smtp (Postfix) with ESMTP id EAF1713EED4;
 Wed, 23 Oct 2019 11:20:03 +1300 (NZDT)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
 id BF38C280059; Wed, 23 Oct 2019 11:19:59 +1300 (NZDT)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: robh+dt@kernel.org, mark.rutland@arm.com, rjui@broadcom.com,
 f.fainelli@gmail.com
Subject: [PATCH] ARM: dts: bcm: HR2: add label to sp805 watchdog
Date: Wed, 23 Oct 2019 11:19:56 +1300
Message-Id: <20191022221956.10746-1-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_152009_309979_35D15594 
X-CRM114-Status: GOOD (  10.87  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Scott Branden <sbranden@broadcom.com>,
 linux-kernel@vger.kernel.org,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This allows boards the option of adding properties or disabling the
watchdog entirely.

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
---
 arch/arm/boot/dts/bcm-hr2.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/bcm-hr2.dtsi b/arch/arm/boot/dts/bcm-hr2.dtsi
index e4d49731287f..6142c672811e 100644
--- a/arch/arm/boot/dts/bcm-hr2.dtsi
+++ b/arch/arm/boot/dts/bcm-hr2.dtsi
@@ -268,7 +268,7 @@
 			clock-frequency = <100000>;
 		};
 
-		watchdog@39000 {
+		watchdog: watchdog@39000 {
 			compatible = "arm,sp805", "arm,primecell";
 			reg = <0x39000 0x1000>;
 			interrupts = <GIC_SPI 213 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
