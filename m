Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB0814A2B2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 12:12:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GNUcmBmHmk/Ci1gbjQeWrTbjpdgcCtAPpsaGmsEjzHQ=; b=MhiMTlrIepvuvD
	80VSwB9Ju4WNvaF233jcGahSOvE6yuzejTby82TvozSuh/XMWY0om47vGhugk24CgTKGtrDlu5zNN
	xS0/NQiHiWj8QY3B2KV6W9+ds2U1JOBe6USu74bFg0c35Bziw3pQ/dfmJb/Yv1ouX1lOhhDbgGDPM
	iSpd+OspyB0pWKleq3KH4DvLQly/iitNgpFeWMT0p9bgySE5w9WElbbLWFbJSDtCCnys4+HYoeFZS
	sInZAXyejjb5L3744LaurpWMsqgKliEe0E0qY7KzflB5VhjvOOfuSG4VnAPUpQ9uvJf4e/SZnWC9n
	/aE1F5SHQNbkt2UAFnxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw2Ji-0000qZ-KL; Mon, 27 Jan 2020 11:12:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw2JR-0000jN-Hy
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 11:12:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3A2BC30E;
 Mon, 27 Jan 2020 03:12:12 -0800 (PST)
Received: from [10.1.196.63] (e123195-lin.cambridge.arm.com [10.1.196.63])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4C52A3F52E;
 Mon, 27 Jan 2020 03:12:11 -0800 (PST)
Subject: Re: [PATCH] KVM: arm64: Treat emulated TVAL TimerValue as a signed
 32-bit integer
To: Marc Zyngier <maz@kernel.org>
References: <20200127103652.2326-1-alexandru.elisei@arm.com>
 <5f633dfb2abe63059d75c0da58c69241@kernel.org>
From: Alexandru Elisei <alexandru.elisei@arm.com>
Message-ID: <de0621e2-3920-3897-bde4-fecf36c9c348@arm.com>
Date: Mon, 27 Jan 2020 11:12:08 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <5f633dfb2abe63059d75c0da58c69241@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_031213_842580_59A26755 
X-CRM114-Status: GOOD (  17.52  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: suzuki.poulose@arm.com, linux-kernel@vger.kernel.org, james.morse@arm.com,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 julien.thierry.kdev@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiAxLzI3LzIwIDExOjA3IEFNLCBNYXJjIFp5bmdpZXIgd3JvdGU6Cj4gSGkgQWxleGFu
ZHJ1LAo+Cj4gT24gMjAyMC0wMS0yNyAxMDozNiwgQWxleGFuZHJ1IEVsaXNlaSB3cm90ZToKPj4g
QWNjb3JkaW5nIHRvIHRoZSBBUk0gQVJNLCByZWdpc3RlcnMgQ05Ue1AsVn1fVFZBTF9FTDAgaGF2
ZSBiaXRzIFs2MzozMl0KPj4gUkVTMCBbMV0uIFdoZW4gcmVhZGluZyB0aGUgcmVnaXN0ZXIsIHRo
ZSB2YWx1ZSBpcyB0cnVuY2F0ZWQgdG8gdGhlIGxlYXN0Cj4+IHNpZ25pZmljYW50IDMyIGJpdHMg
WzJdLCBhbmQgb24gd3JpdGVzLCBUaW1lclZhbHVlIGlzIHRyZWF0ZWQgYXMgYSBzaWduZWQKPj4g
MzItYml0IGludGVnZXIgWzEsIDJdLgo+Pgo+PiBXaGVuIHRoZSBndWVzdCBiZWhhdmVzIGNvcnJl
Y3RseSBhbmQgd3JpdGVzIDMyLWJpdCB2YWx1ZXMsIHRyZWF0aW5nIFRWQUwKPj4gYXMgYW4gdW5z
aWduZWQgNjQgYml0IHJlZ2lzdGVyIHdvcmtzIGFzIGV4cGVjdGVkLiBIb3dldmVyLCB0aGluZ3Mg
c3RhcnQKPj4gdG8gYnJlYWsgZG93biB3aGVuIHRoZSBndWVzdCB3cml0ZXMgbGFyZ2VyIHZhbHVl
cywgYmVjYXVzZQo+PiAodTY0KTB4MV9mZmZmX2ZmZmYgPSA4NTg5OTM0NTkxLiBidXQgKHMzMikw
eDFfZmZmZl9mZmZmID0gLTEsIGFuZCB0aGUKPj4gZm9ybWVyIHdpbGwgY2F1c2UgdGhlIHRpbWVy
IGludGVycnVwdCB0byBiZSBhc3NlcnRlZCBpbiB0aGUgZnV0dXJlLCBidXQKPj4gdGhlIGxhdHRl
ciB3aWxsIGNhdXNlIGl0IHRvIGJlIGFzc2VydGVkIG5vdy7CoCBMZXQncyB0cmVhdCBUVkFMIGFz
IGEKPj4gc2lnbmVkIDMyLWJpdCByZWdpc3RlciBvbiB3cml0ZXMsIHRvIG1hdGNoIHRoZSBiZWhh
dmlvdXIgZGVzY3JpYmVkIGluCj4+IHRoZSBhcmNoaXRlY3R1cmUsIGFuZCB0aGUgYmVoYXZpb3Vy
IGV4cGVyaW1lbnRhbGx5IGV4aGliaXRlZCBieSB0aGUKPj4gdmlydHVhbCB0aW1lciBvbiBhIG5v
bi12aGUgaG9zdC4KPj4KPj4gWzFdIEFybSBEREkgMDQ4N0UuYSwgc2VjdGlvbiBEMTMuOC4xOAo+
PiBbMl0gQXJtIERESSAwNDg3RS5hLCBzZWN0aW9uIEQxMS4yLjQKPj4KPj4gU2lnbmVkLW9mZi1i
eTogQWxleGFuZHJ1IEVsaXNlaSA8YWxleGFuZHJ1LmVsaXNlaUBhcm0uY29tPgo+Cj4gSHVodWgu
Li4gTmljZSBjYXRjaCEKPgo+IEZpeGVzOiA4ZmE3NjE2MjQ4NzEgKCJLVk06IGFybS9hcm02NDog
YXJjaF90aW1lcjogRml4IENOVFBfVFZBTCBjYWxjdWxhdGlvbiIpCj4KPiAoaG93IG1hbnkgdGlt
ZXMgYXJlIHdlIGRvaW5nIHRvIGZpeCB0aGlzPz8/KQo+Cj4+IC0tLQo+PiDCoGluY2x1ZGUva3Zt
L2FybV9hcmNoX3RpbWVyLmggfCAyICsrCj4+IMKgdmlydC9rdm0vYXJtL2FyY2hfdGltZXIuY8Kg
wqDCoCB8IDMgKystCj4+IMKgMiBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDEgZGVs
ZXRpb24oLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUva3ZtL2FybV9hcmNoX3RpbWVyLmgg
Yi9pbmNsdWRlL2t2bS9hcm1fYXJjaF90aW1lci5oCj4+IGluZGV4IGQxMjBlNmMzMjNlNy4uYmU5
MTIxNzZiN2EzIDEwMDY0NAo+PiAtLS0gYS9pbmNsdWRlL2t2bS9hcm1fYXJjaF90aW1lci5oCj4+
ICsrKyBiL2luY2x1ZGUva3ZtL2FybV9hcmNoX3RpbWVyLmgKPj4gQEAgLTEwLDYgKzEwLDggQEAK
Pj4gwqAjaW5jbHVkZSA8bGludXgvY2xvY2tzb3VyY2UuaD4KPj4gwqAjaW5jbHVkZSA8bGludXgv
aHJ0aW1lci5oPgo+Pgo+PiArI2RlZmluZSBBUkNIX1RJTUVSX1RWQUxfTUFTS8KgwqDCoCAoKDFV
TEwgPDwgMzIpIC0gMSkKPj4gKwo+PiDCoGVudW0ga3ZtX2FyY2hfdGltZXJzIHsKPj4gwqDCoMKg
wqAgVElNRVJfUFRJTUVSLAo+PiDCoMKgwqDCoCBUSU1FUl9WVElNRVIsCj4+IGRpZmYgLS1naXQg
YS92aXJ0L2t2bS9hcm0vYXJjaF90aW1lci5jIGIvdmlydC9rdm0vYXJtL2FyY2hfdGltZXIuYwo+
PiBpbmRleCBmMTgyYjIzODAzNDUuLjVkNDBmMTdmNzAyNCAxMDA2NDQKPj4gLS0tIGEvdmlydC9r
dm0vYXJtL2FyY2hfdGltZXIuYwo+PiArKysgYi92aXJ0L2t2bS9hcm0vYXJjaF90aW1lci5jCj4+
IEBAIC04MDUsNiArODA1LDcgQEAgc3RhdGljIHU2NCBrdm1fYXJtX3RpbWVyX3JlYWQoc3RydWN0
IGt2bV92Y3B1ICp2Y3B1LAo+PiDCoMKgwqDCoCBzd2l0Y2ggKHRyZWcpIHsKPj4gwqDCoMKgwqAg
Y2FzZSBUSU1FUl9SRUdfVFZBTDoKPj4gwqDCoMKgwqDCoMKgwqDCoCB2YWwgPSB0aW1lci0+Y250
X2N2YWwgLSBrdm1fcGh5c190aW1lcl9yZWFkKCkgKyB0aW1lci0+Y250dm9mZjsKPj4gK8KgwqDC
oMKgwqDCoMKgIHZhbCAmPSBBUkNIX1RJTUVSX1RWQUxfTUFTSzsKPgo+IG5pdDogRG8gd2UgcmVh
bGx5IG5lZWQgdGhpcyBtYXNrPyBJJ2QgcmF0aGVyIHNlZSBpdCB3cml0dGVuIGFzCj4KPiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdmFsID0gbG93ZXJfMzJfYml0cyh2YWwpOwoKSSBk
aWRuJ3QgcmVhbGx5IGxpa2UgdXNpbmcgdGhlIG1hc2sgZWl0aGVyLCBidXQgSSBjb3VsZG4ndCB0
aGluayBvZiBhbnl0aGluZwpiZXR0ZXIuIFRoaXMgbG9va3MgdmVyeSBnb29kLgoKPgo+Cj4+IMKg
wqDCoMKgwqDCoMKgwqAgYnJlYWs7Cj4+Cj4+IMKgwqDCoMKgIGNhc2UgVElNRVJfUkVHX0NUTDoK
Pj4gQEAgLTg1MCw3ICs4NTEsNyBAQCBzdGF0aWMgdm9pZCBrdm1fYXJtX3RpbWVyX3dyaXRlKHN0
cnVjdCBrdm1fdmNwdSAqdmNwdSwKPj4gwqB7Cj4+IMKgwqDCoMKgIHN3aXRjaCAodHJlZykgewo+
PiDCoMKgwqDCoCBjYXNlIFRJTUVSX1JFR19UVkFMOgo+PiAtwqDCoMKgwqDCoMKgwqAgdGltZXIt
PmNudF9jdmFsID0ga3ZtX3BoeXNfdGltZXJfcmVhZCgpIC0gdGltZXItPmNudHZvZmYgKyB2YWw7
Cj4+ICvCoMKgwqDCoMKgwqDCoCB0aW1lci0+Y250X2N2YWwgPSBrdm1fcGh5c190aW1lcl9yZWFk
KCkgLSB0aW1lci0+Y250dm9mZiArIChzMzIpdmFsOwo+PiDCoMKgwqDCoMKgwqDCoMKgIGJyZWFr
Owo+Pgo+PiDCoMKgwqDCoCBjYXNlIFRJTUVSX1JFR19DVEw6Cj4KPiBPdGhlcndpc2UsIGxvb2tz
IGdvb2QgdG8gbWUuIElmIHlvdSdyZSBPSyB3aXRoIHRoZSBhYm92ZSBjaGFuZ2UsIEknbGwKPiB0
YWtlIGl0IGFzIGEgZml4LgoKWWVzLCBJJ20gdmVyeSBtdWNoIE9LIHdpdGggdGhlIGNoYW5nZS4K
ClRoYW5rcywKQWxleAo+Cj4gVGhhbmtzLAo+Cj4gwqDCoMKgwqDCoMKgwqAgTS4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
