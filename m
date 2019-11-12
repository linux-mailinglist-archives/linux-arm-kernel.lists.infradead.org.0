Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED83FF85D2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 02:01:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=tDX0ViC9MTDyXesBEJ0YkMTfYhhHpd9r2yhUfMAIHmM=; b=BH
	sjgtCDzpGeMlsVL13QhCAMrp3bPUxetlgrnsRalZ2YtKhcc8BtcLtpn8iz9IDb01IuykKHUyLRbO0
	n2ykbGB3PYBd8Bwe71O0IZU3P7HpQnO1CZPZ6NWCuktgia69sbkFhrBmemcFf6XBc1XrTA4q/6Liq
	9JUwJIZLYeuR1KhZ/ywBL9u4484TI3HCBWwwP+1nDuFo4tDySKaWDMIGbeQG/xwuXZMuc8WIYtEpR
	5Zn9VSIPFxes5HUGx5cY8dZLZbdz3Jo40/RuBi+1kJxBZxjWgLjYeN3QQziaUAFBNLhyAbgDecgH8
	03f5bCtEoojA4WiqlEaZ6DCllETtGO1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUKYV-0005am-30; Tue, 12 Nov 2019 01:01:15 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUKYN-0005Zi-QH
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 01:01:09 +0000
Received: from epcas1p3.samsung.com (unknown [182.195.41.47])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20191112010102epoutp03b4cc36b90ca7ff71e1afd8bd9bf4f1f9~WRIYSYlCi1723117231epoutp035
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 01:01:02 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20191112010102epoutp03b4cc36b90ca7ff71e1afd8bd9bf4f1f9~WRIYSYlCi1723117231epoutp035
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1573520462;
 bh=6mPNO6wZj4Xve7dNHOM4i8D7vL7fYOS/SIGOyAurkyU=;
 h=From:To:Cc:Subject:Date:References:From;
 b=aukESM/ikGEjAubnuWb8WWc/btvgKEMP/6PYtTmkcLMT9IS4ua7X/OTosqcfZBczP
 /QHrv+Cft9bUGkO2DNNHSHkl5Xc3hMkt6MeatFnW1xbvYXsf9HkZwAQwi/QTFr6oQi
 T368NiY4dEhvkK1dPXdKRfrEcOA2uPT6v6JS8j6I=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTP id
 20191112010101epcas1p2cae3693bc918f29e41047287fc2d55ec~WRIXgtczJ0682106821epcas1p2Z;
 Tue, 12 Nov 2019 01:01:01 +0000 (GMT)
Received: from epsmges1p1.samsung.com (unknown [182.195.40.155]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 47BqDM2DDyzMqYlm; Tue, 12 Nov
 2019 01:00:35 +0000 (GMT)
Received: from epcas1p4.samsung.com ( [182.195.41.48]) by
 epsmges1p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 59.F4.04144.7D30ACD5; Tue, 12 Nov 2019 09:59:03 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191112005902epcas1p2d9dfa6a29f2c57669b1c1eb58517016d~WRGoY9V6B2013820138epcas1p2O;
 Tue, 12 Nov 2019 00:59:02 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191112005902epsmtrp1bcaa1af3e66645907b62c947f4e32e24~WRGoYOwCn2188321883epsmtrp16;
 Tue, 12 Nov 2019 00:59:02 +0000 (GMT)
X-AuditID: b6c32a35-2dfff70000001030-83-5dca03d76c61
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 3A.15.24756.6D30ACD5; Tue, 12 Nov 2019 09:59:02 +0900 (KST)
Received: from localhost.localdomain (unknown [10.113.221.222]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191112005902epsmtip1d75fb9d6eda70d25a77759d98613f160~WRGoNALhQ0613306133epsmtip1v;
 Tue, 12 Nov 2019 00:59:02 +0000 (GMT)
From: Seung-Woo Kim <sw0312.kim@samsung.com>
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 will@kernel.org, mark.rutland@arm.com, catalin.marinas@arm.com
Subject: [PATCH] arm64: perf: Report arm pc registers for compat perf
Date: Tue, 12 Nov 2019 10:01:41 +0900
Message-Id: <1573520501-29195-1-git-send-email-sw0312.kim@samsung.com>
X-Mailer: git-send-email 1.7.4.1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrJKsWRmVeSWpSXmKPExsWy7bCmge515lOxBpcesVu8X9bDaLHp8TVW
 i8u75rBZLL1+kclix7yDjBYzJr9ks2i5Y+rA7rFm3hpGj02rOtk8Ni+p9+jbsorR4/MmuQDW
 qGybjNTElNQihdS85PyUzLx0WyXv4HjneFMzA0NdQ0sLcyWFvMTcVFslF58AXbfMHKAjlBTK
 EnNKgUIBicXFSvp2NkX5pSWpChn5xSW2SqkFKTkFlgV6xYm5xaV56XrJ+blWhgYGRqZAhQnZ
 GXuWT2QuaOGo2HemkbmBcT9bFyMnh4SAicTjxzfYuxi5OIQEdjBKPGnbwAjhfGKUWL7qKCuE
 841R4sSZRUBlHGAtW2+kQMT3Mkp8XXQLqugLkPP1JiPIXDYBHYn9S36DJUQEOhgl9vyfwwjS
 zSxgJPH2OjNIjbCAq8SJS0/YQWwWAVWJLZ07weK8Am4SHxbOZYK4T0Fiwb23bCBzJAQ62CSe
 bfjDDpFwkfj7YTULhC0s8er4Fqi4lMTL/jYou1pi+4Sf7FDNjBI97Y1QDcYS+5dOZoI4SFNi
 /S59iLCixM7fc8EeYBbgk3j3tYcV4mNeiY42IYgSFYmdRyexQYSlJGZtCIYIe0gsO7gErFpI
 IFbiw1btCYyysxDGL2BkXMUollpQnJueWmxYYIgcR5sYwclKy3QH45RzPocYBTgYlXh4GRJO
 xgqxJpYVV+YeYpTgYFYS4d1RcSJWiDclsbIqtSg/vqg0J7X4EKMpMOwmMkuJJucDE2leSbyh
 qZGxsbGFiaGZqaGhkjiv4/KlsUIC6YklqdmpqQWpRTB9TBycUg2ME+LZf93h2FJ+2rL1qMXq
 4EXtxnyTHvxT224usnzSb9XNiZ93dLP8Fay+eYn9YdiJCLHLNj8XnyjXqwn5LBtZfqpbruCG
 S9aeuXP3uLGJxezZb/FgncFM1678d17H3jwpqJ/H5TSvcefB6SoZXzYU3HnEG/f4psgxMy23
 7uP7P2zjSJuqF+t4TYmlOCPRUIu5qDgRAA5At4VsAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupgluLIzCtJLcpLzFFi42LZdlhJTvca86lYg2cdPBbvl/UwWmx6fI3V
 4vKuOWwWS69fZLLYMe8go8WMyS/ZLFrumDqwe6yZt4bRY9OqTjaPzUvqPfq2rGL0+LxJLoA1
 issmJTUnsyy1SN8ugStjz/KJzAUtHBX7zjQyNzDuZ+ti5OCQEDCR2HojpYuRi0NIYDejxP5X
 /1i6GDmB4lISc79tZ4SoEZY4fLgYJCwk8IlR4uVVExCbTUBHYv+S36wgvSICfYwSb85uYAVJ
 MAPNfHtyLzuILSzgKnHi0hMwm0VAVWJL505mEJtXwE3iw8K5TBC7FCQW3HvLNoGRZwEjwypG
 ydSC4tz03GLDAsO81HK94sTc4tK8dL3k/NxNjODw0dLcwXh5SfwhRgEORiUe3hWxJ2OFWBPL
 iitzDzFKcDArifDuqDgRK8SbklhZlVqUH19UmpNafIhRmoNFSZz3ad6xSCGB9MSS1OzU1ILU
 IpgsEwenVANjIXPLnyl1qfWhvj/OW7y563LB9HhJuUidTc0Xg9KJu7P29OvKmnFMO9D2+9Wq
 jUz1mrHd3NEaRb1Fi9t0ld7srdbgvdwrYbw/8uXH9f6Z8p4n3dxLN+abr+TOuLNLOE2jxFZ7
 yrN/sXet4zxbex4+nx3xhims6g3LWqbZNXt31q+ZePjzqQ9KLMUZiYZazEXFiQC0WWFzGwIA
 AA==
X-CMS-MailID: 20191112005902epcas1p2d9dfa6a29f2c57669b1c1eb58517016d
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191112005902epcas1p2d9dfa6a29f2c57669b1c1eb58517016d
References: <CGME20191112005902epcas1p2d9dfa6a29f2c57669b1c1eb58517016d@epcas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_170108_239079_B15FC7CA 
X-CRM114-Status: GOOD (  13.78  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: sw0312.kim@samsung.com, sungguk.na@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If perf is built as arm 32-bit, it only reads 15 registers as arm
32-bit register map and this breaks dwarf call-chain in compat
perf because pc register information is not filled.
Report arm pc registers for 32-bit compat perf.

Without this, arm 32-bit perf dwarf call-graph shows below
verbose message:
  unwind: reg 15, val 0
  unwind: reg 13, val ffbc6360
  unwind: no map for 0

Signed-off-by: Seung-Woo Kim <sw0312.kim@samsung.com>
---
 arch/arm64/kernel/perf_regs.c |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/arch/arm64/kernel/perf_regs.c b/arch/arm64/kernel/perf_regs.c
index 0bbac61..d4172e7 100644
--- a/arch/arm64/kernel/perf_regs.c
+++ b/arch/arm64/kernel/perf_regs.c
@@ -24,6 +24,8 @@ u64 perf_reg_value(struct pt_regs *regs, int idx)
 			return regs->compat_sp;
 		if ((u32)idx == PERF_REG_ARM64_LR)
 			return regs->compat_lr;
+		if ((u32)idx == 15) /* PERF_REG_ARM_PC */
+			return regs->pc;
 	}
 
 	if ((u32)idx == PERF_REG_ARM64_SP)
-- 
1.7.4.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
