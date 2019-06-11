Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59F003D22F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 18:25:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yMXCz4WpgXIAeHAnGPMrpgtiztWOLd7WHMJ3IHhdlho=; b=HBFonH48BwYaql
	NODbNCER/qKxKQZItwvfgeqbT+nqEuSpQNCBM4vDIkxx6LSkMuVHgjFmv1Rb596mQOKo6pGqtALIm
	bMHCIBSIyXAcZfWhitkNajeITK8BilijIwYsofJxKEtA94XvkfFij3RNPAXkOvI+X+99UEVFHYjSa
	AfGKtNSSDAmGHSqwU8Ml+6aRs0/9gG5ySsJHf+qctVZUAjyiT/PyGv5Kip6nitzJAh427R/D9qmK0
	0vI6KboGLfzA/89LlpxLm2aiASpkcprQOc4Oe84ROw5siXVRmhU+YFK6omd7+TGf+7M0PYoqCzHRL
	pewmtylPo+wxQ+oTWR8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hajae-0007oN-7d; Tue, 11 Jun 2019 16:25:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hajaR-0007nr-8P
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 16:25:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9D348337;
 Tue, 11 Jun 2019 09:25:24 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 46FF23F73C;
 Tue, 11 Jun 2019 09:25:23 -0700 (PDT)
Date: Tue, 11 Jun 2019 17:25:21 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Alan Hayward <Alan.Hayward@arm.com>
Subject: Re: [PATCH 0/2] arm64/sve: Fix mutating register endianness on
 big-endian
Message-ID: <20190611162520.GO28398@e103592.cambridge.arm.com>
References: <1559839495-22315-1-git-send-email-Dave.Martin@arm.com>
 <20190607093858.GA21378@fuggles.cambridge.arm.com>
 <20190607154832.GH28398@e103592.cambridge.arm.com>
 <207E140D-AC57-4B0D-B838-94B92BE2B0A0@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <207E140D-AC57-4B0D-B838-94B92BE2B0A0@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_092527_346870_B965335F 
X-CRM114-Status: GOOD (  23.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Peter Maydell <peter.maydell@linaro.org>,
 Catalin Marinas <Catalin.Marinas@arm.com>, Will Deacon <Will.Deacon@arm.com>,
 Zhang Lei <zhang.lei@jp.fujitsu.com>, Julien Grall <Julien.Grall@arm.com>,
 "gdb@sourceware.org" <gdb@sourceware.org>, nd <nd@arm.com>,
 Alex =?iso-8859-1?Q?Benn=E9e?= <alex.bennee@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBKdW4gMTEsIDIwMTkgYXQgMDQ6MTY6MTFQTSArMDAwMCwgQWxhbiBIYXl3YXJkIHdy
b3RlOgo+IAo+IAo+ID4gT24gNyBKdW4gMjAxOSwgYXQgMTY6NDgsIERhdmUgTWFydGluIDxEYXZl
Lk1hcnRpbkBhcm0uY29tPiB3cm90ZToKPiA+IAo+ID4gT24gRnJpLCBKdW4gMDcsIDIwMTkgYXQg
MTA6Mzg6NThBTSArMDEwMCwgV2lsbCBEZWFjb24gd3JvdGU6Cj4gPj4gT24gVGh1LCBKdW4gMDYs
IDIwMTkgYXQgMDU6NDQ6NTNQTSArMDEwMCwgRGF2ZSBNYXJ0aW4gd3JvdGU6Cj4gPj4+IEJ5IGlu
c3BlY3Rpb24gd2hpbGUgZGVidWdnaW5nIHNvbWV0aGluZyBlbHNlLCBJIG5vdGljZWQgdGhhdCB0
aGUgYnl0ZQo+ID4+PiBvcmRlciBvZiBGUFNJTUQgVi1yZWdpc3RlciBzdG9yZXMgYW5kIFNWRSBa
LXJlZ2lzdGVyIHN0b3JlcyBpcyBub3QgdGhlCj4gPj4+IHNhbWUgd2hlbiBydW5uaW5nIG9uIGJp
Zy1lbmRpYW4uCj4gPj4+IAo+ID4+PiBUaGlzIGlzIG5vdCBwcm9wZXJseSB0YWtlbiBpbnRvIGFj
Y291bnQgd2hlbiBtb3ZpbmcgYmV0d2VlbiB0aGUgRlBTSU1ECj4gPj4+IGFuZCBTVkUgcmVnaXN0
ZXIgdmlld3MgaW5zaWRlIHRoZSBrZXJuZWwsIHJlc3VsdGluZyBpbiB0aGUgYnl0ZXMgb2YgYQo+
ID4+PiBWLXJlZ2lzdGVyIGdldHRpbmcgc3BvbnRhbmVvdXNseSByZXZlcnNlZCBpbiBzb21lIHNp
dHVhdGlvbnMsIGZyb20KPiA+Pj4gdXNlcnNwYWNlJ3MgcG9pbnQgb2Ygdmlldy4gIFRoZSBzaWdu
YWwgZnJhbWUgYW5kIHB0cmFjZSBpbnRlcmZhY2UgYXJlCj4gPj4+IGFsc28gYWZmZWN0ZWQuICBU
aGUgS1ZNIEFCSSBmb3JiaWRzIG1peGluZyB0aGUgdHdvIHZpZXdzIGFuZCBzbyBzaG91bGQKPiA+
Pj4gbm90IGJlIGFmZmVjdGVkLgo+ID4+PiAKPiA+Pj4gU2VlIHBhdGNoIDIgZm9yIGRldGFpbHMu
Cj4gPj4+IAo+ID4+PiBQYXRjaCAxIGRvZXMgc29tZSB0cml2aWFsIHByZXBhcmF0b3J5IHJlZmFj
dG9yaW5nLgo+ID4+IAo+ID4+IFNvcnJ5IHRvIGJlIGEgcGFpbiwgYnV0IHdvdWxkIHlvdSBiZSBh
YmxlIHRvIGZsaXAgdGhpcyBzZXJpZXMgcm91bmQgc28gdGhhdAo+ID4+IHRoZSBmaXggZG9lc24n
dCBkZXBlbmQgb24gdGhlIHJlZmFjdG9yaW5nLCBwbGVhc2U/IFRoYXQgd2F5IHdlIGNhbiBwdXQg
aXQKPiA+PiBpbnRvIHN0YWJsZSB3aXRob3V0IHRoZSBkZXBlbmRlbmN5Lgo+ID4+IAo+ID4+PiBn
ZGIgbWF5IG9yIG1heSBub3QgYmUgYWZmZWN0ZWQgYnkgdGhpcywgZGVwZW5kaW5nIG9uIGhvdyBp
dCB1c2VzIHRoZQo+ID4+PiBOVF9QUkZQUkVHIGFuZCBOVF9BUk1fU1ZFIHJlZ3NldHMuICBJJ2xs
IGxlYXZlIGl0IHRvIHRoZSBkZXZlbG9wZXJzIHRvCj4gPj4+IGFzc2VzcyB0aGF0Lgo+ID4+IAo+
ID4+IFdvdWxkbid0IHRoaXMgYmUgZWFzeSBlbm91Z2ggdG8gdGVzdD8KPiA+IAo+ID4gU28sIGdk
YiB3b3JrcyBPSyBvbiBiaWctZW5kaWFuIGJ1dCB3ZWlyZCBzdHVmZiBoYXBwZW5pbmcgb24gYm90
aCB3aXRoCj4gPiBhbmQgd2l0aG91dCB0aGUgZml4Lgo+ID4gCj4gPiBUaGVyZSBhcmUgcGxhY2Vz
IGluIHRoZSBnZGIgY29kZSBpdHNlbGYgd2hlcmUgaXQgaXMgbGlrZWx5IG1pc3NpbmcKPiA+IGVu
ZGlhbm5lc3MgY29udmVyc2lvbnMsIGJ1dCBJIG5lZWQgdG8gZm9sbG93IHVwIHdpdGggdGhlIGdk
YiBmb2xrcyB0bwo+ID4gY2xhcmlmeSB3aGV0aGVyIG15IHBhdGNoIGlzIG1pc3Npbmcgc29tZXRo
aW5n4oCmCj4gCj4gKEkgYWRkZWQgdGhlIFNWRSBzdXBwb3J0IGZvciBHREIpLgo+IAo+IEnigJl2
ZSB0cmllZCB0aGVzZSBjaGFuZ2VzIG91dCBteXNlbGYgdXNpbmcgR0RCLgo+IFdpdGggeW91ciBj
aGFuZ2VzIGV2ZXJ5dGhpbmcgbG9va3MgZ29vZCwgYXBhcnQgZnJvbToKPiAqIEdEQiBnZXRzIGl0
IHdyb25nIHdoZW4gdGhlIHB0cmFjZSBzdmUgc3RydWN0dXJlIGNvbnRhaW5zIGEgZnBzaW1kLgo+
ICogSSBuZWVkIHRvIGRvIHNvbWUgdGVzdGluZyBhcm91bmQgc2lnY29udGV4dHMsIGJ1dCBhZ2Fp
biBJIHRoaW5rIEdEQgo+ICAgd2lsbCBuZWVkIGEgc2xpZ2h0IGNoYW5nZS4KPiBJ4oCZbGwgZ2V0
IHNvbWUgcGF0Y2hlcyB0b2dldGhlciBmb3IgR0RCLgo+IAo+IAo+ID4gVGhlIHB0cmFjZSBjaGFu
Z2UgaXMgdGhlb3JldGljYWxseSBhbiBBQkkgYnJlYWssIGJ1dCBzaW5jZSB0aGUgY3VycmVudAo+
ID4gYmVoYXZpb3VyIGlzIG9idmlvdXNseSB3cm9uZywgSSBjb25zaWRlciB0aGlzIGEgZml4Lgo+
IAo+IEnigJltIGhhcHB5IHdpdGggdGhpcyBjaGFuZ2UgZnJvbSBHREIncyBzaWRlLgoKT0ssIHRo
YW5rcyBmb3IgY29uZmlybWluZy4KCkNoZWVycwotLS1EYXZlCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
