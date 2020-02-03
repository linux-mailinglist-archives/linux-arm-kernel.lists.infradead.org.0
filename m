Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C4C41507A5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 14:46:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yzaAmi+hmUv0fvUWekfjAQ0Pd4Fp+Yf9oTrW3CsnTN8=; b=o7FbIcQ0GDWfQ8
	eqTpy4De3zaqlj+ngtf0iLal2eKXvomIaI/te8JwXy6I/EksssnYknJmWakKQtWBECb9lrGOeIbqi
	bp0xYf0faxzskAUnX5VIJbomwWJA1Xfd/GcFBKclJ7qeL4bVsryWpFamRw9N4P2kEM+ZhzWZmfiDZ
	T3pxyNsAmz/EkTrDEdvouZ0wj9BPfpw/zUHc5MOwqVEwwSox3s2xhpKUhwJbB3w+PCYP+1upkPNJh
	tSP23bNkrYHq69uL52rwxN+Hx8jX2F6m3vJvvCSB2cPj8TLxLFy4tVrThBXv4qdyJsZKbjymvVlQu
	afZH3khUl7xUQunPRcaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyc30-0001LN-71; Mon, 03 Feb 2020 13:45:54 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyc2v-0001LC-DJ
 for linux-arm-kernel@bombadil.infradead.org; Mon, 03 Feb 2020 13:45:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=ydJSIlzM2hfUd3hl9T8tzcAmF2kYDsfmAnSpEAfBJFE=; b=Ifgv49xEstpI6IK+7zuM3iAvmJ
 jr82lguHcDCP1cXc5T81M5VxnAYuFDas9953pxIHOCtEMmJ43fiGkeyF5+hY1TOStG3WChXAhdu6M
 4bVDMfZkJo3oib3cWXIwf99ZG4eOFvzz9UTYlQB+6ZmTi7lOUJYvzrW3Gewcz/1GI3YuwmF/1zfCB
 WDbZYc43ExER/r5rjtWqf6hxqhSyOu3QU/xD6Zhgcc8P8SgPg7BA7VOhYR4+tk0xtGx2ypu41t1Id
 ht8N7MaR+waqTk32jUpD1OYtU/VURox040tiS7juhC4s045+nmg4kGNNZWIvu7JPUlqWEKGTC0QWo
 c3w0IGbw==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyc2p-0004pA-2r; Mon, 03 Feb 2020 13:45:43 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 53105305803;
 Mon,  3 Feb 2020 14:43:55 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 5F4B82B63D250; Mon,  3 Feb 2020 14:45:40 +0100 (CET)
Date: Mon, 3 Feb 2020 14:45:40 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Alex Kogan <alex.kogan@oracle.com>
Subject: Re: [PATCH v8 4/5] locking/qspinlock: Introduce starvation avoidance
 into CNA
Message-ID: <20200203134540.GA14879@hirez.programming.kicks-ass.net>
References: <cfdf635d-be2e-9d4b-c4ca-6bcbddc6868f@redhat.com>
 <3862F8A1-FF9B-40AD-A88E-2C0BA7AF6F58@oracle.com>
 <20200124075235.GX14914@hirez.programming.kicks-ass.net>
 <2c6741c5-d89d-4b2c-cebe-a7c7f6eed884@redhat.com>
 <48ce49e5-98a7-23cd-09f4-8290a65abbb5@redhat.com>
 <8D3AFB47-B595-418C-9568-08780DDC58FF@oracle.com>
 <714892cd-d96f-4d41-ae8b-d7b7642a6e3c@redhat.com>
 <1669BFDE-A1A5-4ED8-B586-035460BBF68A@oracle.com>
 <20200125111931.GW11457@worktop.programming.kicks-ass.net>
 <F32558D8-4ACB-483A-AB4C-F565003A02E7@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <F32558D8-4ACB-483A-AB4C-F565003A02E7@oracle.com>
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

T24gVGh1LCBKYW4gMzAsIDIwMjAgYXQgMDU6MDU6MjhQTSAtMDUwMCwgQWxleCBLb2dhbiB3cm90
ZToKPiAKPiA+IE9uIEphbiAyNSwgMjAyMCwgYXQgNjoxOSBBTSwgUGV0ZXIgWmlqbHN0cmEgPHBl
dGVyekBpbmZyYWRlYWQub3JnPiB3cm90ZToKPiA+IAo+ID4gT24gRnJpLCBKYW4gMjQsIDIwMjAg
YXQgMDE6MTk6MDVQTSAtMDUwMCwgQWxleCBLb2dhbiB3cm90ZToKPiA+IAo+ID4+IElzIHRoZXJl
IGEgbGlnaHR3ZWlnaHQgd2F5IHRvIGlkZW50aWZ5IHN1Y2ggYSDigJxwcmlvcml0aXplZOKAnSB0
aHJlYWQ/Cj4gPiAKPiA+IE5vOyBwZW9wbGUgbWlnaHQgZm9yIGluc3RhbmNlIGNhcmUgYWJvdXQg
dGFpbCBsYXRlbmNpZXMgYmV0d2VlbiB0aGVpcgo+ID4gaWRlbnRpY2FsbHkgc3BlYydlZCB3b3Jr
ZXIgdGFza3MuCj4gCj4gSSB3b3VsZCBhcmd1ZSB0aGF0IHRob3NlIHVzZXJzIG5lZWQgdG8gdHVu
ZS9yZWR1Y2UgdGhlIGludHJhLW5vZGUgaGFuZG9mZgo+IHRocmVzaG9sZCBmb3IgdGhlaXIgbmVl
ZHMuIE9yIGRpc2FibGUgQ05BIGFsdG9nZXRoZXIuCgpJIHJlYWxseSBkb24ndCBsaWtlIGJvb3Qg
dGltZSBhcmd1bWVudHMgKG9yIHR1bmFibGVzIGluIGdlbmVyaWMpIGZvciBhCm1hY2hpbmUgdG8g
d29yayBhcyBpdCBzaG91bGQuCgpUaGUgZGVmYXVsdCByZWFsbHkgc2hvdWxkICdqdXN0IHdvcmsn
LgoKPiBJbiBnZW5lcmFsLCBQZXRlciwgc2VlbXMgbGlrZSB5b3UgYXJlIG5vdCBvbiBib2FyZCB3
aXRoIHRoZSB3YXkgTG9uZ21hbgo+IHN1Z2dlc3RlZCB0byBoYW5kbGUgcHJpb3JpdGl6ZWQgdGhy
ZWFkcy4gQW0gSSByaWdodD8KClJpZ2h0LgoKUHJlc3VtYWJseSB5b3UgaGF2ZSBhIHdvcmtsb2Fk
IHdoZXJlIENOQSBpcyBhY3R1YWxseSBhIHdpbj8gVGhhdCBpcywKd2hhdCBpbnNwaXJlZCB5b3Ug
dG8gZ28gZG93biB0aGlzIHJvYWQ/IFdoaWNoIGFjdHVhbCBrZXJuZWwgbG9jayBpcyBzbwpjb250
ZW5kZWQgb24gTlVNQSBtYWNoaW5lcyB0aGF0IHdlIG5lZWQgdG8gZG8gdGhpcz8KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
