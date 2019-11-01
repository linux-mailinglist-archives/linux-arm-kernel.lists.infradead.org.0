Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44746EBF0A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 09:12:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4CDg0VrIScFJbA3+XTV2wprokFC2WFtFLAa2rjEZXYM=; b=e863sYxYyoxsCdrQ+6RIlyLib7
	0LYnwZwhK1MEb2DQl7VfLWi/rDRVdcGoMjVe0Yyx2Br7H1NaIv5bs76GzsNDoh6NB3Vj12p0wCI4S
	HYJSlTmgUwlLSuo1Jsb0Id12vv2+OIQeLincqWFCikxf9/fmFWmRsBJiklEFxwJPMcOhrXYem1skC
	LJAiz000N+bFwQXimr7obiTnUUU66fD8gw38Rc3YMwWGk6NW51TcSdbInduiTNs4PEXsMr9Qg673/
	IW2FlwK/G49xfKeqVB37MbLhJPpGwb/2g3mskUooYVbx95t6PKZH+2SPJDakjxxNbnk86VLv/enzG
	8EhCxmRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQS36-0003cx-A7; Fri, 01 Nov 2019 08:12:48 +0000
Received: from conuserg-12.nifty.com ([210.131.2.79])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQS2v-0003bS-AN
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 08:12:38 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-12.nifty.com with ESMTP id xA18BsBQ023869;
 Fri, 1 Nov 2019 17:11:59 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com xA18BsBQ023869
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1572595923;
 bh=dMOvEpUrv3gUpGiwcs/+Eb8AZVQbVFB1v4ogmdr2bko=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=24wqhJT7RJMf50vgPNVtuOw7sfdCTIBCGMN1/+85H2fjdBWjCBMgKq4Gi/Zo8KO2Y
 VlgD461HyHetk8JzsJ7Ekalb9WtIQBjoIaG78+XXVkIjX89OQ/6jth0bvnMY7mY/Zy
 kZ1FsZLs884Twsxjffd5wE/JArN05kQGyzXNHNkQnzTcfwsuqyMuM02JwDm5mdrvDY
 5imCL2rnn/7JQ+QTDtFB+kbwLTgcoxcrAjnIIPElUvBT0solhQTWvr+EhskjVm4OS1
 vqipju34mMQPwLWkDveV8HSaTxr8C3ugI1gbtT2+b+racWCIlXeZnHt+T/q7S8T8kL
 VV3/6jEArBPKQ==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH v2 3/3] libfdt: define INT32_MAX and UINT32_MAX in libfdt_env.h
Date: Fri,  1 Nov 2019 17:11:48 +0900
Message-Id: <20191101081148.23274-4-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191101081148.23274-1-yamada.masahiro@socionext.com>
References: <20191101081148.23274-1-yamada.masahiro@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_011237_594446_33556E9E 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.79 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.79 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 linux-kernel@vger.kernel.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 David Gibson <david@gibson.dropbear.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The libfdt in the upstream DTC project added references to (U)INT32_MAX
by the following commits:

  Commit 812b1956a076 ("libfdt: Tweak data handling to satisfy Coverity")
  Commit 7fcf8208b8a9 ("libfdt: add fdt_append_addrrange()")

The kernel needs to adjust libfdt_env.h before pulling in the changes.

As for the user-space programs, <stdint.h> defines (U)INT32_MAX along
with (u)int32_t.

In the kernel, on the other hand, we usually use s32 / u32 instead of
(u)int32_t for the fixed-width types.

Accordingly, we already have S32_MAX / U32_MAX for their max values.
So, we won't add (U)INT32_MAX to <linux/limits.h> any more.

Instead, add them to the in-kernel libfdt_env.h to compile fdt.c and
fdt_addresses.c

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

Changes in v2:
 - Fix ppc libfdt_env.h

 arch/powerpc/boot/libfdt_env.h | 2 ++
 include/linux/libfdt_env.h     | 3 +++
 2 files changed, 5 insertions(+)

diff --git a/arch/powerpc/boot/libfdt_env.h b/arch/powerpc/boot/libfdt_env.h
index 2abc8e83b95e..9757d4f6331e 100644
--- a/arch/powerpc/boot/libfdt_env.h
+++ b/arch/powerpc/boot/libfdt_env.h
@@ -6,6 +6,8 @@
 #include <string.h>
 
 #define INT_MAX			((int)(~0U>>1))
+#define UINT32_MAX		((u32)~0U)
+#define INT32_MAX		((s32)(UINT32_MAX >> 1))
 
 #include "of.h"
 
diff --git a/include/linux/libfdt_env.h b/include/linux/libfdt_env.h
index edb0f0c30904..0bd83bdb2482 100644
--- a/include/linux/libfdt_env.h
+++ b/include/linux/libfdt_env.h
@@ -11,6 +11,9 @@ typedef __be16 fdt16_t;
 typedef __be32 fdt32_t;
 typedef __be64 fdt64_t;
 
+#define INT32_MAX	S32_MAX
+#define UINT32_MAX	U32_MAX
+
 #define fdt32_to_cpu(x) be32_to_cpu(x)
 #define cpu_to_fdt32(x) cpu_to_be32(x)
 #define fdt64_to_cpu(x) be64_to_cpu(x)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
