Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E6E576151
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 10:51:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MODKV8BBzdq060pqD2uodLDBKSsvtGZsqfXHeuV3fZU=; b=nmNPhj6MriuFDq
	G+K1zw+9rxC7fU7T4wNOCP7pfNFZa5gW+QmoJdpVTESL2J5c5h+oUrlOqJ9W28qjfFgUG7UdcZImv
	rn6fdC5wCSeKXqf/kD2LWvlpgmJHtRI+V/i6P7J/WjWoAkWw2b9Youq30KsdAirLlp2yJr8s8e2g6
	2wgv/nj5ArBi1S05yWc66UJwMWa/jWYVVXP6xAXjSs6/7ni7c4fz9yPFuRz7vbDW9/aKGvm3O08q5
	T4yUevTmijJjR4I2002Qevgnc27JQN/uZd75l9E2P3rPli+Fwx0t9urorG47I9VBlCsNxgynN93GQ
	i7QwL6gn925nHtHNsYRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqvx9-0000Jg-0g; Fri, 26 Jul 2019 08:51:51 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqvwu-0000In-5C; Fri, 26 Jul 2019 08:51:37 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id F190461901E9F1A5154E;
 Fri, 26 Jul 2019 16:51:30 +0800 (CST)
Received: from [127.0.0.1] (10.133.213.239) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0;
 Fri, 26 Jul 2019 16:51:29 +0800
Subject: Re: [PATCH -next] staging: vc04_services: fix used-but-set-variable
 warning
To: Greg KH <gregkh@linuxfoundation.org>
References: <20190725142716.49276-1-yuehaibing@huawei.com>
 <20190725144913.GC29688@kroah.com>
From: Yuehaibing <yuehaibing@huawei.com>
Message-ID: <afc8b261-3832-2c4f-a3e0-d1b4f98ffb61@huawei.com>
Date: Fri, 26 Jul 2019 16:51:28 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <20190725144913.GC29688@kroah.com>
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_015136_360117_B2212B26 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, eric@anholt.net,
 bcm-kernel-feedback-list@broadcom.com, wahrenst@gmx.net,
 nishkadg.linux@gmail.com, inf.braun@fau.de,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvNy8yNSAyMjo0OSwgR3JlZyBLSCB3cm90ZToKPiBPbiBUaHUsIEp1bCAyNSwgMjAx
OSBhdCAxMDoyNzoxNlBNICswODAwLCBZdWVIYWliaW5nIHdyb3RlOgo+PiB1c2UgdmFyaWFibGVz
ICdsb2NhbF9lbnRpdHlfdWMnIGFuZCAnbG9jYWxfdWMnLAo+PiBtdXRlIGdjYyB1c2VkLWJ1dC1z
ZXQtdmFyaWFibGUgd2FybmluZzoKPj4KPj4gZHJpdmVycy9zdGFnaW5nL3ZjMDRfc2VydmljZXMv
aW50ZXJmYWNlL3ZjaGlxX2FybS92Y2hpcV9hcm0uYzogSW4gZnVuY3Rpb24gdmNoaXFfcmVsZWFz
ZV9pbnRlcm5hbDoKPj4gZHJpdmVycy9zdGFnaW5nL3ZjMDRfc2VydmljZXMvaW50ZXJmYWNlL3Zj
aGlxX2FybS92Y2hpcV9hcm0uYzoyODI3OjE2OiB3YXJuaW5nOgo+PiAgdmFyaWFibGUgbG9jYWxf
ZW50aXR5X3VjIHNldCBidXQgbm90IHVzZWQgWy1XdW51c2VkLWJ1dC1zZXQtdmFyaWFibGVdCj4+
IGRyaXZlcnMvc3RhZ2luZy92YzA0X3NlcnZpY2VzL2ludGVyZmFjZS92Y2hpcV9hcm0vdmNoaXFf
YXJtLmM6MjgyNzo2OiB3YXJuaW5nOgo+PiAgdmFyaWFibGUgbG9jYWxfdWMgc2V0IGJ1dCBub3Qg
dXNlZCBbLVd1bnVzZWQtYnV0LXNldC12YXJpYWJsZV0KPj4KPj4gUmVwb3J0ZWQtYnk6IEh1bGsg
Um9ib3QgPGh1bGtjaUBodWF3ZWkuY29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBZdWVIYWliaW5nIDx5
dWVoYWliaW5nQGh1YXdlaS5jb20+Cj4+IC0tLQo+PiAgZHJpdmVycy9zdGFnaW5nL3ZjMDRfc2Vy
dmljZXMvaW50ZXJmYWNlL3ZjaGlxX2FybS92Y2hpcV9hcm0uYyB8IDYgKystLS0tCj4+ICAxIGZp
bGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9zdGFnaW5nL3ZjMDRfc2VydmljZXMvaW50ZXJmYWNlL3ZjaGlxX2FybS92
Y2hpcV9hcm0uYyBiL2RyaXZlcnMvc3RhZ2luZy92YzA0X3NlcnZpY2VzL2ludGVyZmFjZS92Y2hp
cV9hcm0vdmNoaXFfYXJtLmMKPj4gaW5kZXggY2M0MzgzZC4uMDRlNjQyNyAxMDA2NDQKPj4gLS0t
IGEvZHJpdmVycy9zdGFnaW5nL3ZjMDRfc2VydmljZXMvaW50ZXJmYWNlL3ZjaGlxX2FybS92Y2hp
cV9hcm0uYwo+PiArKysgYi9kcml2ZXJzL3N0YWdpbmcvdmMwNF9zZXJ2aWNlcy9pbnRlcmZhY2Uv
dmNoaXFfYXJtL3ZjaGlxX2FybS5jCj4+IEBAIC0yODYxLDE1ICsyODYxLDEzIEBAIHZjaGlxX3Jl
bGVhc2VfaW50ZXJuYWwoc3RydWN0IHZjaGlxX3N0YXRlICpzdGF0ZSwgc3RydWN0IHZjaGlxX3Nl
cnZpY2UgKnNlcnZpY2UpCj4+ICAJCX0gZWxzZSB7Cj4+ICAJCQl2Y2hpcV9sb2dfaW5mbyh2Y2hp
cV9zdXNwX2xvZ19sZXZlbCwKPj4gIAkJCQkiJXMgJXMgY291bnQgJWQsIHN0YXRlIGNvdW50ICVk
IC0gc3VzcGVuZGluZyIsCj4+IC0JCQkJX19mdW5jX18sIGVudGl0eSwgKmVudGl0eV91YywKPj4g
LQkJCQlhcm1fc3RhdGUtPnZpZGVvY29yZV91c2VfY291bnQpOwo+PiArCQkJCV9fZnVuY19fLCBl
bnRpdHksIGxvY2FsX2VudGl0eV91YywgbG9jYWxfdWMpOwo+PiAgCQkJdmNoaXFfYXJtX3Zjc3Vz
cGVuZChzdGF0ZSk7Cj4+ICAJCX0KPj4gIAl9IGVsc2UKPj4gIAkJdmNoaXFfbG9nX3RyYWNlKHZj
aGlxX3N1c3BfbG9nX2xldmVsLAo+PiAgCQkJIiVzICVzIGNvdW50ICVkLCBzdGF0ZSBjb3VudCAl
ZCIsCj4+IC0JCQlfX2Z1bmNfXywgZW50aXR5LCAqZW50aXR5X3VjLAo+PiAtCQkJYXJtX3N0YXRl
LT52aWRlb2NvcmVfdXNlX2NvdW50KTsKPj4gKwkJCV9fZnVuY19fLCBlbnRpdHksIGxvY2FsX2Vu
dGl0eV91YywgbG9jYWxfdWMpOwo+IAo+IEFyZSB5b3Ugc3VyZSB0aGlzIGlzIHRoZSBjb3JyZWN0
IHdheSB0byBzb2x2ZSB0aGlzPwo+IAo+IFdoeSBub3QganVzdCByZW1vdmUgdGhlIGxvY2FsIHZh
cmlhYmxlcyBpbnN0ZWFkLCBhcyBvYnZpb3VzbHkgdGhleSBhcmUKPiBub3QgYmVpbmcgdXNlZC4K
Ckl0IHNlZW1zIHRoZXkgYXJlIGVxdWl2YWxlbnQKCjI4NTIgICAgICAgICBsb2NhbF91YyA9IC0t
YXJtX3N0YXRlLT52aWRlb2NvcmVfdXNlX2NvdW50OwoyODUzICAgICAgICAgbG9jYWxfZW50aXR5
X3VjID0gLS0oKmVudGl0eV91Yyk7CgpIb3dldmVyLCBJIHdpbGwgcmVzZW5kIGFzIHlvdXIgc3Vn
Z2VzdGlvbi4gVGhhbmtz77yBCgo+IAo+IHRoYW5rcywKPiAKPiBncmVnIGstaAo+IAo+IC4KPiAK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
