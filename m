Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 431AB15201F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 18:59:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=C7Y2m6/RMkSSoi3XCsS6JIMctljvDtUcZx48CK/BJMo=; b=Zqv
	ziiQr7mC059NcZjGXp0kKpcSdtukv2tSKUjjTeI6E0XH5/5QKxvnqQBcthDgrSU7XhTY+2OCcEE2v
	IVcygibEnLAfKs4JeumSlDGAz+0AHOVvegF70TmthcV9zZNuZ3izWcxcKQViiIsb0WZBKcs4tm3yP
	Di/nn3PvxaFSvV847+Z7Iy2mGVrMPbR49T0KvXiXb4WR3WorL96DScfzOkY60NFYBIxeurj1ohZGd
	DDOvReMqCIF1votlFh4X8YQnbn42l5/di0D5bSAs60WN/ZYvteOgdKlW33qL6uc7wbZgA8UST5V6U
	XN3nTIVgD0BXN5FgOAokWrHwvbJvqkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz2U2-0007X1-T4; Tue, 04 Feb 2020 17:59:34 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz2Tr-0007WR-Qu
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 17:59:25 +0000
Received: by mail-pf1-x444.google.com with SMTP id y73so9852947pfg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Feb 2020 09:59:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=jbEbwOgo7ENCwWxsnPJP8SPkXj10iYhhwUubuuIQGpU=;
 b=aTvxoRFiBebcpxpfT28nCZjCnxMHAde5s0Gwzhhz7aM9dn6pzTFRQofnf3ecqFSI8D
 eMlAaT0BNAFswRWePkJS0Q1CK41c2C6gPpAp2fJMco2yBO9zlcz9VJnXupigVxYkJnFv
 bSGHFpr8YK2Dio6gyxW0JmAChekk6Mq/wheYOsCnxZvA/MC5z5P+sHyUaDGSkFDKTNPU
 7bb1L0P/hUpNNCFLSH0Kez79DlcMyuEVZMTA7wyUVQLmxJ7Puw2TNXIFA1jUk7kYzVJt
 TrsgC8DZriaeOksvbbRG0FwjN9x3kWnCGqjs/6JZiS+Avc8Q/Fq3gnNDF21vgzontS90
 s9xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=jbEbwOgo7ENCwWxsnPJP8SPkXj10iYhhwUubuuIQGpU=;
 b=Y1Q1EVWlYx4ODCLPUY9MEGYdRD/NKOvVC/BsfBuiaqHgtCqhUnFsAAeL6/R0WhVDUc
 Hfu5AK+hqBEV4rJtMqU3UrXdMEFzShK+BM0iTto00e5TQHZUi9TIAtQ0MlNubx+Dr1sc
 i2fR/MPwTqKG5gmqylT8a7uaXE9tsHE4a02I3QFQycuJRZbxM3Mo+PEfEKhnjeITtNmT
 x4h+5jIUwBiVXsW9fWBO81eftz6CcNrpayN43Vz7PYfbn/lxS7LPtfJL1JjOXXpI5+9d
 1CxwyXg32QUKVBp3DWH+YLJiwDYn17vyVcKLNZRdrpEy15syFg/vZC8uFTpkyYn1i6rN
 CY8A==
X-Gm-Message-State: APjAAAUMUsWT1V+traEbu5qmDamFnQTs2g8EuahcmDDuo+iIx4aMXm+F
 xluzaCaAtJHM/kmvXElxLLRzKrFJQUU=
X-Google-Smtp-Source: APXvYqxcrSIfmbjS9s7ArRFpumpHY7MXaw0phOSNLdABf42PWMJi52QVUpc2eRXUbUhDgU/SFtdxGQ==
X-Received: by 2002:a63:7454:: with SMTP id e20mr32353159pgn.192.1580839162631; 
 Tue, 04 Feb 2020 09:59:22 -0800 (PST)
Received: from localhost.localdomain ([2620:0:1008:fd00:25a6:3140:768c:a64d])
 by smtp.gmail.com with ESMTPSA id
 d73sm25414465pfd.109.2020.02.04.09.59.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 09:59:20 -0800 (PST)
From: Andrei Vagin <avagin@gmail.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: [PATCH 0/5] arm64: add the time namespace support
Date: Tue,  4 Feb 2020 09:59:08 -0800
Message-Id: <20200204175913.74901-1-avagin@gmail.com>
X-Mailer: git-send-email 2.17.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_095923_898521_9C830472 
X-CRM114-Status: GOOD (  13.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [avagin[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Thomas Gleixner <tglx@linutronix.de>, Andrei Vagin <avagin@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Dmitry Safonov <dima@arista.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Allocate the time namespace page among VVAR pages and add the logic
to handle faults on VVAR properly.

If a task belongs to a time namespace then the VVAR page which contains
the system wide VDSO data is replaced with a namespace specific page
which has the same layout as the VVAR page. That page has vdso_data->seq
set to 1 to enforce the slow path and vdso_data->clock_mode set to
VCLOCK_TIMENS to enforce the time namespace handling path.

The extra check in the case that vdso_data->seq is odd, e.g. a concurrent
update of the VDSO data is in progress, is not really affecting regular
tasks which are not part of a time namespace as the task is spin waiting
for the update to finish and vdso_data->seq to become even again.

If a time namespace task hits that code path, it invokes the corresponding
time getter function which retrieves the real VVAR page, reads host time
and then adds the offset for the requested clock which is stored in the
special VVAR page.

Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Dmitry Safonov <dima@arista.com>

Andrei Vagin (5):
  arm64/vdso: use the fault callback to map vvar pages
  arm64/vdso: Zap vvar pages when switching to a time namespace
  arm64/vdso: Add time napespace page
  arm64/vdso: Handle faults on timens page
  arm64/vdso: Restrict splitting VVAR VMA

 arch/arm64/Kconfig                            |   1 +
 .../include/asm/vdso/compat_gettimeofday.h    |  11 ++
 arch/arm64/include/asm/vdso/gettimeofday.h    |   8 ++
 arch/arm64/kernel/vdso.c                      | 134 ++++++++++++++++--
 arch/arm64/kernel/vdso/vdso.lds.S             |   3 +-
 arch/arm64/kernel/vdso32/vdso.lds.S           |   3 +-
 include/vdso/datapage.h                       |   1 +
 7 files changed, 147 insertions(+), 14 deletions(-)

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
