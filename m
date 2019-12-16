Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E307D121C95
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 23:17:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=In9jPhAQ/MzKJD0Px0R9wp9LLh6Vb8h8HBaj7n/RHqA=; b=VUiBoqryFgPNNEJX8ZXtCZkF+
	z8fmaB3KD6Vkd1n4cPqrCfbzZnLkREdetAsrWLCY8Sp58gsMvdUItLqSgO/5CT12AE7QS7RYxUxkG
	CzeY6HGpGQa1kOL5Nyac1Vv4K1DIH6wWKz7G4CkRifT994IOtDr6bfy/h8F3Dw+VcC/oNUjT6apW3
	C2TwpEA/eOTStH6Nm3upB8y3eO14pnyrncMbYrmgiJxocDASRBZBreyGxIFvN+iX1e/FS+nHFJWYe
	M4YgM3tnSt2vT7fz6oxFP3tjVeDxAcK2Tvrjl+jNhN0YqC0e/pQl5e5BvOJ6zX1sOWfCb9bSWL5s7
	5WXYS018g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igygU-0005Zt-Uo; Mon, 16 Dec 2019 22:17:46 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igygL-0005ZO-6P
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 22:17:38 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Dec 2019 14:17:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,323,1571727600"; d="scan'208";a="205261770"
Received: from yoojae-mobl1.amr.corp.intel.com (HELO [10.7.153.147])
 ([10.7.153.147])
 by orsmga007.jf.intel.com with ESMTP; 16 Dec 2019 14:17:34 -0800
Subject: Re: [PATCH v11 14/14] hwmon: Add PECI dimmtemp driver
To: Guenter Roeck <linux@roeck-us.net>
References: <20191211194624.2872-1-jae.hyun.yoo@linux.intel.com>
 <20191211194624.2872-15-jae.hyun.yoo@linux.intel.com>
 <d75aaad9-ae07-feeb-966a-899ecfe9d4b3@roeck-us.net>
 <5ed9f292-e024-ffda-a1a8-870ba0f05c58@linux.intel.com>
 <20191216212120.GA12089@roeck-us.net>
From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Message-ID: <c6ccb0ff-c0b4-86b2-1768-ba63713034a4@linux.intel.com>
Date: Mon, 16 Dec 2019 14:17:34 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191216212120.GA12089@roeck-us.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_141737_260251_95AB8889 
X-CRM114-Status: GOOD (  18.69  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Randy Dunlap <rdunlap@infradead.org>, Tomer Maimon <tmaimon77@gmail.com>,
 devicetree@vger.kernel.org, Frederic Barrat <fbarrat@linux.vnet.ibm.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Lee Jones <lee.jones@linaro.org>,
 Jason M Biils <jason.m.bills@linux.intel.com>,
 Eric Sandeen <sandeen@redhat.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jonathan Corbet <corbet@lwn.net>, openbmc@lists.ozlabs.org,
 linux-doc@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Joel Stanley <joel@jms.id.au>, "Bryant G . Ly" <bryantly@linux.vnet.ibm.com>,
 Uwe Kleine-Konig <u.kleine-koenig@pengutronix.de>,
 David Kershner <david.kershner@unisys.com>, Wu Hao <hao.wu@intel.com>,
 linux-hwmon@vger.kernel.org, Jean Delvare <jdelvare@suse.com>,
 Arnd Bergmann <arnd@arndb.de>, Philippe Ombredanne <pombredanne@nexb.com>,
 Johan Hovold <johan@kernel.org>, Tomohiro Kusumi <kusumi.tomohiro@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Stef van Os <stef.van.os@prodrive-technologies.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Sagar Dharia <sdharia@codeaurora.org>, linux-arm-kernel@lists.infradead.org,
 Alan Cox <alan@linux.intel.com>, Juergen Gross <jgross@suse.com>,
 Cyrille Pitchen <cyrille.pitchen@wedev4u.fr>, Andrew Jeffery <andrew@aj.id.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Darrick J . Wong" <darrick.wong@oracle.com>,
 Stephen Boyd <sboyd@codeaurora.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Wy4uLl0KCj4+Pj4gK3N0YXRpYyBpbnQgZ2V0X2RpbW1fdGVtcChzdHJ1Y3QgcGVjaV9kaW1tdGVt
cCAqcHJpdiwgaW50IGRpbW1fbm8pCj4+Pj4gK3sKPj4+PiArwqDCoMKgIGludCBkaW1tX29yZGVy
ID0gZGltbV9ubyAlIHByaXYtPmdlbl9pbmZvLT5kaW1tX2lkeF9tYXg7Cj4+Pj4gK8KgwqDCoCBp
bnQgY2hhbl9yYW5rID0gZGltbV9ubyAvIHByaXYtPmdlbl9pbmZvLT5kaW1tX2lkeF9tYXg7Cj4+
Pj4gK8KgwqDCoCBzdHJ1Y3QgcGVjaV9yZF9wY2lfY2ZnX2xvY2FsX21zZyBycF9tc2c7Cj4+Pj4g
K8KgwqDCoCB1OMKgIGNmZ19kYXRhWzRdOwo+Pj4+ICvCoMKgwqAgaW50IHJldDsKPj4+PiArCj4+
Pj4gK8KgwqDCoCBpZiAoIXBlY2lfc2Vuc29yX25lZWRfdXBkYXRlKCZwcml2LT50ZW1wW2RpbW1f
bm9dKSkKPj4+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIDA7Cj4+Pj4gKwo+Pj4+ICvCoMKgwqAg
cmV0ID0gcmVhZF9kZHJfZGltbV90ZW1wX2NvbmZpZyhwcml2LCBjaGFuX3JhbmssIGNmZ19kYXRh
KTsKPj4+PiArwqDCoMKgIGlmIChyZXQpCj4+Pj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiByZXQ7
Cj4+Pj4gKwo+Pj4+ICvCoMKgwqAgcHJpdi0+dGVtcFtkaW1tX25vXS52YWx1ZSA9IGNmZ19kYXRh
W2RpbW1fb3JkZXJdICogMTAwMDsKPj4+PiArCj4+Pj4gK8KgwqDCoCBzd2l0Y2ggKHByaXYtPmdl
bl9pbmZvLT5tb2RlbCkgewo+Pj4+ICvCoMKgwqAgY2FzZSBJTlRFTF9GQU02X1NLWUxBS0VfWDoK
Pj4+PiArwqDCoMKgwqDCoMKgwqAgcnBfbXNnLmFkZHIgPSBwcml2LT5tZ3ItPmNsaWVudC0+YWRk
cjsKPj4+PiArwqDCoMKgwqDCoMKgwqAgcnBfbXNnLmJ1cyA9IDI7Cj4+Pj4gK8KgwqDCoMKgwqDC
oMKgIC8qCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqAgKiBEZXZpY2UgMTAsIEZ1bmN0aW9uIDI6IElN
QyAwIGNoYW5uZWwgMCAtPiByYW5rIDAKPj4+PiArwqDCoMKgwqDCoMKgwqDCoCAqIERldmljZSAx
MCwgRnVuY3Rpb24gNjogSU1DIDAgY2hhbm5lbCAxIC0+IHJhbmsgMQo+Pj4+ICvCoMKgwqDCoMKg
wqDCoMKgICogRGV2aWNlIDExLCBGdW5jdGlvbiAyOiBJTUMgMCBjaGFubmVsIDIgLT4gcmFuayAy
Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqAgKiBEZXZpY2UgMTIsIEZ1bmN0aW9uIDI6IElNQyAxIGNo
YW5uZWwgMCAtPiByYW5rIDMKPj4+PiArwqDCoMKgwqDCoMKgwqDCoCAqIERldmljZSAxMiwgRnVu
Y3Rpb24gNjogSU1DIDEgY2hhbm5lbCAxIC0+IHJhbmsgNAo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKg
ICogRGV2aWNlIDEzLCBGdW5jdGlvbiAyOiBJTUMgMSBjaGFubmVsIDIgLT4gcmFuayA1Cj4+Pj4g
K8KgwqDCoMKgwqDCoMKgwqAgKi8KPj4+PiArwqDCoMKgwqDCoMKgwqAgcnBfbXNnLmRldmljZSA9
IDEwICsgY2hhbl9yYW5rIC8gMyAqIDIgKwo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCAoY2hhbl9yYW5rICUgMyA9PSAyID8gMSA6IDApOwo+Pj4+ICvCoMKgwqDCoMKgwqDC
oCBycF9tc2cuZnVuY3Rpb24gPSBjaGFuX3JhbmsgJSAzID09IDEgPyA2IDogMjsKPj4+PiArwqDC
oMKgwqDCoMKgwqAgcnBfbXNnLnJlZyA9IDB4MTIwICsgZGltbV9vcmRlciAqIDQ7Cj4+Pj4gK8Kg
wqDCoMKgwqDCoMKgIHJwX21zZy5yeF9sZW4gPSA0Owo+Pj4+ICsKPj4+PiArwqDCoMKgwqDCoMKg
wqAgcmV0ID0gcGVjaV9jb21tYW5kKHByaXYtPm1nci0+Y2xpZW50LT5hZGFwdGVyLAo+Pj4+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgUEVDSV9DTURfUkRfUENJX0NGR19M
T0NBTCwgJnJwX21zZyk7Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgIGlmIChycF9tc2cuY2MgIT0gUEVD
SV9ERVZfQ0NfU1VDQ0VTUykKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXQgPSAtRUFH
QUlOOwo+Pj4+ICvCoMKgwqDCoMKgwqDCoCBpZiAocmV0KQo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHJldHVybiByZXQ7Cj4+Pj4gKwo+Pj4+ICvCoMKgwqDCoMKgwqDCoCBwcml2LT50ZW1w
X21heFtkaW1tX25vXSA9IHJwX21zZy5wY2lfY29uZmlnWzFdICogMTAwMDsKPj4+PiArwqDCoMKg
wqDCoMKgwqAgcHJpdi0+dGVtcF9jcml0W2RpbW1fbm9dID0gcnBfbXNnLnBjaV9jb25maWdbMl0g
KiAxMDAwOwo+Pj4+ICvCoMKgwqDCoMKgwqDCoCBicmVhazsKPj4+PiArwqDCoMKgIGNhc2UgSU5U
RUxfRkFNNl9TS1lMQUtFX1hEOgo+Pj4+ICvCoMKgwqDCoMKgwqDCoCBycF9tc2cuYWRkciA9IHBy
aXYtPm1nci0+Y2xpZW50LT5hZGRyOwo+Pj4+ICvCoMKgwqDCoMKgwqDCoCBycF9tc2cuYnVzID0g
MjsKPj4+PiArwqDCoMKgwqDCoMKgwqAgLyoKPj4+PiArwqDCoMKgwqDCoMKgwqDCoCAqIERldmlj
ZSAxMCwgRnVuY3Rpb24gMjogSU1DIDAgY2hhbm5lbCAwIC0+IHJhbmsgMAo+Pj4+ICvCoMKgwqDC
oMKgwqDCoMKgICogRGV2aWNlIDEwLCBGdW5jdGlvbiA2OiBJTUMgMCBjaGFubmVsIDEgLT4gcmFu
ayAxCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqAgKiBEZXZpY2UgMTIsIEZ1bmN0aW9uIDI6IElNQyAx
IGNoYW5uZWwgMCAtPiByYW5rIDIKPj4+PiArwqDCoMKgwqDCoMKgwqDCoCAqIERldmljZSAxMiwg
RnVuY3Rpb24gNjogSU1DIDEgY2hhbm5lbCAxIC0+IHJhbmsgMwo+Pj4+ICvCoMKgwqDCoMKgwqDC
oMKgICovCj4+Pj4gK8KgwqDCoMKgwqDCoMKgIHJwX21zZy5kZXZpY2UgPSAxMCArIGNoYW5fcmFu
ayAvIDIgKiAyOwo+Pj4+ICvCoMKgwqDCoMKgwqDCoCBycF9tc2cuZnVuY3Rpb24gPSAoY2hhbl9y
YW5rICUgMikgPyA2IDogMjsKPj4+PiArwqDCoMKgwqDCoMKgwqAgcnBfbXNnLnJlZyA9IDB4MTIw
ICsgZGltbV9vcmRlciAqIDQ7Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgIHJwX21zZy5yeF9sZW4gPSA0
Owo+Pj4+ICsKPj4+PiArwqDCoMKgwqDCoMKgwqAgcmV0ID0gcGVjaV9jb21tYW5kKHByaXYtPm1n
ci0+Y2xpZW50LT5hZGFwdGVyLAo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgUEVDSV9DTURfUkRfUENJX0NGR19MT0NBTCwgJnJwX21zZyk7Cj4+Pj4gK8KgwqDCoMKg
wqDCoMKgIGlmIChycF9tc2cuY2MgIT0gUEVDSV9ERVZfQ0NfU1VDQ0VTUykKPj4+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCByZXQgPSAtRUFHQUlOOwo+Pj4+ICvCoMKgwqDCoMKgwqDCoCBpZiAo
cmV0KQo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiByZXQ7Cj4+Pj4gKwo+Pj4+
ICvCoMKgwqDCoMKgwqDCoCBwcml2LT50ZW1wX21heFtkaW1tX25vXSA9IHJwX21zZy5wY2lfY29u
ZmlnWzFdICogMTAwMDsKPj4+PiArwqDCoMKgwqDCoMKgwqAgcHJpdi0+dGVtcF9jcml0W2RpbW1f
bm9dID0gcnBfbXNnLnBjaV9jb25maWdbMl0gKiAxMDAwOwo+Pj4+ICvCoMKgwqDCoMKgwqDCoCBi
cmVhazsKPj4+PiArwqDCoMKgIGNhc2UgSU5URUxfRkFNNl9IQVNXRUxMX1g6Cj4+Pj4gK8KgwqDC
oCBjYXNlIElOVEVMX0ZBTTZfQlJPQURXRUxMX1g6Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgIHJwX21z
Zy5hZGRyID0gcHJpdi0+bWdyLT5jbGllbnQtPmFkZHI7Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgIHJw
X21zZy5idXMgPSAxOwo+Pj4+ICvCoMKgwqDCoMKgwqDCoCAvKgo+Pj4+ICvCoMKgwqDCoMKgwqDC
oMKgICogRGV2aWNlIDIwLCBGdW5jdGlvbiAwOiBJTUMgMCBjaGFubmVsIDAgLT4gcmFuayAwCj4+
Pj4gK8KgwqDCoMKgwqDCoMKgwqAgKiBEZXZpY2UgMjAsIEZ1bmN0aW9uIDE6IElNQyAwIGNoYW5u
ZWwgMSAtPiByYW5rIDEKPj4+PiArwqDCoMKgwqDCoMKgwqDCoCAqIERldmljZSAyMSwgRnVuY3Rp
b24gMDogSU1DIDAgY2hhbm5lbCAyIC0+IHJhbmsgMgo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgICog
RGV2aWNlIDIxLCBGdW5jdGlvbiAxOiBJTUMgMCBjaGFubmVsIDMgLT4gcmFuayAzCj4+Pj4gK8Kg
wqDCoMKgwqDCoMKgwqAgKiBEZXZpY2UgMjMsIEZ1bmN0aW9uIDA6IElNQyAxIGNoYW5uZWwgMCAt
PiByYW5rIDQKPj4+PiArwqDCoMKgwqDCoMKgwqDCoCAqIERldmljZSAyMywgRnVuY3Rpb24gMTog
SU1DIDEgY2hhbm5lbCAxIC0+IHJhbmsgNQo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgICogRGV2aWNl
IDI0LCBGdW5jdGlvbiAwOiBJTUMgMSBjaGFubmVsIDIgLT4gcmFuayA2Cj4+Pj4gK8KgwqDCoMKg
wqDCoMKgwqAgKiBEZXZpY2UgMjQsIEZ1bmN0aW9uIDE6IElNQyAxIGNoYW5uZWwgMyAtPiByYW5r
IDcKPj4+PiArwqDCoMKgwqDCoMKgwqDCoCAqLwo+Pj4+ICvCoMKgwqDCoMKgwqDCoCBycF9tc2cu
ZGV2aWNlID0gMjAgKyBjaGFuX3JhbmsgLyAyICsgY2hhbl9yYW5rIC8gNDsKPj4+PiArwqDCoMKg
wqDCoMKgwqAgcnBfbXNnLmZ1bmN0aW9uID0gY2hhbl9yYW5rICUgMjsKPj4+PiArwqDCoMKgwqDC
oMKgwqAgcnBfbXNnLnJlZyA9IDB4MTIwICsgZGltbV9vcmRlciAqIDQ7Cj4+Pj4gK8KgwqDCoMKg
wqDCoMKgIHJwX21zZy5yeF9sZW4gPSA0Owo+Pj4+ICsKPj4+PiArwqDCoMKgwqDCoMKgwqAgcmV0
ID0gcGVjaV9jb21tYW5kKHByaXYtPm1nci0+Y2xpZW50LT5hZGFwdGVyLAo+Pj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgUEVDSV9DTURfUkRfUENJX0NGR19MT0NBTCwg
JnJwX21zZyk7Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgIGlmIChycF9tc2cuY2MgIT0gUEVDSV9ERVZf
Q0NfU1VDQ0VTUykKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXQgPSAtRUFHQUlOOwo+
Pj4+ICvCoMKgwqDCoMKgwqDCoCBpZiAocmV0KQo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHJldHVybiByZXQ7Cj4+Pj4gKwo+Pj4+ICvCoMKgwqDCoMKgwqDCoCBwcml2LT50ZW1wX21heFtk
aW1tX25vXSA9IHJwX21zZy5wY2lfY29uZmlnWzFdICogMTAwMDsKPj4+PiArwqDCoMKgwqDCoMKg
wqAgcHJpdi0+dGVtcF9jcml0W2RpbW1fbm9dID0gcnBfbXNnLnBjaV9jb25maWdbMl0gKiAxMDAw
Owo+Pj4+ICvCoMKgwqDCoMKgwqDCoCBicmVhazsKPj4+PiArwqDCoMKgIGRlZmF1bHQ6Cj4+Pj4g
K8KgwqDCoMKgwqDCoMKgIHJldHVybiAtRU9QTk9UU1VQUDsKPj4+Cj4+PiBJdCBsb29rcyBsaWtl
IHRoZSBzZW5zb3JzIGFyZSBjcmVhdGVkIGV2ZW4gb24gdW5zdXBwb3J0ZWQgcGxhdGZvcm1zLAo+
Pj4gd2hpY2ggd291bGQgZ2VuZXJhdGUgZXJyb3IgbWVzc2FnZXMgd2hlbmV2ZXIgc29tZW9uZSB0
cmllcyB0byByZWFkCj4+PiB0aGUgYXR0cmlidXRlcy4KPj4+Cj4+PiBUaGVyZSBzaG91bGQgYmUg
c29tZSBjb2RlIGVhcmx5IG9uIGNoZWNraW5nIHRoaXMsIGFuZCB0aGUgZHJpdmVyCj4+PiBzaG91
bGQgbm90IGV2ZW4gaW5zdGFudGlhdGUgaWYgdGhlIENQVSBtb2RlbCBpcyBub3Qgc3VwcG9ydGVk
Lgo+Pgo+PiBBY3R1YWxseSwgdGhpcyAnZGVmYXVsdCcgY2FzZSB3aWxsIG5vdCBiZSBoYXBwZW5l
ZCBiZWNhdXNlIHRoaXMgZHJpdmVyCj4+IHdpbGwgYmUgcmVnaXN0ZXJlZCBvbmx5IHdoZW4gdGhl
IENQVSBtb2RlbCBpcyBzdXBwb3J0ZWQuIFRoZSBDUFUgbW9kZWwKPj4gY2hlY2tpbmcgY29kZSBp
cyBpbiAnaW50ZWwtcGVjaS1jbGllbnQuYycgd2hpY2ggaXMgWzExLzE0XSBvZiB0aGlzCj4+IHBh
dGNoIHNldC4KPj4KPiAKPiBUaGF0IGFnYWluIGFzc3VtZXMgdGhhdCBib3RoIGRyaXZlcnMgd2ls
bCBiZSBtb2RpZmllZCBpbiBzeW5jIGluIHRoZSBmdXR1cmUuCj4gV2UgY2FuIG5vdCBtYWtlIHRo
YXQgYXNzdW1wdGlvbi4KCkFzIHlvdSBzYWlkLCBib3RoIGRyaXZlcnMgbXVzdCBiZSBtb2RpZmll
ZCBpbiBzeW5jIGluIHRoZSBmdXR1cmUgYmVjYXVzZQplYWNoIEludGVsIENQVSBmYW1pbHkgdXNl
cyBkaWZmZXJlbnQgd2F5IG9mIHJlYWRpbmcgRElNTSB0ZW1wZXJhdHVyZS4KSW4gY2FzZSBpZiBz
dXBwb3J0ZWQgQ1BVIGNoZWNraW5nIGNvZGUgdXBkYXRlZCB3aXRob3V0IG1ha2luZyBzeW5jIHdp
dGgKaXQsIHRoaXMgZHJpdmVyIHdpbGwgcmV0dXJuIHRoZSBlcnJvci4KClsuLi5dCgo+Pj4+ICvC
oMKgwqAgcmV0ID0gY3JlYXRlX2RpbW1fdGVtcF9pbmZvKHByaXYpOwo+Pj4+ICvCoMKgwqAgaWYg
KHJldCAmJiByZXQgIT0gLUVBR0FJTikgewo+Pj4+ICvCoMKgwqDCoMKgwqDCoCBkZXZfZXJyKGRl
diwgIkZhaWxlZCB0byBjcmVhdGUgRElNTSB0ZW1wIGluZm9cbiIpOwo+Pj4KPj4+IERvZXMgdGhp
cyBnZW5lcmF0ZSBlcnJvciBtZXNzYWdlcyBpZiB0aGVyZSBhcmUgbm8gRElNTVMgPwo+Pgo+PiBZ
ZXMsIHRoaXMgZXJyb3IgbWVzc2FnZSB3aWxsIGJlIHByaW50ZWQgb3V0IG9uY2UgaWYgaXQgbWVl
dHMgYSB0aW1lb3V0Cj4+IGluIERJTU0gc2Nhbm5pbmcgd2hlbiB0aGVyZSBpcyBubyBESU1NLgo+
Pgo+IAo+IElzIHRoYXQgaW5kZWVkIGFuIGVycm9yLCBvciBhcmUgdGhlcmUgc2l0dWF0aW9ucyB3
aGVyZSBubyBESU1NcyBhcmUKPiBkZXRlY3RlZCBhbmQgdGhhdCBpcyBhIHBlcmZlY3RseSB2YWxp
ZCBzaXR1YXRpb24gPyBBbiBlcnJvciBtZXNzYWdlCj4gaXMgb25seSBhY2NlcHRhYmxlIGlmIHRo
aXMgaXMgaW5kZWVkIGFuIGVycm9yIGluIGFsbCBzaXR1YXRpb25zLgoKSWYgYSBtYWNoaW5lIHVu
ZGVyIG1vbml0b3JpbmcgaGFzIHR3byBJbnRlbCBDUFVzIGluc3RhbGxlZCBidXQgb25seSBvbmUK
Q1BVIGhhcyBhIERJTU0sIGl0J3MgYWxzbyBhbiB3b3JraW5nIGNvbmZpZ3VyYXRpb24gYWx0aG91
Z2ggaXQncyBhbgp1bnVzdWFsIEgvVyBjb25maWd1cmF0aW9uLiBJJ2xsIGZpeCB0aGF0IHRvIGRi
ZyBwcmludGluZy4KClRoYW5rcywKCkphZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
