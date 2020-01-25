Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED46149533
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Jan 2020 12:23:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7BUuCntQ97BR11LPVANzFtM0HINy+oFp6W+H9IvZGSU=; b=JrTv7mCNvIL3+6
	xyG9u+BQph7YJMys7jAHDXLJ7k4qXMAscL5ugCjWqVXsE8yyZGOajUKik5iGyWwOxOpWXZDUNjnh1
	Uq60hfgH5qkLKXuUbu1oI79LM8+OIkBaWl4Gvh8y5oYpUbCi3ylNhDhPrQvKa4osPdWfGApU7YL2a
	/4LrHk/WMNzIRbwZjMuGeZt1yfFb45y/qrfhlnN56eULI6zliXVgZHpKqaaF/u6SLGTf01RXzLu7N
	gdIExbf8xtulX4BjAxoPrTbR/GKap+v9LiR9K8AO7OsNIMwxv5Xcx2YPz10LK9WP8fnULjIgaTRwA
	zeJCkssqtLuvP4u0QuTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivJXg-00065L-4t; Sat, 25 Jan 2020 11:23:56 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivJXX-00065F-Jy
 for linux-arm-kernel@bombadil.infradead.org; Sat, 25 Jan 2020 11:23:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PhH/Bei9yqMj6egnkFuJIFtrTs5hg8forCAjWaNH6eQ=; b=lZpV46ccENddjfWybH99y/x/yc
 TzsfYeADsfzrDY5l0QKM6D3J6I9x7tbfdn1c/tHMcTCzoW77CcAcKeIJnm/9R56lJZGLtf8Yt5yDz
 G9+3pDPOD2At24Tb+QeqY7xjCk3+b2fwYSV11OJA9NjYipT2ES/AStvYIjbcNQaohmtSv+JRiy5TO
 sFSBSd3b2qhqIl9wZJjdgh70DmrIP3oDzig+3YOW9b9di1vzjGVw192a9O93hwqROj2KYdIWlpPNv
 NFRbzGsokvvEsopCwu6xmAmlKRy4eTqRIJm62+tUMHhE7c261ZjmYL0as88zVFECz3EJe/o8eeKhL
 ba6hJiyw==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=worktop.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivJXU-00050c-0N; Sat, 25 Jan 2020 11:23:44 +0000
Received: by worktop.programming.kicks-ass.net (Postfix, from userid 1000)
 id 67911980BB0; Sat, 25 Jan 2020 12:23:41 +0100 (CET)
Date: Sat, 25 Jan 2020 12:23:41 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Alex Kogan <alex.kogan@oracle.com>
Subject: Re: [PATCH v7 1/5] locking/qspinlock: Rename mcs lock/unlock macros
 and make them more generic
Message-ID: <20200125112341.GY11457@worktop.programming.kicks-ass.net>
References: <20191125210709.10293-1-alex.kogan@oracle.com>
 <20191125210709.10293-2-alex.kogan@oracle.com>
 <20200122091547.GU14879@hirez.programming.kicks-ass.net>
 <C608A39E-CAFC-4C79-9EB6-3DFD9621E3F6@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <C608A39E-CAFC-4C79-9EB6-3DFD9621E3F6@oracle.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: linux-arch@vger.kernel.org, guohanjun@huawei.com, arnd@arndb.de,
 dave.dice@oracle.com, jglauber@marvell.com, x86@kernel.org,
 Will Deacon <will.deacon@arm.com>, linux@armlinux.org.uk,
 steven.sistare@oracle.com, linux-kernel@vger.kernel.org,
 rahul.x.yadav@oracle.com, mingo@redhat.com, bp@alien8.de, hpa@zytor.com,
 longman@redhat.com, tglx@linutronix.de, daniel.m.jordan@oracle.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBKYW4gMjMsIDIwMjAgYXQgMDY6NTE6MTFQTSAtMDUwMCwgQWxleCBLb2dhbiB3cm90
ZToKPiA+IE9uIEphbiAyMiwgMjAyMCwgYXQgNDoxNSBBTSwgUGV0ZXIgWmlqbHN0cmEgPHBldGVy
ekBpbmZyYWRlYWQub3JnPiB3cm90ZToKCj4gPiBBbHNvLCBwYXNzX2xvY2sgc2VlbXMgdW5mb3J0
dW5hdGVseSBuYW1lZOKApgoKPiBXZWxsLCBJIGtub3cgdGhlIGd1eSB3aG8gc2hvdWxkIGJlIGJs
YW1lZCBmb3IgdGhhdCBvbmUgOikKPiBodHRwczovL2xrbWwub3JnL2xrbWwvMjAxOS83LzE2LzIx
MiA8aHR0cHM6Ly9sa21sLm9yZy9sa21sLzIwMTkvNy8xNi8yMTI+CgpIYSwgeWVzLCB0aGF0IGd1
eSBpcyBhbiBpZGlvdCBzb21ldGltZXMgOy0pCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
