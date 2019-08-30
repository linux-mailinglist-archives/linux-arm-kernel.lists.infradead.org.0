Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95858A2BCA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 02:51:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HNUAW7lhF9PCDZHO+Kp9f+9eArVL7uy8GLCmc8ojRrc=; b=VA8hMRG95ti5X6n+RyRqZTS+oI
	Uda+7kvzT7Wo6Tq/PsA+auR3+N/02474mdc6o3eu1zeoBh2gfPliab3MsyOlfkzD0gukrN8GRNY4K
	g8W3NgjXaOYiRvLOGtyop6sbfQRf37kYAk4Po2qnWqnXphXWD3Kd1uCqkooUW9+WZsQIWuoNFYrHt
	gFdk90eQv8Lb2nI0+aVg3tiqDuGXMjCq22f2+02C6cph7JuzCpI31lodCuyLqrI7kzM74IPAS8pBE
	LBDdoXoxBCDbVNwMAokQNsllq02Mz9Qrs+HGsEfyl29QtLon8bWh7NY5bVPAE66UYZsWKOzhpzsQ/
	tA9YSF1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3V8H-0001Y1-Ub; Fri, 30 Aug 2019 00:51:18 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3V7l-0001MP-5a
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 00:50:46 +0000
Received: by mail-lj1-x242.google.com with SMTP id x3so4817601lji.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 17:50:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Uyna4IYOJol121SLmRwAZvx/NaOoPDVjYK6GTYbGUpc=;
 b=kCLWWa8CrxMwJCc3us4OMb8Z4KxeYvEnIDyQFEEyN+J2uzU3tej/3tlqELGg51s510
 Hx6FevFLPM/rW9mn0TSPGLrFyZdU6GgtFt0G6VlDwBwg2z9T4kV5uiNUBxi6zOGGGkJi
 EM8Wepqm3ulk4jB04e2UspjIt0F9jNtMphdz7dcZNmhdaQOLOKo4Ib3a8U488jLM5PK4
 f+21fUenLBmLcDN/uGf5mOGRC8y6460M/FviJOCMebLC2pF4tXTUBvvZhDmDPVSv28Mk
 BI73jiSk0NojKt3fQTjexjSwQHhZf+i/x5gkVDbVmTy1jSWDE1mgCJu/E1vKe4LXDflk
 cS6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Uyna4IYOJol121SLmRwAZvx/NaOoPDVjYK6GTYbGUpc=;
 b=lNgVx24HOAyczp2+O65mO6N5GTUCBdsmNFtrYw84FsiNi67GBadOu1ucyn4nC+qx25
 ZozarViIplFoFvgWj0aGZu1fYAVGNrkyTovYzVzlizW386BJPQhhSznmC7S6iOStGrqp
 K+7A1nVYhgzKU3I/iOd7S+c4F8CJU/wWnUJheSLN592FjYQqwx+t+1AzRffR43PTCJ07
 oP1YLoqZnbeERM0HUz6iTX72gCN+kIAH3z5CwafPpRBRebKuGbKIf1KbaaY8xs0aB6PO
 RO12JNMsbPxUWzPoAm5EpWZo567Bw8Oy6RYMSgXYs5+hA+vlpM7VV3gHuhzF5kB3UQww
 Ijwg==
X-Gm-Message-State: APjAAAW1P9TP1xNt4GkHSlWFacS9AY75j0dZ+8eldc5AUiGWoIzGL7nr
 fXtx71FpKlJGngtYyj+r4dletw==
X-Google-Smtp-Source: APXvYqwczd6nt8u3EfpPxDPMTye3gjY7N3FR/dqe8OYgFULHyQXUnfqd7PQD/tD94qNCi+yyNnGlYQ==
X-Received: by 2002:a2e:8455:: with SMTP id u21mr6903469ljh.20.1567126243059; 
 Thu, 29 Aug 2019 17:50:43 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net.
 [178.94.200.168])
 by smtp.gmail.com with ESMTPSA id f19sm628149lfk.43.2019.08.29.17.50.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 17:50:42 -0700 (PDT)
From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To: linux@armlinux.org.uk, ast@kernel.org, daniel@iogearbox.net, yhs@fb.com,
 davem@davemloft.net, jakub.kicinski@netronome.com, hawk@kernel.org,
 john.fastabend@gmail.com
Subject: [PATCH RFC bpf-next 01/10] samples: bpf: Makefile: use --target from
 cross-compile
Date: Fri, 30 Aug 2019 03:50:28 +0300
Message-Id: <20190830005037.24004-2-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190830005037.24004-1-ivan.khoronzhuk@linaro.org>
References: <20190830005037.24004-1-ivan.khoronzhuk@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_175045_212454_4E6D47E8 
X-CRM114-Status: UNSURE (   8.56  )
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

For cross compiling the target triple can be inherited from
cross-compile prefix as it's done in CLANG_FLAGS from kernel makefile.
So copy-paste this decision from kernel Makefile.

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 samples/bpf/Makefile | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index 1d9be26b4edd..61b7394b811e 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -196,6 +196,8 @@ BTF_PAHOLE ?= pahole
 # Detect that we're cross compiling and use the cross compiler
 ifdef CROSS_COMPILE
 HOSTCC = $(CROSS_COMPILE)gcc
+CLANG_ARCH_ARGS = --target=$(notdir $(CROSS_COMPILE:%-=%))
+else
 CLANG_ARCH_ARGS = -target $(ARCH)
 endif
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
