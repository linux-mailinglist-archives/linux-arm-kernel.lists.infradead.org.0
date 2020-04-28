Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DEAE1BCEE7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 23:38:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Imv4QnpCAGTsPx7uLK4bD66/jmAy63GZbmHQcRendrY=; b=Eon/+h/UiRylwR
	iqb/dtVTR92z83g1LprLcK8Wgy4aQBmqaVhogAfgcNwqH+p8Z00XsV2djBNn14Cs1kXljDCOsl1Sa
	mt/Mptx2amQix+a9zkDAu/cO4k9MxR4mnPgZf9rDp/YH/k+8G8onEGAWzxRsW77vCSRoAzw+u8nOG
	luwAjtjTcA5m7OzHQwtxpteTPVP6aB6CLpGBUIvaBx3Tqqovqekb46CaXzG6BoKRp0P7ds2J8j+DX
	cSYzSseNPXBrXnx0ZOcgaoWb9gnCqW7Gtc7kUi1RubYOCmn/l5/oi1OIEQVWqkCEeewEcxq75a6dm
	LJxllMA239RZEeW+rShA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTXvZ-0006uB-B5; Tue, 28 Apr 2020 21:38:05 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTXvO-0006tl-LX
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 21:37:56 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MHWvH-1jPPBf34gD-00DTbe; Tue, 28 Apr 2020 23:37:50 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Russell King <linux@armlinux.org.uk>
Subject: [PATCH] ARM: oabi-compat: fix epoll_ctl build failure
Date: Tue, 28 Apr 2020 23:37:30 +0200
Message-Id: <20200428213747.3663311-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:QyK016Hxxs2OI4rE97oUpmPh5N6kM6aosbQ68YRzxwtX1/dXUdB
 0fLRccOS5TJ87dAmY5lXl9hW1mtKzy1fGKgq9RNLog1tdehYxRSgCgGna6b1uMemS+9wHoe
 rNWTE6gw/UJL2G2Qn05rWe1T/9MZjqOx6FxxB+6NR8CV4+zXSOgBwl18+6FYbs2xSWNmJee
 Xqz7IsH8BXfAZ++8EKbIg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:n3DbFsskL/8=:ufFsxFEofaBBL5hPfYnX/M
 vYmoPRuqG/pTgqLiBKcFYUBpL0n5JYHwrercUv1AGgsWwhImbmeEGiXaj89YPzFUAOynMGTbf
 SR6p1XMH2qbHfLV2nOB6azj6FCzFsI7nITIsc35DM8GuTJCJ7WLHEJOawhJPXOVAiJaDzluWY
 Qm1+/d8OsmNnxWhNU1jmAkm5f1qdDEnhg3+idDBqQNaMeb1Sbaa0zfVvNhb8kN2hT3GjhwWDq
 rxulETf53DdM5nU3rSSl+P1HAPGrDNUEO+9uE6RIpkumvOD0O77GCLTYrH+QJ3vYCv9P6pq1A
 aYfTENKozkzGUrb6jhupmjhMELSsktlSuUbLPDDN3kgo5wV7PBBNzB1H7BDxIqWp9KKFRNuU2
 Wg4xCrjlIwb8IglvQJuBzBm71aObtO8S1Gw72zSS+i7zWkx1fjSiCFmHvVrnw0WWleTLLIIMS
 4GtGd7Auh7BKCZvP6hbd1cSh43KhvTOBqUknyscRVU0/ZOcjQnXyionmytafK3p1gbXDl5Y8a
 sExzl0I8J1779HHSP/Gyu52Rb1y7CMLY5IBVOG0qj3r3M8KjlY8oj726h43ROT+op8shNB+TI
 eWl+MqLE0TznaMCt1gBeDcJbfopyG0FY7bLb9QTQaItss6RDjpFmLarFu8M0govtKnrK8Orho
 HmwYnz1yVwhYho3JWiCkrCrTcMB1cwRRivcCiAa73ad6+p+ZKhoSlcpDRSmCmW1eMtwYxrCbN
 n3CIU0EDaBRWyRCsBPxP1Abj7FrDs1yNnMUY0olmw2lBjuAnaDkMa8x57olbjNLVFHgtIUhKu
 CJHYhqp4uvTPh8lseagc6OACse+P8dNGSBzErGPZbJNyjaJF8E=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_143755_002058_6E88F99D 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: 0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.9 RCVD_IN_MSPIKE_L3      RBL: Low reputation (-3)
 [217.72.192.73 listed in bl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
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
Cc: linux-arm-kernel@lists.infradead.org,
 Russell King <rmk+kernel@armlinux.org.uk>, Christoph Hellwig <hch@lst.de>,
 Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org
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

Blank out the entire function contents in this case.

Fixes: c281634c8652 ("ARM: compat: remove KERNEL_DS usage in sys_oabi_epoll_ctl()")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
Alternatively, we could use stub functions in the header file, or
hide the entire function and use sys_ni_syscall() to provide a
stub entry point.
---
 arch/arm/kernel/sys_oabi-compat.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/kernel/sys_oabi-compat.c b/arch/arm/kernel/sys_oabi-compat.c
index 85a1e95341d8..cdc99bab1a1d 100644
--- a/arch/arm/kernel/sys_oabi-compat.c
+++ b/arch/arm/kernel/sys_oabi-compat.c
@@ -252,6 +252,7 @@ struct oabi_epoll_event {
 asmlinkage long sys_oabi_epoll_ctl(int epfd, int op, int fd,
 				   struct oabi_epoll_event __user *event)
 {
+#ifdef CONFIG_EPOLL
 	struct oabi_epoll_event user;
 	struct epoll_event kernel;
 
@@ -263,6 +264,9 @@ asmlinkage long sys_oabi_epoll_ctl(int epfd, int op, int fd,
 	kernel.data   = user.data;
 
 	return do_epoll_ctl(epfd, op, fd, &kernel, false);
+#else
+	return -ENOSYS;
+#endif
 }
 
 asmlinkage long sys_oabi_epoll_wait(int epfd,
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
