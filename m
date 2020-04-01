Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CB9019B84A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 00:16:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PsrE4ewTJNOAZcClvlfp2mEH+Q8k/1r2EpcA7jopqdg=; b=MYDZKj57ObMFKk
	YdR6KdwUTxYZl8gHW3J67FOTKcpCr4oyYkLSA+Ian++WN+Kom7uQbkGFS8ENK/OA4X9vU4czIrnuQ
	0Ey9zReL/9CPMxZTUC04+nj8ptLvldSO/n+e62Pgyx9gcsu2Yzp0UyA8iG1QbG492MdVecAlD4ytU
	hMQF+6cl9OCuau1BVzimEOs4QrF9iRaQjMG7z7EJzPL7LPHV9EXHJWGm2XZ0YySaNSSWO4moiDMJH
	jhGqw1SSlG3/dOBAAJHb1r0qq9Es2ML7ZFDDhjVwO4NLIao0SkmyXwkODGjBVwaEUfcYOmpkgdLgl
	TJvuxAhlLqLVmEAFsH5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJleO-0006Qv-SC; Wed, 01 Apr 2020 22:15:56 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJldq-00062V-Lj
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 22:15:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1585779323; x=1617315323;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=roL7pAuCeMrEZzb4jmaWDZnAb9YNN/kPLY9E/yXOwSY=;
 b=bPdbAwVWus86d/2VEQWssNEMXJp9QYp+RHQoOtYA+MuIWkDPBXXi3pnx
 /0aLHUC6fGpVBi+539JYlXMY3zkFh8PmWBSKfzF/C3HwFcEOkhz+sz4E+
 tdD1RRCkV9/qPsXrmwYRP8JZ4XE1Sd5irDzPX7wD9dwonR/OE2YzTt/nI
 Jd2Vbc8iAP3UfehyWtIYye0dVJrfsId4MtmweCa5sUQvzRy3+bMk6QcRU
 yfZcHtOODq3degmsD1HuLkBjBj0ydZSxsr88vmBKxCa3Rlld4sV8Mrvng
 CB0JTuEWSTXBj/Dp1D3kwRS8ZjGotGK6N2hit56Qb0Mf0ojTyC+BGWXqx A==;
IronPort-SDR: vvADddCKU7kNsFIzXcUbE7USJheeTdMZyZITxJSybmvRyMmYssg7QDrD405rrEpdHWrSL+Z8TZ
 wEI3VWAmmwshtLWNJM/clfXC1N/s5C7kMBXUvPjtCc1Es3F+rnrSHcRSELmrcjACS1bqevmDJe
 Vrj2V3EhBfmXyS/3rRJVOTIv5eXL9mwQ/2RiHQ95A0yBaTtB2Pvj1maPt2R0yUEmAa0LMpxNka
 c3g0KUxJgEO5WklD9AIVKpHAoWB8/cLH3BYACMyNu5z/HSxpxLqAlwTRNgiCjngWZL5qg91O0e
 Xeg=
X-IronPort-AV: E=Sophos;i="5.72,333,1580799600"; d="scan'208";a="71132656"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 01 Apr 2020 15:15:19 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 1 Apr 2020 15:15:25 -0700
Received: from sekiro.microchip.com (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 1 Apr 2020 15:15:22 -0700
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <robh+dt@kernel.org>
Subject: [PATCH 3/5] ARM: dts: at91: sama5d2_ptc_ek: add PB_USER as wakeup
 source
Date: Thu, 2 Apr 2020 00:15:02 +0200
Message-ID: <20200401221504.41196-3-ludovic.desroches@microchip.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200401221504.41196-1-ludovic.desroches@microchip.com>
References: <20200401221504.41196-1-ludovic.desroches@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_151522_724147_BD7BD0D8 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Tudor.Ambarus@microchip.com,
 linux-kernel@vger.kernel.org, Ludovic
 Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org, Codrin.Ciubotariu@microchip.com,
 Cristian.Birsan@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the push button PB_USER as wakeup source

Signed-off-by: Ludovic Desroches <ludovic.desroches@microchip.com>
---
 arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts b/arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts
index b803fa1f20391..32435ce1dab22 100644
--- a/arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts
+++ b/arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts
@@ -412,6 +412,7 @@ bp1 {
 			label = "PB_USER";
 			gpios = <&pioA PIN_PA10 GPIO_ACTIVE_LOW>;
 			linux,code = <0x104>;
+			wakeup-source;
 		};
 	};
 
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
