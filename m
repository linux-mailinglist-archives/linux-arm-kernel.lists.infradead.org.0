Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EEFF149528
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Jan 2020 12:19:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GxgWz1oXfz3zd/YL8Ff2oWBt2vC8Q0J47Mo061j24o8=; b=nGF5LjdB4U4Rfq
	j/VjVNithY30Xhxt49T2EaS3EDgWeft55cRcwLS5WgkaI5uJxMbC8i9oO7hrb0qyT4laJ6It5upzU
	E6tU9KGu+TCa1EMbC3voQIJ1qkkIaNvoXUM/VQnR5zp30iHSYk6BHg6T0u/zJFS5b2oZlB87756EN
	26a+AyKwCQRns36PuqOjrxn3wElUA6Id+jAUoYVrtbdNuovMvS0ALM0Ewoj52CFSHEoVefL3CFBDV
	OkfsKPawxXLGO1z7jkLLP35eXqxdOXJVY7wdy87D6We9QbaYvAYdOm/sOz4945dSvfRJfmTPK8fRg
	EjLa1g+pjZcowMvUn4iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivJTm-0003wF-Rb; Sat, 25 Jan 2020 11:19:54 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivJTf-0003w4-LE
 for linux-arm-kernel@bombadil.infradead.org; Sat, 25 Jan 2020 11:19:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OP0jUwmmVf5k5VHaoyszroM7/NftdfADwRXKDwwLdIk=; b=ptV38WIPx+l6Yf6WtjGHgCfGFe
 AgMWOXh+dtKIvzf9sJr2QFX8KIPn567Cren4byAkUNCrELh2bnIGEhnjrzg4/VSpoBhaqJpz0wJdW
 v3WCYrq8Cj34EhWxdi0ImmM+Fxd5B5HQa9YqOZtpfsEwsMO0DtrC2ZmGNSZSEab7GSNSclh4zPLRt
 Mq/0W4rMTgG2ErY6PRFSi97BOwYqRryRjFWkt/r3EHJfqfHW/tRHlXM4uHxdB9NB+YDM/K1A5jThf
 3GZY6UrKeKkFaEVrSzVzYPsqKPd0dKhxiReYfqGxATtZYQXzMJJwE86yhsNd/oWDiEhTTKjOX4PFU
 Wmw+TCmA==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=worktop.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivJTS-0004yl-Ip; Sat, 25 Jan 2020 11:19:34 +0000
Received: by worktop.programming.kicks-ass.net (Postfix, from userid 1000)
 id C885F980BB0; Sat, 25 Jan 2020 12:19:31 +0100 (CET)
Date: Sat, 25 Jan 2020 12:19:31 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Alex Kogan <alex.kogan@oracle.com>
Subject: Re: [PATCH v8 4/5] locking/qspinlock: Introduce starvation avoidance
 into CNA
Message-ID: <20200125111931.GW11457@worktop.programming.kicks-ass.net>
References: <20191230194042.67789-5-alex.kogan@oracle.com>
 <20200121132949.GL14914@hirez.programming.kicks-ass.net>
 <cfdf635d-be2e-9d4b-c4ca-6bcbddc6868f@redhat.com>
 <3862F8A1-FF9B-40AD-A88E-2C0BA7AF6F58@oracle.com>
 <20200124075235.GX14914@hirez.programming.kicks-ass.net>
 <2c6741c5-d89d-4b2c-cebe-a7c7f6eed884@redhat.com>
 <48ce49e5-98a7-23cd-09f4-8290a65abbb5@redhat.com>
 <8D3AFB47-B595-418C-9568-08780DDC58FF@oracle.com>
 <714892cd-d96f-4d41-ae8b-d7b7642a6e3c@redhat.com>
 <1669BFDE-A1A5-4ED8-B586-035460BBF68A@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1669BFDE-A1A5-4ED8-B586-035460BBF68A@oracle.com>
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
Cc: linux-arch@vger.kernel.org, Hanjun Guo <guohanjun@huawei.com>,
 Arnd Bergmann <arnd@arndb.de>, dave.dice@oracle.com,
 Jan Glauber <jglauber@marvell.com>, x86@kernel.org,
 Will Deacon <will.deacon@arm.com>, linux@armlinux.org.uk,
 Steven Sistare <steven.sistare@oracle.com>, linux-kernel@vger.kernel.org,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, hpa@zytor.com,
 Waiman Long <longman@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Daniel Jordan <daniel.m.jordan@oracle.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBKYW4gMjQsIDIwMjAgYXQgMDE6MTk6MDVQTSAtMDUwMCwgQWxleCBLb2dhbiB3cm90
ZToKCj4gSXMgdGhlcmUgYSBsaWdodHdlaWdodCB3YXkgdG8gaWRlbnRpZnkgc3VjaCBhIOKAnHBy
aW9yaXRpemVk4oCdIHRocmVhZD8KCk5vOyBwZW9wbGUgbWlnaHQgZm9yIGluc3RhbmNlIGNhcmUg
YWJvdXQgdGFpbCBsYXRlbmNpZXMgYmV0d2VlbiB0aGVpcgppZGVudGljYWxseSBzcGVjJ2VkIHdv
cmtlciB0YXNrcy4KCkluIGdlbmVyYWwgaXQgdHVybnMgb3V0IHRoYXQgcHJpb3JpdHkgaXMgYSBk
eW5hbWljIGNvbmNlcHQsIG5vdCBhIHN0YXRpYwpvbmUuCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
