Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E2CAA2BE3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 02:53:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Tksc/yI1FGbGUkU+8jsVF9m3J5jdCv1Z38KtzKEx49c=; b=NZDWI5syMzhkeb9BQClNFkk9CT
	2ZPFbHO0v5fw/njwIgWueW/bykqVz/nN69p35iJrsSQv/4IzXo4d4vO+QV0aNxslLyXrNXUbuqOtm
	3+XnNVfTCMeYSoZVgSpqGV1Vud/DVRe3F/uciZ5sqFWPO10V099MXTmui9wrJPL7FfbwllNgBxBR3
	gsAT9kvRsnP8E6uNr1CMW7ytwX6A636hqyZFRckR5057DO8HmypU5J7DWGxo+B2B7l1ypwrGEoUVs
	oKxHXQiqHC3vEo6K2AwYNveErP+Kqp7jVKBMDJNvaJwoDpr1g9R2j/25guXlTifOyRtttcjlPOZgb
	cQqxA9vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3VAF-0003Hv-7F; Fri, 30 Aug 2019 00:53:19 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3V7t-0001Tq-Dp
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 00:50:55 +0000
Received: by mail-lj1-x241.google.com with SMTP id l14so4830705lje.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 17:50:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=eRu74lcVO6wVz56irfReRFgKKrKVWSF8s29xnt/RZAY=;
 b=aGgIzR5sxMevxwKrFIyIUyDYL1+Nx/1OC8zAJhAo/8dNBndVj2YmCvfj4i/zxgGBQ5
 9edGcAC+kLpfo+7btqyQXLrPsDRjsU5GiMXrZ3F1bTwelUYM704o4c4HOhlb9i4g2T2G
 46UcPIwAy05XmYLGl6WZEm82+FLAfxfQddpq5RM57C+zoFIgNj/WnvAj9M3P90P8JtVK
 fUQhcgTmih1w2KzIBZh2ceq9oweGUIxFdv9byIZH8yosJuMVvajEvIs+cuV9WSxGmoKX
 yK2E/F55R48zySZ4XYDK0bxU0szO5ISOj0W65i2/9aLaZho9b6vP+D9pYH9vnnHPIIXd
 /sVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=eRu74lcVO6wVz56irfReRFgKKrKVWSF8s29xnt/RZAY=;
 b=RzvyW1yxNvFB0fY6C9GZ5t5Tu/dUy2j/SkqRtaBTm9/ufqtq5M+bl9PU++cN5eQcLJ
 LsZhRBdXhjL5HLUuhsD4B0pGZkozMp/9TSmjbPqJJjH8H+CZm2gt06EOl0cuaoQN6UpY
 59lwmqGtRS0A4d+0/ONC4a601cI/hggqtXooLW20dU7pVXrIvfbul3bhnburXLr4hj2P
 8K0hMGn9F0nhI9NNn047W6MacyUVp9HqM281urvBOB2TabERcxsmpRQ+aNNFlY1lPNRg
 YCn4EqWJp7s4s7us4NpJDl66G3SMn3ClIrUUTM633tvLcRgQjQGrB7sKq3MCmIqhwmg5
 3vxw==
X-Gm-Message-State: APjAAAUzLeBmLVt/cZ4Phzk/GcaTpf5yVx9MASHQ21Y7P38HbxhIQeA7
 jzXGTNJu+yXE4QajqG82h5W6/g==
X-Google-Smtp-Source: APXvYqy6rek51YkaTV1nUhUOyqQ0yD+SP7FpICbjOhyO7EA98MykAeJdl6ufwnoeFlJrYhw0v9K3OA==
X-Received: by 2002:a2e:9f02:: with SMTP id u2mr7121058ljk.4.1567126251915;
 Thu, 29 Aug 2019 17:50:51 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net.
 [178.94.200.168])
 by smtp.gmail.com with ESMTPSA id f19sm628149lfk.43.2019.08.29.17.50.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 17:50:51 -0700 (PDT)
From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To: linux@armlinux.org.uk, ast@kernel.org, daniel@iogearbox.net, yhs@fb.com,
 davem@davemloft.net, jakub.kicinski@netronome.com, hawk@kernel.org,
 john.fastabend@gmail.com
Subject: [PATCH RFC bpf-next 08/10] samples: bpf: Makefile: base progs build
 on Makefile.progs
Date: Fri, 30 Aug 2019 03:50:35 +0300
Message-Id: <20190830005037.24004-9-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190830005037.24004-1-ivan.khoronzhuk@linaro.org>
References: <20190830005037.24004-1-ivan.khoronzhuk@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_175053_674450_D02ACF17 
X-CRM114-Status: GOOD (  12.35  )
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

The main reason for that - HOSTCC and CC have different aims.
It was tested for arm cross compilation, based on linaro toolchain,
but should work for others.

In order to split cross compilation with host build, base bpf samples
on Makefile.progs. I've verified it on arm with adding SYSROOT.
It's also convenient when debug is with NFC.
To cross-compile I've used:

export ARCH=arm
export CROSS_COMPILE=arm-linux-gnueabihf-
make -j4 samples/bpf/ SYSROOT="path/to/sysroot"

Sysroot contains correct headers installed ofc.

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 samples/bpf/Makefile   | 164 ++++++++++++++++++++++++-----------------
 samples/bpf/README.rst |   7 ++
 2 files changed, 102 insertions(+), 69 deletions(-)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index 043f9cc14cdd..ed7131851172 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -4,55 +4,53 @@ BPF_SAMPLES_PATH ?= $(abspath $(srctree)/$(src))
 TOOLS_PATH := $(BPF_SAMPLES_PATH)/../../tools
 
 # List of programs to build
-hostprogs-y := test_lru_dist
-hostprogs-y += sock_example
-hostprogs-y += fds_example
-hostprogs-y += sockex1
-hostprogs-y += sockex2
-hostprogs-y += sockex3
-hostprogs-y += tracex1
-hostprogs-y += tracex2
-hostprogs-y += tracex3
-hostprogs-y += tracex4
-hostprogs-y += tracex5
-hostprogs-y += tracex6
-hostprogs-y += tracex7
-hostprogs-y += test_probe_write_user
-hostprogs-y += trace_output
-hostprogs-y += lathist
-hostprogs-y += offwaketime
-hostprogs-y += spintest
-hostprogs-y += map_perf_test
-hostprogs-y += test_overhead
-hostprogs-y += test_cgrp2_array_pin
-hostprogs-y += test_cgrp2_attach
-hostprogs-y += test_cgrp2_sock
-hostprogs-y += test_cgrp2_sock2
-hostprogs-y += xdp1
-hostprogs-y += xdp2
-hostprogs-y += xdp_router_ipv4
-hostprogs-y += test_current_task_under_cgroup
-hostprogs-y += trace_event
-hostprogs-y += sampleip
-hostprogs-y += tc_l2_redirect
-hostprogs-y += lwt_len_hist
-hostprogs-y += xdp_tx_iptunnel
-hostprogs-y += test_map_in_map
-hostprogs-y += per_socket_stats_example
-hostprogs-y += xdp_redirect
-hostprogs-y += xdp_redirect_map
-hostprogs-y += xdp_redirect_cpu
-hostprogs-y += xdp_monitor
-hostprogs-y += xdp_rxq_info
-hostprogs-y += syscall_tp
-hostprogs-y += cpustat
-hostprogs-y += xdp_adjust_tail
-hostprogs-y += xdpsock
-hostprogs-y += xdp_fwd
-hostprogs-y += task_fd_query
-hostprogs-y += xdp_sample_pkts
-hostprogs-y += ibumad
-hostprogs-y += hbm
+progs-y := test_lru_dist
+progs-y += sock_example
+progs-y += fds_example
+progs-y += sockex1
+progs-y += sockex2
+progs-y += sockex3
+progs-y += tracex1
+progs-y += tracex2
+progs-y += tracex3
+progs-y += tracex4
+progs-y += tracex5
+progs-y += tracex6
+progs-y += tracex7
+progs-y += test_probe_write_user
+progs-y += trace_output
+progs-y += lathist
+progs-y += offwaketime
+progs-y += spintest
+progs-y += map_perf_test
+progs-y += test_overhead
+progs-y += test_cgrp2_array_pin
+progs-y += test_cgrp2_attach
+progs-y += test_cgrp2_sock
+progs-y += test_cgrp2_sock2
+progs-y += xdp1
+progs-y += xdp2
+progs-y += xdp_router_ipv4
+progs-y += test_current_task_under_cgroup
+progs-y += trace_event
+progs-y += sampleip
+progs-y += tc_l2_redirect
+progs-y += lwt_len_hist
+progs-y += xdp_tx_iptunnel
+progs-y += test_map_in_map
+progs-y += xdp_redirect_map
+progs-y += xdp_redirect_cpu
+progs-y += xdp_monitor
+progs-y += xdp_rxq_info
+progs-y += syscall_tp
+progs-y += cpustat
+progs-y += xdp_adjust_tail
+progs-y += xdpsock
+progs-y += xdp_fwd
+progs-y += task_fd_query
+progs-y += xdp_sample_pkts
+progs-y += ibumad
+progs-y += hbm
 
 # Libbpf dependencies
 LIBBPF = $(TOOLS_PATH)/lib/bpf/libbpf.a
@@ -111,7 +109,7 @@ ibumad-objs := bpf_load.o ibumad_user.o $(TRACE_HELPERS)
 hbm-objs := bpf_load.o hbm.o $(CGROUP_HELPERS)
 
 # Tell kbuild to always build the programs
-always := $(hostprogs-y)
+always := $(progs-y)
 always += sockex1_kern.o
 always += sockex2_kern.o
 always += sockex3_kern.o
@@ -171,26 +169,51 @@ always += ibumad_kern.o
 always += hbm_out_kern.o
 always += hbm_edt_kern.o
 
-KBUILD_HOSTCFLAGS += -I$(objtree)/usr/include
-KBUILD_HOSTCFLAGS += -I$(srctree)/tools/lib/bpf/
-KBUILD_HOSTCFLAGS += -I$(srctree)/tools/testing/selftests/bpf/
-KBUILD_HOSTCFLAGS += -I$(srctree)/tools/lib/ -I$(srctree)/tools/include
-KBUILD_HOSTCFLAGS += -I$(srctree)/tools/perf
-
-HOSTCFLAGS_bpf_load.o += -I$(objtree)/usr/include -Wno-unused-variable
-
-KBUILD_HOSTLDLIBS		+= $(LIBBPF) -lelf
-HOSTLDLIBS_tracex4		+= -lrt
-HOSTLDLIBS_trace_output	+= -lrt
-HOSTLDLIBS_map_perf_test	+= -lrt
-HOSTLDLIBS_test_overhead	+= -lrt
-HOSTLDLIBS_xdpsock		+= -pthread
-
 # Strip all expet -D options needed to handle linux headers
 # for arm it's __LINUX_ARM_ARCH__ and potentially others fork vars
 D_OPTIONS = $(shell echo "$(KBUILD_CFLAGS) " | sed 's/[[:blank:]]/\n/g' | \
 	sed '/^-D/!d' | tr '\n' ' ')
 
+ifdef SYSROOT
+ccflags-y += --sysroot=${SYSROOT}
+ccflags-y += -I${SYSROOT}/usr/include
+CLANG_EXTRA_CFLAGS := $(ccflags-y)
+PROGS_LDFLAGS := -L${SYSROOT}/usr/lib
+endif
+
+ccflags-y += -I$(srctree)/tools/lib/bpf/
+ccflags-y += -I$(srctree)/tools/testing/selftests/bpf/
+ccflags-y += -I$(srctree)/tools/lib/
+ccflags-y += -I$(srctree)/tools/perf
+
+ccflags-y += $(D_OPTIONS)
+ccflags-y += -Wall
+ccflags-y += -Wmissing-prototypes
+ccflags-y += -Wstrict-prototypes
+ccflags-y += -fomit-frame-pointer
+
+PROGS_CFLAGS := $(ccflags-y)
+
+ccflags-y += -I$(objtree)/usr/include
+ccflags-y += -I$(srctree)/tools/include
+
+PROGCFLAGS_bpf_load.o += -I$(objtree)/usr/include -I$(srctree)/tools/include \
+			 -Wno-unused-variable
+PROGCFLAGS_sampleip_user.o += -I$(srctree)/tools/include
+PROGCFLAGS_task_fd_query_user.o += -I$(srctree)/tools/include
+PROGCFLAGS_trace_event_user.o += -I$(srctree)/tools/include
+PROGCFLAGS_trace_output_user.o += -I$(srctree)/tools/include
+PROGCFLAGS_tracex6_user.o += -I$(srctree)/tools/include
+PROGCFLAGS_xdp_sample_pkts_user.o += -I$(srctree)/tools/include
+PROGCFLAGS_xdpsock_user.o += -I$(srctree)/tools/include
+
+PROGS_LDLIBS			:= $(LIBBPF) -lelf
+PROGLDLIBS_tracex4		+= -lrt
+PROGLDLIBS_trace_output		+= -lrt
+PROGLDLIBS_map_perf_test	+= -lrt
+PROGLDLIBS_test_overhead	+= -lrt
+PROGLDLIBS_xdpsock		+= -pthread
+
 CLANG_EXTRA_CFLAGS += $(D_OPTIONS)
 
 # Allows pointing LLC/CLANG to a LLVM backend with bpf support, redefine on cmdline:
@@ -202,15 +225,14 @@ BTF_PAHOLE ?= pahole
 
 # Detect that we're cross compiling and use the cross compiler
 ifdef CROSS_COMPILE
-HOSTCC = $(CROSS_COMPILE)gcc
 CLANG_ARCH_ARGS = --target=$(notdir $(CROSS_COMPILE:%-=%))
 endif
 
 # Don't evaluate probes and warnings if we need to run make recursively
 ifneq ($(src),)
 HDR_PROBE := $(shell printf "\#include <linux/types.h>\n struct list_head { int a; }; int main() { return 0; }" | \
-	$(HOSTCC) $(KBUILD_HOSTCFLAGS) -x c - -o /dev/null 2>/dev/null && \
-	echo okay)
+	$(CC) $(PROGS_CFLAGS) $(PROGS_LDFLAGS) -x c - -o /dev/null \
+	2>/dev/null && echo okay)
 
 ifeq ($(HDR_PROBE),)
 $(warning WARNING: Detected possible issues with include path.)
@@ -246,7 +268,9 @@ clean:
 
 $(LIBBPF): FORCE
 # Fix up variables inherited from Kbuild that tools/ build system won't like
-	$(MAKE) -C $(dir $@) RM='rm -rf' LDFLAGS= srctree=$(BPF_SAMPLES_PATH)/../../ O=
+	$(MAKE) -C $(dir $@) RM='rm -rf' EXTRA_CFLAGS="$(ccflags-y)" \
+		EXTRA_CXXFLAGS="$(ccflags-y)" LDFLAGS=$(PROGS_LDFLAGS) \
+		srctree=$(BPF_SAMPLES_PATH)/../../ O=
 
 $(obj)/syscall_nrs.h:	$(obj)/syscall_nrs.s FORCE
 	$(call filechk,offsets,__SYSCALL_NRS_H__)
@@ -283,6 +307,8 @@ $(obj)/hbm_out_kern.o: $(src)/hbm.h $(src)/hbm_kern.h
 $(obj)/hbm.o: $(src)/hbm.h
 $(obj)/hbm_edt_kern.o: $(src)/hbm.h $(src)/hbm_kern.h
 
+-include $(BPF_SAMPLES_PATH)/Makefile.prog
+
 # asm/sysreg.h - inline assembly used by it is incompatible with llvm.
 # But, there is no easy way to fix it, so just exclude it since it is
 # useless for BPF samples.
diff --git a/samples/bpf/README.rst b/samples/bpf/README.rst
index 5f27e4faca50..6b5e4eace977 100644
--- a/samples/bpf/README.rst
+++ b/samples/bpf/README.rst
@@ -74,3 +74,10 @@ samples for the cross target.
 export ARCH=arm64
 export CROSS_COMPILE="aarch64-linux-gnu-"
 make samples/bpf/ LLC=~/git/llvm/build/bin/llc CLANG=~/git/llvm/build/bin/clang
+
+If need to use environment of target board, the SYSROOT also can be set,
+pointing on FS of target board:
+
+make samples/bpf/ LLC=~/git/llvm/build/bin/llc \
+     CLANG=~/git/llvm/build/bin/clang \
+     SYSROOT=~/some_sdk/linux-devkit/sysroots/aarch64-linux-gnu
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
