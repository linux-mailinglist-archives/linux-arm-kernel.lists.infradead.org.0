Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCA9983E67
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 02:34:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Mr64RZbeYTdaY05AjIBgY6QuYGckigR/Ir92DeQGrCE=; b=tqnOqjl1zYqWS4
	EbOZKsQlQeoRaXqyyTx0PHt7DBn1jQwXo5EkdAqSO5UiyviRvPbT2wjimoM2aNamJD9dwAnFlIzcV
	3xkqsy3Zie3N+DtZS7Y56hGq7sy31mxY7u2FUj4JF5y0YN1iwIyWwHeYN7Pl5jWKWgX68FQvsLBBk
	tOjNvI4Tq++842u3Ehydtij2T6Ew81j81LSfBXf63K33/yWISRZgzFoUk3keMWRgBdgBdIbP+Mu1N
	hl5hoklRrLJJnpjgxVL+FuR69V8ktWPy5UyLqjC6Y21qvJidhekaz/ZP4Goi7oBpV7E3qg2GQTkoT
	Mcpg+ZOQo4B2WNKc5q/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv9tx-0006FJ-Qq; Wed, 07 Aug 2019 00:34:01 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv9tj-0006Dg-9T; Wed, 07 Aug 2019 00:33:48 +0000
X-UUID: 1ebba6fa5cd74a5bb6c0dac2199d12d9-20190806
X-UUID: 1ebba6fa5cd74a5bb6c0dac2199d12d9-20190806
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <miles.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1023145596; Tue, 06 Aug 2019 16:33:40 -0800
Received: from MTKMBS06N1.mediatek.inc (172.21.101.129) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 6 Aug 2019 17:33:38 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs06n1.mediatek.inc (172.21.101.129) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 7 Aug 2019 08:33:37 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 7 Aug 2019 08:33:37 +0800
From: Miles Chen <miles.chen@mediatek.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon
 <will.deacon@arm.com>
Subject: [PATCH v2] arm64: mm: print hexadecimal EC value in mem_abort_decode()
Date: Wed, 7 Aug 2019 08:33:36 +0800
Message-ID: <20190807003336.28040-1-miles.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_173347_331786_AF8F74DB 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <Mark.rutland@arm.com>, wsd_upstream@mediatek.com, Anshuman
 Khandual <anshuman.khandual@arm.com>, linux-kernel@vger.kernel.org,
 Miles Chen <miles.chen@mediatek.com>, linux-mediatek@lists.infradead.org,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This change prints the hexadecimal EC value in mem_abort_decode(),
which makes it easier to lookup the corresponding EC in
the ARM Architecture Reference Manual.

The commit 1f9b8936f36f ("arm64: Decode information from ESR upon mem
faults") prints useful information when memory abort occurs. It would
be easier to lookup "0x25" instead of "DABT" in the document. Then we
can check the corresponding ISS.

For example:
Current	info	  	Document
		  	EC	Exception class
"CP15 MCR/MRC"		0x3	"MCR or MRC access to CP15a..."
"ASIMD"			0x7	"Access to SIMD or floating-point..."
"DABT (current EL)" 	0x25	"Data Abort taken without..."
...

Before:
Unable to handle kernel paging request at virtual address 000000000000c000
Mem abort info:
  ESR = 0x96000046
  Exception class = DABT (current EL), IL = 32 bits
  SET = 0, FnV = 0
  EA = 0, S1PTW = 0
Data abort info:
  ISV = 0, ISS = 0x00000046
  CM = 0, WnR = 1

After:
Unable to handle kernel paging request at virtual address 000000000000c000
Mem abort info:
  ESR = 0x96000046
  EC = 0x25: DABT (current EL), IL = 32 bits
  SET = 0, FnV = 0
  EA = 0, S1PTW = 0
Data abort info:
  ISV = 0, ISS = 0x00000046
  CM = 0, WnR = 1

Change since v1:
print "EC" instead of "Exception class"
print EC in fixwidth

Cc: Mark Rutland <Mark.rutland@arm.com>
Cc: Anshuman Khandual <anshuman.khandual@arm.com>
Cc: James Morse <james.morse@arm.com>
Signed-off-by: Miles Chen <miles.chen@mediatek.com>
---
 arch/arm64/mm/fault.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
index cfd65b63f36f..ad4980a27edb 100644
--- a/arch/arm64/mm/fault.c
+++ b/arch/arm64/mm/fault.c
@@ -86,8 +86,8 @@ static void mem_abort_decode(unsigned int esr)
 	pr_alert("Mem abort info:\n");
 
 	pr_alert("  ESR = 0x%08x\n", esr);
-	pr_alert("  Exception class = %s, IL = %u bits\n",
-		 esr_get_class_string(esr),
+	pr_alert("  EC = 0x%02lx: %s, IL = %u bits\n",
+		 ESR_ELx_EC(esr), esr_get_class_string(esr),
 		 (esr & ESR_ELx_IL) ? 32 : 16);
 	pr_alert("  SET = %lu, FnV = %lu\n",
 		 (esr & ESR_ELx_SET_MASK) >> ESR_ELx_SET_SHIFT,
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
