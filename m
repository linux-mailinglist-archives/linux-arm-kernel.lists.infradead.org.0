Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B73CE1FFC3F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 22:05:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NcpC4gOuj2+tHIh4YKNd2qqhRkRpjwg6XlHghY5L3uI=; b=hIYxov3O6qA3nX
	+I2V8MLu1A03M2GDKdoj9w85B65gRsGYgkhzqBpjZ79xzkBEjiDJibMxgZ4hDjSXDr+lJ4f4ycvNm
	IxPVy/0jekq8jdznwud7wxhGBygDUhlfYRBuNIm2VojlRunuw9JNdehzYDUlVxP5PelmF9Gc2N/Nq
	MWL24sEVJIVGPnYFmyuZ+G8yFbeWFY+qFcsD3HBM0IabnntOCxaorO2XiSnLJGk4dm2paK5zLW0wa
	kUs3BdyHOWouaU97OdoTAIZXPoPLDiD74cK3ukosBDRIiI0m7yEaEXitK/dMIO7IcBmgvtTtv4Y2k
	f8KV70wg8x1S9o0grwQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jm0n5-0004uc-Vs; Thu, 18 Jun 2020 20:05:40 +0000
Received: from mta02.hs-regensburg.de ([2001:638:a01:1096::12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jm0mw-0004ta-OE
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 20:05:32 +0000
Received: from E16S02.hs-regensburg.de (e16s02.hs-regensburg.de
 [IPv6:2001:638:a01:8013::92])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (Client CN "E16S02", Issuer "E16S02" (not verified))
 by mta02.hs-regensburg.de (Postfix) with ESMTPS id 49nt2w1wJRzy4D;
 Thu, 18 Jun 2020 21:55:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oth-regensburg.de;
 s=mta01-20160622; t=1592510136;
 bh=Of0GwQchv+P8YWeKdVxPE3NR+Pqpw5RU32LW53xV0aI=;
 h=From:To:CC:Subject:Date:From;
 b=G1zRClibCiJ8BVL7KynrwyLpHyv44wPwN11Ah2s2Usg+bXcYSv1LEi6goKcSJycv0
 kYPQ3jYtZiJV7FW08BPWlXAUgEV154T+cb2wM6aan1MoMf/sSUyn7KZjxHJx6h8LhY
 9bI2/S5xjjuHYKKN6Fgpnz/sPDt0suh/fftzJh0mNxlHRH+X1eA9UGKXpinS2LMQVq
 UITl5gy5P8M2NE8xLX10QlSsmLA03rRrmuYLzLYHD/T3kid9XpAYF+JJSTWGF2/W8u
 UFHEmHssqCoV/iFRUvP8PEmI4FKEIOYVHKca46nQFkPV5ftBDdPVzSsdw5Nv+Dee8y
 9GfyVOCGU5V7A==
Received: from omega.binary.kitchen (194.95.106.138) by
 E16S02.hs-regensburg.de (2001:638:a01:8013::92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1913.5; Thu, 18 Jun 2020 21:55:35 +0200
From: Ralf Ramsauer <ralf.ramsauer@oth-regensburg.de>
To: Lubomir Rintel <lkundrak@v3.sk>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH] MAINTAINERS: fix incorrect directory reference
Date: Thu, 18 Jun 2020 21:55:27 +0200
Message-ID: <20200618195527.162034-1-ralf.ramsauer@oth-regensburg.de>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Originating-IP: [194.95.106.138]
X-ClientProxiedBy: E16S03.hs-regensburg.de (2001:638:a01:8013::93) To
 E16S02.hs-regensburg.de (2001:638:a01:8013::92)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_130531_400919_AAA2DB84 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:638:a01:1096:0:0:0:12 listed in] [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Rob Herring <robh@kernel.org>, Ralf Ramsauer <ralf.ramsauer@oth-regensburg.de>,
 Lukas Bulwahn <lukas.bulwahn@gmail.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

the below-mentioned commit moved headers to inlucde/linux/soc/mmp. MAINTAINERS
was updated, but include/ was omitted.

Fixes: 32adcaa010 ("ARM: mmp: move cputype.h to include/linux/soc/")
Signed-off-by: Ralf Ramsauer <ralf.ramsauer@oth-regensburg.de>
---
 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 68f21d46614c..20d897b5be4b 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -11492,7 +11492,7 @@ S:	Odd Fixes
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/lkundrak/linux-mmp.git
 F:	arch/arm/boot/dts/mmp*
 F:	arch/arm/mach-mmp/
-F:	linux/soc/mmp/
+F:	include/linux/soc/mmp/
 
 MMP USB PHY DRIVERS
 R:	Lubomir Rintel <lkundrak@v3.sk>
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
