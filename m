Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF38F9FFCF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 12:26:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EsdSFuz7jTMwuN17YwMK+BB0J3WySWafUjyjr0EVwN8=; b=U+GbUmZ3+f8Ybi
	QNKsmx7uJWC1I9j5r5VTgEu6uz37G+/PP5FX/j6TBvfInkd0wacMVxwJo/FhcyK1fH5XuyEwcuaHI
	vLXu/3nzAvnLKGTCiTh8R/aEHT1pXBYeo9JuMxr0vW4HMuvv5Uf1AogEKeA2Iko5tDLKs9pb9OdNY
	kwse9s2IoLRN5T+GW94qVg5JQu+tkJEJV8lLpbQJ2Dj8gTvy9ZRvu9eqMVP1SUMfvPOOdhb6emFh8
	lBVdeuMIh83UzdotyySoaiADogjMUW75exg7NAJ4vi6Kdk3nSwl9CAhw8nAVB150dPG6Mm2W35C/Q
	5txt729DW+TR/SUKYqIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2v9f-0005UT-1V; Wed, 28 Aug 2019 10:26:19 +0000
Received: from mta-02.yadro.com ([89.207.88.252] helo=mta-01.yadro.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2v7n-0002y3-Ex
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 10:24:27 +0000
Received: from localhost (unknown [127.0.0.1])
 by mta-01.yadro.com (Postfix) with ESMTP id 07E1F42ECE;
 Wed, 28 Aug 2019 10:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=yadro.com; h=
 content-type:content-type:content-transfer-encoding:mime-version
 :references:in-reply-to:x-mailer:message-id:date:date:subject
 :subject:from:from:received:received:received; s=mta-01; t=
 1566987860; x=1568802261; bh=87VA5h5waSDTUF2CVQN/4Wwh9JYi5VNM4bl
 aFGLhSMY=; b=ftjErji2haH19AzZFUWJf73ObDZba5bpxrSSs758XIdfDgACCZk
 jPlBP+oacojsvpJcH/Aq0ofG5bq36R++M4CPVB+RcmRQYJxUXVx26Iyk/bGeYABI
 10uOLFbik5rkwD2UUHG7HkcmPXm+H/zjYStNE9UUWOOxCX8ZpzlFMMas=
X-Virus-Scanned: amavisd-new at yadro.com
Received: from mta-01.yadro.com ([127.0.0.1])
 by localhost (mta-01.yadro.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id maoMV8-Mbqiy; Wed, 28 Aug 2019 13:24:20 +0300 (MSK)
Received: from T-EXCH-02.corp.yadro.com (t-exch-02.corp.yadro.com
 [172.17.10.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mta-01.yadro.com (Postfix) with ESMTPS id D90F3404CB;
 Wed, 28 Aug 2019 13:24:20 +0300 (MSK)
Received: from localhost.dev.yadro.com (172.17.15.69) by
 T-EXCH-02.corp.yadro.com (172.17.10.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
 15.1.669.32; Wed, 28 Aug 2019 13:24:20 +0300
From: Ivan Mikhaylov <i.mikhaylov@yadro.com>
To: Guenter Roeck <linux@roeck-us.net>, Wim Van Sebroeck
 <wim@linux-watchdog.org>
Subject: [PATCH v4 4/4] aspeed/watchdog: Add access_cs0 option for alt-boot
Date: Wed, 28 Aug 2019 13:24:02 +0300
Message-ID: <20190828102402.13155-5-i.mikhaylov@yadro.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190828102402.13155-1-i.mikhaylov@yadro.com>
References: <20190828102402.13155-1-i.mikhaylov@yadro.com>
MIME-Version: 1.0
X-Originating-IP: [172.17.15.69]
X-ClientProxiedBy: T-EXCH-01.corp.yadro.com (172.17.10.101) To
 T-EXCH-02.corp.yadro.com (172.17.10.102)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_032424_453868_7C86A8A5 
X-CRM114-Status: GOOD (  13.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, openbmc@lists.ozlabs.org,
 Alexander Amelkin <a.amelkin@yadro.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Ivan Mikhaylov <i.mikhaylov@yadro.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The option for the ast2400/2500 to get access to CS0 at runtime.

Signed-off-by: Ivan Mikhaylov <i.mikhaylov@yadro.com>
---
 .../ABI/testing/sysfs-class-watchdog          | 34 +++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/Documentation/ABI/testing/sysfs-class-watchdog b/Documentation/ABI/testing/sysfs-class-watchdog
index 6317ade5ad19..675f9b537661 100644
--- a/Documentation/ABI/testing/sysfs-class-watchdog
+++ b/Documentation/ABI/testing/sysfs-class-watchdog
@@ -72,3 +72,37 @@ Description:
 		It is a read/write file. When read, the currently assigned
 		pretimeout governor is returned.  When written, it sets
 		the pretimeout governor.
+
+What:		/sys/class/watchdog/watchdog1/access_cs0
+Date:		August 2019
+Contact:	Ivan Mikhaylov <i.mikhaylov@yadro.com>,
+		Alexander Amelkin <a.amelkin@yadro.com>
+Description:
+		It is a read/write file. This attribute exists only if the
+		system has booted from the alternate flash chip due to
+		expiration of a watchdog timer of AST2400/AST2500 when
+		alternate boot function was enabled with 'aspeed,alt-boot'
+		devicetree option for that watchdog or with an appropriate
+		h/w strapping (for WDT2 only).
+
+		At alternate flash the 'access_cs0' sysfs node provides:
+			ast2400: a way to get access to the primary SPI flash
+				chip at CS0 after booting from the alternate
+				chip at CS1.
+			ast2500: a way to restore the normal address mapping
+				from (CS0->CS1, CS1->CS0) to (CS0->CS0,
+				CS1->CS1).
+
+		Clearing the boot code selection and timeout counter also
+		resets to the initial state the chip select line mapping. When
+		the SoC is in normal mapping state (i.e. booted from CS0),
+		clearing those bits does nothing for both versions of the SoC.
+		For alternate boot mode (booted from CS1 due to wdt2
+		expiration) the behavior differs as described above.
+
+		This option can be used with wdt2 (watchdog1) only.
+
+		When read, the current status of the boot code selection is
+		shown. When written with any non-zero value, it clears
+		the boot code selection and the timeout counter, which results
+		in chipselect reset for AST2400/AST2500.
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
