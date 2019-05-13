Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90FC61B2E5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 11:32:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EtsehQNtb9YU//SsgXgW2rKTyP7RT4BoLpuWTU5DVeM=; b=gTzPQWNXavnxMg
	vyP4NNl9rVTFK+Uo9pwmaDpZTpunCsyXe+hAUdDrGsmgQTYgSWSYRuekhVkK5/t5902UwaIpfTliT
	+XY094rFFuY3aqe40JonpjkJ4VOi6j3jSA1pHVmQAXqbhhGx8X2upB/vGonhfK4hVKDsm4a4yA8dI
	qjr5SREQgrZaLqzQ+bczCLxctH3NABWJQUpvqXKikGMQTsK8LHqYjZ8NwA/Q6hupV94I3SQLvGdCF
	Cu9kpiXxeUD2H9uzWH8UTKzFNhrxPMGoVzNK9RYkIIcHtHKkoF8yr47tv0mYip57As+DUw/DWdiJo
	VMyqKVA5DmvoB/sFOLdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ7JT-0003bw-PW; Mon, 13 May 2019 09:32:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ7JM-0003ae-HJ
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 09:31:58 +0000
Received: from kresse.hi.pengutronix.de ([2001:67c:670:100:1d::2a])
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>)
 id 1hQ7J3-0007BB-G5; Mon, 13 May 2019 11:31:37 +0200
Message-ID: <1557739890.3997.1.camel@pengutronix.de>
Subject: Re: [PATCH v3 00/14] add ecspi ERR009165 for i.mx6/7 soc family
From: Lucas Stach <l.stach@pengutronix.de>
To: Robin Gong <yibin.gong@nxp.com>, "robh@kernel.org" <robh@kernel.org>, 
 "broonie@kernel.org" <broonie@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>,  "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,  "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "u.kleine-koenig@pengutronix.de"
 <u.kleine-koenig@pengutronix.de>, "plyatov@gmail.com" <plyatov@gmail.com>, 
 "vkoul@kernel.org" <vkoul@kernel.org>, "dan.j.williams@intel.com"
 <dan.j.williams@intel.com>,  "catalin.marinas@arm.com"
 <catalin.marinas@arm.com>, "will.deacon@arm.com" <will.deacon@arm.com>
Date: Mon, 13 May 2019 11:31:30 +0200
In-Reply-To: <1557249513-4903-1-git-send-email-yibin.gong@nxp.com>
References: <1557249513-4903-1-git-send-email-yibin.gong@nxp.com>
X-Mailer: Evolution 3.22.6-1+deb9u1 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::2a
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_023156_736869_6C31BFCB 
X-CRM114-Status: GOOD (  18.32  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUm9iaW4sCgpBbSBEaWVuc3RhZywgZGVuIDA3LjA1LjIwMTksIDA5OjE1ICswMDAwIHNjaHJp
ZWIgUm9iaW4gR29uZzoKPiDCoCBUaGVyZSBpcyBlY3NwaSBFUlIwMDkxNjUgb24gaS5teDYvNyBz
b2MgZmFtaWx5LCB3aGljaCBjYXVzZSBGSUZPCj4gdHJhbnNmZXIgdG8gYmUgc2VuZCB0d2ljZSBp
biBETUEgbW9kZS4gUGxlYXNlIGdldCBtb3JlIGluZm9ybWF0aW9uIGZyb206Cj4gaHR0cHM6Ly93
d3cubnhwLmNvbS9kb2NzL2VuL2VycmF0YS9JTVg2RFFDRS5wZGYuIFRoZSB3b3JrYXJvdW5kIGlz
IGFkZGluZwo+IG5ldyBzZG1hIHJhbSBzY3JpcHQgd2hpY2ggd29ya3MgaW4gWENIwqDCoG1vZGUg
YXMgUElPIGluc2lkZSBzZG1hIGluc3RlYWQKPiBvZiBTTUMgbW9kZSwgbWVhbndoaWxlLCAnVFhf
VEhSRVNIT0xEJyBzaG91bGQgYmUgMC4gVGhlIGlzc3VlIHNob3VsZCBiZQo+IGV4aXN0IG9uIGFs
bCBsZWdhY3kgaS5teDYvNyBzb2MgZmFtaWx5IGJlZm9yZSBpLm14NnVsLgo+IE5YUCBmaXggdGhp
cyBkZXNpZ24gaXNzdWUgZnJvbSBpLm14NnVsLCBzbyBuZXdlciBjaGlwcyBpbmNsdWRpbmcgaS5t
eDZ1bC8KPiA2dWxsLzZzbGwgZG8gbm90IG5lZWQgdGhpcyB3b3JrYXJvdWQgYW55bW9yZS4gQWxs
IG90aGVyIGkubXg2LzcvOCBjaGlwcwo+IHN0aWxsIG5lZWQgdGhpcyB3b3JrYXJvdWQuIFRoaXMg
cGF0Y2ggc2V0IGFkZCBuZXcgJ2ZzbCxpbXg2dWwtZWNzcGknCj4gZm9yIGVjc3BpIGRyaXZlciBh
bmQgJ2Vjc3BpX2ZpeGVkJyBpbiBzZG1hIGRyaXZlciB0byBjaG9vc2UgaWYgbmVlZCBlcnJhdGEK
PiBvciBub3QuCj4gwqAgVGhlIGZpcnN0IHR3byByZXZlcnRlZCBwYXRjaGVzIHNob3VsZCBiZSB0
aGUgc2FtZSBpc3N1ZSwgdGhvdWdoLCBpdAo+IHNlZW1zICdmaXhlZCcgYnkgY2hhbmdpbmcgdG8g
b3RoZXIgc2hwIHNjcmlwdC4gSG9wZSBTZWFuIG9yIFNhc2NoYSBjb3VsZAo+IGhhdmUgdGhlIGNo
YW5jZSB0byB0ZXN0IHRoaXMgcGF0Y2ggc2V0IGlmIGNvdWxkIGZpeCB0aGVpciBpc3N1ZXMuCj4g
wqAgQmVzaWRlcywgZW5hYmxlIHNkbWEgc3VwcG9ydCBmb3IgaS5teDhtbS84bXEgYW5kIGZpeCBl
Y3NwaTEgbm90IHdvcmsKPiBvbiBpLm14OG1tIGJlY2F1c2UgdGhlIGV2ZW50IGlkIGlzIHplcm8u
Cj4gCj4gUFM6Cj4gwqAgUGxlYXNlIGdldCBzZG1hIGZpcm13YXJlIGZyb20gYmVsb3cgbGludXgt
ZmlybXdhcmUgYW5kIGNvcHkgaXQgdG8geW91cgo+IGxvY2FsIHJvb3RmcyAvbGliL2Zpcm13YXJl
L2lteC9zZG1hLgo+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwv
Z2l0L2Zpcm13YXJlL2xpbnV4LWZpcm13YXJlLmdpdC90cmVlL2lteC9zZG1hCgpUaGlzIHNlcmll
cyBpcyB1bmZpdCBmb3IgbWVyZ2luZywgYXMgbG9uZyBhcyBpdCBkZXBlbmRzIG9uIGEgU0RNQSBS
QU0Kc2NyaXB0IHRoYXQgaXMga25vd24gdG8gYnJlYWsgc2VyaWFsIERNQS4gV2hlbiBjYW4gd2Ug
ZXhwZWN0IHRvIGdldCBhCmZpcm13YXJlIHZlcnNpb24gd2l0aCB0aGUgYnJva2VuIHNlcmlhbCBz
Y3JpcHQgcmVtb3ZlZCBvdXQgaW50byB0aGUKcHVibGljPwoKUmVnYXJkcywKTHVjYXMKCj4gdjI6
Cj4gwqAgMS4gYWRkIGNvbW1pdCBsb2cgZm9yIHJldmVydGVkIHBhdGNoZXMuCj4gwqAgMi4gYWRk
IGNvbW1lbnQgZm9yICdlY3NwaV9maXhlZCcgaW4gc2RtYSBkcml2ZXIuCj4gwqAgMy4gYWRkICdm
c2wsaW14NnNsbC1lY3NwaScgY29tcGF0aWJsZSBpbnN0ZWFkIG9mICdmc2wsaW14NnVsLWVjc3Bp
Jwo+IMKgwqDCoMKgwqByYXRoZXIgdGhhbiByZW1vdmUuCj4gdjM6Cj4gwqAgMS4gY29uZmlybSB3
aXRoIGRlc2lnbiB0ZWFtIG1ha2Ugc3VyZSBFUlIwMDkxNjUgZml4ZWQgb24gaS5teDZ1bC9pLm14
NnVsbAo+IMKgIC9pLm14NnNsbCwgbm90IGZpeGVkIG9uIGkubXg4bS84bW0gYW5kIG90aGVyIGku
bXg2LzcgbGVnYWN5IGNoaXBzLgo+IMKgIENvcnJlY3QgZHRzIHJlbGF0ZWQgZHRzIHBhdGNoIGlu
IHYyLgo+IMKgIDIuIGNsZWFuIGVyYXR0YSBpbmZvcm1hdGlvbiBpbiBiaW5kaW5nIGRvYyBhbmQg
bmV3ICd0eF9nbGl0Y2hfZml4ZWQnIGZsYWcKPiDCoCBpbiBzcGktaW14IGRyaXZlciB0byBzdGF0
ZSBFUlIwMDkxNjUgZml4ZWQgb3Igbm90Lgo+IMKgIDMuIEVubGFyZ2UgYnVyc3Qgc2l6ZSB0byBm
aWZvIHNpemUgZm9yIHR4IHNpbmNlIHR4X3dtbCBzZXQgdG8gMCBpbiB0aGUKPiDCoCBlcnJhdGEg
d29ya2Fyb3VkLCB0aHVzIGltcHJvdmUgcGVyZm9ybWFuY2UgYXMgcG9zc2libGUuCj4gCj4gUm9i
aW4gR29uZyAoMTQpOgo+IMKgIFJldmVydCAiQVJNOiBkdHM6IGlteDZxOiBVc2UgY29ycmVjdCBT
RE1BIHNjcmlwdCBmb3IgU1BJNSBjb3JlIgo+IMKgIFJldmVydCAiQVJNOiBkdHM6IGlteDY6IFVz
ZSBjb3JyZWN0IFNETUEgc2NyaXB0IGZvciBTUEkgY29yZXMiCj4gwqAgUmV2ZXJ0ICJkbWFlbmdp
bmU6IGlteC1zZG1hOiByZWZpbmUgdG8gbG9hZCBjb250ZXh0IG9ubHkgb25jZSIKPiDCoCBkbWFl
bmdpbmU6IGlteC1zZG1hOiByZW1vdmUgZHVwaWxpY2F0ZWQgc2RtYV9sb2FkX2NvbnRleHQKPiDC
oCBkbWFlbmdpbmU6IGlteC1zZG1hOiBhZGQgbWN1XzJfZWNzcGkgc2NyaXB0Cj4gwqAgc3BpOiBp
bXg6IGZpeCBFUlIwMDkxNjUKPiDCoCBzcGk6IGlteDogcmVtb3ZlIEVSUjAwOTE2NSB3b3JrYXJv
dW5kIG9uIGkubXg2dWwKPiDCoCBkdC1iaW5kaW5nczogc3BpOiBpbXg6IGFkZCBuZXcgaS5teDZ1
bCBjb21wYXRpYmxlIG5hbWUKPiDCoCBkbWFlbmdpbmU6IGlteC1zZG1hOiByZW1vdmUgRVJSMDA5
MTY1IG9uIGkubXg2dWwKPiDCoCBkdC1iaW5kaW5nczogZG1hOiBpbXgtc2RtYTogYWRkIGkubXg2
dWwvNnN4IGNvbXBhdGlibGUgbmFtZQo+IMKgIGRtYWVuZ2luZTogaW14LXNkbWE6IGZpeCBlY3Nw
aTEgcnggZG1hIG5vdCB3b3JrIG9uIGkubXg4bW0KPiDCoCBBUk06IGR0czogaW14NnVsOiBhZGQg
ZG1hIHN1cHBvcnQgb24gZWNzcGkKPiDCoCBBUk06IGR0czogaW14NnNsbDogY29ycmVjdCBzZG1h
IGNvbXBhdGlibGUKPiDCoCBhcm02NDogZGVmY29uZmlnOiBFbmFibGUgU0RNQSBvbiBpLm14OG1x
LzhtbQo+IAo+IMKgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvZG1hL2ZzbC1pbXgtc2RtYS50eHTC
oMKgwqDCoMKgwqDCoHzCoMKgMiArCj4gwqAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9zcGkvZnNs
LWlteC1jc3BpLnR4dMKgwqDCoMKgwqDCoMKgfMKgwqAxICsKPiDCoGFyY2gvYXJtL2Jvb3QvZHRz
L2lteDZxLmR0c2nCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
fMKgwqAyICstCj4gwqBhcmNoL2FybS9ib290L2R0cy9pbXg2cWRsLmR0c2nCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB8wqDCoDggKy0tCj4gwqBhcmNoL2FybS9ib290
L2R0cy9pbXg2c2xsLmR0c2nCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqB8wqDCoDIgKy0KPiDCoGFyY2gvYXJtL2Jvb3QvZHRzL2lteDZ1bC5kdHNpwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB8wqDCoDggKysrCj4gwqBhcmNoL2FybTY0
L2NvbmZpZ3MvZGVmY29uZmlnwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoHzCoMKgMyArCj4gwqBkcml2ZXJzL2RtYS9pbXgtc2RtYS5jwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHwgNzggKysrKysrKysr
KysrKysrKy0tLS0tLQo+IMKgZHJpdmVycy9zcGkvc3BpLWlteC5jwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgfCA2MSArKysrKysrKysr
KysrKy0tLQo+IMKgaW5jbHVkZS9saW51eC9wbGF0Zm9ybV9kYXRhL2RtYS1pbXgtc2RtYS5owqDC
oMKgwqDCoMKgwqDCoMKgfMKgwqAxICsKPiDCoDEwIGZpbGVzIGNoYW5nZWQsIDEzMiBpbnNlcnRp
b25zKCspLCAzNCBkZWxldGlvbnMoLSkKPiAKPiAtLcKgCj4gMi43LjQKPiAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
