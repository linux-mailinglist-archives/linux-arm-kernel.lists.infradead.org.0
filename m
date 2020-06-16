Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 394021FBB44
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 18:18:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=48xw+ZaV0TimK+3zvCeHYS4J82kMCckMl2c8gaKgEVk=; b=KqpJTfjyPaPlGIER1ea806izh
	dU1fToJSeBvvyurtIo82bRpr0sLgprOiqLLQVut/y6eYDwCxBZvFw/eLeRZEiM4szAapF7WTtObcB
	bjvZE/JvhMOxw8DBHmky4fjhI4fyqU+UBwESGfVGnCy1qcis5iH/cchooxVXJAqqfp2JfyXUiKuv9
	XJVnqKklXLp015x6a0iIomz3H2qqwbZZgKItu0yvZxqO1wLIZo773CNI2PuwBo+XvChI9MOrPhMfL
	tzIxuLZcuiAPTU8QNIf0LNKkvHbwS6+zvzlJ47sM6yTb16yyWhTA5LbFSNNTAFkM2ZcUD/VkS8tXU
	YftbFWP6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlEI6-0001au-44; Tue, 16 Jun 2020 16:18:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlEHu-0001aY-5D
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 16:18:15 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6C81D208D5;
 Tue, 16 Jun 2020 16:18:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592324293;
 bh=v5Sj0/W7MtjRrwZAvkLObkjzwoc3n0cYPg8rAVInY3k=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=mdQ4BO7YQCZj7QvOntSivuktFmpERfCFOg9s2NLJbfRUPSzSOkKfTLjZNsI13cWOb
 F1jGT7Kr0BzT5nqBhw8oF9AW99F0f7oq6tVbUOP1Fd6PdpIJvE5BJGGB/tukkHmCvn
 XawWKe7tJYlcqn2DvK3W33JhaZ7ZyUBOIH93WEnc=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jlEHr-003UeY-Sa; Tue, 16 Jun 2020 17:18:12 +0100
MIME-Version: 1.0
Date: Tue, 16 Jun 2020 17:18:11 +0100
From: Marc Zyngier <maz@kernel.org>
To: Alexandru Elisei <alexandru.elisei@arm.com>
Subject: Re: [PATCH v2 01/17] KVM: arm64: Factor out stage 2 page table data
 from struct kvm
In-Reply-To: <17d37bde-2fc8-d165-ee02-7640fc561167@arm.com>
References: <20200615132719.1932408-1-maz@kernel.org>
 <20200615132719.1932408-2-maz@kernel.org>
 <17d37bde-2fc8-d165-ee02-7640fc561167@arm.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <9c0044564885d3356f76b55f35426987@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: alexandru.elisei@arm.com,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org, andre.przywara@arm.com, christoffer.dall@arm.com,
 Dave.Martin@arm.com, jintack@cs.columbia.edu, gcherian@marvell.com,
 prime.zeng@hisilicon.com, ascull@google.com, will@kernel.org,
 catalin.marinas@arm.com, mark.rutland@arm.com, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com, kernel-team@android.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_091814_237127_487451DF 
X-CRM114-Status: GOOD (  27.57  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, kernel-team@android.com,
 kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Jintack Lim <jintack@cs.columbia.edu>, Andre Przywara <andre.przywara@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, kvmarm@lists.cs.columbia.edu,
 George Cherian <gcherian@marvell.com>, James Morse <james.morse@arm.com>,
 Andrew Scull <ascull@google.com>, "Zengtao \(B\)" <prime.zeng@hisilicon.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQWxleGFuZHJ1LAoKT24gMjAyMC0wNi0xNiAxNjo1OSwgQWxleGFuZHJ1IEVsaXNlaSB3cm90
ZToKPiBIaSwKPiAKPiBJTU8sIHRoaXMgcGF0Y2ggZG9lcyB0d28gZGlmZmVyZW50IHRoaW5nczog
YWRkcyBhIG5ldyBzdHJ1Y3R1cmUsIAo+IGt2bV9zMl9tbXUsIGFuZAo+IGNvbnZlcnRzIHRoZSBt
ZW1vcnkgbWFuYWdlbWVudCBjb2RlIHRvIHVzZSB0aGUgNCBsZXZlbCBwYWdlIHRhYmxlIEFQSS4g
Cj4gSSByZWFsaXplCj4gaXQncyBwYWluZnVsIHRvIGNvbnZlcnQgdGhlIE1NVSBjb2RlIHRvIHVz
ZSB0aGUgcDRkIGZ1bmN0aW9ucywgYW5kIHRoZW4gCj4gbW9kaWZ5Cj4gZXZlcnl0aGluZyB0byB1
c2Uga3ZtX3MyX21tdSBpbiBhIHNlcGFyYXRlIHBhdGNoLCBidXQgSSBiZWxpZXZlCj4gc3BsaXR0
aW5nIGl0IGludG8KPiAyIHdvdWxkIGJlIGJldHRlciBpbiB0aGUgbG9uZyBydW4uIFRoZSByZXN1
bHRpbmcgcGF0Y2hlcyB3aWxsIGJlCj4gc21hbGxlciBhbmQgYm90aAo+IHdpbGwgaGF2ZSBhIGJl
dHRlciBjaGFuY2Ugb2YgYmVpbmcgcmV2aWV3ZWQgYnkgdGhlIHJpZ2h0IHBlb3BsZS4KCkknbSBu
b3Qgc3VyZSBob3cgeW91IHdhbnQgbWUgdG8gZG8gdGhpcy4gVGhlIHdob2xlIHA0ZCBtZXNzIGlz
IGFscmVhZHkgCmluIG1haW5saW5lICh3ZW50IHZpYSBha3BtIGRpcmVjdGx5IHRvIExpbnVzKSwg
YW5kIEkgY2FuJ3QgcmVhbGx5IHJldmVydCAKaXQuCgo+IEVpdGhlciB3YXksIHRoZXJlIHdlcmUg
c3RpbGwgc29tZSBzdWdnZXN0aW9ucyBsZWZ0IG92ZXIgZnJvbSB2MSwgSSAKPiBkb24ndCBrbm93
IGlmCj4gdGhleSB3ZXJlIHdlcmUgdG9vIG1pbm9yL3N1YmplY3RpdmUgdG8gaW1wbGVtZW50LCBv
ciB0aGV5IHdlcmUgCj4gb3Zlcmxvb2tlZC4gSSdsbAo+IHJlLXBvc3QgdGhlbSBoZXJlIGFuZCBJ
J2xsIHRyeSB0byByZXZpZXcgdGhlIHBhdGNoIGFnYWluIG9uY2UgSSBmaWd1cmUKPiBvdXQgaG93
IHRoZSAgcDRkIGNoYW5nZXMgZml0IGluLgoKU29ycnksIEkgbXVzdCBoYXZlIGRyb3BwZWQgdGhl
IGJhbGwgb24geW91ciBjb21tZW50cy4KCj4gCj4gT24gNi8xNS8yMCAyOjI3IFBNLCBNYXJjIFp5
bmdpZXIgd3JvdGU6Cj4+IEZyb206IENocmlzdG9mZmVyIERhbGwgPGNocmlzdG9mZmVyLmRhbGxA
YXJtLmNvbT4KPj4gCj4+IEFzIHdlIGFyZSBhYm91dCB0byByZXVzZSBvdXIgc3RhZ2UgMiBwYWdl
IHRhYmxlIG1hbmlwdWxhdGlvbiBjb2RlIGZvcgo+PiBzaGFkb3cgc3RhZ2UgMiBwYWdlIHRhYmxl
cyBpbiB0aGUgY29udGV4dCBvZiBuZXN0ZWQgdmlydHVhbGl6YXRpb24sIHdlCj4+IGFyZSBnb2lu
ZyB0byBtYW5hZ2UgbXVsdGlwbGUgc3RhZ2UgMiBwYWdlIHRhYmxlcyBmb3IgYSBzaW5nbGUgVk0u
Cj4+IAo+PiBUaGlzIHJlcXVpcmVzIHNvbWUgcHJldHR5IGludmFzaXZlIGNoYW5nZXMgdG8gb3Vy
IGRhdGEgc3RydWN0dXJlcywKPj4gd2hpY2ggbW92ZXMgdGhlIHZtaWQgYW5kIHBnZCBwb2ludGVy
cyBpbnRvIGEgc2VwYXJhdGUgc3RydWN0dXJlIGFuZAo+PiBjaGFuZ2UgcHJldHR5IG11Y2ggYWxs
IG9mIG91ciBtbXUgY29kZSB0byBvcGVyYXRlIG9uIHRoaXMgc3RydWN0dXJlCj4+IGluc3RlYWQu
Cj4+IAo+PiBUaGUgbmV3IHN0cnVjdHVyZSBpcyBjYWxsZWQgc3RydWN0IGt2bV9zMl9tbXUuCj4+
IAo+PiBUaGVyZSBpcyBubyBpbnRlbmRlZCBmdW5jdGlvbmFsIGNoYW5nZSBieSB0aGlzIHBhdGNo
IGFsb25lLgo+PiAKPj4gUmV2aWV3ZWQtYnk6IEphbWVzIE1vcnNlIDxqYW1lcy5tb3JzZUBhcm0u
Y29tPgo+PiBbRGVzaWduZWQgZGF0YSBzdHJ1Y3R1cmUgbGF5b3V0IGluIGNvbGxhYm9yYXRpb25d
Cj4+IFNpZ25lZC1vZmYtYnk6IENocmlzdG9mZmVyIERhbGwgPGNocmlzdG9mZmVyLmRhbGxAYXJt
LmNvbT4KPj4gQ28tZGV2ZWxvcGVkLWJ5OiBNYXJjIFp5bmdpZXIgPG1hekBrZXJuZWwub3JnPgo+
PiBbbWF6OiBNb3ZlZCB0aGUgbGFzdF92Y3B1X3JhbiBkb3duIHRvIHRoZSBTMiBNTVUgc3RydWN0
dXJlIGFzIHdlbGxdCj4+IFNpZ25lZC1vZmYtYnk6IE1hcmMgWnluZ2llciA8bWF6QGtlcm5lbC5v
cmc+Cj4+IC0tLQo+PiAgYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9rdm1fYXNtLmggIHwgICA3ICst
Cj4+ICBhcmNoL2FybTY0L2luY2x1ZGUvYXNtL2t2bV9ob3N0LmggfCAgMzIgKysrLQo+PiAgYXJj
aC9hcm02NC9pbmNsdWRlL2FzbS9rdm1fbW11LmggIHwgIDE2ICstCj4+ICBhcmNoL2FybTY0L2t2
bS9hcm0uYyAgICAgICAgICAgICAgfCAgMzYgKystLQo+PiAgYXJjaC9hcm02NC9rdm0vaHlwL3N3
aXRjaC5jICAgICAgIHwgICA4ICstCj4+ICBhcmNoL2FybTY0L2t2bS9oeXAvdGxiLmMgICAgICAg
ICAgfCAgNTIgKysrLS0tCj4+ICBhcmNoL2FybTY0L2t2bS9tbXUuYyAgICAgICAgICAgICAgfCAy
NzggCj4+ICsrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLQo+PiAgNyBmaWxlcyBjaGFuZ2Vk
LCAyMzMgaW5zZXJ0aW9ucygrKSwgMTk2IGRlbGV0aW9ucygtKQo+PiAKPj4gWy4uXQo+PiBkaWZm
IC0tZ2l0IGEvYXJjaC9hcm02NC9rdm0vYXJtLmMgYi9hcmNoL2FybTY0L2t2bS9hcm0uYwo+PiBp
bmRleCA5MGNiOTA1NjE0NDYuLjM2MDM5NmVjYzZkMyAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm02
NC9rdm0vYXJtLmMKPj4gKysrIGIvYXJjaC9hcm02NC9rdm0vYXJtLmMKPiAKPiBUaGVyZSdzIHN0
aWxsIG9uZSBjb21tZW50IGluIHRoZSBmaWxlIHRoYXQgcmVmZXJzIHRvIGFyY2gudm1pZDoKPiAK
PiBzdGF0aWMgYm9vbCBuZWVkX25ld192bWlkX2dlbihzdHJ1Y3Qga3ZtX3ZtaWQgKnZtaWQpCj4g
ewo+IMKgwqDCoCB1NjQgY3VycmVudF92bWlkX2dlbiA9IGF0b21pYzY0X3JlYWQoJmt2bV92bWlk
X2dlbik7Cj4gwqDCoMKgIHNtcF9ybWIoKTsgLyogT3JkZXJzIHJlYWQgb2Yga3ZtX3ZtaWRfZ2Vu
IGFuZCBrdm0tPmFyY2gudm1pZCAqLwo+IMKgwqDCoCByZXR1cm4gdW5saWtlbHkoUkVBRF9PTkNF
KHZtaWQtPnZtaWRfZ2VuKSAhPSBjdXJyZW50X3ZtaWRfZ2VuKTsKPiB9Cj4gCj4gVGhlIGNvbW1l
bnQgY291bGQgYmUgcmVwaHJhc2VkIHRvIHJlbW92ZSB0aGUgcmVmZXJlbmNlIHRvCj4ga3ZtLT5h
cmNoLnZtaWQ6ICJPcmRlcnMKPiByZWFkIG9mIGt2bV92bWlkX2dlbiBhbmQga3ZtX3MyX21tdS0+
dm1pZCIuCgpZdXAsIGRlZmluaXRlbHkgdXNlZnVsLgoKPiAKPj4gWy4uXQo+PiAKPj4gZGlmZiAt
LWdpdCBhL2FyY2gvYXJtNjQva3ZtL21tdS5jIGIvYXJjaC9hcm02NC9rdm0vbW11LmMKPj4gaW5k
ZXggOGMwMDM1Y2FiNmI2Li40YTQ0MzdiZTRiYzUgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtNjQv
a3ZtL21tdS5jCj4+ICsrKyBiL2FyY2gvYXJtNjQva3ZtL21tdS5jCj4+IAo+PiBbLi5dCj4+IAo+
PiAgLyoqCj4+IC0gKiBrdm1fYWxsb2Nfc3RhZ2UyX3BnZCAtIGFsbG9jYXRlIGxldmVsLTEgdGFi
bGUgZm9yIHN0YWdlLTIgCj4+IHRyYW5zbGF0aW9uLgo+PiAtICogQGt2bToJVGhlIEtWTSBzdHJ1
Y3QgcG9pbnRlciBmb3IgdGhlIFZNLgo+PiArICoga3ZtX2luaXRfc3RhZ2UyX21tdSAtIEluaXRp
YWxpc2UgYSBTMiBNTVUgc3RydWNydXJlCj4+ICsgKiBAa3ZtOglUaGUgcG9pbnRlciB0byB0aGUg
S1ZNIHN0cnVjdHVyZQo+PiArICogQG1tdToJVGhlIHBvaW50ZXIgdG8gdGhlIHMyIE1NVSBzdHJ1
Y3R1cmUKPj4gICAqCj4+ICAgKiBBbGxvY2F0ZXMgb25seSB0aGUgc3RhZ2UtMiBIVyBQR0QgbGV2
ZWwgdGFibGUocykgb2Ygc2l6ZSBkZWZpbmVkIAo+PiBieQo+PiAtICogc3RhZ2UyX3BnZF9zaXpl
KGt2bSkuCj4+ICsgKiBzdGFnZTJfcGdkX3NpemUobW11LT5rdm0pLgo+PiAgICoKPj4gICAqIE5v
dGUgd2UgZG9uJ3QgbmVlZCBsb2NraW5nIGhlcmUgYXMgdGhpcyBpcyBvbmx5IGNhbGxlZCB3aGVu
IHRoZSBWTSAKPj4gaXMKPj4gICAqIGNyZWF0ZWQsIHdoaWNoIGNhbiBvbmx5IGJlIGRvbmUgb25j
ZS4KPj4gICAqLwo+PiAtaW50IGt2bV9hbGxvY19zdGFnZTJfcGdkKHN0cnVjdCBrdm0gKmt2bSkK
Pj4gK2ludCBrdm1faW5pdF9zdGFnZTJfbW11KHN0cnVjdCBrdm0gKmt2bSwgc3RydWN0IGt2bV9z
Ml9tbXUgKm1tdSkKPj4gIHsKPj4gIAlwaHlzX2FkZHJfdCBwZ2RfcGh5czsKPj4gIAlwZ2RfdCAq
cGdkOwo+PiArCWludCBjcHU7Cj4+IAo+PiAtCWlmIChrdm0tPmFyY2gucGdkICE9IE5VTEwpIHsK
Pj4gKwlpZiAobW11LT5wZ2QgIT0gTlVMTCkgewo+PiAgCQlrdm1fZXJyKCJrdm1fYXJjaCBhbHJl
YWR5IGluaXRpYWxpemVkP1xuIik7Cj4+ICAJCXJldHVybiAtRUlOVkFMOwo+PiAgCX0KPj4gQEAg
LTEwMjQsOCArMTA0MCwyMCBAQCBpbnQga3ZtX2FsbG9jX3N0YWdlMl9wZ2Qoc3RydWN0IGt2bSAq
a3ZtKQo+PiAgCWlmIChXQVJOX09OKHBnZF9waHlzICYgfmt2bV92dHRicl9iYWRkcl9tYXNrKGt2
bSkpKQo+PiAgCQlyZXR1cm4gLUVJTlZBTDsKPiAKPiBXZSBkb24ndCBmcmVlIHRoZSBwZ2QgaWYg
d2UgZ2V0IHRoZSBlcnJvciBhYm92ZSwgYnV0IHdlIGRvIGZyZWUgaXQgCj4gYmVsb3csIGlmCj4g
YWxsb2NhdGluZyBsYXN0X3ZjcHVfcmFuIGZhaWxzLiBTaG91bGRuJ3Qgd2UgZnJlZSBpdCBpbiBi
b3RoIGNhc2VzPwoKV29ydGggaW52ZXN0aWdhdGluZy4gVGhpcyBjb2RlIGdldHMgbWFqb3JseSBy
ZXZhbXBlZCBpbiB0aGUgTlYgc2VyaWVzLCAKc28gaXQgaXMgbGlrZWx5IHRoYXQgSSBtaXNzZWQg
c29tZXRoaW5nIGluIHRoZSBtaWRkbGUuCgpUaGFua3MgZm9yIHRoZSBoZWFkcyB1cCEKCiAgICAg
ICAgIE0uCi0tIApKYXp6IGlzIG5vdCBkZWFkLiBJdCBqdXN0IHNtZWxscyBmdW5ueS4uLgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
