Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A43E24FD6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 15:11:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aXPRCTXKgxGdIK4GgqIIyHlYvr6UF7e/e6xg4GCGkmk=; b=EAt59S37AZ0pOT
	x5ouzKnBdI0TlFfaHKkXIv6FKK6snE0Z6hupXI/9CY2vIF6JH8sZSaRaWsULgzKiEbjPvwm4g87+s
	xegx20/wYMRTTDDjasY34Olrzp7zk6RqRnOSNFEMWiJ6d6DbcyDty7ICZ1lTxsyZJF2FOWocIEZ71
	VncM5EjnpSdyQMjtZw5+F983yLOIHaFfJRUcyYBlocFnivwNzadvJ/F5VP7XNX8f7ePVeTi3iszUA
	Ru6fcQbF3euiOmN5st0rWNyg65wOSuHZzt0bZyDYzxteyXZo2wolK/aSlxGeQeiyg4ur01JuYawOq
	nGMPQeYXSqw2M6/R2A2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT4Xk-0008NF-2G; Tue, 21 May 2019 13:11:00 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT4Xd-0008MR-MJ
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 13:10:55 +0000
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id A31313086231;
 Tue, 21 May 2019 13:10:24 +0000 (UTC)
Received: from oldenburg2.str.redhat.com (dhcp-192-219.str.redhat.com
 [10.33.192.219])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 52692665F4;
 Tue, 21 May 2019 13:10:13 +0000 (UTC)
From: Florian Weimer <fweimer@redhat.com>
To: Christian Brauner <christian@brauner.io>
Subject: Re: [PATCH 1/2] open: add close_range()
References: <20190521113448.20654-1-christian@brauner.io>
 <87tvdoau12.fsf@oldenburg2.str.redhat.com>
 <20190521130438.q3u4wvve7p6md6cm@brauner.io>
Date: Tue, 21 May 2019 15:10:11 +0200
In-Reply-To: <20190521130438.q3u4wvve7p6md6cm@brauner.io> (Christian Brauner's
 message of "Tue, 21 May 2019 15:04:39 +0200")
Message-ID: <87h89o9cng.fsf@oldenburg2.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Tue, 21 May 2019 13:10:47 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_061053_745815_2E33DDCA 
X-CRM114-Status: GOOD (  14.85  )
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

* Christian Brauner:

>> Solaris has an fdwalk function:
>> 
>>   <https://docs.oracle.com/cd/E88353_01/html/E37843/closefrom-3c.html>
>> 
>> So a different way to implement this would expose a nextfd system call
>
> Meh. If nextfd() then I would like it to be able to:
> - get the nextfd(fd) >= fd
> - get highest open fd e.g. nextfd(-1)

The highest open descriptor isn't istering for fdwalk because nextfd
would just fail.

> But then I wonder if nextfd() needs to be a syscall and isn't just
> either:
> fcntl(fd, F_GET_NEXT)?
> or
> prctl(PR_GET_NEXT)?

I think the fcntl route is a bit iffy because you might need it to get
the *first* valid descriptor.

>> to userspace, so that we can use that to implement both fdwalk and
>> closefrom.  But maybe fdwalk is just too obscure, given the existence of
>> /proc.
>
> Yeah we probably don't need fdwalk.

Agreed.  Just wanted to bring it up for completeness.  I certainly don't
want to derail the implementation of close_range.

Thanks,
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
