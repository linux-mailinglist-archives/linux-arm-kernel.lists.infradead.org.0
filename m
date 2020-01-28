Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8774814AD35
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 01:28:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MKjCC4dPsJDz9sTmTsueXRUn4Awz3rt+/D/cJvbj4JA=; b=H5hbOqjK7QgzKR
	1n6i6RLTeg9KIl6G9HhGIMUHZI2IWtEwYWHQymLCr3XYa3QVCo7SctePhCinSyQHTGMbzQH2GjR2y
	R/liW5UpxizntWV5ZP38PJTeKBkyRd4IrjE1g6xEbnPVFZiQFA3wQPJi3WO/ioZ9fSYZroy/SuNOR
	OfQ1Pu5h6bHlCHbj4eKrly/KslVnV53cFUw6VedmsDn6we66+rcfdqHFhpfOvq0l8mXvRNZc8AZIc
	7+6IJGzlB8s5NERfIs7wYMoHndcl9TNrU5sneddRfz0RgOiwQpnszvNmP5CGT8FUdSxE6TbvM47tJ
	qDLHnmRacMrvrW8k6IJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwEjs-0000IT-QZ; Tue, 28 Jan 2020 00:28:20 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwEjg-0000Hp-T4
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 00:28:10 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00S0RJvu059947;
 Mon, 27 Jan 2020 18:27:19 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1580171239;
 bh=W1EB64W45tmk/zMPnKEvQZ3k2ekG2mBDdjgBaVTmooE=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=SKfoxij3czRX498JAimlSsNcBJ2eS7JtvSDxNfs9A0J+Uu0U8D9aLr8WU/r5imFnn
 I1j/F/CkTj/hTfSIITRpfJSQYfuk3Epr/3mq/1Kwmh61FQrOKMj0LfWBnLdvaf3s70
 Sk5uWeTQb6W9LKodHGBdeGPDQBgkWJ6bdZWKhWAE=
Received: from DFLE108.ent.ti.com (dfle108.ent.ti.com [10.64.6.29])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 00S0RJOt018928
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 27 Jan 2020 18:27:19 -0600
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 27
 Jan 2020 18:27:19 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 27 Jan 2020 18:27:19 -0600
Received: from [128.247.58.153] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00S0RJUJ089082;
 Mon, 27 Jan 2020 18:27:19 -0600
Subject: Re: [PATCH v2] mfd: syscon: Use a unique name with regmap_config
To: David Lechner <david@lechnology.com>, Lee Jones <lee.jones@linaro.org>
References: <20200127231208.1443-1-s-anna@ti.com>
 <217993e5-5e1d-79a1-7684-c6bb964379f0@lechnology.com>
From: Suman Anna <s-anna@ti.com>
Message-ID: <448eeb87-9945-8a93-9231-6e2a22aa8342@ti.com>
Date: Mon, 27 Jan 2020 18:27:19 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <217993e5-5e1d-79a1-7684-c6bb964379f0@lechnology.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_162809_040610_6548479D 
X-CRM114-Status: GOOD (  18.71  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, Tony Lindgren <tony@atomide.com>,
 linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgRGF2aWQsCgpPbiAxLzI3LzIwIDU6NDAgUE0sIERhdmlkIExlY2huZXIgd3JvdGU6Cj4gT24g
MS8yNy8yMCA1OjEyIFBNLCBTdW1hbiBBbm5hIHdyb3RlOgo+PiBUaGUgRFQgbm9kZSBmdWxsIG5h
bWUgaXMgY3VycmVudGx5IGJlaW5nIHVzZWQgaW4gcmVnbWFwX2NvbmZpZwo+PiB3aGljaCBpbiB0
dXJuIGlzIHVzZWQgdG8gY3JlYXRlIHRoZSByZWdtYXAgZGVidWdmcyBkaXJlY3Rvcmllcy4KPj4g
VGhpcyBuYW1lIGhvd2V2ZXIgaXMgbm90IGd1YXJhbnRlZWQgdG8gYmUgdW5pcXVlIGFuZCB0aGUg
cmVnbWFwCj4+IGRlYnVnZnMgcmVnaXN0cmF0aW9uIGNhbiBmYWlsIGluIHRoZSBjYXNlcyB3aGVy
ZSB0aGUgc3lzY29uIG5vZGVzCj4+IGhhdmUgdGhlIHNhbWUgdW5pdC1hZGRyZXNzIGJ1dCBhcmUg
cHJlc2VudCBpbiBkaWZmZXJlbnQgRFQgbm9kZQo+PiBoaWVyYXJjaGllcy4gUmVwbGFjZSB0aGlz
IGxvZ2ljIHVzaW5nIHRoZSBzeXNjb24gcmVnIHJlc291cmNlCj4+IGFkZHJlc3MgaW5zdGVhZCAo
aW5zcGlyZWQgZnJvbSBsb2dpYyB1c2VkIHdoaWxlIGNyZWF0aW5nIHBsYXRmb3JtCj4+IGRldmlj
ZXMpIHRvIGVuc3VyZSBhIHVuaXF1ZSBuYW1lIGlzIGdpdmVuIGZvciBlYWNoIHN5c2Nvbi4KPj4K
Pj4gU2lnbmVkLW9mZi1ieTogU3VtYW4gQW5uYSA8cy1hbm5hQHRpLmNvbT4KPj4gLS0tCj4+IHYy
OiBGaXggYnVpbGQgd2FybmluZyByZXBvcnRlZCBieSBrYnVpbGQgdGVzdCBib3QKPj4gdjE6IGh0
dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcGF0Y2gvMTEzNDYzNjMvCj4+Cj4+IMKgIGRyaXZl
cnMvbWZkL3N5c2Nvbi5jIHwgNCArKystCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlv
bnMoKyksIDEgZGVsZXRpb24oLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWZkL3N5c2Nv
bi5jIGIvZHJpdmVycy9tZmQvc3lzY29uLmMKPj4gaW5kZXggZTIyMTk3YzgzMmU4Li5mMDgxNWQ4
ZTZlOTUgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbWZkL3N5c2Nvbi5jCj4+ICsrKyBiL2RyaXZl
cnMvbWZkL3N5c2Nvbi5jCj4+IEBAIC0xMDEsMTIgKzEwMSwxNCBAQCBzdGF0aWMgc3RydWN0IHN5
c2NvbiAqb2Zfc3lzY29uX3JlZ2lzdGVyKHN0cnVjdAo+PiBkZXZpY2Vfbm9kZSAqbnAsIGJvb2wg
Y2hlY2tfY2xrKQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgfQo+PiDCoMKgwqDCoMKgIH0KPj4gwqAg
LcKgwqDCoCBzeXNjb25fY29uZmlnLm5hbWUgPSBvZl9ub2RlX2Z1bGxfbmFtZShucCk7Cj4+ICvC
oMKgwqAgc3lzY29uX2NvbmZpZy5uYW1lID0ga2FzcHJpbnRmKEdGUF9LRVJORUwsICIlcE9GbkAl
bGx4IiwgbnAsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCAodTY0KXJlcy5zdGFydCk7Cj4gCj4gV291bGQgaXQgbWFrZSBzZW5zZSB0byBhbHNvIGluY2x1
ZGUgdGhlIG5vZGUgbmFtZSBhbG9uZyB3aXRoIHRoZQo+IHBvaW50ZXIgYWRkcmVzcyBzbyB0aGF0
IHRoZSBuYW1lIGlzIHN0aWxsIGVhc2lseSBpZGVudGlmaWFibGU/CgpJIGhhdmVuJ3QgZHJvcHBl
ZCB0aGUgbm9kZSBuYW1lLCBpdCBpcyBzdGlsbCB0aGVyZSwgdGhlIHBPRm4gcGFydC4gSSBhbQpv
bmx5IHJlcGxhY2luZyB0aGUgRFQgdW5pdC1hZGRyZXNzIHdpdGggdGhlIGJ1cyBhZGRyZXNzLCBJ
IGhhdmVuJ3QKY2hhbmdlZCB0aGUgbmFtZSBzdHlsZSBlaXRoZXIuCgpyZWdhcmRzClN1bWFuCgo+
IAo+PiDCoMKgwqDCoMKgIHN5c2Nvbl9jb25maWcucmVnX3N0cmlkZSA9IHJlZ19pb193aWR0aDsK
Pj4gwqDCoMKgwqDCoCBzeXNjb25fY29uZmlnLnZhbF9iaXRzID0gcmVnX2lvX3dpZHRoICogODsK
Pj4gwqDCoMKgwqDCoCBzeXNjb25fY29uZmlnLm1heF9yZWdpc3RlciA9IHJlc291cmNlX3NpemUo
JnJlcykgLSByZWdfaW9fd2lkdGg7Cj4+IMKgIMKgwqDCoMKgwqAgcmVnbWFwID0gcmVnbWFwX2lu
aXRfbW1pbyhOVUxMLCBiYXNlLCAmc3lzY29uX2NvbmZpZyk7Cj4+ICvCoMKgwqAga2ZyZWUoc3lz
Y29uX2NvbmZpZy5uYW1lKTsKPj4gwqDCoMKgwqDCoCBpZiAoSVNfRVJSKHJlZ21hcCkpIHsKPj4g
wqDCoMKgwqDCoMKgwqDCoMKgIHByX2VycigicmVnbWFwIGluaXQgZmFpbGVkXG4iKTsKPj4gwqDC
oMKgwqDCoMKgwqDCoMKgIHJldCA9IFBUUl9FUlIocmVnbWFwKTsKPj4KPiAKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
