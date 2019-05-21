Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A2125015
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 15:23:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4+esLSpuKkxOIiH+qi8nzG7kY8oOp99vcD5HHc7LBSc=; b=u+NZqYZG6ARtCX
	xZ8KH0+ZI7xWmxPyTthBVwIRq1HOgqV54y3tMIctpo5J0aDmR89L8Gpc12UZN5+m5s4qgCAPig3fA
	8OT0JgmXWyAv2ci67I3GZWQ3JSn+9r6z+MlfKxmmdnZ1BegvIUxI6fgF7pDWcZO5pKNB+pAtuttMG
	38szuOzTHiuKdzqZv37C1VY66xSQzIJDvZL0iXG/ZpdboZTAovyVyhK9jaU7XfriPEZICaTLnZ44W
	AHxdHFnThX7Kypr+OugaLcKblfM0d4tW5pmsardoJBkMycd0R53U5XhkAnuVIWfs98UZboZSKB851
	sNrPwqqekRmSymjTTfCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT4jw-0004Df-9L; Tue, 21 May 2019 13:23:36 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT4jn-0004Cn-QW
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 13:23:29 +0000
Received: by mail-wr1-x441.google.com with SMTP id s17so18625520wru.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 06:23:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=brauner.io; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=zPeZPlO76ltnQqvYGINFToUvBJmXqM645QmEt4Hw6Rc=;
 b=BUu5zjdtN4tz3uDq/7UpOx4K4hUQVJBWS+eEuFLdpi6Rmwdp0HavCUwLV8syhoRhBs
 uutuEJthT54zEPxESFMYXggKMqpF+e9kjCS2KXB6a8V8DjwFSU/ukGJ+bjlCRLwN7Itn
 NioFIdnrRyEyEXF9J8PaDiZ1BKte4njCTV4UqMcQIxHCp36wZKBXLuGaTuzR077IIyGB
 sh/VNZyNC9dytmpNSG0A/cuTGl76M/BtkEN2Bj2PP9spj3uzju6GRwQbZsYefL3l1zFQ
 DUpnJfPzQ1HZROA8RvSmOKB1jZ+QySIxvLrPIvBwJ5t1t+aSsSSgiGJe52BZXhX2b2t5
 /pjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zPeZPlO76ltnQqvYGINFToUvBJmXqM645QmEt4Hw6Rc=;
 b=cEmsLHVAWIYdalyMyNDraLVQDYBrQgYVLBkGbu5nxlUQu7A52jyamEL9VuDTIUHReM
 TkfejVzssupwucV5+bgnqEcNefIxtKeumAUZs8P0OJjTurjYMskH+dmlvBSqn/iLSUfw
 HuLMxMrzckJ4eak97LUv3PnXQPkh27n/SjHw76cLBVptefzof9Rt7DAt3dJlQWgUVf3T
 aAWmxd/gYYqrPLj9ODgx5WA9yvMsKINKsQg1jbLsY3AxP5avTdWZgVW7Np8X03V+fgPN
 ywSCaOO9y3SlvbhrjIV6HHoe8VUj2TyIw9o5ppMfArF9COeVn0CmzPrS42ZRFacz0+dR
 lt4w==
X-Gm-Message-State: APjAAAV1v7/92Xcy5yATXzowlx4pYWEC4xE/lzOakSM3kbqzlbafW58R
 UfOF0FwwjchVkg9NM21vZVCx3A==
X-Google-Smtp-Source: APXvYqx9Vd+T8JFd9e9hzlyFLebVljF2D14aArNe6wO+D4nzJaWpMCXvLevCthzGrMSyj5JSdNW7NA==
X-Received: by 2002:adf:e344:: with SMTP id n4mr26865746wrj.192.1558445005993; 
 Tue, 21 May 2019 06:23:25 -0700 (PDT)
Received: from brauner.io (p548C9938.dip0.t-ipconnect.de. [84.140.153.56])
 by smtp.gmail.com with ESMTPSA id a15sm5483898wrw.49.2019.05.21.06.23.23
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 21 May 2019 06:23:24 -0700 (PDT)
Date: Tue, 21 May 2019 15:23:23 +0200
From: Christian Brauner <christian@brauner.io>
To: Florian Weimer <fweimer@redhat.com>
Subject: Re: [PATCH 1/2] open: add close_range()
Message-ID: <20190521132252.y5wt7d7o4bdjns4e@brauner.io>
References: <20190521113448.20654-1-christian@brauner.io>
 <87tvdoau12.fsf@oldenburg2.str.redhat.com>
 <20190521130438.q3u4wvve7p6md6cm@brauner.io>
 <87h89o9cng.fsf@oldenburg2.str.redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87h89o9cng.fsf@oldenburg2.str.redhat.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_062328_037899_2A950F03 
X-CRM114-Status: GOOD (  16.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 linux-kernel@vger.kernel.org, dhowells@redhat.com,
 linux-kselftest@vger.kernel.org, sparclinux@vger.kernel.org, shuah@kernel.org,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org, miklos@szeredi.hu,
 x86@kernel.org, torvalds@linux-foundation.org, linux-mips@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, tkjos@android.com, arnd@arndb.de,
 jannh@google.com, linux-m68k@lists.linux-m68k.org, viro@zeniv.linux.org.uk,
 tglx@linutronix.de, ldv@altlinux.org, linux-arm-kernel@lists.infradead.org,
 linux-parisc@vger.kernel.org, linux-api@vger.kernel.org, oleg@redhat.com,
 linux-alpha@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 21, 2019 at 03:10:11PM +0200, Florian Weimer wrote:
> * Christian Brauner:
> 
> >> Solaris has an fdwalk function:
> >> 
> >>   <https://docs.oracle.com/cd/E88353_01/html/E37843/closefrom-3c.html>
> >> 
> >> So a different way to implement this would expose a nextfd system call
> >
> > Meh. If nextfd() then I would like it to be able to:
> > - get the nextfd(fd) >= fd
> > - get highest open fd e.g. nextfd(-1)
> 
> The highest open descriptor isn't istering for fdwalk because nextfd
> would just fail.

Sure. I was thinking about other usecases. For example, sometimes in
userspace you want to do the following:
save_fd = dup(fd, <well-known-number-at-the-end-of-the-range);
close_range(3, (save_fd - 1));

Which brings me to another point. So even if we don't do close_range() I
would like libc to maybe give us something like close_range() for such
scenarios.

> 
> > But then I wonder if nextfd() needs to be a syscall and isn't just
> > either:
> > fcntl(fd, F_GET_NEXT)?
> > or
> > prctl(PR_GET_NEXT)?
> 
> I think the fcntl route is a bit iffy because you might need it to get
> the *first* valid descriptor.
> 
> >> to userspace, so that we can use that to implement both fdwalk and
> >> closefrom.  But maybe fdwalk is just too obscure, given the existence of
> >> /proc.
> >
> > Yeah we probably don't need fdwalk.
> 
> Agreed.  Just wanted to bring it up for completeness.  I certainly don't
> want to derail the implementation of close_range.
> 
> Thanks,
> Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
