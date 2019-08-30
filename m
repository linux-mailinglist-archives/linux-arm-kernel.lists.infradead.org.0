Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 636E7A2BC0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 02:51:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=y+4VHnzMFa5vD3QYJPuscouEtv7gWzTD1+tHO+jCib0=; b=Lc/
	vMjiJg+5I65MEEt0izLMpHTLfKhL5bGJ3C5JJwrs+kgLGDoVbxyDCqbCP9LOpMtbabrYjoT+LdOS4
	pgUww2nCunArRxoV3z6qkkD6RYL3xnrlCBpZZFnW+yuupHvHnRt+1+6v0SzD7cSk95LKQA/9pOyRv
	V6h/fRRf34fTnM6hKnL5Waof5LgERlAOpcC6c2sB3ifeBfMIdOTLgY5cHLnhWkUGgFbYdTLWeYS5g
	DgdBYFmM7UJwT4U+XJKVBTbe8hM+BAfF1666nI5whan6oybquFwLMWlwz9fCPkrRMo1aMZywOJLpJ
	i3twpUhMwexy1N84lRUKLLzojjBAiCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3V7v-0001Nl-MS; Fri, 30 Aug 2019 00:50:55 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3V7k-0001ML-Q5
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 00:50:46 +0000
Received: by mail-lj1-x241.google.com with SMTP id u15so4828654ljl.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 17:50:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=xMuXLxwuJeSWopT/f8dXFbI5jVuji3StpvlKwxHupj4=;
 b=rnr4X0TQdkwszhW4r53DgSGbfSyqjshLRLQ9ru9r0hiQjF6Pmzl6cFSGIXGZDyX8FM
 kO4l69Gy3FILbmNq5bSUGsIpaZ9XaIHD/+YK6HPdgABmplST2YZNTLJo9RawuaCo+ute
 7rBOt9fScpmIQdED0bS9ysnX6D/5oXmASshjL3akOMkCpUlDb0m3RuUipo7CfFf44g5O
 NT/ccLrrYb5iZAFECZ3wB98QbOk+AWPIlhlBT8BwE0+tWyGIst3jCLaW5eI5KnWey2hK
 qT8PWkNXjiYDmWcUscqudRpRLzArq1rvEq/ytQzRBj7ZXjV1OCAHSjD94QTSqLHQkDUW
 ogiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=xMuXLxwuJeSWopT/f8dXFbI5jVuji3StpvlKwxHupj4=;
 b=FqVIdAsve9A8XrtXF+g0BYpLcd2cAOs1wnRK4nHBeNh6FxD/s6H6ZUJq6MgQ5ySI/R
 G8vAVA+dwPi25Be9WVM9W3syGuoZKHLlrDL8a9itCvSo1ouqxb3R56QX72WQdcYgg/iq
 WQNn/VOHX+dncOeqk2cX9VEd2FD2zXbheLsX+uxsLyrFD1cgk1MXI51AfwnBsoxB5YSl
 jndHhVs5CLYQTJjkfSqTlCmCck68E03+HEUwUITvQX3cbwsbOfey+d21QOGsh6eGa9C1
 NCU/uJj/h1rxvWYxw2HibwhHefxZN2UOe4pP5RZ44GrdFug+SSs0TdbWeKc1GVQ/Zfsg
 NcYA==
X-Gm-Message-State: APjAAAVG1tliZQIrStDFWeKBqfNCm7o9mHr6CUkT2RWlGKFOLI31Igbo
 Cxla6PAluRW38//cPMWiMRXTuA==
X-Google-Smtp-Source: APXvYqxL710fHxqeBsIPyilVGaM4NIUyDBx68X3IEtdE/LKXFPKtMM8GtBcX4pfo/aWdd1ZNaV62/g==
X-Received: by 2002:a2e:9d9a:: with SMTP id c26mr7203774ljj.56.1567126241817; 
 Thu, 29 Aug 2019 17:50:41 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net.
 [178.94.200.168])
 by smtp.gmail.com with ESMTPSA id f19sm628149lfk.43.2019.08.29.17.50.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 17:50:41 -0700 (PDT)
From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To: linux@armlinux.org.uk, ast@kernel.org, daniel@iogearbox.net, yhs@fb.com,
 davem@davemloft.net, jakub.kicinski@netronome.com, hawk@kernel.org,
 john.fastabend@gmail.com
Subject: [PATCH RFC bpf-next 00/10] improve/fix cross-compilation for bpf
 samples
Date: Fri, 30 Aug 2019 03:50:27 +0300
Message-Id: <20190830005037.24004-1-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_175044_911980_7CAFDFD7 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
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

This series contains mainly fixes/improvements for cross-compilation
(also verified on native platform build), tested on arm, but intended
for any arch.

The several patches are related to llvm clang and should be out of this
series or even fixed in another way, and here just to get comments:
  arm: include: asm: swab: mask rev16 instruction for clang
  arm: include: asm: unified: mask .syntax unified for clang

Also, only for armv7, there is one more problem related to long and
void type sizes for 32 bits, while the BPF LLVM back end still
operates in 64 bit, but that's another story.

Smth related not only for cross-compilation and can have impact on other
archs and build environments, so might be good idea to verify it in order
to add appropriate changes, some warn options can be tuned, so comment.

Ivan Khoronzhuk (10):
  samples: bpf: Makefile: use --target from cross-compile
  samples: bpf: Makefile: remove target for native build
  libbpf: Makefile: add C/CXX/LDFLAGS to libbpf.so and test_libpf
    targets
  samples: bpf: use own EXTRA_CFLAGS for clang commands
  samples: bpf: Makefile: use vars from KBUILD_CFLAGS to handle linux
    headers
  samples: bpf: makefile: fix HDR_PROBE
  samples: bpf: add makefile.prog for separate CC build
  samples: bpf: Makefile: base progs build on Makefile.progs
  arm: include: asm: swab: mask rev16 instruction for clang
  arm: include: asm: unified: mask .syntax unified for clang

 arch/arm/include/asm/swab.h    |   3 +
 arch/arm/include/asm/unified.h |   6 +-
 samples/bpf/Makefile           | 177 +++++++++++++++++++--------------
 samples/bpf/Makefile.prog      |  77 ++++++++++++++
 samples/bpf/README.rst         |   7 ++
 tools/lib/bpf/Makefile         |  11 +-
 6 files changed, 205 insertions(+), 76 deletions(-)
 create mode 100644 samples/bpf/Makefile.prog

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
