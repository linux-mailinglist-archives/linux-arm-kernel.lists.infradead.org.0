Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57584D588B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 00:13:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uFBrk51o978wHpA1OHr+V8fZ5Nq/N/QenSb9TSPxQ+8=; b=QtEV+m2ae0mVKq
	wErItWtIWy/tNGlmYVAt5JigivVvlZZhezscuR/qhDbUi+aBMx3APShr4VhOb5egIm6qagvdwICf6
	AP+HqwdQTO5EkHZ7BkmiIzM0VQ93HQKIUVQmyz1gQJSNSg4fFRkE6ftRzWKN6CEzKrBTHRkfEfvPq
	eSzKAdFocadv/XF076qL6QuB+nNyW3gHHuPYHhgoZdts/JQaVvEQNrHXMTSCrDPadva8RaqgysKoa
	msMP71wyR+8nyEH++nK3xhY8L7OtIYtpqrR4fQXOMJvo6KiWf2Fh762OcX6LxN4/5alfjac1xyHxa
	qAAqJP7bUF0ds7Jaq9Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJm7W-0006Co-5d; Sun, 13 Oct 2019 22:13:46 +0000
Received: from chamillionaire.breakpoint.cc ([2a0a:51c0:0:12e:520::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJm7O-0006CK-6x
 for linux-arm-kernel@lists.infradead.org; Sun, 13 Oct 2019 22:13:39 +0000
Received: from localhost ([127.0.0.1] helo=flow.W.breakpoint.cc)
 by Chamillionaire.breakpoint.cc with esmtp (Exim 4.92)
 (envelope-from <sebastian@breakpoint.cc>)
 id 1iJm7I-00089S-LK; Mon, 14 Oct 2019 00:13:33 +0200
From: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH 0/6 v2] Queued spinlocks/RW-locks for ARM
Date: Mon, 14 Oct 2019 00:13:04 +0200
Message-Id: <20191013221310.30748-1-sebastian@breakpoint.cc>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Breakpoint-Spam-Score: -1.0
X-Breakpoint-Spam-Level: -
X-Breakpoint-Spam-Status: No , -1.0 points, 5.0 required,  ALL_TRUSTED=-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_151338_248366_A99C085B 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:520:0:0:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Arnd Bergmann <arnd@arndb.de>, Peter Zijlstra <peterz@infradead.org>,
 Russell King <linux@armlinux.org.uk>, Ingo Molnar <mingo@redhat.com>,
 Waiman Long <longman@redhat.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I added support for queued-RW and -spinlocks for ARM. I followed Arnd's
suggestion and added support for xchg() on 8bit and 16bit variables (V6
CPUs) via the SH implementation. This makes it possible to remove the
current ticket based locking implementation. 

The numbers should be the same as in v1 posted here:
   http://lkml.kernel.org/r/20191007214439.27891-1-sebastian@breakpoint.cc

The only thing changed is that patch #1-#3 wire up the missing xchg and
the patches #4 and #5 additionally remove the old implementation while
adding the missing bits for the queued implementation.

Sebatian



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
