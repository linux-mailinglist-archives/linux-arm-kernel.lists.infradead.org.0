Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA7BAC3647
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 15:49:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0/vuPkCv7PVu2OImXsjEOk+nHusTibeKEcj2WwwM8VA=; b=aGsgHzwUebjlUy
	pn5JuYjykaGcpfQHiHe5Pi5fwhle5gp2odmNsZRFiX3PxBA26Dm0qjCcQKWD6CI3d9lKg4VfeLT5q
	GYlqMRnM32W8utL40f1uYgUo3Zs6xASU1K/kAEuWMYnmJnj3CUQ1K7ulegLQ4EgQm+Zgftq6//nqz
	RHf0rGpgIguo0U9bIzD8V1k0RJXZzyQAEBAcowqL12TT3POXNyIZdsd2e5EtJrtJkFif/z75hLo57
	Wkxs4OChiKiR5BgsDwp+vi8uTj57ci9ml4GH/R2lnJpviKVuiISNURKOMnczr93nNv84M1cqZF24H
	yFbrJ+kJ/uMRquxN0lFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFIWr-0000X7-Lj; Tue, 01 Oct 2019 13:49:25 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFIWf-0000WL-J3
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 13:49:15 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x91DjjgS031055; Tue, 1 Oct 2019 15:49:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=VTfdc7EtTRCHZkR5Z0IufvapWWMJ4Y5qlpHlU5Eyteg=;
 b=FOODUL1nm0XxmlHPZNPuIZ6lsuKBXdFScx6DXuAH/et+6+kRHI3IT8MREbMP3v10y3Z9
 geiSYaaM8bMxQOldJ7fdI30/Sm8RqJRk9p+MYe/DG5rrtB1bzaiGSl/ofq8zVaDoKkpS
 mGy/PGmYXj/cdgew3D19qs9pWTbE64yF3fLC7mYSoOrN2QeOdT8mR9ATL5SHcMEUCzgH
 XITVRQtkMkO3UP9pUqF7E6ajUcCY/FeR8ofIzTMzg9Wgk4M7DxgJ29D85cFxDP5clzgi
 yWVJK69+sNpI+Fz2aMPm4cg+3UnWJWKJlHixbeCLHyAPciY+IedRQXvIvuWOeoBlGqCc BQ== 
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
 by mx08-00178001.pphosted.com with ESMTP id 2v9vna9h6w-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 01 Oct 2019 15:49:07 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 6F95750;
 Tue,  1 Oct 2019 13:48:55 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 8966F2CE746;
 Tue,  1 Oct 2019 15:48:54 +0200 (CEST)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.92) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 1 Oct 2019
 15:48:54 +0200
Received: from [10.48.0.192] (10.48.0.192) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0;
 Tue, 1 Oct 2019 15:48:53 +0200
Subject: Re: [PATCH 2/2] pwm: stm32: add power management support
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
References: <1569857951-20007-1-git-send-email-fabrice.gasnier@st.com>
 <1569857951-20007-3-git-send-email-fabrice.gasnier@st.com>
 <20191001070450.4zogfryzo7a5ssbd@pengutronix.de>
 <3c6e551b-98a2-a418-c4ee-002077e46f31@st.com>
 <20191001095119.ws36f7liwgvbokem@pengutronix.de>
From: Fabrice Gasnier <fabrice.gasnier@st.com>
Message-ID: <f0fd1926-9fca-99c5-4a54-99252b865bc6@st.com>
Date: Tue, 1 Oct 2019 15:48:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191001095119.ws36f7liwgvbokem@pengutronix.de>
Content-Language: en-US
X-Originating-IP: [10.48.0.192]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-01_07:2019-10-01,2019-10-01 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_064914_089436_FE8DA9DB 
X-CRM114-Status: GOOD (  36.49  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-pwm@vger.kernel.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 thierry.reding@gmail.com, mcoquelin.stm32@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 benjamin.gaignard@st.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTAvMS8xOSAxMTo1MSBBTSwgVXdlIEtsZWluZS1Lw7ZuaWcgd3JvdGU6Cj4gSGVsbG8gRmFi
cmljZSwKPiAKPiBPbiBUdWUsIE9jdCAwMSwgMjAxOSBhdCAxMDoxODozMUFNICswMjAwLCBGYWJy
aWNlIEdhc25pZXIgd3JvdGU6Cj4+IE9uIDEwLzEvMTkgOTowNCBBTSwgVXdlIEtsZWluZS1Lw7Zu
aWcgd3JvdGU6Cj4+PiBPbiBNb24sIFNlcCAzMCwgMjAxOSBhdCAwNTozOToxMVBNICswMjAwLCBG
YWJyaWNlIEdhc25pZXIgd3JvdGU6Cj4+Pj4gQWRkIHN1c3BlbmQvcmVzdW1lIFBNIHNsZWVwIG9w
cy4gV2hlbiBnb2luZyB0byBsb3cgcG93ZXIsIGVuZm9yY2UgdGhlIFBXTQo+Pj4+IGNoYW5uZWwg
aXNuJ3QgYWN0aXZlLiBMZXQgdGhlIFBXTSBjb25zdW1lcnMgZGlzYWJsZSBpdCBkdXJpbmcgdGhl
aXIgb3duCj4+Pj4gc3VzcGVuZCBzZXF1ZW5jZSwgc2VlIFsxXS4gU28sIHBlcmZvcm0gYSBjaGVj
ayBoZXJlLCBhbmQgaGFuZGxlIHRoZQo+Pj4+IHBpbmN0cmwgc3RhdGVzLiBBbHNvIHJlc3RvcmUg
dGhlIGJyZWFrIGlucHV0cyB1cG9uIHJlc3VtZSwgYXMgcmVnaXN0ZXJzCj4+Pj4gY29udGVudCBt
YXkgYmUgbG9zdCB3aGVuIGdvaW5nIHRvIGxvdyBwb3dlciBtb2RlLgo+Pj4+Cj4+Pj4gWzFdIGh0
dHBzOi8vbGttbC5vcmcvbGttbC8yMDE5LzIvNS83NzAKPj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6
IEZhYnJpY2UgR2FzbmllciA8ZmFicmljZS5nYXNuaWVyQHN0LmNvbT4KPj4+PiAtLS0KPj4+PiAg
ZHJpdmVycy9wd20vcHdtLXN0bTMyLmMgfCA4MiArKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrLS0tLS0tLS0tLS0tCj4+Pj4gIDEgZmlsZSBjaGFuZ2VkLCA2MiBpbnNlcnRpb25z
KCspLCAyMCBkZWxldGlvbnMoLSkKPj4+Pgo+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3B3bS9w
d20tc3RtMzIuYyBiL2RyaXZlcnMvcHdtL3B3bS1zdG0zMi5jCj4+Pj4gaW5kZXggNzQwZTJkZS4u
OWJjZDczYSAxMDA2NDQKPj4+PiAtLS0gYS9kcml2ZXJzL3B3bS9wd20tc3RtMzIuYwo+Pj4+ICsr
KyBiL2RyaXZlcnMvcHdtL3B3bS1zdG0zMi5jCj4+Pj4gQEAgLTEyLDYgKzEyLDcgQEAKPj4+PiAg
I2luY2x1ZGUgPGxpbnV4L21mZC9zdG0zMi10aW1lcnMuaD4KPj4+PiAgI2luY2x1ZGUgPGxpbnV4
L21vZHVsZS5oPgo+Pj4+ICAjaW5jbHVkZSA8bGludXgvb2YuaD4KPj4+PiArI2luY2x1ZGUgPGxp
bnV4L3BpbmN0cmwvY29uc3VtZXIuaD4KPj4+PiAgI2luY2x1ZGUgPGxpbnV4L3BsYXRmb3JtX2Rl
dmljZS5oPgo+Pj4+ICAjaW5jbHVkZSA8bGludXgvcHdtLmg+Cj4+Pj4gIAo+Pj4+IEBAIC0xOSw2
ICsyMCwxMiBAQAo+Pj4+ICAjZGVmaW5lIENDTVJfQ0hBTk5FTF9NQVNLICAweEZGCj4+Pj4gICNk
ZWZpbmUgTUFYX0JSRUFLSU5QVVQgMgo+Pj4+ICAKPj4+PiArc3RydWN0IHN0bTMyX2JyZWFraW5w
dXQgewo+Pj4+ICsJdTMyIGluZGV4Owo+Pj4+ICsJdTMyIGxldmVsOwo+Pj4+ICsJdTMyIGZpbHRl
cjsKPj4+PiArfTsKPj4+PiArCj4+Pj4gIHN0cnVjdCBzdG0zMl9wd20gewo+Pj4+ICAJc3RydWN0
IHB3bV9jaGlwIGNoaXA7Cj4+Pj4gIAlzdHJ1Y3QgbXV0ZXggbG9jazsgLyogcHJvdGVjdCBwd20g
Y29uZmlnL2VuYWJsZSAqLwo+Pj4+IEBAIC0yNiwxNSArMzMsMTEgQEAgc3RydWN0IHN0bTMyX3B3
bSB7Cj4+Pj4gIAlzdHJ1Y3QgcmVnbWFwICpyZWdtYXA7Cj4+Pj4gIAl1MzIgbWF4X2FycjsKPj4+
PiAgCWJvb2wgaGF2ZV9jb21wbGVtZW50YXJ5X291dHB1dDsKPj4+PiArCXN0cnVjdCBzdG0zMl9i
cmVha2lucHV0IGJyZWFraW5wdXRbTUFYX0JSRUFLSU5QVVRdOwo+Pj4+ICsJdW5zaWduZWQgaW50
IG5icmVha2lucHV0Owo+Pj4+ICAJdTMyIGNhcHR1cmVbNF0gX19fX2NhY2hlbGluZV9hbGlnbmVk
OyAvKiBETUEnYWJsZSBidWZmZXIgKi8KPj4+PiAgfTsKPj4+PiAgCj4+Pj4gLXN0cnVjdCBzdG0z
Ml9icmVha2lucHV0IHsKPj4+PiAtCXUzMiBpbmRleDsKPj4+PiAtCXUzMiBsZXZlbDsKPj4+PiAt
CXUzMiBmaWx0ZXI7Cj4+Pj4gLX07Cj4+Pj4gLQo+Pj4+ICBzdGF0aWMgaW5saW5lIHN0cnVjdCBz
dG0zMl9wd20gKnRvX3N0bTMyX3B3bV9kZXYoc3RydWN0IHB3bV9jaGlwICpjaGlwKQo+Pj4+ICB7
Cj4+Pj4gIAlyZXR1cm4gY29udGFpbmVyX29mKGNoaXAsIHN0cnVjdCBzdG0zMl9wd20sIGNoaXAp
Owo+Pj4+IEBAIC01MTIsMTUgKzUxNSwyNyBAQCBzdGF0aWMgaW50IHN0bTMyX3B3bV9zZXRfYnJl
YWtpbnB1dChzdHJ1Y3Qgc3RtMzJfcHdtICpwcml2LAo+Pj4+ICAJcmV0dXJuIChiZHRyICYgYmtl
KSA/IDAgOiAtRUlOVkFMOwo+Pj4+ICB9Cj4+Pj4gIAo+Pj4+IC1zdGF0aWMgaW50IHN0bTMyX3B3
bV9hcHBseV9icmVha2lucHV0cyhzdHJ1Y3Qgc3RtMzJfcHdtICpwcml2LAo+Pj4+ICtzdGF0aWMg
aW50IHN0bTMyX3B3bV9hcHBseV9icmVha2lucHV0cyhzdHJ1Y3Qgc3RtMzJfcHdtICpwcml2KQo+
Pj4+ICt7Cj4+Pj4gKwlpbnQgaSwgcmV0ID0gMDsKPj4+PiArCj4+Pj4gKwlmb3IgKGkgPSAwOyBp
IDwgcHJpdi0+bmJyZWFraW5wdXQgJiYgIXJldDsgaSsrKSB7Cj4+Pj4gKwkJcmV0ID0gc3RtMzJf
cHdtX3NldF9icmVha2lucHV0KHByaXYsCj4+Pj4gKwkJCQkJICAgICAgIHByaXYtPmJyZWFraW5w
dXRbaV0uaW5kZXgsCj4+Pj4gKwkJCQkJICAgICAgIHByaXYtPmJyZWFraW5wdXRbaV0ubGV2ZWws
Cj4+Pj4gKwkJCQkJICAgICAgIHByaXYtPmJyZWFraW5wdXRbaV0uZmlsdGVyKTsKPj4+PiArCX0K
Pj4+PiArCj4+Pj4gKwlyZXR1cm4gcmV0Owo+Pj4+ICt9Cj4+Pgo+Pj4gQ2FuIHlvdSBleHBsYWlu
IHdoYXQgdGhlIGVmZmVjdCBvZiB0aGlzIGZ1bmN0aW9uIGlzPyBUaGlzIGlzIHNvbWV0aGluZwo+
Pj4gdGhhdCBpcyBsb3N0IGR1cmluZyBzdXNwZW5kPwo+Pgo+PiBZZXMsIHRoYXQncyB3aGF0IEkg
ZXhwbGFpbiBpbiB0aGUgY29tbWl0IG1lc3NhZ2U6IC4uLnJlZ2lzdGVycyBjb250ZW50Cj4+IG1h
eSBiZSBsb3N0IHdoZW4gZ29pbmcgdG8gbG93IHBvd2VyIG1vZGUuCj4+IERvIHlvdSB0aGluayBJ
IG5lZWQgdG8gcmVwaHJhc2UgPwo+IAo+IEFoLCByaWdodCBJIG1pc3NlZCBpdCBpbiB0aGUgY29t
bWl0IGxvZy4gSXQgbWlnaHQgYmUgd29ydGggYWRkaW5nIHRoYXQKPiB0byBhIGNvZGUgY29tbWVu
dC4gQWxzbyBoYXZpbmcgdGhlIHB1cnBvc2Ugb2YgdGhpcyBmdW5jdGlvbiBkZXNjcmliZWQKPiB3
b3VsZCBiZSBncmVhdC4gRG9lcyBpdCBjb25maWd1cmUgc29tZSBlbGVjdHJpY2FsIGNoYXJhY3Rl
cmlzdGljcz8gT3IKPiBoYXMgaXQgdG8gZG8gd2l0aCBwaW5tdXhpbmc/IFdoeSBpcyBhbiBpbnB1
dCByZWxldmFudCBmb3IgYSBQV00/CgpIaSBVd2UsCgpJJ2xsIGFkZCBhIGNvbW1lbnQgaW4gdGhl
IHN1c3BlbmQgcm91dGluZSB0byBtZW50aW9uIHRoZSBuZWVkIHRvIHJlc3RvcmUKYnJlYWtpbnB1
dCByZWdpc3RlcnMgdGhhdCBtYXkgaGF2ZSBiZWVuIGxvc3QgaW4gbG93IHBvd2VyLgoKUmVnYXJk
aW5nIHRoZSBwdXJwb3NlIG9mIHRoZSBicmVhayBmZWF0dXJlLCBtYXliZSBJIGNhbiBlbmhhbmNl
IGNvbW1lbnQKYmVsbG93IChlLmcuIEJlY2F1c2UgInN0LGJyZWFraW5wdXQiIHBhcmFtZXRlciBp
cyBvcHRpb25hbC4uLikgdG8Kc29tZXRoaW5nIGxpa2U6CgovKgogKiBTb21lIHRpbWVyIGluc3Rh
bmNlcyBjYW4gaGF2ZSBCUksgaW5wdXQgcGlucyAoZS5nLiBiYXNpY2FsbHkgYSBmYXVsdAogKiBw
aW4gZnJvbSB0aGUgb3V0cHV0IHBvd2VyIHN0YWdlKS4gVGhlIGJyZWFrIGZlYXR1cmUgYWxsb3cg
YSBzYWZlIHNodXQKICogZG93biBvZiB0aGUgUFdNIG91dHB1dHMgdG8gYSBwcmVkZWZpbmVkIHN0
YXRlLgogKiBCZWNhdXNlICJzdCxicmVha2lucHV0IiBwYXJhbWV0ZXIgaXMgb3B0aW9uYWwgZG8g
bm90IG1ha2UgcHJvYmUKICogZmFpbGVkIGlmIGl0IGRvZXNuJ3QgZXhpc3QuIE5vdGUgdGhlIHBp
bmN0cmwgaGFuZGxlIG11c3QgYmUgaW5saW5lCiAqIHdpdGggInN0LGJyZWFraW5wdXQiIHByb3Bl
cnR5LgogKi8KCkZZSSwgdGhlIGZlYXR1cmUgaXMgZGVzY3JpYmVkIGluIEFwcGxpY2F0aW9uIG5v
dGUgQU40Mjc3LCAiVXNpbmcgU1RNMzIKZGV2aWNlIFBXTSBzaHV0LWRvd24gZmVhdHVyZXMuLi4i
CgpXb3VsZCBpdCBhbnN3ZXIgeW91ciBjb25jZXJuIGhlcmU/IEJ1dCBJIHRoaW5rIHRoaXMgc2hv
dWxkIGJlIGRvbmUgaW4gYQpzZXBhcmF0ZSBwYXRjaCAobm90IHJlbGF0ZWQgdG8gUE0gc3VwcG9y
dCkuCgo+IAo+Pj4gSSB3b25kZXIgd2h5IHRoZSBwYXRjaCBpcyBzbyBiaWcuIFRoZXJlIGFyZSBz
b21lIHJlYXJyYW5nZW1lbnRzIHRoYXQKPj4+IHNob3VsZCBoYXZlIG5vIGVmZmVjdCBhbmQgSSB0
aGluayBpdCB3b3VsZCBiZSBiZW5lZmljaWFsIGZvcgo+Pj4gcmV2aWV3YWJpbGl0eSB0byBzcGxp
dCB0aGlzIHBhdGNoIGluIGEgcGF0Y2ggdGhhdCBvbmx5IGRvZXMgdGhlCj4+PiByZXN0cnVjdHVy
aW5nIGFuZCB0aGFuIG9uIHRvcCBvZiB0aGF0IGFkZCB0aGUgUE0gc3R1ZmYuCj4+Cj4+IEkgY2Fu
IHNwbGl0IHRoaXMgdG8gZWFzZSB0aGUgcmV2aWV3Lgo+Pj4KPj4+PiArCj4+Pj4gK3N0YXRpYyBp
bnQgc3RtMzJfcHdtX3Byb2JlX2JyZWFraW5wdXRzKHN0cnVjdCBzdG0zMl9wd20gKnByaXYsCj4+
Pj4gIAkJCQkgICAgICAgc3RydWN0IGRldmljZV9ub2RlICpucCkKPj4+PiAgewo+Pj4+IC0Jc3Ry
dWN0IHN0bTMyX2JyZWFraW5wdXQgYnJlYWtpbnB1dFtNQVhfQlJFQUtJTlBVVF07Cj4+Pj4gLQlp
bnQgbmIsIHJldCwgaSwgYXJyYXlfc2l6ZTsKPj4+PiArCWludCBuYiwgcmV0LCBhcnJheV9zaXpl
Owo+Pj4+ICAKPj4+PiAgCW5iID0gb2ZfcHJvcGVydHlfY291bnRfZWxlbXNfb2Zfc2l6ZShucCwg
InN0LGJyZWFraW5wdXQiLAo+Pj4+ICAJCQkJCSAgICAgc2l6ZW9mKHN0cnVjdCBzdG0zMl9icmVh
a2lucHV0KSk7Cj4+Pj4gLQo+Pj4+ICAJLyoKPj4+PiAgCSAqIEJlY2F1c2UgInN0LGJyZWFraW5w
dXQiIHBhcmFtZXRlciBpcyBvcHRpb25hbCBkbyBub3QgbWFrZSBwcm9iZQo+Pj4+ICAJICogZmFp
bGVkIGlmIGl0IGRvZXNuJ3QgZXhpc3QuCj4+Pj4gQEAgLTUzMSwyMCArNTQ2LDE0IEBAIHN0YXRp
YyBpbnQgc3RtMzJfcHdtX2FwcGx5X2JyZWFraW5wdXRzKHN0cnVjdCBzdG0zMl9wd20gKnByaXYs
Cj4+Pj4gIAlpZiAobmIgPiBNQVhfQlJFQUtJTlBVVCkKPj4+PiAgCQlyZXR1cm4gLUVJTlZBTDsK
Pj4+PiAgCj4+Pj4gKwlwcml2LT5uYnJlYWtpbnB1dCA9IG5iOwo+Pj4+ICAJYXJyYXlfc2l6ZSA9
IG5iICogc2l6ZW9mKHN0cnVjdCBzdG0zMl9icmVha2lucHV0KSAvIHNpemVvZih1MzIpOwo+Pj4+
ICAJcmV0ID0gb2ZfcHJvcGVydHlfcmVhZF91MzJfYXJyYXkobnAsICJzdCxicmVha2lucHV0IiwK
Pj4+PiAtCQkJCQkgKHUzMiAqKWJyZWFraW5wdXQsIGFycmF5X3NpemUpOwo+Pj4+ICsJCQkJCSAo
dTMyICopcHJpdi0+YnJlYWtpbnB1dCwgYXJyYXlfc2l6ZSk7Cj4+Pj4gIAlpZiAocmV0KQo+Pj4+
ICAJCXJldHVybiByZXQ7Cj4+Pj4gIAo+Pj4+IC0JZm9yIChpID0gMDsgaSA8IG5iICYmICFyZXQ7
IGkrKykgewo+Pj4+IC0JCXJldCA9IHN0bTMyX3B3bV9zZXRfYnJlYWtpbnB1dChwcml2LAo+Pj4+
IC0JCQkJCSAgICAgICBicmVha2lucHV0W2ldLmluZGV4LAo+Pj4+IC0JCQkJCSAgICAgICBicmVh
a2lucHV0W2ldLmxldmVsLAo+Pj4+IC0JCQkJCSAgICAgICBicmVha2lucHV0W2ldLmZpbHRlcik7
Cj4+Pj4gLQl9Cj4+Pj4gLQo+Pj4+IC0JcmV0dXJuIHJldDsKPj4+PiArCXJldHVybiBzdG0zMl9w
d21fYXBwbHlfYnJlYWtpbnB1dHMocHJpdik7Cj4+Pj4gIH0KPj4+PiAgCj4+Pj4gIHN0YXRpYyB2
b2lkIHN0bTMyX3B3bV9kZXRlY3RfY29tcGxlbWVudGFyeShzdHJ1Y3Qgc3RtMzJfcHdtICpwcml2
KQo+Pj4+IEBAIC02MTQsNyArNjIzLDcgQEAgc3RhdGljIGludCBzdG0zMl9wd21fcHJvYmUoc3Ry
dWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPj4+PiAgCWlmICghcHJpdi0+cmVnbWFwIHx8ICFw
cml2LT5jbGspCj4+Pj4gIAkJcmV0dXJuIC1FSU5WQUw7Cj4+Pj4gIAo+Pj4+IC0JcmV0ID0gc3Rt
MzJfcHdtX2FwcGx5X2JyZWFraW5wdXRzKHByaXYsIG5wKTsKPj4+PiArCXJldCA9IHN0bTMyX3B3
bV9wcm9iZV9icmVha2lucHV0cyhwcml2LCBucCk7Cj4+Pj4gIAlpZiAocmV0KQo+Pj4+ICAJCXJl
dHVybiByZXQ7Cj4+Pj4gIAo+Pj4+IEBAIC02NDcsNiArNjU2LDM4IEBAIHN0YXRpYyBpbnQgc3Rt
MzJfcHdtX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+Pj4+ICAJcmV0dXJu
IDA7Cj4+Pj4gIH0KPj4+PiAgCj4+Pj4gK3N0YXRpYyBpbnQgX19tYXliZV91bnVzZWQgc3RtMzJf
cHdtX3N1c3BlbmQoc3RydWN0IGRldmljZSAqZGV2KQo+Pj4+ICt7Cj4+Pj4gKwlzdHJ1Y3Qgc3Rt
MzJfcHdtICpwcml2ID0gZGV2X2dldF9kcnZkYXRhKGRldik7Cj4+Pj4gKwlzdHJ1Y3QgcHdtX3N0
YXRlIHN0YXRlOwo+Pj4+ICsJdW5zaWduZWQgaW50IGk7Cj4+Pj4gKwo+Pj4+ICsJZm9yIChpID0g
MDsgaSA8IHByaXYtPmNoaXAubnB3bTsgaSsrKSB7Cj4+Pj4gKwkJcHdtX2dldF9zdGF0ZSgmcHJp
di0+Y2hpcC5wd21zW2ldLCAmc3RhdGUpOwo+Pj4KPj4+IHB3bV9nZXRfc3RhdGUgaXMgYSBmdW5j
dGlvbiBkZXNpZ25lZCB0byBiZSB1c2VkIGJ5IFBXTSBjb25zdW1lcnMuIEkKPj4+IHdvdWxkIHBy
ZWZlciB0byBjaGVjayB0aGUgaGFyZHdhcmUgcmVnaXN0ZXJzIGhlcmUgaW5zdGVhZC4KPj4KPj4g
SXQncyBhbHNvIHVzZWZ1bCBmb3IgUFdNIHByb3ZpZGVyOiBUaGlzIFBXTSBkcml2ZXIgaXMgcGFy
dCBvZiBhIE1GRCB0aGF0Cj4gCj4gSSBkb24ndCBkb3VidCAidXNlZnVsIi4gQnV0IHN0aWxsIHlv
dSBzaG91bGQgb25seSBjYWxsIGl0IGlmIHlvdSBjYWxsZWQKPiBwd21fZ2V0IChvciBhIHNpbWls
YXIgZnVuY3Rpb24pIHRvIGdldCBhIFBXTSBoYW5kbGUuCj4gCj4+IGFsc28gdGFrZSBjYXJlIG9m
IElJTyB0cmlnZ2VyIChjYW4gYmUgdXNlZCBzaW11bHRhbmVvdXNseSkuIFNpbXBseQo+PiByZWFk
aW5nIGEgcmVnaXN0ZXIgZG9lc24ndCB0ZWxsIHVzIHRoYXQgdGhlIHRpbWVyIGlzIHVzZWQvY29u
ZmlndXJlZCBhcwo+PiBhIFBXTSBoZXJlLiBUaGF0J3MgdGhlIHJlYXNvbiB0byB1c2UgdGhpcyBo
ZWxwZXIgdG8gcmVhZCBwd20tPnN0YXRlLgo+IAo+IEhvdyBjYW4gdGhlIHB3bSBkcml2ZXIgYmUg
Ym91bmQgYW5kIHRoZSBoYXJkd2FyZSBub3QgYmUgdXNlZCBhIFBXTT8KPiAKPj4gRG8geW91IHdp
c2ggSSBhZGQgYSBjb21tZW50IHRvIGNsYXJpZnkgdGhpcyBoZXJlID8KPiAKPiBObywgSSB3aXNo
IHlvdSBpbnNwZWN0IHRoZSBoYXJkd2FyZSB0byBkZXRlcm1pbmUgd2hhdCB5b3UgbmVlZCB0byBr
bm93IDotKQoKT2ssIGZpbmFsbHkgSSBmb3VuZCBvdXQgdGhlICJhY3RpdmVfY2hhbm5lbHMoKSIg
cm91dGluZSBkb2VzIHRoZSBqb2IKKGUuZy4gcmVhZCBDQ0VSIHJlZ2lzdGVyKSwgYW5kIGlzIGFs
cmVhZHkgdXNlZCBmb3IgdGhhdCBwdXJwb3NlIChjaGVjawpmb3IgYWN0aXZlIGNoYW5uZWxzKS4K
SSdsbCB1c2UgaXQgaW4gdjIuCgpUaGFua3MsCkZhYnJpY2UKCj4gCj4+PiBXaGF0IGlmIHRoZXJl
IGlzIG5vIGNvbnN1bWVyIGFuZCB0aGUgUFdNIGp1c3QgaGFwcGVucyB0byBiZSBlbmFibGVkIGJ5
Cj4+PiB0aGUgYm9vdGxvYWRlcj8gT3IgaXMgdGhpcyB0b28gbWlub3IgYW4gaXNzdWUgdG8gYmUg
d29ydGggY29uc2lkZXJhdGlvbj8KPj4KPj4gVGhhdCdzIHRoZSBwdXJwb3NlIG9mIHJldHVybmlu
ZyAtRUJVU1k6ICJQV00gc2hvdWxkIG5vdCBzdG9wIGlmIHRoZSBQV00KPj4gdXNlciBkaWRuJ3Qg
Y2FsbCBwd21fZGlzYWJsZSgpIiAuLi4gInRvIGF2b2lkIHNpdHVhdGlvbiB3aGVyZSB0aGUgUFdN
IGlzCj4+IGFjdHVhbGx5IHN1c3BlbmRlZCBiZWZvcmUgdGhlIHVzZXIiLiBUaGlzIGhhcyBiZWVu
IGVuZm9yY2VkIGluIGxhdGVyCj4+IHNlcmllcyB3aXRoIHRoZSBkZXZpY2VfbGlua19hZGQoKS4g
U2VlIG91ciBwcmV2aW91cyBkaXNjdXNzaW9ucyBoZXJlOgo+PiBodHRwczovL2xrbWwub3JnL2xr
bWwvMjAxOS8yLzUvNzcwCj4+IFNvLCBJIGd1ZXNzIHRoaXMgd291bGQgcG9pbnQgZXhhY3RseSBh
IGxhY2sgZm9yIGEgUFdNIHVzZXIgdG8gbWFuYWdlIGl0Cj4+IGFmdGVyIHRoZSBib290IHN0YWdl
LCBpbiB0aGUga2VybmVsLgo+Pgo+PiBDb3VsZCB5b3UgcGxlYXNlIGNsYXJpZnksIHByb3ZpZGUg
YW4gZXhhbXBsZSBoZXJlID8KPiAKPiBUaGlzIGlzIHNvbWV0aGluZyBkaWZmZXJlbnQgdGhhbiBJ
IGFza2VkIGZvci4gTm90IGhhdmluZyBhIGNvbnN1bWVyCj4gaXNuJ3QgYW4gZXJyb3IuIFN0aWxs
IHRoZSBwd20gbWlnaHQgYmUgcnVubmluZyAoZm9yIGEgZ29vZCByZWFzb24gb3IKPiBub3QpLiAo
VGhpcyBpcyBtb3JlIGEgcXVlc3Rpb24gdGhhdCBhZmZlY3RzIGhvdyBhIGRyaXZlciBzaG91bGQg
YmVoYXZlCj4gaW4gZ2VuZXJhbCwgaXQgaXMgbm90IHNwZWNpZmljIHRvIHRoZSBzdG0zMiBkcml2
ZXIgaGVyZS4pCj4gCj4gQmVzdCByZWdhcmRzCj4gVXdlCj4gCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
