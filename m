Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 568CE1583BE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 20:33:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=apHIdI1BvljZzLJQy8EkhEDCWOOfEbIurPlTSMlwq90=; b=H/8SIrSbIMUg7+
	7km7zn9ycDO26PAXbIOlgLcvGMLCa14Agihuz2+bkLkRkuY3gi5ApbC2P86WPF0XioBdgb65aFZ/y
	GHmxHeNuzop87sdXPBapQl0JD7eQAuKFP5GalptKT/yEFwt7NaAOXta3E+P99vGJ8C/ANNFpRJ0Ca
	wK9YY1SPYs+4K+7vvKKpnhyhEw8GoYVFf24smBMEDyzW9mqQW1UWtQ/ARnkbDDqj/MCSXMpFD5i1f
	f31P8c1LZY/eNF5SvsUfs381YGcgBL1qqhKiSwIhPRcJZEPqHZGscxixpB82BpT8rPYkhnNBGsacI
	T/e1kT1Q//+aOMinxeOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Eng-0007Gu-Lu; Mon, 10 Feb 2020 19:32:56 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Elt-0005VI-44
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 19:31:07 +0000
Received: by mail-ot1-x341.google.com with SMTP id 66so7543099otd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 11:31:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Dy7V9n1SJWAfsimqdnx79gIWJx+OE4CfcWEJjNElzkw=;
 b=kD5EGiWmI843sCuCafTUWkInv63C7SrnPb5eYa/PNLKeGUkbgs8l0tKEsrbARmFeO3
 WnDV5WSszUbzwfAhGPPrFN3uYkvvUZgZNfPv/RmgJGj1O3LaHMDNKg2LDgAb2xaw9T6a
 jtQyquGSSoFjFpvv8I0f9WMF2jMQbyTYs6jqo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Dy7V9n1SJWAfsimqdnx79gIWJx+OE4CfcWEJjNElzkw=;
 b=egsusc3gGAxSG+9DiWuVUbzJrbugtRgoz+UDvNQdk9KNyUFQf59fuz119/Kr2tuMPk
 i6tQ0H3cEj9kWNKIl3wnFvScCynfGdpGAD7X/cIf/eQtIJlfJG6Lg6hxB0mwK8U9VzcL
 ySYdBUGJvADY3xUcOIqj1aQg08FuMLH+DwljinfOyq80dr5vGw7uqBTUtRiTyPeQZWAY
 pZXADNPf+BRYi5RKVOcKqK/ZItihBm2F7gSRe7e4IDslYuhvPyrJH3tLL1xCfQ8RvcRI
 1MMmNsx8oEu5n3RjHmFeO6Fnk6epxBgHl8qxFi2SadLcyPbNdIyvxNLLy3cJBXv9acjr
 0C4A==
X-Gm-Message-State: APjAAAUErC3RxL6+w/50ItQSxVVEVcOt23Sglt/3W4IQEUYlEV4I5ht6
 gnUk1uNvaaep7LX9UxCfS8rUuw==
X-Google-Smtp-Source: APXvYqytQ6Tq8ED/M4IZzD6H8znkZODeLSYS85Lxv1Mg2ykDKGTymMbliK1RJrYqSv3Cgm5yBLjtiw==
X-Received: by 2002:a9d:5a09:: with SMTP id v9mr2153543oth.214.1581363064328; 
 Mon, 10 Feb 2020 11:31:04 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id p24sm358258otq.64.2020.02.10.11.31.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 11:31:02 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: Ingo Molnar <mingo@kernel.org>
Subject: [PATCH v3 7/7] selftests/exec: Add READ_IMPLIES_EXEC tests
Date: Mon, 10 Feb 2020 11:30:49 -0800
Message-Id: <20200210193049.64362-8-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200210193049.64362-1-keescook@chromium.org>
References: <20200210193049.64362-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_113105_177275_C8E74676 
X-CRM114-Status: GOOD (  21.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 Hector Marco-Gisbert <hecmargi@upv.es>, Russell King <linux@armlinux.org.uk>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Jason Gunthorpe <jgg@mellanox.com>, linux-kselftest@vger.kernel.org,
 kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to check the matrix of possible states for handling
READ_IMPLIES_EXEC across native, compat, and the state of PT_GNU_STACK,
add tests for these execution conditions.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 tools/testing/selftests/exec/Makefile         |  42 +++++-
 .../selftests/exec/read_implies_exec.c        | 121 ++++++++++++++++++
 .../selftests/exec/strip-gnu-stack-bits.c     |  34 +++++
 .../testing/selftests/exec/strip-gnu-stack.c  |  69 ++++++++++
 4 files changed, 265 insertions(+), 1 deletion(-)
 create mode 100644 tools/testing/selftests/exec/read_implies_exec.c
 create mode 100644 tools/testing/selftests/exec/strip-gnu-stack-bits.c
 create mode 100644 tools/testing/selftests/exec/strip-gnu-stack.c

diff --git a/tools/testing/selftests/exec/Makefile b/tools/testing/selftests/exec/Makefile
index 33339e31e365..085d0e4422ea 100644
--- a/tools/testing/selftests/exec/Makefile
+++ b/tools/testing/selftests/exec/Makefile
@@ -10,7 +10,19 @@ TEST_FILES := Makefile
 
 TEST_GEN_PROGS += recursion-depth
 
-EXTRA_CLEAN := $(OUTPUT)/subdir.moved $(OUTPUT)/execveat.moved $(OUTPUT)/xxxxx*
+TEST_GEN_FILES += strip-gnu-stack
+TEST_GEN_PROGS += rie-nx-gnu-stack rie-x-gnu-stack rie-missing-gnu-stack
+
+# While it would be nice to not build "compat" binaries on 32-bit builders,
+# there's no harm: they're just redundant to the native binaries, so skip
+# performing any detection for now, as it gets complex quickly.
+TEST_GEN_PROGS += rie-compat-nx-gnu-stack \
+		  rie-compat-x-gnu-stack \
+		  rie-compat-missing-gnu-stack
+
+EXTRA_CLEAN := $(OUTPUT)/subdir.moved $(OUTPUT)/execveat.moved \
+		$(OUTPUT)/rie-*.new \
+		$(OUTPUT)/xxxxx*
 
 include ../lib.mk
 
@@ -26,3 +38,31 @@ $(OUTPUT)/execveat.denatured: $(OUTPUT)/execveat
 	cp $< $@
 	chmod -x $@
 
+$(OUTPUT)/strip-gnu-stack: strip-gnu-stack.c strip-gnu-stack-bits.c
+	$(CC) $(CFLAGS) -o $@ $<
+
+$(OUTPUT)/rie-nx-gnu-stack: read_implies_exec.c
+	$(CC) $(CFLAGS) -Wl,-z,noexecstack -o $@.new $<
+	readelf -Wl $@.new | grep GNU_STACK | grep -q 'RW ' && \
+	mv $@.new $@
+$(OUTPUT)/rie-x-gnu-stack: read_implies_exec.c
+	$(CC) $(CFLAGS) -Wl,-z,execstack -o $@.new $<
+	readelf -Wl $@.new | grep GNU_STACK | grep -q 'RWE' && \
+	mv $@.new $@
+$(OUTPUT)/rie-missing-gnu-stack: read_implies_exec.c $(OUTPUT)/strip-gnu-stack
+	$(CC) $(CFLAGS) -o $@.new $<
+	$(OUTPUT)/strip-gnu-stack $@.new && \
+	mv $@.new $@
+
+$(OUTPUT)/rie-compat-nx-gnu-stack: read_implies_exec.c
+	$(CC) -m32 $(CFLAGS) -Wl,-z,noexecstack -o $@.new $<
+	readelf -Wl $@.new | grep GNU_STACK | grep -q 'RW ' && \
+	mv $@.new $@
+$(OUTPUT)/rie-compat-x-gnu-stack: read_implies_exec.c
+	$(CC) -m32 $(CFLAGS) -Wl,-z,execstack -o $@.new $<
+	readelf -Wl $@.new | grep GNU_STACK | grep -q 'RWE' && \
+	mv $@.new $@
+$(OUTPUT)/rie-compat-missing-gnu-stack: read_implies_exec.c $(OUTPUT)/strip-gnu-stack
+	$(CC) -m32 $(CFLAGS) -o $@.new $<
+	$(OUTPUT)/strip-gnu-stack $@.new && \
+	mv $@.new $@
diff --git a/tools/testing/selftests/exec/read_implies_exec.c b/tools/testing/selftests/exec/read_implies_exec.c
new file mode 100644
index 000000000000..4b253a84dd27
--- /dev/null
+++ b/tools/testing/selftests/exec/read_implies_exec.c
@@ -0,0 +1,121 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * This just examines a PROT_READ mapping to report if it see it gain
+ * PROT_EXEC too (which means that READ_IMPLIES_EXEC has been enabled).
+ */
+#include <stdint.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <string.h>
+#include <unistd.h>
+#include <sys/mman.h>
+#include <sys/types.h>
+
+const char maps_path[] = "/proc/self/maps";
+
+int main(int argc, char *argv[])
+{
+	char maps_line[1024];
+	FILE *maps;
+	void *region;
+	int flags = MAP_PRIVATE | MAP_ANONYMOUS;
+	int ret = -1;
+	int perms = -1;
+	int vma_64bit;
+
+	region = mmap(NULL, getpagesize(), PROT_READ, flags, -1, 0);
+	if (region == MAP_FAILED) {
+		perror("mmap");
+		return 128;
+	}
+	maps = fopen(maps_path, "r");
+	if (!maps) {
+		perror(maps_path);
+		ret = 127;
+		goto out_munmap;
+	}
+
+	memset(maps_line, 0, sizeof(maps_line));
+	while (fgets(maps_line, sizeof(maps_line), maps)) {
+		unsigned long long low, high;
+		char *end;
+
+		low = strtoull(maps_line, &end, 16);
+		if (*end != '-') {
+			fprintf(stderr, "Missing '-' separator, line: %s",
+				maps_line);
+			ret = 126;
+			goto out_close;
+		}
+		end++;
+
+		high = strtoull(end, &end, 16);
+		if (*end != ' ') {
+			fprintf(stderr, "Missing ' ' separator, line: %s",
+				maps_line);
+			ret = 125;
+			goto out_close;
+		}
+		end++;
+
+		if ((uintptr_t)region >= low && (uintptr_t)region < high) {
+			perms = 0;
+			perms |= end[0] == 'r' ? PROT_READ : 0;
+			perms |= end[1] == 'w' ? PROT_WRITE : 0;
+			perms |= end[2] == 'x' ? PROT_EXEC : 0;
+
+			break;
+		}
+	}
+	if (perms == -1) {
+		fprintf(stderr, "Could not find mmap region\n");
+		ret = 124;
+		goto out_close;
+	}
+
+	vma_64bit = sizeof(void *) == 8;
+	fprintf(stderr, "%s-bit, ", vma_64bit ? "64" : "32");
+
+	ret = 1;
+	if (strstr(argv[0], "missing-gnu-stack")) {
+		fprintf(stderr, "missing-gnu-stack, ");
+
+		/* Missing PT_GNU_STACK on 64-bit: not READ_IMPLIES_EXEC */
+		if (vma_64bit && (perms & PROT_EXEC) == 0)
+			ret = 0;
+		/* Missing PT_GNU_STACK on 32-bit enables READ_IMPLIES_EXEC */
+		if (!vma_64bit && (perms & PROT_EXEC) == PROT_EXEC)
+			ret = 0;
+	} else if (strstr(argv[0], "x-gnu-stack")) {
+		fprintf(stderr, "executable gnu-stack, ");
+
+		/* X PT_GNU_STACK should always leave READ_IMPLIES_EXEC off */
+		if ((perms & PROT_EXEC) == 0)
+			ret = 0;
+	} else if (strstr(argv[0], "nx-gnu-stack")) {
+		fprintf(stderr, "non-executable PT_GNU_STACK, ");
+
+		/* NX PT_GNU_STACK should always leave READ_IMPLIES_EXEC off */
+		if ((perms & PROT_EXEC) == 0)
+			ret = 0;
+	} else {
+		fprintf(stderr, "Unknown invocation\n");
+		ret = 123;
+		goto out_close;
+	}
+
+	fprintf(stderr, "READ_IMPLIES_EXEC is %s: ",
+		(perms & PROT_EXEC) ? "on" : "off");
+
+	if (ret)
+		fprintf(stderr, "FAIL: %s", maps_line);
+	else
+		fprintf(stderr, "ok\n");
+
+out_close:
+	fclose(maps);
+out_munmap:
+	munmap(region, getpagesize());
+
+	return ret;
+}
diff --git a/tools/testing/selftests/exec/strip-gnu-stack-bits.c b/tools/testing/selftests/exec/strip-gnu-stack-bits.c
new file mode 100644
index 000000000000..907e959c3477
--- /dev/null
+++ b/tools/testing/selftests/exec/strip-gnu-stack-bits.c
@@ -0,0 +1,34 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * word-size agnostic routines to scan ELF program headers for PT_GNU_STACK
+ * and rewrite it as PT_NULL to emulate old toolchains that did not include
+ * the PT_GNU_STACK program header.
+ */
+
+int strip_bits(char *elf, size_t size)
+{
+	unsigned int i;
+	Elf_Ehdr *eh;
+
+	eh = (Elf_Ehdr *)elf;
+	if (sizeof(*eh) > size) {
+		fprintf(stderr, "Elf Header too small\n");
+		return 124;
+	}
+
+	for (i = 0; i < eh->e_phnum; i++) {
+		Elf_Phdr *ph = (Elf_Phdr *)(elf + (eh->e_phoff + eh->e_phentsize * i));
+
+		if (ph->p_type == PT_GNU_STACK) {
+			ph->p_type = PT_NULL;
+			return 0;
+		}
+	}
+
+	fprintf(stderr, "PT_GNU_STACK missing\n");
+	return 123;
+}
+
+#undef strip_bits
+#undef Elf_Ehdr
+#undef Elf_Phdr
diff --git a/tools/testing/selftests/exec/strip-gnu-stack.c b/tools/testing/selftests/exec/strip-gnu-stack.c
new file mode 100644
index 000000000000..529e60cf0e6e
--- /dev/null
+++ b/tools/testing/selftests/exec/strip-gnu-stack.c
@@ -0,0 +1,69 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/* Converts an ELF's PT_GNU_STACK program header to PT_NULL. */
+#include <elf.h>
+#include <fcntl.h>
+#include <stddef.h>
+#include <stdio.h>
+#include <string.h>
+#include <unistd.h>
+#include <sys/mman.h>
+#include <sys/stat.h>
+#include <sys/types.h>
+
+#define strip_bits	strip64
+#define Elf_Ehdr	Elf64_Ehdr
+#define Elf_Phdr	Elf64_Phdr
+#include "strip-gnu-stack-bits.c"
+
+#define strip_bits	strip32
+#define Elf_Ehdr	Elf32_Ehdr
+#define Elf_Phdr	Elf32_Phdr
+#include "strip-gnu-stack-bits.c"
+
+int strip(char *elf, size_t size)
+{
+	if (size < 4 || elf[0] != '\x7f' || strncmp(elf + 1, "ELF", 3) != 0) {
+		fprintf(stderr, "Not an ELF file\n");
+		return 128;
+	}
+	switch (elf[EI_CLASS]) {
+	case ELFCLASS64:
+		return strip64(elf, size);
+	case ELFCLASS32:
+		return strip32(elf, size);
+	default:
+		fprintf(stderr, "Unknown EI_CLASS: 0x%02x\n", elf[EI_CLASS]);
+		return 127;
+	}
+}
+
+int main(int argc, char *argv[])
+{
+	int fd, ret;
+	struct stat info;
+	char *elf;
+
+	fd = open(argv[1], O_RDWR);
+	if (fd < 0) {
+		perror(argv[1]);
+		return 1;
+	}
+
+	if (fstat(fd, &info)) {
+		perror(argv[1]);
+		return 2;
+	}
+
+	elf = mmap(NULL, info.st_size, PROT_READ | PROT_WRITE, MAP_SHARED,
+		   fd, 0);
+	if (elf == MAP_FAILED) {
+		perror(argv[1]);
+		return 3;
+	}
+
+	ret = strip(elf, info.st_size);
+
+	munmap(elf, info.st_size);
+	close(fd);
+	return ret;
+}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
