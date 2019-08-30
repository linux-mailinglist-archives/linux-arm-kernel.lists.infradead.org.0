Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16309A2BE5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 02:53:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mxb4+1JPFnF87kdQvNv+aJIXc1uUv+r/t1FSA7kN9Ec=; b=qElMW5AAF6ivtAHxo9GXsHB55L
	o6sMTCT8fYwDKFu9PoGy4mmuQPo4g66SjltiQDrPsagti4uEcd67kopHZW5qdEUrbgVLIx6c0ysCm
	FHxB8rC8/9Vl17l+rqy8lJEB5SPWhaCME19z4B7wodSRO/RdWsRkl4nhXgx8Vud98+gZG8K/9Tigp
	sAOZa1QJ7V+5HGSwCPBkkMPYHbA4+9JbYeMH+u7VwEGpqgdxRmuEeio5ji/02mxoeP5MpmQ3L3pHY
	4UBe/RihUcdRSt/s1OMoqyjTdgHttCHr3ber5jb0JnL4MLRE+tJ1Mx07NcDM+Ot1n81tYgXc+Uh7X
	q+SDfadw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3VAU-0003W7-AE; Fri, 30 Aug 2019 00:53:34 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3V7v-0001UY-22
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 00:50:56 +0000
Received: by mail-lf1-x143.google.com with SMTP id v16so3936264lfg.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 17:50:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=rseUd9y/GnXjRY8PsudxS8BEzI5o7BH/gE6GzGNAkz0=;
 b=p+c78cGOyUo6huk/pdHK4LHWxY05E5DmCBl6Y9TnX0wvtYNQzK7/aTvz75AqmlPGvA
 lX3zJWWhAuFN7kMzRbIe4MIRTgqe2XNObWdcxwvAYdo9v+NHqraV4ztUXFoSctAfudEb
 6iWjcDghz5Lkpmgx4rrpBe3K+94vUyybq7SVTJP0KvecAGtDjApjNEeFXlxu6wHYQ2nG
 Aia65Ra96zxOxrfifKlzHZK+MklKrHz3P1CXW6V1T+wu0gkWFEF3j5zl9WfXVvgh/7Iz
 tX+fup/gKLffQChanaOEXwwKRLJP/Zl4iC0qpnp9r8NCvX0yAmZFBiQuq5bIQpJinAgf
 23aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=rseUd9y/GnXjRY8PsudxS8BEzI5o7BH/gE6GzGNAkz0=;
 b=chx+Gq89oRmWiOX4n6rCchv4P4EJQx2ui09H3GSxbDyhSUDCpcqzomiq5R8ajAuJGM
 Z/EdS+l52cPo+b4dWyu9YpAvpJ4BSBwXSdFsM8uccfQq5xouc8glE93aYKv8xD8zDHcG
 hmuLamamRoKnpZi3yzUbZSTbiE9GBeJVn1Tg6kFD4y0GHWyWk5lqna7ANFk0he2ogZYy
 XX0cUfGVXGUj8EkMp3XUf+bLvBq/F79hIVwl4PUJo98s5CLzCg/thYCzHhr6nvoIWAaz
 gXXMPfqpq2d5pFvonBmum6C81Ap1Bt8+cMn8i8X73WgKUIE5ylVZAnsnR6saLk6LW0py
 JjaQ==
X-Gm-Message-State: APjAAAX4ttOc5102HtC/rByO0U5KNdyrV4A0J3iMB0jQrPERksDpth+g
 GJVVC98CQIVwlrkPKGD8jAp1eg==
X-Google-Smtp-Source: APXvYqxNrtZrcEGcDIoDRzM60F5kluGphxsbk/1Bx4tLv8SvOizz47bOc1wno61j8h21RjFX5zUA3A==
X-Received: by 2002:a19:e04f:: with SMTP id g15mr7384740lfj.46.1567126253185; 
 Thu, 29 Aug 2019 17:50:53 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net.
 [178.94.200.168])
 by smtp.gmail.com with ESMTPSA id f19sm628149lfk.43.2019.08.29.17.50.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 17:50:52 -0700 (PDT)
From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To: linux@armlinux.org.uk, ast@kernel.org, daniel@iogearbox.net, yhs@fb.com,
 davem@davemloft.net, jakub.kicinski@netronome.com, hawk@kernel.org,
 john.fastabend@gmail.com
Subject: [PATCH RFC bpf-next 09/10] arm: include: asm: swab: mask rev16
 instruction for clang
Date: Fri, 30 Aug 2019 03:50:36 +0300
Message-Id: <20190830005037.24004-10-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190830005037.24004-1-ivan.khoronzhuk@linaro.org>
References: <20190830005037.24004-1-ivan.khoronzhuk@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_175055_163187_190A8F79 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 bpf@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The samples/bpf with clang -emit-llvm reuses linux headers to build
bpf samples, and this w/a only for samples (samples/bpf/Makefile
CLANG-bpf).

It allows to build samples/bpf for arm bpf using clang.
In another way clang -emit-llvm generates errors like:

CLANG-bpf  samples/bpf/tc_l2_redirect_kern.o
<inline asm>:1:2: error: invalid register/token name
rev16 r3, r0

This decision is arguable, probably there is another way, but
it doesn't have impact on samples/bpf, so it's easier just ignore
it for clang, at least for now.

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 arch/arm/include/asm/swab.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/include/asm/swab.h b/arch/arm/include/asm/swab.h
index c6051823048b..a9fd9cd33d5e 100644
--- a/arch/arm/include/asm/swab.h
+++ b/arch/arm/include/asm/swab.h
@@ -25,8 +25,11 @@ static inline __attribute_const__ __u32 __arch_swahb32(__u32 x)
 	__asm__ ("rev16 %0, %1" : "=r" (x) : "r" (x));
 	return x;
 }
+
+#ifndef __clang__
 #define __arch_swahb32 __arch_swahb32
 #define __arch_swab16(x) ((__u16)__arch_swahb32(x))
+#endif
 
 static inline __attribute_const__ __u32 __arch_swab32(__u32 x)
 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
