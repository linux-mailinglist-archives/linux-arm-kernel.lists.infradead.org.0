Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16148A2BDB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 02:51:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jW9HEMrBWdMszdofc6e8A1YLdnc88UWAcrXhkrQFCYM=; b=hrR9Dr69udzsdG7cAAvQxGwbKc
	lVdpNrigJwrXJ5895XSMPurYzbwHQy+JuwbQ+sSD6QdPY3LrnfXhJFm2c4k2V3dOiTh12C0iyTHnd
	G4KeWmfA+PFQmVaqb1eF5TKB/D3Ggiga3S4i9rIHohHkth7ul63xefs52kxTox3VYIvadMH+AYIRc
	KgQ6vOiKySNWvYSUgSxvRTOfSDaTBmmE+TXFk6F0S73bhjpjSnivstNCaxYnNg9+i3npZdtO9REtu
	tEjVCeXPmrHmXuXafai9sZbvGM+l0aRIgh3Iw4LCQufemLxdf2h2pg++HVZlwv6KBGh2DYYvEAxO4
	6/fe5Axw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3V8a-0001rP-Jp; Fri, 30 Aug 2019 00:51:36 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3V7m-0001Mb-6h
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 00:50:47 +0000
Received: by mail-lj1-x244.google.com with SMTP id f9so4756383ljc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 17:50:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=LKaVdiULHZHeM3qmwqXGbS3W/6JSevNYH66TL2VqMJs=;
 b=FCvja2RR0Kl7bYsDQOOUQUjMRFvKXGR7eNe2NgdFDmbxw/n8dJHTjUoGSI+mau6Y+4
 Nur0MR6ogMXxJ5zfyi7m9Wy9jxTs0li83IAoNnO3od01GnS9Hqlng6pvxCjHf6xEnMyr
 augAVWdm8PjLCzmGgLHygy3NIRgFB7JySVZRBQN0s3ZKjzbUAEdFIJqIzM5lHjreRvGG
 snI7tdFTUKcqaa8IwauSlZkbGJE8QEkzS8ZNg5oOiKBIMrKDtwadtIdeZ6JwNYKeJIn3
 tKv1ox5CdWMtkIaJu0sJl+tRU4qXmxLrhXLswctpqbwRgon6CnOE9jLR+4q5IXCY6JhA
 KYLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=LKaVdiULHZHeM3qmwqXGbS3W/6JSevNYH66TL2VqMJs=;
 b=lSR2WBAw0lRS3ipBKvCEY0Tn1QE5qjf0A7omkb8k4cH361HjIJvB+dopGNf9gcluCN
 nGr6N3wjW9WTQYQWzVrdijNhT5L7WR1eWbbvteCQOFlPrKvfTMyCNRR4AIxLwQhwpYik
 quJE7QI3L0waSOzK7a//sOWRwRb9nBXnHuETk3Ihi7uvo2+5xBaOpCmdT6LtBXYGfBgH
 ZqPmEpbBkQqB35Wby941uf6gfREIZazEo5N1Nxu4mVJzTh/29yXRr+wwKXuo3Gwjp8Sn
 /KsAWU1ZtlNztQ74Kxo4DwSKhupURzsy2KfbIkSBhYVCsCQLjafOpyltfUoo9PxPyB+n
 To+g==
X-Gm-Message-State: APjAAAVtNciCPOUfar4dzlvUooGXwL9oDF6qw71ogXL9emfvEcFfnnZm
 LhefC/cUzDcl/e8MHEDglmOM1g==
X-Google-Smtp-Source: APXvYqwr9VPhPuNlVvj3eJbScYt62A3rntuEmrXbOlRiE2Zq78tGV5NynWDZnJoUv/97mud2fxSftg==
X-Received: by 2002:a2e:970e:: with SMTP id r14mr6839936lji.204.1567126244471; 
 Thu, 29 Aug 2019 17:50:44 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net.
 [178.94.200.168])
 by smtp.gmail.com with ESMTPSA id f19sm628149lfk.43.2019.08.29.17.50.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 17:50:43 -0700 (PDT)
From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To: linux@armlinux.org.uk, ast@kernel.org, daniel@iogearbox.net, yhs@fb.com,
 davem@davemloft.net, jakub.kicinski@netronome.com, hawk@kernel.org,
 john.fastabend@gmail.com
Subject: [PATCH RFC bpf-next 02/10] samples: bpf: Makefile: remove target for
 native build
Date: Fri, 30 Aug 2019 03:50:29 +0300
Message-Id: <20190830005037.24004-3-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190830005037.24004-1-ivan.khoronzhuk@linaro.org>
References: <20190830005037.24004-1-ivan.khoronzhuk@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_175046_250334_9CB94793 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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

No need to set --target for native build, at least for arm, the
default target will be used anyway. In case of arm, for at least
clang 5 - 10 it causes error like:

clang: warning: unknown platform, assuming -mfloat-abi=soft
LLVM ERROR: Unsupported calling convention
make[2]: *** [/home/root/snapshot/samples/bpf/Makefile:299:
/home/root/snapshot/samples/bpf/sockex1_kern.o] Error 1

To make the platform to be known, only set to real triple helps:
--target=arm-linux-gnueabihf
or just drop the target key to use default one. Decision to just drop
it and thus default target will be used, looks better.

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 samples/bpf/Makefile | 2 --
 1 file changed, 2 deletions(-)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index 61b7394b811e..a2953357927e 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -197,8 +197,6 @@ BTF_PAHOLE ?= pahole
 ifdef CROSS_COMPILE
 HOSTCC = $(CROSS_COMPILE)gcc
 CLANG_ARCH_ARGS = --target=$(notdir $(CROSS_COMPILE:%-=%))
-else
-CLANG_ARCH_ARGS = -target $(ARCH)
 endif
 
 # Don't evaluate probes and warnings if we need to run make recursively
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
