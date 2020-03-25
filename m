Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03714191F2F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 03:34:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Subject:Message-ID:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NmV/httWYtek0Ew9JsUOY/5pfZRXvnJ2jgMg1kJquP0=; b=E5ddbYFcqGfsnI
	bgQ322OhWZjUdMJjLbcsgjiFD3Aele9eDbaZE2L1OlwYtLf2OmhWZPt4vwpZ1s6uMkvYoTXibqrw0
	zDWeq8f1xgV07VCh4JG1imknIcc2NJ8Ft8aeRqdI2KKy0qCyOZA8x4oq0b84eUUpM2F5yF5HMW3Fs
	JMIwSR2zymq9NSWPoBoZSGsVE3Z6FtQ+c8OQTdmYTG2Jxog1UsV93YuqJvwYLOrnDB+eo4AMzntEk
	vfxjQtCP6LABugj3iSrKoK0hBSuyJGdF9myXwNugywX8xz292VhHdItYFS1QiXr8IFH00XdrbY45L
	OSUkA65sxgA5LQDiD/bA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGvrs-0004XN-P3; Wed, 25 Mar 2020 02:34:08 +0000
Received: from sender3-op-o12.zoho.com.cn ([124.251.121.243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGvr6-0003wl-BS; Wed, 25 Mar 2020 02:33:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1585103479; 
 s=mail; d=flygoat.com; i=jiaxun.yang@flygoat.com;
 h=From:To:Cc:Message-ID:Subject:Date:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type;
 bh=yyST9a4xds2OxHP7d839ZExH6zCAlPz7AHq/7HnkO+0=;
 b=MGBDxLNRcnw+6qJTvx05eGMOstYRHvSbOhuEdL7taDXptxvfLF8rxsPHnav4P5/Q
 SBBaP5Qom4Rj2JDEN/p7/3X20BPAT9msWTkvCAPl981eGaAwf4QKTXyCMyiHxBw0Znr
 fHKyc1f+uskxwMln9lWHOMzalLTXvL57vAlH9D2s=
Received: from localhost.localdomain (39.155.141.144 [39.155.141.144]) by
 mx.zoho.com.cn with SMTPS id 1585103477959328.4875849949635;
 Wed, 25 Mar 2020 10:31:17 +0800 (CST)
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: linux-mips@vger.kernel.org
Message-ID: <20200325022916.106641-3-jiaxun.yang@flygoat.com>
Subject: [PATCH v7 01/12] MIPS: Loongson: Do not initialise statics to 0
Date: Wed, 25 Mar 2020 10:28:18 +0800
X-Mailer: git-send-email 2.26.0.rc2
In-Reply-To: <20200325022916.106641-1-jiaxun.yang@flygoat.com>
References: <20200325022916.106641-1-jiaxun.yang@flygoat.com>
MIME-Version: 1.0
X-ZohoCNMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_193321_555058_83CA79C2 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [124.251.121.243 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-doc@vger.kernel.org,
 "H. Nikolaus Schaller" <hns@goldelico.com>, John Crispin <john@phrozen.org>,
 Jiaxun Yang <jiaxun.yang@flygoat.com>, Paul Cercueil <paul@crapouillou.net>,
 linux-ide@vger.kernel.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Huacai Chen <chenhc@lemote.com>, Tiezhu Yang <yangtiezhu@loongson.cn>,
 Andi Kleen <ak@linux.intel.com>, Paul Burton <paulburton@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, Marc Zyngier <maz@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Yinglu Yang <yangyinglu@loongson.cn>,
 devicetree@vger.kernel.org, Jean Delvare <jdelvare@suse.com>,
 Jason Cooper <jason@lakedaemon.net>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Allison Randal <allison@lohutok.net>, linux-arm-kernel@lists.infradead.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Matt Redfearn <matt.redfearn@mips.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Serge Semin <fancer.lancer@gmail.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Manuel Lauss <manuel.lauss@gmail.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tiezhu Yang <yangtiezhu@loongson.cn>

Fix the following checkpatch error:

ERROR: do not initialise statics to 0
#125: FILE: loongson64/numa.c:125:
+	static unsigned long num_physpages = 0;

Signed-off-by: Tiezhu Yang <yangtiezhu@loongson.cn>
Signed-off-by: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
---
 arch/mips/loongson64/numa.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/loongson64/numa.c b/arch/mips/loongson64/numa.c
index e5b40c5e3296..1ae072df4831 100644
--- a/arch/mips/loongson64/numa.c
+++ b/arch/mips/loongson64/numa.c
@@ -122,7 +122,7 @@ static unsigned long nid_to_addroffset(unsigned int nid)
 static void __init szmem(unsigned int node)
 {
 	u32 i, mem_type;
-	static unsigned long num_physpages = 0;
+	static unsigned long num_physpages;
 	u64 node_id, node_psize, start_pfn, end_pfn, mem_start, mem_size;
 
 	/* Parse memory information and activate */
-- 
2.26.0.rc2



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
