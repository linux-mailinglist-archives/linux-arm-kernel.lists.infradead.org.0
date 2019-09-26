Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC078BFBF9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 01:29:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MusDmFHMml1n44BPl1EVjT+c2LK0nFORQntQTkD5Hto=; b=twxKxzsDX+LIPo
	3uGNUepsRxN/6tCYz6684giovnFCOx08r3FwWfe2ZTvpk39oVR8cQ4gUkU4c1A3RaZ00kJZA8Uc70
	8NXqOcc3+SpgiQIvi7UuN145o+iax0shN58fq/nxDHCWulV1RVfJ53rPqXjWzFnpx8k6niyDw/5Tz
	Jkp4lyZHRmMqAHkf7tC56YjCsYhflLrtWKznwyYPgSmuEDYafdzVU/PpvQU7cjLS2kjgPA9GUWkKg
	xOkhHk9dwOwH5xBNYA+4FieGnJq9n2E3Zu1A/ZZu0hccTs4tjHgx00YZSHngl5sxyCD8Vwi0iahWc
	nU2EzMwdka2SX+gzR9TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDdCd-0001R1-9P; Thu, 26 Sep 2019 23:29:39 +0000
Received: from gate2.alliedtelesis.co.nz ([202.36.163.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDdBh-0000ih-Sb
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 23:28:43 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 9FD898365B;
 Fri, 27 Sep 2019 11:28:26 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1569540506;
 bh=l6bAe+xtedR+bltocjAHq5456NfUIQhNENNdw3LBmWI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Onq1sluNBuPq6cASMObOcHpSgaHREZ06kCSE+4G6DHCUBwZE8JWDj/kL7dsgr2Jzd
 Z+CLfKZ1Kc2J+ZwrK1vrQl9T47Uh9nrjVWaEtPcJI/ZvFmgzY454BqtqDMhEOBv0wt
 v3nKtEfHX4Ze78Tl05NTkPDO4MeGSxfrjoC2AVIgJb1DppCRlCGngqc3UmDqAZAPIb
 51LruL8F4o/D8IMeTMDLRZ1Cy+Q7DYdgWy+TMqn0VroEp0QdIrKwnl6D1mGtiEY2Xn
 zi4dwzBCtNYqQ9z0tn/vAJh1hH5vN+I65utbpFTonKq95vzwq9FgekqHDSJk7mguk+
 WVPvn8Hn8jo8w==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5d8d49980001>; Fri, 27 Sep 2019 11:28:26 +1200
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.20])
 by smtp (Postfix) with ESMTP id 3006713EEFB;
 Fri, 27 Sep 2019 11:28:28 +1200 (NZST)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
 id 7638B28003E; Fri, 27 Sep 2019 11:28:24 +1200 (NZST)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: jason@lakedaemon.net, andrew@lunn.ch, gregory.clement@bootlin.com,
 sebastian.hesselbarth@gmail.com, robh+dt@kernel.org, mark.rutland@arm.com
Subject: [PATCH 1/3] ARM: dts: armada-xp: enable L2 cache parity and ecc on
 db-xc3-24g4xg
Date: Fri, 27 Sep 2019 11:28:18 +1200
Message-Id: <20190926232820.27676-2-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190926232820.27676-1-chris.packham@alliedtelesis.co.nz>
References: <20190926232820.27676-1-chris.packham@alliedtelesis.co.nz>
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_162842_191090_0E8280A9 
X-CRM114-Status: UNSURE (   8.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.36.163.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable L2 cache parity and ECC on the db-xc3-24g4xg board so that cache
operations are protected and errors can be flagged to the EDAC
subsystem.

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
---
 arch/arm/boot/dts/armada-xp-db-xc3-24g4xg.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/armada-xp-db-xc3-24g4xg.dts b/arch/arm/boot/dts/armada-xp-db-xc3-24g4xg.dts
index df048050615f..4ec0ae01b61d 100644
--- a/arch/arm/boot/dts/armada-xp-db-xc3-24g4xg.dts
+++ b/arch/arm/boot/dts/armada-xp-db-xc3-24g4xg.dts
@@ -33,6 +33,11 @@
 	};
 };
 
+&L2 {
+	arm,parity-enable;
+	marvell,ecc-enable;
+};
+
 &devbus_bootcs {
 	status = "okay";
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
