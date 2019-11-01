Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCB27EC13E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 11:24:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=847KwxNKBkgShTkXZ/AbbqOlf0gdlkEyKHc20WtvWLM=; b=monKk0FyZOp+OaoM5sSKZylnq
	dl7GdtY4YEzTKPWYe3uPDVYOb4xUFNiSSpeLd0ls+g4pxt47RmeO8NtMiglTn0xEu9FGGEtps7Fwv
	t9BHp+8KMZAD6C3VGkw+fTTPlykg4/DqOEuiR4Ds0nxUCZP3b0/z4EKTDOWT65YbIl0MUsJmSEyo7
	Ff95Yyvuv4RYBiRzellsq0CHtVTbJNdzwHoRxsQ9zgmhJaGb7TstwCeMfAJf/mkZJagBVZgR8/6sH
	krDek8THCaZenCvIYi79KgO7vsMBXipXaOaYVYA5HSEv3PVmH3HHsb6im2IaL8CpkGwLGeOGA90fD
	En+9ftjjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQU6b-0007cb-Q5; Fri, 01 Nov 2019 10:24:34 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQU6T-0007bk-ER
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 10:24:27 +0000
Received: from LHREML710-CAH.china.huawei.com (unknown [172.18.7.107])
 by Forcepoint Email with ESMTP id 6810EAFD288CD262B9FE;
 Fri,  1 Nov 2019 10:24:18 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 LHREML710-CAH.china.huawei.com (10.201.108.33) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 1 Nov 2019 10:24:18 +0000
Received: from [127.0.0.1] (10.202.226.45) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Fri, 1 Nov 2019
 10:24:17 +0000
Subject: Re: [GIT PULL] Hisilicon driver updates for v5.5
To: Wei Xu <xuwei5@hisilicon.com>, <soc@kernel.org>, "arm@kernel.org"
 <arm@kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Olof Johansson <olof@lixom.net>,
 "Arnd Bergmann" <arnd@arndb.de>
References: <5DB95DC1.50900@hisilicon.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <ea33f9cb-a2a9-0724-5893-4175256f9dac@huawei.com>
Date: Fri, 1 Nov 2019 10:24:16 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <5DB95DC1.50900@hisilicon.com>
Content-Language: en-US
X-Originating-IP: [10.202.226.45]
X-ClientProxiedBy: lhreml716-chm.china.huawei.com (10.201.108.67) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_032425_633721_CB629DEF 
X-CRM114-Status: GOOD (  21.34  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
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
Cc: Salil Mehta <salil.mehta@huawei.com>, jinying@hisilicon.com,
 Tangkunshan <tangkunshan@huawei.com>, Linuxarm <linuxarm@huawei.com>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 huangdaode <huangdaode@hisilicon.com>, "xuwei \(O\)" <xuwei5@huawei.com>,
 Jonathan Cameron <jonathan.cameron@huawei.com>,
 "Liguozhu \(Kenneth\)" <liguozhu@hisilicon.com>, Zhangyi
 ac <zhangyi.ac@huawei.com>, Shiju Jose <shiju.jose@huawei.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMzAvMTAvMjAxOSAwOTo1NCwgV2VpIFh1IHdyb3RlOgo+IEhpIEFSTS1Tb0MgdGVhbSwKPiAK
PiBQbGVhc2UgY29uc2lkZXIgdG8gcHVsbCB0aGUgZm9sbG93aW5nIGNoYW5nZXMuCj4gVGhhbmtz
IQo+IAo+IEJlc3QgUmVnYXJkcywKPiBXZWkKPiAKPiAtLS0KPiBUaGUgZm9sbG93aW5nIGNoYW5n
ZXMgc2luY2UgY29tbWl0IAo+IDU0ZWNiOGY3MDI4YzVlYjNkNzQwYmI4MmIwZjFkOTBmMmRmNjNj
NWM6Cj4gCj4gIMKgIExpbnV4IDUuNC1yYzEgKDIwMTktMDktMzAgMTA6MzU6NDAgLTA3MDApCj4g
Cj4gYXJlIGF2YWlsYWJsZSBpbiB0aGUgR2l0IHJlcG9zaXRvcnkgYXQ6Cj4gCj4gIMKgIGdpdDov
L2dpdGh1Yi5jb20vaGlzaWxpY29uL2xpbnV4LWhpc2kuZ2l0IHRhZ3MvaGlzaS1kcml2ZXJzLWZv
ci01LjUKPiAKPiBmb3IgeW91IHRvIGZldGNoIGNoYW5nZXMgdXAgdG8gZTk1NDFiMzcyYjIyOWY2
YmFiZDkzYWZjYzYyM2U1NDI4YjQwMjZhMzoKPiAKPiAgwqAgbG9naWNfcGlvOiBCdWlsZCBpbnRv
IGEgbGlicmFyeSAoMjAxOS0xMC0yOCAyMDo0NjowNSArMDgwMCkKPiAKPiAtLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gQVJN
NjQ6IGhpc2k6IFNvQyBkcml2ZXIgdXBkYXRlcyBmb3IgNS41Cj4gCj4gLSBjaGVjayB0aGUgTE9H
SUNfUElPX0lORElSRUNUIHJlZ2lvbiBvcHMgYXQgcmVnaXN0cmF0aW9uIGluc3RlYWQgb2YKPiAg
wqAgaW4gdGhlIElPIHBvcnQgYWNjZXNzb3JzIHRvIG9wdGltaXNlIHRoZSBsaWIvbGlnaWNfcGlv
LmMKPiAKPiAtIGFkZCB0aGUgaGlzaSBMUEMgZHJpdmVyIHRvIHRoZSBidWlsZCB0ZXN0IGZvciB0
aGUgb3RoZXIgYXJjaGl0ZWN0dXJlcwo+ICDCoCBieSB1cGRhdGluZyB0aGUgaGlzaSBMUEMgS2Nv
bmZpZyBhbmQgYWRkaW5nIGEgZHVtbXkgUElPX0lORElSRUNUX1NJWkUKPiAKPiAtIGNsZWFuIHRo
ZSBzcGFyc2UgY29tcGxhaW5zIG9mIHRoZSBoaXNpIExQQyBkcml2ZXIKPiAKPiAtIGJ1aWxkIGxv
Z2ljX3BpbyBpbnRvIGEgbGliIHRvIGF2b2lkIGluY2x1ZGluZyBpbiB0aGUgdm1saW51eCB3aGVu
IG5vdAo+ICDCoCByZWZlcmVuY2VkCj4gCj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+IEpvaG4gR2FycnkgKDUpOgo+ICDC
oMKgwqDCoMKgIGxpYjogbG9naWNfcGlvOiBFbmZvcmNlIExPR0lDX1BJT19JTkRJUkVDVCByZWdp
b24gb3BzIGFyZSBzZXQgYXQgCj4gcmVnaXN0cmF0aW9uCj4gIMKgwqDCoMKgwqAgbG9naWNfcGlv
OiBEZWZpbmUgUElPX0lORElSRUNUX1NJWkUgZm9yICFDT05GSUdfSU5ESVJFQ1RfUElPCj4gIMKg
wqDCoMKgwqAgYnVzOiBoaXNpX2xwYzogQ2xlYW4gc29tZSB0eXBlcwo+ICDCoMKgwqDCoMKgIGJ1
czogaGlzaV9scGM6IEV4cGFuZCBidWlsZCB0ZXN0IGNvdmVyYWdlCgpIaSB4dXdlaSwKCmtidWls
ZCBib3QgaXMgcmVwb3J0aW5nIGEgYnVpbGQgZmFpbHVyZSBmb3IgdGhpcyBwYXRjaDoKCiAgICAg
ICAgIEdDQ19WRVJTSU9OPTcuNC4wIG1ha2UuY3Jvc3MgQVJDSD1wYXJpc2MKCklmIHlvdSBmaXgg
dGhlIGlzc3VlLCBraW5kbHkgYWRkIGZvbGxvd2luZyB0YWcKUmVwb3J0ZWQtYnk6IGtidWlsZCB0
ZXN0IHJvYm90IDxsa3BAaW50ZWwuY29tPgoKQWxsIGVycm9ycyAobmV3IG9uZXMgcHJlZml4ZWQg
YnkgPj4pOgoKICAgIGRyaXZlcnMvL2J1cy9oaXNpX2xwYy5jOiBJbiBmdW5jdGlvbiAnaGlzaV9s
cGNfdGFyZ2V0X2luJzoKID4+IGRyaXZlcnMvL2J1cy9oaXNpX2xwYy5jOjEzNzoyOiBlcnJvcjog
aW1wbGljaXQgZGVjbGFyYXRpb24gb2YgCmZ1bmN0aW9uICdyZWFkc2InOyBkaWQgeW91IG1lYW4g
J3JlYWRiJz8gClstV2Vycm9yPWltcGxpY2l0LWZ1bmN0aW9uLWRlY2xhcmF0aW9uXQogICAgICBy
ZWFkc2IobHBjZGV2LT5tZW1iYXNlICsgTFBDX1JFR19SREFUQSwgYnVmLCBvcGNudCk7CiAgICAg
IF5+fn5+fgogICAgICByZWFkYgogICAgZHJpdmVycy8vYnVzL2hpc2lfbHBjLmM6IEluIGZ1bmN0
aW9uICdoaXNpX2xwY190YXJnZXRfb3V0JzoKID4+IGRyaXZlcnMvL2J1cy9oaXNpX2xwYy5jOjE4
MDoyOiBlcnJvcjogaW1wbGljaXQgZGVjbGFyYXRpb24gb2YgCmZ1bmN0aW9uICd3cml0ZXNiJzsg
ZGlkIHlvdSBtZWFuICd3cml0ZWInPyAKWy1XZXJyb3I9aW1wbGljaXQtZnVuY3Rpb24tZGVjbGFy
YXRpb25dCiAgICAgIHdyaXRlc2IobHBjZGV2LT5tZW1iYXNlICsgTFBDX1JFR19XREFUQSwgYnVm
LCBvcGNudCk7CiAgICAgIF5+fn5+fn4KICAgICAgd3JpdGViCiAgICBjYzE6IHNvbWUgd2Fybmlu
Z3MgYmVpbmcgdHJlYXRlZCBhcyBlcnJvcnMKCnZpbSArMTM3IGRyaXZlcnMvL2J1cy9oaXNpX2xw
Yy5jCgpJdCBzZWVtcyB0aGF0IHBhcmlzYyBoYXMgbm8gZGVmaW5pdGlvbiBmb3Ige3JlYWQvd3Jp
dGV9c2IoKS4KCkkgYXVkaXRlZCBpby5oIGZvciBhbGwgYXJjaGl0ZWN0dXJlcywgYW5kIGl0IHNl
ZW1zIHRoYXQgMyBpbiB0b3RhbCB3b3VsZCAKbm90IGRlZmluZSB7cmVhZC93cml0ZX1zYigpOiBo
ZXhhZ29uLCBwYXJpc2MsIGFscGhhCgpTbyB0aGVzZSBkb24ndCBpbmNsdWRlIGFzbS1nZW5lcmlj
L2lvLmggYW5kIGRvIG5vdCBkZWZpbmUgdGhlaXIgb3duIAp2ZXJzaW9uIG9mIHJlYWQvd3JpdGVz
YigpLiBJJ20gdGhpbmtpbmcgdGhhdCB0aGV5IHNob3VsZCBkby4KClF1aXRlIGZydXN0cmF0aW5n
LgoKSSBndWVzcyB0aGF0IHRoaXMgbm93IGNhbid0IGJlIHBpY2tlZCB1cCBub3cuCgpUbyBmaXgs
IEkgc3VwcG9zZSB0aGF0IEkgbmVlZCBub3QgZXhwYW5kIHRlc3QgY292ZXJhZ2UgdG8gdGhlc2Ug
YXJjaHMgCmZvciBub3csIGFuZCB0aGVuIGFsc28gYWRkIHtyZWFkL3dyaXRlfXNiKCkgZGVmaW5p
dGlvbnMgZm9yIHRoZXNlIGFyY2hzLiAKT3IgdGhleSBjYW4gaW5jbHVkZSBhc20tZ2VuZXJpYy5o
LCBidXQgdGhpcyBtYXkgY3JlYXRlIG1vcmUgcHJvYmxlbXMuCgpBcm5kLCBBbnkgb3BpbmlvbiBv
biB0aGlzPwoKVGhhbmtzLApKb2huCgo+ICDCoMKgwqDCoMKgIGxvZ2ljX3BpbzogQnVpbGQgaW50
byBhIGxpYnJhcnkKPiAKPiAgwqBkcml2ZXJzL2J1cy9LY29uZmlnwqDCoMKgwqDCoMKgIHzCoCA0
ICsrLS0KPiAgwqBkcml2ZXJzL2J1cy9oaXNpX2xwYy5jwqDCoMKgIHzCoCA5ICsrKystLS0tLQo+
ICDCoGluY2x1ZGUvbGludXgvbG9naWNfcGlvLmggfMKgIDQgKystLQo+ICDCoGxpYi9NYWtlZmls
ZcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCAyICstCj4gIMKgbGliL2xvZ2ljX3Bpby5j
wqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAxNCArKysrKysrKy0tLS0tLQo+ICDCoDUgZmlsZXMgY2hh
bmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwgMTYgZGVsZXRpb25zKC0pCj4gCj4gCj4gCj4gLgoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
