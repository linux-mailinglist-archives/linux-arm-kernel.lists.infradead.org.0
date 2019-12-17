Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C59391226D8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 09:41:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vL2cSxMCkzOGdowO4jcNh/IICWHyL8rrQgMQBCnTN1Y=; b=HD2SNhRrPeLzMtH3RT/GDRXvU
	DRAz/o1IK+kKe92txZGjoRMsa3JivzrOZ2276+XW/HA5w7miBH+W0u8cPJuFw0aWb9o1IfCgFExxl
	ojy0KX75SIBg+78U7Iu7aDDHerkmU6UmPxwI4+sSGAL0C45+J9LvIMrymrw4HsyOxGNrU7bezGx3W
	sDBOwem7+jsfhoWe6go3geUMXLlSBPPvS/7t5Hr522cKnsiMvUNsli9YRXUK1vipPon4X+tS4IvBd
	tpK0BRYxY67kU8AbwS77J//4cg2Cfmc3snJFba9vmBJPc0jfLyVk9h2mp6hMOUP2db0KSfah8LGVi
	mxRi4xmkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih8Pm-00013m-7W; Tue, 17 Dec 2019 08:41:10 +0000
Received: from mail-sz.amlogic.com ([211.162.65.117])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih8Pc-00012p-DT; Tue, 17 Dec 2019 08:41:01 +0000
Received: from [10.28.39.99] (10.28.39.99) by mail-sz.amlogic.com (10.28.11.5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1591.10; Tue, 17 Dec
 2019 16:41:25 +0800
Subject: Re: [PATCH v4 2/6] clk: meson: add support for A1 PLL clock ops
To: Jerome Brunet <jbrunet@baylibre.com>, Neil Armstrong
 <narmstrong@baylibre.com>
References: <20191206074052.15557-1-jian.hu@amlogic.com>
 <20191206074052.15557-3-jian.hu@amlogic.com>
 <1j8snhluhg.fsf@starbuckisacylon.baylibre.com>
From: Jian Hu <jian.hu@amlogic.com>
Message-ID: <741284be-2ae8-1102-22bc-c510e822c883@amlogic.com>
Date: Tue, 17 Dec 2019 16:41:25 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <1j8snhluhg.fsf@starbuckisacylon.baylibre.com>
Content-Language: en-US
X-Originating-IP: [10.28.39.99]
X-ClientProxiedBy: mail-sz.amlogic.com (10.28.11.5) To mail-sz.amlogic.com
 (10.28.11.5)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_004100_455418_3983AD21 
X-CRM114-Status: GOOD (  22.32  )
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
Cc: Rob Herring <robh@kernel.org>, Victor Wan <victor.wan@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>, devicetree@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Qiufang Dai <qiufang.dai@amlogic.com>,
 Chandle Zou <chandle.zou@amlogic.com>, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAyMDE5LzEyLzEyIDE4OjE2LCBKZXJvbWUgQnJ1bmV0IHdyb3RlOgo+IAo+IE9uIEZyaSAw
NiBEZWMgMjAxOSBhdCAwODo0MCwgSmlhbiBIdSA8amlhbi5odUBhbWxvZ2ljLmNvbT4gd3JvdGU6
Cj4gCj4+IFRoZSBBMSBQTEwgZGVzaWduIGlzIGRpZmZlcmVudCB3aXRoIHByZXZpb3VzIFNvQ3Mu
IFRoZSBQTEwKPj4gaW50ZXJuYWwgYW5hbG9nIG1vZHVsZXMgUG93ZXItb24gc2VxdWVuY2UgaXMg
ZGlmZmVyZW50Cj4+IHdpdGggcHJldmlvdXMsIGFuZCB0aHVzIHJlcXVpcmVzIGEgc3RyaWN0IHJl
Z2lzdGVyIHNlcXVlbmNlIHRvCj4+IGVuYWJsZSB0aGUgUExMLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5
OiBKaWFuIEh1IDxqaWFuLmh1QGFtbG9naWMuY29tPgo+PiAtLS0KPj4gICBkcml2ZXJzL2Nsay9t
ZXNvbi9jbGstcGxsLmMgfCAyMSArKysrKysrKysrKysrKysrKysrKysKPj4gICBkcml2ZXJzL2Ns
ay9tZXNvbi9jbGstcGxsLmggfCAgMSArCj4+ICAgZHJpdmVycy9jbGsvbWVzb24vcGFybS5oICAg
IHwgIDEgKwo+PiAgIDMgZmlsZXMgY2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9jbGsvbWVzb24vY2xrLXBsbC5jIGIvZHJpdmVycy9jbGsvbWVzb24v
Y2xrLXBsbC5jCj4+IGluZGV4IGRkYjFlNTYzNDczOS4uNGFmZjMxYTUxNTg5IDEwMDY0NAo+PiAt
LS0gYS9kcml2ZXJzL2Nsay9tZXNvbi9jbGstcGxsLmMKPj4gKysrIGIvZHJpdmVycy9jbGsvbWVz
b24vY2xrLXBsbC5jCj4+IEBAIC0zMTgsNiArMzE4LDIzIEBAIHN0YXRpYyBpbnQgbWVzb25fY2xr
X3BsbF9lbmFibGUoc3RydWN0IGNsa19odyAqaHcpCj4+ICAgCXN0cnVjdCBjbGtfcmVnbWFwICpj
bGsgPSB0b19jbGtfcmVnbWFwKGh3KTsKPj4gICAJc3RydWN0IG1lc29uX2Nsa19wbGxfZGF0YSAq
cGxsID0gbWVzb25fY2xrX3BsbF9kYXRhKGNsayk7Cj4+ICAgCj4+ICsJLyoKPj4gKwkgKiBUaGUg
QTEgZGVzaWduIGlzIGRpZmZlcmVudCB3aXRoIHByZXZpb3VzIFNvQ3MuVGhlIFBMTAo+PiArCSAq
IGludGVybmFsIGFuYWxvZyBtb2R1bGVzIFBvd2VyLW9uIHNlcXVlbmNlIGlzIGRpZmZlcmVudCB3
aXRoCj4+ICsJICogcHJldmlvdXMsIGFuZCB0aHVzIHJlcXVpcmVzIGEgc3RyaWN0IHJlZ2lzdGVy
IHNlcXVlbmNlIHRvCj4+ICsJICogZW5hYmxlIHRoZSBQTEwuCj4gCj4gVGhlIGNvZGUgZG9lcyBz
b21ldGhpbmcgbW9yZSwgbm90IGNvbXBsZXRseSBkaWZmZXJlbnQuIFRoaXMgY29tbWVudCBpcwo+
IG5vdCBhbGlnbmVkIHdpdGggd2hhdCB0aGUgY29kZSBkb2VzCm9rLCBJIHdpbGwgY29ycmVjdCB0
aGUgY29tbWVudC4KPiAKPj4gKwkgKi8KPj4gKwlpZiAoTUVTT05fUEFSTV9BUFBMSUNBQkxFKCZw
bGwtPmN1cnJlbnRfZW4pKSB7Cj4+ICsJCS8qIEVuYWJsZSB0aGUgcGxsICovCj4+ICsJCW1lc29u
X3Bhcm1fd3JpdGUoY2xrLT5tYXAsICZwbGwtPmVuLCAxKTsKPj4gKwkJdWRlbGF5KDEwKTsKPj4g
KwkJLyogRW5hYmxlIHRoZSBwbGwgc2VsZi1hZGFwdGlvbiBtb2R1bGUgY3VycmVudCAqLwo+PiAr
CQltZXNvbl9wYXJtX3dyaXRlKGNsay0+bWFwLCAmcGxsLT5jdXJyZW50X2VuLCAxKTsKPj4gKwkJ
dWRlbGF5KDQwKTsKPj4gKwkJbWVzb25fcGFybV93cml0ZShjbGstPm1hcCwgJnBsbC0+cnN0LCAx
KTsKPj4gKwkJbWVzb25fcGFybV93cml0ZShjbGstPm1hcCwgJnBsbC0+cnN0LCAwKTsKPiAKPiBI
ZXJlIHlvdSBlbmFibGUgdGhlIFBMTCBhbmQgc2VsZiBhZGFwdGF0aW9uIG1vZHVsZSB0aGVuIHJl
c2V0IHRoZSBQTEwuCj4gSG93ZXZlcjoKPiAjMSB3aGVuIHlvdSBlbnRlciB0aGlzIGZ1bmN0aW9u
LCB0aGUgUExMIHNob3VsZCBhbHJlYWR5IGJ5IGluIHJlc2V0Cj4gYW5kIGRpc2FibGVkCj4gIzIg
dGhlIGNvZGUgYWZ0ZXIgdGhhdCB3aWxsIHJlc2V0IHRoZSBQTEwgYWdhaW4KRm9yIEExIFBMTHMs
IFRoZXJlIGlzIG5vIHJlc2V0IGJpdCwgSXQgd2lsbCBub3QgcmVzZXQgdGhlIFBMTC4KQW5kIGlu
IFYyLCB5b3UgbWVudGlvbmVkIFBBUk0gJ3JzdCcgY2FuIGJlIHVzZWQgZm9yIG9uZSB0b2dnbGlu
ZywgQW5kIAoncnN0JyBpcyB1c2VkIGZvciBCSVQoNikgaW4gQ1RSTDIuCgpRdW90ZSBWMiB0aGUg
SElGSSBQTEwgaW5pdF9yZWdzIGRlZmluaXRpb27vvJoKCgorc3RhdGljIGNvbnN0IHN0cnVjdCBy
ZWdfc2VxdWVuY2UgYTFfaGlmaV9pbml0X3JlZ3NbXSA9IHsKKwl7IC5yZWcgPSBBTkFDVFJMX0hJ
RklQTExfQ1RSTDEsIC5kZWYgPSAweDAxODAwMDAwIH0sCisJeyAucmVnID0gQU5BQ1RSTF9ISUZJ
UExMX0NUUkwyLCAuZGVmID0gMHgwMDAwMTEwMCB9LAorCXsgLnJlZyA9IEFOQUNUUkxfSElGSVBM
TF9DVFJMMywgLmRlZiA9IDB4MTAwYTExMDAgfSwKKwl7IC5yZWcgPSBBTkFDVFJMX0hJRklQTExf
Q1RSTDQsIC5kZWYgPSAweDAwMzAyMDAwIH0sCisJeyAucmVnID0gQU5BQ1RSTF9ISUZJUExMX0NU
UkwwLCAuZGVmID0gMHgwMWYxODQ0MCB9LAorCXsgLnJlZyA9IEFOQUNUUkxfSElGSVBMTF9DVFJM
MCwgLmRlZiA9IDB4MTFmMTg0NDAsIC5kZWxheV91cyA9IDEwIH0sCisJeyAucmVnID0gQU5BQ1RS
TF9ISUZJUExMX0NUUkwwLCAuZGVmID0gMHgxNWYxODQ0MCwgLmRlbGF5X3VzID0gNDAgfSwKKwl7
IC5yZWcgPSBBTkFDVFJMX0hJRklQTExfQ1RSTDIsIC5kZWYgPSAweDAwMDAxMTQwIH0sCisJeyAu
cmVnID0gQU5BQ1RSTF9ISUZJUExMX0NUUkwyLCAuZGVmID0gMHgwMDAwMTEwMCB9LAorfTsKClNv
IG1heWJlIGFub3RoZXIgbmV3IFBBUk0gc2hvdWxkIGJlIGRlZmluZWQgdG8gYXZvaWQgdGhlIGFt
YmlndWl0eS4KV2hhdCBkbyB5b3UgdGhpbmsgYWJvdXQgaXQ/Cgo+IAo+IFNvIGlmIHdoYXQgeW91
IHN1Ym1pdGVkIHdvcmtzLCBpbnNlcnRpbmcgdGhlIGZvbGxvd2luZyBzaG91bGQgYWNjb21wbGlz
aAo+IHRoZSBzYW1lIHRoaW5nOgo+IAo+IC0tLTg8LS0tCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Y2xrL21lc29uL2Nsay1wbGwuYyBiL2RyaXZlcnMvY2xrL21lc29uL2Nsay1wbGwuYwo+IGluZGV4
IDQ4OTA5MmRkZTNhNi4uOWIzOGRmMGE3NjgyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvY2xrL21l
c29uL2Nsay1wbGwuYwo+ICsrKyBiL2RyaXZlcnMvY2xrL21lc29uL2Nsay1wbGwuYwo+IEBAIC0z
MzAsNiArMzMwLDEzIEBAIHN0YXRpYyBpbnQgbWVzb25fY2xrX3BsbF9lbmFibGUoc3RydWN0IGNs
a19odyAqaHcpCj4gICAgICAgICAgLyogRW5hYmxlIHRoZSBwbGwgKi8KPiAgICAgICAgICBtZXNv
bl9wYXJtX3dyaXRlKGNsay0+bWFwLCAmcGxsLT5lbiwgMSk7Cj4gCj4gKyAgICAgICBpZiAoTUVT
T05fUEFSTV9BUFBMSUNBQkxFKCZwbGwtPmN1cnJlbnRfZW4pKSB7Cj4gKyAgICAgICAgICAgICAg
IHVkZWxheSgxMCk7Cj4gKyAgICAgICAgICAgICAgIC8qIEVuYWJsZSB0aGUgcGxsIHNlbGYtYWRh
cHRpb24gbW9kdWxlIGN1cnJlbnQgKi8KPiArICAgICAgICAgICAgICAgbWVzb25fcGFybV93cml0
ZShjbGstPm1hcCwgJnBsbC0+Y3VycmVudF9lbiwgMSk7Cj4gKyAgICAgICAgICAgICAgIHVkZWxh
eSg0MCk7Cj4gKyAgICAgICB9Cj4gKwo+ICAgICAgICAgIC8qIFRha2UgdGhlIHBsbCBvdXQgcmVz
ZXQgKi8KPiAgICAgICAgICBtZXNvbl9wYXJtX3dyaXRlKGNsay0+bWFwLCAmcGxsLT5yc3QsIDAp
Owo+IC0tLT44LS0tCj4gCj4gCj4gCj4gCj4+ICsJfQo+PiArCj4+ICAgCS8qIGRvIG5vdGhpbmcg
aWYgdGhlIFBMTCBpcyBhbHJlYWR5IGVuYWJsZWQgKi8KPj4gICAJaWYgKGNsa19od19pc19lbmFi
bGVkKGh3KSkKPj4gICAJCXJldHVybiAwOwo+IAo+IEluIGFueSBjYXNlLCBub3RoaW5nIHNob3Vs
ZCBiZSBkb25lIG9uIHRoZSBjbG9jayBiZWZvcmUgdGhpcyBjaGVjawo+IG90aGVyd2lzZSB5b3Ug
bWlnaHQganVzdCBicmVhayB0aGUgY2xvY2sKPiAKT0ssIEkgd2lsbCBwdXQgdGhlIGVuYWJsZWQg
Y2hlY2sgYWhlYWQuCj4+IEBAIC0zNDcsNiArMzY0LDEwIEBAIHN0YXRpYyB2b2lkIG1lc29uX2Ns
a19wbGxfZGlzYWJsZShzdHJ1Y3QgY2xrX2h3ICpodykKPj4gICAKPj4gICAJLyogRGlzYWJsZSB0
aGUgcGxsICovCj4+ICAgCW1lc29uX3Bhcm1fd3JpdGUoY2xrLT5tYXAsICZwbGwtPmVuLCAwKTsK
Pj4gKwo+PiArCS8qIERpc2FibGUgUExMIGludGVybmFsIHNlbGYtYWRhcHRpb24gbW9kdWxlIGN1
cnJlbnQgKi8KPj4gKwlpZiAoTUVTT05fUEFSTV9BUFBMSUNBQkxFKCZwbGwtPmN1cnJlbnRfZW4p
KQo+PiArCQltZXNvbl9wYXJtX3dyaXRlKGNsay0+bWFwLCAmcGxsLT5jdXJyZW50X2VuLCAwKTsK
Pj4gICB9Cj4+ICAgCj4+ICAgc3RhdGljIGludCBtZXNvbl9jbGtfcGxsX3NldF9yYXRlKHN0cnVj
dCBjbGtfaHcgKmh3LCB1bnNpZ25lZCBsb25nIHJhdGUsCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2Nsay9tZXNvbi9jbGstcGxsLmggYi9kcml2ZXJzL2Nsay9tZXNvbi9jbGstcGxsLmgKPj4gaW5k
ZXggMzY3ZWZkMGY2NDEwLi4zMGYwMzkyNDJhNjUgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvY2xr
L21lc29uL2Nsay1wbGwuaAo+PiArKysgYi9kcml2ZXJzL2Nsay9tZXNvbi9jbGstcGxsLmgKPj4g
QEAgLTM2LDYgKzM2LDcgQEAgc3RydWN0IG1lc29uX2Nsa19wbGxfZGF0YSB7Cj4+ICAgCXN0cnVj
dCBwYXJtIGZyYWM7Cj4+ICAgCXN0cnVjdCBwYXJtIGw7Cj4+ICAgCXN0cnVjdCBwYXJtIHJzdDsK
Pj4gKwlzdHJ1Y3QgcGFybSBjdXJyZW50X2VuOwo+PiAgIAljb25zdCBzdHJ1Y3QgcmVnX3NlcXVl
bmNlICppbml0X3JlZ3M7Cj4+ICAgCXVuc2lnbmVkIGludCBpbml0X2NvdW50Owo+PiAgIAljb25z
dCBzdHJ1Y3QgcGxsX3BhcmFtc190YWJsZSAqdGFibGU7Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2Nsay9tZXNvbi9wYXJtLmggYi9kcml2ZXJzL2Nsay9tZXNvbi9wYXJtLmgKPj4gaW5kZXggM2M5
ZWYxYjUwNWNlLi5jNTNmYjI2NTc3ZTMgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvY2xrL21lc29u
L3Bhcm0uaAo+PiArKysgYi9kcml2ZXJzL2Nsay9tZXNvbi9wYXJtLmgKPj4gQEAgLTIwLDYgKzIw
LDcgQEAKPj4gICAJKCgocmVnKSAmIENMUlBNQVNLKHdpZHRoLCBzaGlmdCkpIHwgKCh2YWwpIDw8
IChzaGlmdCkpKQo+PiAgIAo+PiAgICNkZWZpbmUgTUVTT05fUEFSTV9BUFBMSUNBQkxFKHApCQko
ISEoKHApLT53aWR0aCkpCj4+ICsjZGVmaW5lIE1FU09OX1BBUk1fQ1VSUkVOVChwKQkJCSghISgo
cCktPndpZHRoKSkKPiAKPiBXaHkgZG8gd2UgbmVlZCB0aGF0ID8KT0ssIEkgd2lsbCByZW1vdmUg
aXQgLGFuZCB1c2UgJ01FU09OX1BBUk1fQVBQTElDQUJMRScgaW5zdGVhZAo+IAo+PiAgIAo+PiAg
IHN0cnVjdCBwYXJtIHsKPj4gICAJdTE2CXJlZ19vZmY7Cj4gCj4gLgo+IAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
