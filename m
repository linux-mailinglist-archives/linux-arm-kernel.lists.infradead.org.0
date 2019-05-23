Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0318281AD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 17:49:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HLJu4Z9yhk6x0shkbn3CAPOyR/13/ohSfjax2fBOdNw=; b=HlFuNWZzTiF/xF
	u7uRz8YYrwzNZxJbOMFzNESh2zBMT8N+vFp7mA6hoGU/JOsE6V9I0RMkXQevVuEc/0CaKzbT0vrBN
	Q/wmMuLjhd/NDLIQo0JiqsR3JukjrQKPTiKploZOK0JzoPvdgnXwUIyPwuBDHuyjLsci5d25QOXbh
	XWp7VrGnKsChpU0GRbTjwDZg/vLuwEx0Ein6+TJErZj03zaIuzuageZ4lPL9xaU/BXa75FiHr9U4A
	wRoNDDtL3h330C3egcZ2h0AquaUTmaRjtLMMJnC7fzHq9QbliTWdVqdp2Pm4OJiX+cPFNOs+Swc+T
	MDAsWuv5m6xDrwlDX+LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTpxp-0006RD-PP; Thu, 23 May 2019 15:49:05 +0000
Received: from mail-it1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTpxi-0006Qq-S0
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 15:49:00 +0000
Received: by mail-it1-x143.google.com with SMTP id a186so640363itg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 08:48:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=brauner.io; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qdhvyBV5eCUYlrhtprSXvsuKWr+yBvkV1a8SbE6AS60=;
 b=PHFjvm23caZGYr4uiNYmJAibVBzXG/G68GWrR3KEL+4ubMa1yG52PY5KbD5HgQ94DS
 UYyKxymb5fEjGeKdBKbPovN4lf1X37+9FR6/IKpeONALi6Pb6Ba6dCiyKGGLwyh/Thfo
 TBBGEFZCAqITH+9ysPxJvr8e5RDKlYMuQAQ4Vb/7fDfahu0Q9wvBEskpiiSkZAzXwDg0
 HO3ghqNF44h7BZNoCoOH48Br+sXnnPudMYWxblMnUowckCT/7+BYIAVlMi8aQoMmK9+g
 efMaCVYPokznZ4LdQiFStyRq1hGeIabBZ6GksyGUTQGFowjocl7wKgtLYpmWvu2C2iki
 T5Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qdhvyBV5eCUYlrhtprSXvsuKWr+yBvkV1a8SbE6AS60=;
 b=LCFZ9Rrufysj0nm53771S1dhFe9KODggGbRNxfFVi0/TvgfCtQYF39br1oYjF83T6f
 w5kTeieX3bMEEFn16aZGts9yZ7hGgeGLqrTWPPtwaexHpwweGv7oS7DQ2yrqnTdVhH6L
 1/z5V55tHFNGJDSbEAKIs9oPtiY7zydLkoxi03G59MWl/iMyWUL6FG6Td40JSlwb/4qp
 is151frKgYiG21YkbppcvLqklW3t+xpxcrWkn1nep2qQjqJ2TovinH2/kATPWqEZu3TM
 X4ahwdGFEuqZBzNYAkJ8+AVprU1IH0qeBCdGrcI6pX3BrlNxh3z+2SworOQL+yX0eq0T
 THuw==
X-Gm-Message-State: APjAAAViVWhtbq53MjNk8ujTmEudW5LVKDtNixUqi5RL9C08DwtA9IHm
 8aq9NeA+7YIA5Nf1AJkaVqtmWQ==
X-Google-Smtp-Source: APXvYqys6QK/iakUDj+Sh+Ogl2zyh29ySOoi4FUzRp4yc77NrnF9Vcc9AkfEItA9paeABX2UyF+z5Q==
X-Received: by 2002:a24:6212:: with SMTP id d18mr13266189itc.2.1558626537435; 
 Thu, 23 May 2019 08:48:57 -0700 (PDT)
Received: from localhost.localdomain ([172.56.12.187])
 by smtp.gmail.com with ESMTPSA id v1sm9124939iob.56.2019.05.23.08.48.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 08:48:56 -0700 (PDT)
From: Christian Brauner <christian@brauner.io>
To: viro@zeniv.linux.org.uk, linux-kernel@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-api@vger.kernel.org,
 torvalds@linux-foundation.org, fweimer@redhat.com
Subject: [PATCH v2 0/2] close_range()
Date: Thu, 23 May 2019 17:47:45 +0200
Message-Id: <20190523154747.15162-1-christian@brauner.io>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_084858_954579_DB5A09B0 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org, ldv@altlinux.org,
 dhowells@redhat.com, linux-kselftest@vger.kernel.org,
 sparclinux@vger.kernel.org, shuah@kernel.org, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, miklos@szeredi.hu, x86@kernel.org,
 Christian Brauner <christian@brauner.io>, linux-mips@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, tkjos@android.com, arnd@arndb.de,
 jannh@google.com, linux-m68k@lists.linux-m68k.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-parisc@vger.kernel.org,
 oleg@redhat.com, linux-alpha@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hey,

This is v2 of this patchset.

In accordance with some comments There's a cond_resched() added to the
close loop similar to what is done for close_files().
A common helper pick_file() for __close_fd() and __close_range() has
been split out. This allows to only make a cond_resched() call when
filp_close() has been called similar to what is done in close_files().
Maybe that's not worth it. Jann mentioned that cond_resched() looks
rather cheap.
So it maybe that we could simply do:

while (fd <= max_fd) {
       __close(files, fd++);
       cond_resched();
}

I also added a missing test for close_range(fd, fd, 0).

Thanks!
Christian

Christian Brauner (2):
  open: add close_range()
  tests: add close_range() tests

 arch/alpha/kernel/syscalls/syscall.tbl        |   1 +
 arch/arm/tools/syscall.tbl                    |   1 +
 arch/arm64/include/asm/unistd32.h             |   2 +
 arch/ia64/kernel/syscalls/syscall.tbl         |   1 +
 arch/m68k/kernel/syscalls/syscall.tbl         |   1 +
 arch/microblaze/kernel/syscalls/syscall.tbl   |   1 +
 arch/mips/kernel/syscalls/syscall_n32.tbl     |   1 +
 arch/mips/kernel/syscalls/syscall_n64.tbl     |   1 +
 arch/mips/kernel/syscalls/syscall_o32.tbl     |   1 +
 arch/parisc/kernel/syscalls/syscall.tbl       |   1 +
 arch/powerpc/kernel/syscalls/syscall.tbl      |   1 +
 arch/s390/kernel/syscalls/syscall.tbl         |   1 +
 arch/sh/kernel/syscalls/syscall.tbl           |   1 +
 arch/sparc/kernel/syscalls/syscall.tbl        |   1 +
 arch/x86/entry/syscalls/syscall_32.tbl        |   1 +
 arch/x86/entry/syscalls/syscall_64.tbl        |   1 +
 arch/xtensa/kernel/syscalls/syscall.tbl       |   1 +
 fs/file.c                                     |  62 +++++++-
 fs/open.c                                     |  20 +++
 include/linux/fdtable.h                       |   2 +
 include/linux/syscalls.h                      |   2 +
 include/uapi/asm-generic/unistd.h             |   4 +-
 tools/testing/selftests/Makefile              |   1 +
 tools/testing/selftests/core/.gitignore       |   1 +
 tools/testing/selftests/core/Makefile         |   6 +
 .../testing/selftests/core/close_range_test.c | 142 ++++++++++++++++++
 26 files changed, 249 insertions(+), 9 deletions(-)
 create mode 100644 tools/testing/selftests/core/.gitignore
 create mode 100644 tools/testing/selftests/core/Makefile
 create mode 100644 tools/testing/selftests/core/close_range_test.c

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
