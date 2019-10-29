Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40913E8B78
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 16:08:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Q5N0wVGHu9r8dv5HXnzQA0n5YiZwAQQ3mnHIX5Epsx0=; b=JIOOWaqLxT5K9vXv2qOVKfu1T
	SnW80t/FHhzf2xUAkRaxiDuiL4MwsZ21k/dqRYXZb918qawEUMBv6aLd2L9Gvgy2y67Dx5W8MMMXr
	1tSnxOEE3YCMFmHGGwXCeBSgSc1KP7PTr9uT8BExEzrGRw/235tltNjQMKj0y+nvXNmFsaNnUMa9U
	jmemIa72EqsgRXuGfN5ahOlxPDoyIhUOiiLeyL0+he/b732fwim9IKG39/SChvdyW7a7pRvt9L2Nh
	HD/eV6d2r9Uj/eSlFUGtVKBB5/63t3fiyBuNdS6uaadrewvjwRcPl/9pHdx+E0TfFSXf5S6K78rPU
	j+DNRqVjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPT6M-0002XK-2s; Tue, 29 Oct 2019 15:08:06 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPT6C-0002WI-Gs
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 15:07:58 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 2022060D4C; Tue, 29 Oct 2019 15:07:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1572361676;
 bh=E4andH/ilmkSFOMWKBRL3FANQ6IFKogo12cpoZyySEA=;
 h=Subject:From:To:Cc:References:Date:In-Reply-To:From;
 b=RFqx97FbCvImMjwJHodioL8aT9CJG3k+aB9OYIPs+uMXWANCHxFHS0egEbCv8ZoSt
 +NUkJ2YxZnEPKXuudvBL9BHE2jms+gjUKnAuVOFZnYMES0qqYvRLZT3lGchjYZoeLg
 QEMSd5b3fJR1KDRU6znIcRHDSBFThH+uMxWRPRZ0=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from [10.226.58.28] (i-global254.qualcomm.com [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: jhugo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 1531C60BFA;
 Tue, 29 Oct 2019 15:07:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1572361675;
 bh=E4andH/ilmkSFOMWKBRL3FANQ6IFKogo12cpoZyySEA=;
 h=Subject:From:To:Cc:References:Date:In-Reply-To:From;
 b=X5mnHnatzoWq7QPKAP3YJTAWmX5Q3aCbzNqNkKeHY5CfIe4ADO43QunOjp/ZZOVDP
 2YBGI26avNH5iuAgDOmSNWhzQ1n2+WEVgkyy+bPHHBAWr9x7SldFc6SMvsj5gYCrG6
 XGuUVXxmi/WntDkbItO1RmTSKdtMxwYdlzD5Z7Z4=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 1531C60BFA
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=jhugo@codeaurora.org
Subject: Re: [PATCH] arm64: cpufeature: Enable Qualcomm Falkor errata 1009 for
 Kryo
From: Jeffrey Hugo <jhugo@codeaurora.org>
To: Will Deacon <will@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>
References: <20191029060604.1208925-1-bjorn.andersson@linaro.org>
 <20191029115008.GD12103@willie-the-truck>
 <16ccb343-8253-0224-e957-c73f51f110a1@codeaurora.org>
Message-ID: <d9700408-b11e-b5c8-db9d-f70ccd1bde73@codeaurora.org>
Date: Tue, 29 Oct 2019 09:07:53 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <16ccb343-8253-0224-e957-c73f51f110a1@codeaurora.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_080756_600305_60A6090F 
X-CRM114-Status: GOOD (  21.82  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTAvMjkvMjAxOSA3OjQ0IEFNLCBKZWZmcmV5IEh1Z28gd3JvdGU6Cj4gT24gMTAvMjkvMjAx
OSA0OjUwIEFNLCBXaWxsIERlYWNvbiB3cm90ZToKPj4gT24gTW9uLCBPY3QgMjgsIDIwMTkgYXQg
MTE6MDY6MDRQTSAtMDcwMCwgQmpvcm4gQW5kZXJzc29uIHdyb3RlOgo+Pj4gVGhlIEtyeW8gY29y
ZXMgc2hhcmUgZXJyYXRhIDEwMDkgd2l0aCBGYWxrb3IsIHNvIGFkZCB0aGVpciBtb2RlbAo+Pj4g
ZGVmaW5pdGlvbnMgYW5kIGVuYWJsZSBpdCBmb3IgdGhlbSBhcyB3ZWxsLgo+Pj4KPj4+IFNpZ25l
ZC1vZmYtYnk6IEJqb3JuIEFuZGVyc3NvbiA8Ympvcm4uYW5kZXJzc29uQGxpbmFyby5vcmc+Cj4+
PiAtLS0KPj4+IMKgIGFyY2gvYXJtNjQvaW5jbHVkZS9hc20vY3B1dHlwZS5oIHwgNCArKysrCj4+
PiDCoCBhcmNoL2FybTY0L2tlcm5lbC9jcHVfZXJyYXRhLmPCoMKgIHwgMiArKwo+Pj4gwqAgMiBm
aWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9h
cm02NC9pbmNsdWRlL2FzbS9jcHV0eXBlLmggCj4+PiBiL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20v
Y3B1dHlwZS5oCj4+PiBpbmRleCBiMTQ1NGQxMTdjZDIuLjgwNjc0NzZlYTJlNCAxMDA2NDQKPj4+
IC0tLSBhL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vY3B1dHlwZS5oCj4+PiArKysgYi9hcmNoL2Fy
bTY0L2luY2x1ZGUvYXNtL2NwdXR5cGUuaAo+Pj4gQEAgLTg0LDYgKzg0LDggQEAKPj4+IMKgICNk
ZWZpbmUgUUNPTV9DUFVfUEFSVF9GQUxLT1JfVjHCoMKgwqDCoMKgwqDCoCAweDgwMAo+Pj4gwqAg
I2RlZmluZSBRQ09NX0NQVV9QQVJUX0ZBTEtPUsKgwqDCoMKgwqDCoMKgIDB4QzAwCj4+PiDCoCAj
ZGVmaW5lIFFDT01fQ1BVX1BBUlRfS1JZT8KgwqDCoMKgwqDCoMKgIDB4MjAwCj4+PiArI2RlZmlu
ZSBRQ09NX0NQVV9QQVJUX0tSWU9fR09MRMKgwqDCoMKgwqDCoMKgIDB4MjExCj4+PiArI2RlZmlu
ZSBRQ09NX0NQVV9QQVJUX0tSWU9fU0lMVkVSwqDCoMKgIDB4MjA1Cj4gCj4gVGhlc2UgYXJlIG5v
dCBLcnlvIHBhcnQgbnVtYmVycyAoODk5OCspLsKgIFRoZXkgYXJlIEh5ZHJhIG9uZXMuCj4gCj4+
Cj4+IENhbiB5b3UgZG91YmxlLWNoZWNrIHRoaXMsIHBsZWFzZT8gTXkgUGl4ZWwtMSBwaG9uZSBj
bGFpbXMgc29tZXRoaW5nIHdpdGgKPj4gMHgyMDEsIGJ1dCBJIGRvbid0IGtub3cgaWYgdGhhdCdz
IHdoYXQgeW91IHdlcmUgYWltaW5nIGZvci4gSXQgd291bGQgYmUKPj4gZ3JlYXQgaWYgUXVhbGNv
bW0gY291bGQgZG9jdW1lbnQgdGhlc2UgcmVnaXN0ZXIgZmllbGRzIHNvbWV3aGVyZSwgCj4+IGVz
cGVjaWFsbHkKPj4gc2luY2Ugd2UncmUgdHJ5aW5nIHRvIHdvcmsgYXJvdW5kIHRoZWlyIGhhcmR3
YXJlIGVycmF0YSBmb3IgdGhlbS4KPiAKPiBJIHdpc2ggSSBjb3VsZCBwb2ludCB5b3UgdG8gcHVi
bGljIGRvY3VtZW50YXRpb24uwqAgSSBkb24ndCBoYXBwZW4gdG8gCj4ga25vdyB3aGVyZSBpdCBp
cy7CoCBBcyBmYXIgYXMgODk5NiBnb2VzLCB0aGVyZSBhcmUgcXVpdGUgYSBmZXcgcGFydCAKPiBu
dW1iZXJzLsKgIFRoZSBvbmVzIEkgY291bGQgZmluZCBhcmU6Cj4gMjAxCj4gMjA1Cj4gMjExCj4g
MjQxCj4gMjUxCj4gCj4gMjgxIGhhcHBlbnMgdG8gYmUgUURGMjQzMgoKIEZyb20gYXNraW5nIGFy
b3VuZCwgSSBmb3VuZCBzb21lb25lIGluIHRoZSBrbm93LiAgV2UgZG9uJ3QgaGF2ZSBwdWJsaWMg
CmRvY3VtZW50YXRpb24sIGJ1dCBJIGNhbiBmb2xsb3cgdXAgdG8gdHJ5IHRvIGNyZWF0ZSBzb21l
dGhpbmcgLSBpdHMgCmxpa2VseSBnb2luZyB0byB0YWtlIGEgYml0LiAgSSB3YXMgZ2l2ZW4gdGhl
IGZvbGxvd2luZyBpbmZvcm1hdGlvbiB0byAKc2hhcmUuICBUaGlzIGlzIHNwZWNpZmljIHRvIEh5
ZHJhIG9ubHktCgpNSURSWzE1OjEyXSA9IFBBUlRbMTE6OF0KSHlkcmEgYW5kIHRlY2hub2xvZ3kg
bm9kZSBkaWZmZXJlbnRpYXRvciAoMHgxID0gSHlkcmEgMTZubTsgMHgyID0gSHlkcmEgCjE0bm07
IDB4MyA9IEh5ZHJhIDEwbm0pCgpNSURSWzExOjEwXSA9IFBBUlRbNzo2XQpUaGlzIGNvcnJlc3Bv
bmRzIHRvIHRoZSBjbHVzdGVyIHJldmlzaW9uIG51bWJlcgoKTUlEUls5OjhdID0gUEFSVFs1OjRd
ClRlY2hub2xvZ3kgdmFyaWFudCB3aXRoaW4gdGhlIG5vZGUKCk1JRFJbNzo2XSA9IFBBUlRbMzoy
XQowYjAwID0gNTEyS0IgTDIKMGIwMSA9IDFNQiBMMgowYjEwID0gMk1CIEwyCjBiMTEgPSA0TUIg
TDIKCk1JRFJbNTo0XSA9IFBBUlRbMTowXQowYjAwID0gdW5pLWNvcmUKMGIwMSA9IGR1YWwtY29y
ZSBjbHVzdGVyCjBiMTAgPSB0cmktY29yZSBjbHVzdGVyCjBiMTEgPSBxdWFkLWNvcmUgY2x1c3Rl
cgoKPiAKPj4KPj4gVGhhdCBzYWlkLi4uCj4+Cj4+PiDCoCAjZGVmaW5lIE5WSURJQV9DUFVfUEFS
VF9ERU5WRVLCoMKgwqDCoMKgwqDCoCAweDAwMwo+Pj4gwqAgI2RlZmluZSBOVklESUFfQ1BVX1BB
UlRfQ0FSTUVMwqDCoMKgwqDCoMKgwqAgMHgwMDQKPj4+IEBAIC0xMDksNiArMTExLDggQEAKPj4+
IMKgICNkZWZpbmUgTUlEUl9RQ09NX0ZBTEtPUl9WMSBNSURSX0NQVV9NT0RFTChBUk1fQ1BVX0lN
UF9RQ09NLCAKPj4+IFFDT01fQ1BVX1BBUlRfRkFMS09SX1YxKQo+Pj4gwqAgI2RlZmluZSBNSURS
X1FDT01fRkFMS09SIE1JRFJfQ1BVX01PREVMKEFSTV9DUFVfSU1QX1FDT00sIAo+Pj4gUUNPTV9D
UFVfUEFSVF9GQUxLT1IpCj4+PiDCoCAjZGVmaW5lIE1JRFJfUUNPTV9LUllPIE1JRFJfQ1BVX01P
REVMKEFSTV9DUFVfSU1QX1FDT00sIAo+Pj4gUUNPTV9DUFVfUEFSVF9LUllPKQo+Pj4gKyNkZWZp
bmUgTUlEUl9RQ09NX0tSWU9fR09MRCBNSURSX0NQVV9NT0RFTChBUk1fQ1BVX0lNUF9RQ09NLCAK
Pj4+IFFDT01fQ1BVX1BBUlRfS1JZT19HT0xEKQo+Pj4gKyNkZWZpbmUgTUlEUl9RQ09NX0tSWU9f
U0lMVkVSIE1JRFJfQ1BVX01PREVMKEFSTV9DUFVfSU1QX1FDT00sIAo+Pj4gUUNPTV9DUFVfUEFS
VF9LUllPX1NJTFZFUikKPj4+IMKgICNkZWZpbmUgTUlEUl9OVklESUFfREVOVkVSIE1JRFJfQ1BV
X01PREVMKEFSTV9DUFVfSU1QX05WSURJQSwgCj4+PiBOVklESUFfQ1BVX1BBUlRfREVOVkVSKQo+
Pj4gwqAgI2RlZmluZSBNSURSX05WSURJQV9DQVJNRUwgTUlEUl9DUFVfTU9ERUwoQVJNX0NQVV9J
TVBfTlZJRElBLCAKPj4+IE5WSURJQV9DUFVfUEFSVF9DQVJNRUwpCj4+PiDCoCAjZGVmaW5lIE1J
RFJfRlVKSVRTVV9BNjRGWCBNSURSX0NQVV9NT0RFTChBUk1fQ1BVX0lNUF9GVUpJVFNVLCAKPj4+
IEZVSklUU1VfQ1BVX1BBUlRfQTY0RlgpCj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9rZXJu
ZWwvY3B1X2VycmF0YS5jIAo+Pj4gYi9hcmNoL2FybTY0L2tlcm5lbC9jcHVfZXJyYXRhLmMKPj4+
IGluZGV4IGNkZDhkZjAzMzUzNi4uMzE1NzgwZTdiZWU3IDEwMDY0NAo+Pj4gLS0tIGEvYXJjaC9h
cm02NC9rZXJuZWwvY3B1X2VycmF0YS5jCj4+PiArKysgYi9hcmNoL2FybTY0L2tlcm5lbC9jcHVf
ZXJyYXRhLmMKPj4+IEBAIC02MjcsNiArNjI3LDggQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBtaWRy
X3JhbmdlIAo+Pj4gYXJtNjRfaGFyZGVuX2VsMl92ZWN0b3JzW10gPSB7Cj4+PiDCoCBzdGF0aWMg
Y29uc3Qgc3RydWN0IG1pZHJfcmFuZ2UgYXJtNjRfcmVwZWF0X3RsYmlfY3B1c1tdID0gewo+Pj4g
wqAgI2lmZGVmIENPTkZJR19RQ09NX0ZBTEtPUl9FUlJBVFVNXzEwMDkKPj4+IMKgwqDCoMKgwqAg
TUlEUl9SQU5HRShNSURSX1FDT01fRkFMS09SX1YxLCAwLCAwLCAwLCAwKSwKPj4+ICvCoMKgwqAg
TUlEUl9BTExfVkVSU0lPTlMoTUlEUl9RQ09NX0tSWU9fR09MRCksCj4+PiArwqDCoMKgIE1JRFJf
QUxMX1ZFUlNJT05TKE1JRFJfUUNPTV9LUllPX1NJTFZFUiksCj4+Cj4+IC4uLiB3aHkgYXJlbid0
IHlvdSBmb2xsb3dpbmcgd2hhdCB3ZSBkbyBmb3IgRTEwMDMgYW5kIHVzaW5nIHRoZQo+PiAnaXNf
a3J5b19taWRyJyBjYWxsYmFjayB0byBtYXRjaCB0aGVzZSBDUFVzPwo+Pgo+PiBXaWxsCj4+Cj4+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IGxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cj4+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwo+PiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwKPj4KPiAKPiAKCgotLSAKSmVmZnJleSBIdWdvClF1YWxjb21tIFRlY2hu
b2xvZ2llcywgSW5jLiBpcyBhIG1lbWJlciBvZiB0aGUKQ29kZSBBdXJvcmEgRm9ydW0sIGEgTGlu
dXggRm91bmRhdGlvbiBDb2xsYWJvcmF0aXZlIFByb2plY3QuCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
