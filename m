Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 377142010D3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 17:36:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=miM3bZDkGggryFdIqk/r3HoDR3+5sPKBKg+ID2tYbeU=; b=jtVGYT+FXTlezc
	wnaHmCYKBLApg+K9JOXMKRY+EK7+7Fj5xA/QtbtakQoueXExIoHkWlx+FgAAMDSksFb2ZeT+leHgS
	gMferyMHyU2WgpK48sa3S4kqN9C4GoFFcsEmOOu7h29zfTlFTJXfhKseBAM0mw79tWMPK9zjvhhrx
	n9lpkeOlf5ovxnuj7Ss/Yqy8UNiXwaY/E2Eqjrh0Pm8mwgoO8NDCHUFiNIaPrRsHVoEFzkuOcyJ42
	BKLgFy7b4DhXDjjbEmoftcu6/DdFHcH7mDb9GbDC+Ds/FqyZx2XHi4qHhvBE3yqDykJ4WdznFIWka
	Cp6ozwUJejMyv/TXo+XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmJ49-0002yh-JA; Fri, 19 Jun 2020 15:36:29 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmJ42-0002xZ-GG
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 15:36:24 +0000
Received: from ip-109-41-0-196.web.vodafone.de ([109.41.0.196]
 helo=localhost.localdomain) by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <christian.brauner@ubuntu.com>)
 id 1jmJ3w-0000bE-6e; Fri, 19 Jun 2020 15:36:16 +0000
From: Christian Brauner <christian.brauner@ubuntu.com>
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 x86@kernel.org
Subject: [PATCH 0/3] nsproxy: support CLONE_NEWTIME with setns()
Date: Fri, 19 Jun 2020 17:35:56 +0200
Message-Id: <20200619153559.724863-1-christian.brauner@ubuntu.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_083622_672752_59347A4E 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [91.189.89.112 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Catalin Marinas <catalin.marinas@arm.com>, Andrei Vagin <avagin@gmail.com>,
 Michael Kerrisk <mtk.manpages@gmail.com>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Serge Hallyn <serge@hallyn.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hey,

So far setns() was missing time namespace support. This was partially
due to it simply not being implemented but also because
vdso_join_timens() could still fail which made switching to multiple
namespaces atomically problematic. This series first fixes
vdso_join_timens() to never fail, introduces timens_commit() and finally
adds CLONE_NEWTIME support for setns().

Please note, that arm is currently in the process of adding
vdso_join_timens() support (cf. [1]) so it might make sense to split the
vdso_join_timens() change out and route it to mainline as a fix so both
my series and the arm support can be rebased on top of it. I've Cced the
relevant people and I'm also replying to the arm thread now.

[1]: https://lore.kernel.org/lkml/20200602180259.76361-1-avagin@gmail.com/

Thanks!
Christian

Christian Brauner (3):
  timens: make vdso_join_timens() always succeed
  timens: add timens_commit() helper
  nsproxy: support CLONE_NEWTIME with setns()

 arch/x86/entry/vdso/vma.c      |  6 ++----
 include/linux/time_namespace.h | 13 +++++++++----
 kernel/nsproxy.c               | 21 +++++++++++++++++++--
 kernel/time/namespace.c        | 22 ++++++++--------------
 4 files changed, 38 insertions(+), 24 deletions(-)


base-commit: b3a9e3b9622ae10064826dccb4f7a52bd88c7407
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
