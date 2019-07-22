Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BE6970528
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 18:14:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EU8R2YX+JgCzRjWJFmkJIO4j4I4llODiXPyD6f2FQtU=; b=ptHfwiBKtEQQ4M
	pjIwSVrflpLF1KbZepvaapX5w7kFEwYpDduzIMw+iBR4DoVvralSSdtuNZ7r0qtIh6WauPvFyCVAt
	eIpAo6HIQbF4ZQ6Oil5dchPYHNvZ52ivWsGQ/XIImwYERWkxZ6WjvHY3vT1mAl0ILQiTQ+smhHL90
	TB4bpILMdX6xltUPOxG8DLVKrCbJUN7OL9SpW/FzEZJKMYHHrgsDSDy9wC3lua7vm2Ed7XLxb+CNj
	0r/9677Z1p/oPkjbifavHQr/uOdUDYTXjxOvwvSuUTt/nvcpiB+b/Wu/vUmgsn5jAV/+AFHZ4YTcb
	qkgm30E6vX/Be5kxBCog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpax4-0003sd-AE; Mon, 22 Jul 2019 16:14:14 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpawj-0003rU-J6
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 16:13:54 +0000
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id BAFB030B8DE2;
 Mon, 22 Jul 2019 16:13:50 +0000 (UTC)
Received: from redhat.com (ovpn-124-54.rdu2.redhat.com [10.10.124.54])
 by smtp.corp.redhat.com (Postfix) with SMTP id AE2A260BEC;
 Mon, 22 Jul 2019 16:13:42 +0000 (UTC)
Date: Mon, 22 Jul 2019 12:13:40 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: "Paul E. McKenney" <paulmck@linux.ibm.com>
Subject: Re: RFC: call_rcu_outstanding (was Re: WARNING in __mmdrop)
Message-ID: <20190722120011-mutt-send-email-mst@kernel.org>
References: <0000000000008dd6bb058e006938@google.com>
 <000000000000964b0d058e1a0483@google.com>
 <20190721044615-mutt-send-email-mst@kernel.org>
 <20190721081933-mutt-send-email-mst@kernel.org>
 <20190721131725.GR14271@linux.ibm.com>
 <20190721210837.GC363@bombadil.infradead.org>
 <20190721233113.GV14271@linux.ibm.com>
 <20190722151439.GA247639@google.com>
 <20190722114612-mutt-send-email-mst@kernel.org>
 <20190722155534.GG14271@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190722155534.GG14271@linux.ibm.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Mon, 22 Jul 2019 16:13:51 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_091353_680032_7261C5E2 
X-CRM114-Status: GOOD (  20.14  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 namit@vmware.com, Joel Fernandes <joel@joelfernandes.org>, mingo@kernel.org,
 elena.reshetova@intel.com, aarcange@redhat.com, davem@davemloft.net,
 Matthew Wilcox <willy@infradead.org>, hch@infradead.org,
 linux-arm-kernel@lists.infradead.org, keescook@chromium.org,
 syzkaller-bugs@googlegroups.com, jglisse@redhat.com, viro@zeniv.linux.org.uk,
 christian@brauner.io, wad@chromium.org, linux-parisc@vger.kernel.org,
 linux-kernel@vger.kernel.org, luto@amacapital.net, ebiederm@xmission.com,
 akpm@linux-foundation.org, guro@fb.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 08:55:34AM -0700, Paul E. McKenney wrote:
> On Mon, Jul 22, 2019 at 11:47:24AM -0400, Michael S. Tsirkin wrote:
> > On Mon, Jul 22, 2019 at 11:14:39AM -0400, Joel Fernandes wrote:
> > > [snip]
> > > > > Would it make sense to have call_rcu() check to see if there are many
> > > > > outstanding requests on this CPU and if so process them before returning?
> > > > > That would ensure that frequent callers usually ended up doing their
> > > > > own processing.
> > > 
> > > Other than what Paul already mentioned about deadlocks, I am not sure if this
> > > would even work for all cases since call_rcu() has to wait for a grace
> > > period.
> > > 
> > > So, if the number of outstanding requests are higher than a certain amount,
> > > then you *still* have to wait for some RCU configurations for the grace
> > > period duration and cannot just execute the callback in-line. Did I miss
> > > something?
> > > 
> > > Can waiting in-line for a grace period duration be tolerated in the vhost case?
> > > 
> > > thanks,
> > > 
> > >  - Joel
> > 
> > No, but it has many other ways to recover (try again later, drop a
> > packet, use a slower copy to/from user).
> 
> True enough!  And your idea of taking recovery action based on the number
> of callbacks seems like a good one while we are getting RCU's callback
> scheduling improved.
> 
> By the way, was this a real problem that you could make happen on real
> hardware?


>  If not, I would suggest just letting RCU get improved over
> the next couple of releases.


So basically use kfree_rcu but add a comment saying e.g. "WARNING:
in the future callers of kfree_rcu might need to check that
not too many callbacks get queued. In that case, we can
disable the optimization, or recover in some other way.
Watch this space."


> If it is something that you actually made happen, please let me know
> what (if anything) you need from me for your callback-counting EBUSY
> scheme.
> 
> 							Thanx, Paul

If you mean kfree_rcu causing OOM then no, it's all theoretical.
If you mean synchronize_rcu stalling to the point where guest will OOPs,
then yes, that's not too hard to trigger.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
