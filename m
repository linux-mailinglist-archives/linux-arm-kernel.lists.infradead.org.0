Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 785AC1556AA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 12:27:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ok9XaqnQVHdr2aoF+NFNBlm6BSDJpLhGBNoLxgd/q0U=; b=ptPkxRMIY/yLKj
	C9SFy85y0aSqLYHWqYgaU0tQsBvs5tBZ6rXIeCEaw+RaDiufYz1vsrG1ymqUN12qAb+O9AAt7LQdh
	NGF1UwJlfL8VwEZcKzyXhATOzWRWwwgJRx8TZjrQnvV4oETRil+yKh3j5Lqw904oOjJTMIicNjiZj
	cG0/7dIDmDj1r6c/0vgzBZeSaavV3FbgiF8qYhiEc8w8r0j2ByLuZFclPKNOtWy0LzUxYlI/ek2mV
	GoQ/rnfgblp2u6rq04Hd3E3udGDpiJkHNFSjt1d/r/QFsokMnppbLRDCxuHRc7RRq9KE8oETw1/RW
	3zyZH6e4NwitasCxwlHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j01nK-0006JB-JK; Fri, 07 Feb 2020 11:27:34 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j01nE-0006Iz-Cs
 for linux-arm-kernel@bombadil.infradead.org; Fri, 07 Feb 2020 11:27:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=x1VnWLZd/ipfmC11QBc/PnLMdism1SxK3sdpzs5jQ+A=; b=EcLtczvFv2RmHlp3a5ImArwhAD
 pN0JdKwHen2jMwv7Io6UFiAwwvjle6kowP+mCMj6Ppq4LzvkPtTcqkZdf96KfO/RraQ6b/pc0DK3S
 Gc3G1J267WTyqGoFifChMxPzLBvLpXXe5k6L3GsPQo+aFHtpHkE5MgoGBCmDiojLD59T93Ul8Jnp6
 3e7k/1Plax/0nzyQVvj0i4XFR2NGFNvLDePaPgvXiBHe+0I1VkZwmOKoO2FhH4FHfBTCEXGon3fIH
 R21IpYLYa8Rnk72iPQWv3FouYHP+D2jU/MO6Mxte9+qgK3eUCvOnizgisNOgjBAWAOV4t9v1R3Hd4
 NoTiJldQ==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j01n9-00073o-Dr; Fri, 07 Feb 2020 11:27:23 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id C8D543011E8;
 Fri,  7 Feb 2020 12:25:33 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id A3B422B836D8C; Fri,  7 Feb 2020 12:27:20 +0100 (CET)
Date: Fri, 7 Feb 2020 12:27:20 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [tip: core/kprobes] arm/ftrace: Use __patch_text()
Message-ID: <20200207112720.GF14914@hirez.programming.kicks-ass.net>
References: <20191113092636.GG4131@hirez.programming.kicks-ass.net>
 <157544841563.21853.2859696202562513480.tip-bot2@tip-bot2>
 <10cbfd9e-2f1f-0a0c-0160-afe6c2ccbebd@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <10cbfd9e-2f1f-0a0c-0160-afe6c2ccbebd@gmail.com>
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
Cc: Mark Rutland <mark.rutland@arm.com>, x86 <x86@kernel.org>,
 Denys Vlasenko <dvlasenk@redhat.com>, linux-tip-commits@vger.kernel.org,
 Brian Gerst <brgerst@gmail.com>, ard.biesheuvel@linaro.org,
 linux-kernel@vger.kernel.org,
 tip-bot2 for Peter Zijlstra <tip-bot2@linutronix.de>,
 Jon Hunter <jonathanh@nvidia.com>, rabin@rab.in,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Thierry Reding <thierry.reding@gmail.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 james.morse@arm.com, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBKYW4gMjMsIDIwMjAgYXQgMTI6MjY6NDZBTSArMDMwMCwgRG1pdHJ5IE9zaXBlbmtv
IHdyb3RlOgo+IDA0LjEyLjIwMTkgMTE6MzMsIHRpcC1ib3QyIGZvciBQZXRlciBaaWpsc3RyYSDQ
v9C40YjQtdGCOgo+ID4gQEAgLTk3LDEwICs5NCw3IEBAIHN0YXRpYyBpbnQgZnRyYWNlX21vZGlm
eV9jb2RlKHVuc2lnbmVkIGxvbmcgcGMsIHVuc2lnbmVkIGxvbmcgb2xkLAo+ID4gIAkJCXJldHVy
biAtRUlOVkFMOwo+ID4gIAl9Cj4gPiAgCj4gPiAtCWlmIChwcm9iZV9rZXJuZWxfd3JpdGUoKHZv
aWQgKilwYywgJm5ldywgTUNPVU5UX0lOU05fU0laRSkpCj4gPiAtCQlyZXR1cm4gLUVQRVJNOwo+
ID4gLQo+ID4gLQlmbHVzaF9pY2FjaGVfcmFuZ2UocGMsIHBjICsgTUNPVU5UX0lOU05fU0laRSk7
Cj4gPiArCV9fcGF0Y2hfdGV4dCgodm9pZCAqKXBjLCBuZXcpOwo+ID4gIAo+ID4gIAlyZXR1cm4g
MDsKPiA+ICB9Cj4gPiAKPiAKPiBIZWxsbywKPiAKPiBOVklESUEgVGVncmEyMC8zMCBhcmUgbm90
IGJvb3Rpbmcgd2l0aCBDT05GSUdfRlRSQUNFPXksIGJ1dCBldmVuIHdpdGgKPiBDT05GSUdfRlRS
QUNFPW4gdGhpbmdzIGFyZSBub3Qgd29ya2luZyB3ZWxsLgoKT29oLCBJIHRoaW5rIEkgc2VlLiBD
YW4geW91IHRyeSB0aGlzOgoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2tlcm5lbC9mdHJhY2UuYyBi
L2FyY2gvYXJtL2tlcm5lbC9mdHJhY2UuYwppbmRleCAyYTVmZjY5YzI4ZTYuLjEwNDk5ZDQ0OTY0
YSAxMDA2NDQKLS0tIGEvYXJjaC9hcm0va2VybmVsL2Z0cmFjZS5jCisrKyBiL2FyY2gvYXJtL2tl
cm5lbC9mdHJhY2UuYwpAQCAtNzgsMTMgKzc4LDEwIEBAIHN0YXRpYyBpbnQgZnRyYWNlX21vZGlm
eV9jb2RlKHVuc2lnbmVkIGxvbmcgcGMsIHVuc2lnbmVkIGxvbmcgb2xkLAogewogCXVuc2lnbmVk
IGxvbmcgcmVwbGFjZWQ7CiAKLQlpZiAoSVNfRU5BQkxFRChDT05GSUdfVEhVTUIyX0tFUk5FTCkp
IHsKKwlpZiAoSVNfRU5BQkxFRChDT05GSUdfVEhVTUIyX0tFUk5FTCkpCiAJCW9sZCA9IF9fb3Bj
b2RlX3RvX21lbV90aHVtYjMyKG9sZCk7Ci0JCW5ldyA9IF9fb3Bjb2RlX3RvX21lbV90aHVtYjMy
KG5ldyk7Ci0JfSBlbHNlIHsKKwllbHNlCiAJCW9sZCA9IF9fb3Bjb2RlX3RvX21lbV9hcm0ob2xk
KTsKLQkJbmV3ID0gX19vcGNvZGVfdG9fbWVtX2FybShuZXcpOwotCX0KIAogCWlmICh2YWxpZGF0
ZSkgewogCQlpZiAocHJvYmVfa2VybmVsX3JlYWQoJnJlcGxhY2VkLCAodm9pZCAqKXBjLCBNQ09V
TlRfSU5TTl9TSVpFKSkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
