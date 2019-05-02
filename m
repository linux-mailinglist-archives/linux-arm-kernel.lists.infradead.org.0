Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C836B1173C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 12:27:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=m4WLGu/OkU/BCDpq90zMNJo1CX7Vg9vX7L2Sc/HEtCE=; b=c5bQ6l1OtDavAlkxOGiAiEvQL
	wnqHYMsNuzLUI/UKIKLehmy4vAW34SdgGlzmluA+myWLxcIbbH4jN1hHnQV8YjUAPGotXNcoT5rqy
	HPJy3h2gIu4u3iCsOTFQIQ8ECeeqiuO9EBubWeJZrI6jPCBgl7fDWM90TTxemJ7sHna+dTwLkElq7
	xDQKGNu9AJIhR5f/oZbvwXQRA3krmzV2ZE3YyO8EApwI6jtSNQi0aONQt+qX8lt9SrL0yYWYKM8F6
	PbXhCOPGYoWAH9L+q3rU35Ok1F0sreIK1NoaK4gVmIHYDZBYk4Z0cTp2TZNZIljYlpfMCmElWcoEk
	6s5zyMTvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM8wS-00032Z-0m; Thu, 02 May 2019 10:27:52 +0000
Received: from mail2.sp2max.com.br ([138.185.4.9])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM8wK-00031x-LY
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 10:27:46 +0000
Received: from [172.17.0.2] (unknown [186.137.130.251])
 (Authenticated sender: pablo@fliagreco.com.ar)
 by mail2.sp2max.com.br (Postfix) with ESMTPA id 9C6E57B05A2;
 Thu,  2 May 2019 07:27:40 -0300 (-03)
Subject: Re: [linux-sunxi] Re: [PATCH v5 7/7] ARM: dts: sun8i: v40:
 bananapi-m2-berry: Add Bluetooth device node
To: wens@kernel.org, Maxime Ripard <maxime.ripard@bootlin.com>
References: <1556040365-10913-1-git-send-email-pgreco@centosproject.org>
 <1556040365-10913-8-git-send-email-pgreco@centosproject.org>
 <20190502074103.vtuxmsl55u3ygyvl@flea>
 <CAGb2v65eaRLRkJ2hvoOc1Cr=ncSeqy7Tq2pzt4rk4uiWQeag2w@mail.gmail.com>
From: =?UTF-8?Q?Pablo_Sebasti=c3=a1n_Greco?= <pgreco@centosproject.org>
Message-ID: <c96ecf5a-398c-d34e-72b8-332f0efbade0@centosproject.org>
Date: Thu, 2 May 2019 07:27:39 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAGb2v65eaRLRkJ2hvoOc1Cr=ncSeqy7Tq2pzt4rk4uiWQeag2w@mail.gmail.com>
Content-Language: en-US
X-SP2Max-MailScanner-Information: Please contact the ISP for more information
X-SP2Max-MailScanner-ID: 9C6E57B05A2.A5DC6
X-SP2Max-MailScanner: Sem Virus encontrado
X-SP2Max-MailScanner-SpamCheck: nao spam, SpamAssassin (not cached,
 escore=-2.9, requerido 6, autolearn=not spam, ALL_TRUSTED -1.00,
 BAYES_00 -1.90)
X-SP2Max-MailScanner-From: pgreco@centosproject.org
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_032745_063141_68A5FF75 
X-CRM114-Status: GOOD (  23.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CkVsIDIvNS8xOSBhIGxhcyAwNToyMCwgQ2hlbi1ZdSBUc2FpIGVzY3JpYmnDszoKPiBPbiBUaHUs
IE1heSAyLCAyMDE5IGF0IDM6NDEgUE0gTWF4aW1lIFJpcGFyZCA8bWF4aW1lLnJpcGFyZEBib290
bGluLmNvbT4gd3JvdGU6Cj4+IE9uIFR1ZSwgQXByIDIzLCAyMDE5IGF0IDAyOjI2OjA0UE0gLTAz
MDAsIFBhYmxvIEdyZWNvIHdyb3RlOgo+Pj4gVGhlIEFQNjIxMiBpcyBiYXNlZCBvbiB0aGUgQnJv
YWRjb20gQkNNNDM0MzAgb3IgQkNNNDM0MzguIFRoZSBXaUZpIHNpZGUKPj4+IGlkZW50aWZpZXMg
YXMgQkNNNDM0MzAsIHdoaWxlIHRoZSBCbHVldG9vdGggc2lkZSBpZGVudGlmaWVzIGFzIEJDTTQz
NDM4Lgo+Pj4KPj4+IFRoZSBCbHVldG9vdGggc2lkZSBpcyBjb25uZWN0ZWQgdG8gVUFSVDMgaW4g
YSA0IHdpcmUgY29uZmlndXJhdGlvbi4gU2FtZQo+Pj4gYXMgdGhlIFdpRmkgc2lkZSwgZHVlIHRv
IGJlaW5nIHRoZSBzYW1lIGNoaXAgYW5kIHBhY2thZ2UsIERMRE8xIGFuZAo+Pj4gRExETzIgcmVn
dWxhdG9yIG91dHB1dHMgZnJvbSB0aGUgUE1JQyBwcm92aWRlIG92ZXJhbGwgcG93ZXIgdmlhIFZC
QVQgYW5kCj4+PiBJL08gcG93ZXIgdmlhIFZERElPLiBUaGUgQ0xLX09VVF9BIGNsb2NrIG91dHB1
dCBmcm9tIHRoZSBTb0MgcHJvdmlkZXMKPj4+IHRoZSBMUE8gbG93IHBvd2VyIGNsb2NrIGF0IDMy
Ljc2OCBrSHouCj4+Pgo+Pj4gVGhpcyBwYXRjaCBlbmFibGVzIEJsdWV0b290aCBvbiB0aGlzIGJv
YXJkLCBhbmQgYWxzbyBhZGRzIHRoZSBtaXNzaW5nCj4+PiBMUE8gY2xvY2sgb24gdGhlIFdpRmkg
c2lkZS4gVGhlcmUgaXMgYWxzbyBhIFBDTSBjb25uZWN0aW9uIGZvcgo+Pj4gQmx1ZXRvb3RoLCBi
dXQgdGhpcyBpcyBub3QgY292ZXJlZCBoZXJlLgo+Pj4KPj4+IFRoZSBMUE8gY2xvY2sgaXMgZmVk
IGZyb20gQ0xLX09VVF9BLCB3aGljaCBuZWVkcyB0byBiZSBtdXhlZCBvbiBwaW4KPj4+IFBJMTIu
IFRoaXMgY2FuIGJlIHJlcHJlc2VudGVkIGluIG11bHRpcGxlIHdheXMuIFRoaXMgcGF0Y2ggcHV0
cyB0aGUKPj4+IHBpbmN0cmwgcHJvcGVydHkgaW4gdGhlIHBpbiBjb250cm9sbGVyIG5vZGUuIFRo
aXMgaXMgZHVlIHRvIGxpbWl0YXRpb25zCj4+PiBpbiBMaW51eCwgd2hlcmUgcGlubXV4IHNldHRp
bmdzLCBldmVuIHRoZSBzYW1lIG9uZSwgY2FuIG5vdCBiZSBzaGFyZWQKPj4+IGJ5IG11bHRpcGxl
IGRldmljZXMuIFRodXMgd2UgY2Fubm90IHB1dCBpdCBpbiBib3RoIHRoZSBXaUZpIGFuZAo+Pj4g
Qmx1ZXRvb3RoIGRldmljZSBub2Rlcy4gUHV0dGluZyBpdCB0aGUgQ0NVIG5vZGUgaXMgYW5vdGhl
ciBvcHRpb24sIGJ1dAo+Pj4gTGludXgncyBDQ1UgZHJpdmVyIGRvZXMgbm90IGhhbmRsZSBwaW5j
dHJsLiBBbHNvIHRoZSBwaW4gY29udHJvbGxlciBpcwo+Pj4gZ3VhcmFudGVlZCB0byBiZSBpbml0
aWFsaXplZCBhZnRlciB0aGUgQ0NVLCB3aGVuIGNsb2NrcyBhcmUgYXZhaWxhYmxlLgo+Pj4gQW5k
IGFueSBvdGhlciBkZXZpY2VzIHRoYXQgdXNlIG11eGVkIHBpbnMgYXJlIGd1YXJhbnRlZWQgdG8g
YmUKPj4+IGluaXRpYWxpemVkIGFmdGVyIHRoZSBwaW4gY29udHJvbGxlci4gVGh1cyBoYXZpbmcg
dGhlIENMS19PVVRfQSBwaW5tdXgKPj4+IHJlZmVyZW5jZSBiZSBpbiB0aGUgcGluIGNvbnRyb2xs
ZXIgbm9kZSBpcyBhIGdvb2QgY2hvaWNlIHdpdGhvdXQgaGF2aW5nCj4+PiB0byBkZWFsIHdpdGgg
aW1wbGVtZW50YXRpb24gaXNzdWVzLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IFBhYmxvIEdyZWNv
IDxwZ3JlY29AY2VudG9zcHJvamVjdC5vcmc+Cj4+PiAtLS0KPj4+ICAgYXJjaC9hcm0vYm9vdC9k
dHMvc3VuOGktdjQwLWJhbmFuYXBpLW0yLWJlcnJ5LmR0cyB8IDIyICsrKysrKysrKysrKysrKysr
KysrKysKPj4+ICAgMSBmaWxlIGNoYW5nZWQsIDIyIGluc2VydGlvbnMoKykKPj4+Cj4+PiBkaWZm
IC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvc3VuOGktdjQwLWJhbmFuYXBpLW0yLWJlcnJ5LmR0
cyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3N1bjhpLXY0MC1iYW5hbmFwaS1tMi1iZXJyeS5kdHMKPj4+
IGluZGV4IGM4N2YyYzAuLjE1YzIyYjAgMTAwNjQ0Cj4+PiAtLS0gYS9hcmNoL2FybS9ib290L2R0
cy9zdW44aS12NDAtYmFuYW5hcGktbTItYmVycnkuZHRzCj4+PiArKysgYi9hcmNoL2FybS9ib290
L2R0cy9zdW44aS12NDAtYmFuYW5hcGktbTItYmVycnkuZHRzCj4+PiBAQCAtOTYsNiArOTYsOCBA
QAo+Pj4gICAgICAgIHdpZmlfcHdyc2VxOiB3aWZpX3B3cnNlcSB7Cj4+PiAgICAgICAgICAgICAg
ICBjb21wYXRpYmxlID0gIm1tYy1wd3JzZXEtc2ltcGxlIjsKPj4+ICAgICAgICAgICAgICAgIHJl
c2V0LWdwaW9zID0gPCZwaW8gNiAxMCBHUElPX0FDVElWRV9MT1c+OyAvKiBQRzEwIFdJRklfRU4g
Ki8KPj4+ICsgICAgICAgICAgICAgY2xvY2tzID0gPCZjY3UgQ0xLX09VVEE+Owo+Pj4gKyAgICAg
ICAgICAgICBjbG9jay1uYW1lcyA9ICJleHRfY2xvY2siOwo+PiBTbyBpZiB5b3UgZG9uJ3QgaGF2
ZSB0aGF0IHBhdGNoICh0aGF0IGVuYWJsZXMgYmx1ZXRvb3RoKSB0aGUgd2lmaQo+PiBkb2Vzbid0
IHdvcmsgKGV2ZW4gdGhvdWdoIHRoZSBwcmV2aW91cyBwYXRjaCBpcyBzdXBwb3NlZCB0byBlbmFi
bGUgaXQpCj4gTWF5YmUgd2Ugc2hvdWxkIGp1c3Qgc3F1YXNoIHRoZSB0d28gKFdpRmkgYW5kIEJs
dWV0b290aCkgdG9nZXRoZXI/Cj4gQWZ0ZXIgYWxsLCB0aGV5IGFyZSBpbiB0aGUgc2FtZSBwYWNr
YWdlLCBhbmQgZGVwZW5kIG9uIHNvbWUgb2YgdGhlCj4gc2FtZSB0aGluZ3MsIHN1Y2ggYXMgY2xv
Y2tzIGFuZCByZWd1bGF0b3JzLgo+Cj4gQ2hlbll1ClRoYXQgc2VlbXMgYmV0dGVyLCBJIHdhcyB0
cnlpbmcgdG8ga2VlcCB0aGUgc2FtZSBsb2dpYyB0aGUgcGF0Y2hlcyAKYXBwbGllZCB0byB0aGUg
dWx0cmEuCj4+PiAgICAgICAgfTsKPj4+ICAgfTsKPj4+Cj4+PiBAQCAtMTczLDYgKzE3NSw3IEBA
Cj4+Pgo+Pj4gICAmcGlvIHsKPj4+ICAgICAgICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+
Pj4gKyAgICAgcGluY3RybC0wID0gPCZjbGtfb3V0X2FfcGluPjsKPj4gVGhpcyBvbmUgc2hvdWxk
IGJlaW4gdGhlIHByZXZpb3VzIG9uZSBhcyB3ZWxsCj4+Cj4+IE1heGltZQo+Pgo+PiAtLQo+PiBN
YXhpbWUgUmlwYXJkLCBCb290bGluCj4+IEVtYmVkZGVkIExpbnV4IGFuZCBLZXJuZWwgZW5naW5l
ZXJpbmcKPj4gaHR0cHM6Ly9ib290bGluLmNvbQo+Pgo+PiAtLQo+PiBZb3UgcmVjZWl2ZWQgdGhp
cyBtZXNzYWdlIGJlY2F1c2UgeW91IGFyZSBzdWJzY3JpYmVkIHRvIHRoZSBHb29nbGUgR3JvdXBz
ICJsaW51eC1zdW54aSIgZ3JvdXAuCj4+IFRvIHVuc3Vic2NyaWJlIGZyb20gdGhpcyBncm91cCBh
bmQgc3RvcCByZWNlaXZpbmcgZW1haWxzIGZyb20gaXQsIHNlbmQgYW4gZW1haWwgdG8gbGludXgt
c3VueGkrdW5zdWJzY3JpYmVAZ29vZ2xlZ3JvdXBzLmNvbS4KPj4gRm9yIG1vcmUgb3B0aW9ucywg
dmlzaXQgaHR0cHM6Ly9ncm91cHMuZ29vZ2xlLmNvbS9kL29wdG91dC4KUGFibG8uCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
