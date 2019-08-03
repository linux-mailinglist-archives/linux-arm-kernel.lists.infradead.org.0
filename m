Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FF6A80385
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 02:34:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2RssyTfL5KwCi6mb4JrKend41sGDz9odFHiHXy1yu/o=; b=BsRUHmkZkRsmLW
	Jfk+p4v4/sFs794tiCoQPYNtgVwlEtNDOJmy9UejzHhJgTDHxtePj7RzWcpPjcwYe+JtpHI+yvcAm
	yuYF25Iz170gj64eKfULsrd4u2j51BFEu7JHTCnWdcWepn0QhGzoeeG7Ls9az3chGJdGxr0yDPV1L
	07CJNGtA7iEIgehBI4/gthjlPh5PBbZz7TlFnEmkye8sOfufss+xdUetD438K7BIhZ0gclPJ6jg/+
	9XmqluN2mAlw/Rxn7oX3luuFRfvhfKJwbrd5Qq62oK4T+3Bj2yPXLyunUHClCjs2+oiQRH8nroP0y
	7/Rgs6HZJf6+sdiAhPcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hti0L-0005BV-L2; Sat, 03 Aug 2019 00:34:37 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hti09-0005Aj-S5
 for linux-arm-kernel@lists.infradead.org; Sat, 03 Aug 2019 00:34:27 +0000
Received: by mail-qk1-x741.google.com with SMTP id r6so56227479qkc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 02 Aug 2019 17:34:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LLAKxpLqE2JOG7T+4J6lk0YiDfUhZaobxgsE/XldIXY=;
 b=RVsqMgpnRHWgwALhBHcVBGnndl/VzSoDlmqfgWib57Zn0jcxSkd4XD4yxzObfMd0YS
 Fqn03M75MC1Tog9d1nkglRUddOa+o9mJlbW/oeA31Spb7WXXefVfqkZrLoYrPA0PxhfA
 30hljXRwqx54SDSSv/8sA37zDBP1jZub9MQaa9+GHURn2RwEBWGHDY2WZq3KSTAPh6SD
 7sup0nhV9TM1BplSL6IiZHj3JS+uNFxQ59lcN9P0xyu+Qsa3rKayi3yNJXjMYerwil57
 5wO20fH9vM36kQQN1SaZW9XjdJdRMbLN4g2ehDEs1kmj4hz1djUrdcUCBJT+ug/e++GJ
 4Zrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LLAKxpLqE2JOG7T+4J6lk0YiDfUhZaobxgsE/XldIXY=;
 b=Dh2c2YYqufOG6Vtl6RvX+Njkc5ypVNRGjWCgLtIKjwRx+47vfvCLfQF4XAGUtlULUi
 royrg9/PpZQarsdrx3SkWwUtjbg4eyn/n8ynE6KD6eP1jfXbkc53YjXhXnLN5mhZwBbH
 MKLIZxB4dq9QhrepZxZUs8Nt46AmrTo/Yt6EWPioFn5aMRZsvHTH8NBpwEV3sX/ge1Fj
 5AE3OR/O+rRUzBcMwvr+A2aETYDRFsi+CkW0vpxtIuB1HgRyqSAxdduJQTembYmB0AIr
 Up9aFPwewGTKUk1x7596N85zd1fQT3dYWSKHGOQA9tAIn0s2wDCBnuzPZNi6m1YA9IUD
 D/cw==
X-Gm-Message-State: APjAAAUJrpnNdx7XXpLCpkAUBdw5BBvsj9sJGUqUiPRcCjDBzybCfGXa
 XrzKW9YKEYNFS5rFDHP+CH+PQQ==
X-Google-Smtp-Source: APXvYqzjSg+1MrgBmSDT/gk953+I4OZ78rE7huZlzArJoL7LkO6N1WmtVgfdsM5tvVCVXs4eUpsfXw==
X-Received: by 2002:a37:9506:: with SMTP id x6mr95149436qkd.107.1564792464729; 
 Fri, 02 Aug 2019 17:34:24 -0700 (PDT)
Received: from ovpn-120-69.rdu2.redhat.com
 (pool-71-184-117-43.bstnma.fios.verizon.net. [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id x46sm45986742qtx.96.2019.08.02.17.34.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 02 Aug 2019 17:34:23 -0700 (PDT)
From: Qian Cai <cai@lca.pw>
To: will@kernel.org,
	catalin.marinas@arm.com
Subject: [PATCH v2] arm64/prefetch: fix a -Wtype-limits warning
Date: Fri,  2 Aug 2019 20:33:58 -0400
Message-Id: <20190803003358.992-1-cai@lca.pw>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_173426_046822_E6EAC4AD 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
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
Cc: rrichter@cavium.com, Qian Cai <cai@lca.pw>, robin.murphy@arm.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
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

Fix it by making "rv" a "s32".

Signed-off-by: Qian Cai <cai@lca.pw>
---

v2: Use "s32" for "rv", so "variant 0/revision 0" can be covered.

 arch/arm64/include/asm/cputype.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/cputype.h b/arch/arm64/include/asm/cputype.h
index e7d46631cc42..d52fe8651c2d 100644
--- a/arch/arm64/include/asm/cputype.h
+++ b/arch/arm64/include/asm/cputype.h
@@ -54,7 +54,7 @@
 #define MIDR_IS_CPU_MODEL_RANGE(midr, model, rv_min, rv_max)		\
 ({									\
 	u32 _model = (midr) & MIDR_CPU_MODEL_MASK;			\
-	u32 rv = (midr) & (MIDR_REVISION_MASK | MIDR_VARIANT_MASK);	\
+	s32 rv = (midr) & (MIDR_REVISION_MASK | MIDR_VARIANT_MASK);	\
 									\
 	_model == (model) && rv >= (rv_min) && rv <= (rv_max);		\
  })
-- 
2.20.1 (Apple Git-117)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
