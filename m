Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45DC4121EF8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 00:31:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EH71muzT/8oR0zM3zVM3p4B/cWC0QViDJMoS7AhyG7A=; b=G7ZM1W8oEhUDUDMAy+r5DcfwU
	6Mx6wvOf/scDf9CfIcqhcxLUtlAXh4w98TAyw6fvJsIQc7j6csjkJxRRXKvMH64be7HLV+YItyBiX
	uUOxA8RZQoyC1t8SpDaI9agj3E25XQJqTSaW1h6lZU6xmHu6GErNesfSY46UpHKYxUY+HHoIUOPnm
	Yaur0HDIe6dHjzv4N/2/iC6O5LfBuPZbfz4EP/ylLl3GA6CS73ykzzzZ8eRd6XqqeBdKGM7rP/jRc
	HlT+SytxwtJjUQSYXt8Tx7EvdxhhhG2ppxstYirYJ/W8fxL+Zg7OGKmNRmHb2v7hFZ4TdeFuQ9LT4
	dWeVb3qvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igzpc-0002Yi-D0; Mon, 16 Dec 2019 23:31:16 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igzpT-0002YA-3O
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 23:31:08 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Dec 2019 15:31:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,323,1571727600"; d="scan'208";a="205279892"
Received: from yoojae-mobl1.amr.corp.intel.com (HELO [10.7.153.147])
 ([10.7.153.147])
 by orsmga007.jf.intel.com with ESMTP; 16 Dec 2019 15:31:03 -0800
Subject: Re: [PATCH v11 14/14] hwmon: Add PECI dimmtemp driver
To: Guenter Roeck <linux@roeck-us.net>
References: <20191211194624.2872-1-jae.hyun.yoo@linux.intel.com>
 <20191211194624.2872-15-jae.hyun.yoo@linux.intel.com>
 <d75aaad9-ae07-feeb-966a-899ecfe9d4b3@roeck-us.net>
 <5ed9f292-e024-ffda-a1a8-870ba0f05c58@linux.intel.com>
 <20191216212120.GA12089@roeck-us.net>
 <c6ccb0ff-c0b4-86b2-1768-ba63713034a4@linux.intel.com>
 <20191216232720.GA17398@roeck-us.net>
From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Message-ID: <465ac2d4-c508-0e6d-93e8-e8d5c36b05d7@linux.intel.com>
Date: Mon, 16 Dec 2019 15:31:03 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191216232720.GA17398@roeck-us.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_153107_188141_8894CDA5 
X-CRM114-Status: GOOD (  18.32  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
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

T24gMTIvMTYvMjAxOSAzOjI3IFBNLCBHdWVudGVyIFJvZWNrIHdyb3RlOgo+IE9uIE1vbiwgRGVj
IDE2LCAyMDE5IGF0IDAyOjE3OjM0UE0gLTA4MDAsIEphZSBIeXVuIFlvbyB3cm90ZToKPj4gWy4u
Ll0KPj4KPj4+Pj4+ICtzdGF0aWMgaW50IGdldF9kaW1tX3RlbXAoc3RydWN0IHBlY2lfZGltbXRl
bXAgKnByaXYsIGludCBkaW1tX25vKQo+Pj4+Pj4gK3sKPj4+Pj4+ICvCoMKgwqAgaW50IGRpbW1f
b3JkZXIgPSBkaW1tX25vICUgcHJpdi0+Z2VuX2luZm8tPmRpbW1faWR4X21heDsKPj4+Pj4+ICvC
oMKgwqAgaW50IGNoYW5fcmFuayA9IGRpbW1fbm8gLyBwcml2LT5nZW5faW5mby0+ZGltbV9pZHhf
bWF4Owo+Pj4+Pj4gK8KgwqDCoCBzdHJ1Y3QgcGVjaV9yZF9wY2lfY2ZnX2xvY2FsX21zZyBycF9t
c2c7Cj4+Pj4+PiArwqDCoMKgIHU4wqAgY2ZnX2RhdGFbNF07Cj4+Pj4+PiArwqDCoMKgIGludCBy
ZXQ7Cj4+Pj4+PiArCj4+Pj4+PiArwqDCoMKgIGlmICghcGVjaV9zZW5zb3JfbmVlZF91cGRhdGUo
JnByaXYtPnRlbXBbZGltbV9ub10pKQo+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiAwOwo+
Pj4+Pj4gKwo+Pj4+Pj4gK8KgwqDCoCByZXQgPSByZWFkX2Rkcl9kaW1tX3RlbXBfY29uZmlnKHBy
aXYsIGNoYW5fcmFuaywgY2ZnX2RhdGEpOwo+Pj4+Pj4gK8KgwqDCoCBpZiAocmV0KQo+Pj4+Pj4g
K8KgwqDCoMKgwqDCoMKgIHJldHVybiByZXQ7Cj4+Pj4+PiArCj4+Pj4+PiArwqDCoMKgIHByaXYt
PnRlbXBbZGltbV9ub10udmFsdWUgPSBjZmdfZGF0YVtkaW1tX29yZGVyXSAqIDEwMDA7Cj4+Pj4+
PiArCj4+Pj4+PiArwqDCoMKgIHN3aXRjaCAocHJpdi0+Z2VuX2luZm8tPm1vZGVsKSB7Cj4+Pj4+
PiArwqDCoMKgIGNhc2UgSU5URUxfRkFNNl9TS1lMQUtFX1g6Cj4+Pj4+PiArwqDCoMKgwqDCoMKg
wqAgcnBfbXNnLmFkZHIgPSBwcml2LT5tZ3ItPmNsaWVudC0+YWRkcjsKPj4+Pj4+ICvCoMKgwqDC
oMKgwqDCoCBycF9tc2cuYnVzID0gMjsKPj4+Pj4+ICvCoMKgwqDCoMKgwqDCoCAvKgo+Pj4+Pj4g
K8KgwqDCoMKgwqDCoMKgwqAgKiBEZXZpY2UgMTAsIEZ1bmN0aW9uIDI6IElNQyAwIGNoYW5uZWwg
MCAtPiByYW5rIDAKPj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgICogRGV2aWNlIDEwLCBGdW5jdGlv
biA2OiBJTUMgMCBjaGFubmVsIDEgLT4gcmFuayAxCj4+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoCAq
IERldmljZSAxMSwgRnVuY3Rpb24gMjogSU1DIDAgY2hhbm5lbCAyIC0+IHJhbmsgMgo+Pj4+Pj4g
K8KgwqDCoMKgwqDCoMKgwqAgKiBEZXZpY2UgMTIsIEZ1bmN0aW9uIDI6IElNQyAxIGNoYW5uZWwg
MCAtPiByYW5rIDMKPj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgICogRGV2aWNlIDEyLCBGdW5jdGlv
biA2OiBJTUMgMSBjaGFubmVsIDEgLT4gcmFuayA0Cj4+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoCAq
IERldmljZSAxMywgRnVuY3Rpb24gMjogSU1DIDEgY2hhbm5lbCAyIC0+IHJhbmsgNQo+Pj4+Pj4g
K8KgwqDCoMKgwqDCoMKgwqAgKi8KPj4+Pj4+ICvCoMKgwqDCoMKgwqDCoCBycF9tc2cuZGV2aWNl
ID0gMTAgKyBjaGFuX3JhbmsgLyAzICogMiArCj4+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgKGNoYW5fcmFuayAlIDMgPT0gMiA/IDEgOiAwKTsKPj4+Pj4+ICvCoMKgwqDC
oMKgwqDCoCBycF9tc2cuZnVuY3Rpb24gPSBjaGFuX3JhbmsgJSAzID09IDEgPyA2IDogMjsKPj4+
Pj4+ICvCoMKgwqDCoMKgwqDCoCBycF9tc2cucmVnID0gMHgxMjAgKyBkaW1tX29yZGVyICogNDsK
Pj4+Pj4+ICvCoMKgwqDCoMKgwqDCoCBycF9tc2cucnhfbGVuID0gNDsKPj4+Pj4+ICsKPj4+Pj4+
ICvCoMKgwqDCoMKgwqDCoCByZXQgPSBwZWNpX2NvbW1hbmQocHJpdi0+bWdyLT5jbGllbnQtPmFk
YXB0ZXIsCj4+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFBFQ0lf
Q01EX1JEX1BDSV9DRkdfTE9DQUwsICZycF9tc2cpOwo+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgIGlm
IChycF9tc2cuY2MgIT0gUEVDSV9ERVZfQ0NfU1VDQ0VTUykKPj4+Pj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHJldCA9IC1FQUdBSU47Cj4+Pj4+PiArwqDCoMKgwqDCoMKgwqAgaWYgKHJldCkK
Pj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiByZXQ7Cj4+Pj4+PiArCj4+Pj4+
PiArwqDCoMKgwqDCoMKgwqAgcHJpdi0+dGVtcF9tYXhbZGltbV9ub10gPSBycF9tc2cucGNpX2Nv
bmZpZ1sxXSAqIDEwMDA7Cj4+Pj4+PiArwqDCoMKgwqDCoMKgwqAgcHJpdi0+dGVtcF9jcml0W2Rp
bW1fbm9dID0gcnBfbXNnLnBjaV9jb25maWdbMl0gKiAxMDAwOwo+Pj4+Pj4gK8KgwqDCoMKgwqDC
oMKgIGJyZWFrOwo+Pj4+Pj4gK8KgwqDCoCBjYXNlIElOVEVMX0ZBTTZfU0tZTEFLRV9YRDoKPj4+
Pj4+ICvCoMKgwqDCoMKgwqDCoCBycF9tc2cuYWRkciA9IHByaXYtPm1nci0+Y2xpZW50LT5hZGRy
Owo+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgIHJwX21zZy5idXMgPSAyOwo+Pj4+Pj4gK8KgwqDCoMKg
wqDCoMKgIC8qCj4+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoCAqIERldmljZSAxMCwgRnVuY3Rpb24g
MjogSU1DIDAgY2hhbm5lbCAwIC0+IHJhbmsgMAo+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqAgKiBE
ZXZpY2UgMTAsIEZ1bmN0aW9uIDY6IElNQyAwIGNoYW5uZWwgMSAtPiByYW5rIDEKPj4+Pj4+ICvC
oMKgwqDCoMKgwqDCoMKgICogRGV2aWNlIDEyLCBGdW5jdGlvbiAyOiBJTUMgMSBjaGFubmVsIDAg
LT4gcmFuayAyCj4+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoCAqIERldmljZSAxMiwgRnVuY3Rpb24g
NjogSU1DIDEgY2hhbm5lbCAxIC0+IHJhbmsgMwo+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqAgKi8K
Pj4+Pj4+ICvCoMKgwqDCoMKgwqDCoCBycF9tc2cuZGV2aWNlID0gMTAgKyBjaGFuX3JhbmsgLyAy
ICogMjsKPj4+Pj4+ICvCoMKgwqDCoMKgwqDCoCBycF9tc2cuZnVuY3Rpb24gPSAoY2hhbl9yYW5r
ICUgMikgPyA2IDogMjsKPj4+Pj4+ICvCoMKgwqDCoMKgwqDCoCBycF9tc2cucmVnID0gMHgxMjAg
KyBkaW1tX29yZGVyICogNDsKPj4+Pj4+ICvCoMKgwqDCoMKgwqDCoCBycF9tc2cucnhfbGVuID0g
NDsKPj4+Pj4+ICsKPj4+Pj4+ICvCoMKgwqDCoMKgwqDCoCByZXQgPSBwZWNpX2NvbW1hbmQocHJp
di0+bWdyLT5jbGllbnQtPmFkYXB0ZXIsCj4+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIFBFQ0lfQ01EX1JEX1BDSV9DRkdfTE9DQUwsICZycF9tc2cpOwo+Pj4+Pj4g
K8KgwqDCoMKgwqDCoMKgIGlmIChycF9tc2cuY2MgIT0gUEVDSV9ERVZfQ0NfU1VDQ0VTUykKPj4+
Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldCA9IC1FQUdBSU47Cj4+Pj4+PiArwqDCoMKg
wqDCoMKgwqAgaWYgKHJldCkKPj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiBy
ZXQ7Cj4+Pj4+PiArCj4+Pj4+PiArwqDCoMKgwqDCoMKgwqAgcHJpdi0+dGVtcF9tYXhbZGltbV9u
b10gPSBycF9tc2cucGNpX2NvbmZpZ1sxXSAqIDEwMDA7Cj4+Pj4+PiArwqDCoMKgwqDCoMKgwqAg
cHJpdi0+dGVtcF9jcml0W2RpbW1fbm9dID0gcnBfbXNnLnBjaV9jb25maWdbMl0gKiAxMDAwOwo+
Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgIGJyZWFrOwo+Pj4+Pj4gK8KgwqDCoCBjYXNlIElOVEVMX0ZB
TTZfSEFTV0VMTF9YOgo+Pj4+Pj4gK8KgwqDCoCBjYXNlIElOVEVMX0ZBTTZfQlJPQURXRUxMX1g6
Cj4+Pj4+PiArwqDCoMKgwqDCoMKgwqAgcnBfbXNnLmFkZHIgPSBwcml2LT5tZ3ItPmNsaWVudC0+
YWRkcjsKPj4+Pj4+ICvCoMKgwqDCoMKgwqDCoCBycF9tc2cuYnVzID0gMTsKPj4+Pj4+ICvCoMKg
wqDCoMKgwqDCoCAvKgo+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqAgKiBEZXZpY2UgMjAsIEZ1bmN0
aW9uIDA6IElNQyAwIGNoYW5uZWwgMCAtPiByYW5rIDAKPj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKg
ICogRGV2aWNlIDIwLCBGdW5jdGlvbiAxOiBJTUMgMCBjaGFubmVsIDEgLT4gcmFuayAxCj4+Pj4+
PiArwqDCoMKgwqDCoMKgwqDCoCAqIERldmljZSAyMSwgRnVuY3Rpb24gMDogSU1DIDAgY2hhbm5l
bCAyIC0+IHJhbmsgMgo+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqAgKiBEZXZpY2UgMjEsIEZ1bmN0
aW9uIDE6IElNQyAwIGNoYW5uZWwgMyAtPiByYW5rIDMKPj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKg
ICogRGV2aWNlIDIzLCBGdW5jdGlvbiAwOiBJTUMgMSBjaGFubmVsIDAgLT4gcmFuayA0Cj4+Pj4+
PiArwqDCoMKgwqDCoMKgwqDCoCAqIERldmljZSAyMywgRnVuY3Rpb24gMTogSU1DIDEgY2hhbm5l
bCAxIC0+IHJhbmsgNQo+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqAgKiBEZXZpY2UgMjQsIEZ1bmN0
aW9uIDA6IElNQyAxIGNoYW5uZWwgMiAtPiByYW5rIDYKPj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKg
ICogRGV2aWNlIDI0LCBGdW5jdGlvbiAxOiBJTUMgMSBjaGFubmVsIDMgLT4gcmFuayA3Cj4+Pj4+
PiArwqDCoMKgwqDCoMKgwqDCoCAqLwo+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgIHJwX21zZy5kZXZp
Y2UgPSAyMCArIGNoYW5fcmFuayAvIDIgKyBjaGFuX3JhbmsgLyA0Owo+Pj4+Pj4gK8KgwqDCoMKg
wqDCoMKgIHJwX21zZy5mdW5jdGlvbiA9IGNoYW5fcmFuayAlIDI7Cj4+Pj4+PiArwqDCoMKgwqDC
oMKgwqAgcnBfbXNnLnJlZyA9IDB4MTIwICsgZGltbV9vcmRlciAqIDQ7Cj4+Pj4+PiArwqDCoMKg
wqDCoMKgwqAgcnBfbXNnLnJ4X2xlbiA9IDQ7Cj4+Pj4+PiArCj4+Pj4+PiArwqDCoMKgwqDCoMKg
wqAgcmV0ID0gcGVjaV9jb21tYW5kKHByaXYtPm1nci0+Y2xpZW50LT5hZGFwdGVyLAo+Pj4+Pj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBQRUNJX0NNRF9SRF9QQ0lfQ0ZH
X0xPQ0FMLCAmcnBfbXNnKTsKPj4+Pj4+ICvCoMKgwqDCoMKgwqDCoCBpZiAocnBfbXNnLmNjICE9
IFBFQ0lfREVWX0NDX1NVQ0NFU1MpCj4+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXQg
PSAtRUFHQUlOOwo+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgIGlmIChyZXQpCj4+Pj4+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gcmV0Owo+Pj4+Pj4gKwo+Pj4+Pj4gK8KgwqDCoMKgwqDC
oMKgIHByaXYtPnRlbXBfbWF4W2RpbW1fbm9dID0gcnBfbXNnLnBjaV9jb25maWdbMV0gKiAxMDAw
Owo+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgIHByaXYtPnRlbXBfY3JpdFtkaW1tX25vXSA9IHJwX21z
Zy5wY2lfY29uZmlnWzJdICogMTAwMDsKPj4+Pj4+ICvCoMKgwqDCoMKgwqDCoCBicmVhazsKPj4+
Pj4+ICvCoMKgwqAgZGVmYXVsdDoKPj4+Pj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVPUE5P
VFNVUFA7Cj4+Pj4+Cj4+Pj4+IEl0IGxvb2tzIGxpa2UgdGhlIHNlbnNvcnMgYXJlIGNyZWF0ZWQg
ZXZlbiBvbiB1bnN1cHBvcnRlZCBwbGF0Zm9ybXMsCj4+Pj4+IHdoaWNoIHdvdWxkIGdlbmVyYXRl
IGVycm9yIG1lc3NhZ2VzIHdoZW5ldmVyIHNvbWVvbmUgdHJpZXMgdG8gcmVhZAo+Pj4+PiB0aGUg
YXR0cmlidXRlcy4KPj4+Pj4KPj4+Pj4gVGhlcmUgc2hvdWxkIGJlIHNvbWUgY29kZSBlYXJseSBv
biBjaGVja2luZyB0aGlzLCBhbmQgdGhlIGRyaXZlcgo+Pj4+PiBzaG91bGQgbm90IGV2ZW4gaW5z
dGFudGlhdGUgaWYgdGhlIENQVSBtb2RlbCBpcyBub3Qgc3VwcG9ydGVkLgo+Pj4+Cj4+Pj4gQWN0
dWFsbHksIHRoaXMgJ2RlZmF1bHQnIGNhc2Ugd2lsbCBub3QgYmUgaGFwcGVuZWQgYmVjYXVzZSB0
aGlzIGRyaXZlcgo+Pj4+IHdpbGwgYmUgcmVnaXN0ZXJlZCBvbmx5IHdoZW4gdGhlIENQVSBtb2Rl
bCBpcyBzdXBwb3J0ZWQuIFRoZSBDUFUgbW9kZWwKPj4+PiBjaGVja2luZyBjb2RlIGlzIGluICdp
bnRlbC1wZWNpLWNsaWVudC5jJyB3aGljaCBpcyBbMTEvMTRdIG9mIHRoaXMKPj4+PiBwYXRjaCBz
ZXQuCj4+Pj4KPj4+Cj4+PiBUaGF0IGFnYWluIGFzc3VtZXMgdGhhdCBib3RoIGRyaXZlcnMgd2ls
bCBiZSBtb2RpZmllZCBpbiBzeW5jIGluIHRoZSBmdXR1cmUuCj4+PiBXZSBjYW4gbm90IG1ha2Ug
dGhhdCBhc3N1bXB0aW9uLgo+Pgo+PiBBcyB5b3Ugc2FpZCwgYm90aCBkcml2ZXJzIG11c3QgYmUg
bW9kaWZpZWQgaW4gc3luYyBpbiB0aGUgZnV0dXJlIGJlY2F1c2UKPj4gZWFjaCBJbnRlbCBDUFUg
ZmFtaWx5IHVzZXMgZGlmZmVyZW50IHdheSBvZiByZWFkaW5nIERJTU0gdGVtcGVyYXR1cmUuCj4+
IEluIGNhc2UgaWYgc3VwcG9ydGVkIENQVSBjaGVja2luZyBjb2RlIHVwZGF0ZWQgd2l0aG91dCBt
YWtpbmcgc3luYyB3aXRoCj4+IGl0LCB0aGlzIGRyaXZlciB3aWxsIHJldHVybiB0aGUgZXJyb3Iu
Cj4+Cj4gCj4gLi4uIGFuZCBpbiB0aGF0IHNpdHVhdGlvbiB0aGUgZHJpdmVyIHNob3VsZCBub3Qg
aW5zdGFudGlhdGUgaW4gdGhlCj4gZmlyc3QgcGxhY2UuIEl0cyBwcm9iZSBmdW5jdGlvbiBzaG91
bGQgcmV0dXJuIC1FTk9ERVYuCgpHb3QgdGhlIHBvaW50LiBJJ2xsIGFkZCB0aGUgY2hlY2tpbmcg
Y29kZSBldmVuIGluIHRoaXMgZHJpdmVyIG1vZHVsZQp0b28uCgpUaGFua3MgYSBsb3QhCgotSmFl
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
