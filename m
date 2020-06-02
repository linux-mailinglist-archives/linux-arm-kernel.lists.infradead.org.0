Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 719971EC188
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 20:03:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6lgprSietX32cwsbqU9dAS89Mjbu6OucchYDeku2RkI=; b=ZUE
	zRKGzgIQNPYIWBdjMdnxRp3D39J/DmcA8Fv5HSNWgILa2riZpbGAdMUe/1KxGqCq3JsMocEyXvy9s
	bWAz0On+lLqjB1v+xTezyEHWSwkdE1Z7VfvFJO7YDr0KCTvHDLKb7AANo7TiLrymG1XYcOhmKnAXc
	46Oa1h9l4IpuICCzik3Qi0Df2dRB3eYHik5D+Gj5RAGLxKGaoVjYggq35pwkRKWkmyOqcBMAl5R3o
	+eLPVGPH2EzQEYZQA5IUOwJd3PjUk/0UZwoBCpEeRohDTtueAnVVtRZQgnXur/VAedeRj6oIK057L
	GsQDIHrNRlXbVvob+VfVnGSqE8/p77g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgBFq-0002hD-Gf; Tue, 02 Jun 2020 18:03:14 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgBFi-0002fc-66
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 18:03:07 +0000
Received: by mail-pf1-x442.google.com with SMTP id v2so5425115pfv.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jun 2020 11:03:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=LqqP+fCBEpc/gpW2bM0qsawU9eAMfAXXBH14Fdira24=;
 b=bBKF7aNg2fySoOb6ttSQ11xvrTHokXCKtjJz1mu0mC8FjEsrdftUBVb/s/0Q67Rz2w
 ltPmZirT8vBG7x0Q0SQCuxe+bQNrvLkr/BDYfqT9KJxLYQ/HShqcQ4ONqMy92BpJ6bQC
 xqDgXsiNDcdA4earA6K1w9Iy40XIL1BHGE4UW/lquDnW8G7AJFYEAMUAd/C+1Go1qNKB
 83pODOROVBPnjacUFgp2rEXwUNV+TREpLlyLR+Syjj9LKzxeom6X4dYny+NSMHKJXS06
 Px/N6SQhYYmeQ2QpNNr3mQvhl3UgL4x52Nqq7CxsTXtO75lj+tjQQ1aKsRcG89wia2bC
 +wSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=LqqP+fCBEpc/gpW2bM0qsawU9eAMfAXXBH14Fdira24=;
 b=WoPBK/XHuERPt3qT+EimBQQfA8ELM8OvfETs1e1iCXsF4T/OLzqSq4aI7Y1sHjYNzO
 3ts+pt+sR+YaDoSs7iJ5Ydjv1h2YOgqOyIBh8U22dY7QPL+SGIuMtg0u5hYZ5zb5mZQ1
 f0Tqtt+fFn6HCbBLrQO9CaIy4pen+pYrB/Nlzg5izL3Qg/XYXH5eH1vmC9kxoYnYtkN1
 ZB3gthqaU3G0oBt/jC7Y5IznW4s10othAle2CYcj979uEuksGXgVa/LAqhke9qHds63g
 rpxGtoOUHRDHwbUnNP1S/w5LYjnCMXjlumUevcVl10uZjyNqUTGqcQVcYAHuWG+PwcVN
 tc7w==
X-Gm-Message-State: AOAM531eI6nnzURYLFHdMYXQ1/A/pzBPYYGdLmhLRm/XJkuFycpeqz5r
 1NYt0so+KpUqm6DcD7rKqQ9dw0pt
X-Google-Smtp-Source: ABdhPJwo4mTczar9tEK3KvUezbiNQ8f58zT0h9JcwBT8hfRdPJbuvqIe8wPBBbll4RvPUioempxIaA==
X-Received: by 2002:a63:34cd:: with SMTP id b196mr23583126pga.2.1591120984192; 
 Tue, 02 Jun 2020 11:03:04 -0700 (PDT)
Received: from laptop.hsd1.wa.comcast.net
 ([2601:600:817f:a132:df3e:521d:99d5:710d])
 by smtp.gmail.com with ESMTPSA id p8sm2740053pgs.29.2020.06.02.11.03.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Jun 2020 11:03:03 -0700 (PDT)
From: Andrei Vagin <avagin@gmail.com>
To: linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH RESEND v3 0/6] arm64: add the time namespace support
Date: Tue,  2 Jun 2020 11:02:53 -0700
Message-Id: <20200602180259.76361-1-avagin@gmail.com>
X-Mailer: git-send-email 2.17.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_110306_242043_739C87E8 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [avagin[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Dmitry Safonov <dima@arista.com>,
 linux-kernel@vger.kernel.org, Andrei Vagin <avagin@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>
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

v2: Code cleanups suggested by Vincenzo.
v3: add a comment in __arch_get_timens_vdso_data.

Reviewed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Dmitry Safonov <dima@arista.com>

v3 on github (if someone prefers `git pull` to `git am`):
https://github.com/avagin/linux-task-diag/tree/arm64/timens-v3

Andrei Vagin (6):
  arm64/vdso: use the fault callback to map vvar pages
  arm64/vdso: Zap vvar pages when switching to a time namespace
  arm64/vdso: Add time napespace page
  arm64/vdso: Handle faults on timens page
  arm64/vdso: Restrict splitting VVAR VMA
  arm64: enable time namespace support

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
