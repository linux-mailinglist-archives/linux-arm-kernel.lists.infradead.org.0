Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE4C142BFF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 14:22:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mgWI2EMXyymllWIMe+a1dFZyo8Zs7Sy5kG2ESoKJrqs=; b=mOm9kk9RNCVA6N
	90UGOsQH4UoH4M0WBGr3y9DwZFuQ0V7wcRZS7dzHMn40Sm/soM/GBx2TbipIHpe7lU2N/njnMNmUJ
	mqOP4aI0u7GxRcewi0reyHYrOA62kbZztWtLOubOFzvWPXlmeY7KZofd0WJfV9/51tL490zZAdFol
	XwUnh2tbPGcr1IOntQbq9JQQtjohnwS/JDj+nU14DVGMdoPxfqaMtwxyfzMxL4npnz5GLceaOwko6
	h9igUFDwInOWzd11OCIINeMBZlJT8nxgYjykXy6k9ocHt8gxB88mBm1Vvjq+qd+1oF6TqN1erf8ra
	o6WTpYwL3Ps8VSByJdDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itX0h-0006NG-Q5; Mon, 20 Jan 2020 13:22:31 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itX0M-0006L4-Nd
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 13:22:17 +0000
Received: from [154.119.55.242] (helo=wittgenstein)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <christian.brauner@ubuntu.com>)
 id 1itWy2-0005zt-Dn; Mon, 20 Jan 2020 13:19:46 +0000
Date: Mon, 20 Jan 2020 14:19:31 +0100
From: Christian Brauner <christian.brauner@ubuntu.com>
To: syzbot <syzbot+6491ea8f6dddbf04930e@syzkaller.appspotmail.com>
Subject: Re: KASAN: slab-out-of-bounds Read in bitmap_ip_ext_cleanup
Message-ID: <20200120131930.pbhbsrm4bk4lq3d7@wittgenstein>
References: <000000000000bdb5b2059c865f5c@google.com>
 <000000000000c795fa059c884c21@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <000000000000c795fa059c884c21@google.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_052210_908213_CED4B58A 
X-CRM114-Status: UNSURE (   6.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [91.189.89.112 listed in wl.mailspike.net]
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mareklindner@neomailbox.ch, peterz@infradead.org, catalin.marinas@arm.com,
 a@unstable.cc, jcmvbkbc@gmail.com, hpa@zytor.com, will@kernel.org,
 elena.reshetova@intel.com, hare@suse.com, johannes.berg@intel.com,
 florent.fourcot@wifirst.fr, x86@kernel.org, linux@armlinux.org.uk,
 kadlec@netfilter.org, coreteam@netfilter.org, geert@linux-m68k.org,
 allison@lohutok.net, pablo@netfilter.org, linux-arm-kernel@lists.infradead.org,
 linux-xtensa@linux-xtensa.org, arnd@arndb.de, heiko.carstens@de.ibm.com,
 syzkaller-bugs@googlegroups.com, bp@alien8.de, viro@zeniv.linux.org.uk,
 tglx@linutronix.de, mingo@redhat.com, christian@brauner.io, axboe@kernel.dk,
 chris@zankel.net, jeremy@azazel.net, sw@simonwunderlich.de,
 linux-api@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, fw@strlen.de,
 linux-kernel@vger.kernel.org, netfilter-devel@vger.kernel.org,
 netdev@vger.kernel.org, akpm@linux-foundation.org, info@metux.net,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jan 19, 2020 at 05:35:01PM -0800, syzbot wrote:
> syzbot has bisected this bug to:
> 
> commit d68dbb0c9ac8b1ff52eb09aa58ce6358400fa939
> Author: Christian Brauner <christian@brauner.io>
> Date:   Thu Jun 20 23:26:35 2019 +0000
> 
>     arch: handle arches who do not yet define clone3
> 
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1456fed1e00000
> start commit:   09d4f10a net: sched: act_ctinfo: fix memory leak
> git tree:       net
> final crash:    https://syzkaller.appspot.com/x/report.txt?x=1656fed1e00000
> console output: https://syzkaller.appspot.com/x/log.txt?x=1256fed1e00000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=7e89bd00623fe71e
> dashboard link: https://syzkaller.appspot.com/bug?extid=6491ea8f6dddbf04930e
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=141af959e00000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1067fa85e00000
> 
> Reported-by: syzbot+6491ea8f6dddbf04930e@syzkaller.appspotmail.com
> Fixes: d68dbb0c9ac8 ("arch: handle arches who do not yet define clone3")
> 
> For information about bisection process see: https://goo.gl/tpsmEJ#bisection

This bisect seems bogus.

Christian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
