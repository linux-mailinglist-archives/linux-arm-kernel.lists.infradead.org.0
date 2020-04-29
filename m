Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB9C31BDD7F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 15:24:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=peMv5ojH67EhWSo9KEP5269rNQ0fD6Mlta43vzMGLzM=; b=qKnfN1ClMWY1dd
	FLnukGGX4aw39N4KLBdJcorWJWKW23c4TakCx9b+pJBiW/TN/LXLhODRzhKm1NRIcs5J7+DMfne5S
	QNUOtaNqVIc89cupD3o2MnbM/BkaDMz+fZkRGxz+a84ux5QKAHORMsMZlaj0zpE3v8cdWwQIXbPQK
	dZXV+in1NomNYCBczkmX0ZyDJRDLsEgETzDdYT+U5svYVpvn1Z8N9/UZBgt/NbMp9HBi3sMhX0nPF
	02I9wacWi3gvEFRRM6LNF2L72PMW4jkKWELhaekXmlrFvILRH9vZPJ6dyMPde9ynnA+ULIIt+bybs
	7YZXUtTgwKsvI4OzyX0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTmhA-00038k-Pc; Wed, 29 Apr 2020 13:24:12 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTmgx-00037Z-Hj
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 13:24:02 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MDv1A-1jM2us3zwy-009zpL; Wed, 29 Apr 2020 15:23:55 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Russell King <linux@armlinux.org.uk>
Subject: [PATCH] [v2] ARM: oabi-compat: fix epoll_ctl build failure
Date: Wed, 29 Apr 2020 15:23:24 +0200
Message-Id: <20200429132349.1294904-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:YesVeQBh9Q/IA+uNWz/5JCdSN2u4hoTMC5shuvSJ4yxM1Q6iwui
 wXUQ5wEe7ndWD4fD5QG/iF3Y8iVx9+DoiTgHcTG3Zt64TuTyLiawqer+CYnMad2oEvSXwMI
 2/lferA/lpp5qT7D4jF7OFcvNkdsovgGrDcKxXLycrOrO6KrgW7Et+inVFPWiWkeSGciNNC
 JwsBwNoMFhx1RLcB8D5wA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:oM3nSM6auHQ=:YMn63bge2D4TN2BuE+kKP0
 JrAZ/FMokb4p0ZyrHUM4qR0NA28gOEyw9/frW6jIeZT9ZFzUTawj2+BG78WMhpuK+40T/RSSi
 nNPR+JiuYxNF2J4vY+3fAd51EFTWauTu5xMoGWOVySj3WOoLr1TLsr1kfC/bMNNZQVbL2AgJw
 bx2vYWsjclCyCUq1jqykhL/t9/Cc3GiMiq4qKUpW+1N524zStvlFqfR1yT6S7tiO4viaeK+iW
 60LSU6yk/eR2RMtxXOFAwYh6ufSwp1wNRYnXByk/0rzo7Fc4ObZLWMwS31G13se7u66vX1DuD
 Yc0usPp7QFqq16Tw25wwEc6SD8vmVrxo08WIO/S4qJx4LYMA8u2OH4lZfbpLbsRjyvAXjdopb
 LtQ3tGT8dmx5BhhIHIyjNLC+CN9eRy7Swp33GF9+A6cq+TpY8nZZdd6Cc/16i6I+NGjVE5YlQ
 hvOeF8fZr0al6jqNcfZP75cwdEFDINBNT/CsVRIADuORToS0JJRutEoPjf1cBQ8/x9/mfPFCo
 75mrVhTY792ttYUO+IpdlAA3CN7npw7CvbxsGwYNdomtrepM7ZyDTeJXyo4LD51gjqSz7yKAP
 NXUYYaQliD7yVdZMKhk/akMo0fmTLNHvFXpxqMQ5gYKH6VJimNzGDQJRuDK/qZmWCkY9UTOJn
 W9g1yj2Y3kHglEvm9g18lAN1lgDAfE4uC4XCxEKXSn7kiKtdNvqX4tuIeeFnV1A6P+IZ+6C5/
 6T2KeFyMhQ0NuMvcKWmwGzHAuOyOsW7az6PZcsNoNpFFmz1aK9wArASmf6BSOGjuhMGivRGTx
 wcVEG1X2v99IGprRPFLEIinmJsYOld7tuS1C17jp6XpwTgDyfM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_062359_877524_7984ADC0 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-api@vger.kernel.org,
 linux-kernel@vger.kernel.org, Russell King <rmk+kernel@armlinux.org.uk>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Two functions are not declared or defined when CONFIG_EPOLL is
disabled:

arch/arm/kernel/sys_oabi-compat.c: In function 'sys_oabi_epoll_ctl':
arch/arm/kernel/sys_oabi-compat.c:258:6: error: implicit declaration of function 'ep_op_has_event' [-Werror=implicit-function-declaration]
  258 |  if (ep_op_has_event(op) &&
      |      ^~~~~~~~~~~~~~~
arch/arm/kernel/sys_oabi-compat.c:265:9: error: implicit declaration of function 'do_epoll_ctl'; did you mean 'sys_epoll_ctl'? [-Werror=implicit-function-declaration]
  265 |  return do_epoll_ctl(epfd, op, fd, &kernel, false);
      |         ^~~~~~~~~~~~
      |         sys_epoll_ctl

Replace the function with the sys_ni_syscall stub in this case.

Fixes: c281634c8652 ("ARM: compat: remove KERNEL_DS usage in sys_oabi_epoll_ctl()")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
v2: use sys_ni_syscall() instead of removing the function body
---
 arch/arm/kernel/sys_oabi-compat.c | 2 ++
 kernel/sys_ni.c                   | 1 +
 2 files changed, 3 insertions(+)

diff --git a/arch/arm/kernel/sys_oabi-compat.c b/arch/arm/kernel/sys_oabi-compat.c
index 85a1e95341d8..2488c69242cf 100644
--- a/arch/arm/kernel/sys_oabi-compat.c
+++ b/arch/arm/kernel/sys_oabi-compat.c
@@ -249,6 +249,7 @@ struct oabi_epoll_event {
 	__u64 data;
 } __attribute__ ((packed,aligned(4)));
 
+#ifdef CONFIG_EPOLL
 asmlinkage long sys_oabi_epoll_ctl(int epfd, int op, int fd,
 				   struct oabi_epoll_event __user *event)
 {
@@ -264,6 +265,7 @@ asmlinkage long sys_oabi_epoll_ctl(int epfd, int op, int fd,
 
 	return do_epoll_ctl(epfd, op, fd, &kernel, false);
 }
+#endif
 
 asmlinkage long sys_oabi_epoll_wait(int epfd,
 				    struct oabi_epoll_event __user *events,
diff --git a/kernel/sys_ni.c b/kernel/sys_ni.c
index 42ce28c460f6..9ee6a46b1795 100644
--- a/kernel/sys_ni.c
+++ b/kernel/sys_ni.c
@@ -68,6 +68,7 @@ COND_SYSCALL(epoll_create1);
 COND_SYSCALL(epoll_ctl);
 COND_SYSCALL(epoll_pwait);
 COND_SYSCALL_COMPAT(epoll_pwait);
+COND_SYSCALL(oabi_epoll_ctl); /* ARM OABI specific */
 
 /* fs/fcntl.c */
 
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
