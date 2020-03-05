Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA10917AA91
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 17:34:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+HZBhRzh7cJiqxEOrtsiA89qu9KLnp+VpSNpxAGzYOk=; b=upaU9XXZd4MTJH
	c5UxVOe11vBEfxbgm1u80UPvK+edKd5yoruoRdnySBG8kaWQygAC4xh97zm3nIJfVA1/gnG0jcupv
	dLd80iAjROqs0BZJzMU/WTw/THpzl8xUVPBK+LVeSWCYDozaCN+955RXnqp3l2HmDzGTcg+OfavR+
	rfKsiVqGnMHLl/W6Dm+DUCiy0hQZBbmXQxHVvZ3u7dbS7bKikM3pV8OiiBp3vdCZJmqLFVoMUKTXb
	jh5vI4ksYJTyropQ23UBpGFEBFJpmd+gF66NOw/VIgbELElBIQy3hy8uYwonAPb3IzwFrZ7H3JeOz
	2fCxknnIduVSpM1UWgqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9tSA-00058e-IB; Thu, 05 Mar 2020 16:34:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9tS1-00056t-Sq
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 16:34:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E3AA430E;
 Thu,  5 Mar 2020 08:34:18 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 24D653F534;
 Thu,  5 Mar 2020 08:34:18 -0800 (PST)
Date: Thu, 5 Mar 2020 16:34:16 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: reduce trampoline data alignment
Message-ID: <20200305163415.GB17032@lakrids.cambridge.arm.com>
References: <20200304093621.191138-1-remi@remlab.net>
 <20200304142951.GC3575@lakrids.cambridge.arm.com>
 <20200305092353.GC19208@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200305092353.GC19208@willie-the-truck>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_083421_974428_26EE5E56 
X-CRM114-Status: GOOD (  22.55  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: catalin.marinas@arm.com, james.morse@arm.com,
 linux-arm-kernel@lists.infradead.org,
 =?utf-8?B?UsOpbWk=?= Denis-Courmont <remi@remlab.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBNYXIgMDUsIDIwMjAgYXQgMDk6MjM6NTRBTSArMDAwMCwgV2lsbCBEZWFjb24gd3Jv
dGU6Cj4gT24gV2VkLCBNYXIgMDQsIDIwMjAgYXQgMDI6Mjk6NTFQTSArMDAwMCwgTWFyayBSdXRs
YW5kIHdyb3RlOgo+ID4gW2FkZGluZyBhcm02NCBmb2xrXQo+ID4gCj4gPiBPbiBXZWQsIE1hciAw
NCwgMjAyMCBhdCAxMTozNjoyMUFNICswMjAwLCBSw6ltaSBEZW5pcy1Db3VybW9udCB3cm90ZToK
PiA+ID4gRnJvbTogUmVtaSBEZW5pcy1Db3VybW9udCA8cmVtaS5kZW5pcy5jb3VybW9udEBodWF3
ZWkuY29tPgo+ID4gPiAKPiA+ID4gVGhlIHRyYW1wb2xpbmUgZGF0YSwgY3VycmVudGx5IGNvbnNp
c3Rpbmcgb2YgdHdvIHJlbG9jYXRlZCBwb2ludGVycywKPiA+ID4gbXVzdCBiZSB3aXRoaW4gYSBz
aW5nbGUgcGFnZS4gSG93ZXZlciwgdGhlcmUgYXJlIG5vIG5lZWRzIGZvciBpdCB0bwo+ID4gPiBz
dGFydCBhIHBhZ2UuCj4gPiA+IAo+ID4gPiBUaGlzIHJlZHVjZXMgdGhlIGFsaWdubWVudCB0byAx
NiBieXRlcywgd2hpY2ggZW5zdXJlcyB0aGF0IHRoZSAxNiBieXRlcwo+ID4gPiBvZiBkYXRhIGFy
ZSBpbiB0aGUgc2FtZSBwYWdlLgo+IAo+IEkgZG9uJ3QgZm9sbG93IHRoaXMgYml0OiBpdCdzIG9u
ZSA4IGJ5dGUgcG9pbnRlci4KCldoZW4gdGhlIGtlcm5lbCBpcyBidWlsdCB3aXRoIFNERUksIHRo
ZXJlIGFyZSB0d28gOC1ieXRlIHBvaW50ZXJzIHRoYXQKbmVlZCB0byBsaXZlIGluIHRoZSBzYW1l
IHBhZ2U6IHRoZSBvbmUgYXQgX19lbnRyeV90cmFtcF9kYXRhX3N0YXJ0IGFuZAp0aGUgb25lIGF0
IF9fc2RlaV9hc21fdHJhbXBvbGluZV9uZXh0X2hhbmRsZXIuCgpSZWR1Y2luZyB0aGUgYWxpZ25t
ZW50IHRvIDggd291bGQgbWVhbiB0aGF0IHRoZSBTREVJIHBvaW50ZXIgY291bGQgZ2V0CnBsYWNl
ZCBpbiBhIHNlcGFyYXRlIHBhZ2UsIGFuZCB3ZSdkIGdlbmVyYXRlIGEgYm9ndXMgYWRkcmVzcyBp
bgpfX3NkZWlfYXNtX2VudHJ5X3RyYW1wb2xpbmUuCgo+ID4gPiBUaGlzIHBhdGNoIGFzc3VtZXMg
dGhhdCB0aGUgcGFnZSBhbGlnbm1lbnQgd2FzIGp1c3QgYSBxdWljayBhbmQgZGlydHkKPiA+ID4g
dHJpY2sgdG8gbm90IHdvcnJ5IGFib3V0IGZpeG1hcC4gSWYgaG93ZXZlciB0aGUgcGFnZSBhbGln
bm1lbnQgd2FzCj4gPiA+IG1lYW50IHRvIHByZXNlbnQgYSBkYXRhIHBhZ2Ugd2l0aCBubyBvdGhl
ciBkYXRhIHRoYW4gdGhlIHRyYW1wb2xpbmUncywKPiA+ID4gdGhlbiBib3RoIHRoZSBjdXJyZW50
IGNvZGUgYW5kIHRoaXMgcGF0Y2ggYXJlIHdyb25nLgo+ID4gCj4gPiBJIHRoaW5rIHRoYXQgYWxp
Z25pbmcgaXQgdG8gYSBwYWdlIHdhcyBhIHNpbXBsaWZpY2F0aW9uIG92ZXJhbGwsIG5vdAo+ID4g
anVzdCBmb3IgdGhlIGZpeG1hcC4gSG93ZXZlciwgSSBkbyBhZ3JlZSB0aGF0IGFzIHRoZSBwYWdl
IGlzbid0IG1hcHBlZAo+ID4gZHVyaW5nIEVMMCBleGVjdXRpb24sIGl0J3MgZmluZSBmb3Igb3Ro
ZXIgYml0cyBvZiAucm9kYXRhIHRvIHNoYXJlIHRoZQo+ID4gcGFnZS4KPiA+IAo+ID4gSSBhbHNv
IHRoaW5rIHRoYXQgaXQncyBhIGJpdCBzY2FyeSB0aGF0IHdlIHJlbHkgb24gbm90aGluZyBiZWlu
ZyBwbGFjZWQKPiA+IGluIC5yb2RhdGEgYmV0d2VlbiBfX2VudHJ5X3RyYW1wX2RhdGFfc3RhcnQg
YW5kCj4gPiBfX3NkZWlfYXNtX3RyYW1wb2xpbmVfbmV4dF9oYW5kbGVyLCBzaW5jZSBtYWNyb3Mg
Y291bGQgZWFzaWx5IHBsYWNlCj4gPiBzb21ldGhpbmcgYmV0d2VlbiB0aGUgdHdvLiBMdWNraWx5
IE5PS1BST0JFKCkgYWRkcyBzdHVmZiB0byAuaW5pdC5kYXRhLAo+ID4gYnV0IEkgaGFkIHRvIGNo
ZWNrLgo+ID4gCj4gPiBJIHRoaW5rIGl0IHdvdWxkIGJlIGJldHRlciB0byBhZGQgYSBuZXcgLmVu
dHJ5LnRyYW1wLmRhdGEgc2VjdGlvbiB0bwo+ID4gZW5zdXJlIHRoYXQsIHdoaWNoIHdlIGNhbiBh
bGlnbiBhcHByb3ByaWF0ZWx5IGluIHRoZSBsaW5rZXIgc2NyaXB0Lgo+IAo+IFJlbWkncyBwYXRj
aCBsb29rcyBmaW5lIHRob3VnaCwgbm8/IChtb2R1bG8gdGhlIGNvbmZ1c2luZyBjb21taXQgbWVz
c2FnZSkKCkl0IGxvb2tzIGZpbmUsIEkganVzdCB0aGluayB0aGF0IGlmIHdlJ3JlIGdvaW5nIHRv
IGNsZWFuIHRoaXMgdXAgaXQnZCBiZQpnb29kIHRvIG1ha2UgaXQgbW9yZSByb2J1c3QuIEdpdmVu
IGhvdyBlYXN5IGl0IGlzIHRvIG1pc3MgdGhlIFNERUkgY2FzZQooYXMgYWJvdmUpLCBpdCdzIGxp
a2VseSB0aGF0J2xsIGdldCBicm9rZW4sIGFuZCBpdCdzIHJhcmVseSB0ZXN0ZWQuCgpUaGFua3Ms
Ck1hcmsuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
