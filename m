Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F1613C5D0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 10:17:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tGoWUdy0F4zQ1k5ajrhByoI7EbGHRjkBSW70Tw2xJ88=; b=b4HN06uhe39f4Y
	6x91Ffsv5iFJFXEHSIHibKvgnzaxwavzidvvvh+GuME0WTM85CirN7ss7eXhr9W8wzP+KMfOAtHTY
	CZ/yVyIbf+XmqtQtGIrCMpVQ3POSVT576OhX05glH0o4HPx6tdJcR+ac7p0m7KINXZ3XiRkjcRhN4
	HGxVrDn/QPE4uqiaW/tB+CzQdi5YltTVo95RsMbD1LI4EolyXhF6gbvRe7rs5AjUhC95MyqjxDZJ3
	99DbwOhhEGDfs8iXfKIFTKsS3IP7LWT3lRP1bqi7pNUL/+LLwdf8l2H2sov+2705g0PeiNlMfvJ9A
	l6kaCa36F0/to2sxcSjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haby8-0006xn-KX; Tue, 11 Jun 2019 08:17:24 +0000
Received: from 3.mo68.mail-out.ovh.net ([46.105.58.60])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1habxh-0006lH-PT
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 08:17:00 +0000
Received: from player718.ha.ovh.net (unknown [10.109.159.136])
 by mo68.mail-out.ovh.net (Postfix) with ESMTP id D6DAE132051
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 10:16:52 +0200 (CEST)
Received: from armadeus.com (lfbn-1-7591-179.w90-126.abo.wanadoo.fr
 [90.126.248.179])
 (Authenticated sender: sebastien.szymanski@armadeus.com)
 by player718.ha.ovh.net (Postfix) with ESMTPSA id D1BE369E1F92;
 Tue, 11 Jun 2019 08:16:33 +0000 (UTC)
Subject: Re: [PATCH v2 2/3] media: imx7-media-csi: add i.MX6UL support
To: Rui Miguel Silva <rmfrfs@gmail.com>
References: <20190606153825.8183-1-sebastien.szymanski@armadeus.com>
 <20190606153825.8183-2-sebastien.szymanski@armadeus.com>
 <m34l4xpweh.fsf@gmail.com>
From: =?UTF-8?Q?S=c3=a9bastien_Szymanski?= <sebastien.szymanski@armadeus.com>
Openpgp: preference=signencrypt
Message-ID: <722336d1-c7f7-1796-95d5-7bba1fac7968@armadeus.com>
Date: Tue, 11 Jun 2019 10:16:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <m34l4xpweh.fsf@gmail.com>
Content-Language: en-US
X-Ovh-Tracer-Id: 7166071435811902533
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduuddrudehgedgtdduucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddm
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_011658_098857_8C290ED9 
X-CRM114-Status: GOOD (  27.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.105.58.60 listed in list.dnswl.org]
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>, Mark Rutland <mark.rutland@arm.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUnVpLAoKdGhhbmtzIGZvciB0aGUgcmV2aWV3IQoKT24gNi8xMC8xOSAxMjoyOCBQTSwgUnVp
IE1pZ3VlbCBTaWx2YSB3cm90ZToKPiBIaSBTZWJhc3RpZW4sCj4gVGhhbmtzIGZvciB0aGUgcGF0
Y2guCj4gCj4gT24gVGh1IDA2IEp1biAyMDE5IGF0IDE2OjM4LCBTw6liYXN0aWVuIFN6eW1hbnNr
aSB3cm90ZToKPj4gaS5NWDcgYW5kIGkuTVg2VUwvTCBoYXZlIHRoZSBzYW1lIENTSSBjb250cm9s
bGVyLiBTbyBhZGQgaS5NWDZVTC9MIHN1cHBvcnQKPj4gdG8gaW14Ny1tZWRpYS1jc2kgZHJpdmVy
Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBTw6liYXN0aWVuIFN6eW1hbnNraSA8c2ViYXN0aWVuLnN6
eW1hbnNraUBhcm1hZGV1cy5jb20+Cj4+IC0tLQo+Pgo+PiBDaGFuZ2VzIGZvciB2MjoKPj4gIC0g
cmViYXNlIG9uIHRvcCBvZiBsaW51eHR2L21hc3Rlcgo+PiAgLSBtZW50aW9uIGkuTVg2VUwvTCBp
biBoZWFkZXIgYW5kIEtjb25maWcgaGVscCB0ZXh0Cj4+ICAtIHJlbmFtZSBjc2lfdHlwZSB0byBj
c2lfc29jX2lkCj4+Cj4+ICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvaW14L0tjb25maWcgICAgICAg
ICAgfCAgNCArLQo+PiAgZHJpdmVycy9zdGFnaW5nL21lZGlhL2lteC9pbXg3LW1lZGlhLWNzaS5j
IHwgNjIgKysrKysrKysrKysrKysrKy0tLS0tLQo+PiAgMiBmaWxlcyBjaGFuZ2VkLCA0OSBpbnNl
cnRpb25zKCspLCAxNyBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3Rh
Z2luZy9tZWRpYS9pbXgvS2NvbmZpZyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9pbXgvS2NvbmZp
Zwo+PiBpbmRleCBhZDNkN2RmNmJiM2MuLjhiNmRjNDJjMzllMCAxMDA2NDQKPj4gLS0tIGEvZHJp
dmVycy9zdGFnaW5nL21lZGlhL2lteC9LY29uZmlnCj4+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9t
ZWRpYS9pbXgvS2NvbmZpZwo+PiBAQCAtMjIsMTEgKzIyLDExIEBAIGNvbmZpZyBWSURFT19JTVhf
Q1NJCj4+ICAJICBBIHZpZGVvNGxpbnV4IGNhbWVyYSBzZW5zb3IgaW50ZXJmYWNlIGRyaXZlciBm
b3IgaS5NWDUvNi4KPj4KPj4gIGNvbmZpZyBWSURFT19JTVg3X0NTSQo+PiAtCXRyaXN0YXRlICJp
Lk1YNyBDYW1lcmEgU2Vuc29yIEludGVyZmFjZSBkcml2ZXIiCj4+ICsJdHJpc3RhdGUgImkuTVg2
VUwvTCAvIGkuTVg3IENhbWVyYSBTZW5zb3IgSW50ZXJmYWNlIGRyaXZlciIKPj4gIAlkZXBlbmRz
IG9uIFZJREVPX0lNWF9NRURJQSAmJiBWSURFT19ERVYgJiYgSTJDCj4+ICAJZGVmYXVsdCB5Cj4+
ICAJaGVscAo+PiAgCSAgRW5hYmxlIHN1cHBvcnQgZm9yIHZpZGVvNGxpbnV4IGNhbWVyYSBzZW5z
b3IgaW50ZXJmYWNlIGRyaXZlciBmb3IKPj4gLQkgIGkuTVg3Lgo+PiArCSAgaS5NWDZVTC9MIG9y
IGkuTVg3Lgo+PiAgZW5kbWVudQo+PiAgZW5kaWYKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3Rh
Z2luZy9tZWRpYS9pbXgvaW14Ny1tZWRpYS1jc2kuYyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9p
bXgvaW14Ny1tZWRpYS1jc2kuYwo+PiBpbmRleCA5MTAxNTY2ZjNmNjcuLjkwMmJkY2U1OTRjZiAx
MDA2NDQKPj4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2lteC9pbXg3LW1lZGlhLWNzaS5j
Cj4+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9pbXgvaW14Ny1tZWRpYS1jc2kuYwo+PiBA
QCAtMSw2ICsxLDYgQEAKPj4gIC8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wCj4+
ICAvKgo+PiAtICogVjRMMiBDYXB0dXJlIENTSSBTdWJkZXYgZm9yIEZyZWVzY2FsZSBpLk1YNyBT
T0MKPj4gKyAqIFY0TDIgQ2FwdHVyZSBDU0kgU3ViZGV2IGZvciBGcmVlc2NhbGUgaS5NWDZVTC9M
IC8gaS5NWDcgU09DCj4+ICAgKgo+PiAgICogQ29weXJpZ2h0IChjKSAyMDE5IExpbmFybyBMdGQK
Pj4gICAqCj4+IEBAIC0xNTIsNiArMTUyLDExIEBACj4+ICAjZGVmaW5lIENTSV9DU0lDUjE4CQkw
eDQ4Cj4+ICAjZGVmaW5lIENTSV9DU0lDUjE5CQkweDRjCj4+Cj4+ICtlbnVtIGNzaV9zb2NfaWQg
ewo+PiArCUlNWDcsCj4+ICsJSU1YNlVMCj4+ICt9Owo+PiArCj4+ICBzdHJ1Y3QgaW14N19jc2kg
ewo+PiAgCXN0cnVjdCBkZXZpY2UgKmRldjsKPj4gIAlzdHJ1Y3QgdjRsMl9zdWJkZXYgc2Q7Cj4+
IEBAIC0xOTEsNiArMTk2LDcgQEAgc3RydWN0IGlteDdfY3NpIHsKPj4gIAlib29sIGlzX2luaXQ7
Cj4+ICAJYm9vbCBpc19zdHJlYW1pbmc7Cj4+ICAJYm9vbCBpc19jc2kyOwo+PiArCWVudW0gY3Np
X3NvY19pZCBzb2NfaWQ7Cj4+Cj4+ICAJc3RydWN0IGNvbXBsZXRpb24gbGFzdF9lb2ZfY29tcGxl
dGlvbjsKPj4gIH07Cj4+IEBAIC01NDgsNiArNTU0LDE0IEBAIHN0YXRpYyBpbnQgaW14N19jc2lf
cGFkX2xpbmtfdmFsaWRhdGUoc3RydWN0IHY0bDJfc3ViZGV2ICpzZCwKPj4gIAlpZiAocmV0KQo+
PiAgCQlyZXR1cm4gcmV0Owo+Pgo+PiArCWlmIChjc2ktPnNvY19pZCA9PSBJTVg2VUwpIHsKPj4g
KwkJbXV0ZXhfbG9jaygmY3NpLT5sb2NrKTsKPj4gKwkJY3NpLT5pc19jc2kyID0gZmFsc2U7Cj4+
ICsJCW11dGV4X3VubG9jaygmY3NpLT5sb2NrKTsKPj4gKwo+PiArCQlyZXR1cm4gMDsKPj4gKwl9
Cj4+ICsKPj4gIAlyZXQgPSBpbXg3X2NzaV9nZXRfdXBzdHJlYW1fZW5kcG9pbnQoY3NpLCAmdXBz
dHJlYW1fZXAsIHRydWUpOwo+PiAgCWlmIChyZXQpIHsKPj4gIAkJdjRsMl9lcnIoJmNzaS0+c2Qs
ICJmYWlsZWQgdG8gZmluZCB1cHN0cmVhbSBlbmRwb2ludFxuIik7Cj4+IEBAIC03NTcsNiArNzcx
LDcgQEAgc3RhdGljIGludCBpbXg3X2NzaV9jb25maWd1cmUoc3RydWN0IGlteDdfY3NpICpjc2kp
Cj4+ICAJc3RydWN0IHY0bDJfcGl4X2Zvcm1hdCAqb3V0X3BpeCA9ICZ2ZGV2LT5mbXQuZm10LnBp
eDsKPj4gIAlfX3UzMiBpbl9jb2RlID0gY3NpLT5mb3JtYXRfbWJ1c1tJTVg3X0NTSV9QQURfU0lO
S10uY29kZTsKPj4gIAl1MzIgY3IxLCBjcjE4Owo+PiArCWludCB3aWR0aCA9IG91dF9waXgtPndp
ZHRoOwo+Pgo+PiAgCWlmIChvdXRfcGl4LT5maWVsZCA9PSBWNEwyX0ZJRUxEX0lOVEVSTEFDRUQp
IHsKPj4gIAkJaW14N19jc2lfZGVpbnRlcmxhY2VfZW5hYmxlKGNzaSwgdHJ1ZSk7Cj4+IEBAIC03
NjYsMTUgKzc4MSwyNyBAQCBzdGF0aWMgaW50IGlteDdfY3NpX2NvbmZpZ3VyZShzdHJ1Y3QgaW14
N19jc2kgKmNzaSkKPj4gIAkJaW14N19jc2lfYnVmX3N0cmlkZV9zZXQoY3NpLCAwKTsKPj4gIAl9
Cj4+Cj4+IC0JaW14N19jc2lfc2V0X2ltYWdwYXJhKGNzaSwgb3V0X3BpeC0+d2lkdGgsIG91dF9w
aXgtPmhlaWdodCk7Cj4+ICsJY3IxOCA9IGlteDdfY3NpX3JlZ19yZWFkKGNzaSwgQ1NJX0NTSUNS
MTgpOwo+PiArCj4+ICsJaWYgKCFjc2ktPmlzX2NzaTIpIHsKPj4gKwkJaWYgKG91dF9waXgtPnBp
eGVsZm9ybWF0ID09IFY0TDJfUElYX0ZNVF9VWVZZIHx8Cj4+ICsJCSAgICBvdXRfcGl4LT5waXhl
bGZvcm1hdCA9PSBWNEwyX1BJWF9GTVRfWVVZVikKPj4gKwkJCXdpZHRoICo9IDI7Cj4+ICsKPj4g
KwkJaW14N19jc2lfc2V0X2ltYWdwYXJhKGNzaSwgd2lkdGgsIG91dF9waXgtPmhlaWdodCk7Cj4+
ICsKPj4gKwkJY3IxOCB8PSAoQklUX0JBU0VBRERSX1NXSVRDSF9FTiB8IEJJVF9CQVNFQUREUl9T
V0lUQ0hfU0VMIHwKPj4gKwkJCUJJVF9CQVNFQUREUl9DSEdfRVJSX0VOKTsKPj4gKwkJaW14N19j
c2lfcmVnX3dyaXRlKGNzaSwgY3IxOCwgQ1NJX0NTSUNSMTgpOwo+Pgo+PiAtCWlmICghY3NpLT5p
c19jc2kyKQo+PiAgCQlyZXR1cm4gMDsKPj4gKwl9Cj4+ICsKPj4gKwlpbXg3X2NzaV9zZXRfaW1h
Z3BhcmEoY3NpLCB3aWR0aCwgb3V0X3BpeC0+aGVpZ2h0KTsKPj4KPj4gIAljcjEgPSBpbXg3X2Nz
aV9yZWdfcmVhZChjc2ksIENTSV9DU0lDUjEpOwo+PiAgCWNyMSAmPSB+QklUX0dDTEtfTU9ERTsK
Pj4KPj4gLQljcjE4ID0gaW14N19jc2lfcmVnX3JlYWQoY3NpLCBDU0lfQ1NJQ1IxOCk7Cj4+ICAJ
Y3IxOCAmPSBCSVRfTUlQSV9EQVRBX0ZPUk1BVF9NQVNLOwo+PiAgCWNyMTggfD0gQklUX0RBVEFf
RlJPTV9NSVBJOwo+Pgo+PiBAQCAtODA5LDExICs4MzYsOSBAQCBzdGF0aWMgdm9pZCBpbXg3X2Nz
aV9lbmFibGUoc3RydWN0IGlteDdfY3NpICpjc2kpCj4+ICB7Cj4+ICAJaW14N19jc2lfc3dfcmVz
ZXQoY3NpKTsKPj4KPj4gLQlpZiAoY3NpLT5pc19jc2kyKSB7Cj4+IC0JCWlteDdfY3NpX2RtYXJl
cV9yZmZfZW5hYmxlKGNzaSk7Cj4+IC0JCWlteDdfY3NpX2h3X2VuYWJsZV9pcnEoY3NpKTsKPj4g
LQkJaW14N19jc2lfaHdfZW5hYmxlKGNzaSk7Cj4+IC0JfQo+PiArCWlteDdfY3NpX2RtYXJlcV9y
ZmZfZW5hYmxlKGNzaSk7Cj4+ICsJaW14N19jc2lfaHdfZW5hYmxlX2lycShjc2kpOwo+PiArCWlt
eDdfY3NpX2h3X2VuYWJsZShjc2kpOwo+PiAgfQo+Pgo+PiAgc3RhdGljIHZvaWQgaW14N19jc2lf
ZGlzYWJsZShzdHJ1Y3QgaW14N19jc2kgKmNzaSkKPj4gQEAgLTExNjYsMTkgKzExOTEsMzIgQEAg
c3RhdGljIGludCBpbXg3X2NzaV9wYXJzZV9lbmRwb2ludChzdHJ1Y3QgZGV2aWNlICpkZXYsCj4+
ICAJcmV0dXJuIGZ3bm9kZV9kZXZpY2VfaXNfYXZhaWxhYmxlKGFzZC0+bWF0Y2guZndub2RlKSA/
IDAgOiAtRUlOVkFMOwo+PiAgfQo+Pgo+PiArc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2Vf
aWQgaW14N19jc2lfb2ZfbWF0Y2hbXSA9IHsKPj4gKwl7IC5jb21wYXRpYmxlID0gImZzbCxpbXg3
LWNzaSIsIC5kYXRhID0gKHZvaWQgKilJTVg3IH0sCj4+ICsJeyAuY29tcGF0aWJsZSA9ICJmc2ws
aW14NnVsLWNzaSIsIC5kYXRhID0gKHZvaWQgKilJTVg2VUwgfSwKPiAKPiBsb29raW5nIGF0IHRo
aXMgYWdhaW4gSSB0aGluayB3ZSBjYW4gZG8gdGhpcyBpcyBhIGRpZmZlcmVudCB3YXkuCj4gSW5z
dGVhZCBkYXRhIGJlaW5nIHRoZSBzb2NfaWQsIGp1c3Qgc2V0IGhlcmUgaWYgaXQgaXNfY3NpMiBv
ciBub3QuCj4gCj4gVGhpcyB3b3VsZCBhdm9pZCB0byBhZGQgYSBzb2NfaWQgIHRvIHRoZSBzdHJ1
Y3QgdGhhdCBpdCByZWFsbHkgaXQKPiBpcyB1c2VkIG9ubHkgdG8gc2V0dXAgdGhlIGlzX2NzaTIg
dmFyLiBJIHRoaW5rIHRoaXMgd2lsbCBtYWtlIHRoaXMKPiBwYXRjaCBhIGxvdCBzaW1wbGVyLgoK
V2VsbCwgSSBoYXZlIGFkZGVkIHRoaXMgc29jX2lkIGJlY2F1c2UgaW14N19jc2lfZ2V0X3Vwc3Ry
ZWFtX2VuZHBvaW50IGluCmlteDdfY3NpX3BhZF9saW5rX3ZhbGlkYXRlIGZhaWxzOgoKWyAgMzY2
LjU0OTc2OF0gY3NpOiBmYWlsZWQgdG8gZmluZCB1cHN0cmVhbSBlbmRwb2ludApbICAzNjYuNTU2
Mjc0XSBjc2k6IHBpcGVsaW5lIHN0YXJ0IGZhaWxlZCB3aXRoIC0xOQoKTXkgcGlwZWxpbmUgaXM6
CgpEZXZpY2UgdG9wb2xvZ3kKLSBlbnRpdHkgMTogY3NpICgyIHBhZHMsIDIgbGlua3MpCiAgICAg
ICAgICAgIHR5cGUgVjRMMiBzdWJkZXYgc3VidHlwZSBVbmtub3duIGZsYWdzIDAKICAgICAgICAg
ICAgZGV2aWNlIG5vZGUgbmFtZSAvZGV2L3Y0bC1zdWJkZXYwCiAgICAgICAgcGFkMDogU2luawog
ICAgICAgICAgICAgICAgW2ZtdDpVWVZZOF8yWDgvNjQweDQ4MCBmaWVsZDpub25lIGNvbG9yc3Bh
Y2U6c3JnYgp4ZmVyOnNyZ2IgeWNiY3I6NjAxIHF1YW50aXphdGlvbjpmdWxsLXJhbmdlXQogICAg
ICAgICAgICAgICAgPC0gIm92NTY0MCAxLTAwM2MiOjAgW0VOQUJMRURdCiAgICAgICAgcGFkMTog
U291cmNlCiAgICAgICAgICAgICAgICBbZm10OlVZVlk4XzJYOC82NDB4NDgwIGZpZWxkOm5vbmUg
Y29sb3JzcGFjZTpzcmdiCnhmZXI6c3JnYiB5Y2Jjcjo2MDEgcXVhbnRpemF0aW9uOmZ1bGwtcmFu
Z2VdCiAgICAgICAgICAgICAgICAtPiAiY3NpIGNhcHR1cmUiOjAgW0VOQUJMRURdCgotIGVudGl0
eSA0OiBjc2kgY2FwdHVyZSAoMSBwYWQsIDEgbGluaykKICAgICAgICAgICAgdHlwZSBOb2RlIHN1
YnR5cGUgVjRMIGZsYWdzIDAKICAgICAgICAgICAgZGV2aWNlIG5vZGUgbmFtZSAvZGV2L3ZpZGVv
MQogICAgICAgIHBhZDA6IFNpbmsKICAgICAgICAgICAgICAgIDwtICJjc2kiOjEgW0VOQUJMRURd
CgotIGVudGl0eSAxMDogb3Y1NjQwIDEtMDAzYyAoMSBwYWQsIDEgbGluaykKICAgICAgICAgICAg
IHR5cGUgVjRMMiBzdWJkZXYgc3VidHlwZSBTZW5zb3IgZmxhZ3MgMAogICAgICAgICAgICAgZGV2
aWNlIG5vZGUgbmFtZSAvZGV2L3Y0bC1zdWJkZXYxCiAgICAgICAgcGFkMDogU291cmNlCiAgICAg
ICAgICAgICAgICBbZm10OlVZVlk4XzJYOC82NDB4NDgwQDEvMzAgZmllbGQ6bm9uZSBjb2xvcnNw
YWNlOnNyZ2IKeGZlcjpzcmdiIHljYmNyOjYwMSBxdWFudGl6YXRpb246ZnVsbC1yYW5nZV0KICAg
ICAgICAgICAgICAgIC0+ICJjc2kiOjAgW0VOQUJMRURdCgoKTWF5YmUgd2Ugc2hvdWxkIGZpeCB0
aGlzID8KClJlZ2FyZHMsCgo+IAo+PiArCXsgfSwKPj4gK307Cj4+ICtNT0RVTEVfREVWSUNFX1RB
QkxFKG9mLCBpbXg3X2NzaV9vZl9tYXRjaCk7Cj4+ICsKPj4gIHN0YXRpYyBpbnQgaW14N19jc2lf
cHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPj4gIHsKPj4gIAlzdHJ1Y3QgZGV2
aWNlICpkZXYgPSAmcGRldi0+ZGV2Owo+PiAgCXN0cnVjdCBkZXZpY2Vfbm9kZSAqbm9kZSA9IGRl
di0+b2Zfbm9kZTsKPj4gIAlzdHJ1Y3QgaW14X21lZGlhX2RldiAqaW14bWQ7Cj4+ICAJc3RydWN0
IGlteDdfY3NpICpjc2k7Cj4+ICsJY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCAqb2ZfaWQ7Cj4+
ICAJaW50IHJldDsKPj4KPj4gKwlvZl9pZCA9IG9mX21hdGNoX25vZGUoaW14N19jc2lfb2ZfbWF0
Y2gsIG5vZGUpOwo+IAo+IFdpdGggdGhlIGFib3ZlIHNhaWQsIGhlcmUgSSB0aGluayB3ZSBjYW4g
dXNlIHRoZSBvZl9tYXRjaF9kZXZpY2U/Cj4gCj4gaG9wZSB0aGlzIG1ha2VzIHNlbnNlIGFsc28g
dG8geW91Lgo+IAo+IE9uY2UgYWdhaW4gdGhhbmtzIGZvciB0aGUgcGF0Y2hlcy4KPiAKPiAtLS0K
PiBDaGVlcnMsCj4gICAgICAgICBSdWkKPiAKPj4gKwlpZiAoIW9mX2lkKQo+PiArCQlyZXR1cm4g
LUVOT0RFVjsKPj4gKwo+PiAgCWNzaSA9IGRldm1fa3phbGxvYygmcGRldi0+ZGV2LCBzaXplb2Yo
KmNzaSksIEdGUF9LRVJORUwpOwo+PiAgCWlmICghY3NpKQo+PiAgCQlyZXR1cm4gLUVOT01FTTsK
Pj4KPj4gIAljc2ktPmRldiA9IGRldjsKPj4gKwljc2ktPnNvY19pZCA9IChlbnVtIGNzaV9zb2Nf
aWQpb2ZfaWQtPmRhdGE7Cj4+Cj4+ICAJY3NpLT5tY2xrID0gZGV2bV9jbGtfZ2V0KCZwZGV2LT5k
ZXYsICJtY2xrIik7Cj4+ICAJaWYgKElTX0VSUihjc2ktPm1jbGspKSB7Cj4+IEBAIC0xMjk0LDEy
ICsxMzMyLDYgQEAgc3RhdGljIGludCBpbXg3X2NzaV9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2Rl
dmljZSAqcGRldikKPj4gIAlyZXR1cm4gMDsKPj4gIH0KPj4KPj4gLXN0YXRpYyBjb25zdCBzdHJ1
Y3Qgb2ZfZGV2aWNlX2lkIGlteDdfY3NpX29mX21hdGNoW10gPSB7Cj4+IC0JeyAuY29tcGF0aWJs
ZSA9ICJmc2wsaW14Ny1jc2kiIH0sCj4+IC0JeyB9LAo+PiAtfTsKPj4gLU1PRFVMRV9ERVZJQ0Vf
VEFCTEUob2YsIGlteDdfY3NpX29mX21hdGNoKTsKPj4gLQo+PiAgc3RhdGljIHN0cnVjdCBwbGF0
Zm9ybV9kcml2ZXIgaW14N19jc2lfZHJpdmVyID0gewo+PiAgCS5wcm9iZSA9IGlteDdfY3NpX3By
b2JlLAo+PiAgCS5yZW1vdmUgPSBpbXg3X2NzaV9yZW1vdmUsCj4gCgoKLS0gClPDqWJhc3RpZW4g
U3p5bWFuc2tpClNvZnR3YXJlIGVuZ2luZWVyLCBBcm1hZGV1cyBTeXN0ZW1zClRlbDogKzMzICgw
KTkgNzIgMjkgNDEgNDQKRmF4OiArMzMgKDApOSA3MiAyOCA3OSAyNgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
