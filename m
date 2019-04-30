Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DB73F102
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 09:16:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YYXZwVnb0IZLmyCSeQlcV0Rj/TRhmrb2t2sDo5vjcBI=; b=robMjUBIWOZzNT
	gXWtLkzi1krEvQY+1n+xD17KZdffZOkm+ObZexGgN2QaM4Bwnzp52hj9NQbV86KssZUPtly6UfgXg
	2SUjO/mXV+T9iqykSktIX2XtBCuc8Qo49/9D7Z2r7WWLmqlYUhsy2WhMc09Ak+d3sMr/fxhYchkyC
	Hqv8jKB+W95YJ4cBMrp3e7MZ7lPX1sRU4EPg58AMXA9H770l+TUZ0hCSiqY/ALU2wHKZSJeMvu4l7
	BA9sIKg3VdZZP4Qxf9mR3cL23gsWSFSVoZ3ru57n0ODko+jnHyPTvUlBOdY9z/+pX2GQGrk7jrTY+
	IKVmtlc8pwFWSQkDVsMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLN0A-00012X-Kx; Tue, 30 Apr 2019 07:16:30 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLN00-00011S-5M
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 07:16:23 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id C21A5762FFF8842A5C5D;
 Tue, 30 Apr 2019 15:16:10 +0800 (CST)
Received: from [127.0.0.1] (10.142.63.192) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.439.0; Tue, 30 Apr 2019
 15:15:59 +0800
Subject: Re: [PATCH v6 13/13] dts: hi3660: Add support for usb on Hikey960
To: Rob Herring <robh@kernel.org>
References: <20190420064019.57522-1-chenyu56@huawei.com>
 <20190420064019.57522-14-chenyu56@huawei.com> <20190425220016.GC32028@bogus>
From: Chen Yu <chenyu56@huawei.com>
Message-ID: <6b5c219c-3941-5add-5e91-5efbd9b9d85c@huawei.com>
Date: Tue, 30 Apr 2019 15:15:58 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.2
MIME-Version: 1.0
In-Reply-To: <20190425220016.GC32028@bogus>
Content-Language: en-US
X-Originating-IP: [10.142.63.192]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_001622_017035_A18B1793 
X-CRM114-Status: GOOD (  21.52  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Binghui Wang <wangbinghui@hisilicon.com>, wanghu17@hisilicon.com,
 fangshengzhou@hisilicon.com, butao@hisilicon.com, xuyiping@hisilicon.com,
 zangleigang@hisilicon.com, Wei Xu <xuwei5@hisilicon.com>,
 songxiaowei@hisilicon.com, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 "Liuyu \(R\)" <liuyu712@hisilicon.com>, chenyao11@huawei.com,
 devicetree@vger.kernel.org, suzhuangluan@hisilicon.com, xuyoujun4@huawei.com,
 kongfei@hisilicon.com, john.stultz@linaro.org, yudongbin@hisilicon.com,
 linux-arm-kernel@lists.infradead.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, lipengcheng8@huawei.com,
 =?UTF-8?B?c2h1ZmFuX2xlZSjmnY7mm7jluIYp?= <shufan_lee@richtek.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUm9iLAoKT24gMjAxOS80LzI2IDY6MDAsIFJvYiBIZXJyaW5nIHdyb3RlOgo+IE9uIFNhdCwg
QXByIDIwLCAyMDE5IGF0IDAyOjQwOjE5UE0gKzA4MDAsIFl1IENoZW4gd3JvdGU6Cj4+IFRoaXMg
cGF0Y2ggYWRkcyBzdXBwb3J0IGZvciB1c2Igb24gSGlrZXk5NjAuCj4+Cj4+IENjOiBDaHVuZmVu
ZyBZdW4gPGNodW5mZW5nLnl1bkBtZWRpYXRlay5jb20+Cj4+IENjOiBXZWkgWHUgPHh1d2VpNUBo
aXNpbGljb24uY29tPgo+PiBDYzogUm9iIEhlcnJpbmcgPHJvYmgrZHRAa2VybmVsLm9yZz4KPj4g
Q2M6IE1hcmsgUnV0bGFuZCA8bWFyay5ydXRsYW5kQGFybS5jb20+Cj4+IENjOiBsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPj4gQ2M6IEpvaG4gU3R1bHR6IDxqb2huLnN0dWx0
ekBsaW5hcm8ub3JnPgo+PiBDYzogQmluZ2h1aSBXYW5nIDx3YW5nYmluZ2h1aUBoaXNpbGljb24u
Y29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBZdSBDaGVuIDxjaGVueXU1NkBodWF3ZWkuY29tPgo+PiAt
LS0KPj4gdjI6Cj4+ICogUmVtb3ZlIGRldmljZV90eXBlIHByb3BlcnR5Lgo+PiAqIEFkZCBwcm9w
ZXJ0eSAidXNiLXJvbGUtc3dpdGNoIi4KPj4gdjM6Cj4+ICogTWFrZSBub2RlICJ1c2JfcGh5IiBh
IHN1Ym5vZGUgb2YgdXNiM19vdGdfYmMgcmVnaXN0ZXIuCj4+ICogUmVtb3ZlIHByb3BlcnR5ICJ0
eXBlYy12YnVzLWVuYWJsZS12YWwiIG9mIGhpc2lfaGlrZXlfdXNiLgo+PiB2NDoKPj4gKiBSZW1v
dmUgcHJvcGVydHkgImhpc2lsaWNvbix1c2IzLW90Zy1iYy1zeXNjb24iIG9mIHVzYi1waHkuCj4+
IC0tLQo+PiAtLS0KPj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvaGlzaWxpY29uL2hpMzY2MC1oaWtl
eTk2MC5kdHMgfCA1MyArKysrKysrKysrKysrKysrCj4+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL2hp
c2lsaWNvbi9oaTM2NjAuZHRzaSAgICAgICAgIHwgNzMgKysrKysrKysrKysrKysrKysrKysrKysK
Pj4gIDIgZmlsZXMgY2hhbmdlZCwgMTI2IGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvaGlzaWxpY29uL2hpMzY2MC1oaWtleTk2MC5kdHMgYi9hcmNo
L2FybTY0L2Jvb3QvZHRzL2hpc2lsaWNvbi9oaTM2NjAtaGlrZXk5NjAuZHRzCj4+IGluZGV4IGUw
MzVjZjE5NWIxOS4uZDRlMTFjNTZiMjUwIDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL2hpc2lsaWNvbi9oaTM2NjAtaGlrZXk5NjAuZHRzCj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9v
dC9kdHMvaGlzaWxpY29uL2hpMzY2MC1oaWtleTk2MC5kdHMKPj4gQEAgLTEzLDYgKzEzLDcgQEAK
Pj4gICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9ncGlvL2dwaW8uaD4KPj4gICNpbmNsdWRlIDxkdC1i
aW5kaW5ncy9pbnB1dC9pbnB1dC5oPgo+PiAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2ludGVycnVw
dC1jb250cm9sbGVyL2lycS5oPgo+PiArI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3VzYi9wZC5oPgo+
PiAgCj4+ICAvIHsKPj4gIAltb2RlbCA9ICJIaUtleTk2MCI7Cj4+IEBAIC0xOTYsNiArMTk3LDI2
IEBACj4+ICAJCQltZXRob2QgPSAic21jIjsKPj4gIAkJfTsKPj4gIAl9Owo+PiArCj4+ICsJaGlz
aV9oaWtleV91c2I6IGhpc2lfaGlrZXlfdXNiIHsKPj4gKwkJY29tcGF0aWJsZSA9ICJoaXNpbGlj
b24saGlrZXk5NjBfdXNiIjsKPj4gKwkJdHlwZWMtdmJ1cy1ncGlvcyA9IDwmZ3BpbzI1IDIgR1BJ
T19BQ1RJVkVfSElHSD47Cj4+ICsJCW90Zy1zd2l0Y2gtZ3Bpb3MgPSA8JmdwaW8yNSA2IEdQSU9f
QUNUSVZFX0hJR0g+Owo+PiArCQlodWItdmRkMzMtZW4tZ3Bpb3MgPSA8JmdwaW81IDYgR1BJT19B
Q1RJVkVfSElHSD47Cj4+ICsJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4+ICsJCXBpbmN0
cmwtMCA9IDwmdXNiaHViNTczNF9wbXhfZnVuYz47Cj4+ICsKPj4gKwkJcG9ydCB7Cj4+ICsJCQkj
YWRkcmVzcy1jZWxscyA9IDwxPjsKPj4gKwkJCSNzaXplLWNlbGxzID0gPDA+Owo+PiArCj4+ICsJ
CQloaWtleV91c2JfZXA6IGVuZHBvaW50QDAgewo+PiArCQkJCXJlZyA9IDwwPjsKPj4gKwkJCQly
ZW1vdGUtZW5kcG9pbnQgPSA8JmR3YzNfcm9sZV9zd2l0Y2hfbm90aWZ5PjsKPj4gKwkJCX07Cj4+
ICsJCX07Cj4+ICsJfTsKPj4gKwo+PiAgfTsKPj4gIAo+PiAgLyoKPj4gQEAgLTUyNiw2ICs1NDcs
MzggQEAKPj4gICZpMmMxIHsKPj4gIAlzdGF0dXMgPSAib2theSI7Cj4+ICAKPj4gKwlydDE3MTFo
OiBydDE3MTFoQDRlIHsKPj4gKwkJY29tcGF0aWJsZSA9ICJyaWNodGVrLHJ0MTcxMWgiOwo+IAo+
IFRoZSBiaW5kaW5nIGRvYyBmb3IgdGhpcyBzaG91bGQgc3RhdGUgaXQgc2hvdWxkIGhhdmUgYSAn
Y29ubmVjdG9yJyBub2RlLgo+IApIaSBzaHVmYW4sCklzIHRoZSAnY29ubmVjdG9yJyBub2RlIGFu
IGVzc2VudGlhbCBub2RlIG9mIHJ0MTcxMWg/CkN1cnJlbnRseSBpdCBpcyBtaXNzaW5nIGluIERv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91c2IvcmljaHRlayxydDE3MTFoLnR4dC4K
RG8geW91IHRoaW5rIHRoZSAnY29ubmVjdG9yJyBub2RlIHNob3VsZCBhZGQgYXMgdGhpcyBwYXRj
aCBpbiB0aGUgYmluZGluZyBkb2M/Cgo+PiArCQlyZWcgPSA8MHg0ZT47Cj4+ICsJCXN0YXR1cyA9
ICJvayI7Cj4gCj4gQ2FuIGRyb3AgdGhpcywgaXQgaXMgdGhlIGRlZmF1bHQuCj4gCk9LLgoKPj4g
KwkJaW50ZXJydXB0LXBhcmVudCA9IDwmZ3BpbzI3PjsKPj4gKwkJaW50ZXJydXB0cyA9IDwzIElS
UV9UWVBFX0xFVkVMX0xPVz47Cj4+ICsJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4+ICsJ
CXBpbmN0cmwtMCA9IDwmdXNiX2NmZ19mdW5jPjsKPj4gKwo+PiArCQl1c2JfY29uOiBjb25uZWN0
b3Igewo+PiArCQkJY29tcGF0aWJsZSA9ICJ1c2ItYy1jb25uZWN0b3IiOwo+PiArCQkJbGFiZWwg
PSAiVVNCLUMiOwo+PiArCQkJZGF0YS1yb2xlID0gImR1YWwiOwo+PiArCQkJcG93ZXItcm9sZSA9
ICJkdWFsIjsKPj4gKwkJCXRyeS1wb3dlci1yb2xlID0gInNpbmsiOwo+PiArCQkJc291cmNlLXBk
b3MgPSA8UERPX0ZJWEVEKDUwMDAsIDUwMCwgUERPX0ZJWEVEX1VTQl9DT01NKT47Cj4+ICsJCQlz
aW5rLXBkb3MgPSA8UERPX0ZJWEVEKDUwMDAsIDUwMCwgUERPX0ZJWEVEX1VTQl9DT01NKQo+PiAr
CQkJCVBET19WQVIoNTAwMCwgNTAwMCwgMTAwMCk+Owo+PiArCQkJb3Atc2luay1taWNyb3dhdHQg
PSA8MTAwMDAwMDA+Owo+PiArCQl9Owo+PiArCj4+ICsJCXBvcnQgewo+IAo+IFRoZSBjb25uZWN0
b3Igbm9kZSBzaG91bGQgaGF2ZSBhICdwb3J0cycgY2hpbGQgd2l0aCAncG9ydEAwJyBiZWluZyB0
aGUgCj4gSFMgY29ubmVjdGlvbi4KPiAKVGhpcyBwb3J0IGFuZCBlbmRwb2ludCBvZiB0aGUgcG9y
dCBhcmUgdXNlZCBmb3Igcm9sZV9zd2l0Y2ggbWF0Y2hpbmcgYnkKZndub2RlX2dyYXBoX2RldmNv
bl9tYXRjaC4gSSdtIG5vdCB0b28gc3VyZSB0aGUgJ3BvcnRzJyB1bmRlciBjb25uZWN0b3IgaXMg
dXNlZCBpbgpydDE3MTFoIGRyaXZlcu+8nwpIaSBzaHVmYW5fbGVlLAogICAgQ2FuIHlvdSBjb25m
aXJtIHRoaXM/Cgo+PiArCQkJI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4+ICsJCQkjc2l6ZS1jZWxs
cyA9IDwwPjsKPj4gKwo+PiArCQkJcnQxNzExaF9lcDogZW5kcG9pbnRAMCB7Cj4+ICsJCQkJcmVn
ID0gPDA+Owo+PiArCQkJCXJlbW90ZS1lbmRwb2ludCA9IDwmZHdjM19yb2xlX3N3aXRjaD47Cj4+
ICsJCQl9Owo+PiArCQl9Owo+PiArCX07Cj4+ICsKPj4gIAlhZHY3NTMzOiBhZHY3NTMzQDM5IHsK
Pj4gIAkJc3RhdHVzID0gIm9rIjsKPj4gIAkJY29tcGF0aWJsZSA9ICJhZGksYWR2NzUzMyI7Cj4+
IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2hpc2lsaWNvbi9oaTM2NjAuZHRzaSBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvaGlzaWxpY29uL2hpMzY2MC5kdHNpCj4+IGluZGV4IDJmMTll
MGU1YjdjZi4uMTczNDY3NTA1YWRhIDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L2hpc2lsaWNvbi9oaTM2NjAuZHRzaQo+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2hpc2ls
aWNvbi9oaTM2NjAuZHRzaQo+PiBAQCAtMzU1LDYgKzM1NSwxMiBAQAo+PiAgCQkJI2Nsb2NrLWNl
bGxzID0gPDE+Owo+PiAgCQl9Owo+PiAgCj4+ICsJCXBtY3RybDogcG1jdHJsQGZmZjMxMDAwIHsK
Pj4gKwkJCWNvbXBhdGlibGUgPSAiaGlzaWxpY29uLGhpMzY2MC1wbWN0cmwiLCAic3lzY29uIjsK
Pj4gKwkJCXJlZyA9IDwweDAgMHhmZmYzMTAwMCAweDAgMHgxMDAwPjsKPj4gKwkJCSNjbG9jay1j
ZWxscyA9IDwxPjsKPj4gKwkJfTsKPj4gKwo+PiAgCQlwbXVjdHJsOiBjcmdfY3RybEBmZmYzNDAw
MCB7Cj4+ICAJCQljb21wYXRpYmxlID0gImhpc2lsaWNvbixoaTM2NjAtcG11Y3RybCIsICJzeXNj
b24iOwo+PiAgCQkJcmVnID0gPDB4MCAweGZmZjM0MDAwIDB4MCAweDEwMDA+Owo+PiBAQCAtMTEz
NCw1ICsxMTQwLDcyIEBACj4+ICAJCQkJfTsKPj4gIAkJCX07Cj4+ICAJCX07Cj4+ICsKPj4gKwkJ
dXNiM19vdGdfYmM6IHVzYjNfb3RnX2JjQGZmMjAwMDAwIHsKPj4gKwkJCWNvbXBhdGlibGUgPSAi
c3lzY29uIiwgInNpbXBsZS1tZmQiOwo+PiArCQkJcmVnID0gPDB4MCAweGZmMjAwMDAwIDB4MCAw
eDEwMDA+Owo+PiArCj4+ICsJCQl1c2JfcGh5OiB1c2ItcGh5IHsKPj4gKwkJCQljb21wYXRpYmxl
ID0gImhpc2lsaWNvbixoaTM2NjAtdXNiLXBoeSI7Cj4+ICsJCQkJI3BoeS1jZWxscyA9IDwwPjsK
Pj4gKwkJCQloaXNpbGljb24scGVyaWNyZy1zeXNjb24gPSA8JmNyZ19jdHJsPjsKPj4gKwkJCQlo
aXNpbGljb24scGN0cmwtc3lzY29uID0gPCZwY3RybD47Cj4+ICsJCQkJaGlzaWxpY29uLGV5ZS1k
aWFncmFtLXBhcmFtID0gPDB4MjI0NjZlND47Cj4+ICsJCQl9Owo+PiArCQl9Owo+PiArCj4+ICsJ
CXVzYjM6IGhpc2lfZHdjMyB7Cj4+ICsJCQljb21wYXRpYmxlID0gImhpc2lsaWNvbixoaTM2NjAt
ZHdjMyI7Cj4+ICsJCQkjYWRkcmVzcy1jZWxscyA9IDwyPjsKPj4gKwkJCSNzaXplLWNlbGxzID0g
PDI+Owo+PiArCQkJcmFuZ2VzOwo+IAo+IElmIHRoZXJlIGFyZSBub3QgYW55IHdyYXBwZXIgcmVn
aXN0ZXJzLCB0aGVuIGdldCByaWQgb2YgdGhlIGhpc2lfZHdjMyAKPiBub2RlLiBGb3IganVzdCBj
bG9ja3MgYW5kIHJlc2V0cyB3ZSBqdXN0IHB1dCBldmVyeXRoaW5nIGluIG9uZSBub2RlLgo+IApJ
IHdpbGwgdHJ5IHRvIGZpeCB0aGlzLgo+PiArCj4+ICsJCQljbG9ja3MgPSA8JmNyZ19jdHJsIEhJ
MzY2MF9DTEtfQUJCX1VTQj4sCj4+ICsJCQkJIDwmY3JnX2N0cmwgSEkzNjYwX0FDTEtfR0FURV9V
U0IzT1RHPjsKPj4gKwkJCWNsb2NrLW5hbWVzID0gImNsa191c2IzcGh5X3JlZiIsICJhY2xrX3Vz
YjNvdGciOwo+PiArCj4+ICsJCQlhc3NpZ25lZC1jbG9ja3MgPSA8JmNyZ19jdHJsIEhJMzY2MF9B
Q0xLX0dBVEVfVVNCM09URz47Cj4+ICsJCQlhc3NpZ25lZC1jbG9jay1yYXRlcyA9IDwyMjkwMDAw
MDA+Owo+PiArCQkJcmVzZXRzID0gPCZjcmdfcnN0IDB4OTAgOD4sCj4+ICsJCQkJIDwmY3JnX3Jz
dCAweDkwIDc+LAo+PiArCQkJCSA8JmNyZ19yc3QgMHg5MCA2PiwKPj4gKwkJCQkgPCZjcmdfcnN0
IDB4OTAgNT47Cj4+ICsKPj4gKwkJCWR3YzM6IGR3YzNAZmYxMDAwMDAgewo+PiArCQkJCWNvbXBh
dGlibGUgPSAic25wcyxkd2MzIjsKPj4gKwkJCQlyZWcgPSA8MHgwIDB4ZmYxMDAwMDAgMHgwIDB4
MTAwMDAwPjsKPj4gKwkJCQlpbnRlcnJ1cHRzID0gPDAgMTU5IDQ+LCA8MCAxNjEgND47Cj4+ICsJ
CQkJcGh5cyA9IDwmdXNiX3BoeT47Cj4+ICsJCQkJcGh5LW5hbWVzID0gInVzYjMtcGh5IjsKPj4g
KwkJCQlkcl9tb2RlID0gIm90ZyI7Cj4+ICsJCQkJbWF4aW11bS1zcGVlZCA9ICJzdXBlci1zcGVl
ZCI7Cj4+ICsJCQkJcGh5X3R5cGUgPSAidXRtaSI7Cj4+ICsJCQkJc25wcyxkaXMtZGVsLXBoeS1w
b3dlci1jaGctcXVpcms7Cj4gCj4+ICsJCQkJc25wcyxsZnBzX2ZpbHRlcl9xdWlyazsKPj4gKwkJ
CQlzbnBzLGRpc191Ml9zdXNwaHlfcXVpcms7Cj4+ICsJCQkJc25wcyxkaXNfdTNfc3VzcGh5X3F1
aXJrOwo+PiArCQkJCXNucHMsdHhfZGVfZW1waGFzaXNfcXVpcms7Cj4+ICsJCQkJc25wcyx0eF9k
ZV9lbXBoYXNpcyA9IDwxPjsKPj4gKwkJCQlzbnBzLGRpc19lbmJsc2xwbV9xdWlyazsKPiAKPiBQ
cmV0dHkgc3VyZSB0aGVzZSBhcmVuJ3QgZG9jdW1lbnRlZCBiZWNhdXNlIHdlIGRvbid0IHVzZSAn
XycgaW4gcHJvcGVydHkgCj4gbmFtZXMuCj4gCkRvIHlvdSBtZWFuIHByb3BlcnR5IGFzICJzbnBz
LGRpc19lbmJsc2xwbV9xdWlyayI/IFRoZXNlIHByb3BlcnRpZXMgYXJlCmRvY3VtZW50ZWQgaW4g
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi9kd2MzLnR4dC4KCj4+ICsJCQkJ
c25wcyxnY3RsLXJlc2V0LXF1aXJrOwo+PiArCQkJCXVzYi1yb2xlLXN3aXRjaDsKPj4gKwkJCQly
b2xlLXN3aXRjaC1kZWZhdWx0LWhvc3Q7Cj4+ICsKPj4gKwkJCQlwb3J0IHsKPj4gKwkJCQkJI2Fk
ZHJlc3MtY2VsbHMgPSA8MT47Cj4+ICsJCQkJCSNzaXplLWNlbGxzID0gPDA+Owo+PiArCj4+ICsJ
CQkJCWR3YzNfcm9sZV9zd2l0Y2g6IGVuZHBvaW50QDAgewo+PiArCQkJCQkJcmVnID0gPDA+Owo+
PiArCQkJCQkJcmVtb3RlLWVuZHBvaW50ID0gPCZydDE3MTFoX2VwPjsKPj4gKwkJCQkJfTsKPj4g
Kwo+PiArCQkJCQlkd2MzX3JvbGVfc3dpdGNoX25vdGlmeTogZW5kcG9pbnRAMSB7Cj4+ICsJCQkJ
CQlyZWcgPSA8MT47Cj4+ICsJCQkJCQlyZW1vdGUtZW5kcG9pbnQgPSA8Jmhpa2V5X3VzYl9lcD47
Cj4+ICsJCQkJCX07Cj4+ICsJCQkJfTsKPj4gKwkJCX07Cj4+ICsJCX07Cj4+ICAJfTsKPj4gIH07
Cj4+IC0tIAo+PiAyLjE1LjAtcmMyCj4+Cj4gCj4gLgo+IAoKVGhhbmtzCi0gWXUgQ2hlbgoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
