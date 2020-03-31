Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39BF7199BA7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 18:33:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pyCHx44S4SGYn2QlpHNMcizXnEj6mfVNhcPcerKlYmc=; b=dG/+fRNYA2AjSH
	YAJ6FhiWCO5EUtyIf4f3PzMea8fpgYqRFD9CaRRLia6kKvL38OMjI4sZtNqn+QvjMrYeH+hrwjZCZ
	nbw1JC0neaMkWMqtp/BFPjjku08k/gF/cYqftUDRIXYDuE/T9zuXe5yRrQ1L6+YuX6RgUYxohdCG6
	uidFBWWoJb7xCCYqfh+iFbUmhCM+fCFffW9BB9pykV/WXvM4zbpu9E4A8xVoFRJW20OnuGFdltN94
	qHHX/t1Cfs1lyDstZMThRxKlgbQzP9D6dr+RFTZ4UMNPnCI5GbS7FMHq9tsLF3moXVG30sXwSn89R
	IXW3iZKn1hL4uA4gMhIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJpR-00064W-77; Tue, 31 Mar 2020 16:33:29 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJnu-0005Ba-6x
 for linux-arm-kernel@bombadil.infradead.org; Tue, 31 Mar 2020 16:31:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=7WA2SNh92rnnSZZvUQaTKYifOXJZi6vIeCnRokAruC8=; b=VedxKD6HCbTPshJuP8uq+8ENGe
 nGk6fDCnS5onetPJJLelxkiP06qasaijRvqBfZLFbw+h2vcZjF7mYYq/RM2G6fZfvhC7FWxYDV4Qg
 CJI7Z5ZLrGql/bpiVN6GvdMuZZ1479nElCbbFhbQQkGCEC8MUqFKnwowdpoo824kfUFGPiZhInjX1
 XRdAmDtDGmYjGJfXYeTiGm1GRLid6pLO460A0AvSmPAjiKn9A9zrQ5F7hEVVDQFgvfYOhzZhgiqy+
 sjziA6FFd1FqEJCnLS3o+SOWQ3yrq3vB2VBR+kxzj7BB1gosvEJOE7Jw3TsTUKvj1oOiKB/x1Shzy
 d32j54eg==;
Received: from mail.kernel.org ([198.145.29.99])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJFKX-0006o7-6h
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 11:45:19 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7AE0420848;
 Tue, 31 Mar 2020 11:45:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585655113;
 bh=rC/38ClZ3y2/dVShjeUj2v2u6Z9jOMJyHzY+AlOMuKA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=s7+C2KpVO4692yq6aLf4raZ8PL/WkSIxfSpwsjwYJJGJioffmKvzoObEE/wevNE/S
 AK6gRkKBxtzIlVC8yTMyARLbj3aX/Qj3F7F4c8YXO5aHQEr4bvk7IKhDcqZ/GO+0Lh
 HgEJbVzxcahHnLgZjVBNYQOuSCE8XYnqzl9Ku2pI=
Date: Tue, 31 Mar 2020 12:45:09 +0100
From: Will Deacon <will@kernel.org>
To: tingwei@codeaurora.org
Subject: Re: [PATCH] arm64: hw_breakpoint: don't clear debug registers in
 halt mode
Message-ID: <20200331114502.GA29553@willie-the-truck>
References: <20200328083209.21793-1-tingwei@codeaurora.org>
 <20200330123946.GH1309@C02TD0UTHF1T.local>
 <20200330134218.GB10633@willie-the-truck>
 <2f4d076b2b21de3908f0821126d0c61e@codeaurora.org>
 <20200331074147.GA25612@willie-the-truck>
 <518d9ca9652c23bfc0e1831306144418@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <518d9ca9652c23bfc0e1831306144418@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_124517_745311_01E8861F 
X-CRM114-Status: GOOD (  41.59  )
X-Spam-Score: -7.3 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-7.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBNYXIgMzEsIDIwMjAgYXQgMDc6MzM6MzhQTSArMDgwMCwgdGluZ3dlaUBjb2RlYXVy
b3JhLm9yZyB3cm90ZToKPiDlnKggMjAyMC0wMy0zMSAxNTo0Me+8jFdpbGwgRGVhY29uIOWGmemB
k++8mgo+ID4gT24gVHVlLCBNYXIgMzEsIDIwMjAgYXQgMTA6Mzk6NDJBTSArMDgwMCwgdGluZ3dl
aUBjb2RlYXVyb3JhLm9yZyB3cm90ZToKPiA+ID4g5ZyoIDIwMjAtMDMtMzAgMjE6NDLvvIxXaWxs
IERlYWNvbiDlhpnpgZPvvJoKPiA+ID4gPiBPbiBNb24sIE1hciAzMCwgMjAyMCBhdCAwMTozOTo0
NlBNICswMTAwLCBNYXJrIFJ1dGxhbmQgd3JvdGU6Cj4gPiA+ID4gPiBPbiBTYXQsIE1hciAyOCwg
MjAyMCBhdCAwNDozMjowOVBNICswODAwLCBUaW5nd2VpIFpoYW5nIHdyb3RlOgo+ID4gPiA+ID4g
PiBJZiBleHRlcm5hbCBkZWJ1Z2dlciBzZXRzIGEgYnJlYWtwb2ludCBmb3Igb25lIEtlcm5lbCBm
dW5jdGlvbgo+ID4gPiA+ID4gPiB3aGVuIGRldmljZSBpcyBpbiBib290bG9hZGVyIG1vZGUgYW5k
IGxvYWRzIEtlcm5lbCwgdGhpcyBicmVha3BvaW50Cj4gPiA+ID4gPiA+IHdpbGwgYmUgd2lwZWQg
b3V0IGluIGh3X2JyZWFrcG9pbnRfcmVzZXQoKS4gVG8gZml4IHRoaXMsIGNoZWNrCj4gPiA+ID4g
PiA+IE1EU0NSX0VMMS5IREUgaW4gaHdfYnJlYWtwb2ludF9yZXNldCgpLiBXaGVuIE1EU0NSX0VM
MS5IREUgaXMKPiA+ID4gPiA+ID4gMGIxLCBoYWx0aW5nIGRlYnVnIGlzIGVuYWJsZWQuIERvbid0
IHJlc2V0IGRlYnVnIHJlZ2lzdGVycyBpbiB0aGlzCj4gPiA+ID4gY2FzZS4KPiA+ID4gPiA+Cj4g
PiA+ID4gPiBJIGRvbid0IHRoaW5rIHRoaXMgaXMgc3VmZmljaWVudCwgYmVjYXVzZSB0aGUga2Vy
bmVsIGNhbiBzdGlsbAo+ID4gPiA+ID4gc3Vic2VxdWVudGx5IG1lc3Mgd2l0aCBicmVha3BvaW50
cywgYW5kIHRoZSBIVyBkZWJ1Z2dlciBtaWdodCBub3QgYmUKPiA+ID4gPiA+IGF0dGFjaGVkIGF0
IHRoaXMgcG9pbnQgaW4gdGltZSBhbnlob3cuCj4gPiA+ID4gPgo+ID4gPiA+ID4gSSByZWNrb24g
dGhpcyBzaG91bGQgaGFuZyBvZmYgdGhlIGV4aXN0aW5nICJub2RlYnVtb24iIGNvbW1hbmQgbGlu
ZQo+ID4gPiA+ID4gb3B0aW9uLCBhbmQgd2Ugc2hvdWxkbid0IHVzZSBIVyBicmVha3BvaW50cyBh
dCBhbGwgd2hlbiB0aGF0IGlzCj4gPiA+ID4gPiBwYXNzZWQuCj4gPiA+ID4gPiBUaGVuIHlvdSBj
YW4gcGFzcyB0aGF0IHRvIHByZXZlbnQgdGhlIGtlcm5lbCBzdG9tcGluZyBvbiB0aGUgZXh0ZXJu
YWwKPiA+ID4gPiA+IGRlYnVnZ2VyLgo+ID4gPiA+ID4KPiA+ID4gPiA+IFdpbGwsIHRob3VnaHRz
Pwo+ID4gPiA+Cj4gPiA+ID4gSSB3YXMgZ29pbmcgdG8gc3VnZ2VzdCB0aGUgc2FtZSB0aGluZywg
YWx0aG91Z2ggd2Ugd2lsbCBhbHNvIG5lZWQgdG8KPiA+ID4gPiB0YWtlCj4gPiA+ID4gY2FyZSB0
byByZXNldCB0aGUgcmVnaXN0ZXJzIGlmICJub2RlYnVnbW9uIiBpcyB0b2dnbGVkIGF0IHJ1bnRp
bWUgdmlhCj4gPiA+ID4gdGhlCj4gPiA+ID4gImRlYnVnX2VuYWJsZWQiIGZpbGUgaW4gZGVidWdm
cy4KPiA+ID4gPgo+ID4gPiBUaGFua3MgZm9yIHRoZSBzdWdnZXN0aW9uLCBNYXJrIGFuZCBXaWxs
LiBJdCdzIGEgZ3JlYXQgaWRlYSB0byB1c2UKPiA+ID4gIm5vZGVidWdtb24iLiBXaGVuICJub2Rl
YnVnbW9uIiBpcyBzZXQsIEtlcm5lbCB3b24ndCBjaGFuZ2UgSFcKPiA+ID4gYnJlYWtwb2ludHMu
Cj4gPiA+IAo+ID4gPiBGb3IgcmVzZXQgdGhlIHJlZ2lzdGVycyBhZnRlciAiZGVidWdfZW5hYmxl
ZCIgaXMgdG9nZ2xlZCwgSSdtCj4gPiA+IHRoaW5raW5nIGlmCj4gPiA+IHdlIGFyZSBhZGRpbmcg
dW5uZWNlc3NhcnkgY29tcGxleGl0eSBoZXJlLklmIHdlIHRha2UgdGhhdCBhcHByb2FjaCwgd2UK
PiA+ID4gd2lsbAo+ID4gPiBob29rICJkZWJ1Z19lbmFibGVkIiBpbnRlcmZhY2UgYW5kIHVzZSBz
bXBfY2FsbF9mdW5jdGlvbl9zaW5nbGUoKSB0bwo+ID4gPiBjYWxsCj4gPiA+IGh3X2JyZWFrcG9p
bnRfcmVzZXQoKSBvbiBlYWNoIENQVS4gV2FpdCBmb3IgYWxsIENQVXMnIGV4ZWN1dGlvbiBkb25l
Cj4gPiA+IGFuZAo+ID4gPiBjaGFuZ2UgImRlYnVnX2VuYWJsZWQiLiBFeHRlcm5hbCBkZWJ1Z2dl
ciB3b3VsZCBjbGVhciB0aGUKPiA+ID4gYnJlYWtwb2ludHMgd2hlbgo+ID4gPiBpdCBkZXRhY2hl
cyB0aGUgZGV2aWNlIGFuZCByZXN0b3JlcyBpdHMgYnJlYWtwb2ludHMgd2hlbiBhdHRhY2hlcyB0
aGUKPiA+ID4gZGV2aWNlLgo+ID4gPiBBc3N1bWUgZGVidWdfZW5hYmxlZCBpcyBjaGFuZ2VkIHRv
IG9uZSBhZnRlciBleHRlcm5hbCBkZWJ1Z2dlcgo+ID4gPiBkZXRhY2hlcwo+ID4gPiB0aGUKPiA+
ID4gZGV2aWNlLiBEZWJ1Z2dlciB3b3VsZCBhbHJlYWR5IGNsZWFyIHRoZSBicmVha3BvaW50IHJl
Z2lzdGVycy4gSWYKPiA+ID4gZGViZ2dlcgo+ID4gPiBpcwo+ID4gPiBzdGlsbCBhdHRhY2hlZCwg
dGhlcmUncyBub3RoaW5nIEtlcm5lbCBjYW4gZG8gdG8gc3RvcCBpdAo+ID4gPiByZXN0b3Jlcy9w
cm9ncmFtcwo+ID4gPiB0aGUgYnJlYWtwb2ludCByZWdpc3RlcnMuCj4gPiA+IAo+ID4gPiBXaGF0
IGRvIHlvdSB0aGluayBvZiB0aGlzPwo+ID4gCj4gPiBJdCdzIGFsbCBhIGJpdCBvZiBhIG1lc3Mu
IExvb2tpbmcgYXQgaXQgc29tZSBtb3JlLCB3aHkgY2FuJ3QgdGhlCj4gPiBleHRlcm5hbAo+ID4g
ZGVidWdnZXIgc2ltcGx5IHRyYXAgYWNjZXNzIHRvIHRoZSBkZWJ1ZyByZWdpc3RlcnMgdXNpbmcg
RURTQ1IuVERBPyBUaGF0Cj4gPiB3YXksIHdlIGRvbid0IGhhdmUgdG8gY2hhbmdlIGFueXRoaW5n
IGluIHRoZSBrZXJuZWwuCj4gPiAKPiAKPiBFeHRlcm5hbCBkZWJ1Z2dlciBoYXMgdGhlIGZ1bmN0
aW9uIHRvIHRyYXAgYWNjZXNzIHRvIGRlYnVnIHJlZ2lzdGVycyBub3cuCj4gV2hhdCBkbyB3ZSBl
eHBlY3QgZGVidWdnZXIgdG8gZG8gYWZ0ZXIgY29yZSBpcyBzdG9wcGVkPyBTa2lwIHRoYXQgbXNy
Cj4gaW5zdHJ1Y3Rpb24gYW5kIGNvbnRpbnVlIHRvIHJ1bj8KClRoZSBuaWNlc3QgdGhpbmcgdG8g
ZG8gd291bGQgcHJvYmFibHkgYmUgdG8gcmVjb3JkIGFsbCB0aGUgYWNjZXNzZXMgbWFkZQpieSB0
aGUgT1Mgc28gdGhhdCBpdCBjYW4gZW11bGF0ZSByZWFkcyBhbmQgcmVwbGF5IHdyaXRlcyB3aGVu
IGV4dGVybmFsCmRlYnVnZ2luZyBpcyBvdmVyLiBHaXZlbiB0aGF0IHlvdSdkIHN0aWxsIGJlIGV4
cGVjdGluZyB0byBwYXNzICJub2RlYnVnbW9uIiwKdGhlIGVtdWxhdGlvbiBzaG91bGQgYmUgcHJl
dHR5IHN0cmFpZ2h0Zm9yd2FyZCwgSSB0aGluay4KCldpbGwKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
