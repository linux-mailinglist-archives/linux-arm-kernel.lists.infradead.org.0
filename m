Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEEF0BC1C7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 08:30:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gGSDppoPcWfOYdoe9bagVRhC/vf3RTp43aiEa5xYbPY=; b=AnXJMcjMbC58ZS
	DFwFbHZPyfvTnX5kCoPwS3Yc2t1KPYEMZJypzNXu0wPgiKX8Qipd6jFH0VcsVNQl8uZIzpymulgJt
	FXDn5vOnD5Md/UsgHYM0dkyldfGWz8CIzQN7CIyHXwihxr2dPOHNVoV3bHryLDgvIjpWELQkXme0r
	a4VZOW3Zgz/90UdBlrEqbSqA1HlwGV14Axg8irqFfV14EVms9NgXZPnyqUR64CgtOzvMjME4T6Khh
	pmGc7ioc0eCHqma5pZ/znJoDkxHB5y74TBmTYcFjD2WxV24iT3l7+P7OcVZ0wVJ63/eWH8khZWHqf
	KI4nzD5JbyxGpXZ03A5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCeLc-00077r-Jz; Tue, 24 Sep 2019 06:30:52 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCeLU-00077B-Sg; Tue, 24 Sep 2019 06:30:46 +0000
Received: from [89.27.154.14] (helo=wittgenstein)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <christian.brauner@ubuntu.com>)
 id 1iCeLN-0008Ni-0B; Tue, 24 Sep 2019 06:30:37 +0000
Date: Tue, 24 Sep 2019 08:30:36 +0200
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Andy Lutomirski <luto@kernel.org>
Subject: Re: [PATCH] seccomp: remove unused arg from secure_computing()
Message-ID: <20190924063035.n3dmryhn6cb52ida@wittgenstein>
References: <20190920131907.6886-1-christian.brauner@ubuntu.com>
 <20190923094916.GB15355@zn.tnic>
 <CALCETrU_fs_At-hTpr231kpaAd0z7xJN4ku-DvzhRU6cvcJA_w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALCETrU_fs_At-hTpr231kpaAd0z7xJN4ku-DvzhRU6cvcJA_w@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_233045_066563_C0D79ED2 
X-CRM114-Status: GOOD (  13.42  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
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
Cc: linux-s390 <linux-s390@vger.kernel.org>, Will Drewry <wad@chromium.org>,
 Kees Cook <keescook@chromium.org>, Parisc List <linux-parisc@vger.kernel.org>,
 X86 ML <x86@kernel.org>, linux-um@lists.infradead.org,
 LKML <linux-kernel@vger.kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 23, 2019 at 11:41:59AM -0700, Andy Lutomirski wrote:
> On Mon, Sep 23, 2019 at 2:49 AM Borislav Petkov <bp@alien8.de> wrote:
> >
> > On Fri, Sep 20, 2019 at 03:19:09PM +0200, Christian Brauner wrote:
> > > While touching seccomp code I realized that the struct seccomp_data
> > > argument to secure_computing() seems to be unused by all current
> > > callers. So let's remove it unless there is some subtlety I missed.
> > > Note, I only tested this on x86.
> >
> > What was amluto thinking in
> >
> > 2f275de5d1ed ("seccomp: Add a seccomp_data parameter secure_computing()")
> 
> IIRC there was a period of time in which x86 used secure_computing()
> for normal syscalls, and it was a good deal faster to have the arch
> code supply seccomp_data.  x86 no longer works like this, and syscalls
> aren't fast anymore ayway :(

I started looking at this and actually had a slightly bigger cleanup in
mind. It seems odd that we have secure_computing() and
__secure_computing(). Especially in the mips and x86 case. From what I
can tell they could both rely on secure_computing() and don't need
__secure_computing().
If I can make those changes, we can make __secure_computing() static and
have only a single function secure_computing() that is used by all
arches which would make this code simpler.
Apparenly mips once switched from secure_computing() to
__secure_computing() because of bpf and tracepoints. The last change to
this was:

commit 3d729deaf287c43e415c5d791c9ac8414dbeff70
Author: James Hogan <jhogan@kernel.org>
Date:   Fri Aug 11 21:56:50 2017 +0100

    MIPS: seccomp: Fix indirect syscall args

which references a broken samples/bpf/tracex5 test. But in the thread to
this last change Kees and others were less than sure that this makes
sense. So I'm not sure. Maybe I should just try and send it out...

Christian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
