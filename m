Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDDDB6F337
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 21 Jul 2019 14:28:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RzCpRQzfc75PJjwCP9pvoG1zLYHGy1QLrXaAra3k65g=; b=AoaXvITH8ihxng
	5L5rFD1VRyoLrQTfa8K0nBICPO9bT4r76bgIaE/08lb095sBWnY7WaoPIQwJcyp/RRFrswHqYaElI
	2USx60GZW8oHnu+6e257U57YRhJLUFAtPXln9FR4yIaVzNRleS7/L612zgn5EUppfgyBkGmL2XBC2
	7RSdz9eMpI3lKvZn/CfptwmIXChPn0VB/3IT9955+1AyEFnt9phlpUEf1x6ALR9VoFgozOVHmWgHM
	iw+eVuhspiG+8ioxRcCc69VPUTvDHij44Z3FQzjPnTO3c41GADa1jq+VtbLpl0wB6OLvzCPoIjKGk
	A7AEyIgMyB8FruEHi3lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpAx2-0004NW-RX; Sun, 21 Jul 2019 12:28:29 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpAwq-0004ND-0g
 for linux-arm-kernel@lists.infradead.org; Sun, 21 Jul 2019 12:28:17 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 422DB3082E24;
 Sun, 21 Jul 2019 12:28:15 +0000 (UTC)
Received: from redhat.com (ovpn-120-23.rdu2.redhat.com [10.10.120.23])
 by smtp.corp.redhat.com (Postfix) with SMTP id DD5C75F7C0;
 Sun, 21 Jul 2019 12:28:06 +0000 (UTC)
Date: Sun, 21 Jul 2019 08:28:05 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: paulmck@linux.vnet.ibm.com
Subject: RFC: call_rcu_outstanding (was Re: WARNING in __mmdrop)
Message-ID: <20190721081933-mutt-send-email-mst@kernel.org>
References: <0000000000008dd6bb058e006938@google.com>
 <000000000000964b0d058e1a0483@google.com>
 <20190721044615-mutt-send-email-mst@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190721044615-mutt-send-email-mst@kernel.org>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Sun, 21 Jul 2019 12:28:15 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_052816_095498_244EB1EF 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
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
Cc: mhocko@suse.com, peterz@infradead.org, jasowang@redhat.com,
 ldv@altlinux.org, james.bottomley@hansenpartnership.com, linux-mm@kvack.org,
 namit@vmware.com, mingo@kernel.org, elena.reshetova@intel.com,
 aarcange@redhat.com, davem@davemloft.net, hch@infradead.org,
 christian@brauner.io, keescook@chromium.org, syzkaller-bugs@googlegroups.com,
 jglisse@redhat.com, viro@zeniv.linux.org.uk,
 linux-arm-kernel@lists.infradead.org, wad@chromium.org,
 linux-parisc@vger.kernel.org, linux-kernel@vger.kernel.org,
 luto@amacapital.net, ebiederm@xmission.com, akpm@linux-foundation.org,
 guro@fb.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Paul, others,

So it seems that vhost needs to call kfree_rcu from an ioctl. My worry
is what happens if userspace starts cycling through lots of these
ioctls.  Given we actually use rcu as an optimization, we could just
disable the optimization temporarily - but the question would be how to
detect an excessive rate without working too hard :) .

I guess we could define as excessive any rate where callback is
outstanding at the time when new structure is allocated.  I have very
little understanding of rcu internals - so I wanted to check that the
following more or less implements this heuristic before I spend time
actually testing it.

Could others pls take a look and let me know?

Thanks!

Signed-off-by: Michael S. Tsirkin <mst@redhat.com>


diff --git a/kernel/rcu/tiny.c b/kernel/rcu/tiny.c
index 477b4eb44af5..067909521d72 100644
--- a/kernel/rcu/tiny.c
+++ b/kernel/rcu/tiny.c
@@ -125,6 +125,25 @@ void synchronize_rcu(void)
 }
 EXPORT_SYMBOL_GPL(synchronize_rcu);
 
+/*
+ * Helpful for rate-limiting kfree_rcu/call_rcu callbacks.
+ */
+bool call_rcu_outstanding(void)
+{
+	unsigned long flags;
+	struct rcu_data *rdp;
+	bool outstanding;
+
+	local_irq_save(flags);
+	rdp = this_cpu_ptr(&rcu_data);
+	outstanding = rcu_segcblist_empty(&rdp->cblist);
+	outstanding = rcu_ctrlblk.donetail != rcu_ctrlblk.curtail;
+	local_irq_restore(flags);
+
+	return outstanding;
+}
+EXPORT_SYMBOL_GPL(call_rcu_outstanding);
+
 /*
  * Post an RCU callback to be invoked after the end of an RCU grace
  * period.  But since we have but one CPU, that would be after any
diff --git a/kernel/rcu/tree.c b/kernel/rcu/tree.c
index a14e5fbbea46..d4b9d61e637d 100644
--- a/kernel/rcu/tree.c
+++ b/kernel/rcu/tree.c
@@ -2482,6 +2482,24 @@ static void rcu_leak_callback(struct rcu_head *rhp)
 {
 }
 
+/*
+ * Helpful for rate-limiting kfree_rcu/call_rcu callbacks.
+ */
+bool call_rcu_outstanding(void)
+{
+	unsigned long flags;
+	struct rcu_data *rdp;
+	bool outstanding;
+
+	local_irq_save(flags);
+	rdp = this_cpu_ptr(&rcu_data);
+	outstanding = rcu_segcblist_empty(&rdp->cblist);
+	local_irq_restore(flags);
+
+	return outstanding;
+}
+EXPORT_SYMBOL_GPL(call_rcu_outstanding);
+
 /*
  * Helper function for call_rcu() and friends.  The cpu argument will
  * normally be -1, indicating "currently running CPU".  It may specify

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
