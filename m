Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D79682F43
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 12:01:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=2di4nUa/39TVBan7FhAqg9+Tolxq0kkm+VeOkkaZGPc=; b=UA3
	v3/IebrMYVl+QkzxyXhTbMYbKLPrysr2Z+n5Bzu1teZZzm+OJtzz38U3ttHtZl6ea8DxvlwHWwBIq
	EV9kPhRw4CunorQ/k5OBCaGn1eQklR/K2uGsHgoyglkduh2fU9uLVwlZdkJLywQmskHuVYRDG7oqA
	0kO50EhhM/9yVW75Y6TX27g+J+lkZczpQMxQS1IRTT8okFOIy+/OvJCw2u+NoQu5StHehokwwRzpA
	iqpGD02WEE2J5OyrR5Bmsv2f2b2k/8QAGqptFgJxXUW5zDhV7dQO9wTMkxIGGDgYC4RxfbbRINKVC
	KEVny19nEdEa+Wj71CyNqu91JBfKrLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huwHb-0002av-41; Tue, 06 Aug 2019 10:01:31 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huwH2-0002Uq-Qs
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 10:01:00 +0000
Received: by mail-yb1-xb44.google.com with SMTP id x188so8261386yba.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 03:00:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=ss7tfuNN9gph1p4XOsDIlLKrMAe3sezcu2lcCyG5PrA=;
 b=llzpCKvfTJg9zx4WGbK3W8ELlbZszVisTWmKs2WgL7/QVGUzVblcBslqpxo6sHvB/2
 XTxuH6yt7Pqho2/Dk3XQRm5ssQG4b0J5+VL1WLv3DvEuC4iWmLQBmcnIeEYbnhvQAS3d
 OaDIu3c8mjZ3MaC87uEx1ICI53UwFJn//mcEAXmhA1PI1HBLTuGVvr28BI74d7+vKFK8
 g8I+2D4tta/rMVSZZQJJDzvZToRr0JlJ0xd4r32m0Z7Y3QGdloZvUkRz4PwUMa4SBbTJ
 ReTDwAvbKrd4coRI8s0r8TqxVgUjPfsoTdlSM5oAL4w7ndmTwVVuizbrsn36eLs160LV
 Gc3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=ss7tfuNN9gph1p4XOsDIlLKrMAe3sezcu2lcCyG5PrA=;
 b=JmIRqTdZL+vYaVEI9OyroDOKrNh9Cw1jOchOvCJyIZzhZdlJVirsMGAwtJT1x8P0Wg
 K5NoUL+y3GEP8XINV1nGpytEx6V6nA0FOMuvZWgBG/EtObQ00wREb89GQD6bEYqPqYuU
 9kjUxOu9mb/lqSe9RSjYgw5JT9yati+1Dov1cCS83LwBGXQ4Yo9eJYxl1IK6cBphpssb
 JXbe0sseP1HwJIxKjveQw1m5mJ6tj4YbQt40x6bCjKwz7TY70kMl+WhoO1FF9Jj6yP58
 Bz0DIhf850VPQX0qyVUF0poUe4pdlhXBCjBRvPRXfNG+ig1YkuT+vdVIrheRRSIZ1Dmj
 oL5A==
X-Gm-Message-State: APjAAAVAR+Nes9bmjxfPqR+r8KXEdT/u6vJWHW1uPJ+LtaHPKA/VU/t9
 Wd1945gbfBAHrzt9Bvdeckdn/Q==
X-Google-Smtp-Source: APXvYqzW3wsw6yhTMacboTuQrkHBN1nGm4i1ke3WRJqGdu22UVLlanKhTbvJJsUeyrKaTw/x/WIwAA==
X-Received: by 2002:a25:2005:: with SMTP id g5mr1786698ybg.410.1565085653130; 
 Tue, 06 Aug 2019 03:00:53 -0700 (PDT)
Received: from localhost.localdomain (li1322-146.members.linode.com.
 [45.79.223.146])
 by smtp.gmail.com with ESMTPSA id h12sm18316685ywm.91.2019.08.06.03.00.42
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 03:00:51 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Russell King <linux@armlinux.org.uk>, Oleg Nesterov <oleg@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
 x86@kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>,
 Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>,
 "Naveen N. Rao" <naveen.n.rao@linux.vnet.ibm.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-arch@vger.kernel.org,
 netdev@vger.kernel.org, bpf@vger.kernel.org,
 clang-built-linux@googlegroups.com, Masami Hiramatsu <mhiramat@kernel.org>
Subject: [PATCH v2 0/3] arm/arm64: Add support for function error injection
Date: Tue,  6 Aug 2019 18:00:12 +0800
Message-Id: <20190806100015.11256-1-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_030057_302672_2E98C273 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Leo Yan <leo.yan@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This small patch set is to add support for function error injection;
this can be used to eanble more advanced debugging feature, e.g.
CONFIG_BPF_KPROBE_OVERRIDE.

The patch 01/03 is to consolidate the function definition which can be
suared cross architectures, patches 02,03/03 are used for enabling
function error injection on arm64 and arm architecture respectively.

I tested on arm64 platform Juno-r2 and one of my laptop with x86
architecture with below steps; I don't test for Arm architecture so
only pass compilation.

- Enable kernel configuration:
  CONFIG_BPF_KPROBE_OVERRIDE
  CONFIG_BTRFS_FS
  CONFIG_BPF_EVENTS=y
  CONFIG_KPROBES=y
  CONFIG_KPROBE_EVENTS=y
  CONFIG_BPF_KPROBE_OVERRIDE=y

- Build samples/bpf on with Debian rootFS:
  # cd $kernel
  # make headers_install
  # make samples/bpf/ LLC=llc-7 CLANG=clang-7

- Run the sample tracex7:
  # dd if=/dev/zero of=testfile.img bs=1M seek=1000 count=1
  # DEVICE=$(losetup --show -f testfile.img)
  # mkfs.btrfs -f $DEVICE
  # ./tracex7 testfile.img
  [ 1975.211781] BTRFS error (device (efault)): open_ctree failed
  mount: /mnt/linux-kernel/linux-cs-dev/samples/bpf/tmpmnt: mount(2) system call failed: Cannot allocate memory.

Changes from v1:
* Consolidated the function definition into asm-generic header (Will);
* Used APIs to access pt_regs elements (Will);
* Fixed typos in the comments (Will).


Leo Yan (3):
  error-injection: Consolidate override function definition
  arm64: Add support for function error injection
  arm: Add support for function error injection

 arch/arm/Kconfig                           |  1 +
 arch/arm/include/asm/ptrace.h              |  5 +++++
 arch/arm/lib/Makefile                      |  2 ++
 arch/arm/lib/error-inject.c                | 19 +++++++++++++++++++
 arch/arm64/Kconfig                         |  1 +
 arch/arm64/include/asm/ptrace.h            |  5 +++++
 arch/arm64/lib/Makefile                    |  2 ++
 arch/arm64/lib/error-inject.c              | 18 ++++++++++++++++++
 arch/powerpc/include/asm/error-injection.h | 13 -------------
 arch/x86/include/asm/error-injection.h     | 13 -------------
 include/asm-generic/error-injection.h      |  6 ++++++
 include/linux/error-injection.h            |  6 +++---
 12 files changed, 62 insertions(+), 29 deletions(-)
 create mode 100644 arch/arm/lib/error-inject.c
 create mode 100644 arch/arm64/lib/error-inject.c
 delete mode 100644 arch/powerpc/include/asm/error-injection.h
 delete mode 100644 arch/x86/include/asm/error-injection.h

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
