Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFED9765FA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 14:36:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VO3yrEsaJvymjvHj0P6j8okSOYFwi4UqkYXLthebw/k=; b=ONO/BIhwch+oZCXmJlB9mGMzs
	c9F3IX79H8M7ekPa6fmmCqfUEkiuwn8iDWE3P2JpV4l/pihOajJPhk2yWoiLD8bnbX+NKndCh7rgC
	GhYi1agO8Bap5es3btSu5A8/fzURQGOl9Rkae/ogZy6UHX64i/N/fqFJMEGVGQ41mtR5kwTpxHYI/
	AufnfMWj5RyqDOLh/Djpss5a6f/OPWRUq/x4qM9y/Ein1y9eBlbbQrk3Qv1R7TddPpyoENUtgKBTA
	z7sqw7VYVjbcevseEswR8PZON1KOoxPNIs+QqsV6z0veFFzkpCB9tdNu5YF6jaoKhdVD7+3KrAT/o
	Wd7nzjNIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqzS2-0007wa-D1; Fri, 26 Jul 2019 12:35:58 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqzRo-0007vJ-2I
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 12:35:45 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 0119DAA1901A5B2FF040;
 Fri, 26 Jul 2019 20:35:36 +0800 (CST)
Received: from [127.0.0.1] (10.177.19.122) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.439.0; Fri, 26 Jul 2019
 20:35:30 +0800
Subject: Re: [PATCH 1/3] KVM: arm/arm64: vgic-its: Introduce multiple LPI
 translation caches
To: Marc Zyngier <marc.zyngier@arm.com>
References: <20190724090437.49952-1-xiexiangyou@huawei.com>
 <20190724090437.49952-2-xiexiangyou@huawei.com>
 <a8b74b25-8c92-4aad-f94d-8371126798ef@arm.com>
From: Xiangyou Xie <xiexiangyou@huawei.com>
Message-ID: <c0f441b5-2ba2-0482-6736-eb7835a24f0a@huawei.com>
Date: Fri, 26 Jul 2019 20:35:20 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <a8b74b25-8c92-4aad-f94d-8371126798ef@arm.com>
Content-Language: en-US
X-Originating-IP: [10.177.19.122]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_053544_273962_F28A7AE8 
X-CRM114-Status: GOOD (  15.50  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
Cc: kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 kvm@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyYywKClNvcnJ5LCB0aGUgdGVzdCBkYXRhIHdhcyBub3QgcG9zdGVkIGluIHRoZSBwcmV2
aW91cyBlbWFpbC4KCkkgdGVzdGVkIHRoZSBpbXBhY3Qgb2YgdmlydHVhbCBpbnRlcnJ1cHQgaW5q
ZWN0aW9uIHRpbWUtY29uc3VtaW5n77yaClJ1biB0aGUgaXBlcmYgY29tbWFuZCB0byBzZW5kIFVE
UCBwYWNrZXRzIHRvIHRoZSBWTToKCWlwZXJmIC1jICRJUCAtdSAtYiA0MG0gLWwgNjQgLXQgNjAw
MCYKVGhlIHZtIGp1c3QgcmVjZWl2ZSBVRFAgdHJhZmZpYy4gV2hlbiBjb25maWd1cmUgbXVsdGlw
bGUgTklDcywgZWFjaCBOSUMgCnJlY2VpdmVzIHRoZSBhYm92ZSBpcGVyZiBVRFAgdHJhZmZpYywg
VGhpcyBtYXkgcmVmbGVjdCB0aGUgcGVyZm9ybWFuY2UgCmltcGFjdCBvZiBzaGFyZWQgcmVzb3Vy
Y2UgY29tcGV0aXRpb24sIHN1Y2ggYXMgbG9jay4KCk9ic2VydmluZyB0aGUgZGVsYXkgb2Ygdmly
dHVhbCBpbnRlcnJ1cHQgaW5qZWN0aW9uOiB0aGUgdGltZSBzcGVudCBieSAKdGhlICJpcnFmZF93
YWtldXAiLCAiaXJxZmRfaW5qZWN0IiBmdW5jdGlvbiwgYW5kIGt3b3JrZXIgY29udGV4dCBzd2l0
Y2guClRoZSBsZXNzIHRoZSBiZXR0ZXIuCgpJVFMgdHJhbnNsYXRpb24gY2FjaGUgZ3JlYXRseSBy
ZWR1Y2VzIHRoZSBkZWxheSBvZiBpbnRlcnJ1cHQgaW5qZWN0aW9uIApjb21wYXJlZCB0byBrd29y
a2VyIHRocmVhZCwgYmVjYXVzZSBpdCBlbGltaW5hdGUgd2FrZXVwIGFuZCB1bmNlcnRhaW4gCnNj
aGVkdWxpbmcgZGVsYXk6CiAgICAgICAgICAgICAgICAgICBrd29ya2VyICAgICAgICAgICAgICBJ
VFMgdHJhbnNsYXRpb24gY2FjaGUgICAgaW1wcm92ZWQKICAgMSBOSUMgICAgICAgICAgIDYuNjky
IHVzICAgICAgICAgICAgICAgICAxLjc2NiB1cyAgICAgICAgICAgICAgIDczLjYlIAoKICAxMCBO
SUNzICAgICAgICAgIDcuNTM2IHVzICAgICAgICAgICAgICAgICAyLjU3NCB1cyAgICAgICAgICAg
ICAgIDY1LjglIAoKCkluY3JlYXNlcyB0aGUgbnVtYmVyIG9mIGxwaV90cmFuc2xhdGlvbl9jYWNo
ZSByZWR1Y2UgbG9jayBjb21wZXRpdGlvbi4KTXVsdGktaW50ZXJydXB0IGNvbmN1cnJlbnQgaW5q
ZWN0aW9ucyBwZXJmb3JtIGJldHRlcjoKCiAgICAgICAgICAgICBJVFMgdHJhbnNsYXRpb24gY2Fj
aGUgICAgICB3aXRoIHBhdGNoICAgICAgICAgICAgIGltcHJvdmVkCiAgICAxIE5JQyAgICAgICAg
MS43NjYgdXMgICAgICAgICAgICAgICAgIDEuNjk0IHVzICAgICAgICAgICAgICAgIDQuMSUKICAx
MCBOSUNzICAgICAgICAyLjU3NCB1cyAgICAgICAgICAgICAgICAgMS44NDggdXMgICAgICAgICAg
ICAgICAyOC4yJQoKUmVnYXJkcywKClhpYW5neW91CgpPbiAyMDE5LzcvMjQgMTk6MDksIE1hcmMg
WnluZ2llciB3cm90ZToKPiBIaSBYaWFuZ3lvdSwKPiAKPiBPbiAyNC8wNy8yMDE5IDEwOjA0LCBY
aWFuZ3lvdSBYaWUgd3JvdGU6Cj4+IEJlY2F1c2UgZGlzdC0+bHBpX2xpc3RfbG9jayBpcyBhIHBl
clZNIGxvY2ssIHdoZW4gYSB2aXJ0dWFsIG1hY2hpbmUKPj4gaXMgY29uZmlndXJlZCB3aXRoIG11
bHRpcGxlIHZpcnR1YWwgTklDIGRldmljZXMgYW5kIHJlY2VpdmVzCj4+IG5ldHdvcmsgcGFja2V0
cyBhdCB0aGUgc2FtZSB0aW1lLCBkaXN0LT5scGlfbGlzdF9sb2NrIHdpbGwgYmVjb21lCj4+IGEg
cGVyZm9ybWFuY2UgYm90dGxlbmVjay4KPiAKPiBJJ20gc29ycnksIGJ1dCB5b3UnbGwgaGF2ZSB0
byBzaG93IG1lIHNvbWUgcmVhbCBudW1iZXJzIGJlZm9yZSBJCj4gY29uc2lkZXIgYW55IG9mIHRo
aXMuIFRoZXJlIGlzIGEgcmVhc29uIHdoeSB0aGUgb3JpZ2luYWwgc2VyaWVzIHN0aWxsCj4gaXNu
J3QgaW4gbWFpbmxpbmUsIGFuZCB0aGF0J3MgYmVjYXVzZSBwZW9wbGUgZG9uJ3QgcG9zdCBhbnkg
bnVtYmVycy4KPiBBZGRpbmcgbW9yZSBwYXRjaGVzIGlzIG5vdCBnb2luZyB0byBjaGFuZ2UgdGhh
dCBzbWFsbCBmYWN0Lgo+IAo+PiBUaGlzIHBhdGNoIGluY3JlYXNlcyB0aGUgbnVtYmVyIG9mIGxw
aV90cmFuc2xhdGlvbl9jYWNoZSB0byBlaWdodCwKPj4gaGFzaGVzIHRoZSBjcHVpZCB0aGF0IGV4
ZWN1dGVzIGlycWZkX3dha2V1cCwgYW5kIGNob29zZXMgd2hpY2gKPj4gbHBpX3RyYW5zbGF0aW9u
X2NhY2hlIHRvIHVzZS4KPiAKPiBTbyB5b3UndmUgbm93IHN3aXRjaGVkIHRvIGEgcGVyLWNhY2hl
IGxvY2ssIG1lYW5pbmcgdGhhdCB0aGUgcmVzdCBvZiB0aGUKPiBJVFMgY29kZSBjYW4gbWFuaXB1
bGF0ZSB0aGUgdGhlIGxwaV9saXN0IHdpdGhvdXQgc3luY2hyb25pemF0aW9uIHdpdGgKPiB0aGUg
Y2FjaGVzLiBIYXZlIHlvdSB3b3JrZWQgb3V0IGFsbCB0aGUgcG9zc2libGUgcmFjZXM/IEFsc28s
IGhvdyBkb2VzCj4gdGhpcyBuZXcgbG9jayBjbGFzcyBmaXRzIGluIHRoZSB3aG9sZSBsb2NraW5n
IGhpZXJhcmNoeT8KPiAKPiBJZiB5b3Ugd2FudCBzb21ldGhpbmcgdGhhdCBpcyBhY3R1YWxseSBz
Y2FsYWJsZSwgZG8gaXQgdGhlIHJpZ2h0IHdheS4KPiBVc2UgYSBiZXR0ZXIgZGF0YSBzdHJ1Y3R1
cmUgdGhhbiBhIGxpc3QsIHN3aXRjaCB0byB1c2luZyBSQ1UgcmF0aGVyIHRoYW4KPiB0aGUgY3Vy
cmVudCBsb2NraW5nIHN0cmF0ZWd5LiBCdXQgeW91ciBjdXJyZW50IGFwcHJvYWNoIGxvb2tzIHF1
aXRlIGZyYWdpbGUuCj4gCj4gVGhhbmtzLAo+IAo+IAlNLgo+IAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
