Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2DA8DA839
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 11:24:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HiQdLne/RNdrd8Kiulp+S/UIsC497qhTL2p6Cga6HZk=; b=KUjL2nrsdnzbJB
	pGZ23QO7RRM7MXtsUo1oORBUrYmUqIYvwlSyivlkm0Fym3OLSDpQZKXBuwBP4hn5FgvVq26S7POa7
	0SQrJmuO/7htoqDqUkwnhS5HSdW6ckuPtRHKFyF15KOePG5L+wk1UQoitmuD1yALLWNttlydjScto
	PWK93SuayEEiqTh63Xnv351NAtDsq+rN896eG8u5sfGmwh5Sit3qs6NBH/YrKBaPn5VrosWBXmijV
	+tjyl0m8jGPdEsF0olixD8+CZB1w5Uc/RqsS31epXpiJjZtroHqV3zrwE67mqIdAvCho34zcAPp5V
	n+FKKnI/gMhXuLTGDW7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL21D-0000Ag-5Y; Thu, 17 Oct 2019 09:24:27 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL213-00009l-KU
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 09:24:19 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 2190D78F2197008800FB;
 Thu, 17 Oct 2019 17:24:10 +0800 (CST)
Received: from [127.0.0.1] (10.133.213.239) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.439.0;
 Thu, 17 Oct 2019 17:24:03 +0800
Subject: =?UTF-8?B?UmU6IOetlOWkjTogW1BBVENIXSB1c2UgZGV2bV9wbGF0Zm9ybV9pb3Jl?=
 =?UTF-8?Q?map=5fresource=28=29_for_irqchip_drivers?=
To: huangdaode <huangdaode@hisilicon.com>, Marc Zyngier <maz@kernel.org>
References: <1571296423-208359-1-git-send-email-huangdaode@hisilicon.com>
 <9bbcce19c777583815c92ce3c2ff2586@www.loen.fr>
 <E20AE017F0DBA04DA661272787510F9813D297B0@DGGEMM527-MBX.china.huawei.com>
From: Yuehaibing <yuehaibing@huawei.com>
Message-ID: <3a98da01-4f69-2624-e49f-5e2316c433e0@huawei.com>
Date: Thu, 17 Oct 2019 17:24:01 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <E20AE017F0DBA04DA661272787510F9813D297B0@DGGEMM527-MBX.china.huawei.com>
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_022417_830782_106E7D44 
X-CRM114-Status: GOOD (  15.19  )
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
Cc: "nm@ti.com" <nm@ti.com>, "andrew@lunn.ch" <andrew@lunn.ch>,
 "jason@lakedaemon.net" <jason@lakedaemon.net>,
 "gregory.clement@bootlin.com" <gregory.clement@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "t-kristo@ti.com" <t-kristo@ti.com>,
 "alexandre.torgue@st.com" <alexandre.torgue@st.com>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "ssantosh@kernel.org" <ssantosh@kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "sebastian.hesselbarth@gmail.com" <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAxOS8xMC8xNyAxNzoyMCwgaHVhbmdkYW9kZSB3cm90ZToKPiBIaSBNYXJjCj4gSSBhbSBq
dXN0IGRvaW5nIHRoZSBjb2NjaWNoZWNrIHVzaW5nIHRoZSBjb21tYW5kICJtYWtlIGNvY2NpY2hl
Y2sgTT1kcml2ZXJzL2lycWNoaXAvIiwgYW5kIGl0IHJlcG9ydCAKPiAkIG1ha2UgY29jY2ljaGVj
ayBNPWRyaXZlcnMvaXJxY2hpcC8KPiAuLi4uLi4uCj4gZHJpdmVycy9pcnFjaGlwLy9pcnEtbXZl
YnUtaWN1LmM6MzYxOjEtMTA6IFdBUk5JTkc6IFVzZSBkZXZtX3BsYXRmb3JtX2lvcmVtYXBfcmVz
b3VyY2UgZm9yIGljdSAtPiBiYXNlCj4gZHJpdmVycy9pcnFjaGlwLy9pcnEtdHM0ODAwLmM6MTA1
OjEtMTE6IFdBUk5JTkc6IFVzZSBkZXZtX3BsYXRmb3JtX2lvcmVtYXBfcmVzb3VyY2UgZm9yIGRh
dGEgLT4gYmFzZQo+IGRyaXZlcnMvaXJxY2hpcC8vaXJxLW12ZWJ1LXBpYy5jOjEzNDoxLTEwOiBX
QVJOSU5HOiBVc2UgZGV2bV9wbGF0Zm9ybV9pb3JlbWFwX3Jlc291cmNlIGZvciBwaWMgLT4gYmFz
ZQo+IGRyaXZlcnMvaXJxY2hpcC8vaXJxLXRpLXNjaS1pbnRhLmM6NTcxOjEtMTE6IFdBUk5JTkc6
IFVzZSBkZXZtX3BsYXRmb3JtX2lvcmVtYXBfcmVzb3VyY2UgZm9yIGludGEgLT4gYmFzZQo+IGRy
aXZlcnMvaXJxY2hpcC8vaXJxLXN0bTMyLWV4dGkuYzo4NTM6MS0xNjogV0FSTklORzogVXNlIGRl
dm1fcGxhdGZvcm1faW9yZW1hcF9yZXNvdXJjZSBmb3IgaG9zdF9kYXRhIC0+IGJhc2UKPiAKPiBz
byBqdXN0IGZpeCB0aGUgV0FSTklORy4gCj4gCj4gQW5kIGFmdGVyICBhcHBseSB0aGUgcGF0Y2gs
IEkgZG8gdGhlIGNvbXBpbGUsIGl0J3MgT0ssIGJ1dCBJIGxhY2sgb2YgaGFyZHdhcmUgdG8gdGVz
dCBpdC4gCj4gVGhhdCdzIHRoZSBjYXNlLiAKPiAKPiBNQlIuCj4gVGhhbmtzCj4gCj4gLS0tLS3p
gq7ku7bljp/ku7YtLS0tLQo+IOWPkeS7tuS6ujogTWFyYyBaeW5naWVyIFttYWlsdG86bWF6QGtl
cm5lbC5vcmddIAo+IOWPkemAgeaXtumXtDogMjAxOeW5tDEw5pyIMTfml6UgMTY6MjQKPiDmlLbk
u7bkuro6IGh1YW5nZGFvZGUgPGh1YW5nZGFvZGVAaGlzaWxpY29uLmNvbT4KPiDmioTpgIE6IGph
c29uQGxha2VkYWVtb24ubmV0OyBhbmRyZXdAbHVubi5jaDsgZ3JlZ29yeS5jbGVtZW50QGJvb3Rs
aW4uY29tOyBzZWJhc3RpYW4uaGVzc2VsYmFydGhAZ21haWwuY29tOyB0Z2x4QGxpbnV0cm9uaXgu
ZGU7IG1jb3F1ZWxpbi5zdG0zMkBnbWFpbC5jb207IGFsZXhhbmRyZS50b3JndWVAc3QuY29tOyBu
bUB0aS5jb207IHQta3Jpc3RvQHRpLmNvbTsgc3NhbnRvc2hAa2VybmVsLm9yZzsgbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3Jn
OyBsaW51eC1zdG0zMkBzdC1tZC1tYWlsbWFuLnN0b3JtcmVwbHkuY29tCj4g5Li76aKYOiBSZTog
W1BBVENIXSB1c2UgZGV2bV9wbGF0Zm9ybV9pb3JlbWFwX3Jlc291cmNlKCkgZm9yIGlycWNoaXAg
ZHJpdmVycwo+IAo+IE9uIDIwMTktMTAtMTcgMDg6MTMsIERhb2RlIEh1YW5nIHdyb3RlOgo+PiBG
cm9tOiBEYW9kZSBIdWFuZyA8aHVhbmdkYW9kZUBoaXNsaWNvbi5jb20+Cj4+Cj4+IFVzZSB0aGUg
bmV3IGhlbHBlciB0aGF0IHdyYXBzIHRoZSBjYWxscyB0byBwbGF0Zm9ybV9nZXRfcmVzb3VyY2Uo
KSBhbmQgCj4+IGRldm1faW9yZW1hcF9yZXNvdXJjZSgpIHRvZ2V0aGVyCj4+Cj4+IFNpZ25lZC1v
ZmYtYnk6IERhb2RlIEh1YW5nIDxodWFuZ2Rhb2RlQGhpc2xpY29uLmNvbT4KPj4gLS0tCj4+ICBk
cml2ZXJzL2lycWNoaXAvaXJxLW12ZWJ1LWljdS5jICAgfCAzICstLQo+PiAgZHJpdmVycy9pcnFj
aGlwL2lycS1tdmVidS1waWMuYyAgIHwgMyArLS0KPj4gIGRyaXZlcnMvaXJxY2hpcC9pcnEtc3Rt
MzItZXh0aS5jICB8IDMgKy0tICAKPj4gZHJpdmVycy9pcnFjaGlwL2lycS10aS1zY2ktaW50YS5j
IHwgMyArLS0KPj4gIGRyaXZlcnMvaXJxY2hpcC9pcnEtdHM0ODAwLmMgICAgICB8IDMgKy0tCj4+
ICA1IGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pCj4+Cj4+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2lycWNoaXAvaXJxLW12ZWJ1LWljdS5jIAo+PiBiL2RyaXZl
cnMvaXJxY2hpcC9pcnEtbXZlYnUtaWN1LmMgaW5kZXggNTQ3MDQ1ZC4uZGRmOWIwZCAxMDA2NDQK
Pj4gLS0tIGEvZHJpdmVycy9pcnFjaGlwL2lycS1tdmVidS1pY3UuYwo+PiArKysgYi9kcml2ZXJz
L2lycWNoaXAvaXJxLW12ZWJ1LWljdS5jCj4+IEBAIC0zNTcsOCArMzU3LDcgQEAgc3RhdGljIGlu
dCBtdmVidV9pY3VfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZQo+PiAqcGRldikKPj4KPj4g
IAlpY3UtPmRldiA9ICZwZGV2LT5kZXY7Cj4+Cj4+IC0JcmVzID0gcGxhdGZvcm1fZ2V0X3Jlc291
cmNlKHBkZXYsIElPUkVTT1VSQ0VfTUVNLCAwKTsKPj4gLQlpY3UtPmJhc2UgPSBkZXZtX2lvcmVt
YXBfcmVzb3VyY2UoJnBkZXYtPmRldiwgcmVzKTsKPj4gKwlpY3UtPmJhc2UgPSBkZXZtX3BsYXRm
b3JtX2lvcmVtYXBfcmVzb3VyY2UocGRldiwgcmVzKTsKCkl0IHNob3VsZCBiZSA6CgorCWljdS0+
YmFzZSA9IGRldm1fcGxhdGZvcm1faW9yZW1hcF9yZXNvdXJjZShwZGV2LCAwKTsKCj4gCj4gdm9p
ZCBfX2lvbWVtICpkZXZtX3BsYXRmb3JtX2lvcmVtYXBfcmVzb3VyY2Uoc3RydWN0IHBsYXRmb3Jt
X2RldmljZSAqcGRldiwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgdW5zaWduZWQgaW50IGluZGV4KQo+IAo+IFdoYXQgY291bGQgcG9zc2libHkgZ28gd3Jv
bmc/IEknZCBzdWdnZXN0IHlvdSBzdGFydCBjb21waWxpbmcgKGFuZCBwb3NzaWJseQo+IHRlc3Rp
bmcpIHRoZSBjb2RlIHlvdSBjaGFuZ2UgYmVmb3JlIHNlbmRpbmcgcGF0Y2hlcy4uLgo+IAo+ICAg
ICAgICAgIE0uCj4gLS0KPiBKYXp6IGlzIG5vdCBkZWFkLiBJdCBqdXN0IHNtZWxscyBmdW5ueS4u
Lgo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
