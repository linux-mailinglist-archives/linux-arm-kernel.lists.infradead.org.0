Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA8410FCE0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 12:51:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2fl2slYkWHiSlZpS3POKmjbrW+7zQGYoGZJNopcilFg=; b=mA9db05UVDgJTGLErBCcha/1f
	VB+fd2+KTtzseDRaABKQlS0Bjo2m6t6mJS/X4Sx3q3W6vaZJrKdB84ZKWegQ9uFZ3hNbdcf6i2BfH
	VQvR1d74WeIgvsSNHA61DElzYnNiSEpb9KyRTJvXkC7H0eyImaadLZnGTPW+Hi46qe0lYb7Dp+zJT
	23vM1paOl7ayoCwtByU4Iep/IEUEc5zi5RpadwEqtLiflcG29UXIOU53KwnnRZ3ts3ASQKSMEMtZn
	Y+4R+H6OL7vh8DecZLTGA4VpynTQOYerRFIfDWUqD+YeUUzBMXKZMygHYttxRQ5B+5IjUDE/F+Ysv
	siJQJ5DhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic6iB-0004hg-4u; Tue, 03 Dec 2019 11:51:23 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic6i0-0004gq-AV
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 11:51:15 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1ic6hv-0004Si-8u; Tue, 03 Dec 2019 12:51:07 +0100
To: Xiaowei Bao <xiaowei.bao@nxp.com>
Subject: RE: [PATCH] PCI: layerscape: Add the SRIOV support in host side
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Tue, 03 Dec 2019 11:51:07 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <AM5PR04MB3299A5A504DEFEF3E137A27CF5420@AM5PR04MB3299.eurprd04.prod.outlook.com>
References: <20191202104506.27916-1-xiaowei.bao@nxp.com>
 <606a00a2edcf077aa868319e0daa4dbc@www.loen.fr>
 <AM5PR04MB3299A5A504DEFEF3E137A27CF5420@AM5PR04MB3299.eurprd04.prod.outlook.com>
Message-ID: <3dcdf44eb76390730658e3f4d932620c@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: xiaowei.bao@nxp.com, robh+dt@kernel.org,
 frowand.list@gmail.com, minghuan.lian@nxp.com, mingkai.hu@nxp.com,
 roy.zang@nxp.com, lorenzo.pieralisi@arm.com, andrew.murray@arm.com,
 bhelgaas@google.com, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 zhiqiang.hou@nxp.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_035112_507127_641EFF39 
X-CRM114-Status: GOOD (  19.86  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Roy Zang <roy.zang@nxp.com>, lorenzo.pieralisi@arm.com,
 devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 "Z.q. Hou" <zhiqiang.hou@nxp.com>, linux-kernel@vger.kernel.org,
 "M.h. Lian" <minghuan.lian@nxp.com>, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, bhelgaas@google.com,
 andrew.murray@arm.com, frowand.list@gmail.com, Mingkai Hu <mingkai.hu@nxp.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAxOS0xMi0wMyAwMTo0MiwgWGlhb3dlaSBCYW8gd3JvdGU6Cj4+IC0tLS0tT3JpZ2luYWwg
TWVzc2FnZS0tLS0tCj4+IEZyb206IE1hcmMgWnluZ2llciA8bWF6QG1pc3RlcmpvbmVzLm9yZz4K
Pj4gU2VudDogMjAxOeW5tDEy5pyIMuaXpSAyMDo0OAo+PiBUbzogWGlhb3dlaSBCYW8gPHhpYW93
ZWkuYmFvQG54cC5jb20+Cj4+IENjOiByb2JoK2R0QGtlcm5lbC5vcmc7IGZyb3dhbmQubGlzdEBn
bWFpbC5jb207IE0uaC4gTGlhbgo+PiA8bWluZ2h1YW4ubGlhbkBueHAuY29tPjsgTWluZ2thaSBI
dSA8bWluZ2thaS5odUBueHAuY29tPjsgUm95IFphbmcKPj4gPHJveS56YW5nQG54cC5jb20+OyBs
b3JlbnpvLnBpZXJhbGlzaUBhcm0uY29tOyAKPj4gYW5kcmV3Lm11cnJheUBhcm0uY29tOwo+PiBi
aGVsZ2Fhc0Bnb29nbGUuY29tOyBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsKPj4gbGludXgt
a2VybmVsQHZnZXIua2VybmVsLm9yZzsgbGludXgtcGNpQHZnZXIua2VybmVsLm9yZzsKPj4gbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOyBaLnEuIEhvdSAKPj4gPHpoaXFpYW5n
LmhvdUBueHAuY29tPgo+PiBTdWJqZWN0OiBSZTogW1BBVENIXSBQQ0k6IGxheWVyc2NhcGU6IEFk
ZCB0aGUgU1JJT1Ygc3VwcG9ydCBpbiBob3N0IAo+PiBzaWRlCj4+Cj4+IE9uIDIwMTktMTItMDIg
MTA6NDUsIFhpYW93ZWkgQmFvIHdyb3RlOgo+PiA+IEdJQyBnZXQgdGhlIG1hcCByZWxhdGlvbnMg
b2YgZGV2aWQgYW5kIHN0cmVhbSBpZCBmcm9tIHRoZSBtc2ktbWFwCj4+ID4gcHJvcGVydHkgb2Yg
RFRTLCBvdXIgcGxhdGZvcm0gYWRkIHRoaXMgcHJvcGVydHkgaW4gdS1ib290IGJhc2Ugb24gCj4+
IHRoZQo+PiA+IFBDSWUgZGV2aWNlIGluIHRoZSBidXMsIGJ1dCBpZiBlbmFibGUgdGhlIHZmIGRl
dmljZSBpbiBrZXJuZWwsIHRoZSAKPj4gdmYKPj4gPiBkZXZpY2UgbXNpLW1hcCB3aWxsIG5vdCBz
ZXQsIHNvIHRoZSB2ZiBkZXZpY2UgY2FuJ3Qgd29yaywgdGhpcyAKPj4gcGF0Y2gKPj4gPiBwdXJw
b3NlIGlzIHRoYXQgbWFuYWdlIHRoZSBzdHJlYW0gaWQgYW5kIGRldmljZSBpZCBtYXAgcmVsYXRp
b25zCj4+ID4gZHluYW1pY2FsbHkgaW4ga2VybmVsLCBhbmQgbWFrZSB0aGUgbmV3IFBDSWUgZGV2
aWNlIHdvcmsgaW4gCj4+IGtlcm5lbC4KPj4gPgo+PiA+IFNpZ25lZC1vZmYtYnk6IFhpYW93ZWkg
QmFvIDx4aWFvd2VpLmJhb0BueHAuY29tPgo+PiA+IC0tLQo+PiA+ICBkcml2ZXJzL29mL2lycS5j
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDkgKysrCj4+ID4gIGRyaXZlcnMvcGNpL2Nv
bnRyb2xsZXIvZHdjL3BjaS1sYXllcnNjYXBlLmMgfCA5NAo+PiA+ICsrKysrKysrKysrKysrKysr
KysrKysrKysrKysrCj4+ID4gIGRyaXZlcnMvcGNpL3Byb2JlLmMgICAgICAgICAgICAgICAgICAg
ICAgICAgfCAgNiArKwo+PiA+ICBkcml2ZXJzL3BjaS9yZW1vdmUuYyAgICAgICAgICAgICAgICAg
ICAgICAgIHwgIDYgKysKPj4gPiAgNCBmaWxlcyBjaGFuZ2VkLCAxMTUgaW5zZXJ0aW9ucygrKQo+
PiA+Cj4+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvb2YvaXJxLmMgYi9kcml2ZXJzL29mL2lycS5j
IGluZGV4Cj4+ID4gYTI5NmVhZi4uNzkxZTYwOSAxMDA2NDQKPj4gPiAtLS0gYS9kcml2ZXJzL29m
L2lycS5jCj4+ID4gKysrIGIvZHJpdmVycy9vZi9pcnEuYwo+PiA+IEBAIC01NzYsNiArNTc2LDEx
IEBAIHZvaWQgX19pbml0IG9mX2lycV9pbml0KGNvbnN0IHN0cnVjdCAKPj4gb2ZfZGV2aWNlX2lk
Cj4+ID4gKm1hdGNoZXMpCj4+ID4gIAl9Cj4+ID4gIH0KPj4gPgo+PiA+ICt1MzIgX193ZWFrIGxz
X3BjaWVfc3RyZWFtaWRfZml4KHN0cnVjdCBkZXZpY2UgKmRldiwgdTMyIHJpZCkgewo+PiA+ICsJ
cmV0dXJuIHJpZDsKPj4gPiArfQo+PiA+ICsKPj4gPiAgc3RhdGljIHUzMiBfX29mX21zaV9tYXBf
cmlkKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IAo+PiBkZXZpY2Vfbm9kZQo+PiA+ICoqbnAs
Cj4+ID4gIAkJCSAgICB1MzIgcmlkX2luKQo+PiA+ICB7Cj4+ID4gQEAgLTU5MCw2ICs1OTUsMTAg
QEAgc3RhdGljIHUzMiBfX29mX21zaV9tYXBfcmlkKHN0cnVjdCBkZXZpY2UgCj4+ICpkZXYsCj4+
ID4gc3RydWN0IGRldmljZV9ub2RlICoqbnAsCj4+ID4gIAkJaWYgKCFvZl9tYXBfcmlkKHBhcmVu
dF9kZXYtPm9mX25vZGUsIHJpZF9pbiwgIm1zaS1tYXAiLAo+PiA+ICAJCQkJIm1zaS1tYXAtbWFz
ayIsIG5wLCAmcmlkX291dCkpCj4+ID4gIAkJCWJyZWFrOwo+PiA+ICsKPj4gPiArCWlmIChyaWRf
b3V0ID09IHJpZF9pbikKPj4gPiArCQlyaWRfb3V0ID0gbHNfcGNpZV9zdHJlYW1pZF9maXgocGFy
ZW50X2RldiwgcmlkX2luKTsKPj4KPj4gT3ZlciBteSBkZWFkIGJvZHkuIEdldCB5b3VyIGZpcm13
YXJlIHRvIHByb3Blcmx5IHByb2dyYW0gdGhlIExVVCBzbyAKPj4gdGhhdCBpdAo+PiBwcmVzZW50
cyB0aGUgSVRTIHdpdGggYSByZWFzb25hYmxlIHRvcG9sb2d5LiBUaGVyZSBpcyBhYnNvbHV0ZWx5
IG5vIAo+PiB3YXkgdGhpcwo+PiBraW5kIG9mIGNoYW5nZSBtYWtlcyBpdCBpbnRvIHRoZSBrZXJu
ZWwuCj4KPiBTb3JyeSBmb3IgdGhpcywgSSBrbm93IGl0IGlzIG5vdCByZWFzb25hYmxlLCBidXQg
SSBoYXZlIG5vIG90aGVyIHdheSwKPiBhcyBJIGtub3csIEFSTQo+IGdldCB0aGUgbWFwcGluZyBv
ZiBzdHJlYW0gSUQgdG8gcmVxdWVzdCBJRCBmcm9tIHRoZSBtc2ktbWFwIHByb3BlcnR5Cj4gb2Yg
RFRTLCBpZgo+IGFkZCBhIG5ldyBkZXZpY2Ugd2hpY2ggbmVlZCB0aGUgc3RyZWFtIElEIGFuZCB0
cnkgdG8gZ2V0IGl0IGZyb20gdGhlCj4gbXNpLW1hcCBvZiBEVFMsCj4gaXQgd2lsbCBmYWlsZWQg
YW5kIG5vdCB3b3JrLCB5ZXM/IFNvIGNvdWxkIHlvdSBnaXZlIG1lIGEgYmV0dGVyCj4gYWR2aWNl
IHRvIGZpeCB0aGlzIGlzc3VlLAo+IEkgd291bGQgcmVhbGx5IGFwcHJlY2lhdGUgYW55IGNvbW1l
bnRzIG9yIHN1Z2dlc3Rpb25zLCB0aGFua3MgYSBsb3QuCgpXaHkgY2FuJ3QgZmlybXdhcmUgZXhw
b3NlIGFuIG1zaS1tYXAvbXNpLW1hcC1tYXNrIHRoYXQgaGFzIGEgbGFyZ2UKZW5vdWdoIHJhbmdl
IHRvIGVuc3VyZSBtYXBwaW5nIG9mIFZGcz8gV2hhdCBhcmUgdGhlIGxpbWl0YXRpb25zIG9mCnRo
ZSBMVVQgdGhhdCB3b3VsZCBwcmV2ZW50IHRoaXMgZnJvbSBiZWluZyBjb25maWd1cmVkIGJlZm9y
ZSB0aGUKa2VybmVsIGJvb3RzPwoKVGhhbmtzLAoKICAgICAgICAgTS4KLS0gCkphenogaXMgbm90
IGRlYWQuIEl0IGp1c3Qgc21lbGxzIGZ1bm55Li4uCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
