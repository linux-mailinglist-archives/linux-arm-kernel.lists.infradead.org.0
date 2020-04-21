Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E85FF1B1F94
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 09:11:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+1vYHleJCBnenMGi0LTzVD0XHL4UeBxd7tKoKxVjQ+E=; b=cDqlvuRQrr471a
	3LmbATICZrGYRL17Yz4B+Uz8o8iVABp6a2rfQezLYZJLCuJNXPexr6R41eugsTCtzzJhtHpfylksq
	pP2AchizXrc7Ghm4lMmkSLF3ML+Awh6ThuEF9Dyk+2Wn8DlrVJFa8+ulZtfcfPVEiXdjYITlL9Vrm
	HHp+PGlNCxsN7J6gGURSVe1N2s23dXJmGgDc0mK+F9xl8Nz6hj1WcJM8ve6llDSgvlyM4TRYP429j
	Ags0xoBelGesSqT7YBZOX1YF+E6hITiLwyWppldu+XTn2Ft2MBqz/iE7hx+79U7NoRz6gThTCdS2H
	95Ci+cFhanNp4dHCjITA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQn3a-0004cC-Ey; Tue, 21 Apr 2020 07:10:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQn3S-0004b9-2Y
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 07:10:51 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AF59B2087E;
 Tue, 21 Apr 2020 07:10:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587453049;
 bh=hsizFFgivkzOViOLBSilwEvs359qWyHCxMIKdaeooMY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Q3P88V8Q8zehk0TI8EWqhabS+NsHwdzffavu38u+KSLSabvfM7D6VEK9+iIFyOrf7
 jiWBNCUpGXRNYuXEPzQoOLXUa7hxKKwrlbDCErMb7IklITrKZzu+HJOlYhNHnYJc+R
 BeaQ1L5Thq/CKMlGewDj0ZhX23vSHBDL79SNeYto=
Date: Tue, 21 Apr 2020 08:10:45 +0100
From: Will Deacon <will@kernel.org>
To: tingwei@codeaurora.org
Subject: Re: [PATCH] arm64: hw_breakpoint: don't clear debug registers in
 halt mode
Message-ID: <20200421071043.GA14844@willie-the-truck>
References: <20200328083209.21793-1-tingwei@codeaurora.org>
 <20200330123946.GH1309@C02TD0UTHF1T.local>
 <20200330134218.GB10633@willie-the-truck>
 <2f4d076b2b21de3908f0821126d0c61e@codeaurora.org>
 <20200331074147.GA25612@willie-the-truck>
 <518d9ca9652c23bfc0e1831306144418@codeaurora.org>
 <20200331114502.GA29553@willie-the-truck>
 <20b8c92a16db07978dfcb8cdf3b0e185@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20b8c92a16db07978dfcb8cdf3b0e185@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_001050_164534_6D1BF1DC 
X-CRM114-Status: GOOD (  21.34  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBBcHIgMjEsIDIwMjAgYXQgMTE6NDk6MTFBTSArMDgwMCwgdGluZ3dlaUBjb2RlYXVy
b3JhLm9yZyB3cm90ZToKPiDlnKggMjAyMC0wMy0zMSAxOTo0Ne+8jFdpbGwgRGVhY29uIOWGmemB
k++8mgo+ID4gT24gVHVlLCBNYXIgMzEsIDIwMjAgYXQgMDc6MzM6MzhQTSArMDgwMCwgdGluZ3dl
aUBjb2RlYXVyb3JhLm9yZyB3cm90ZToKPiA+ID4g5ZyoIDIwMjAtMDMtMzEgMTU6NDHvvIxXaWxs
IERlYWNvbiDlhpnpgZPvvJoKPiA+ID4gPiBPbiBUdWUsIE1hciAzMSwgMjAyMCBhdCAxMDozOTo0
MkFNICswODAwLCB0aW5nd2VpQGNvZGVhdXJvcmEub3JnIHdyb3RlOgo+ID4gPiA+ID4gRm9yIHJl
c2V0IHRoZSByZWdpc3RlcnMgYWZ0ZXIgImRlYnVnX2VuYWJsZWQiIGlzIHRvZ2dsZWQsIEknbQo+
ID4gPiA+ID4gdGhpbmtpbmcgaWYKPiA+ID4gPiA+IHdlIGFyZSBhZGRpbmcgdW5uZWNlc3Nhcnkg
Y29tcGxleGl0eSBoZXJlLklmIHdlIHRha2UgdGhhdCBhcHByb2FjaCwgd2UKPiA+ID4gPiA+IHdp
bGwKPiA+ID4gPiA+IGhvb2sgImRlYnVnX2VuYWJsZWQiIGludGVyZmFjZSBhbmQgdXNlIHNtcF9j
YWxsX2Z1bmN0aW9uX3NpbmdsZSgpIHRvCj4gPiA+ID4gPiBjYWxsCj4gPiA+ID4gPiBod19icmVh
a3BvaW50X3Jlc2V0KCkgb24gZWFjaCBDUFUuIFdhaXQgZm9yIGFsbCBDUFVzJyBleGVjdXRpb24g
ZG9uZQo+ID4gPiA+ID4gYW5kCj4gPiA+ID4gPiBjaGFuZ2UgImRlYnVnX2VuYWJsZWQiLiBFeHRl
cm5hbCBkZWJ1Z2dlciB3b3VsZCBjbGVhciB0aGUKPiA+ID4gPiA+IGJyZWFrcG9pbnRzIHdoZW4K
PiA+ID4gPiA+IGl0IGRldGFjaGVzIHRoZSBkZXZpY2UgYW5kIHJlc3RvcmVzIGl0cyBicmVha3Bv
aW50cyB3aGVuIGF0dGFjaGVzIHRoZQo+ID4gPiA+ID4gZGV2aWNlLgo+ID4gPiA+ID4gQXNzdW1l
IGRlYnVnX2VuYWJsZWQgaXMgY2hhbmdlZCB0byBvbmUgYWZ0ZXIgZXh0ZXJuYWwgZGVidWdnZXIK
PiA+ID4gPiA+IGRldGFjaGVzCj4gPiA+ID4gPiB0aGUKPiA+ID4gPiA+IGRldmljZS4gRGVidWdn
ZXIgd291bGQgYWxyZWFkeSBjbGVhciB0aGUgYnJlYWtwb2ludCByZWdpc3RlcnMuIElmCj4gPiA+
ID4gPiBkZWJnZ2VyCj4gPiA+ID4gPiBpcwo+ID4gPiA+ID4gc3RpbGwgYXR0YWNoZWQsIHRoZXJl
J3Mgbm90aGluZyBLZXJuZWwgY2FuIGRvIHRvIHN0b3AgaXQKPiA+ID4gPiA+IHJlc3RvcmVzL3By
b2dyYW1zCj4gPiA+ID4gPiB0aGUgYnJlYWtwb2ludCByZWdpc3RlcnMuCj4gPiA+ID4gPgo+ID4g
PiA+ID4gV2hhdCBkbyB5b3UgdGhpbmsgb2YgdGhpcz8KPiA+ID4gPgo+ID4gPiA+IEl0J3MgYWxs
IGEgYml0IG9mIGEgbWVzcy4gTG9va2luZyBhdCBpdCBzb21lIG1vcmUsIHdoeSBjYW4ndCB0aGUK
PiA+ID4gPiBleHRlcm5hbAo+ID4gPiA+IGRlYnVnZ2VyIHNpbXBseSB0cmFwIGFjY2VzcyB0byB0
aGUgZGVidWcgcmVnaXN0ZXJzIHVzaW5nIEVEU0NSLlREQT8gVGhhdAo+ID4gPiA+IHdheSwgd2Ug
ZG9uJ3QgaGF2ZSB0byBjaGFuZ2UgYW55dGhpbmcgaW4gdGhlIGtlcm5lbC4KPiA+ID4gPgo+ID4g
PiAKPiA+ID4gRXh0ZXJuYWwgZGVidWdnZXIgaGFzIHRoZSBmdW5jdGlvbiB0byB0cmFwIGFjY2Vz
cyB0byBkZWJ1ZyByZWdpc3RlcnMKPiA+ID4gbm93Lgo+ID4gPiBXaGF0IGRvIHdlIGV4cGVjdCBk
ZWJ1Z2dlciB0byBkbyBhZnRlciBjb3JlIGlzIHN0b3BwZWQ/IFNraXAgdGhhdCBtc3IKPiA+ID4g
aW5zdHJ1Y3Rpb24gYW5kIGNvbnRpbnVlIHRvIHJ1bj8KPiA+IAo+ID4gVGhlIG5pY2VzdCB0aGlu
ZyB0byBkbyB3b3VsZCBwcm9iYWJseSBiZSB0byByZWNvcmQgYWxsIHRoZSBhY2Nlc3NlcyBtYWRl
Cj4gPiBieSB0aGUgT1Mgc28gdGhhdCBpdCBjYW4gZW11bGF0ZSByZWFkcyBhbmQgcmVwbGF5IHdy
aXRlcyB3aGVuIGV4dGVybmFsCj4gPiBkZWJ1Z2dpbmcgaXMgb3Zlci4gR2l2ZW4gdGhhdCB5b3Un
ZCBzdGlsbCBiZSBleHBlY3RpbmcgdG8gcGFzcwo+ID4gIm5vZGVidWdtb24iLAo+ID4gdGhlIGVt
dWxhdGlvbiBzaG91bGQgYmUgcHJldHR5IHN0cmFpZ2h0Zm9yd2FyZCwgSSB0aGluay4KPiA+IAo+
IAo+IFRvIHByb3ZpZGUgYW4gdXBkYXRlIG9uIHRoaXMsIEkndmUgd29ya2VkIHdpdGggZXh0ZXJu
YWwgZGVidWdnZXIgdmVuZG9yIG9uCj4gdGhpcy4KPiBOb3cgZXh0ZXJuYWwgZGVidWdnZXIgY2Fu
IHRyYXAgdGhlIHdyaXRlIHRvIGRlYnVnIHJlZ2lzdGVycyBhbmQgaWdub3JlIHRoZQo+IHdyaXRl
Lgo+IFRoaXMgaXMgdGhlIGZpcnN0IHN0ZXAuCgpUaGFua3MgZm9yIHRoZSB1cGRhdGUhIFBsZWFz
ZSBsZXQgdXMga25vdyBpZiB5b3UgcnVuIGludG8gYW55IHVuZm9yZXNlZW4KcHJvYmxlbXMuCgpX
aWxsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
