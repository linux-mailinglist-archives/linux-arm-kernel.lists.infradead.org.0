Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB57544DAB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 22:40:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AABfJ7NxSM5cDTVSYq3fPp6LzX5O/Z7mm6B18aYVGak=; b=CC5nhm0H1uHExx
	f847FrAL9CPOmL3VXGRgPI9lOZR/CeaRxI6MJ3mgm/ML+cgGNzVasr5T0E31nhj3RuecrtUaF7o5i
	NmeDE8sZztKEgY8tk4/HENCnlVG9dp1ltUCMKblryi/s6AfbzGF2fAwa734dCegPuE7y/MVyHYtXq
	bw/p4f9TNvXu0aP2Pk99mo94jeKg/Wt1VqIDPkdAqJhfvzB8qZwC30eDlR7GHWVsqSwqZfpBy2qop
	APMQ9K9PJt40bomoiEGrCxm8mK5NthGqp3aA0f+vvYI2j/xfrZ2rx3o4dAjAZCENWLk9jUCc0PQgY
	KNRdbw6Uuca9P7yPWZUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbWWd-00066J-CN; Thu, 13 Jun 2019 20:40:47 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbWWV-00065s-06
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 20:40:40 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5DKeUoq096121;
 Thu, 13 Jun 2019 15:40:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560458430;
 bh=FysKhzbKOR7uj5LpXOJJioOxhLSk0M4xDu0X02P9DxY=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=NfHR0+7sPDQvmtmzgY2D2NVhY+63nsSu9wwwe3vSb0JbciESg2oXlXYIHzC5J4sOq
 hU/72SzuVKOXt4UKJMETuPSWgkaCbflX/RwDgCkJBbNGDMr+DvXb+VcgX3wKg81Lz7
 d9ClHKQal5ZgK6a8ekKyYih680QWQweMbpdt550I=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5DKeU0M091536
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 13 Jun 2019 15:40:30 -0500
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 13
 Jun 2019 15:40:29 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 13 Jun 2019 15:40:29 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5DKeRrZ120151;
 Thu, 13 Jun 2019 15:40:27 -0500
Subject: Re: [PATCH 10/16] dmaengine: ti: New driver for K3 UDMA - split#1:
 defines, structs, io func
To: Rob Herring <robh@kernel.org>
References: <20190506123456.6777-1-peter.ujfalusi@ti.com>
 <20190506123456.6777-11-peter.ujfalusi@ti.com> <20190613184324.GA26206@bogus>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <7229677c-29c5-8c1f-2218-ff51ed57b8d0@ti.com>
Date: Thu, 13 Jun 2019 23:40:59 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190613184324.GA26206@bogus>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_134039_124422_199E2BD8 
X-CRM114-Status: GOOD (  18.55  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: nm@ti.com, devicetree@vger.kernel.org, grygorii.strashko@ti.com,
 lokeshvutla@ti.com, linux-kernel@vger.kernel.org, t-kristo@ti.com,
 tony@atomide.com, vkoul@kernel.org, ssantosh@kernel.org,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Um9iLAoKT24gMTMvMDYvMjAxOSAyMS40MywgUm9iIEhlcnJpbmcgd3JvdGU6Cj4gT24gTW9uLCBN
YXkgMDYsIDIwMTkgYXQgMDM6MzQ6NTBQTSArMDMwMCwgUGV0ZXIgVWpmYWx1c2kgd3JvdGU6Cj4+
IFNwbGl0IHBhdGNoIGZvciByZXZpZXcgY29udGFpbmluZzogZGVmaW5lcywgc3RydWN0cywgaW8g
YW5kIGxvdyBsZXZlbAo+PiBmdW5jdGlvbnMgYW5kIGludGVycnVwdCBjYWxsYmFja3MuCj4gCj4g
Tm90IGEgdXNlZnVsIGNvbW1lbnQgZm9yIHVwc3RyZWFtLgoKVmlub2QgYXNrZWQgbWUgdG8gc3Bs
aXQgdGhlIHBhdGNoIHRvIHNtYWxsZXIgcGllY2VzIGZvciByZXZpZXcuIFRoaXMgaXMKanVzdCBh
IHNob3J0IG5vdGUgb24gd2hhdCB0aGlzIHBhcnQgY292ZXJzLiBUaGUgcmVhbCBjb21taXQgbWVz
c2FnZQpmb2xsb3dzIHVuZGVyLgoKPj4gRE1BIGRyaXZlciBmb3IKPj4gVGV4YXMgSW5zdHJ1bWVu
dHMgSzMgTkFWU1MgVW5pZmllZCBETUEg4oCTIFBlcmlwaGVyYWwgUm9vdCBDb21wbGV4IChVRE1B
LVApCj4+Cj4+IFRoZSBVRE1BLVAgaXMgaW50ZW5kZWQgdG8gcGVyZm9ybSBzaW1pbGFyIChidXQg
c2lnbmlmaWNhbnRseSB1cGdyYWRlZCkgZnVuY3Rpb25zCj4+IGFzIHRoZSBwYWNrZXQtb3JpZW50
ZWQgRE1BIHVzZWQgb24gcHJldmlvdXMgU29DIGRldmljZXMuIFRoZSBVRE1BLVAgbW9kdWxlCj4+
IHN1cHBvcnRzIHRoZSB0cmFuc21pc3Npb24gYW5kIHJlY2VwdGlvbiBvZiB2YXJpb3VzIHBhY2tl
dCB0eXBlcy4gVGhlIFVETUEtUCBpcwo+PiBhcmNoaXRlY3RlZCB0byBmYWNpbGl0YXRlIHRoZSBz
ZWdtZW50YXRpb24gYW5kIHJlYXNzZW1ibHkgb2YgU29DIERNQSBkYXRhCj4+IHN0cnVjdHVyZSBj
b21wbGlhbnQgcGFja2V0cyB0by9mcm9tIHNtYWxsZXIgZGF0YSBibG9ja3MgdGhhdCBhcmUgbmF0
aXZlbHkKPj4gY29tcGF0aWJsZSB3aXRoIHRoZSBzcGVjaWZpYyByZXF1aXJlbWVudHMgb2YgZWFj
aCBjb25uZWN0ZWQgcGVyaXBoZXJhbC4gTXVsdGlwbGUKPj4gVHggYW5kIFJ4IGNoYW5uZWxzIGFy
ZSBwcm92aWRlZCB3aXRoaW4gdGhlIERNQSB3aGljaCBhbGxvdyBtdWx0aXBsZSBzZWdtZW50YXRp
b24KPj4gb3IgcmVhc3NlbWJseSBvcGVyYXRpb25zIHRvIGJlIG9uZ29pbmcuIFRoZSBETUEgY29u
dHJvbGxlciBtYWludGFpbnMgc3RhdGUKPj4gaW5mb3JtYXRpb24gZm9yIGVhY2ggb2YgdGhlIGNo
YW5uZWxzIHdoaWNoIGFsbG93cyBwYWNrZXQgc2VnbWVudGF0aW9uIGFuZAo+PiByZWFzc2VtYmx5
IG9wZXJhdGlvbnMgdG8gYmUgdGltZSBkaXZpc2lvbiBtdWx0aXBsZXhlZCBiZXR3ZWVuIGNoYW5u
ZWxzIGluIG9yZGVyCj4+IHRvIHNoYXJlIHRoZSB1bmRlcmx5aW5nIERNQSBoYXJkd2FyZS4gQW4g
ZXh0ZXJuYWwgRE1BIHNjaGVkdWxlciBpcyB1c2VkIHRvCj4+IGNvbnRyb2wgdGhlIG9yZGVyaW5n
IGFuZCByYXRlIGF0IHdoaWNoIHRoaXMgbXVsdGlwbGV4aW5nIG9jY3VycyBmb3IgVHJhbnNtaXQK
Pj4gb3BlcmF0aW9ucy4gVGhlIG9yZGVyaW5nIGFuZCByYXRlIG9mIFJlY2VpdmUgb3BlcmF0aW9u
cyBpcyBpbmRpcmVjdGx5IGNvbnRyb2xsZWQKPj4gYnkgdGhlIG9yZGVyIGluIHdoaWNoIGJsb2Nr
cyBhcmUgcHVzaGVkIGludG8gdGhlIERNQSBvbiB0aGUgUnggUFNJLUwgaW50ZXJmYWNlLgo+Pgo+
PiBUaGUgVURNQS1QIGFsc28gc3VwcG9ydHMgYWN0aW5nIGFzIGJvdGggYSBVVEMgYW5kIFVETUEt
QyBmb3IgaXRzIGludGVybmFsCj4+IGNoYW5uZWxzLiBDaGFubmVscyBpbiB0aGUgVURNQS1QIGNh
biBiZSBjb25maWd1cmVkIHRvIGJlIGVpdGhlciBQYWNrZXQtQmFzZWQgb3IKPj4gVGhpcmQtUGFy
dHkgY2hhbm5lbHMgb24gYSBjaGFubmVsIGJ5IGNoYW5uZWwgYmFzaXMuCj4+Cj4+IFRoZSBpbml0
aWFsIGRyaXZlciBzdXBwb3J0czoKPj4gLSBNRU1fVE9fTUVNIChUUiBtb2RlKQo+PiAtIERFVl9U
T19NRU0gKFBhY2tldCAvIFRSIG1vZGUpCj4+IC0gTUVNX1RPX0RFViAoUGFja2V0IC8gVFIgbW9k
ZSkKPj4gLSBDeWNsaWMgKFBhY2tldCAvIFRSIG1vZGUpCj4+IC0gTWV0YWRhdGEgZm9yIGRlc2Ny
aXB0b3JzCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFBldGVyIFVqZmFsdXNpIDxwZXRlci51amZhbHVz
aUB0aS5jb20+Cj4+IC0tLQo+PiAgZHJpdmVycy9kbWEvdGkvazMtdWRtYS5jICAgICAgICAgIHwg
MTAwOCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+PiAgZHJpdmVycy9kbWEvdGkvazMt
dWRtYS5oICAgICAgICAgIHwgIDEyOSArKysrCj4+ICBpbmNsdWRlL2R0LWJpbmRpbmdzL2RtYS9r
My11ZG1hLmggfCAgIDI2ICsKPiAKPiBUaGlzIGJlbG9uZ3MgaW4gdGhlIGJpbmRpbmcgcGF0Y2gu
CgpPSywgSSdsbCBtb3ZlIGl0LgoKPiAKPj4gIDMgZmlsZXMgY2hhbmdlZCwgMTE2MyBpbnNlcnRp
b25zKCspCj4+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9kbWEvdGkvazMtdWRtYS5jCj4+
ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9kbWEvdGkvazMtdWRtYS5oCj4+ICBjcmVhdGUg
bW9kZSAxMDA2NDQgaW5jbHVkZS9kdC1iaW5kaW5ncy9kbWEvazMtdWRtYS5oCj4gCj4+IGRpZmYg
LS1naXQgYS9pbmNsdWRlL2R0LWJpbmRpbmdzL2RtYS9rMy11ZG1hLmggYi9pbmNsdWRlL2R0LWJp
bmRpbmdzL2RtYS9rMy11ZG1hLmgKPj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPj4gaW5kZXggMDAw
MDAwMDAwMDAwLi44OWJhNmE5ZDRhOGYKPj4gLS0tIC9kZXYvbnVsbAo+PiArKysgYi9pbmNsdWRl
L2R0LWJpbmRpbmdzL2RtYS9rMy11ZG1hLmgKPj4gQEAgLTAsMCArMSwyNiBAQAo+PiArI2lmbmRl
ZiBfX0RUX1RJX1VETUFfSAo+PiArI2RlZmluZSBfX0RUX1RJX1VETUFfSAo+PiArCj4+ICsjZGVm
aW5lIFVETUFfVFJfTU9ERQkJMAo+PiArI2RlZmluZSBVRE1BX1BLVF9NT0RFCQkxCj4+ICsKPj4g
KyNkZWZpbmUgVURNQV9ESVJfVFgJCTAKPj4gKyNkZWZpbmUgVURNQV9ESVJfUlgJCTEKPj4gKwo+
PiArI2RlZmluZSBQU0lMX1NUQVRJQ19UUl9OT05FCTAKPj4gKyNkZWZpbmUgUFNJTF9TVEFUSUNf
VFJfWFkJMQo+PiArI2RlZmluZSBQU0lMX1NUQVRJQ19UUl9NQ0FOCTIKPj4gKwo+PiArI2RlZmlu
ZSBVRE1BX1BETUFfVFJfWFkoaWQpCQkJCVwKPj4gKwl0aSxwc2lsLWNvbmZpZyMjaWQgewkJCQlc
Cj4+ICsJCWxpbnV4LHVkbWEtbW9kZSA9IDxVRE1BX1RSX01PREU+OwlcCj4+ICsJCXN0YXRpY3Ry
LXR5cGUgPSA8UFNJTF9TVEFUSUNfVFJfWFk+OwlcCj4+ICsJfQo+IAo+IFdlIGRvbid0IGFjY2Vw
dCB0aGlzIGtpbmQgb2YgY29tcGxleCBtYWNyb3MgaW4gZHRzIGZpbGVzLiBJdCBvYmZ1c2NhdGVz
IAo+IHJlYWRpbmcgZHRzIGZpbGVzLgoKSSBzZWUuIEkgYWdyZWUgdGhhdCBpdCBvYmZ1c2NhdGVz
IHRoaW5ncyBhcyB5b3UgbmVlZCB0byBsb29rIGl0IHVwIGluCnRoZSBoZWFkZXIsIGJ1dCBhcyBJ
IG1lbnRpb25lZCByZWdhcmRpbmcgdG8gcGF0Y2ggOSB3ZSBoYXZlIFBETUFzIHdpdGgKMjIgdGhy
ZWFkcyBuZWVkaW5nIDIyIHBzaWwtY29uZmlnIHNlY3Rpb24gZm9yIHRoZSB0aHJlYWRzLiBJdCBt
YWtlcyB0aGUKcmVhZGluZyBvZiB0aGUgRFQgYSBiaXQgaGFyZCBhbmQgYWxzbyBlcnJvciBwcm9u
ZSB3aGVuIHlvdSBwb3B1bGF0ZSB0aGluZ3MuCgpCdXQgSSBjYW4gZHJvcCB0aGUgbWFjcm8gYW5k
IHdyaXRlIGFsbCBwc2lsLWNvbmZpZzAuLi4yMgoKSHJtLCBzbyB3ZSBoYXZlIDIzIHRocmVhZHMg
aW4gc29tZSBQRE1BLi4uCgpUaGFua3MsCi0gUMOpdGVyCgpUZXhhcyBJbnN0cnVtZW50cyBGaW5s
YW5kIE95LCBQb3Jra2FsYW5rYXR1IDIyLCAwMDE4MCBIZWxzaW5raS4KWS10dW5udXMvQnVzaW5l
c3MgSUQ6IDA2MTU1MjEtNC4gS290aXBhaWtrYS9Eb21pY2lsZTogSGVsc2lua2kKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
