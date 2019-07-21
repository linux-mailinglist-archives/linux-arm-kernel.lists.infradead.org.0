Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0380B6F279
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 21 Jul 2019 12:03:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vVc0bJuAZ+ZnCDxK02pBhhkIYTZcUbOBnN5bFk++L4s=; b=i/vnhUXGzAiZqF
	v4yNjv795SoPAtyWJywANkD3SMpH0KAwoN1V+17AtsY2p9wxsZUv1tYF708mPGTUDbyhhHwRL7pBU
	OWZsngGIaUeX+EIyd+ZkSn3rBs7v+xl0+gbIV6+VJtfOKbKtDpquA2igeK+8OgiXN2v81ZcnxeV85
	Xu/gDTCiwo5KuSnXh+V8QUZCKt80v8k0xbQNMqMia0RUrl1798XvJvEmgoXky/c1RSAtfP1jzw1V+
	FxJhg3XqKzPPGCuwKF6wO0soWuziWqjZXLChBUha98LHH5tflGCO1eNej6EHXJ60cJXWy5dau359i
	X+AyB61y4fY6RiggLRFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hp8gf-00085M-T1; Sun, 21 Jul 2019 10:03:26 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hp8gK-00084u-Mw
 for linux-arm-kernel@lists.infradead.org; Sun, 21 Jul 2019 10:03:06 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 30E3F4E908;
 Sun, 21 Jul 2019 10:03:03 +0000 (UTC)
Received: from redhat.com (ovpn-120-23.rdu2.redhat.com [10.10.120.23])
 by smtp.corp.redhat.com (Postfix) with SMTP id 69DA95F7C0;
 Sun, 21 Jul 2019 10:02:54 +0000 (UTC)
Date: Sun, 21 Jul 2019 06:02:52 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: syzbot <syzbot+e58112d71f77113ddb7b@syzkaller.appspotmail.com>
Subject: Re: WARNING in __mmdrop
Message-ID: <20190721044615-mutt-send-email-mst@kernel.org>
References: <0000000000008dd6bb058e006938@google.com>
 <000000000000964b0d058e1a0483@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <000000000000964b0d058e1a0483@google.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Sun, 21 Jul 2019 10:03:03 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_030304_790009_A16B5FC3 
X-CRM114-Status: GOOD (  15.56  )
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

On Sat, Jul 20, 2019 at 03:08:00AM -0700, syzbot wrote:
> syzbot has bisected this bug to:
> 
> commit 7f466032dc9e5a61217f22ea34b2df932786bbfc
> Author: Jason Wang <jasowang@redhat.com>
> Date:   Fri May 24 08:12:18 2019 +0000
> 
>     vhost: access vq metadata through kernel virtual address
> 
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=149a8a20600000
> start commit:   6d21a41b Add linux-next specific files for 20190718
> git tree:       linux-next
> final crash:    https://syzkaller.appspot.com/x/report.txt?x=169a8a20600000
> console output: https://syzkaller.appspot.com/x/log.txt?x=129a8a20600000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=3430a151e1452331
> dashboard link: https://syzkaller.appspot.com/bug?extid=e58112d71f77113ddb7b
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=10139e68600000
> 
> Reported-by: syzbot+e58112d71f77113ddb7b@syzkaller.appspotmail.com
> Fixes: 7f466032dc9e ("vhost: access vq metadata through kernel virtual
> address")
> 
> For information about bisection process see: https://goo.gl/tpsmEJ#bisection


OK I poked at this for a bit, I see several things that
we need to fix, though I'm not yet sure it's the reason for
the failures:


1. mmu_notifier_register shouldn't be called from vhost_vring_set_num_addr
   That's just a bad hack, in particular I don't think device
   mutex is taken and so poking at two VQs will corrupt
   memory.
   So what to do? How about a per vq notifier?
   Of course we also have synchronize_rcu
   in the notifier which is slow and is now going to be called twice.
   I think call_rcu would be more appropriate here.
   We then need rcu_barrier on module unload.
   OTOH if we make pages linear with map then we are good
   with kfree_rcu which is even nicer.

2. Doesn't map leak after vhost_map_unprefetch?
   And why does it poke at contents of the map?
   No one should use it right?

3. notifier unregister happens last in vhost_dev_cleanup,
   but register happens first. This looks wrong to me.

4. OK so we use the invalidate count to try and detect that
   some invalidate is in progress.
   I am not 100% sure why do we care.
   Assuming we do, uaddr can change between start and end
   and then the counter can get negative, or generally
   out of sync.

So what to do about all this?
I am inclined to say let's just drop the uaddr optimization
for now. E.g. kvm invalidates unconditionally.
3 should be fixed independently.


-- 
MST

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
