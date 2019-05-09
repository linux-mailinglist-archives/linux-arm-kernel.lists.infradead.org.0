Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00BD5194E6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 23:48:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wHuwu8p98Y6PXdIP1UofEvgr8Pb4I/6eHixgEKMm3dM=; b=kWNNILsRGy/HfD
	FbfGIhphAoL9+iaIUqAgDKOG/Mtok8k1IRqy6qHJ8K3mlTQfHNy6++h+5MXANy1wE/xCu1TYvUJJJ
	MElKnlksZS3zRfXNEkn0BSQLsZSDzx0IiKZYxn/BE266SZfY80caaA38HE1boey4/XlqrMKOawM2G
	PhlEXd9/nyfhRgysihT0x/PCT1zgNfiqZRMxQesISh2a/Z78zn+R3Q26XsH6GLuWyaoqhMCPFHBbE
	iWOlge2OkzkQxV54eWmap3bDc/6gRlgnQCUI2KLoI0cFdWxX7rC68y7mjTCVlU9hImmUYAk1iqJU7
	jBT6yzyZE1vkyrXOpZJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOqtz-0003kY-Lo; Thu, 09 May 2019 21:48:31 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOqtr-0003k0-2Z
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 21:48:24 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1E63A81112;
 Thu,  9 May 2019 21:48:22 +0000 (UTC)
Received: from lacos-laptop-7.usersys.redhat.com (ovpn-120-234.rdu2.redhat.com
 [10.10.120.234])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 14BC65DF49;
 Thu,  9 May 2019 21:48:15 +0000 (UTC)
Subject: Re: [Question] Memory hotplug clarification for Qemu ARM/virt
To: Igor Mammedov <imammedo@redhat.com>
References: <5FC3163CFD30C246ABAA99954A238FA83F1B6A66@lhreml524-mbs.china.huawei.com>
 <ca5f7231-6924-0720-73a5-766eb13ee331@arm.com>
 <190831a5-297d-addb-ea56-645afb169efb@redhat.com>
 <20190509183520.6dc47f2e@Igors-MacBook-Pro>
From: Laszlo Ersek <lersek@redhat.com>
Message-ID: <cd2aa867-5367-b470-0a2b-33897697c23f@redhat.com>
Date: Thu, 9 May 2019 23:48:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190509183520.6dc47f2e@Igors-MacBook-Pro>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Thu, 09 May 2019 21:48:22 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_144823_154284_46C31CF2 
X-CRM114-Status: GOOD (  30.48  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "peter.maydell@linaro.org" <peter.maydell@linaro.org>,
 "xuwei \(O\)" <xuwei5@huawei.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "qemu-devel@nongnu.org" <qemu-devel@nongnu.org>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 Linuxarm <linuxarm@huawei.com>, linux-mm <linux-mm@kvack.org>,
 "qemu-arm@nongnu.org" <qemu-arm@nongnu.org>,
 "eric.auger@redhat.com" <eric.auger@redhat.com>,
 Jonathan Cameron <jonathan.cameron@huawei.com>,
 Robin Murphy <robin.murphy@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDUvMDkvMTkgMTg6MzUsIElnb3IgTWFtbWVkb3Ygd3JvdGU6Cj4gT24gV2VkLCA4IE1heSAy
MDE5IDIyOjI2OjEyICswMjAwCj4gTGFzemxvIEVyc2VrIDxsZXJzZWtAcmVkaGF0LmNvbT4gd3Jv
dGU6Cj4gCj4+IE9uIDA1LzA4LzE5IDE0OjUwLCBSb2JpbiBNdXJwaHkgd3JvdGU6Cj4+PiBIaSBT
aGFtZWVyLAo+Pj4KPj4+IE9uIDA4LzA1LzIwMTkgMTE6MTUsIFNoYW1lZXJhbGkgS29sb3RodW0g
VGhvZGkgd3JvdGU6Cj4+Pj4gSGksCj4+Pj4KPj4+PiBUaGlzIHNlcmllcyBoZXJlWzBdIGF0dGVt
cHRzIHRvIGFkZCBzdXBwb3J0IGZvciBQQ0RJTU0gaW4gUUVNVSBmb3IKPj4+PiBBUk0vVmlydCBw
bGF0Zm9ybSBhbmQgaGFzIHN0dW1ibGVkIHVwb24gYW4gaXNzdWUgYXMgaXQgaXMgbm90IGNsZWFy
KGF0Cj4+Pj4gbGVhc3QKPj4+PiBmcm9tIFFlbXUvRURLMiBwb2ludCBvZiB2aWV3KSBob3cgaW4g
cGh5c2ljYWwgd29ybGQgdGhlIGhvdHBsdWdnYWJsZQo+Pj4+IG1lbW9yeSBpcyBoYW5kbGVkIGJ5
IGtlcm5lbC4KPj4+Pgo+Pj4+IFRoZSBwcm9wb3NlZCBpbXBsZW1lbnRhdGlvbiBpbiBRZW11LCBi
dWlsZHMgdGhlIFNSQVQgYW5kIERTRFQgcGFydHMKPj4+PiBhbmQgdXNlcyBHRUQgZGV2aWNlIHRv
IHRyaWdnZXIgdGhlIGhvdHBsdWcuIFRoaXMgd29ya3MgZmluZS4KPj4+Pgo+Pj4+IEJ1dCB3aGVu
IHdlIGFkZGVkIHRoZSBEVCBub2RlIGNvcnJlc3BvbmRpbmcgdG8gdGhlIFBDRElNTShjb2xkIHBs
dWcKPj4+PiBzY2VuYXJpbyksIHdlIG5vdGljZWQgdGhhdCBHdWVzdCBrZXJuZWwgc2VlIHRoaXMg
bWVtb3J5IGR1cmluZyBlYXJseSBib290Cj4+Pj4gZXZlbiBpZiB3ZSBhcmUgYm9vdGluZyB3aXRo
IEFDUEkuIEJlY2F1c2Ugb2YgdGhpcywgaG90cGx1Z2dhYmxlIG1lbW9yeQo+Pj4+IG1heSBlbmQg
dXAgaW4gem9uZSBub3JtYWwgYW5kIG1ha2UgaXQgbm9uLWhvdC11bi1wbHVnZ2FibGUgZXZlbiBp
ZiBHdWVzdAo+Pj4+IGJvb3RzIHdpdGggQUNQSS4KPj4+Pgo+Pj4+IEZ1cnRoZXIgZGlzY3Vzc2lv
bnNbMV0gcmV2ZWFsZWQgdGhhdCwgRURLMiBVRUZJIGhhcyBubyBtZWFucyB0bwo+Pj4+IGludGVy
cHJldCB0aGUKPj4+PiBBQ1BJIGNvbnRlbnQgZnJvbSBRZW11KHRoaXMgaXMgZGVzaWduZWQgdG8g
ZG8gc28pIGFuZCB1c2VzIERUIGluZm8gdG8KPj4+PiBidWlsZCB0aGUgR2V0TWVtb3J5TWFwKCku
IFRvIHNvbHZlIHRoaXMsIGludHJvZHVjZWQgImhvdHBsdWdnYWJsZSIKPj4+PiBwcm9wZXJ0eQo+
Pj4+IHRvIERUIG1lbW9yeSBub2RlKHBhdGNoZXMgIzcgJiAjOCBmcm9tIFswXSkgc28gdGhhdCBV
RUZJIGNhbgo+Pj4+IGRpZmZlcmVudGlhdGUKPj4+PiB0aGUgbm9kZXMgYW5kIGV4Y2x1ZGUgdGhl
IGhvdHBsdWdnYWJsZSBvbmVzIGZyb20gR2V0TWVtb3J5TWFwKCkuCj4+Pj4KPj4+PiBCdXQgdGhl
biBMYXN6bG8gcmlnaHRseSBwb2ludGVkIG91dCB0aGF0IGluIG9yZGVyIHRvIGFjY29tbW9kYXRl
IHRoZQo+Pj4+IGNoYW5nZXMKPj4+PiBpbnRvIFVFRkkgd2UgbmVlZCB0byBrbm93IGhvdyBleGFj
dGx5IExpbnV4IGV4cGVjdHMvaGFuZGxlcyBhbGwgdGhlCj4+Pj4gaG90cGx1Z2dhYmxlIG1lbW9y
eSBzY2VuYXJpb3MuIFBsZWFzZSBmaW5kIHRoZSBkaXNjdXNzaW9uIGhlcmVbMl0uCj4+Pj4KPj4+
PiBGb3IgZWFzZSwgSSBhbSBqdXN0IGNvcHlpbmcgdGhlIHJlbGV2YW50IGNvbW1lbnQgZnJvbSBM
YXN6bG8gYmVsb3csCj4+Pj4KPj4+PiAvKioqKioqCj4+Pj4gIkdpdmVuIHBhdGNoZXMgIzcgYW5k
ICM4LCBhcyBJIHVuZGVyc3RhbmQgdGhlbSwgdGhlIGZpcm13YXJlIGNhbm5vdAo+Pj4+IGRpc3Rp
bmd1aXNoCj4+Pj4gwqAgaG90cGx1Z2dhYmxlICYgcHJlc2VudCwgZnJvbSBob3RwbHVnZ2FibGUg
JiBhYnNlbnQuIFRoZSBmaXJtd2FyZSBjYW4KPj4+PiBvbmx5Cj4+Pj4gwqAgc2tpcCBib3RoIGhv
dHBsdWdnYWJsZSBjYXNlcy4gVGhhdCdzIGZpbmUgaW4gdGhhdCB0aGUgZmlybXdhcmUgd2lsbAo+
Pj4+IGhvZyBuZWl0aGVyCj4+Pj4gwqAgdHlwZSAtLSBidXQgaXMgdGhhdCBPSyBmb3IgdGhlIE9T
IGFzIHdlbGwsIGZvciBib3RoIEFDUEkgYm9vdCBhbmQgRFQKPj4+PiBib290Pwo+Pj4+Cj4+Pj4g
Q29uc2lkZXIgaW4gcGFydGljdWxhciB0aGUgImhvdHBsdWdnYWJsZSAmIHByZXNlbnQsIEFDUEkg
Ym9vdCIgY2FzZS4KPj4+PiBBc3N1bWluZwo+Pj4+IHdlIG1vZGlmeSB0aGUgZmlybXdhcmUgdG8g
c2tpcCAiaG90cGx1Z2dhYmxlIiBhbHRvZ2V0aGVyLCB0aGUgVUVGSSBtZW1tYXAKPj4+PiB3aWxs
IG5vdCBpbmNsdWRlIHRoZSByYW5nZSBkZXNwaXRlIGl0IGJlaW5nIHByZXNlbnQgYXQgYm9vdC4K
Pj4+PiBQcmVzdW1hYmx5LCBBQ1BJCj4+Pj4gd2lsbCByZWZlciB0byB0aGUgcmFuZ2Ugc29tZWhv
dywgaG93ZXZlci4gV2lsbCB0aGF0IG5vdCBjb25mdXNlIHRoZSBPUz8KPj4+Pgo+Pj4+IFdoZW4g
SWdvciByYWlzZWQgdGhpcyBlYXJsaWVyLCBJIHN1Z2dlc3RlZCB0aGF0Cj4+Pj4gaG90cGx1Z2dh
YmxlLWFuZC1wcmVzZW50IHNob3VsZAo+Pj4+IGJlIGFkZGVkIGJ5IHRoZSBmaXJtd2FyZSwgYnV0
IGFsc28gYWxsb2NhdGVkIGltbWVkaWF0ZWx5LCBhcwo+Pj4+IEVmaUJvb3RTZXJ2aWNlc0RhdGEK
Pj4+PiB0eXBlIG1lbW9yeS4gVGhpcyB3aWxsIHByZXZlbnQgb3RoZXIgZHJpdmVycyBpbiB0aGUg
ZmlybXdhcmUgZnJvbQo+Pj4+IGFsbG9jYXRpbmcgQWNwaU5WUwo+Pj4+IG9yIFJlc2VydmVkIGNo
dW5rcyBmcm9tIHRoZSBzYW1lIG1lbW9yeSByYW5nZSwgdGhlIFVFRkkgbWVtbWFwIHdpbGwKPj4+
PiBjb250YWluCj4+Pj4gdGhlIHJhbmdlIGFzIEVmaUJvb3RTZXJ2aWNlc0RhdGEsIGFuZCB0aGVu
IHRoZSBPUyBjYW4gcmVsZWFzZSB0aGF0Cj4+Pj4gYWxsb2NhdGlvbiBpbgo+Pj4+IG9uZSBnbyBl
YXJseSBkdXJpbmcgYm9vdC4KPj4+Pgo+Pj4+IEJ1dCB0aGlzIHJlYWxseSBoYXMgdG8gYmUgY2xh
cmlmaWVkIGZyb20gdGhlIExpbnV4IGtlcm5lbCdzCj4+Pj4gZXhwZWN0YXRpb25zLiBQbGVhc2UK
Pj4+PiBmb3JtYWxpemUgYWxsIG9mIHRoZSBmb2xsb3dpbmcgY2FzZXM6Cj4+Pj4KPj4+PiBPUyBi
b290IChEVC9BQ1BJKcKgIGhvdHBsdWdnYWJsZSAmIC4uLsKgIEdldE1lbW9yeU1hcCgpIHNob3Vs
ZCByZXBvcnQKPj4+PiBhc8KgIERUL0FDUEkgc2hvdWxkIHJlcG9ydCBhcwo+Pj4+IC0tLS0tLS0t
LS0tLS0tLS0twqAgLS0tLS0tLS0tLS0tLS0tLS0twqAKPj4+PiAtLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0twqAgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4+Pj4gRFTCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwcmVzZW50wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgID/C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCA/Cj4+Pj4gRFTCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBhYnNlbnTCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA/wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPwo+Pj4+IEFDUEnCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHByZXNlbnTCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgP8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgID8KPj4+
PiBBQ1BJwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBhYnNlbnTCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCA/wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgPwo+Pj4+Cj4+Pj4gQWdhaW4sIHRoaXMgdGFibGUgaXMgZGljdGF0
ZWQgYnkgTGludXguIgo+Pj4+Cj4+Pj4gKioqKioqLwo+Pj4+Cj4+Pj4gQ291bGQgeW91IHBsZWFz
ZSB0YWtlIGEgbG9vayBhdCB0aGlzIGFuZCBsZXQgdXMga25vdyB3aGF0IGlzIGV4cGVjdGVkCj4+
Pj4gaGVyZSBmcm9tCj4+Pj4gYSBMaW51eCBrZXJuZWwgdmlldyBwb2ludC4KPj4+Cj4+PiBGb3Ig
YXJtNjQsIHNvIGZhciB3ZSd2ZSBub3QgZXZlbiBiZWVuIGNvbnNpZGVyaW5nIERULWJhc2VkIGhv
dHBsdWcgLSBhcwo+Pj4gZmFyIGFzIEknbSBhd2FyZSB0aGVyZSB3b3VsZCBzdGlsbCBiZSBhIGJp
ZyBvcGVuIHF1ZXN0aW9uIHRoZXJlIGFyb3VuZAo+Pj4gbm90aWZpY2F0aW9uIG1lY2hhbmlzbXMg
YW5kIGhvdyB0byBkZXNjcmliZSB0aGVtLiBUaGUgRFQgc3R1ZmYgc28gZmFyCj4+PiBoYXMgY29t
ZSBmcm9tIHRoZSBQb3dlclBDIGZvbGtzLCBzbyBpdCdzIHByb2JhYmx5IHdvcnRoIHNlZWluZyB3
aGF0Cj4+PiB0aGVpciBpZGVhcyBhcmUuCj4+Pgo+Pj4gQUNQSS13aXNlIEkndmUgYWx3YXlzIGFz
c3VtZWQvaG9wZWQgdGhhdCBob3RwbHVnLXJlbGF0ZWQgdGhpbmdzIHNob3VsZAo+Pj4gYmUgc3Vm
ZmljaWVudGx5IHdlbGwtc3BlY2lmaWVkIGluIFVFRkkgdGhhdCAiZG8gd2hhdGV2ZXIgeDg2L0lB
LTY0IGRvIgo+Pj4gd291bGQgYmUgZW5vdWdoIGZvciB1cy4KPj4KPj4gQXMgZmFyIGFzIEkgY2Fu
IHNlZSBpbiBVRUZJIHYyLjggLS0gYW5kIEkgaGFkIGNoZWNrZWQgdGhlIHNwZWMgYmVmb3JlCj4+
IGR1bXBpbmcgdGhlIHRhYmxlIHdpdGggdGhlIG1hbnkgcXVlc3Rpb24gbWFya3Mgb24gU2hhbWVl
ciAtLSwgYWxsIHRoZQo+PiBob3QtcGx1ZyBsYW5ndWFnZSBpbiB0aGUgc3BlYyByZWZlcnMgdG8g
VVNCIGFuZCBQQ0kgaG90LXBsdWcgaW4gdGhlCj4+IHByZWJvb3QgZW52aXJvbm1lbnQuIFRoZXJl
IGlzIG5vdCBhIHNpbmdsZSB3b3JkIGFib3V0IGhvdC1wbHVnIGF0IE9TCj4+IHJ1bnRpbWUgKHJl
Z2FyZGluZyBhbnkgZGV2aWNlIG9yIGNvbXBvbmVudCB0eXBlKSwgbm9yIGFib3V0IG1lbW9yeQo+
PiBob3QtcGx1ZyAoYXQgYW55IHRpbWUpLgo+Pgo+PiBMb29raW5nIHRvIHg4NiBhcHBlYXJzIHZh
bGlkIC0tIHNvIHdoYXQgZG9lcyB0aGUgTGludXgga2VybmVsIGV4cGVjdCBvbgo+PiB0aGF0IGFy
Y2hpdGVjdHVyZSwgaW4gdGhlICJBQ1BJIiByb3dzIG9mIHRoZSB0YWJsZT8KPiAKPiBJIGNvdWxk
IG9ubHkgYW5zd2VyIGZyb20gUUVNVSB4ODYgcGVyc3BlY3RpdmUuCj4gUUVNVSBmb3IgeDg2IGd1
ZXN0cyBjdXJyZW50bHkgZG9lc24ndCBhZGQgaG90LXBsdWdnYWJsZSBSQU0gaW50byBFODIwCj4g
YmVjYXVzZSBvZiBkaWZmZXJlbnQgbGludXggZ3Vlc3RzIHRlbmQgdG8gY2FubmliYWxpemUgaXQs
IG1ha2luZyBpdCBub24KPiB1bnBsdWdnYWJsZS4gVGhlIGxhc3QgY3VscHJpdCBJIHJlY2FsbCB3
YXMgS0FTTFIuCj4gCj4gU28gSSdkIHJlZnJhaW4gZnJvbSByZXBvcnRpbmcgaG90cGx1Z2dhYmxl
IFJBTSBpbiBHZXRNZW1vcnlNYXAoKSBpZgo+IGl0J3MgcG9zc2libGUgKGl0J3MgcHJvYmFibHkg
aGFjayAoc3BlYyBkZW9zbid0IHNheSBhbnl0aGluZyBhYm91dCBpdCkKPiBidXQgaXQgbW9zdGx5
IHdvcmtzIGZvciBMaW51eCAocGx1Zy91bnBsdWcpIGFuZCBXaW5kb3dzIGd1ZXN0IGFsc28KPiBm
aW5lIHdpdGggcGx1ZyBwYXJ0IChubyB1bnBsdWcgdGhlcmUpKS4KCkkgY2FuIGFjY2VwdCB0aGlz
IGFzIGEgcGVyZmVjdGx5IHZhbGlkIGRlc2lnbi4gV2hpY2ggd291bGQgbWVhbiwgUUVNVSBzaG91
bGQgbWFyayBlYWNoIGhvdHBsdWdnYWJsZSBSQU0gcmFuZ2UgaW4gdGhlIERUQiBmb3IgdGhlIGZp
cm13YXJlIHdpdGggdGhlIHNwZWNpYWwgbmV3IHByb3BlcnR5LCByZWdhcmRsZXNzIG9mIGl0cyBp
bml0aWFsICgiY29sZCIpIHBsdWdnZWQtbmVzcywgYW5kIHRoZW4gdGhlIGZpcm13YXJlIHdpbGwg
bm90IGV4cG9zZSB0aGUgcmFuZ2UgaW4gdGhlIEdDRCBtZW1vcnkgc3BhY2UgbWFwLCBhbmQgY29u
c2VxdWVudGx5IGluIHRoZSBVRUZJIG1lbW1hcCBlaXRoZXIuCgpJT1csIG91ciB0YWJsZSBpcywg
dGh1cyBmYXI6CgpPUyBib290IChEVC9BQ1BJKSAgaG90cGx1Z2dhYmxlICYgLi4uICBHZXRNZW1v
cnlNYXAoKSBzaG91bGQgcmVwb3J0IGFzICBEVC9BQ1BJIHNob3VsZCByZXBvcnQgYXMKLS0tLS0t
LS0tLS0tLS0tLS0gIC0tLS0tLS0tLS0tLS0tLS0tLSAgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLSAgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCkRUICAgICAgICAgICAgICAgICBwcmVz
ZW50ICAgICAgICAgICAgIEFCU0VOVCAgICAgICAgICAgICAgICAgICAgICAgICAgID8KRFQgICAg
ICAgICAgICAgICAgIGFic2VudCAgICAgICAgICAgICAgQUJTRU5UICAgICAgICAgICAgICAgICAg
ICAgICAgICAgPwpBQ1BJICAgICAgICAgICAgICAgcHJlc2VudCAgICAgICAgICAgICBBQlNFTlQg
ICAgICAgICAgICAgICAgICAgICAgICAgICBQUkVTRU5UCkFDUEkgICAgICAgICAgICAgICBhYnNl
bnQgICAgICAgICAgICAgIEFCU0VOVCAgICAgICAgICAgICAgICAgICAgICAgICAgIEFCU0VOVAoK
SW4gdGhlIGZpcm13YXJlLCBJIG9ubHkgbmVlZCB0byBjYXJlIGFib3V0IHRoZSBHZXRNZW1vcnlN
YXAoKSBjb2x1bW4sIHNvIEkgY2FuIHdvcmsgd2l0aCB0aGlzLiBDYW4gc29tZW9uZSBwbGVhc2Ug
ZmlsZSBhIGZlYXR1cmUgcmVxdWVzdCBhdCA8aHR0cHM6Ly9idWd6aWxsYS50aWFub2NvcmUub3Jn
Lz4sIGZvciB0aGUgQXJtVmlydFBrZyBQYWNrYWdlLCB3aXRoIHRoZXNlIGRldGFpcz8KClRoYW5r
cwpMYXN6bG8KCj4gCj4gQXMgZm9yIHBoeXNpY2FsIHN5c3RlbXMsIHRoZXJlIGFyZSBvdXQgdGhl
cmUgb25lcyB0aGF0IGRvIHJlcG9ydAo+IGhvdHBsdWdnYWJsZSBSQU0gaW4gR2V0TWVtb3J5TWFw
KCkuCj4gCj4+IFNoYW1lZXI6IGlmIHlvdSAoSHVhd2VpKSBhcmUgcmVwcmVzZW50ZWQgb24gdGhl
IFVTV0cgLyBBU1dHLCBJIHN1Z2dlc3QKPj4gcmUtcmFpc2luZyB0aGUgcXVlc3Rpb24gb24gdGhv
c2UgbGlzdHMgdG9vOyBhdCBsZWFzdCB0aGUgIkFDUEkiIHJvd3Mgb2YKPj4gdGhlIHRhYmxlLgo+
Pgo+PiBUaGFua3MhCj4+IExhc3psbwo+Pgo+Pj4KPj4+IFJvYmluLgo+Pj4KPj4+PiAoSGkgTGFz
emxvL0lnb3IvRXJpYywgcGxlYXNlIGZlZWwgZnJlZSB0byBhZGQvY2hhbmdlIGlmIEkgaGF2ZSBt
aXNzZWQKPj4+PiBhbnkgdmFsaWQKPj4+PiBwb2ludHMgYWJvdmUpLgo+Pj4+Cj4+Pj4gVGhhbmtz
LAo+Pj4+IFNoYW1lZXIKPj4+PiBbMF0gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9jb3Zl
ci8xMDg5MDkxOS8KPj4+PiBbMV0gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wYXRjaC8x
MDg2MzI5OS8KPj4+PiBbMl0gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wYXRjaC8xMDg5
MDkzNy8KPj4+Pgo+Pj4+Cj4+Cj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
