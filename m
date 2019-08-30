Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6D5DA2BE2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 02:53:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Glxz652lzXsIvVziIy9kjs/iql1q/LXa+RO6B+V2xW4=; b=ujBi29I1c3FTy7krkycZU1YsJG
	EQlT6UGGoqs8FTm9qZiiSnKofQZvEtmeVY/gtwThNLl9qT3OcCm4cFGvTuM86rn0Q7k6TAeFnia1X
	kqiWTe8BetiACObZNzPfclOQ70DtiKmtNQy8jyEshC9Eodw8tlWv4LrduXmKcpJTfwMugYnVLvgL5
	KjbLvpFy73t+TYMYqrNmIiEqIIMiVRaz+ijP5sACM8/ypzoYe6MXfCfFZBcr1tU6ELpxVqn3XCxo5
	VLFldq3iynjA4cjFRFTyo00yhaOkv6V4CfOUzulBcHEFOPdkThbzH61snkwVwRnvXQrBt+pUNZpbM
	EAdxPTaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3V9z-00033D-7M; Fri, 30 Aug 2019 00:53:03 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3V7s-0001S8-0s
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 00:50:53 +0000
Received: by mail-lf1-x142.google.com with SMTP id z21so3996524lfe.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 17:50:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Ia9Iohgefzn/RbnoIHs2aN928PonhCPU+GJ0mIg1xw0=;
 b=nauxkLeh1ZIxd8fP3xfh92I409w8DtNf/fnJmlw8/s9VqlgjubltPx0An1YWZH63Gp
 /TU66tFs3h09+jwh0GQFAkphSKeFfuTA4fyRKiDv+BGn8HEGJ0GQ8uWN5KtYMp4+0+Wt
 yeefhppCuIPIX3qDij/rrFlPldmQRE59HGCtjQQbAIwZDsunfz9iBC10S7GurulzO27V
 lVzBOobQwYJfYUmGpSLW5FCPoxlnTesIic63c8f9+TL2Fa3O+RTzLMrhS7+qwAGYHToD
 NhKirRP5II5myOl4O26T3M66TxYAY2Bdx9hqZThpHbkaBfucoIK/qhsrs16aksO8dxvB
 f0pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Ia9Iohgefzn/RbnoIHs2aN928PonhCPU+GJ0mIg1xw0=;
 b=dW54vM5QpC758fQVZs7DkYIphoGYHVeiiVktp3+RzS+6WCjVlsYjacWkOr7LTJXbF8
 y7UnGnIATQCUHU37CxMvLKzVR/3s0AgikG9PyHN51d+w7QBvWPWGbZT/9Cf2/YZ0NV9U
 +c0WOxd5enZcHLelSO7V04Q+3kAGpTSdGBC45mza2oNGWytocUD5enBBiKt2mIN5kZ+m
 6CGdviQJ1blF3zEAjuE3Sd0vS9zeLxKqv71DdPMvnGs7cbZtjSgQdhKWe8aSgaf5lURV
 Cy6AuFI+nSZT+Jq2ZiyfleKSfiTjcryu9mUlq7I1vjjIe/wLuYz5KKvLYj44P6JT33wU
 3sEw==
X-Gm-Message-State: APjAAAU1Xztbdeu+byM2wlpX4dJP0jOkZUholEU0/q/fAWwPAvLeFirL
 moyRjI1/YhfLRYUfz+mtuYhXKg==
X-Google-Smtp-Source: APXvYqy1+wbSVRXaVz0I1Wy246SkFUj+yZxpo8NGJNvbTRSJX75MH0Q94N5wXdG//lglqP0UWSKwdg==
X-Received: by 2002:ac2:5608:: with SMTP id v8mr7690120lfd.95.1567126250684;
 Thu, 29 Aug 2019 17:50:50 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net.
 [178.94.200.168])
 by smtp.gmail.com with ESMTPSA id f19sm628149lfk.43.2019.08.29.17.50.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 17:50:50 -0700 (PDT)
From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To: linux@armlinux.org.uk, ast@kernel.org, daniel@iogearbox.net, yhs@fb.com,
 davem@davemloft.net, jakub.kicinski@netronome.com, hawk@kernel.org,
 john.fastabend@gmail.com
Subject: [PATCH RFC bpf-next 07/10] samples: bpf: add makefile.prog for
 separate CC build
Date: Fri, 30 Aug 2019 03:50:34 +0300
Message-Id: <20190830005037.24004-8-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190830005037.24004-1-ivan.khoronzhuk@linaro.org>
References: <20190830005037.24004-1-ivan.khoronzhuk@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_175052_114348_63E05FAA 
X-CRM114-Status: GOOD (  13.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
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

The HOSTCC is supposed to build binaries and tools running on the host
afterwards, in order to simplify build or so, like "fixdep" or else.
In case of cross compiling "fixdep" is executed on host when the rest
samples should run on target arch. In order to build binaries for
target arch with CC and tools running on host with HOSTCC, lets add
Makefile.prog for simplicity, having definition and routines similar
to ones, used in script/Makefile.host. That allows later add
cross-compilation to samples/bpf with minimum changes.

Makefile.prog contains only stuff needed for samples/bpf, potentially
can be reused and sophisticated for other prog sets later and now
needed only for unblocking tricky samples/bpf cross compilation.

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 samples/bpf/Makefile.prog | 77 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 77 insertions(+)
 create mode 100644 samples/bpf/Makefile.prog

diff --git a/samples/bpf/Makefile.prog b/samples/bpf/Makefile.prog
new file mode 100644
index 000000000000..d5d02fbb5e6e
--- /dev/null
+++ b/samples/bpf/Makefile.prog
@@ -0,0 +1,77 @@
+# SPDX-License-Identifier: GPL-2.0
+# ==========================================================================
+# Building binaries on the host system
+# Binaries are not used during the compilation of the kernel, and intendent to
+# be build for target board, target board can be host ofc. Added to build
+# binaries to run not on host system.
+#
+# Both C and C++ are supported, but preferred language is C for such utilities.
+#
+# Sample syntax (see Documentation/kbuild/makefiles.rst for reference)
+# progs-y := xdpsock_example
+# Will compile xdpsock_example.c and create an executable named xdpsock_example
+#
+# progs-y    := xdpsock
+# xdpsock-objs := xdpsock_user.o xdpsock_user2.o
+# Will compile xdpsock.c and xdpsock.c, and then link the executable
+# xdpsock, based on xdpsock_user.o and xdpsock_user2.o
+#
+# Inherited from scripts/Makefile.host
+#
+__progs := $(sort $(progs-y))
+
+# C code
+# Executables compiled from a single .c file
+prog-csingle	:= $(foreach m,$(__progs), \
+			$(if $($(m)-objs)$($(m)-cxxobjs),,$(m)))
+
+# C executables linked based on several .o files
+prog-cmulti	:= $(foreach m,$(__progs),\
+		   $(if $($(m)-cxxobjs),,$(if $($(m)-objs),$(m))))
+
+# Object (.o) files compiled from .c files
+prog-cobjs	:= $(sort $(foreach m,$(__progs),$($(m)-objs)))
+
+prog-csingle	:= $(addprefix $(obj)/,$(prog-csingle))
+prog-cmulti	:= $(addprefix $(obj)/,$(prog-cmulti))
+prog-cobjs	:= $(addprefix $(obj)/,$(prog-cobjs))
+
+#####
+# Handle options to gcc. Support building with separate output directory
+
+_progc_flags   = $(PROGS_CFLAGS) \
+                 $(PROGCFLAGS_$(basetarget).o)
+
+# $(objtree)/$(obj) for including generated headers from checkin source files
+ifeq ($(KBUILD_EXTMOD),)
+ifdef building_out_of_srctree
+_progc_flags   += -I $(objtree)/$(obj)
+endif
+endif
+
+progc_flags    = -Wp,-MD,$(depfile) $(_progc_flags)
+
+# Create executable from a single .c file
+# prog-csingle -> Executable
+quiet_cmd_prog-csingle 	= CC  $@
+      cmd_prog-csingle	= $(CC) $(progc_flags) $(PROGS_LDFLAGS) -o $@ $< \
+		$(PROGS_LDLIBS) $(PROGLDLIBS_$(@F))
+$(prog-csingle): $(obj)/%: $(src)/%.c FORCE
+	$(call if_changed_dep,prog-csingle)
+
+# Link an executable based on list of .o files, all plain c
+# prog-cmulti -> executable
+quiet_cmd_prog-cmulti	= LD  $@
+      cmd_prog-cmulti	= $(CC) $(progc_flags) $(PROGS_LDFLAGS) -o $@ \
+			  $(addprefix $(obj)/,$($(@F)-objs)) \
+			  $(PROGS_LDLIBS) $(PROGLDLIBS_$(@F))
+$(prog-cmulti): $(prog-cobjs) FORCE
+	$(call if_changed,prog-cmulti)
+$(call multi_depend, $(prog-cmulti), , -objs)
+
+# Create .o file from a single .c file
+# prog-cobjs -> .o
+quiet_cmd_prog-cobjs	= CC  $@
+      cmd_prog-cobjs	= $(CC) $(progc_flags) -c -o $@ $<
+$(prog-cobjs): $(obj)/%.o: $(src)/%.c FORCE
+	$(call if_changed_dep,prog-cobjs)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
