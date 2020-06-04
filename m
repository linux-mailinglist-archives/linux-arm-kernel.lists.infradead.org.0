Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F15001EE5C6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 15:50:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yX9V8DKf0BshFxahm8zzhiEGclTtggP/PLGaXNFhd3k=; b=T/oOdUVk41Jvrb
	+w+q4K1wjewCV1XWeu1pA0ahGv7vK1THIfV2q+2UUZB+gdqUSNIwrzDrwHHWAJqjbihVzrWCDNyfk
	pcuKQf2bvovENCkG6agMoD3YVhMdNy+ozyDUIY0Nlkv9/ESI8xQf24+Reu+H1blck7upesuHQz0Wz
	IF4ZIuE/IjEwsB4/n7dyjomYEJNul0hqzXH8LHu71wQkiNVNHOqQUIXIw0XxP746lO3Mxu+VUG/al
	QTOBNS8FS0lAkQTQyjM8EdY6Oo8JObfFIWlXplJ7IuapINgVRxYODJZ7ZsR+qW+Mkxpg0eMgy7ZUR
	Vqek9EWAer+CUllBUV6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgqGd-0006xH-D8; Thu, 04 Jun 2020 13:50:47 +0000
Received: from mail-lf1-f68.google.com ([209.85.167.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgqGX-0006wW-3O
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 13:50:42 +0000
Received: by mail-lf1-f68.google.com with SMTP id d7so3631827lfi.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jun 2020 06:50:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9/mS/crSG/SbKgPicMind4lrkGlCDOUOSlUrNN+bfdo=;
 b=BWiK5F1W56JdGSx/3K/i4SzmHxwbEXbAJrpVoAnJjxhiDXYsk0uxUSnsfxhP0xO2NF
 wfl9+WvAqOEp5InZ0DNTV9IQctjUYVd17ms4utI3gbpErPFJR2FgeHS5ln0jcYXom6K2
 4TWIlZeq3terbp9Pg8U7DNF8ueY3CUXuWGd/+n4K62rJhLhVOK6bXRoGbqhn+8z1lnGK
 reyhQUD60VGS4WNFlmOVbXPQM0zKWh4l+0tbFoVTmAkimVomqQ6OzmlHhQvAoz9Xa6LU
 jDTImzS9nNbxi9Tz/tGWyLzOXsrLgeMUJbWWFcjfEo8nawfTl4+/3CDz0owc7iuJ97ty
 g5EQ==
X-Gm-Message-State: AOAM531oYXra+rW6VIeF+89sbuWhCiU07JglPR021I5XS7QjFbabPkEh
 kwr9VmMkA01wvBNUZr+ZU+M=
X-Google-Smtp-Source: ABdhPJwrdWT6y2CL2LWAPgdgslvxxxcX+HXve/twLqm1KvVhxEovjWNPGDhPf/+ZcjY/tapJBcnulg==
X-Received: by 2002:a05:6512:20d:: with SMTP id
 a13mr2649191lfo.36.1591278637579; 
 Thu, 04 Jun 2020 06:50:37 -0700 (PDT)
Received: from localhost.localdomain ([185.248.161.177])
 by smtp.gmail.com with ESMTPSA id u16sm1202140lji.58.2020.06.04.06.50.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 06:50:36 -0700 (PDT)
From: Alexander Popov <alex.popov@linux.com>
To: Kees Cook <keescook@chromium.org>, Emese Revfy <re.emese@gmail.com>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Michal Marek <michal.lkml@markovi.net>,
 Andrew Morton <akpm@linux-foundation.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Thiago Jung Bauermann <bauerman@linux.ibm.com>,
 Luis Chamberlain <mcgrof@kernel.org>, Jessica Yu <jeyu@kernel.org>,
 Sven Schnelle <svens@stackframe.org>, Iurii Zaikin <yzaikin@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Peter Collingbourne <pcc@google.com>,
 Naohiro Aota <naohiro.aota@wdc.com>,
 Alexander Monakov <amonakov@ispras.ru>,
 Mathias Krause <minipli@googlemail.com>, PaX Team <pageexec@freemail.hu>,
 Brad Spengler <spender@grsecurity.net>, Laura Abbott <labbott@redhat.com>,
 Florian Weimer <fweimer@redhat.com>,
 Alexander Popov <alex.popov@linux.com>,
 kernel-hardening@lists.openwall.com, linux-kbuild@vger.kernel.org,
 x86@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, gcc@gcc.gnu.org
Subject: [PATCH 0/5] Improvements of the stackleak gcc plugin
Date: Thu,  4 Jun 2020 16:49:52 +0300
Message-Id: <20200604134957.505389-1-alex.popov@linux.com>
X-Mailer: git-send-email 2.25.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_065041_139865_4B53A363 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [a13xp0p0v88[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [a13xp0p0v88[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: notify@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In this patch series I collected various improvements of the stackleak
gcc plugin.

The first patch excludes alloca() from the stackleak instrumentation logic
to make it simpler.

The second patch is the main improvement. It eliminates an unwanted
side-effect of kernel code instrumentation. This patch is a deep
reengineering of the idea described on grsecurity blog:
  https://grsecurity.net/resolving_an_unfortunate_stackleak_interaction

The third patch adds 'verbose' plugin parameter for printing additional
info about the kernel code instrumentation.

Two other patches disable unneeded stackleak instrumentation for some
files.

I would like to thank Alexander Monakov <amonakov@ispras.ru> for his
advisory on gcc internals.

This patch series was tested for gcc version 4.8, 5, 6, 7, 8, 9, and 10
on x86_64, i386 and arm64.
That was done using the project 'kernel-build-containers':
  https://github.com/a13xp0p0v/kernel-build-containers


Alexander Popov (5):
  gcc-plugins/stackleak: Exclude alloca() from the instrumentation logic
  gcc-plugins/stackleak: Use asm instrumentation to avoid useless
    register saving
  gcc-plugins/stackleak: Add 'verbose' plugin parameter
  gcc-plugins/stackleak: Don't instrument itself
  gcc-plugins/stackleak: Don't instrument vgettimeofday.c in arm64 VDSO

 arch/arm64/kernel/vdso/Makefile        |   3 +-
 include/linux/compiler_attributes.h    |  13 ++
 kernel/Makefile                        |   1 +
 kernel/stackleak.c                     |  16 +-
 scripts/Makefile.gcc-plugins           |   2 +
 scripts/gcc-plugins/stackleak_plugin.c | 260 ++++++++++++++++++++-----
 6 files changed, 232 insertions(+), 63 deletions(-)

-- 
2.25.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
