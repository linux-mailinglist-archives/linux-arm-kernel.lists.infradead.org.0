Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F386F80217
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 23:08:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=4tEuNWcpcRTF7Cer78S2P7NDnPpBXUkP4o9/mUy5czU=; b=GRH
	xuYff5/gY02wLDtdzZjLDIjUCptrs50mDifdF8I1oVS1li5VLw3/Bm5VG8NhDrVi43LLoBtiMCfcp
	rWdwg9+smm/7uIW7TSQoZYSdryJ7oLXcWt7rOm1YGrMZPaFbTvx/VuQi0WrORlh/XScI9YYxQstq2
	Gt+ljhXf19oYMYihPM56c7ao4P2b9w0oTn5Pn9FfDq7KoiFSO4o8NdR3EdJZ8YHl10PLhMKbucw3z
	+agrVCPeH4fnbvBAJa+eqVp2HHh0IeXeF4B73LkPXDpBhnM3N7yMJeA08Nwa9pd2Lnb9+oRKyJPw3
	3aDqfgz8d1z3AJyeYm7bDrgkNb2rPQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hten5-0004pC-Kw; Fri, 02 Aug 2019 21:08:43 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htemv-0004nS-Pn
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 21:08:35 +0000
Received: by mail-qt1-x843.google.com with SMTP id l9so75304596qtu.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 02 Aug 2019 14:08:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=9NIIaoQDA9kYkrN6ojAWfKEQLlIq3Ym3D7SRrnB2/eo=;
 b=gkBG/nskL7Ggm/hovOQPmbJA7M2IQHtyK1DmYHRcwwHZTjiNrVHZQEhdQnTiqRSf9n
 33nMpWaXV1lr7o6GYi/Cdug/Y24LvK6WMKNFGvM69pUAQ597RiQhq4w8UTWVFlLH8j/j
 zZanALJzF45ePOm4It8SU7ESVxPABFEzHFWDE0kkLHFpM+cY7wNk/xJD1bKo3MQ7Rf5n
 FTh3BDnhIEHfRVfuk+VoqDAmQIiLBc80ujKe3LP65DfIuNF+LwWW0S1EdtuccVYklcMZ
 l3F/eaQcuroAhKPaSXCSkeBfrC9iplFgAZmvW2W+mLlocXKBjCAOC01rLo6AOI+LCqAo
 kadQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=9NIIaoQDA9kYkrN6ojAWfKEQLlIq3Ym3D7SRrnB2/eo=;
 b=H4TATLSp4jg4o8GwSlpocAFmXMGZcAr2S/fJW+lkP7haYbhIEZj3BA0JSBKBzGkC1q
 T8EGvOCqAtd9kQ1c8jvfwOU75OSjBrOW20eK29FzWj26TlfxBMCz03qMgp6ULA3258U1
 30fPl37+d5Bu9b2V6f7gr0F0C+0C5bxe1tLm1luE1J7bHDrKvKgpjkWEzA8DVxZPw/sz
 hRLm/QiJENL6G8/fUIdQeq+IxDtqQWqNxc+aKKC8qEIbL0sqfxjJegNJBEnwreTcJUvK
 jjlbVYDKKkX3BWSRPI+JfOvamhxgdTlYpNf12XxB5dySn/7pY1DBPKb/kE4gMU/MmIzb
 e4yA==
X-Gm-Message-State: APjAAAVni4WcRN7K/hpxTr+xwOAa59O2HUrx3aHXaYfc79yjBT06Klbj
 9THmwE50OWnJejiV8w/cBXI/1Q==
X-Google-Smtp-Source: APXvYqx98q11ve5u5ss92wDlkOo+LN9fHXWBmOAGa0/ZdWOJvm4hOs19zMHPqGwyfLmgJk63/0Uqhw==
X-Received: by 2002:a0c:fa8b:: with SMTP id o11mr99691618qvn.6.1564780109664; 
 Fri, 02 Aug 2019 14:08:29 -0700 (PDT)
Received: from qcai.nay.com (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id f20sm29011362qkh.15.2019.08.02.14.08.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 02 Aug 2019 14:08:29 -0700 (PDT)
From: Qian Cai <cai@lca.pw>
To: will@kernel.org,
	catalin.marinas@arm.com
Subject: [PATCH] arm64/prefetch: fix a -Wtype-limits warning
Date: Fri,  2 Aug 2019 17:08:04 -0400
Message-Id: <1564780084-29591-1-git-send-email-cai@lca.pw>
X-Mailer: git-send-email 1.8.3.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_140833_865028_1DA31A4E 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: rrichter@cavium.com, Qian Cai <cai@lca.pw>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The commit d5370f754875 ("arm64: prefetch: add alternative pattern for
CPUs without a prefetcher") introduced MIDR_IS_CPU_MODEL_RANGE() to be
used in has_no_hw_prefetch() with rv_min=0 which generates a compilation
warning from GCC,

In file included from ./arch/arm64/include/asm/cache.h:8,
                 from ./include/linux/cache.h:6,
                 from ./include/linux/printk.h:9,
                 from ./include/linux/kernel.h:15,
                 from ./include/linux/cpumask.h:10,
                 from arch/arm64/kernel/cpufeature.c:11:
arch/arm64/kernel/cpufeature.c: In function 'has_no_hw_prefetch':
./arch/arm64/include/asm/cputype.h:59:26: warning: comparison of
unsigned expression >= 0 is always true [-Wtype-limits]
  _model == (model) && rv >= (rv_min) && rv <= (rv_max);  \
                          ^~
arch/arm64/kernel/cpufeature.c:889:9: note: in expansion of macro
'MIDR_IS_CPU_MODEL_RANGE'
  return MIDR_IS_CPU_MODEL_RANGE(midr, MIDR_THUNDERX,
         ^~~~~~~~~~~~~~~~~~~~~~~

Fix it by making rv_min=1.

Signed-off-by: Qian Cai <cai@lca.pw>
---
 arch/arm64/kernel/cpufeature.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index f29f36a65175..7d15cf6d62c1 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -883,7 +883,7 @@ static bool has_no_hw_prefetch(const struct arm64_cpu_capabilities *entry, int _
 
 	/* Cavium ThunderX pass 1.x and 2.x */
 	return MIDR_IS_CPU_MODEL_RANGE(midr, MIDR_THUNDERX,
-		MIDR_CPU_VAR_REV(0, 0),
+		MIDR_CPU_VAR_REV(0, 1),
 		MIDR_CPU_VAR_REV(1, MIDR_REVISION_MASK));
 }
 
-- 
1.8.3.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
