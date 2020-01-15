Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C00613C284
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 14:23:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JsvXhtOoLQM2/5YsG0+RYLWo8rNFMDa0LQACgxdS3dY=; b=atIIZpHy92AVSR8LjmxICe56p
	SQwjuoR9nSOxXA3yuxmM51eqWO04ZX4uxRHELwRwGcrraAtSgYHWI9XJiYhjF/bcJ3cfgLbdyTmfL
	vL+EW1sqlBv6h2GEFSeF2EYPf6eo8UgbaL0+wulilA1YzJGsKLwF+U+dgdTg0DvSlC3icif9Zg8x0
	N6FI1nXo81PxzWbXJwsrX2n1zP2SeMHq+vxpMBPUnFMcqW6wVllR5M/Pr2XKJFkFhEd0IuchAUC7W
	2O0HVVRTulETeJdUpKW8biRAnKmhFZXwGlDV2QlhHLvNF9zQnRtsBoJt9wiGlCuDv7S9kaftTqex8
	0fIatzD2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iridV-0003KK-8b; Wed, 15 Jan 2020 13:23:05 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iridJ-0003H3-96; Wed, 15 Jan 2020 13:22:57 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id E984AADE3;
 Wed, 15 Jan 2020 13:22:51 +0000 (UTC)
Subject: Re: [PATCH v4 2/8] ARM: Prepare Realtek RTD1195
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Olof Johansson <olof@lixom.net>,
 Arnd Bergmann <arnd@arndb.de>
References: <20191123203759.20708-1-afaerber@suse.de>
 <20191123203759.20708-3-afaerber@suse.de>
 <bfe6448c-0e06-f0cd-460f-6aabc667f5e2@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <f562b62e-6c42-c823-a7ec-caf01a9cf75b@suse.de>
Date: Wed, 15 Jan 2020 14:22:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <bfe6448c-0e06-f0cd-460f-6aabc667f5e2@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_052253_609083_B7CCD08C 
X-CRM114-Status: GOOD (  20.14  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMDUuMDEuMjAgdW0gMDY6NTIgc2NocmllYiBBbmRyZWFzIEbDpHJiZXI6Cj4gQW0gMjMuMTEu
MTkgdW0gMjE6Mzcgc2NocmllYiBBbmRyZWFzIEbDpHJiZXI6Cj4+IEludHJvZHVjZSBBUkNIX1JF
QUxURUsgS2NvbmZpZyBvcHRpb24gYWxzbyBmb3IgMzItYml0IEFybS4KPj4KPj4gT3ZlcnJpZGUg
dGhlIHRleHQgb2Zmc2V0IHRvIGNvcGUgd2l0aCBib290IFJPTSBvY2N1cHlpbmcgZmlyc3QgMHhh
ODAwCj4+IGJ5dGVzIGFuZCBmdXJ0aGVyIHJlc2VydmF0aW9ucyB1cCB0byAweGY0MDAwIChjb21w
YXJlIERldmljZSBUcmVlKS4KPj4KPj4gQWRkIGEgY3VzdG9tIG1hY2hpbmVfZGVzYyB0byBlbmZv
cmNlIG1lbW9yeSBjYXJ2ZW91dCBmb3IgSS9PIHJlZ2lzdGVycy4KPj4KPj4gU2lnbmVkLW9mZi1i
eTogQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBzdXNlLmRlPgo+PiAtLS0KPj4gwqAgdjMgLT4g
djQ6Cj4+IMKgICogQWRkZWQgcmVzZXJ2YXRpb24gb2YgYm9vdCBST00gKEphbWVzKQo+PiDCoCB2
MiAtPiB2MzoKPj4gwqAgKiBGaXhlZCByLWJ1cyBzaXplIGluIC5yZXNlcnZlIGZyb20gMHgxMDAw
MDAgdG8gMHg3MDAwMCAoSmFtZXMpCj4+IMKgIHYxIC0+IHYyOgo+PiDCoCAqIERyb3BwZWQgc2Vs
ZWN0aW9uIG9mIENPTU1PTl9DTEsgKEFybmQpCj4+IMKgICogRHJvcHBlZCBzZWxlY3Rpb24gb2Yg
QU1CQSwgU0NVLCBUV0QKPj4gwqAgKiBBZGRlZCBjb21tZW50IGFib3V0IHRleHQgb2Zmc2V0IHRv
IGRpc3Rpbmd1aXNoIGZyb20gSFRDIGNvbW1lbnQgYWJvdmUKPj4gwqAgKiBBZGRlZCBtYWNoaW5l
X2Rlc2Mgd2l0aCAucmVzZXJ2ZSB0byBleGNsdWRlIHBlcmlwaGVyYWwgc3BhY2VzIChSb2IpCj4+
IMKgIGFyY2gvYXJtL0tjb25maWfCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDIg
KysKPj4gwqAgYXJjaC9hcm0vTWFrZWZpbGXCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzC
oCAzICsrKwo+PiDCoCBhcmNoL2FybS9tYWNoLXJlYWx0ZWsvS2NvbmZpZ8KgwqAgfCAxMSArKysr
KysrKysrKwo+PiDCoCBhcmNoL2FybS9tYWNoLXJlYWx0ZWsvTWFrZWZpbGXCoCB8wqAgMiArKwo+
PiDCoCBhcmNoL2FybS9tYWNoLXJlYWx0ZWsvcnRkMTE5NS5jIHwgNDAgCj4+ICsrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPj4gwqAgNSBmaWxlcyBjaGFuZ2VkLCA1OCBp
bnNlcnRpb25zKCspCj4+IMKgIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9tYWNoLXJlYWx0
ZWsvS2NvbmZpZwo+PiDCoCBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm0vbWFjaC1yZWFsdGVr
L01ha2VmaWxlCj4+IMKgIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9tYWNoLXJlYWx0ZWsv
cnRkMTE5NS5jCj4gCj4gVGhpcyBwYXRjaCB3YXMgbGFja2luZyBhIE1BSU5UQUlORVJTIHVwZGF0
ZS4gU3F1YXNoaW5nOgo+IAo+IGRpZmYgLS1naXQgYS9NQUlOVEFJTkVSUyBiL01BSU5UQUlORVJT
Cj4gaW5kZXggN2I2MjY1NjNmYjNjLi5iNDg0NjE3MzY5NzEgMTAwNjQ0Cj4gLS0tIGEvTUFJTlRB
SU5FUlMKPiArKysgYi9NQUlOVEFJTkVSUwo+IEBAIC0yMjA0LDYgKzIyMDQsNyBAQCBNOsKgwqDC
oMKgwqDCoMKgIEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5kZT4KPiAgwqBMOsKgwqDC
oMKgIGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZyAobW9kZXJhdGVkIGZvciAK
PiBub24tc3Vic2NyaWJlcnMpCj4gIMKgTDrCoMKgwqDCoCBsaW51eC1yZWFsdGVrLXNvY0BsaXN0
cy5pbmZyYWRlYWQub3JnIChtb2RlcmF0ZWQgZm9yIAo+IG5vbi1zdWJzY3JpYmVycykKPiAgwqBT
OsKgwqDCoMKgIE1haW50YWluZWQKPiArRjrCoMKgwqDCoCBhcmNoL2FybS9tYWNoLXJlYWx0ZWsv
Cj4gIMKgRjrCoMKgwqDCoCBhcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvCj4gIMKgRjrCoMKg
wqDCoCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JlYWx0ZWsueWFtbAo+
IAo+IAo+IFVuZm9ydHVuYXRlbHkgdGhpcyBvbiB2NS42L3NvYyBicmFuY2ggd2lsbCBjb25mbGlj
dCB3aXRoIGFkZGluZyBhbiBlbnRyeSAKPiBmb3IgdGhlIERUcyBvbiB2NS42L2R0IGJyYW5jaCwg
c28gSSBndWVzcyB0aGUgYmVzdCB3YXkgdG8gaGFuZGxlIHRoaXMgCj4gd2lsbCBiZSBhIGZvbGxv
dy11cCBwYXRjaCBmb3IgdGhlIHY1LjYvc29jIGJyYW5jaCAod2hpY2ggbWF5IHRyaWdnZXIgCj4g
cGF0dGVybiB3YXJuaW5ncyBkdWUgdG8gdGhlIGZpbGVzIGdldHRpbmcgYWRkZWQgb24gYSBkaWZm
ZXJlbnQgYnJhbmNoKT8KPiAKPiBkaWZmIC0tZ2l0IGEvTUFJTlRBSU5FUlMgYi9NQUlOVEFJTkVS
Uwo+IGluZGV4IGI0ODQ2MTczNjk3MS4uMDEwODFiZWEyNDg4IDEwMDY0NAo+IC0tLSBhL01BSU5U
QUlORVJTCj4gKysrIGIvTUFJTlRBSU5FUlMKPiBAQCAtMjIwNCw2ICsyMjA0LDcgQEAgTTrCoMKg
wqDCoMKgwqDCoCBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+Cj4gIMKgTDrCoMKg
wqDCoCBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcgKG1vZGVyYXRlZCBmb3Ig
Cj4gbm9uLXN1YnNjcmliZXJzKQo+ICDCoEw6wqDCoMKgwqAgbGludXgtcmVhbHRlay1zb2NAbGlz
dHMuaW5mcmFkZWFkLm9yZyAobW9kZXJhdGVkIGZvciAKPiBub24tc3Vic2NyaWJlcnMpCj4gIMKg
UzrCoMKgwqDCoCBNYWludGFpbmVkCj4gK0Y6wqDCoMKgwqAgYXJjaC9hcm0vYm9vdC9kdHMvcnRk
Kgo+ICDCoEY6wqDCoMKgwqAgYXJjaC9hcm0vbWFjaC1yZWFsdGVrLwo+ICDCoEY6wqDCoMKgwqAg
YXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrLwo+ICDCoEY6wqDCoMKgwqAgRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yZWFsdGVrLnlhbWwKCk5vIHJlc3BvbnNlcywgc28g
YWxzbyBhcHBsaWVkIHRvIGxpbnV4LXJlYWx0ZWsuZ2l0IHY1LjYvc29jOgoKaHR0cHM6Ly9naXQu
a2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvYWZhZXJiZXIvbGludXgtcmVhbHRl
ay5naXQvbG9nLz9oPXY1LjYvc29jCgpSZWdhcmRzLApBbmRyZWFzCgotLSAKU1VTRSBTb2Z0d2Fy
ZSBTb2x1dGlvbnMgR2VybWFueSBHbWJICk1heGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJuYmVyZywg
R2VybWFueQpHRjogRmVsaXggSW1lbmTDtnJmZmVyCkhSQiAzNjgwOSAoQUcgTsO8cm5iZXJnKQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
