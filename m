Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30E436EE05
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jul 2019 08:23:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oYGSibpbDPRMZHc5VtynaMF6jGmTc4b1LBlZDY+Tzkc=; b=qvGEsXqP0v4yEC
	nsxHIayAp188ocKPx7qEGfsfGw03DconU4yhdDpi34XuZWCL66yX4fn7dQjBbfNObFjYsffR7raSM
	78q7tZ1q6EbS9mRcfxietpQXC7f2YXwFyJny0g17iwcTNYaN42V8SzLX1di6r8YTflOICzO0kEb21
	XsuvCZCB9BDSVxAJJu259w76gtNd2edBtfrrVV8ccmQNY013f+O+/DcV1G+Jyz9dhP6TdBKC74UHJ
	rHNaadNeaXriEDw8SsEIV6o+gD/YMJQCAXnGyhRL4/3Xi20YSsfDj5SzGtzbAU81BnEoJgJ0PD44e
	WCX4eh0SSXV5azt8SaHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoilk-0003Cv-TI; Sat, 20 Jul 2019 06:22:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoilW-0003CY-Cp
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jul 2019 06:22:44 +0000
Received: from devnote2 (72.65.214.202.bf.2iij.net [202.214.65.72])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D23292184E;
 Sat, 20 Jul 2019 06:22:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563603761;
 bh=b3cKzrZLR6K6aoHcqxAfp/ErNMJGou6k3PvgWjOJwtg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=y+Po5yv00sQT614D6utHJsXmh0hTqAIXg6TtC1Dz4jbVIEBx+xLGZsDe4c3kfYYZ8
 9ORq164MIeUlDEdwiHhwjZthUkrqwcqHOJi59iDoNcdrvH6TkI5ylpV+9sORDE/UxS
 IaB3fOi26dkcdHxrOGUvqL945JTTbzQEsJttPC0A=
Date: Sat, 20 Jul 2019 15:22:36 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH 1/3] arm64: kprobes: Recover pstate.D in single-step
 exception handler
Message-Id: <20190720152236.0ab1ade88176ba7c27306743@kernel.org>
In-Reply-To: <3a198660-35cc-0c65-6a6d-e30d2494ff21@arm.com>
References: <156342860634.8565.14804606041960884732.stgit@devnote2>
 <156342861775.8565.9122725195458920037.stgit@devnote2>
 <3a198660-35cc-0c65-6a6d-e30d2494ff21@arm.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_232242_472166_B399A35C 
X-CRM114-Status: GOOD (  33.61  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Dan Rue <dan.rue@linaro.org>, Daniel Diaz <daniel.diaz@linaro.org>,
 Anders Roxell <anders.roxell@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Naresh Kamboju <naresh.kamboju@linaro.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Matt Hart <matthew.hart@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAxOSBKdWwgMjAxOSAxMTowNzozMyArMDEwMApKYW1lcyBNb3JzZSA8amFtZXMubW9y
c2VAYXJtLmNvbT4gd3JvdGU6Cgo+IEhpIQo+IAo+IE9uIDE4LzA3LzIwMTkgMDY6NDMsIE1hc2Ft
aSBIaXJhbWF0c3Ugd3JvdGU6Cj4gPiBPbiBhcm02NCwgaWYgYSBuZXN0ZWQga3Byb2JlcyBoaXQs
IGl0IGNhbiBjcmFzaCB0aGUga2VybmVsIHdpdGggYmVsb3cKPiA+IGVycm9yIG1lc3NhZ2UuCj4g
PiAKPiA+IFsgIDE1Mi4xMTg5MjFdIFVuZXhwZWN0ZWQga2VybmVsIHNpbmdsZS1zdGVwIGV4Y2Vw
dGlvbiBhdCBFTDEKPiA+IAo+ID4gVGhpcyBpcyBiZWNhdXNlIGNvbW1pdCA3NDE5MzMzZmExNWUg
KCJhcm02NDoga3Byb2JlOiBBbHdheXMgY2xlYXIKPiA+IHBzdGF0ZS5EIGluIGJyZWFrcG9pbnQg
ZXhjZXB0aW9uIGhhbmRsZXIiKSBjbGVhcnMgcHN0YXRlLkQgYWx3YXlzIGluCj4gPiB0aGUgbmVz
dGVkIGtwcm9iZXMuIFRoYXQgaXMgY29ycmVjdCAqdW5sZXNzKiBhbnkgbmVzdGVkIGtwcm9iZXMK
PiA+IChzaW5nbGUtc3RlcHBpbmcpIHJ1bnMgaW5zaWRlIG90aGVyIGtwcm9iZXMgKGluY2x1ZGlu
ZyBrcHJvYmVzIGluCj4gPiAgdXNlciBoYW5kbGVyKS4KPiAKPiBrcHJvYmVzIHByb2Jpbmcga3By
b2JlcyE/IC4uLiB3aHkgZG8gd2Ugc3VwcG9ydCB0aGlzPwoKVGhhdCBpcyBOT1QgInN1cHBvcnRl
ZCIsIHRoaXMgaXMganVzdCBmb3IgYXZvaWRpbmcga2VybmVsIGNyYXNoIGFzIG11Y2gKYXMgcG9z
c2libGUuCgpUaGUgbmVzdGVkIGtwcm9iZSBjYW4gdW5leHBlY3RlZGx5IGhhcHBlbiwgdXN1YWxs
eSBpbiBrcHJvYmUgdXNlciBoYW5kbGVycy4KQWxzbywgdGhlIGNyaXRpY2FsIGZ1bmN0aW9ucyBv
dXRzaWRlIG9mIGtwcm9iZSB1c2VyIGhhbmRsZXIsIGFyZSBibGFja2xpc3RlZAooZS5nLiBbUEFU
Q0ggMi8zXSkuCgo+IFdlIHRyZWF0ICdkZWJ1ZycgYXMgb3VyIGhpZ2hlc3QgZXhjZXB0aW9uIGxl
dmVsLCBpdCBjYW4gaW50ZXJydXB0IHBOTUkgYW5kIFJBUy1lcnJvcnMuCj4gTGV0dGluZyBpdCBs
b29wIGRvZXNuJ3Qgc291bmQgbGlrZSBhIGdvb2QgaWRlYS4KCkFncmVlZC4gdGhhdCBtdXN0IGJl
IGF2b2lkZWQuCgo+ID4gV2hlbiB0aGUgMXN0IGtwcm9iZSBoaXRzLCBkb19kZWJ1Z19leGNlcHRp
b24oKSB3aWxsIGJlIGNhbGxlZC4gQXQgdGhpcwo+ID4gcG9pbnQsIGRlYnVnIGV4Y2VwdGlvbiAo
PSBwc3RhdGUuRCkgbXVzdCBiZSBtYXNrZWQgKD0xKS4KPiAKPiA+IFdoZW4gdGhlIDJuZCAobmVz
dGVkKSBrcHJvYmUgaXMgaGl0IGJlZm9yZSBzaW5nbGUtc3RlcCBvZiB0aGUgZmlyc3Qga3Byb2Jl
LAo+IAo+IEhvdyBkb2VzIHRoaXMgaGFwcGVuPwoKQXMgeW91IG1heSBrbm93LCBrcHJvYmVzIHBy
b3ZpZGVzIGEgaGFuZGxlciBpbnRlcmZhY2UgdG8gdXNlci4gVXNlciBtdXN0CmNhcmVmdWxseSBw
cm9ncmFtIHRoZSBoYW5kbGVyIHdoaWNoIGRvZXNuJ3QgY2F1c2UgdGhpcyByZWN1cnNpb24sIGJ1
dAppZiBoZSBmYWlsZWQsIGhlIGNhbiBwdXQgYW5vdGhlciBwcm9iZSBvbiB0aGUgZnVuY3Rpb24g
d2hpY2ggaXMgY2FsbGVkCihpbmRpcmVjdGx5KSBmcm9tIHRoZSB1c2VyIGhhbmRsZXIuCgo+IEkg
Z3Vlc3MgdGhlIGtwcm9iZS1oZWxwZXItZnVuY3Rpb24gZ2V0cyBjYWxsZWQgaW4gZGVidWcgY29u
dGV4dCwgYnV0IHN1cmVseSB5b3UgY2FuJ3QKPiBrcHJvYmUgYSBrcHJvYmUtaGVscGVyLWZ1bmN0
aW9uPyBXaGF0IHN0b3BzIHRoaXMgZ29pbmcgaW4gYSBsb29wPwoKVGhlIGtwcm9iZSBibGFja2xp
c3QuIF9fa3Byb2JlcyBhbmQgTk9LUFJPQkVfU1lNQk9MKCkgd2lsbCBibGFja2xpc3QgaXQuCgo+
ID4gaXQgbW9kaWZpZXMgZGVidWcgZXhjZXB0aW9uIGNsZWFyIChwc3RhdGUuRCA9IDApLgo+IAo+
IEFmdGVyIHRha2luZyB0aGUgZmlyc3QgQlJLLCBEQUlGPTB4ZiwgZXZlcnl0aGluZyBpcyBtYXNr
ZWQuIFdoZW4geW91IHRha2UgdGhlIHNlY29uZCBCUksKPiB0aGlzIHNob3VsZG4ndCBjaGFuZ2Uu
CgpZZXMsIGF0IHRoZSBiZWdpbm5pbmcgb2YgdGhlIDJuZCBCUksgaGl0LgpIb3dldmVyIGluIHRo
ZSAybmQgQlJLLCBpdCBjbGVhcnMgdGhlIEQgZmxhZyBmb3Igc2luZ2xlLXN0ZXAsIGFuZCBuZXZl
ciByZWNvdmVyIGl0LgoKPiAKPiBUaG9zZSBzcHNyX3NldF9kZWJ1Z19mbGFnKCkgY2FsbHMgYXJl
IG1vZGlmeWluZyB0aGUgc3BzciBpbiB0aGUgcmVncyBzdHJ1Y3R1cmUsIHRoZXkgb25seQo+IGJl
Y29tZSBQU1RBVEUgd2hlbiB3ZSBlcmV0IGZvciBzaW5nbGUtc3RlcC4KPiAKPiAKPiA+IFRoZW4s
IHdoZW4gdGhlIDFzdCBrcHJvYmUgc2V0dGluZyB1cCBzaW5nbGUtc3RlcCwgaXQgc2F2ZXMgY3Vy
cmVudAo+ID4gREFJRiwgbWFzayBEQUlGLCBlbmFibGUgc2luZ2xlLXN0ZXAsIGFuZCByZXN0b3Jl
IERBSUYuCj4gCj4gPiBIb3dldmVyLCBzaW5jZSAiRCIgZmxhZyBpbiBEQUlGIGlzIGNsZWFyZWQg
YnkgdGhlIDJuZCBrcHJvYmUsIHRoZQo+ID4gc2luZ2xlLXN0ZXAgZXhjZXB0aW9uIGhhcHBlbnMg
c29vbiBhZnRlciByZXN0b3JpbmcgREFJRi4KPiAKPiBQU1RBVEUuRCBiaXQgY2xlYXJpbmcgc2hv
dWxkIG9ubHkgYmUgZWZmZWN0aXZlIGZvciB0aGUgZHVyYXRpb24gb2YgdGhlIHNpbmdsZS1zdGVw
Lgo+IAo+IAo+ID4gVG8gc29sdmUgdGhpcyBpc3N1ZSwgdGhpcyByZWZlcnMgc2F2ZWQgcHN0YXRl
IHJlZ2lzdGVyIHRvIGNoZWNrIHRoZQo+ID4gcHJldmlvdXMgcHN0YXRlLkQgYW5kIHJlY292ZXIg
aXQgaWYgbmVlZGVkLgo+IAo+IChUaGlzIHNvdW5kcyBsaWtlIHVuZG9pbmcgc29tZXRoaW5nIHRo
YXQgc2hvdWxkbid0IGhhdmUgaGFwcGVuZWQgaW4gdGhlIGZpcnN0IHBsYWNlKQo+IAo+IAo+ID4g
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQva2VybmVsL3Byb2Jlcy9rcHJvYmVzLmMgYi9hcmNoL2Fy
bTY0L2tlcm5lbC9wcm9iZXMva3Byb2Jlcy5jCj4gPiBpbmRleCBiZDVkZmZmY2EyNzIuLjZlMWRj
MGJiNGM4MiAxMDA2NDQKPiA+IC0tLSBhL2FyY2gvYXJtNjQva2VybmVsL3Byb2Jlcy9rcHJvYmVz
LmMKPiA+ICsrKyBiL2FyY2gvYXJtNjQva2VybmVsL3Byb2Jlcy9rcHJvYmVzLmMKPiA+IEBAIC0y
MDEsMTIgKzIwMSwxNCBAQCBzcHNyX3NldF9kZWJ1Z19mbGFnKHN0cnVjdCBwdF9yZWdzICpyZWdz
LCBpbnQgbWFzaykKPiA+ICAgKiBpbnRlcnJ1cHQgb2NjdXJyZW5jZSBpbiB0aGUgcGVyaW9kIG9m
IGV4Y2VwdGlvbiByZXR1cm4gYW5kICBzdGFydCBvZgo+ID4gICAqIG91dC1vZi1saW5lIHNpbmds
ZS1zdGVwLCB0aGF0IHJlc3VsdCBpbiB3cm9uZ2x5IHNpbmdsZSBzdGVwcGluZwo+ID4gICAqIGlu
dG8gdGhlIGludGVycnVwdCBoYW5kbGVyLgo+ID4gKyAqIFRoaXMgYWxzbyBjb250cm9scyBkZWJ1
ZyBmbGFnLCBzbyB0aGF0IHdlIGNhbiByZWZlciB0aGUgc2F2ZWQgcHN0YXRlLgo+ID4gICAqLwo+
ID4gIHN0YXRpYyB2b2lkIF9fa3Byb2JlcyBrcHJvYmVzX3NhdmVfbG9jYWxfaXJxZmxhZyhzdHJ1
Y3Qga3Byb2JlX2N0bGJsayAqa2NiLAo+ID4gIAkJCQkJCXN0cnVjdCBwdF9yZWdzICpyZWdzKQo+
ID4gIHsKPiA+ICAJa2NiLT5zYXZlZF9pcnFmbGFnID0gcmVncy0+cHN0YXRlOwo+ID4gIAlyZWdz
LT5wc3RhdGUgfD0gUFNSX0lfQklUOwo+ID4gKwlzcHNyX3NldF9kZWJ1Z19mbGFnKHJlZ3MsIDAp
Owo+IAo+IChOaXQ6IHRoaXMgaXMgdGhlIG9ubHkgY2FsbGVyIG9mIHNwc3Jfc2V0X2RlYnVnX2Zs
YWcoKSwgYXMgd2UncmUgbW9kaWZpbmcgcmVncy0+cHN0YXRlCj4gZGlyZWN0bHkgaGVyZSwgY2Fu
IHdlIGxvc2UgdGhlIGhlbHBlciBhbmQganVzdCBtYW5pcHVsYXRlIHJlZ3MtPnBzdGF0ZT8gKQo+
IAo+ID4gIH0KPiA+ICAKPiA+ICBzdGF0aWMgdm9pZCBfX2twcm9iZXMga3Byb2Jlc19yZXN0b3Jl
X2xvY2FsX2lycWZsYWcoc3RydWN0IGtwcm9iZV9jdGxibGsgKmtjYiwKPiA+IEBAIC0yNDUsMTUg
KzI1MSwxMiBAQCBzdGF0aWMgdm9pZCBfX2twcm9iZXMgc2V0dXBfc2luZ2xlc3RlcChzdHJ1Y3Qg
a3Byb2JlICpwLAo+ID4gIAkJa2NiLT5rcHJvYmVfc3RhdHVzID0gS1BST0JFX0hJVF9TUzsKPiA+
ICAJfQo+ID4KPiA+IC0KPiA+ICAJaWYgKHAtPmFpbnNuLmFwaS5pbnNuKSB7Cj4gPiAgCQkvKiBw
cmVwYXJlIGZvciBzaW5nbGUgc3RlcHBpbmcgKi8KPiA+ICAJCXNsb3QgPSAodW5zaWduZWQgbG9u
ZylwLT5haW5zbi5hcGkuaW5zbjsKPiA+Cj4gPiAgCQlzZXRfc3NfY29udGV4dChrY2IsIHNsb3Qp
OwkvKiBtYXJrIHBlbmRpbmcgc3MgKi8KPiA+Cj4gPiAtCQlzcHNyX3NldF9kZWJ1Z19mbGFnKHJl
Z3MsIDApOwo+ID4gLQo+ID4gIAkJLyogSVJRcyBhbmQgc2luZ2xlIHN0ZXBwaW5nIGRvIG5vdCBt
aXggd2VsbC4gKi8KPiA+ICAJCWtwcm9iZXNfc2F2ZV9sb2NhbF9pcnFmbGFnKGtjYiwgcmVncyk7
Cj4gPiAgCQlrZXJuZWxfZW5hYmxlX3NpbmdsZV9zdGVwKHJlZ3MpOwo+IAo+IFRoZXNlIHR3byBo
dW5rcyBsb29rIGxpa2UgY2xlYW51cCwgY291bGQgd2UgZG8gdGhpcyBzZXBhcmF0ZWx5IGZyb20g
YSBmaXggZm9yIHN0YWJsZT8KPiAKPiAKPiAKPiA+IEBAIC0yMTYsNiArMjE4LDEwIEBAIHN0YXRp
YyB2b2lkIF9fa3Byb2JlcyBrcHJvYmVzX3Jlc3RvcmVfbG9jYWxfaXJxZmxhZyhzdHJ1Y3Qga3By
b2JlX2N0bGJsayAqa2NiLAo+ID4gIAkJcmVncy0+cHN0YXRlIHw9IFBTUl9JX0JJVDsKPiA+ICAJ
ZWxzZQo+ID4gIAkJcmVncy0+cHN0YXRlICY9IH5QU1JfSV9CSVQ7Cj4gPiArCj4gPiArCS8qIFJl
Y292ZXIgcHN0YXRlLkQgbWFzayBpZiBuZWVkZWQgKi8KPiA+ICsJaWYgKGtjYi0+c2F2ZWRfaXJx
ZmxhZyAmIFBTUl9EX0JJVCkKPiA+ICsJCXNwc3Jfc2V0X2RlYnVnX2ZsYWcocmVncywgMSk7Cj4g
PiAgfQo+IAo+IFVnaC4gLi4gSSBnZXQgaXQgLi4KPiAKPiBJIHRoaW5rIHRoZSBzaW1wbGVzdCBz
dW1tYXJ5IG9mIHRoZSBwcm9ibGVtIGlzOgo+IEtwcm9iZXMgdW5tYXNrcyBkZWJ1ZyBleGNlcHRp
b25zIGZvciBzaW5nbGUtc3RlcCwgdGhlbiBsZWF2ZXMgdGhlbSB1bm1hc2tlZCB3aGVuIHRoZQo+
IHByb2JlZCBmdW5jdGlvbiBpcyByZXN0YXJ0ZWQuCj4gCj4gSSdkIGxpa2UgdG8ga25vdyBtb3Jl
IGFib3V0IHRoaXMgbmVzdGVkIGNhc2UsIGJ1dCBJIGRvbid0IHRoaW5rIGl0cyB0aGUgc2ltcGxl
c3QgZXhhbXBsZQo+IG9mIHRoaXMgcHJvYmxlbS4KPiBUaGUgY29tbWl0IG1lc3NhZ2UgaXMgZGVz
Y3JpYmluZyBib3RoIHRoZSBpbnRlcnJ1cHRlZCBhbmQgcnVubmluZyBQU1RBVEUgYXMgUFNUQVRF
LiBJCj4gdGhpbmsgaXQgd291bGQgYmUgY2xlYXJlciBpZiB5b3UgY2FsbGVkIHRoZSBpbnRlcnJ1
cHRlZCBvbmUgU1BTUiAoc2F2ZWQgcHN0YXRlIHJlZ2lzdGVyKS4KPiBUaGF0J3MgdGhlIHZhbHVl
IGluIHRoZSByZWdzIHN0cnVjdHVyZS4KCk9LLiBJJ20gbm90IHN1cmUgd2h5IHRoZSBvcmlnaW5h
bCBjb2RlIGRlY2lkZWQgb25seSByZWNvdmVycyBpcnEgZmxhZy4KCj4gCj4gUGxlYXNlIGRvbid0
IHJlLW1hbmlwdWxhdGUgdGhlIGZsYWdzLCBpdHMgb3Zlcmx5IHZlcmJvc2UgYW5kIHdlJ3ZlIGFs
cmVhZHkgZ290IHRoaXMgd3JvbmcKPiBvbmNlISBXZSBzaG91bGQganVzdCBibGluZGx5IHJlc3Rv
cmUgdGhlIERBSUYgc2V0dGluZyB3ZSBoYWQgYmVmb3JlIGFzIGl0cyBzaW1wbGVyLgo+IAo+IENv
dWxkIHdlIGNoYW5nZSBrcHJvYmVzX3NhdmVfbG9jYWxfaXJxZmxhZygpIHRvIHNhdmUgdGhlIERB
SUYgYml0cyBvZiBwc3RhdGU6Cj4gfOKAg2tjYi0+c2F2ZWRfaXJxZmxhZyA9IHJlZ3MtPnBzdGF0
ZSAmIERBSUZfTUFTSzsKPiAoREFJRl9NQVNLIGlzIGFsbCBmb3VyIFBTUiBiaXRzKQo+IAo+IFNv
IHRoYXQgd2UgY2FuIHRoZW4gZml4IHRoaXMgaW4ga3Byb2Jlc19yZXN0b3JlX2xvY2FsX2lycWZs
YWcoKSB3aXRoOgo+IHwgcmVncy0+cHN0YXRlICY9IH5EQUlGX01BU0s7Cj4gfCByZWdzLT5wc3Rh
dGUgfD0ga2NiLT5zYXZlZF9pcnFmbGFnCgpPSywgdGhhdCBpcyBtdWNoIHNpbXBsZXIgYW5kIGVh
c3kgdG8gdW5kZXJzdGFuZC4KCj4gCj4gKHRoZSB2YWx1ZSBzcGxpY2luZyBpcyBuZWVkZWQgYmVj
YXVzZSByZWdzLT5wc3RhdGUgYWxzbyBob2xkcyB0aGUgJ2NvbmRpdGlvbiBjb2RlJyBmbGFncywK
PiB3aGljaCBjb3VsZCBiZSBtb2RpZmllZCBieSB0aGUgc2luZ2xlLXN0ZXAgaW5zdHJ1Y3Rpb24s
IHRoZW4gZGVwZW5kZWQgb24gYWZ0ZXJ3YXJkcy4pCgpZZXMsIHRoYXQgbXVzdCBiZSBob2xkLgoK
VGhhbmsgeW91LAoKPiAKPiAKPiBUaGFua3MsCj4gCj4gSmFtZXMKCgotLSAKTWFzYW1pIEhpcmFt
YXRzdSA8bWhpcmFtYXRAa2VybmVsLm9yZz4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
