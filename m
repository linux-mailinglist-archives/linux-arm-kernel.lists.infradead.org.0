Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39DF7DFCB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 11:51:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wkJc/A1nERl1AVWGuthsXeDDg/a4nD2pBFkKPvxrsb0=; b=qE7gvGC9l0upoAnutLNKqOyiT
	nKjQSYHLoRvTQMZxVxBzMauH7qj4Qgd2d1yeTTm1xPeZBSjXMm9iHA86z3+KMkzpXWN7jo6AtPz6q
	JVyMJdz4o3n79BHm882jkwVIssdRlf9XuCRnnTEFImQtUuDV/iFr7U0zHZDdAmiUjtI+Q8qJJeRO7
	VEVGMGEhTiiwvZ4k1VkIRU6/eglKlf/E0bYdmzNuwor1uTr5h1xNbjHpL9NAuc7/whxXScdYhleeN
	qe/YnLzkl3Oeq0j3kWRAsvFmrWhSp1O9yetr6tnEMLl5YFoahRbrLSqZ5iqyAXRc+GdO5Z1+CxyfW
	DCaYxzCEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL2wz-0006bi-77; Mon, 29 Apr 2019 09:51:53 +0000
Received: from regular1.263xmail.com ([211.150.70.205])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL2wr-0006bC-7o; Mon, 29 Apr 2019 09:51:47 +0000
Received: from zhangqing?rock-chips.com (unknown [192.168.167.236])
 by regular1.263xmail.com (Postfix) with ESMTP id 3281A4A6;
 Mon, 29 Apr 2019 17:51:35 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [172.16.12.236] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P420T140005497153280S1556531492608937_; 
 Mon, 29 Apr 2019 17:51:34 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <7e1d8f2b177a105ff24d92cf140eb7b4>
X-RL-SENDER: zhangqing@rock-chips.com
X-SENDER: zhangqing@rock-chips.com
X-LOGIN-NAME: zhangqing@rock-chips.com
X-FST-TO: huangtao@rock-chips.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v2 1/3] thermal: rockchip: fix up the tsadc pinctrl
 setting error
To: Daniel Lezcano <daniel.lezcano@linaro.org>, heiko@sntech.de
References: <1556187154-22632-1-git-send-email-zhangqing@rock-chips.com>
 <1556187154-22632-2-git-send-email-zhangqing@rock-chips.com>
 <be0170d7-64dc-896d-b847-5be192304791@linaro.org>
From: "elaine.zhang" <zhangqing@rock-chips.com>
Organization: rockchip
Message-ID: <8d41ea98-e0e8-60c8-3237-ade5d0d169bf@rock-chips.com>
Date: Mon, 29 Apr 2019 17:51:32 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <be0170d7-64dc-896d-b847-5be192304791@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_025145_678468_0CB0C365 
X-CRM114-Status: GOOD (  24.27  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, huangtao@rock-chips.com,
 linux-pm@vger.kernel.org, xxx@rock-chips.com, xf@rock-chips.com,
 linux-kernel@vger.kernel.org, edubezval@gmail.com,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, rui.zhang@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

aGksCgrlnKggMjAxOS80LzI4IOS4i+WNiDg6NDUsIERhbmllbCBMZXpjYW5vIOWGmemBkzoKPiBP
biAyNS8wNC8yMDE5IDEyOjEyLCBFbGFpbmUgWmhhbmcgd3JvdGU6Cj4+IEV4cGxpY2l0bHkgdXNl
IHRoZSBwaW5jdHJsIHRvIHNldC91bnNldCB0aGUgcmlnaHQgbW9kZQo+PiBpbnN0ZWFkIG9mIHJl
bHlpbmcgb24gdGhlIHBpbmN0cmwgaW5pdCBtb2RlLgo+PiBBbmQgaXQgcmVxdWlyZXMgc2V0dGlu
ZyB0aGUgdHNodXQgcG9sYXJpdHkgYmVmb3JlIHNlbGVjdCBwaW5jdHJsLgo+Pgo+PiBXaGVuIHRo
ZSB0ZW1wZXJhdHVyZSBzZW5zb3IgbW9kZSBpcyBzZXQgdG8gMCwgaXQgd2lsbCBhdXRvbWF0aWNh
bGx5Cj4+IHJlc2V0IHRoZSBib2FyZCB2aWEgdGhlIENsb2NrLVJlc2V0LVVuaXQgKENSVSkgaWYg
dGhlIG92ZXIgdGVtcGVyYXR1cmUKPj4gdGhyZXNob2xkIGlzIHJlYWNoZWQuIEhvd2V2ZXIsIHdo
ZW4gdGhlIHBpbmN0cmwgaW5pdGlhbGl6ZXMsIGl0IGRvZXMgYQo+PiB0cmFuc2l0aW9uIHRvICJv
dHBfb3V0IiB3aGljaCBtYXkgbGVhZCB0aGUgU29DIHJlc3RhcnQgYWxsIHRoZSB0aW1lLgo+Pgo+
PiAib3RwX291dCIgSU8gbWF5IGJlIGNvbm5lY3RlZCB0byB0aGUgUkVTRVQgY2lyY3VpdCBvbiB0
aGUgaGFyZHdhcmUuCj4+IElmIHRoZSBJTyBpcyBpbiB0aGUgd3Jvbmcgc3RhdGUsIGl0IHdpbGwg
dHJpZ2dlciBSRVNFVC4KPj4gKHNpbWlsYXIgdG8gdGhlIGVmZmVjdCBvZiBwcmVzc2luZyB0aGUg
UkVTRVQgYnV0dG9uKQo+PiB3aGljaCB3aWxsIGNhdXNlIHRoZSBzb2MgdG8gcmVzdGFydCBhbGwg
dGhlIHRpbWUuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEVsYWluZSBaaGFuZyA8emhhbmdxaW5nQHJv
Y2stY2hpcHMuY29tPgo+PiAtLS0KPj4gICBkcml2ZXJzL3RoZXJtYWwvcm9ja2NoaXBfdGhlcm1h
bC5jIHwgMzcgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLQo+PiAgIDEgZmls
ZSBjaGFuZ2VkLCAzNCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy90aGVybWFsL3JvY2tjaGlwX3RoZXJtYWwuYyBiL2RyaXZlcnMvdGhlcm1h
bC9yb2NrY2hpcF90aGVybWFsLmMKPj4gaW5kZXggOWM3NjQzZDYyZWQ3Li4wM2ZmNDk0ZjI4NjQg
MTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvdGhlcm1hbC9yb2NrY2hpcF90aGVybWFsLmMKPj4gKysr
IGIvZHJpdmVycy90aGVybWFsL3JvY2tjaGlwX3RoZXJtYWwuYwo+PiBAQCAtMTcyLDYgKzE3Miw5
IEBAIHN0cnVjdCByb2NrY2hpcF90aGVybWFsX2RhdGEgewo+PiAgIAlpbnQgdHNodXRfdGVtcDsK
Pj4gICAJZW51bSB0c2h1dF9tb2RlIHRzaHV0X21vZGU7Cj4+ICAgCWVudW0gdHNodXRfcG9sYXJp
dHkgdHNodXRfcG9sYXJpdHk7Cj4+ICsJc3RydWN0IHBpbmN0cmwgKnBpbmN0cmw7Cj4+ICsJc3Ry
dWN0IHBpbmN0cmxfc3RhdGUgKmdwaW9fc3RhdGU7Cj4+ICsJc3RydWN0IHBpbmN0cmxfc3RhdGUg
Km90cF9zdGF0ZTsKPj4gICB9Owo+PiAgIAo+PiAgIC8qKgo+PiBAQCAtMTI0Miw2ICsxMjQ1LDgg
QEAgc3RhdGljIGludCByb2NrY2hpcF90aGVybWFsX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZp
Y2UgKnBkZXYpCj4+ICAgCQlyZXR1cm4gZXJyb3I7Cj4+ICAgCX0KPj4gICAKPj4gKwl0aGVybWFs
LT5jaGlwLT5jb250cm9sKHRoZXJtYWwtPnJlZ3MsIGZhbHNlKTsKPj4gKwo+PiAgIAllcnJvciA9
IGNsa19wcmVwYXJlX2VuYWJsZSh0aGVybWFsLT5jbGspOwo+PiAgIAlpZiAoZXJyb3IpIHsKPj4g
ICAJCWRldl9lcnIoJnBkZXYtPmRldiwgImZhaWxlZCB0byBlbmFibGUgY29udmVydGVyIGNsb2Nr
OiAlZFxuIiwKPj4gQEAgLTEyNjcsNiArMTI3MiwzMSBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3Ro
ZXJtYWxfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPj4gICAJdGhlcm1hbC0+
Y2hpcC0+aW5pdGlhbGl6ZSh0aGVybWFsLT5ncmYsIHRoZXJtYWwtPnJlZ3MsCj4+ICAgCQkJCSAg
dGhlcm1hbC0+dHNodXRfcG9sYXJpdHkpOwo+PiAgIAo+PiArCWlmICh0aGVybWFsLT50c2h1dF9t
b2RlID09IFRTSFVUX01PREVfR1BJTykgewo+PiArCQl0aGVybWFsLT5waW5jdHJsID0gZGV2bV9w
aW5jdHJsX2dldCgmcGRldi0+ZGV2KTsKPj4gKwkJaWYgKElTX0VSUih0aGVybWFsLT5waW5jdHJs
KSkgewo+PiArCQkJZGV2X2VycigmcGRldi0+ZGV2LCAiZmFpbGVkIHRvIGZpbmQgdGhlcm1hbCBw
aW5jdHJsXG4iKTsKPj4gKwkJCXBhbmljKCJwYW5pY19vbl9maW5kIHRoZXJtYWwgcGluY3RybC4u
LlxuIik7Cj4gSSByZWFsaXplIG15IGNvbW1lbnQgd2FzIGNvbmZ1c2luZy4gSSB3YXMgbm90IHNh
eWluZyB0byBhZGQgYSBwYW5pYygpCj4gY2FsbCBoZXJlIGJ1dCB0aGF0IHRoZSBjb2RlIHdhcyBh
Y2Nlc3NpbmcgYSBOVUxMIHBvaW50ZXIuIFBsZWFzZSByZW1vdmUKPiB0aGUgcGFuaWMuCk9LLCBJ
J2xsIGZpeGVkIGl0Lgo+Cj4+ICsJCQlyZXR1cm4gUFRSX0VSUih0aGVybWFsLT5waW5jdHJsKTsK
Pj4gKwkJfQo+PiArCj4+ICsJCXRoZXJtYWwtPmdwaW9fc3RhdGUgPSBwaW5jdHJsX2xvb2t1cF9z
dGF0ZSh0aGVybWFsLT5waW5jdHJsLAo+PiArCQkJCQkJCSAgICJncGlvIik7Cj4+ICsJCWlmIChJ
U19FUlJfT1JfTlVMTCh0aGVybWFsLT5ncGlvX3N0YXRlKSkgewo+PiArCQkJZGV2X2VycigmcGRl
di0+ZGV2LCAiZmFpbGVkIHRvIGZpbmQgdGhlcm1hbCBncGlvIHN0YXRlXG4iKTsKPj4gKwkJCXJl
dHVybiAtRUlOVkFMOwo+PiArCQl9Cj4+ICsKPj4gKwkJdGhlcm1hbC0+b3RwX3N0YXRlID0gcGlu
Y3RybF9sb29rdXBfc3RhdGUodGhlcm1hbC0+cGluY3RybCwKPj4gKwkJCQkJCQkgICJvdHBvdXQi
KTsKPj4gKwkJaWYgKElTX0VSUl9PUl9OVUxMKHRoZXJtYWwtPm90cF9zdGF0ZSkpIHsKPj4gKwkJ
CWRldl9lcnIoJnBkZXYtPmRldiwgImZhaWxlZCB0byBmaW5kIHRoZXJtYWwgb3Rwb3V0IHN0YXRl
XG4iKTsKPj4gKwkJCXJldHVybiAtRUlOVkFMOwo+PiArCQl9Cj4+ICsKPj4gKwkJcGluY3RybF9z
ZWxlY3Rfc3RhdGUodGhlcm1hbC0+cGluY3RybCwgdGhlcm1hbC0+b3RwX3N0YXRlKTsKPiBJIGRv
bid0IHVuZGVyc3RhbmQgdGhpcyBwb3J0aW9uIG9mIGNvZGUuIFRoZSB0ZXN0IGFib3ZlIHNheXMg
dHNodXRfbW9kZQo+IGlzIFRTSFVUX01PREVfR1BJTy4gV2h5IGFjdGluZyBvbiB0aGVybWFsLT5v
dHBfc3RhdGUgdGhlbiA/Cj4KPgo+IEluIG15IHByZXZpb3VzIGNvbW1lbnQsIEkgd2FzIHN1Z2dl
c3RpbmcgdGhlIGZvbGxvd2luZzoKPgo+IFR3byBtb3JlIGZpZWxkcyBpbnN0ZWFkIG9mIHRocmVl
Ogo+Cj4gCXN0cnVjdCByb2NrY2hpcF90aGVybWFsX2RhdGEgewo+ICAgIAkJaW50IHRzaHV0X3Rl
bXA7Cj4gCSAgCWVudW0gdHNodXRfbW9kZSB0c2h1dF9tb2RlOwo+ICAgIAkJZW51bSB0c2h1dF9w
b2xhcml0eSB0c2h1dF9wb2xhcml0eTsKPiAJIAlzdHJ1Y3QgcGluY3RybCAqcGluY3RybDsKPiAJ
CXN0cnVjdCBwaW5jdHJsX3N0YXRlICpwaW5jdHJsX3N0YXRlOwo+IAl9Owo+Cj4gCVsgLi4uIF0K
Pgo+IAl0aGVybWFsLT5waW5jdHJsID0gZGV2bV9waW5jdHJsX2dldCgmcGRldi0+ZGV2KTsKPiAJ
aWYgKElTX0VSUih0aGVybWFsLT5waW5jdHJsKSkgewo+IAkJZGV2X2VycigiLi4uIik7Cj4gCQly
ZXR1cm4gUFRSX0VSUih0aGVybWFsLT5waW5jdHJsKTsKPiAJfQo+Cj4gCXRoZXJtYWwtPnBpbmN0
cmxfc3RhdGUgPSBwaW5jdHJsX2xvb2t1cF9zdGF0ZSh0aGVybWFsLT5waW5jdHJsLAo+IAkJdGhl
cm1hbC0+dHNodXRfbW9kZSA9PSBUU0hVVF9NT0RFX0dQSU8gPyAiZ3BpbyIgOgo+IAkJCQkJCQki
b3Rwb3V0IjsKPgo+IAlpZiAoSVNfRVJSX09SX05VTEwodGhlcm1hbC0+cGluY3RybF9zdGF0ZSkg
ewo+IAkJZGV2X2VycigiLi4uIik7Cj4gCQlyZXR1cm4gUFRSX0VSUih0aGVybWFsLT5waW5jdHJs
X3N0YXRlKTsKPiAJfQo+Cj4gICAJcGluY3RybF9zZWxlY3Rfc3RhdGUodGhlcm1hbC0+cGluY3Ry
bCwgdGhlcm1hbC0+cGluY3RybF9zdGF0ZSk7Cj4KPgo+IAlbIC4uLiBdCj4KPiBJcyBpdCB3cm9u
ZyA/Cj4KPgo+PiArCX0KPj4gKwo+PiAgIAlmb3IgKGkgPSAwOyBpIDwgdGhlcm1hbC0+Y2hpcC0+
Y2huX251bTsgaSsrKSB7Cj4+ICAgCQllcnJvciA9IHJvY2tjaGlwX3RoZXJtYWxfcmVnaXN0ZXJf
c2Vuc29yKHBkZXYsIHRoZXJtYWwsCj4+ICAgCQkJCQkJJnRoZXJtYWwtPnNlbnNvcnNbaV0sCj4+
IEBAIC0xMzM3LDggKzEzNjcsOCBAQCBzdGF0aWMgaW50IF9fbWF5YmVfdW51c2VkIHJvY2tjaGlw
X3RoZXJtYWxfc3VzcGVuZChzdHJ1Y3QgZGV2aWNlICpkZXYpCj4+ICAgCj4+ICAgCWNsa19kaXNh
YmxlKHRoZXJtYWwtPnBjbGspOwo+PiAgIAljbGtfZGlzYWJsZSh0aGVybWFsLT5jbGspOwo+PiAt
Cj4+IC0JcGluY3RybF9wbV9zZWxlY3Rfc2xlZXBfc3RhdGUoZGV2KTsKPj4gKwlpZiAodGhlcm1h
bC0+dHNodXRfbW9kZSA9PSBUU0hVVF9NT0RFX0dQSU8pCj4+ICsJCXBpbmN0cmxfc2VsZWN0X3N0
YXRlKHRoZXJtYWwtPnBpbmN0cmwsIHRoZXJtYWwtPmdwaW9fc3RhdGUpOwo+IEFuZCB0aGVuOgo+
IAkgcGluY3RybF9zZWxlY3Rfc3RhdGUodGhlcm1hbC0+cGluY3RybCwgdGhlcm1hbC0+cGluY3Ry
bF9zdGF0ZSk7CgpwaW5jdHJsIHNlbGVjdCB0byBncGlvIG1vZGUgd2hlbiB0c2FkYyBzdXNwZW5k
IGFuZCBzaHV0ZG93bi4KCldoZW4gc3VzcGVuZCwgdHNhZGMgaXMgZGlzYWJsZWQsIHRoZSBvdHBf
cGluIHNob3VsZCByZXZlcnQgdG8gdGhlIApkZWZhdWx0IGdwaW8gc3RhdGUuCgo+Cj4+ICAgCj4+
ICAgCXJldHVybiAwOwo+PiAgIH0KPj4gQEAgLTEzODMsNyArMTQxMyw4IEBAIHN0YXRpYyBpbnQg
X19tYXliZV91bnVzZWQgcm9ja2NoaXBfdGhlcm1hbF9yZXN1bWUoc3RydWN0IGRldmljZSAqZGV2
KQo+PiAgIAlmb3IgKGkgPSAwOyBpIDwgdGhlcm1hbC0+Y2hpcC0+Y2huX251bTsgaSsrKQo+PiAg
IAkJcm9ja2NoaXBfdGhlcm1hbF90b2dnbGVfc2Vuc29yKCZ0aGVybWFsLT5zZW5zb3JzW2ldLCB0
cnVlKTsKPj4gICAKPj4gLQlwaW5jdHJsX3BtX3NlbGVjdF9kZWZhdWx0X3N0YXRlKGRldik7Cj4+
ICsJaWYgKHRoZXJtYWwtPnRzaHV0X21vZGUgPT0gVFNIVVRfTU9ERV9HUElPKQo+PiArCQlwaW5j
dHJsX3NlbGVjdF9zdGF0ZSh0aGVybWFsLT5waW5jdHJsLCB0aGVybWFsLT5vdHBfc3RhdGUpOwo+
IEFuZCB0aGVuCj4gCXBpbmN0cmxfc2VsZWN0X3N0YXRlKHRoZXJtYWwtPnBpbmN0cmwsIHRoZXJt
YWwtPnBpbmN0cmxfc3RhdGUpOwoKcGluY3RybCBzZWxlY3QgdG8gb3RwIG1vZGUgd2hlbiB0c2Fk
YyByZXN1bWUuCgo+Cj4+ICAgCXJldHVybiAwOwo+PiAgIH0KPj4KPgoKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
