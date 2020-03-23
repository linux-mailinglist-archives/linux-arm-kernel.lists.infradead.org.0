Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4B8018FA4F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 17:47:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tjNd1fGpIG9/efOrtQq4c6hEBwyxH/0EMQlz6cTwAqI=; b=nypm2306wHWbTG
	f9etk2kUnhOVtwNe+L1j9hNPAHoXJtuKmGxU49KB9FSJ9Xz/AI1PkY3KPb0xes4jQYICoQ6yYkQHg
	Jv2MIO69I5gnvrTyY01weuejTa1XbWmO9mdWFwPpAeouSaMizRInIbl+Tzu/2qjdzzxqqrORtSPOB
	SYwCAxHUaBpf5F/Z2Alxm8z4pBtMpvdTo9XYKxmFSDSK3nAXeFqbprPQrsj8osbFpILLj5b+/bf6H
	nLPYv8+TUID8qN20sZydsnz48gx5kgG0SDuE2tnKLAWx01Fb7xD1hryFhLgoJWddhVi3be2bCzYdk
	geva+PrJHvn8YQ3MGpDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGQEk-0007pw-9S; Mon, 23 Mar 2020 16:47:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGQEd-0007pU-4b
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 16:47:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 274921FB;
 Mon, 23 Mar 2020 09:47:30 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 91D423F7C3;
 Mon, 23 Mar 2020 09:47:29 -0700 (PDT)
Date: Mon, 23 Mar 2020 16:47:24 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Changbin Du <changbin.du@gmail.com>
Subject: Re: Two questions about cache coherency on arm platforms
Message-ID: <20200323164723.GA8652@lakrids.cambridge.arm.com>
References: <20200323123524.w67fici6oxzdo665@mail.google.com>
 <20200323131720.GE2597@C02TD0UTHF1T.local>
 <20200323161537.ptjrihqotgmon7tr@mail.google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200323161537.ptjrihqotgmon7tr@mail.google.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_094731_227305_1249C8D7 
X-CRM114-Status: GOOD (  16.06  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBNYXIgMjMsIDIwMjAgYXQgMDQ6MTU6NDBQTSArMDAwMCwgQ2hhbmdiaW4gRHUgd3Jv
dGU6Cj4gSGkgTWFyaywKPiBUaGFua3MgZm9yIHlvdXIgYW5zd2VyLiBJIHN0aWxsIGRvbid0IHVu
ZGVyc3RhbmQgdGhlIGZpcnN0IHF1ZXN0aW9uLgo+IAo+IE9uIE1vbiwgTWFyIDIzLCAyMDIwIGF0
IDAxOjE3OjIwUE0gKzAwMDAsIE1hcmsgUnV0bGFuZCB3cm90ZToKPiA+IE9uIE1vbiwgTWFyIDIz
LCAyMDIwIGF0IDA4OjM1OjI2UE0gKzA4MDAsIENoYW5nYmluIER1IHdyb3RlOgo+ID4gPiBIaSwg
QWxsLAo+ID4gPiBJIGFtIG5vdCB2ZXJ5IGZhbWlsaWFyIHdpdGggQVJNIHByb2Nlc3NvcnMuIEkg
aGF2ZSB0d28gcXVlc3Rpb25zIGFib3V0Cj4gPiA+IGNhY2hlIGNvaGVyZW5jeS4gQ291bGQgYW55
b25lIGhlbHAgbWU/Cj4gPiA+IAo+ID4gPiAxLiBIb3cgaXMgY2FjaGUgY29oZXJlbmN5IG1haW50
ZW5hbmNlZCBvbiBBUk12OCBiaWcuTElUVExFIHN5c3RlbT8KPiA+ID4gQXMgZmFyIGFzIEkga25v
dywgYmlnIGNvcmVzIGFuZCBsaXR0bGUgY29yZXMgYXJlIGluIHNlcGVyYXRlIGNsdXN0ZXJzIG9u
Cj4gPiA+IGJpZy5MSVRUTEUgc3lzdGVtLgo+ID4gCj4gPiBUaGlzIGlzIG9mdGVuIHRydWUsIGJ1
dCBub3QgYWx3YXlzIHRoZSBjYXNlLiBGb3IgZXhhbXBsZSwgd2l0aCBEU1UgYmlnCj4gPiBhbmQg
bGl0dGxlIGNvcmVzIGNhbiBiZSBwbGFjZWQgd2l0aGluIHRoZSBzYW1lIGNsdXN0ZXIuCj4gCj4g
WWVzLCBpdCBpcyB0dXJlIGZvciBEeW5hbUlRIHRoYXQgYmwgY29yZXMgY2FuIGJlIHBsYWNlZCB3
aXRoaW4gdGhlIHNhbWUgY2x1c3Rlci4KPiBCdXQgSSBkb24ndCB1bmRlcnN0YW5kIGhvdyBsaW51
eCBzdXBwb3J0IGJpZy5MSVRUTEUgYmVmb3JlIER5bmFtSVEuCgpNdWx0aXBsZSBjbHVzdGVycyBj
YW4gYmUgaW4gdGhlIHNhbWUgSW5uZXIgU2hhcmVhYmxlIGRvbWFpbiwgYW5kIExpbnV4CnJlbGll
cyBvbiB0aGlzIGJlaW5nIHRoZSBjYXNlIGZvciBzeXN0ZW1zIGl0IHN1cHBvcnRzLiBJdCdzIHBv
c3NpYmxlIHRvCmJ1aWxkIGEgc3lzdGVtIHdoZXJlIGNsdXN0ZXJzIGFyZSBpbiBkaXN0aW5jdCBJ
bm5lciBTaGFyZWFibGUgZG9tYWlucywKYnV0IExpbnV4IGRvZXMgbm90IHN1cHBvcnQgdXNpbmcg
YWxsIGNvcmVzIG9uIHN1Y2ggYSBzeXN0ZW0uCgpFdmVuIHdpdGggQ0NJLCBDQ04sIENNTiwgZXRj
LCBMaW51eCByZXF1aXJlcyB0aGF0IGFsbCBjb3JlcyAod2hpY2ggaXQgaXMKdG9sZCBhYm91dCkg
YXJlIGluIHRoZSBzYW1lIElubmVyIFNoYXJlYWJsZSBkb21haW4uIFRoYXQgaXMgd2hhdCBpcwpj
b21tb25seSBidWlsdC4KCj4gSSByZWFkIGJlbG93IGRlc2NyaXB0aW9uIGluIEFSTSBDb3J0ZXgt
QSBTZXJpZXMgUHJvZ3JhbW1lcuKAmXMgR3VpZGUgZm9yCj4gQVJNdjgtQS4KPiAgfCBiaWcuTElU
VExFIHNvZnR3YXJlIG1vZGVscyByZXF1aXJlIHRyYW5zcGFyZW50IGFuZCBlZmZpY2llbnQgdHJh
bnNmZXIgb2YgZGF0YSBiZXR3ZWVuIGJpZyBhbmQgTElUVExFIGNsdXN0ZXJzLgo+ICB8IENvaGVy
ZW5jeSBiZXR3ZWVuIGNsdXN0ZXJzIGlzIHByb3ZpZGVkIGJ5IGEgY2FjaGUtY29oZXJlbnQgaW50
ZXJjb25uZWN0IHN1Y2ggYXMgdGhlIEFSTSBDb3JlTGluayBDQ0ktNDAwIGRlc2NyaWJlZCBpbiBD
aGFwdGVyIDE0Lgo+IAo+IFNvIEkgdGhpbmsgIGJpZyBjb3JlcyBhbmQgbGl0dGxlIGNvcmVzIGFy
ZSBpbiBkaWZmZXJlbnQgY2x1c3RlcnMgaW4gdGhpcwo+IGNhc2UuIFRoZW4gd2UgYXJlIG5vdCB3
aXRoaW4gdGhlIHNhbWUgSW5uZXIgU2hhcmVhYmxlIGRvbWFpbj8KCkxpbnV4IHJlcXVpcmVzIHRo
YXQgdGhvc2UgY2x1c3RlcnMgYXJlIGluIHRoZSBzYW1lIElubmVyIFNoYXJlYWJsZQpkb21haW4s
IGFuZCB0aGF0J3Mgd2hhdCBwZW9wbGUgKG1vc3RseSkgYnVpbGQgdG9kYXkuCgpUaGFua3MsCk1h
cmsuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
