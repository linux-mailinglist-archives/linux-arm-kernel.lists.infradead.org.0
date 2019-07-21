Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95F676F5BD
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 21 Jul 2019 23:08:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yfeBksSqtrZyAVOr82DISd8+QGXBOv9sMfG26VftZDU=; b=R809rQlK8gPLAe
	st+HNGx0Vy37Wbn5tV/KPiITBHRCsuTs2peEntvW+PP6eOWj9QxyCjgwoKl+BhrFLrbfjLkCosuCd
	1hzN5g8uIbH1ruE5EIXBYvPizznOVvE+UIu6rUu23Y03UfUu00V+EnGB+N/tn3lhXnQAC2CwGczP3
	2VvNjN9S1+LLb5HRoWk75Z8LKMr7qDuvBOoWC+hrXGj1HmLC41dKVjBghtGYKZJy0UTHD+1sBDgFT
	pFOx9Z7aLC20eue1S3+fw5OO8QEgv4bsPdWyL643kBe1xfx6xUnyIMmOc7/7pcEOH7YZ7DoAzrbJK
	6A7YSeAK+zpOVnX32Bvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpJ4h-000329-HD; Sun, 21 Jul 2019 21:08:55 +0000
Received: from willy by bombadil.infradead.org with local (Exim 4.92 #3 (Red
 Hat Linux)) id 1hpJ4P-00031q-HE; Sun, 21 Jul 2019 21:08:37 +0000
Date: Sun, 21 Jul 2019 14:08:37 -0700
From: Matthew Wilcox <willy@infradead.org>
To: "Paul E. McKenney" <paulmck@linux.ibm.com>
Subject: Re: RFC: call_rcu_outstanding (was Re: WARNING in __mmdrop)
Message-ID: <20190721210837.GC363@bombadil.infradead.org>
References: <0000000000008dd6bb058e006938@google.com>
 <000000000000964b0d058e1a0483@google.com>
 <20190721044615-mutt-send-email-mst@kernel.org>
 <20190721081933-mutt-send-email-mst@kernel.org>
 <20190721131725.GR14271@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190721131725.GR14271@linux.ibm.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: mhocko@suse.com, "Michael S. Tsirkin" <mst@redhat.com>,
 peterz@infradead.org, jasowang@redhat.com, ldv@altlinux.org,
 james.bottomley@hansenpartnership.com, linux-mm@kvack.org, namit@vmware.com,
 mingo@kernel.org, elena.reshetova@intel.com, aarcange@redhat.com,
 davem@davemloft.net, hch@infradead.org, linux-arm-kernel@lists.infradead.org,
 keescook@chromium.org, syzkaller-bugs@googlegroups.com, jglisse@redhat.com,
 viro@zeniv.linux.org.uk, christian@brauner.io, wad@chromium.org,
 linux-parisc@vger.kernel.org, linux-kernel@vger.kernel.org,
 luto@amacapital.net, ebiederm@xmission.com, akpm@linux-foundation.org,
 guro@fb.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jul 21, 2019 at 06:17:25AM -0700, Paul E. McKenney wrote:
> Also, the overhead is important.  For example, as far as I know,
> current RCU gracefully handles close(open(...)) in a tight userspace
> loop.  But there might be trouble due to tight userspace loops around
> lighter-weight operations.

I thought you believed that RCU was antifragile, in that it would scale
better as it was used more heavily?

Would it make sense to have call_rcu() check to see if there are many
outstanding requests on this CPU and if so process them before returning?
That would ensure that frequent callers usually ended up doing their
own processing.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
