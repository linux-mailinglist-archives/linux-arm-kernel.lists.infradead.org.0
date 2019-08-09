Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CA1686F98
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 04:25:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uOWFl4OyA59sxyYVvxXmLGwJHYdv9YB6FJSvQ+7uI+w=; b=HgeqacLNNSZIRR
	OCmvMEKnkmuVCo1RVUGpB5eY/Qypunz6aXLBSGxbaHW9e+hMPrjlbufK9Bq5B6mjn6FaB1/cKsDhW
	QNb0ntxkjc0i8Jysej83UY80Wp3m/rntF5Csd8J+TPRacvlSq+4CJpyBLytNVpjGLVN0QEGx6smxd
	svLQaucarval/e2WeUjx+KwUZ3W5pBAbpqWVVIBaRKzclqR8NORvZ71xxi51W5zMDK2oDXVPXYefH
	+S99LBc6aIvUo8A3NMRLDKbWlChYbnfIRs4IHz5WcF8d3M1Ju1vjvjnXpnjY21BGWroLEcz06e1OE
	4kTk5vcQe/XPCnrjaPoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvuaQ-00010w-RQ; Fri, 09 Aug 2019 02:24:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvuaC-00010G-7V
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 02:24:46 +0000
Received: from oasis.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4229D2054F;
 Fri,  9 Aug 2019 02:24:42 +0000 (UTC)
Date: Thu, 8 Aug 2019 22:24:40 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Jiping Ma <Jiping.Ma2@windriver.com>
Subject: Re: [PATCH 1/2 v2] tracing/arm64: Have max stack tracer handle the
 case of return address after data
Message-ID: <20190808222440.2f99c50e@oasis.local.home>
In-Reply-To: <21530ce5-3847-c669-2a64-7c59ffb45f35@windriver.com>
References: <20190807172826.352574408@goodmis.org>
 <20190807172907.155165959@goodmis.org>
 <20190808162825.7klpu3ffza5zxwrt@willie-the-truck>
 <20190808123632.0dd1a58c@gandalf.local.home>
 <20190808171153.6j56h4hlcpcl5trz@willie-the-truck>
 <20190808132455.5fa2c660@gandalf.local.home>
 <21530ce5-3847-c669-2a64-7c59ffb45f35@windriver.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_192444_292472_2E82A846 
X-CRM114-Status: GOOD (  15.60  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 mingo@redhat.com, Joel Fernandes <joel@joelfernandes.org>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCA5IEF1ZyAyMDE5IDEwOjE3OjE5ICswODAwCkppcGluZyBNYSA8SmlwaW5nLk1hMkB3
aW5kcml2ZXIuY29tPiB3cm90ZToKCj4gT24gMjAxOeW5tDA45pyIMDnml6UgMDE6MjQsIFN0ZXZl
biBSb3N0ZWR0IHdyb3RlOgo+ID4gT24gVGh1LCA4IEF1ZyAyMDE5IDE4OjExOjUzICswMTAwCj4g
PiBXaWxsIERlYWNvbiA8d2lsbEBrZXJuZWwub3JnPiB3cm90ZToKPiA+ICAKPiA+Pj4gV2UgY291
bGQgbWFrZSBpdCBtb3JlIGRlc2NyaXB0aXZlIG9mIHdoYXQgaXQgd2lsbCBkbyBhbmQgbm90IHRo
ZSByZWFzb24KPiA+Pj4gZm9yIHdoeSBpdCBpcyBkb25lLi4uCj4gPj4+Cj4gPj4+Cj4gPj4+ICAg
IEFSQ0hfRlRSQUNFX1NISUZUX1NUQUNLX1RSQUNFUiAgCj4gPj4gQWNrZWQtYnk6IFdpbGwgRGVh
Y29uIDx3aWxsQGtlcm5lbC5vcmc+ICAKPiA+IFRoYW5rcyBXaWxsIQo+ID4KPiA+IEhlcmUncyB0
aGUgb2ZmaWNpYWwgcGF0Y2guCj4gPgo+ID4gRnJvbTogIlN0ZXZlbiBSb3N0ZWR0IChWTXdhcmUp
IiA8cm9zdGVkdEBnb29kbWlzLm9yZz4KPiA+Cj4gPiBNb3N0IGFyY2hzICh3ZWxsIGF0IGxlYXN0
IHg4Nikgc3RvcmUgdGhlIGZ1bmN0aW9uIGNhbGwgcmV0dXJuIGFkZHJlc3Mgb24gdGhlCj4gPiBz
dGFjayBiZWZvcmUgc3RvcmluZyB0aGUgbG9jYWwgdmFyaWFibGVzIGZvciB0aGUgZnVuY3Rpb24u
IFRoZSBtYXggc3RhY2sKPiA+IHRyYWNlciBkZXBlbmRzIG9uIHRoaXMgaW4gaXRzIGFsZ29yaXRo
bSB0byBkaXNwbGF5IHRoZSBzdGFjayBzaXplIG9mIGVhY2gKPiA+IGZ1bmN0aW9uIGl0IGZpbmRz
IGluIHRoZSBiYWNrIHRyYWNlLgo+ID4KPiA+IFNvbWUgYXJjaHMgKGFybTY0KSwgbWF5IHN0b3Jl
IHRoZSByZXR1cm4gYWRkcmVzcyAoZnJvbSBpdHMgbGluayByZWdpc3RlcikKPiA+IGp1c3QgYmVm
b3JlIGNhbGxpbmcgYSBuZXN0ZWQgZnVuY3Rpb24uIFRoZXJlJ3Mgbm8gcmVhc29uIHRvIHNhdmUg
dGhlIGxpbmsKPiA+IHJlZ2lzdGVyIG9uIGxlYWYgZnVuY3Rpb25zLCBhcyBpdCB3b250IGJlIHVw
ZGF0ZWQuIFRoaXMgYnJlYWtzIHRoZSBhbGdvcml0aG0KPiA+IG9mIHRoZSBtYXggc3RhY2sgdHJh
Y2VyLgo+ID4KPiA+IEFkZCBhIG5ldyBkZWZpbmUgQVJDSF9SRVRfQUREUl9BRlRFUl9MT0NBTF9W
QVJTIHRoYXQgYW4gYXJjaGl0ZWN0dXJlIG1heSBzZXQgIAo+IAo+IEFSQ0hfRlRSQUNFX1NISUZU
X1NUQUNLX1RSQUNFUiBpcyB1c2VkIGluIHRoZSBjb2RlLgoKQWgsIEkgZGlkIGEgcy94L3kvIHRv
IHRoZSBkaWZmIG9mIHRoZSBwYXRjaCwgYnV0IG5vdCB0aGUgY2hhbmdlIGxvZy4KVGhhbmtzIGZv
ciBwb2ludGluZyB0aGF0IG91dC4gSSBhbHNvIG5lZWQgdG8gdXBkYXRlIHRoZSBjb21tZW50IGlu
IDIvMi4KCi0tIFN0ZXZlCgo+IAo+IEppcGluZwo+IAo+CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
