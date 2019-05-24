Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7180D295B0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 12:26:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OmdqkfRKUqvCwc6DdHe/5OEuaa1mBeo4txsGDbHFbmk=; b=SB9ayl28nyIHUonPvDT/Nhq/HX
	rnJcYJrQFd6K95rlruzGBmnXUqe0A6qAFeGZt4i1Rl+ZQloN6VEjwlvX/gH212//lqqcq+NJPJyHL
	tF0j+4EQmJV6uBJKSvA0BHfP0KMUufA4s/H0KhFf+ng+Snpthdw6KLAOkUuHL3mHNp2ORKJ2VSV5h
	CKTR0zr/PqtfbNhwjORCMOa5ff4Zhd3dn1j7W+EAndK5z4ug6ch7JH3IXIXgzRAKhzC+jFR1VkS6+
	Q/ygSj1g0VQ1/gzuAJYvOcUsnqyIf9jqi718LWH75uyRBicBc/9sb9KRIpGOA95bjEnH3i2WdIf0u
	gDwhN8nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU7PG-0000qx-90; Fri, 24 May 2019 10:26:34 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU7P6-0000p4-7b
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 10:26:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D8072A78;
 Fri, 24 May 2019 03:26:23 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 7C5523F703;
 Fri, 24 May 2019 03:26:21 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/8] binfmt_elf: Extract .note.gnu.property from an ELF file
Date: Fri, 24 May 2019 11:25:26 +0100
Message-Id: <1558693533-13465-2-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1558693533-13465-1-git-send-email-Dave.Martin@arm.com>
References: <1558693533-13465-1-git-send-email-Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_032624_322220_2B4721BA 
X-CRM114-Status: GOOD (  27.47  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arch@vger.kernel.org, "H.J. Lu" <hjl.tools@gmail.com>,
 Yu-cheng Yu <yu-cheng.yu@intel.com>, Andrew Jones <drjones@redhat.com>,
 Paul Elliott <paul.elliott@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>, Will Deacon <will.deacon@arm.com>,
 Richard Henderson <richard.henderson@linaro.org>, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Kristina=20Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Sudakshina Das <sudi.das@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Yu-cheng Yu <yu-cheng.yu@intel.com>

An ELF file's .note.gnu.property indicates features the executable file
can support.  For example, the property GNU_PROPERTY_X86_FEATURE_1_AND
indicates the file supports GNU_PROPERTY_X86_FEATURE_1_IBT and/or
GNU_PROPERTY_X86_FEATURE_1_SHSTK.

This patch was part of the Control-flow Enforcement series; the original
patch is here: https://lkml.org/lkml/2018/11/20/205.  Dave Martin responded
that ARM recently introduced new features to NT_GNU_PROPERTY_TYPE_0 with
properties closely modelled on GNU_PROPERTY_X86_FEATURE_1_AND, and it is
logical to split out the generic part.  Here it is.

With this patch, if an arch needs to setup features from ELF properties,
it needs CONFIG_ARCH_USE_GNU_PROPERTY to be set, and a specific
arch_setup_property().

For example, for X86_64:

int arch_setup_property(void *ehdr, void *phdr, struct file *f, bool inter)
{
	int r;
	uint32_t property;

	r = get_gnu_property(ehdr, phdr, f, GNU_PROPERTY_X86_FEATURE_1_AND,
			     &property);
	...
}

Signed-off-by: H.J. Lu <hjl.tools@gmail.com>
Signed-off-by: Yu-cheng Yu <yu-cheng.yu@intel.com>
Signed-off-by: Dave Martin <Dave.Martin@arm.com> [rebase to v5.2-rc1]

---

Notes from Dave:

 * For arm64 at least, I'm hoping we can rely on the PT_GNU_PROPERTY
   program header to find the program properties.  If this works for
   x86 too, I think the code could be simplified considerably.

   Ideally we would always use that: having to exhaustively search
   all the notes in the image instead doesn't feel like the right design
   IMHO.

   This needs further discussion, and I make no attempt to address it
   for now.
---
 fs/Kconfig.binfmt        |   4 +
 fs/Makefile              |   1 +
 fs/binfmt_elf.c          |  13 ++
 fs/gnu_property.c        | 363 +++++++++++++++++++++++++++++++++++++++++++++++
 include/linux/elf.h      |  12 ++
 include/uapi/linux/elf.h |   8 ++
 6 files changed, 401 insertions(+)
 create mode 100644 fs/gnu_property.c

diff --git a/fs/Kconfig.binfmt b/fs/Kconfig.binfmt
index b795f8d..175a1f5 100644
--- a/fs/Kconfig.binfmt
+++ b/fs/Kconfig.binfmt
@@ -35,6 +35,10 @@ config COMPAT_BINFMT_ELF
 config ARCH_BINFMT_ELF_STATE
 	bool
 
+config ARCH_USE_GNU_PROPERTY
+	bool
+	depends on 64BIT
+
 config BINFMT_ELF_FDPIC
 	bool "Kernel support for FDPIC ELF binaries"
 	default y if !BINFMT_ELF
diff --git a/fs/Makefile b/fs/Makefile
index c9aea23..b69f18c 100644
--- a/fs/Makefile
+++ b/fs/Makefile
@@ -44,6 +44,7 @@ obj-$(CONFIG_BINFMT_ELF)	+= binfmt_elf.o
 obj-$(CONFIG_COMPAT_BINFMT_ELF)	+= compat_binfmt_elf.o
 obj-$(CONFIG_BINFMT_ELF_FDPIC)	+= binfmt_elf_fdpic.o
 obj-$(CONFIG_BINFMT_FLAT)	+= binfmt_flat.o
+obj-$(CONFIG_ARCH_USE_GNU_PROPERTY) += gnu_property.o
 
 obj-$(CONFIG_FS_MBCACHE)	+= mbcache.o
 obj-$(CONFIG_FS_POSIX_ACL)	+= posix_acl.o
diff --git a/fs/binfmt_elf.c b/fs/binfmt_elf.c
index fa9e99a..18015fc 100644
--- a/fs/binfmt_elf.c
+++ b/fs/binfmt_elf.c
@@ -1080,6 +1080,19 @@ static int load_elf_binary(struct linux_binprm *bprm)
 	}
 
 	if (interpreter) {
+		retval = arch_setup_property(&loc->interp_elf_ex,
+					     interp_elf_phdata,
+					     interpreter, true);
+	} else {
+		retval = arch_setup_property(&loc->elf_ex,
+					     elf_phdata,
+					     bprm->file, false);
+	}
+
+	if (retval < 0)
+		goto out_free_dentry;
+
+	if (interpreter) {
 		unsigned long interp_map_addr = 0;
 
 		elf_entry = load_elf_interp(&loc->interp_elf_ex,
diff --git a/fs/gnu_property.c b/fs/gnu_property.c
new file mode 100644
index 0000000..656ea39
--- /dev/null
+++ b/fs/gnu_property.c
@@ -0,0 +1,363 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Extract an ELF file's .note.gnu.property.
+ *
+ * The path from the ELF header to the note section is the following:
+ * elfhdr->elf_phdr->elf_note->property[].
+ */
+
+#include <uapi/linux/elf-em.h>
+#include <linux/processor.h>
+#include <linux/binfmts.h>
+#include <linux/elf.h>
+#include <linux/slab.h>
+#include <linux/fs.h>
+#include <linux/uaccess.h>
+#include <linux/string.h>
+#include <linux/compat.h>
+
+/*
+ * The .note.gnu.property layout:
+ *
+ *	struct elf_note {
+ *		u32 n_namesz; --> sizeof(n_name[]); always (4)
+ *		u32 n_ndescsz;--> sizeof(property[])
+ *		u32 n_type;   --> always NT_GNU_PROPERTY_TYPE_0
+ *	};
+ *	char n_name[4]; --> always 'GNU\0'
+ *
+ *	struct {
+ *		struct gnu_property {
+ *			u32 pr_type;
+ *			u32 pr_datasz;
+ *		};
+ *		u8 pr_data[pr_datasz];
+ *	}[];
+ */
+
+#define BUF_SIZE (PAGE_SIZE / 4)
+
+struct gnu_property {
+	u32 pr_type;
+	u32 pr_datasz;
+};
+
+typedef bool (test_item_fn)(void *buf, u32 *arg, u32 type);
+typedef void *(next_item_fn)(void *buf, u32 *arg, u32 type);
+
+static inline bool test_note_type(void *buf, u32 *align, u32 note_type)
+{
+	struct elf_note *n = buf;
+
+	return ((n->n_type == note_type) && (n->n_namesz == 4) &&
+		(memcmp(n + 1, "GNU", 4) == 0));
+}
+
+static inline void *next_note(void *buf, u32 *align, u32 note_type)
+{
+	struct elf_note *n = buf;
+	u64 size;
+
+	if (check_add_overflow((u64)sizeof(*n), (u64)n->n_namesz, &size))
+		return NULL;
+
+	size = round_up(size, *align);
+
+	if (check_add_overflow(size, (u64)n->n_descsz, &size))
+		return NULL;
+
+	size = round_up(size, *align);
+
+	if (buf + size < buf)
+		return NULL;
+	else
+		return (buf + size);
+}
+
+static inline bool test_property(void *buf, u32 *max_type, u32 pr_type)
+{
+	struct gnu_property *pr = buf;
+
+	/*
+	 * Property types must be in ascending order.
+	 * Keep track of the max when testing each.
+	 */
+	if (pr->pr_type > *max_type)
+		*max_type = pr->pr_type;
+
+	return (pr->pr_type == pr_type);
+}
+
+static inline void *next_property(void *buf, u32 *max_type, u32 pr_type)
+{
+	struct gnu_property *pr = buf;
+
+	if ((buf + sizeof(*pr) +  pr->pr_datasz < buf) ||
+	    (pr->pr_type > pr_type) ||
+	    (pr->pr_type > *max_type))
+		return NULL;
+	else
+		return (buf + sizeof(*pr) + pr->pr_datasz);
+}
+
+/*
+ * Scan 'buf' for a pattern; return true if found.
+ * *pos is the distance from the beginning of buf to where
+ * the searched item or the next item is located.
+ */
+static int scan(u8 *buf, u32 buf_size, int item_size, test_item_fn test_item,
+		next_item_fn next_item, u32 *arg, u32 type, u32 *pos)
+{
+	int found = 0;
+	u8 *p, *max;
+
+	max = buf + buf_size;
+	if (max < buf)
+		return 0;
+
+	p = buf;
+
+	while ((p + item_size < max) && (p + item_size > buf)) {
+		if (test_item(p, arg, type)) {
+			found = 1;
+			break;
+		}
+
+		p = next_item(p, arg, type);
+	}
+
+	*pos = (p + item_size <= buf) ? 0 : (u32)(p - buf);
+	return found;
+}
+
+/*
+ * Search an NT_GNU_PROPERTY_TYPE_0 for the property of 'pr_type'.
+ */
+static int find_property(struct file *file, unsigned long desc_size,
+			 loff_t file_offset, u8 *buf,
+			 u32 pr_type, u32 *property)
+{
+	u32 buf_pos;
+	unsigned long read_size;
+	unsigned long done;
+	int found = 0;
+	int ret = 0;
+	u32 last_pr = 0;
+
+	*property = 0;
+	buf_pos = 0;
+
+	for (done = 0; done < desc_size; done += buf_pos) {
+		read_size = desc_size - done;
+		if (read_size > BUF_SIZE)
+			read_size = BUF_SIZE;
+
+		ret = kernel_read(file, buf, read_size, &file_offset);
+
+		if (ret != read_size)
+			return (ret < 0) ? ret : -EIO;
+
+		ret = 0;
+		found = scan(buf, read_size, sizeof(struct gnu_property),
+			     test_property, next_property,
+			     &last_pr, pr_type, &buf_pos);
+
+		if ((!buf_pos) || found)
+			break;
+
+		file_offset += buf_pos - read_size;
+	}
+
+	if (found) {
+		struct gnu_property *pr =
+			(struct gnu_property *)(buf + buf_pos);
+
+		if (pr->pr_datasz == 4) {
+			u32 *max =  (u32 *)(buf + read_size);
+			u32 *data = (u32 *)((u8 *)pr + sizeof(*pr));
+
+			if (data + 1 <= max) {
+				*property = *data;
+			} else {
+				file_offset += buf_pos - read_size;
+				file_offset += sizeof(*pr);
+				ret = kernel_read(file, property, 4,
+						  &file_offset);
+			}
+		}
+	}
+
+	return ret;
+}
+
+/*
+ * Search a PT_NOTE segment for NT_GNU_PROPERTY_TYPE_0.
+ */
+static int find_note_type_0(struct file *file, loff_t file_offset,
+			    unsigned long note_size, u32 align,
+			    u32 pr_type, u32 *property)
+{
+	u8 *buf;
+	u32 buf_pos;
+	unsigned long read_size;
+	unsigned long done;
+	int found = 0;
+	int ret = 0;
+
+	buf = kmalloc(BUF_SIZE, GFP_KERNEL);
+	if (!buf)
+		return -ENOMEM;
+
+	*property = 0;
+	buf_pos = 0;
+
+	for (done = 0; done < note_size; done += buf_pos) {
+		read_size = note_size - done;
+		if (read_size > BUF_SIZE)
+			read_size = BUF_SIZE;
+
+		ret = kernel_read(file, buf, read_size, &file_offset);
+
+		if (ret != read_size) {
+			ret = (ret < 0) ? ret : -EIO;
+			kfree(buf);
+			return ret;
+		}
+
+		/*
+		 * item_size = sizeof(struct elf_note) + elf_note.n_namesz.
+		 * n_namesz is 4 for the note type we look for.
+		 */
+		ret = scan(buf, read_size, sizeof(struct elf_note) + 4,
+			      test_note_type, next_note,
+			      &align, NT_GNU_PROPERTY_TYPE_0, &buf_pos);
+
+		file_offset += buf_pos - read_size;
+
+		if (ret && !found) {
+			struct elf_note *n =
+				(struct elf_note *)(buf + buf_pos);
+			u64 start = round_up(sizeof(*n) + n->n_namesz, align);
+			u64 total = 0;
+
+			if (check_add_overflow(start, (u64)n->n_descsz, &total)) {
+				ret = -EINVAL;
+				break;
+			}
+			total = round_up(total, align);
+
+			ret = find_property(file, n->n_descsz,
+					    file_offset + start,
+					    buf, pr_type, property);
+			found++;
+			file_offset += total;
+			buf_pos += total;
+		} else if (!buf_pos || ret) {
+			ret = 0;
+			*property = 0;
+			break;
+		}
+	}
+
+	kfree(buf);
+	return ret;
+}
+
+/*
+ * Look at an ELF file's PT_NOTE segments, then NT_GNU_PROPERTY_TYPE_0, then
+ * the property of pr_type.
+ *
+ * Input:
+ *	file: the file to search;
+ *	phdr: the file's elf header;
+ *	phnum: number of entries in phdr;
+ *	pr_type: the property type.
+ *
+ * Output:
+ *	The property found.
+ *
+ * Return:
+ *	Zero or error.
+ */
+static int scan_segments_64(struct file *file, struct elf64_phdr *phdr,
+			    int phnum, u32 pr_type, u32 *property)
+{
+	int i;
+	int err = 0;
+
+	for (i = 0; i < phnum; i++, phdr++) {
+		if ((phdr->p_type != PT_NOTE) || (phdr->p_align != 8))
+			continue;
+
+		/*
+		 * Search the PT_NOTE segment for NT_GNU_PROPERTY_TYPE_0.
+		 */
+		err = find_note_type_0(file, phdr->p_offset, phdr->p_filesz,
+				       phdr->p_align, pr_type, property);
+		if (err)
+			return err;
+	}
+
+	return 0;
+}
+
+#ifdef CONFIG_COMPAT
+static int scan_segments_32(struct file *file, struct elf32_phdr *phdr,
+			    int phnum, u32 pr_type, u32 *property)
+{
+	int i;
+	int err = 0;
+
+	for (i = 0; i < phnum; i++, phdr++) {
+		if ((phdr->p_type != PT_NOTE) || (phdr->p_align != 4))
+			continue;
+
+		/*
+		 * Search the PT_NOTE segment for NT_GNU_PROPERTY_TYPE_0.
+		 */
+		err = find_note_type_0(file, phdr->p_offset, phdr->p_filesz,
+				       phdr->p_align, pr_type, property);
+		if (err)
+			return err;
+	}
+
+	return 0;
+}
+#endif
+
+int get_gnu_property(void *ehdr_p, void *phdr_p, struct file *f,
+		     u32 pr_type, u32 *property)
+{
+	struct elf64_hdr *ehdr64 = ehdr_p;
+	int err = 0;
+
+	*property = 0;
+
+	if (ehdr64->e_ident[EI_CLASS] == ELFCLASS64) {
+		struct elf64_phdr *phdr64 = phdr_p;
+
+		err = scan_segments_64(f, phdr64, ehdr64->e_phnum,
+				       pr_type, property);
+		if (err < 0)
+			goto out;
+	} else {
+#ifdef CONFIG_COMPAT
+		struct elf32_hdr *ehdr32 = ehdr_p;
+
+		if (ehdr32->e_ident[EI_CLASS] == ELFCLASS32) {
+			struct elf32_phdr *phdr32 = phdr_p;
+
+			err = scan_segments_32(f, phdr32, ehdr32->e_phnum,
+					       pr_type, property);
+			if (err < 0)
+				goto out;
+		}
+#else
+	WARN_ONCE(1, "Exec of 32-bit app, but CONFIG_COMPAT is not enabled.\n");
+	return -ENOTSUPP;
+#endif
+	}
+
+out:
+	return err;
+}
diff --git a/include/linux/elf.h b/include/linux/elf.h
index e3649b3..c15febe 100644
--- a/include/linux/elf.h
+++ b/include/linux/elf.h
@@ -56,4 +56,16 @@ static inline int elf_coredump_extra_notes_write(struct coredump_params *cprm) {
 extern int elf_coredump_extra_notes_size(void);
 extern int elf_coredump_extra_notes_write(struct coredump_params *cprm);
 #endif
+
+#ifdef CONFIG_ARCH_USE_GNU_PROPERTY
+extern int arch_setup_property(void *ehdr, void *phdr, struct file *f,
+			       bool interp);
+extern int get_gnu_property(void *ehdr_p, void *phdr_p, struct file *f,
+			    u32 pr_type, u32 *feature);
+#else
+static inline int arch_setup_property(void *ehdr, void *phdr, struct file *f,
+				      bool interp) { return 0; }
+static inline int get_gnu_property(void *ehdr_p, void *phdr_p, struct file *f,
+				   u32 pr_type, u32 *feature) { return 0; }
+#endif
 #endif /* _LINUX_ELF_H */
diff --git a/include/uapi/linux/elf.h b/include/uapi/linux/elf.h
index 34c02e4..7b7603a 100644
--- a/include/uapi/linux/elf.h
+++ b/include/uapi/linux/elf.h
@@ -372,6 +372,7 @@ typedef struct elf64_shdr {
 #define NT_PRFPREG	2
 #define NT_PRPSINFO	3
 #define NT_TASKSTRUCT	4
+#define NT_GNU_PROPERTY_TYPE_0 5
 #define NT_AUXV		6
 /*
  * Note to userspace developers: size of NT_SIGINFO note may increase
@@ -443,4 +444,11 @@ typedef struct elf64_note {
   Elf64_Word n_type;	/* Content type */
 } Elf64_Nhdr;
 
+/* .note.gnu.property types */
+#define GNU_PROPERTY_X86_FEATURE_1_AND		(0xc0000002)
+
+/* Bits of GNU_PROPERTY_X86_FEATURE_1_AND */
+#define GNU_PROPERTY_X86_FEATURE_1_IBT		(0x00000001)
+#define GNU_PROPERTY_X86_FEATURE_1_SHSTK	(0x00000002)
+
 #endif /* _UAPI_LINUX_ELF_H */
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
