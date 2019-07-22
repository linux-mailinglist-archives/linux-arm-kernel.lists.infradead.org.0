Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C992D6FE26
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 12:55:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vsG7qs0ob27dETd1IBU7hYL0NjGG3KSoUfrnAMd3IVs=; b=nU8mTBDfIctz8R
	Ctrd3MIcX8R1VJFuSU2sv15vdcp7IxJe0oixgRsMnHkW/YrkyJ/aMWvVo07Uwoovt1uYJarm98AHi
	LI9OMPiyrxm1u7f4yybpTIeI1YOFcclx6MyhCfu1sR+FWZdWKPg2JJ1Ym5r9zznU12f7xULiITqrU
	GUG2r4+93UHRWS1qn9Su2G48t2fY9N8u5rQxL8G2/60VscLh/dWFg1Ll62YVLrsLU2WfeyGNyBSx6
	T9/8v8ucLbLk4nQqNOXeIB7El8ZxySEWD+eAYdnpFS7yovmkrjawMgXuGqnJ1RczarHQSwqtae7t8
	4IDZ7zE1BVZgioFJ9Hdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpVy9-0005LV-RQ; Mon, 22 Jul 2019 10:55:01 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpVxv-0005EP-54
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 10:54:49 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 88EBE20720;
 Mon, 22 Jul 2019 12:54:41 +0200 (CEST)
Received: from [192.168.108.49] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 7551A2005B;
 Mon, 22 Jul 2019 12:54:41 +0200 (CEST)
Subject: Re: [RFC v2] DT-based tuner/demod init
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
To: linux-media <linux-media@vger.kernel.org>, I2C
 <linux-i2c@vger.kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
References: <6d38f9b1-a8cd-803d-b330-f92f7bcf08ca@free.fr>
Message-ID: <7c7f05bc-26e6-7671-a5e2-265775744096@free.fr>
Date: Mon, 22 Jul 2019 12:54:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <6d38f9b1-a8cd-803d-b330-f92f7bcf08ca@free.fr>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Mon Jul 22 12:54:41 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_035447_511289_E40D2D52 
X-CRM114-Status: GOOD (  17.99  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
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
Cc: DT <devicetree@vger.kernel.org>, Peter Korsgaard <peter@korsgaard.com>,
 Jeffrey Hugo <jeffrey.l.hugo@gmail.com>, Wolfram Sang <wsa@the-dreams.de>,
 Linus Walleij <linus.walleij@linaro.org>, Brad Love <brad@nextdimension.cc>,
 =?UTF-8?Q?Jonathan_Neusch=c3=a4fer?= <j.neuschaefer@gmx.net>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Antti Palosaari <crope@iki.fi>,
 Peter Rosin <peda@axentia.se>, Simon Horman <horms+renesas@verge.net.au>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Olli Salonen <olli.salonen@iki.fi>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTEvMDcvMjAxOSAxODoyMSwgTWFyYyBHb256YWxleiB3cm90ZToKCj4gVGhpcyBpcyBhIGZv
bGxvdy11cCBSRkMgdG8gbXkgZmlyc3QgcmVxdWVzdCBmb3IgY29tbWVudHM6Cj4gIltSRkNdIFNX
IGNvbm5lY3Rpb24gYmV0d2VlbiBEVkIgVHJhbnNwb3J0IFN0cmVhbSBkZW11eGVyIGFuZCBJMkMt
YmFzZWQgZnJvbnRlbmQiCj4gaHR0cHM6Ly93d3cuc3Bpbmljcy5uZXQvbGlzdHMvYXJtLWtlcm5l
bC9tc2c3Mzk5NzIuaHRtbAo+IAo+IEJhY2tncm91bmQ6IG15IFNvQyBwcm92aWRlcyBhICJUcmFu
c3BvcnQgU3RyZWFtIEludGVyZmFjZSIgb24tY2hpcAo+IChmb3Igd2hpY2ggSSB3cm90ZSBhIHNt
YWxsIGRyaXZlciwgdHNpZi5jKSBhcyB3ZWxsIGFzIGEgdHVuZXIvZGVtb2QgY29tYm8KPiAoc2ky
MTQxL3NpMjE2OCkgb24gdGhlIGJvYXJkLgo+IAo+IE15IG9yaWdpbmFsIGdvYWwgd2FzOiBiZWlu
ZyBhYmxlIHRvIGxpbmsgdGhlIHR1bmVyL2RlbW9kIGZyb20gdGhlIGRldmljZSB0cmVlLAo+IGlu
c3RlYWQgb2YgaGFyZC1jb2RpbmcgdGhlbSBpbiB0aGUgVFNJRiBkcml2ZXIuCj4gCj4gKFBsZWFz
ZSBzZWUgdGhlIHJlc3VsdGluZyBjb2RlIGF0IHRoZSBlbmQgb2YgdGhpcyBtZXNzYWdlKQoKQmVs
b3cgaXMgYW4gYW5hbHlzaXMgb2YgdGhlIHByb3Bvc2VkIGRyaXZlciwgYWZ0ZXIgYSBmZXcgZXhj
aGFuZ2VzIHdpdGggTWF1cm8Kb24gSVJDLgoKCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEv
cGxhdGZvcm0vdHNpZi5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS90c2lmLmMKPiBuZXcgZmls
ZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMC4uYjEzNmYzMzRlOWM2Cj4gLS0tIC9k
ZXYvbnVsbAo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdHNpZi5jCj4gQEAgLTAsMCAr
MSwxODUgQEAKPiArI2luY2x1ZGUgPGxpbnV4L2Nsay5oPgo+ICsjaW5jbHVkZSA8bGludXgvaW50
ZXJydXB0Lmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9wbGF0Zm9ybV9kZXZpY2UuaD4KPiArI2luY2x1
ZGUgPG1lZGlhL2R2Yl9mcm9udGVuZC5oPgo+ICsjaW5jbHVkZSA8bWVkaWEvZHZiX2RlbXV4Lmg+
Cj4gKyNpbmNsdWRlIDxtZWRpYS9kbXhkZXYuaD4KPiArCj4gKy8qIFRTSUYgcmVnaXN0ZXIgb2Zm
c2V0cyAqLwo+ICsjZGVmaW5lIFRTSUZfU1RTX0NUTAkweDAJLyogc3RhdHVzIGFuZCBjb250cm9s
ICovCj4gKyNkZWZpbmUgVFNJRl9EQVRBX1BPUlQJMHgxMDAKPiArCj4gKy8qIFRTSUZfU1RTX0NU
TCBiaXRzICovCj4gKyNkZWZpbmUgRU5BQkxFX0lSUQlCSVQoMjgpCj4gKyNkZWZpbmUgVFNJRl9T
VE9QCUJJVCgzKQo+ICsjZGVmaW5lIFRTSUZfU1RBUlQJQklUKDApCj4gKwo+ICtzdHJ1Y3QgdHNp
ZiB7Cj4gKwl2b2lkIF9faW9tZW0gKmJhc2U7Cj4gKwlzdHJ1Y3QgY2xrICpjbGs7Cj4gKwlpbnQg
cmVmX2NvdW50OyAvKioqIFRPRE86IHVzZSBhdG9taWNfdCA/Pz8gb3IgcmVmY291bnRfdCA/Pz8g
b3Iga3JlZiA/Pz8gKioqLwo+ICsJdTMyIGJ1Zls0OF07Cj4gKwlzdHJ1Y3QgZHZiX2Zyb250ZW5k
ICpmZTsKPiArCS8qKiogRE8gSSBORUVEIEFMTCA0ICoqKi8KPiArCS8vc3RydWN0IGRteF9mcm9u
dGVuZCBkbXhfZnJvbnRlbmQ7Cj4gKwlzdHJ1Y3QgZHZiX2FkYXB0ZXIgZHZiX2FkYXB0ZXI7Cj4g
KwlzdHJ1Y3QgZHZiX2RlbXV4IGR2Yl9kZW11eDsKPiArCXN0cnVjdCBkbXhkZXYgZG14ZGV2Owo+
ICt9Owo+ICsKPiArc3RhdGljIGludCBzdGFydF90c2lmKHN0cnVjdCBkdmJfZGVtdXhfZmVlZCAq
ZmVlZCkKPiArewo+ICsJc3RydWN0IHRzaWYgKnRzaWYgPSBmZWVkLT5kZW11eC0+cHJpdjsKPiAr
CXByaW50aygiJXM6IGZlZWQgUElEPSV1XG4iLCBfX2Z1bmNfXywgZmVlZC0+cGlkKTsKPiArCj4g
KwlpZiAodHNpZi0+cmVmX2NvdW50KysgPT0gMCkgewo+ICsJCXUzMiB2YWwgPSBUU0lGX1NUQVJU
IHwgRU5BQkxFX0lSUSB8IEJJVCgyOSk7Cj4gKwkJd3JpdGVsX3JlbGF4ZWQodmFsLCB0c2lmLT5i
YXNlICsgVFNJRl9TVFNfQ1RMKTsKPiArCX0KPiArCj4gKwlyZXR1cm4gMDsKPiArfQo+ICsKPiAr
c3RhdGljIGludCBzdG9wX3RzaWYoc3RydWN0IGR2Yl9kZW11eF9mZWVkICpmZWVkKQo+ICt7Cj4g
KwlzdHJ1Y3QgdHNpZiAqdHNpZiA9IGZlZWQtPmRlbXV4LT5wcml2Owo+ICsJcHJpbnRrKCIlczog
ZmVlZCBQSUQ9JXVcbiIsIF9fZnVuY19fLCBmZWVkLT5waWQpOwo+ICsKPiArCWlmICgtLXRzaWYt
PnJlZl9jb3VudCA9PSAwKSB7Cj4gKwkJd3JpdGVsX3JlbGF4ZWQoVFNJRl9TVE9QLCB0c2lmLT5i
YXNlICsgVFNJRl9TVFNfQ1RMKTsKPiArCX0KPiArCj4gKwlyZXR1cm4gMDsKPiArfQo+ICsKPiAr
c3RhdGljIGlycXJldHVybl90IHRzaWZfaXNyKGludCBpcnEsIHZvaWQgKmFyZykKPiArewo+ICsJ
aW50IGk7Cj4gKwl1MzIgc3RhdHVzOwo+ICsJc3RydWN0IHRzaWYgKnRzaWYgPSBhcmc7Cj4gKwo+
ICsJc3RhdHVzID0gcmVhZGxfcmVsYXhlZCh0c2lmLT5iYXNlICsgVFNJRl9TVFNfQ1RMKTsKPiAr
CXdyaXRlbF9yZWxheGVkKHN0YXR1cywgdHNpZi0+YmFzZSArIFRTSUZfU1RTX0NUTCk7Cj4gKwo+
ICsJZm9yIChpID0gMDsgaSA8IDQ4OyArK2kpCj4gKwkJdHNpZi0+YnVmW2ldID0gcmVhZGxfcmVs
YXhlZCh0c2lmLT5iYXNlICsgVFNJRl9EQVRBX1BPUlQpOwo+ICsKPiArCWR2Yl9kbXhfc3dmaWx0
ZXJfcGFja2V0cygmdHNpZi0+ZHZiX2RlbXV4LCAodm9pZCAqKXRzaWYtPmJ1ZiwgMSk7Cj4gKwo+
ICsJcmV0dXJuIElSUV9IQU5ETEVEOwo+ICt9CgpXaGF0IG1heSBub3QgYmUgYXBwYXJlbnQgaGVy
ZSBpcyB0aGF0IChpbiB0aGlzIG1vZGUpIHRoZSBIVyBnZW5lcmF0ZXMKb25lIGludGVycnVwdCBm
b3IgKmV2ZXJ5KiAqc2luZ2xlKiBUUyBwYWNrZXQgKGkuZS4gMTUwNCBiaXRzKS4gQW5kIGl0CmNh
biBidWZmZXIgb25seSBhIHNpbmdsZSBwYWNrZXQuIFByZXR0eSBoYXJkIHJlYWwtdGltZSBjb25z
dHJhaW50cy4uLgoKU2luY2UgSSdtIGRlYWxpbmcgd2l0aCAyNSBNYnBzIHN0cmVhbXMgKEZyZW5j
aCBEVkItVDIgbXVsdGlwbGV4KQoyNSoxMGU2IC8gMTUwNCA9IDE2NjAwIHBhY2tldHMgcGVyIHNl
Y29uZCAtLSBpLmUuIDYwIMK1cyBiZXR3ZWVuIElSUXMKCkV2ZW4gYWZ0ZXI6CgoxKSBtb3Zpbmcg
dGhlIElTUiB0byBpdHMgb3duIGRlZGljYXRlZCBjb3JlLAoyKSBtb3ZpbmcgZHZiX2RteF9zd2Zp
bHRlcl9wYWNrZXRzKCkgdG8gYSB3b3JrX3F1ZXVlLAozKSByZW1vdmluZyBpbnRlcnJ1cHQgbWFz
a2luZyBmcm9tIERWQiBmdW5jdGlvbnMsCjQpIHVzaW5nIGxhcmdlIFNXIGJ1ZmZlcnMgKDEwMjQg
VFMgcGFja2V0cykKCkkgc3RpbGwgZHJvcCBhIGZldyBwYWNrZXRzIGhlcmUgYW5kIHRoZXJlICh+
MSBwZXIgbWludXRlKS4KCkNvbmNsdXNpb246IGl0IHNlZW1zIHRoaXMgSFcgbW9kZSBjYW5ub3Qg
d29yayByZWxpYWJseSBvbiB0aGUgdHlwZXMKb2Ygc3RyZWFtcyBJJ20gaW50ZXJlc3RlZCBpbi4g
VGh1cywgdGhlcmUncyBubyBwb2ludCBpbiBzdXBwb3J0aW5nIGl0CmluIHRoZSBmaW5hbCBkcml2
ZXIuIEkgbmVlZCB0byB0ZXN0ICJhZHZhbmNlZCIgbW9kZS4KClJlZ2FyZHMuCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
