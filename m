Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDF49D40C5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 15:14:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HbNNdmvwnal0SP9qbInG8uD9HEahdBdaU4+7w+Xt4gg=; b=W/dEyu0kK2reIq
	/V6bwXdQkP9zHOAmdGdWMVwVFizFmtM0nXh/3Kau8/3Wy9/BS2nX6OTwy9Dh5WEnkzCrCCijfTsv6
	4ffMchZ5nGZAhyvtR8l1oKA0oNMyHvhE36t9GIDMdV2tPQ7c2a46lP08ciJQkMYLdnzokX3TKdCRf
	HdCwlL9S/5kP0cRb0cosvfZ/gMYnQYlCAYDObWPZyGQzX7SBlXVitGzgO2lk23hayI5sE/5l61bv+
	F9+Pt8yuGKa1+NOoHn8G3QnPEiWaVC17yNEHE6yv0r2OADzb3JymMmwz9aJbFYswTFDMbLl6mp+Nu
	2rhvVRPoz8X4UbSfV0Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIukB-0004Vs-CE; Fri, 11 Oct 2019 13:14:07 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIujp-0004L1-Bu; Fri, 11 Oct 2019 13:13:47 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x9BDD8jY081939;
 Fri, 11 Oct 2019 08:13:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1570799588;
 bh=YLTCfOlEBhXcof9xWJVf65ZhWo8Svt9kMFx3/wfvMnA=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=QJcK449tp6L1Ph2cMGQr6+cCdoXIxnEGEVewj2wNc+rsQ0eJijCa29gNHsSxYLwsE
 FHm6nompV9YItAiKvMiIL2+tbnGREsYP6IqXQzJmZ9A1EMr24qi14igsr7pk5++eFP
 4xgNThi/pzRd0HcA/jCkHtP/dl2AIGpk8xSFQWP8=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x9BDD842087479
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 11 Oct 2019 08:13:08 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 11
 Oct 2019 08:13:04 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 11 Oct 2019 08:13:08 -0500
Received: from [172.24.145.136] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x9BDD2tQ115521;
 Fri, 11 Oct 2019 08:13:03 -0500
Subject: Re: [PATCH 04/16] mtd: spi-nor: aspeed: Add read training
To: Boris Brezillon <boris.brezillon@collabora.com>,
 =?UTF-8?Q?C=c3=a9dric_Le_Goater?= <clg@kaod.org>
References: <20191004115919.20788-1-clg@kaod.org>
 <20191004115919.20788-5-clg@kaod.org>
 <20191011142805.6cc3905c@dhcp-172-31-174-146.wireless.concordia.ca>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <a933999d-cb3d-ef3c-8a0d-a1f022817543@ti.com>
Date: Fri, 11 Oct 2019 18:43:33 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191011142805.6cc3905c@dhcp-172-31-174-146.wireless.concordia.ca>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_061345_491966_234A804A 
X-CRM114-Status: GOOD (  21.83  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-aspeed@lists.ozlabs.org,
 Tudor Ambarus <tudor.ambarus@microchip.com>, Andrew Jeffery <andrew@aj.id.au>,
 Richard Weinberger <richard@nod.at>, Marek Vasut <marek.vasut@gmail.com>,
 linux-mtd@lists.infradead.org, Joel Stanley <joel@jms.id.au>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQ2VkcmljLAoKT24gMTEvMTAvMTkgNTo1OCBQTSwgQm9yaXMgQnJlemlsbG9uIHdyb3RlOgo+
IE9uIEZyaSwgIDQgT2N0IDIwMTkgMTM6NTk6MDcgKzAyMDAKPiBDw6lkcmljIExlIEdvYXRlciA8
Y2xnQGthb2Qub3JnPiB3cm90ZToKPiAKPj4gKyNkZWZpbmUgQVNQRUVEX1NNQ19IQ0xLX0RJVihp
KSBcCj4+ICsJKGFzcGVlZF9zbWNfaGNsa19kaXZzWyhpKSAtIDFdIDw8IENPTlRST0xfQ0xPQ0tf
RlJFUV9TRUxfU0hJRlQpCj4+ICsKPj4gK3N0YXRpYyB1MzIgYXNwZWVkX3NtY19kZWZhdWx0X3Jl
YWQoc3RydWN0IGFzcGVlZF9zbWNfY2hpcCAqY2hpcCkKPj4gK3sKPj4gKwkvKgo+PiArCSAqIEtl
ZXAgdGhlIDRCeXRlIGFkZHJlc3MgbW9kZSBvbiB0aGUgQVNUMjQwMCBTUEkgY29udHJvbGxlci4K
Pj4gKwkgKiBPdGhlciBjb250cm9sbGVycyBzZXQgdGhlIDRCeXRlIG1vZGUgaW4gdGhlIENFIENv
bnRyb2wKPj4gKwkgKiBSZWdpc3Rlcgo+PiArCSAqLwo+PiArCXUzMiBjdGxfbWFzayA9IGNoaXAt
PmNvbnRyb2xsZXItPmluZm8gPT0gJnNwaV8yNDAwX2luZm8gPwo+PiArCQkgQ09OVFJPTF9JT19B
RERSRVNTXzRCIDogMDsKPj4gKwo+PiArCXJldHVybiAoY2hpcC0+Y3RsX3ZhbFtzbWNfcmVhZF0g
JiBjdGxfbWFzaykgfAo+PiArCQkoMHgwMCA8PCAyOCkgfCAvKiBTaW5nbGUgYml0ICovCj4+ICsJ
CSgweDAwIDw8IDI0KSB8IC8qIENFIyBtYXggKi8KPj4gKwkJKDB4MDMgPDwgMTYpIHwgLyogdXNl
IG5vcm1hbCByZWFkcyAqLwo+PiArCQkoMHgwMCA8PCAgOCkgfCAvKiBIQ0xLLzE2ICovCj4+ICsJ
CSgweDAwIDw8ICA2KSB8IC8qIG5vIGR1bW15IGN5Y2xlICovCj4+ICsJCSgweDAwKTsgICAgICAg
IC8qIG5vcm1hbCBtb2RlICovCj4gCj4gSUlVQywgeW91J3JlIHVzaW5nIGEgU1BJTk9SX09QX1JF
QUQgb3BlcmF0aW9uIHRvIHJlYWQgdGhlIGdvbGRlbgo+IGJ1ZmZlciwgYW5kIGlmIEknbSByaWdo
dCwgeW91IHN0YXJ0IHJlYWRpbmcgYXQgb2Zmc2V0IDAgb2YgdGhlIGRpcm1hcAo+IHdpbmRvdyAo
b2Zmc2V0IDAgaW4gdGhlIGZsYXNoKSwgc28gYmFzaWNhbGx5IHRoZSBmaXJzdCBibG9jayBpbiB0
aGUgTk9SLgo+IFdoYXQgaGFwcGVucyBpZiB0aGlzIGJsb2NrIGlzIGVyYXNlZD8gSW4gdGhhdCBj
YXNlIHlvdXIgZ29sZGVuIGJ1ZiB3aWxsCj4gY29udGFpbiBvbmx5IDB4ZmYgdmFsdWVzLCBhbmQg
dGhlIHJlYWQgY2FsaWJyYXRpb24gaXMgbGlrZWx5IHRvIGJlCj4gdXNlbGVzcyAoaG93IGNhbiB5
b3UgZGV0ZXJtaW5lIGlmIHRpbWluZ3MgYXJlIGdvb2Qgd2hlbiBJTyBwaW5zIGFsd2F5cwo+IHN0
YXkgaGlnaCkuIERvbid0IHdlIGhhdmUgYSBjb21tYW5kIHRoYXQgcmV0dXJuIG5vbi1mZi9ub24t
MCBkYXRhIHdoaWxlCj4gc3RpbGwgYmVpbmcgcHJlZGljdGFibGUgYW5kIGltbXV0YWJsZT8gRG8g
eW91IGV4cGVjdCB1c2VycyB0byBhbHdheXMKPiBmbGFzaCBhIHBhdHRlcm4gdGhhdCBoZWxwcyBj
YWxpYnJhdGluZyB0aG9zZSBkZWxheXM/Cj4gCgpZZXMsIHRoaXMgaXMgcHJlY2lzZWx5IG15IGNv
bmNlcm4gYXMgd2VsbC4gSSBoYXZlIGJlZW4gZGV2ZWxvcGluZwp0cmFpbmluZyBzZXF1ZW5jZSBm
b3IgY2FkZW5jZS1xdWFkc3BpIGNvbnRyb2xsZXIgKHJlcXVpcmVtZW50cyBhcmUKc2ltaWxhciB0
byB3aGF0IHlvdSBoYXZlIGhlcmUpIGFuZCBmb3VuZCB0aGF0IGl0cyBiZXR0ZXIgdG8gdXNlIHJl
YWQKb25seSBkYXRhIHN1Y2ggYXMgU0ZEUCB0YWJsZSBkYXRhIHRvIGNhbGlicmF0ZS4gQ2FkZW5j
ZS1xdWFkc3BpIHJlcXVpcmVzCnRyYWluaW5nIG9ubHkgaW4gaGlnaGVyIHBlcmZvcm1hbmNlIG1v
ZGVzIGxpa2UgUXVhZC9PY3RhbCBEVFIgbW9kZSBhbmQKbmVlZHMgMTYgYnl0ZXMgb2Yga25vd24g
ZGF0YSBmb3IgY2FsaWJyYXRpb24uIEhlbmNlIFNGRFAgd29ya3Mgd2VsbCBmb3IKbXkgY2FzZS4K
QnV0IHRoZSBwcm9ibGVtIGhlcmUgaXMgdGhhdCwgYXNwZWVkIGNvbnRyb2xsZXIgbmVlZHMgMTZL
IG9mIGtub3duIGRhdGEuClNGRFAgdGFibGUgaXMgbm90IHRoYXQgYmlnIGFuZCByZWFkIGJleW9u
ZCBhZGRyZXNzIHNwYWNlIGlzIG5vdCByZXF1aXJlZAp0byB3cmFwIGFyb3VuZC4KV29uZGVyaW5n
IGlmIHlvdSByZWFsbHkgbmVlZCB0byByZWFkIDE2SyBhbW91bnQgb2YgZGF0YSBmb3IgY2FsaWJy
YXRpb24/CgpSZWdhcmRzClZpZ25lc2gKCj4+ICt9Cj4+ICsKPj4gK3N0YXRpYyBpbnQgYXNwZWVk
X3NtY19vcHRpbWl6ZV9yZWFkKHN0cnVjdCBhc3BlZWRfc21jX2NoaXAgKmNoaXAsCj4+ICsJCQkJ
ICAgIHUzMiBtYXhfZnJlcSkKPj4gK3sKPj4gKwl1OCAqZ29sZGVuX2J1ZiwgKnRlc3RfYnVmOwo+
PiArCWludCBpLCByYywgYmVzdF9kaXYgPSAtMTsKPj4gKwl1MzIgc2F2ZV9yZWFkX3ZhbCA9IGNo
aXAtPmN0bF92YWxbc21jX3JlYWRdOwo+PiArCXUzMiBhaGJfZnJlcSA9IGNoaXAtPmNvbnRyb2xs
ZXItPmNsa19mcmVxdWVuY3k7Cj4+ICsKPj4gKwlkZXZfZGJnKGNoaXAtPm5vci5kZXYsICJBSEIg
ZnJlcXVlbmN5OiAlZCBNSHoiLCBhaGJfZnJlcSAvIDEwMDAwMDApOwo+PiArCj4+ICsJdGVzdF9i
dWYgPSBrbWFsbG9jKENBTElCUkFURV9CVUZfU0laRSAqIDIsIEdGUF9LRVJORUwpOwo+PiArCWdv
bGRlbl9idWYgPSB0ZXN0X2J1ZiArIENBTElCUkFURV9CVUZfU0laRTsKPj4gKwo+PiArCS8qIFdl
IHN0YXJ0IHdpdGggdGhlIGR1bWJlc3Qgc2V0dGluZyAoa2VlcCA0Qnl0ZSBiaXQpIGFuZCByZWFk
Cj4+ICsJICogc29tZSBkYXRhCj4+ICsJICovCj4+ICsJY2hpcC0+Y3RsX3ZhbFtzbWNfcmVhZF0g
PSBhc3BlZWRfc21jX2RlZmF1bHRfcmVhZChjaGlwKTsKPj4gKwo+PiArCXdyaXRlbChjaGlwLT5j
dGxfdmFsW3NtY19yZWFkXSwgY2hpcC0+Y3RsKTsKPj4gKwo+PiArCW1lbWNweV9mcm9taW8oZ29s
ZGVuX2J1ZiwgY2hpcC0+YWhiX2Jhc2UsIENBTElCUkFURV9CVUZfU0laRSk7Cj4+ICsKPj4gKwkv
KiBFc3RhYmxpc2ggb3VyIHJlYWQgbW9kZSB3aXRoIGZyZXEgZmllbGQgc2V0IHRvIDAgKEhDTEsv
MTYpICovCj4+ICsJY2hpcC0+Y3RsX3ZhbFtzbWNfcmVhZF0gPSBzYXZlX3JlYWRfdmFsICYgMHhm
ZmZmZjBmZjsKPj4gKwo+PiArCS8qIENoZWNrIGlmIGNhbGlicmF0aW9uIGRhdGEgaXMgc3VpdGFi
bGUgKi8KPj4gKwlpZiAoIWFzcGVlZF9zbWNfY2hlY2tfY2FsaWJfZGF0YShnb2xkZW5fYnVmLCBD
QUxJQlJBVEVfQlVGX1NJWkUpKSB7Cj4+ICsJCWRldl9pbmZvKGNoaXAtPm5vci5kZXYsCj4+ICsJ
CQkgIkNhbGlicmF0aW9uIGFyZWEgdG9vIHVuaWZvcm0sIHVzaW5nIGxvdyBzcGVlZCIpOwo+PiAr
CQl3cml0ZWwoY2hpcC0+Y3RsX3ZhbFtzbWNfcmVhZF0sIGNoaXAtPmN0bCk7Cj4+ICsJCWtmcmVl
KHRlc3RfYnVmKTsKPj4gKwkJcmV0dXJuIDA7Cj4+ICsJfQo+PiArCj4+ICsJLyogTm93IHdlIGl0
ZXJhdGUgdGhlIEhDTEsgZGl2aWRlcnMgdW50aWwgd2UgZmluZCBvdXIgYnJlYWtpbmcgcG9pbnQg
Ki8KPj4gKwlmb3IgKGkgPSBBUlJBWV9TSVpFKGFzcGVlZF9zbWNfaGNsa19kaXZzKTsgaSA+IDA7
IGktLSkgewo+PiArCQl1MzIgdHYsIGZyZXE7Cj4+ICsKPj4gKwkJLyogQ29tcGFyZSB0aW1pbmcg
dG8gbWF4ICovCj4+ICsJCWZyZXEgPSBhaGJfZnJlcSAvIGk7Cj4+ICsJCWlmIChmcmVxID4gbWF4
X2ZyZXEpCj4+ICsJCQljb250aW51ZTsKPj4gKwo+PiArCQkvKiBTZXQgdGhlIHRpbWluZyAqLwo+
PiArCQl0diA9IGNoaXAtPmN0bF92YWxbc21jX3JlYWRdIHwgQVNQRUVEX1NNQ19IQ0xLX0RJVihp
KTsKPj4gKwkJd3JpdGVsKHR2LCBjaGlwLT5jdGwpOwo+PiArCQlkZXZfZGJnKGNoaXAtPm5vci5k
ZXYsICJUcnlpbmcgSENMSy8lZC4uLiIsIGkpOwo+PiArCQlyYyA9IGFzcGVlZF9zbWNfY2FsaWJy
YXRlX3JlYWRzKGNoaXAsIGksIGdvbGRlbl9idWYsIHRlc3RfYnVmKTsKPj4gKwkJaWYgKHJjID09
IDApCj4+ICsJCQliZXN0X2RpdiA9IGk7Cj4+ICsJfQo+PiArCWtmcmVlKHRlc3RfYnVmKTsKPj4g
Kwo+PiArCS8qIE5vdGhpbmcgZm91bmQgPyAqLwo+PiArCWlmIChiZXN0X2RpdiA8IDApIHsKPj4g
KwkJZGV2X3dhcm4oY2hpcC0+bm9yLmRldiwgIk5vIGdvb2QgZnJlcXVlbmN5LCB1c2luZyBkdW1i
IHNsb3ciKTsKPj4gKwl9IGVsc2Ugewo+PiArCQlkZXZfZGJnKGNoaXAtPm5vci5kZXYsICJGb3Vu
ZCBnb29kIHJlYWQgdGltaW5ncyBhdCBIQ0xLLyVkIiwKPj4gKwkJCWJlc3RfZGl2KTsKPj4gKwkJ
Y2hpcC0+Y3RsX3ZhbFtzbWNfcmVhZF0gfD0gQVNQRUVEX1NNQ19IQ0xLX0RJVihiZXN0X2Rpdik7
Cj4+ICsJfQo+PiArCj4+ICsJd3JpdGVsKGNoaXAtPmN0bF92YWxbc21jX3JlYWRdLCBjaGlwLT5j
dGwpOwo+PiArCXJldHVybiAwOwo+PiArfQo+IAo+IAoKLS0gClJlZ2FyZHMKVmlnbmVzaAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
