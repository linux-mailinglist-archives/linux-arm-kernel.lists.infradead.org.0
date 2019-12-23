Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4413F129208
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 07:51:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QnlA4YN9FYAhCqdbgwVN65US1h2b9Pu6DVKr7r4jGV0=; b=h/GBde7KUQEPFZkWSU5zdif+C
	xyBS85Kkm1Z3u6+ehpr7muZ1KAcTaYCa97SuN0dsNff//wMNtSfOSZvhHdLy7uRyquFBJewj06b13
	k5fJlZxg6XQMmsGyGmqBm8WCH6ZJiRyai1rYAY07Q2hB/21Nar0yPIVPUnuC4cMswiX1JNjrIyuvb
	rn3zcY69f2ruyvsv13fJZdL6uBQkDVh/gEg3oyiJiLqlsfq/EKejOww98ljoBLL9/Ep7QCt9s91gH
	w7C0Hs0w2rGlhoWno2l167t97y4si0J76vaSiBmOKuqvvBikpapUp0BavlprUkkdzMZy5i+cPKgX/
	a5LcPQnmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijHYo-0000sO-7F; Mon, 23 Dec 2019 06:51:22 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijHYb-0000rc-SP
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 06:51:11 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 48FF52AF828E5AFB0898;
 Mon, 23 Dec 2019 14:51:00 +0800 (CST)
Received: from [127.0.0.1] (10.173.222.27) by DGGEMS402-HUB.china.huawei.com
 (10.3.19.202) with Microsoft SMTP Server id 14.3.439.0; Mon, 23 Dec 2019
 14:50:53 +0800
Subject: Re: [PATCH] KVM: arm/arm64: vgic: Handle GICR_PENDBASER.PTZ filed as
 RAZ
To: Marc Zyngier <maz@kernel.org>, <eric.auger@redhat.com>
References: <20191220111833.1422-1-yuzenghui@huawei.com>
 <71e3dcc00ad5ab8dffd732bfe7381705@www.loen.fr>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <5f5f499a-d025-cc9f-66f3-37fe958df246@huawei.com>
Date: Mon, 23 Dec 2019 14:50:51 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <71e3dcc00ad5ab8dffd732bfe7381705@www.loen.fr>
Content-Language: en-US
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_225110_083486_252A678B 
X-CRM114-Status: GOOD (  17.17  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: andre.przywara@arm.com, wanghaibin.wang@huawei.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyYywgRXJpYywKCk9uIDIwMTkvMTIvMjAgMjE6MDcsIE1hcmMgWnluZ2llciB3cm90ZToK
PiBPbiAyMDE5LTEyLTIwIDExOjE4LCBaZW5naHVpIFl1IHdyb3RlOgo+PiBBbHRob3VnaCBndWVz
dCB3aWxsIGhhcmRseSByZWFkIGFuZCB1c2UgdGhlIFBUWiAoUGVuZGluZyBUYWJsZSBaZXJvKQo+
PiBiaXQgaW4gR0lDUl9QRU5EQkFTRVIsIGxldCB1cyBlbXVsYXRlIHRoZSBhcmNoaXRlY3R1cmUg
c3RyaWN0bHkuCj4+IEFzIHBlciBJSEkgMDA2OUUgOS4xMS4zMCwgUFRaIGZpZWxkIGlzIFdPLCBh
bmQgcmVhZHMgYXMgMC4KPj4KPj4gU2lnbmVkLW9mZi1ieTogWmVuZ2h1aSBZdSA8eXV6ZW5naHVp
QGh1YXdlaS5jb20+Cj4+IC0tLQo+Pgo+PiBOb3RpY2VkIHdoZW4gY2hlY2tpbmcgYWxsIGZpZWxk
cyBvZiBHSUNSX1BFTkRCQVNFUiByZWdpc3Rlci4KPj4gQnV0IF9ub3RfIHN1cmUgd2hldGhlciBp
dCdzIHdvcnRoIGEgZml4LCBhcyBMaW51eCBuZXZlciBzZXRzCj4+IHRoZSBQVFogYml0IGJlZm9y
ZSBlbmFibGluZyBMUEkgKHNldCBHSUNSX0NUTFJfRU5BQkxFX0xQSVMpLgo+Pgo+PiBBbmQgSSB3
b25kZXIgdW5kZXIgd2hpY2ggc2NlbmFyaW9zIGNhbiB0aGlzIGJpdCBiZSB3cml0dGVuIGFzIDEu
Cj4+IEl0IHNlZW1zIGRpZmZpY3VsdCBmb3Igc29mdHdhcmUgdG8gZGV0ZXJtaW5lIHdoZXRoZXIg
dGhlIHBlbmRpbmcKPj4gdGFibGUgY29udGFpbnMgYWxsIHplcm9zIHdoZW4gd3JpdGluZyB0aGlz
IGJpdC4KPiAKPiBUaGlzIGlzIGEgdXNlbGVzcyBIVyBvcHRpbWl6YXRpb24sIHdoZXJlIGl0IGNh
biBhdm9pZCByZWFkaW5nIHRoZQo+IHBlbmRpbmcgdGFibGUgdGhlIHZlcnkgZmlyc3QgdGltZSB5
b3Ugd3JpdGUgdG8gdGhpcyByZWdpc3RlciBpZgo+IGl0IGlzIHRvbGQgdGhhdCBpdCBpcyBhbGwg
emVyby4gQSBkZWNlbnQgSVRTIGltcGxlbWVudGF0aW9uCj4gYWxyZWFkeSBoYXMgYSBtZWNoYW5p
c20gdG8gZmluZCBvdXQgYWJvdXQgdGhlIHBlbmRpbmcgYml0cyBieQo+IGxvb2tpbmcgaW50byB0
aGUgSU1QREVGIGFyZWEgKHRoZSBmaXJzdCAxa0IpIG9mIHRoZSBwZW5kaW5nIHRhYmxlLgoKWWVh
aCwgQUZBSUNUIHRoaXMgaXMgd2hhdCBIaXNpbGljb24gaGFzIGFscmVhZHkgaW1wbGVtZW50ZWQg
dG9kYXkuCgo+IFBUWiBpcyBqdXN0IHlldCBhbm90aGVyIHdheSB0byBkbyB0aGUgc2FtZSB0aGlu
Zy4KPiAKPiBUaGlzIGNhbiBvbmx5IGhhcHBlbiBvbmNlIGluIHRoZSBsaWZldGltZSBvZiB0aGUg
c3lzdGVtICh3aGVuIGFsbG9jYXRpbmcKPiB0aGUgdGFibGUpLCBhbmQgTGludXggZG9lc24ndCBy
ZWFsbHkgY2FyZS4KCkkgbm93IGdldCBpdCwgdGhhbmtzIGZvciB0ZWFjaGluZyBtZSB0aGF0IQoK
PiBBcyB1c3VhbCwgdGhlIEdJQyBpcyBzZXR0aW5nCj4gdGhlIGxldmVsIG9mIHVzZWxlc3MgY29t
cGxleGl0eSBwcmV0dHkgaGlnaC4uLgo+IAo+Pgo+PiDCoHZpcnQva3ZtL2FybS92Z2ljL3ZnaWMt
bW1pby12My5jIHwgNSArKysrLQo+PiDCoDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkKPj4KPj4gZGlmZiAtLWdpdCBhL3ZpcnQva3ZtL2FybS92Z2ljL3ZnaWMt
bW1pby12My5jCj4+IGIvdmlydC9rdm0vYXJtL3ZnaWMvdmdpYy1tbWlvLXYzLmMKPj4gaW5kZXgg
N2RmZDE1ZGJiMzA4Li5lYmMyMTg4NDBmYzIgMTAwNjQ0Cj4+IC0tLSBhL3ZpcnQva3ZtL2FybS92
Z2ljL3ZnaWMtbW1pby12My5jCj4+ICsrKyBiL3ZpcnQva3ZtL2FybS92Z2ljL3ZnaWMtbW1pby12
My5jCj4+IEBAIC00MTQsOCArNDE0LDExIEBAIHN0YXRpYyB1bnNpZ25lZCBsb25nCj4+IHZnaWNf
bW1pb19yZWFkX3BlbmRiYXNlKHN0cnVjdCBrdm1fdmNwdSAqdmNwdSwKPj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZ3BhX3QgYWRkciwgdW5zaWdu
ZWQgaW50IGxlbikKPj4gwqB7Cj4+IMKgwqDCoMKgIHN0cnVjdCB2Z2ljX2NwdSAqdmdpY19jcHUg
PSAmdmNwdS0+YXJjaC52Z2ljX2NwdTsKPj4gK8KgwqDCoCB1NjQgdmFsdWUgPSB2Z2ljX2NwdS0+
cGVuZGJhc2VyOwo+Pgo+PiAtwqDCoMKgIHJldHVybiBleHRyYWN0X2J5dGVzKHZnaWNfY3B1LT5w
ZW5kYmFzZXIsIGFkZHIgJiA3LCBsZW4pOwo+PiArwqDCoMKgIHZhbHVlICY9IH5HSUNSX1BFTkRC
QVNFUl9QVFo7Cj4+ICsKPj4gK8KgwqDCoCByZXR1cm4gZXh0cmFjdF9ieXRlcyh2YWx1ZSwgYWRk
ciAmIDcsIGxlbik7Cj4+IMKgfQo+Pgo+PiDCoHN0YXRpYyB2b2lkIHZnaWNfbW1pb193cml0ZV9w
ZW5kYmFzZShzdHJ1Y3Qga3ZtX3ZjcHUgKnZjcHUsCj4gCj4gT3RoZXJ3aXNlIGxvb2tzIGdvb2Qu
IEknbGwgcXVldWUgaXQgd2l0aCBFcmljJ3MgY29ycmVjdGlvbgo+IHRvIHRoZSBzdWJqZWN0IGxp
bmUuCgpUaGFua3MgYm90aCBhbmQgTWVycnkgQ2hyaXN0bWFzIQoKWmVuZ2h1aQoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
