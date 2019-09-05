Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D89AAF61
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 01:54:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sGQkTIttyqKIA6EGBKLXVFFJF0R9mxkmlARb2qM/DhM=; b=a0+wkNJmZGqkq/
	pZKRATEPDXmckqnxuUcpGSCHpxWTaPysSbFaKmC0r5doRUkCd1F+ghuf1jtxlsmOkvCwtdIg8mVRw
	QNZkIMINz4kTiX8EYIP3LIMPIwxsodCfuTUBqXh28c7Q8UMvXTjarRkxM+ZGQFdSGDaFPdH68aV/p
	HTjmUOhH+w+irS1YtGi/prbVCO4ib5V6HnWVSckC5Y3qGI2Qk/rNUCLlS/9rlrsYYlivmkSkt2u3l
	WQ830nTxzzhWvk95SIOe+Zd6dgqhOuCoJS5Q4a79pjz1UH8lqHdshBPf4LPBHpWxc9NXQ4d0pmV+F
	DYIve3NVbk6zcC3r21wA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i61a2-0001Uz-70; Thu, 05 Sep 2019 23:54:22 +0000
Received: from zeniv.linux.org.uk ([195.92.253.2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i61Zv-0001Rj-RH
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 23:54:17 +0000
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92.1 #3 (Red Hat
 Linux)) id 1i61VY-0003aC-Me; Thu, 05 Sep 2019 23:49:44 +0000
Date: Fri, 6 Sep 2019 00:49:44 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: Aleksa Sarai <cyphar@cyphar.com>
Subject: Re: [PATCH v12 01/12] lib: introduce copy_struct_{to,from}_user
 helpers
Message-ID: <20190905234944.GT1131@ZenIV.linux.org.uk>
References: <20190904201933.10736-1-cyphar@cyphar.com>
 <20190904201933.10736-2-cyphar@cyphar.com>
 <20190905180750.GQ1131@ZenIV.linux.org.uk>
 <20190905230003.bek7vqdvruzi4ybx@yavin.dot.cyphar.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190905230003.bek7vqdvruzi4ybx@yavin.dot.cyphar.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_165415_888154_DD23FB34 
X-CRM114-Status: GOOD (  15.57  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.92.253.2 listed in list.dnswl.org]
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Alexei Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 David Howells <dhowells@redhat.com>, linux-kselftest@vger.kernel.org,
 sparclinux@vger.kernel.org, Jiri Olsa <jolsa@redhat.com>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Tycho Andersen <tycho@tycho.ws>, Aleksa Sarai <asarai@suse.de>,
 Shuah Khan <shuah@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, linux-arm-kernel@lists.infradead.org,
 linux-mips@vger.kernel.org, linux-xtensa@linux-xtensa.org,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, linuxppc-dev@lists.ozlabs.org,
 linux-m68k@lists.linux-m68k.org, Andy Lutomirski <luto@kernel.org>,
 Shuah Khan <skhan@linuxfoundation.org>, Namhyung Kim <namhyung@kernel.org>,
 David Drysdale <drysdale@google.com>, Christian Brauner <christian@brauner.io>,
 "J. Bruce Fields" <bfields@fieldses.org>, linux-parisc@vger.kernel.org,
 linux-api@vger.kernel.org, Chanho Min <chanho.min@lge.com>,
 Jeff Layton <jlayton@kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 Eric Biederman <ebiederm@xmission.com>, linux-alpha@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 containers@lists.linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 06, 2019 at 09:00:03AM +1000, Aleksa Sarai wrote:
> > > +			return -EFAULT;
> > > +	}
> > > +	/* Copy the interoperable parts of the struct. */
> > > +	if (__copy_to_user(dst, src, size))
> > > +		return -EFAULT;
> > 
> > Why not simply clear_user() and copy_to_user()?
> 
> I'm not sure I understand what you mean -- are you asking why we need to
> do memchr_inv(src + size, 0, rest) earlier?

I'm asking why bother with __ and separate access_ok().

> > 	if ((unsigned long)addr & 1) {
> > 		u8 v;
> > 		if (get_user(v, (__u8 __user *)addr))
> > 			return -EFAULT;
> > 		if (v)
> > 			return -E2BIG;
> > 		addr++;
> > 	}
> > 	if ((unsigned long)addr & 2) {
> > 		u16 v;
> > 		if (get_user(v, (__u16 __user *)addr))
> > 			return -EFAULT;
> > 		if (v)
> > 			return -E2BIG;
> > 		addr +=2;
> > 	}
> > 	if ((unsigned long)addr & 4) {
> > 		u32 v;
> > 		if (get_user(v, (__u32 __user *)addr))
> > 			return -EFAULT;
> > 		if (v)
> > 			return -E2BIG;
> > 	}
> > 	<read the rest like you currently do>

Actually, this is a dumb way to do it - page size on anything
is going to be a multiple of 8, so you could just as well
read 8 bytes from an address aligned down.  Then mask the
bytes you don't want to check out and see if there's anything
left.

You can have readability boundaries inside a page - it's either
the entire page (let alone a single word) being readable, or
it's EFAULT for all parts.

> > would be saner, and things like x86 could trivially add an
> > asm variant - it's not hard.  Incidentally, memchr_inv() is
> > an overkill in this case...
> 
> Why is memchr_inv() overkill?

Look at its implementation; you only care if there are
non-zeroes, you don't give a damn where in the buffer
the first one would be.  All you need is the same logics
as in "from userland" case
	if (!count)
		return true;
	offset = (unsigned long)from & 7
	p = (u64 *)(from - offset);
	v = *p++;
	if (offset) {	// unaligned
		count += offset;
		v &= ~aligned_byte_mask(offset); // see strnlen_user.c
	}
	while (count > 8) {
		if (v)
			return false;
		v = *p++;
		count -= 8;
	}
	if (count != 8)
		v &= aligned_byte_mask(count);
	return v == 0;

All there is to it...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
