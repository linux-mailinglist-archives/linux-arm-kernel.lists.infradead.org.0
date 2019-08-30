Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5229BA2BE0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 02:52:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WI3UGNm8tlTAreMP3fn5YlpxLUOMHBjiwqhBllFEH30=; b=qEpHjDjndn0pwMwkf4qQe5QQJ+
	Ob0KktNWmVIlfsNOIglOVmIYIx6Xh5ypSbQiS3osLUsDUt84ZJmftqBw6fPxmRneZlbdnV7ucUum/
	T5JNkzfeuTOULAzo71GvvIL5GHaVPbmEkdi3+no4uPAAI1qUh5Ehx4fXL9rvFwHiuv2rMaSkq/dfT
	zdTlCQ362pgbAvocyrdxnvYXaMiVvmh7WH9hXdLxzbL1cTMVN3QRK5z66MfLmwKjJQb35e7hS56rG
	R8i76NcaLDyGxG9Tmu0c+7nO6MvtxGc7w7ir3jrUJygP6O06p4vyoYu6mGpCa1w+BI3mamk7fvDa0
	gAbpw51A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3V9S-0002ak-9m; Fri, 30 Aug 2019 00:52:30 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3V7p-0001PK-EE
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 00:50:51 +0000
Received: by mail-lj1-x242.google.com with SMTP id x4so4815985ljj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 17:50:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=XM+El1wyypVfaXfQc7FxTfECR5DYv9zUGiXmgC/VC5g=;
 b=OmaVkDBxJbEbiNuH6B/lkHNi7X3Ced5VCYrN4v0FOemALIxV7B1RR9GTxi+wIA+o7S
 SBNyfehZvn7LwSQMr71oX1EDAOy9VvdgFs/9kHugoMQYd2qS/DSS2mvw8yXRcG/xHDV5
 0mJnXZcKmURGOdcozYB23tdigAAVVt6MHRP2J5RqtdSKEIJwvommRUF3YZCu8WcJ+ZRQ
 9xYKzJ+pyiAczzLTKz6YMx84NzIkCgZakeJ1s58kckrg9aSB/Vdpg5FlpqJZCT257v3w
 UK5VqvNfJ4lXH3Sy/1qHZ5bEXEsMC6tIogRp0+fgccQf0ld0ru8mbbg+8L8dATJfDqle
 zUkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=XM+El1wyypVfaXfQc7FxTfECR5DYv9zUGiXmgC/VC5g=;
 b=OqWF79Vv6ygU4J0maMtP2lx01PhTXuvVIL1kuYqeoMtR9ZIqdqgS0bQognWfld5BnG
 PZ6WmpRx5kznmU+S8wKlYNuN3LNVAGGWuekvsXvQUAugNgKLEY5bWQtEY2pAs+37NezM
 WjFXoLumm3tWSzB7qhV7yNc8eXdQeXVqUDHB7Xqw7jBYoUjfP8YKvCt+SfTUHKN3hLzq
 RBykKq6J0WahnXlKDkpbPrkmbZGY/X/HCEAs8XBhMUsdi84PMr/SFfRuoOy2iLfzzu/m
 kr+MgjDcIO902KL6QVPl7z8g4FHM2k/kP1yAAFdFPGzrnCrpDxLOSFGMN8/XQ291DBDO
 zT9g==
X-Gm-Message-State: APjAAAUftyMJ481odK4ApAT5K2MQsgSiDIKp5hkCDgs6E3/vXioX6EK6
 FAvGq7JxOuBHtQ2ynFkom9+lqw==
X-Google-Smtp-Source: APXvYqzmBCVvXKFOXoBDuj58+fjrCfnA51PDqBxjQDtiM9x+Qz3HalHYI72Y8f2Nsv+B0cm1QW0ySg==
X-Received: by 2002:a2e:85d4:: with SMTP id h20mr7058874ljj.134.1567126248121; 
 Thu, 29 Aug 2019 17:50:48 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net.
 [178.94.200.168])
 by smtp.gmail.com with ESMTPSA id f19sm628149lfk.43.2019.08.29.17.50.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 17:50:47 -0700 (PDT)
From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To: linux@armlinux.org.uk, ast@kernel.org, daniel@iogearbox.net, yhs@fb.com,
 davem@davemloft.net, jakub.kicinski@netronome.com, hawk@kernel.org,
 john.fastabend@gmail.com
Subject: [PATCH RFC bpf-next 05/10] samples: bpf: Makefile: use vars from
 KBUILD_CFLAGS to handle linux headers
Date: Fri, 30 Aug 2019 03:50:32 +0300
Message-Id: <20190830005037.24004-6-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190830005037.24004-1-ivan.khoronzhuk@linaro.org>
References: <20190830005037.24004-1-ivan.khoronzhuk@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_175049_483265_1D90B197 
X-CRM114-Status: UNSURE (   8.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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

The kernel headers are reused from samples bpf, and autoconf.h is not
enough to reflect complete configuration for clang. One of such
configurations is __LINUX_ARM_ARCH__ min version used as instruction
set selector. In another case an error like "SMP is not
supported" for arm and others errors are issued and final object is
not correct.
---
 samples/bpf/Makefile | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index cdd742c05200..9232efa2b1b3 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -186,6 +186,13 @@ HOSTLDLIBS_map_perf_test	+= -lrt
 HOSTLDLIBS_test_overhead	+= -lrt
 HOSTLDLIBS_xdpsock		+= -pthread
 
+# Strip all expet -D options needed to handle linux headers
+# for arm it's __LINUX_ARM_ARCH__ and potentially others fork vars
+D_OPTIONS = $(shell echo "$(KBUILD_CFLAGS) " | sed 's/[[:blank:]]/\n/g' | \
+	sed '/^-D/!d' | tr '\n' ' ')
+
+CLANG_EXTRA_CFLAGS += $(D_OPTIONS)
+
 # Allows pointing LLC/CLANG to a LLVM backend with bpf support, redefine on cmdline:
 #  make samples/bpf/ LLC=~/git/llvm/build/bin/llc CLANG=~/git/llvm/build/bin/clang
 LLC ?= llc
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
