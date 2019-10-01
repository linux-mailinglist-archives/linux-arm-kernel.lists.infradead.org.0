Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42E18C2EBB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 10:19:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eomQFCKsHnmtGdTX1uk6VRLfkmsDGflGFwQQEj7w9uI=; b=r5sI2a9MrSOUBy
	QaBNCv9C2pvJ3KTXdE9mZFfPYijl1T5p2u4QSLfhYe53QQBDV+2YB7x5wQceZLY2aASfut6gFooAX
	WQVvLjUNOKj+Xk6afvQ2I5CErLsLXyNI6shHORjTUD8koppMciZBJwX6LhTKtPpJw55gDiyX5+3Hy
	5LNLWruukGRpL4E1QTfK0qaJlFq7tfPT7nM+6mU5V+cx4MKWF+YapcLL5C/1J8isejeSCweTTcm7W
	28w8G1P6MXyTiHuplHOf5br8cKAD0SbWyJX4BYJstxT7hTbVPQKvtDhTFw6tUkX+hLxOwEWU+EDVE
	7HqAFgl7Meui7gZSNPjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFDMy-0002cc-Cv; Tue, 01 Oct 2019 08:18:52 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFDMq-0002c2-Ir
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 08:18:46 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x918GGSn032726; Tue, 1 Oct 2019 10:18:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=mN3zwHVMlS9XIg54J7DpTZd7PPmBpXVwI1xLJWxnpGg=;
 b=nIWFlUzxCMWmLyvlbhF7uyhvZ7ZKrnLlLYtk3LMAHWtFOi8TgmcqVRAESrRCbV1H966c
 BGE5fOTKuhZ+n5Px7v3Wfa/tYnVhBV7dsS86FSl6mVJrvje9aLbILZINc6Mn93DoYzPk
 51FZSHiHQv5j1qjL2L8JB4+JuGs51jC4Dr2H2QbcTvN+f8KF4tFMTYFu643PEhJ2De9h
 RjQhDKokkWTzqEfghnVqnH/5/qnMP3UC6oKxEeKbNBZoYmQLmAjM2Q8gErIO5gCSfEyg
 TlUzVseNWQVCIIgInh5DBAiPVfLY7r4vckN6qEYro+AO+9FlGElnZ9d4jmfmbICbLGjc hw== 
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
 by mx08-00178001.pphosted.com with ESMTP id 2v9vna7ua8-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 01 Oct 2019 10:18:37 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id A6F0B4C;
 Tue,  1 Oct 2019 08:18:33 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 1CA1D2AF4CC;
 Tue,  1 Oct 2019 10:18:33 +0200 (CEST)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.92) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 1 Oct 2019
 10:18:32 +0200
Received: from [10.48.0.192] (10.48.0.192) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0;
 Tue, 1 Oct 2019 10:18:32 +0200
Subject: Re: [PATCH 2/2] pwm: stm32: add power management support
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
References: <1569857951-20007-1-git-send-email-fabrice.gasnier@st.com>
 <1569857951-20007-3-git-send-email-fabrice.gasnier@st.com>
 <20191001070450.4zogfryzo7a5ssbd@pengutronix.de>
From: Fabrice Gasnier <fabrice.gasnier@st.com>
Message-ID: <3c6e551b-98a2-a418-c4ee-002077e46f31@st.com>
Date: Tue, 1 Oct 2019 10:18:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191001070450.4zogfryzo7a5ssbd@pengutronix.de>
Content-Language: en-US
X-Originating-IP: [10.48.0.192]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-01_04:2019-09-30,2019-10-01 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_011845_064179_161A637C 
X-CRM114-Status: GOOD (  31.76  )
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

T24gMTAvMS8xOSA5OjA0IEFNLCBVd2UgS2xlaW5lLUvDtm5pZyB3cm90ZToKPiBIZWxsbyBGYWJy
aWNlLAo+IAo+IE9uIE1vbiwgU2VwIDMwLCAyMDE5IGF0IDA1OjM5OjExUE0gKzAyMDAsIEZhYnJp
Y2UgR2FzbmllciB3cm90ZToKPj4gQWRkIHN1c3BlbmQvcmVzdW1lIFBNIHNsZWVwIG9wcy4gV2hl
biBnb2luZyB0byBsb3cgcG93ZXIsIGVuZm9yY2UgdGhlIFBXTQo+PiBjaGFubmVsIGlzbid0IGFj
dGl2ZS4gTGV0IHRoZSBQV00gY29uc3VtZXJzIGRpc2FibGUgaXQgZHVyaW5nIHRoZWlyIG93bgo+
PiBzdXNwZW5kIHNlcXVlbmNlLCBzZWUgWzFdLiBTbywgcGVyZm9ybSBhIGNoZWNrIGhlcmUsIGFu
ZCBoYW5kbGUgdGhlCj4+IHBpbmN0cmwgc3RhdGVzLiBBbHNvIHJlc3RvcmUgdGhlIGJyZWFrIGlu
cHV0cyB1cG9uIHJlc3VtZSwgYXMgcmVnaXN0ZXJzCj4+IGNvbnRlbnQgbWF5IGJlIGxvc3Qgd2hl
biBnb2luZyB0byBsb3cgcG93ZXIgbW9kZS4KPj4KPj4gWzFdIGh0dHBzOi8vbGttbC5vcmcvbGtt
bC8yMDE5LzIvNS83NzAKPj4KPj4gU2lnbmVkLW9mZi1ieTogRmFicmljZSBHYXNuaWVyIDxmYWJy
aWNlLmdhc25pZXJAc3QuY29tPgo+PiAtLS0KPj4gIGRyaXZlcnMvcHdtL3B3bS1zdG0zMi5jIHwg
ODIgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLQo+PiAg
MSBmaWxlIGNoYW5nZWQsIDYyIGluc2VydGlvbnMoKyksIDIwIGRlbGV0aW9ucygtKQo+Pgo+PiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9wd20vcHdtLXN0bTMyLmMgYi9kcml2ZXJzL3B3bS9wd20tc3Rt
MzIuYwo+PiBpbmRleCA3NDBlMmRlLi45YmNkNzNhIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL3B3
bS9wd20tc3RtMzIuYwo+PiArKysgYi9kcml2ZXJzL3B3bS9wd20tc3RtMzIuYwo+PiBAQCAtMTIs
NiArMTIsNyBAQAo+PiAgI2luY2x1ZGUgPGxpbnV4L21mZC9zdG0zMi10aW1lcnMuaD4KPj4gICNp
bmNsdWRlIDxsaW51eC9tb2R1bGUuaD4KPj4gICNpbmNsdWRlIDxsaW51eC9vZi5oPgo+PiArI2lu
Y2x1ZGUgPGxpbnV4L3BpbmN0cmwvY29uc3VtZXIuaD4KPj4gICNpbmNsdWRlIDxsaW51eC9wbGF0
Zm9ybV9kZXZpY2UuaD4KPj4gICNpbmNsdWRlIDxsaW51eC9wd20uaD4KPj4gIAo+PiBAQCAtMTks
NiArMjAsMTIgQEAKPj4gICNkZWZpbmUgQ0NNUl9DSEFOTkVMX01BU0sgIDB4RkYKPj4gICNkZWZp
bmUgTUFYX0JSRUFLSU5QVVQgMgo+PiAgCj4+ICtzdHJ1Y3Qgc3RtMzJfYnJlYWtpbnB1dCB7Cj4+
ICsJdTMyIGluZGV4Owo+PiArCXUzMiBsZXZlbDsKPj4gKwl1MzIgZmlsdGVyOwo+PiArfTsKPj4g
Kwo+PiAgc3RydWN0IHN0bTMyX3B3bSB7Cj4+ICAJc3RydWN0IHB3bV9jaGlwIGNoaXA7Cj4+ICAJ
c3RydWN0IG11dGV4IGxvY2s7IC8qIHByb3RlY3QgcHdtIGNvbmZpZy9lbmFibGUgKi8KPj4gQEAg
LTI2LDE1ICszMywxMSBAQCBzdHJ1Y3Qgc3RtMzJfcHdtIHsKPj4gIAlzdHJ1Y3QgcmVnbWFwICpy
ZWdtYXA7Cj4+ICAJdTMyIG1heF9hcnI7Cj4+ICAJYm9vbCBoYXZlX2NvbXBsZW1lbnRhcnlfb3V0
cHV0Owo+PiArCXN0cnVjdCBzdG0zMl9icmVha2lucHV0IGJyZWFraW5wdXRbTUFYX0JSRUFLSU5Q
VVRdOwo+PiArCXVuc2lnbmVkIGludCBuYnJlYWtpbnB1dDsKPj4gIAl1MzIgY2FwdHVyZVs0XSBf
X19fY2FjaGVsaW5lX2FsaWduZWQ7IC8qIERNQSdhYmxlIGJ1ZmZlciAqLwo+PiAgfTsKPj4gIAo+
PiAtc3RydWN0IHN0bTMyX2JyZWFraW5wdXQgewo+PiAtCXUzMiBpbmRleDsKPj4gLQl1MzIgbGV2
ZWw7Cj4+IC0JdTMyIGZpbHRlcjsKPj4gLX07Cj4+IC0KPj4gIHN0YXRpYyBpbmxpbmUgc3RydWN0
IHN0bTMyX3B3bSAqdG9fc3RtMzJfcHdtX2RldihzdHJ1Y3QgcHdtX2NoaXAgKmNoaXApCj4+ICB7
Cj4+ICAJcmV0dXJuIGNvbnRhaW5lcl9vZihjaGlwLCBzdHJ1Y3Qgc3RtMzJfcHdtLCBjaGlwKTsK
Pj4gQEAgLTUxMiwxNSArNTE1LDI3IEBAIHN0YXRpYyBpbnQgc3RtMzJfcHdtX3NldF9icmVha2lu
cHV0KHN0cnVjdCBzdG0zMl9wd20gKnByaXYsCj4+ICAJcmV0dXJuIChiZHRyICYgYmtlKSA/IDAg
OiAtRUlOVkFMOwo+PiAgfQo+PiAgCj4+IC1zdGF0aWMgaW50IHN0bTMyX3B3bV9hcHBseV9icmVh
a2lucHV0cyhzdHJ1Y3Qgc3RtMzJfcHdtICpwcml2LAo+PiArc3RhdGljIGludCBzdG0zMl9wd21f
YXBwbHlfYnJlYWtpbnB1dHMoc3RydWN0IHN0bTMyX3B3bSAqcHJpdikKPj4gK3sKPj4gKwlpbnQg
aSwgcmV0ID0gMDsKPj4gKwo+PiArCWZvciAoaSA9IDA7IGkgPCBwcml2LT5uYnJlYWtpbnB1dCAm
JiAhcmV0OyBpKyspIHsKPj4gKwkJcmV0ID0gc3RtMzJfcHdtX3NldF9icmVha2lucHV0KHByaXYs
Cj4+ICsJCQkJCSAgICAgICBwcml2LT5icmVha2lucHV0W2ldLmluZGV4LAo+PiArCQkJCQkgICAg
ICAgcHJpdi0+YnJlYWtpbnB1dFtpXS5sZXZlbCwKPj4gKwkJCQkJICAgICAgIHByaXYtPmJyZWFr
aW5wdXRbaV0uZmlsdGVyKTsKPj4gKwl9Cj4+ICsKPj4gKwlyZXR1cm4gcmV0Owo+PiArfQo+IAo+
IENhbiB5b3UgZXhwbGFpbiB3aGF0IHRoZSBlZmZlY3Qgb2YgdGhpcyBmdW5jdGlvbiBpcz8gVGhp
cyBpcyBzb21ldGhpbmcKPiB0aGF0IGlzIGxvc3QgZHVyaW5nIHN1c3BlbmQ/CgpIaSBVd2UsCgpZ
ZXMsIHRoYXQncyB3aGF0IEkgZXhwbGFpbiBpbiB0aGUgY29tbWl0IG1lc3NhZ2U6IC4uLnJlZ2lz
dGVycyBjb250ZW50Cm1heSBiZSBsb3N0IHdoZW4gZ29pbmcgdG8gbG93IHBvd2VyIG1vZGUuCkRv
IHlvdSB0aGluayBJIG5lZWQgdG8gcmVwaHJhc2UgPwoKPiAKPiBJIHdvbmRlciB3aHkgdGhlIHBh
dGNoIGlzIHNvIGJpZy4gVGhlcmUgYXJlIHNvbWUgcmVhcnJhbmdlbWVudHMgdGhhdAo+IHNob3Vs
ZCBoYXZlIG5vIGVmZmVjdCBhbmQgSSB0aGluayBpdCB3b3VsZCBiZSBiZW5lZmljaWFsIGZvcgo+
IHJldmlld2FiaWxpdHkgdG8gc3BsaXQgdGhpcyBwYXRjaCBpbiBhIHBhdGNoIHRoYXQgb25seSBk
b2VzIHRoZQo+IHJlc3RydWN0dXJpbmcgYW5kIHRoYW4gb24gdG9wIG9mIHRoYXQgYWRkIHRoZSBQ
TSBzdHVmZi4KCkkgY2FuIHNwbGl0IHRoaXMgdG8gZWFzZSB0aGUgcmV2aWV3Lgo+IAo+PiArCj4+
ICtzdGF0aWMgaW50IHN0bTMyX3B3bV9wcm9iZV9icmVha2lucHV0cyhzdHJ1Y3Qgc3RtMzJfcHdt
ICpwcml2LAo+PiAgCQkJCSAgICAgICBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wKQo+PiAgewo+PiAt
CXN0cnVjdCBzdG0zMl9icmVha2lucHV0IGJyZWFraW5wdXRbTUFYX0JSRUFLSU5QVVRdOwo+PiAt
CWludCBuYiwgcmV0LCBpLCBhcnJheV9zaXplOwo+PiArCWludCBuYiwgcmV0LCBhcnJheV9zaXpl
Owo+PiAgCj4+ICAJbmIgPSBvZl9wcm9wZXJ0eV9jb3VudF9lbGVtc19vZl9zaXplKG5wLCAic3Qs
YnJlYWtpbnB1dCIsCj4+ICAJCQkJCSAgICAgc2l6ZW9mKHN0cnVjdCBzdG0zMl9icmVha2lucHV0
KSk7Cj4+IC0KPj4gIAkvKgo+PiAgCSAqIEJlY2F1c2UgInN0LGJyZWFraW5wdXQiIHBhcmFtZXRl
ciBpcyBvcHRpb25hbCBkbyBub3QgbWFrZSBwcm9iZQo+PiAgCSAqIGZhaWxlZCBpZiBpdCBkb2Vz
bid0IGV4aXN0Lgo+PiBAQCAtNTMxLDIwICs1NDYsMTQgQEAgc3RhdGljIGludCBzdG0zMl9wd21f
YXBwbHlfYnJlYWtpbnB1dHMoc3RydWN0IHN0bTMyX3B3bSAqcHJpdiwKPj4gIAlpZiAobmIgPiBN
QVhfQlJFQUtJTlBVVCkKPj4gIAkJcmV0dXJuIC1FSU5WQUw7Cj4+ICAKPj4gKwlwcml2LT5uYnJl
YWtpbnB1dCA9IG5iOwo+PiAgCWFycmF5X3NpemUgPSBuYiAqIHNpemVvZihzdHJ1Y3Qgc3RtMzJf
YnJlYWtpbnB1dCkgLyBzaXplb2YodTMyKTsKPj4gIAlyZXQgPSBvZl9wcm9wZXJ0eV9yZWFkX3Uz
Ml9hcnJheShucCwgInN0LGJyZWFraW5wdXQiLAo+PiAtCQkJCQkgKHUzMiAqKWJyZWFraW5wdXQs
IGFycmF5X3NpemUpOwo+PiArCQkJCQkgKHUzMiAqKXByaXYtPmJyZWFraW5wdXQsIGFycmF5X3Np
emUpOwo+PiAgCWlmIChyZXQpCj4+ICAJCXJldHVybiByZXQ7Cj4+ICAKPj4gLQlmb3IgKGkgPSAw
OyBpIDwgbmIgJiYgIXJldDsgaSsrKSB7Cj4+IC0JCXJldCA9IHN0bTMyX3B3bV9zZXRfYnJlYWtp
bnB1dChwcml2LAo+PiAtCQkJCQkgICAgICAgYnJlYWtpbnB1dFtpXS5pbmRleCwKPj4gLQkJCQkJ
ICAgICAgIGJyZWFraW5wdXRbaV0ubGV2ZWwsCj4+IC0JCQkJCSAgICAgICBicmVha2lucHV0W2ld
LmZpbHRlcik7Cj4+IC0JfQo+PiAtCj4+IC0JcmV0dXJuIHJldDsKPj4gKwlyZXR1cm4gc3RtMzJf
cHdtX2FwcGx5X2JyZWFraW5wdXRzKHByaXYpOwo+PiAgfQo+PiAgCj4+ICBzdGF0aWMgdm9pZCBz
dG0zMl9wd21fZGV0ZWN0X2NvbXBsZW1lbnRhcnkoc3RydWN0IHN0bTMyX3B3bSAqcHJpdikKPj4g
QEAgLTYxNCw3ICs2MjMsNyBAQCBzdGF0aWMgaW50IHN0bTMyX3B3bV9wcm9iZShzdHJ1Y3QgcGxh
dGZvcm1fZGV2aWNlICpwZGV2KQo+PiAgCWlmICghcHJpdi0+cmVnbWFwIHx8ICFwcml2LT5jbGsp
Cj4+ICAJCXJldHVybiAtRUlOVkFMOwo+PiAgCj4+IC0JcmV0ID0gc3RtMzJfcHdtX2FwcGx5X2Jy
ZWFraW5wdXRzKHByaXYsIG5wKTsKPj4gKwlyZXQgPSBzdG0zMl9wd21fcHJvYmVfYnJlYWtpbnB1
dHMocHJpdiwgbnApOwo+PiAgCWlmIChyZXQpCj4+ICAJCXJldHVybiByZXQ7Cj4+ICAKPj4gQEAg
LTY0Nyw2ICs2NTYsMzggQEAgc3RhdGljIGludCBzdG0zMl9wd21fcmVtb3ZlKHN0cnVjdCBwbGF0
Zm9ybV9kZXZpY2UgKnBkZXYpCj4+ICAJcmV0dXJuIDA7Cj4+ICB9Cj4+ICAKPj4gK3N0YXRpYyBp
bnQgX19tYXliZV91bnVzZWQgc3RtMzJfcHdtX3N1c3BlbmQoc3RydWN0IGRldmljZSAqZGV2KQo+
PiArewo+PiArCXN0cnVjdCBzdG0zMl9wd20gKnByaXYgPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsK
Pj4gKwlzdHJ1Y3QgcHdtX3N0YXRlIHN0YXRlOwo+PiArCXVuc2lnbmVkIGludCBpOwo+PiArCj4+
ICsJZm9yIChpID0gMDsgaSA8IHByaXYtPmNoaXAubnB3bTsgaSsrKSB7Cj4+ICsJCXB3bV9nZXRf
c3RhdGUoJnByaXYtPmNoaXAucHdtc1tpXSwgJnN0YXRlKTsKPiAKPiBwd21fZ2V0X3N0YXRlIGlz
IGEgZnVuY3Rpb24gZGVzaWduZWQgdG8gYmUgdXNlZCBieSBQV00gY29uc3VtZXJzLiBJCj4gd291
bGQgcHJlZmVyIHRvIGNoZWNrIHRoZSBoYXJkd2FyZSByZWdpc3RlcnMgaGVyZSBpbnN0ZWFkLgoK
SXQncyBhbHNvIHVzZWZ1bCBmb3IgUFdNIHByb3ZpZGVyOiBUaGlzIFBXTSBkcml2ZXIgaXMgcGFy
dCBvZiBhIE1GRCB0aGF0CmFsc28gdGFrZSBjYXJlIG9mIElJTyB0cmlnZ2VyIChjYW4gYmUgdXNl
ZCBzaW11bHRhbmVvdXNseSkuIFNpbXBseQpyZWFkaW5nIGEgcmVnaXN0ZXIgZG9lc24ndCB0ZWxs
IHVzIHRoYXQgdGhlIHRpbWVyIGlzIHVzZWQvY29uZmlndXJlZCBhcwphIFBXTSBoZXJlLiBUaGF0
J3MgdGhlIHJlYXNvbiB0byB1c2UgdGhpcyBoZWxwZXIgdG8gcmVhZCBwd20tPnN0YXRlLgoKRG8g
eW91IHdpc2ggSSBhZGQgYSBjb21tZW50IHRvIGNsYXJpZnkgdGhpcyBoZXJlID8KCj4gCj4gV2hh
dCBpZiB0aGVyZSBpcyBubyBjb25zdW1lciBhbmQgdGhlIFBXTSBqdXN0IGhhcHBlbnMgdG8gYmUg
ZW5hYmxlZCBieQo+IHRoZSBib290bG9hZGVyPyBPciBpcyB0aGlzIHRvbyBtaW5vciBhbiBpc3N1
ZSB0byBiZSB3b3J0aCBjb25zaWRlcmF0aW9uPwoKVGhhdCdzIHRoZSBwdXJwb3NlIG9mIHJldHVy
bmluZyAtRUJVU1k6ICJQV00gc2hvdWxkIG5vdCBzdG9wIGlmIHRoZSBQV00KdXNlciBkaWRuJ3Qg
Y2FsbCBwd21fZGlzYWJsZSgpIiAuLi4gInRvIGF2b2lkIHNpdHVhdGlvbiB3aGVyZSB0aGUgUFdN
IGlzCmFjdHVhbGx5IHN1c3BlbmRlZCBiZWZvcmUgdGhlIHVzZXIiLiBUaGlzIGhhcyBiZWVuIGVu
Zm9yY2VkIGluIGxhdGVyCnNlcmllcyB3aXRoIHRoZSBkZXZpY2VfbGlua19hZGQoKS4gU2VlIG91
ciBwcmV2aW91cyBkaXNjdXNzaW9ucyBoZXJlOgpodHRwczovL2xrbWwub3JnL2xrbWwvMjAxOS8y
LzUvNzcwClNvLCBJIGd1ZXNzIHRoaXMgd291bGQgcG9pbnQgZXhhY3RseSBhIGxhY2sgZm9yIGEg
UFdNIHVzZXIgdG8gbWFuYWdlIGl0CmFmdGVyIHRoZSBib290IHN0YWdlLCBpbiB0aGUga2VybmVs
LgoKQ291bGQgeW91IHBsZWFzZSBjbGFyaWZ5LCBwcm92aWRlIGFuIGV4YW1wbGUgaGVyZSA/CgpU
aGFua3MgZm9yIHJldmlld2luZywKQlIsCkZhYnJpY2UKCj4gCj4gQmVzdCByZWdhcmRzCj4gVXdl
Cj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
