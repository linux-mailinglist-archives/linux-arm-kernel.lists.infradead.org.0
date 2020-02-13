Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 866D115C11E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 16:12:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=W8nbR406+whf9vhFqrtHkRZDHAAw3P1DFhJdrbudlNw=; b=L29MpJk97eVPXsZj5i7ZE1WhW
	bZR5PdIY8SdGTgi0g7GUH+vfeIrPANk1vepaQggwdeL9prkjBCP+bEHWBVu9Y6IB8hf/mRn67Crgp
	DkGh9qsKCMzJxr7GzWQ89YfjWmmQ49M7p3JS9kORQmzLcVujd1GxY5lnsh7Le49Vz+2HlRmME/ssj
	ugY0z26tUKPKZ7VSI36+0pamT4r+T+IpvbOJ4JA0XYg676LB+6SVJKR39hum8+Zcv75S2ecbOC99r
	BBYQtAqy3AdgCNa72puWgVgVVBG5aCNMFkXEZjxGg0wvTwpaMA7PzVfF9jqXV6ATcVN1c5CsaR5vn
	nUYpnSiEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2GAJ-00074i-Gp; Thu, 13 Feb 2020 15:12:31 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2GAA-00073V-KM
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 15:12:24 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 87457483DF8DF9ECD8F4;
 Thu, 13 Feb 2020 23:11:59 +0800 (CST)
Received: from [127.0.0.1] (10.173.222.27) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.439.0; Thu, 13 Feb 2020
 23:11:52 +0800
Subject: Re: [PATCH v2 3/6] irqchip/gic-v4.1: Ensure L2 vPE table is allocated
 at RD level
To: Marc Zyngier <maz@kernel.org>
References: <20200206075711.1275-1-yuzenghui@huawei.com>
 <20200206075711.1275-4-yuzenghui@huawei.com>
 <2f6a27ac57aef9b948952c210c9a5882@kernel.org>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <b1cdce3f-0c0e-8b78-0fe0-f4114190caa3@huawei.com>
Date: Thu, 13 Feb 2020 23:11:51 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <2f6a27ac57aef9b948952c210c9a5882@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_071222_834156_4C7E0B25 
X-CRM114-Status: GOOD (  21.04  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: jason@lakedaemon.net, linux-kernel@vger.kernel.org,
 wanghaibin.wang@huawei.com, tglx@linutronix.de, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyYywKCk9uIDIwMjAvMi8xMyAyMjoyMiwgTWFyYyBaeW5naWVyIHdyb3RlOgo+IEhpIFpl
bmdodWksCj4gCj4gT24gMjAyMC0wMi0wNiAwNzo1NywgWmVuZ2h1aSBZdSB3cm90ZToKPj4gSW4g
R0lDdjQsIHdlIHdpbGwgZW5zdXJlIHRoYXQgbGV2ZWwyIHZQRSB0YWJsZSBtZW1vcnkgaXMgYWxs
b2NhdGVkCj4+IGZvciB0aGUgc3BlY2lmaWVkIHZwZV9pZCBvbiBhbGwgdjQgSVRTLCBpbiBpdHNf
YWxsb2NfdnBlX3RhYmxlKCkuCj4+IFRoaXMgc3RpbGwgd29ya3Mgd2VsbCBmb3IgdGhlIHR5cGlj
YWwgR0lDdjQuMSBpbXBsZW1lbnRhdGlvbiwgd2hlcmUKPj4gdGhlIG5ldyB2UEUgdGFibGUgaXMg
c2hhcmVkIGJldHdlZW4gdGhlIElUU3MgYW5kIHRoZSBSRHMuCj4+Cj4+IFRvIG1ha2UgaXQgZXhw
bGljaXQsIGxldCB1cyBpbnRyb2R1Y2UgYWxsb2NhdGVfdnBlX2wyX3RhYmxlKCkgdG8KPj4gbWFr
ZSBzdXJlIHRoYXQgdGhlIEwyIHRhYmxlcyBhcmUgYWxsb2NhdGVkIG9uIGFsbCB2NC4xIFJEcy4g
V2UncmUKPj4gbGlrZWx5IG5vdCBuZWVkIHRvIGFsbG9jYXRlIG1lbW9yeSBpbiBpdCBiZWNhdXNl
IHRoZSB2UEUgdGFibGUgaXMKPj4gc2hhcmVkIGFuZCAoTDIgdGFibGUgaXMpIGFscmVhZHkgYWxs
b2NhdGVkIGF0IElUUyBsZXZlbCwgZXhjZXB0Cj4+IGZvciB0aGUgY2FzZSB3aGVyZSB0aGUgSVRT
IGRvZXNuJ3Qgc2hhcmUgYW55dGhpbmcgKHNheSBTVlBFVCA9PSAwLAo+PiBwcmFjdGljYWxseSB1
bmxpa2VseSBidXQgYXJjaGl0ZWN0dXJhbGx5IGFsbG93ZWQpLgo+Pgo+PiBUaGUgaW1wbGVtZW50
YXRpb24gb2YgYWxsb2NhdGVfdnBlX2wyX3RhYmxlKCkgaXMgbW9zdGx5IGNvcGllZCBmcm9tCj4+
IGl0c19hbGxvY190YWJsZV9lbnRyeSgpLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBaZW5naHVpIFl1
IDx5dXplbmdodWlAaHVhd2VpLmNvbT4KPj4gLS0tCj4+IMKgZHJpdmVycy9pcnFjaGlwL2lycS1n
aWMtdjMtaXRzLmMgfCA4MCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+PiDCoDEg
ZmlsZSBjaGFuZ2VkLCA4MCBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2lycWNoaXAvaXJxLWdpYy12My1pdHMuYyAKPj4gYi9kcml2ZXJzL2lycWNoaXAvaXJxLWdpYy12
My1pdHMuYwo+PiBpbmRleCAwZjFmZTU2Y2UwYWYuLmFlNGU3YjM1NWI0NiAxMDA2NDQKPj4gLS0t
IGEvZHJpdmVycy9pcnFjaGlwL2lycS1naWMtdjMtaXRzLmMKPj4gKysrIGIvZHJpdmVycy9pcnFj
aGlwL2lycS1naWMtdjMtaXRzLmMKPj4gQEAgLTI0NDMsNiArMjQ0Myw3MiBAQCBzdGF0aWMgdTY0
IAo+PiBpbmhlcml0X3ZwZV9sMV90YWJsZV9mcm9tX3JkKGNwdW1hc2tfdCAqKm1hc2spCj4+IMKg
wqDCoMKgIHJldHVybiAwOwo+PiDCoH0KPj4KPj4gK3N0YXRpYyBib29sIGFsbG9jYXRlX3ZwZV9s
Ml90YWJsZShpbnQgY3B1LCB1MzIgaWQpCj4+ICt7Cj4+ICvCoMKgwqAgdm9pZCBfX2lvbWVtICpi
YXNlID0gZ2ljX2RhdGFfcmRpc3RfY3B1KGNwdSktPnJkX2Jhc2U7Cj4+ICvCoMKgwqAgdTY0IHZh
bCwgZ3BzeiwgbnBnOwo+PiArwqDCoMKgIHVuc2lnbmVkIGludCBwc3osIGVzeiwgaWR4Owo+PiAr
wqDCoMKgIHN0cnVjdCBwYWdlICpwYWdlOwo+PiArwqDCoMKgIF9fbGU2NCAqdGFibGU7Cj4+ICsK
Pj4gK8KgwqDCoCBpZiAoIWdpY19yZGlzdHMtPmhhc19ydnBlaWQpCj4+ICvCoMKgwqDCoMKgwqDC
oCByZXR1cm4gdHJ1ZTsKPj4gKwo+PiArwqDCoMKgIHZhbMKgID0gZ2l0c19yZWFkX3Zwcm9wYmFz
ZXIoYmFzZSArIFNaXzEyOEsgKyBHSUNSX1ZQUk9QQkFTRVIpOwo+IAo+IEhhdmluZyByZWJhc2Vk
IHRoZSByZXN0IG9mIHRoZSBHSUN2NC4xIHNlcmllcyBvbiB0b3Agb2YgLXJjMSwgSSd2ZSBoaXQg
YSAKPiBzbWFsbAo+IGlzc3VlIHJpZ2h0IGhlcmUuIEkgcnVuIGEgRlZQIG1vZGVsIHRoYXQgb25s
eSBzcGF3bnMgNCBDUFVzLCB3aGlsZSB0aGUgCj4gRFQgaGFzCj4gOCBvZiB0aGVtLiBUaGlzIG1l
YW5zIHRoYXQgb25saW5lX2NwdXMgPSA0LCBhbmQgcG9zc2libGVfY3B1cyA9IDguCj4gCj4gU28g
aW4gbXkgY2FzZSwgaGFsZiBvZiB0aGUgUkRzIGhhdmUgYmFzZSA9PSBOVUxMLCBhbmQgdGhpbmdz
IHN0b3AgcXVpY2tseS4KCkFoLCBzbyB0aGlzIG1heSBhbHNvIGJlIHdoeSB3ZSBjaGVjayAnIWJh
c2UnIGZvciBlYWNoIHBvc3NpYmxlIENQVSBpbgppbmhlcml0X3ZwZV9sMV90YWJsZV9mcm9tX3Jk
KCkuIEkgZGlkbid0IHRoaW5rIGFib3V0IGl0IGF0IHRoYXQgdGltZS4KCj4gCj4gSSBwbGFuIHRv
IHF1ZXVlIHRoZSBmb2xsb3dpbmc6Cj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvaXJxY2hpcC9p
cnEtZ2ljLXYzLWl0cy5jIAo+IGIvZHJpdmVycy9pcnFjaGlwL2lycS1naWMtdjMtaXRzLmMKPiBp
bmRleCBkODVkYzhkY2IwYWQuLjc2NTZiMzUzYTk1ZiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2ly
cWNoaXAvaXJxLWdpYy12My1pdHMuYwo+ICsrKyBiL2RyaXZlcnMvaXJxY2hpcC9pcnEtZ2ljLXYz
LWl0cy5jCj4gQEAgLTI1MjYsNiArMjUyNiwxMCBAQCBzdGF0aWMgYm9vbCBhbGxvY2F0ZV92cGVf
bDJfdGFibGUoaW50IGNwdSwgdTMyIGlkKQo+ICDCoMKgwqDCoCBpZiAoIWdpY19yZGlzdHMtPmhh
c19ydnBlaWQpCj4gIMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIHRydWU7Cj4gCj4gK8KgwqDCoCAv
KiBTa2lwIG5vbi1wcmVzZW50IENQVXMgKi8KPiArwqDCoMKgIGlmICghYmFzZSkKPiArwqDCoMKg
wqDCoMKgwqAgcmV0dXJuIHRydWU7Cj4gKwo+ICDCoMKgwqDCoCB2YWzCoCA9IGdpY3JfcmVhZF92
cHJvcGJhc2VyKGJhc2UgKyBTWl8xMjhLICsgR0lDUl9WUFJPUEJBU0VSKTsKPiAKPiAgwqDCoMKg
wqAgZXN6wqAgPSBGSUVMRF9HRVQoR0lDUl9WUFJPUEJBU0VSXzRfMV9FTlRSWV9TSVpFLCB2YWwp
ICsgMTsKClRoYW5rcyBmb3IgZml4aW5nIHRoZSBzZWNvbmQgYnVnIGZvciB0aGlzIHBhdGNoIDot
KQoKClplbmdodWkKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
