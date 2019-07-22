Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B5567049A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 17:52:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JdvVdSOzH4zKxlANNKfR9Huga3Ygw27VsJ5sCURPgZs=; b=h16bTS9S3Bv8Os
	0oDcc1sVetId9aJV2a5O78bQCfV4FWCLys8PtTmsnJ09NDbI3pZ3N2XZPNTqyW0R8+LHa25fqS5AU
	lbMBs/O5KfbRySdCP0lHiT9T4SjS3R8zpkMZVfFv3c2eekxdluRFR1d2A0umcfjqWHTMsbFvX1KcM
	4r11XyG8b1J0zt9Y2s9jSvtfTy8FCCFf9/v4iuOGp0jhWstH36dzevA/QqshhVp6bcMizO45sUMBr
	SvAUfFnISV6vyO+XE4kLz7FUjBs+qrBFVweT0RBTSOn7uv+gl9lyYrq33esCnv9lV4I5TO+UVCt5y
	4ySkHCDnz1XQV1l8WXvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpac9-00025u-LS; Mon, 22 Jul 2019 15:52:37 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpaXI-0006JO-UH
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 15:47:38 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 0CE75C058CBD;
 Mon, 22 Jul 2019 15:47:35 +0000 (UTC)
Received: from redhat.com (ovpn-124-54.rdu2.redhat.com [10.10.124.54])
 by smtp.corp.redhat.com (Postfix) with SMTP id C428460603;
 Mon, 22 Jul 2019 15:47:25 +0000 (UTC)
Date: Mon, 22 Jul 2019 11:47:24 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Joel Fernandes <joel@joelfernandes.org>
Subject: Re: RFC: call_rcu_outstanding (was Re: WARNING in __mmdrop)
Message-ID: <20190722114612-mutt-send-email-mst@kernel.org>
References: <0000000000008dd6bb058e006938@google.com>
 <000000000000964b0d058e1a0483@google.com>
 <20190721044615-mutt-send-email-mst@kernel.org>
 <20190721081933-mutt-send-email-mst@kernel.org>
 <20190721131725.GR14271@linux.ibm.com>
 <20190721210837.GC363@bombadil.infradead.org>
 <20190721233113.GV14271@linux.ibm.com>
 <20190722151439.GA247639@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190722151439.GA247639@google.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Mon, 22 Jul 2019 15:47:35 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_084737_045159_B8C8D0BF 
X-CRM114-Status: GOOD (  14.06  )
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
 namit@vmware.com, "Paul E. McKenney" <paulmck@linux.ibm.com>, mingo@kernel.org,
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

On Mon, Jul 22, 2019 at 11:14:39AM -0400, Joel Fernandes wrote:
> [snip]
> > > Would it make sense to have call_rcu() check to see if there are many
> > > outstanding requests on this CPU and if so process them before returning?
> > > That would ensure that frequent callers usually ended up doing their
> > > own processing.
> 
> Other than what Paul already mentioned about deadlocks, I am not sure if this
> would even work for all cases since call_rcu() has to wait for a grace
> period.
> 
> So, if the number of outstanding requests are higher than a certain amount,
> then you *still* have to wait for some RCU configurations for the grace
> period duration and cannot just execute the callback in-line. Did I miss
> something?
> 
> Can waiting in-line for a grace period duration be tolerated in the vhost case?
> 
> thanks,
> 
>  - Joel

No, but it has many other ways to recover (try again later, drop a
packet, use a slower copy to/from user).

-- 
MST

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
