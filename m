Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F43AE0FEA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 04:08:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=crVTTt3dk9UYgnYmV1z8JOapCFUMqYbJATgNhpW9KjQ=; b=Fy3SuP/IpeoAEOKGvoC77rLO3
	A7k0ZhJMiXhIQfloRxqyEyUHU8a+Q1NbzjGX4Kfa0AG4NcvuTnVkUeI6o2SQ0p5/e7bLGx+TKsYDp
	0cVqVWs8zUFQSKtzAF/cmzk5Yk7c4BUrOo+G6YdStibRNTjBSwOpQfKGRw+XYyFTT6zbN9PLzhdUk
	pWGob/zWIXRSPDVhoy7OD3xdbO/dq4LPnRr+IPLctym5Y9YHJONc1MzIYdhuBBD2jPzuN749ie0Zh
	Rbxzxvu1AEGo5N0P5acxyFrYDCORy/vIuB24hdG7zyLPjCOe152ffcBy7aENxC/+Q5xIJLzcd4WUE
	/bAGavaag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN64Y-0003G5-Vs; Wed, 23 Oct 2019 02:08:26 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN64Q-0003FO-Ua
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 02:08:20 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id EA9C3FFC6E3FBBFE7ED5;
 Wed, 23 Oct 2019 10:08:11 +0800 (CST)
Received: from [127.0.0.1] (10.184.12.158) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.439.0; Wed, 23 Oct 2019
 10:08:05 +0800
Subject: Re: [PATCH] irqchip/gic-v3-its: Use the exact ITSList for VMOVP
To: Marc Zyngier <maz@kernel.org>
References: <1571742366-21008-1-git-send-email-yuzenghui@huawei.com>
 <34e9236f057b22d49f40146b21f81282@www.loen.fr>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <708a2e9d-5992-63b9-8164-96a71f6838d0@huawei.com>
Date: Wed, 23 Oct 2019 10:08:02 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:64.0) Gecko/20100101
 Thunderbird/64.0
MIME-Version: 1.0
In-Reply-To: <34e9236f057b22d49f40146b21f81282@www.loen.fr>
Content-Language: en-US
X-Originating-IP: [10.184.12.158]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_190819_149236_FF8CE56D 
X-CRM114-Status: GOOD (  24.28  )
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
Cc: jason@lakedaemon.net, jiayanlei@huawei.com, wanghaibin.wang@huawei.com,
 tglx@linutronix.de, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyYywKCk9uIDIwMTkvMTAvMjIgMjA6NDQsIE1hcmMgWnluZ2llciB3cm90ZToKPiBIaSBa
ZW5naHVpLAo+IAo+IE9uIDIwMTktMTAtMjIgMTI6MDYsIFplbmdodWkgWXUgd3JvdGU6Cj4+IE9u
IGEgc3lzdGVtIHdpdGhvdXQgU2luZ2xlIFZNT1ZQIHN1cHBvcnQgKHNheSBHSVRTX1RZUEVSLlZN
T1ZQID09IDApLAo+PiB3ZSB3aWxsIG1hcCB2UEVzIG9ubHkgb24gSVRTcyB0aGF0IHdpbGwgYWN0
dWFsbHkgY29udHJvbCBpbnRlcnJ1cHRzCj4+IGZvciB0aGUgZ2l2ZW4gVk0uwqAgQW5kIHdoZW4g
bW92aW5nIGEgdlBFLCB0aGUgVk1PVlAgY29tbWFuZCB3aWxsIGJlCj4+IGlzc3VlZCBvbmx5IGZv
ciB0aG9zZSBJVFNzLgo+Pgo+PiBCdXQgd2hlbiBpc3N1aW5nIFZNT1ZQcyB3ZSBzZWVtZWQgZmFp
bCB0byBwcmVzZW50IHRoZSBleGFjdCBJVFNMaXN0Cj4+IHRvIElUU3Mgd2hvIGFyZSBhY3R1YWxs
eSBpbmNsdWRlZCBpbiB0aGUgc3luY2hyb25pemF0aW9uIG9wZXJhdGlvbi4KPj4gVGhlIGl0c19s
aXN0X21hcCB3ZSdyZSBjdXJyZW50bHkgdXNpbmcgaW5jbHVkZXMgYWxsIElUU3MgaW4gdGhlIHN5
c3RlbSwKPj4gZXZlbiB0aG91Z2ggc29tZSBvZiB0aGVtIGRvbid0IGhhdmUgdGhlIGNvcnJzcG9u
ZGluZyB2UEUgbWFwcGluZyBhdCBhbGwuCj4+Cj4+IEludHJvZHVjZSBnZXRfaXRzX2xpc3QoKSB0
byBnZXQgdGhlIHBlci1WTSBpdHNfbGlzdF9tYXAsIHRvIGluZGljYXRlCj4+IHdoaWNoIElUU3Mg
aGF2ZSB2UEUgbWFwcGluZ3MgZm9yIHRoZSBnaXZlbiBWTSwgYW5kIHVzZSB0aGlzIG1hcCBhcwo+
PiB0aGUgZXhwZWN0ZWQgSVRTTGlzdCB3aGVuIGJ1aWxkaW5nIFZNT1ZQLgo+Pgo+PiBTaWduZWQt
b2ZmLWJ5OiBaZW5naHVpIFl1IDx5dXplbmdodWlAaHVhd2VpLmNvbT4KPj4gLS0tCj4+Cj4+IEkg
aGF2ZW4ndCBzZWVuIGFueSBicm9rZW4gd2l0aCB0aGUgY3VycmVudCBpdHNfbGlzdF9tYXAsIGJ1
dCBiZWhhdmlvcgo+PiBtaWdodCBkaWZmZXIgYmV0d2VlbiBpbXBsZW1lbnRhdGlvbnMuwqAgTGV0
J3MgZG8gd2hhdCB0aGUgc3BlYyBleHBlY3RzCj4+IHVzIHRvIGRvIGFuZCB0cnkgbm90IHRvIGNv
bmZ1c2UgdGhlIGltcGxlbWVudGF0aW9uLsKgIE9yIGlzIHRoZXJlIGFueQo+PiBwb2ludHMgSSd2
ZSBtaXNzZWQ/Cj4gCj4gTm8sIEkgdGhpbmsgeW91J3JlIHJpZ2h0LCBhbmQgdGhpcyBpcyBqdXN0
IGFuIG92ZXJzaWdodCBvbiBteSBwYXJ0Ogo+IGZvciBleGFtcGxlLCB3ZSBzZWVtIHRvIGRvIHRo
ZSByaWdodCB0aGluZyB3aGVuIGhhbmRsaW5nIGEgZ3Vlc3QgaW52YWxsLAo+IHdoZXJlIHdlIHNj
YW4gdGhlIElUUyBub2RlcyBhbmQgb25seSBlbWl0IGEgdmludmFsbCBvbiBhbiBJVFMgdGhhdAo+
IGhhcyBWTFBJIG1hcHBlZCBpbi4KPiAKPiBJIGRvbid0IHRoaW5rIHRoaXMgaXMgbGlrZWx5IHRv
IGNhdXNlIGFueSBoYXJtIChhZnRlciBhbGwsIGEgRElTQ0FSRCBhbmQKPiBhIFZNT1ZQIGNvdWxk
IHJhY2UgYXQgYW55IHRpbWUpLCBidXQgaXQgaXMgY2VydGFpbmx5IGEgcGVyZm9ybWFuY2UgZ2Fp
bgo+IG5vdCB0byB0aHJvdyBleHRyYSBjb21tYW5kcyBhdCB1bnN1c3BlY3RpbmcgSVRTcy4gU28g
dGhhbmtzIGZvciBzcG90dGluZyAKPiB0aGlzLgoKSSBhZ3JlZSB0aGF0IGl0IHdpbGwgYmUgYSBw
ZXJmb3JtYW5jZSBnYWluIHdpdGggdGhpcyBwYXRjaCAtIHNpbmNlIGFmdGVyCnJlY2VpdmluZyBW
TU9WUCwgdGhlcmUgbWlnaHQgYmUgYSBzeW5jaHJvbml6YXRpb24gcHJvY2VzcyBhbW9uZyBhbGwg
SVRTcwppbmNsdWRlZCBpbiB0aGUgSVRTTGlzdCwgYnV0IHdhaXRpbmcgZm9yIHRob3NlIHVuc3Vz
cGVjdGluZyBvbmUgaXMKdG90YWxseSBwb2ludGxlc3MuCgo+IAo+IEEgY291cGxlIG9mIGNvbW1l
bnRzIGJlbG93OgoKVGhhbmtzIGZvciB0aGUgY29tbWVudHMuIEkgd2lsbCBkbyBhIHJlc3BpbiBh
bmQgc2VuZCBhIHYyIHNob3J0bHksIHdpdGgKKGhvcGVmdWxseSkgYWxsIG9mIHRoZW0gYWRkcmVz
c2VkLgoKPiAKPj4KPj4gwqBkcml2ZXJzL2lycWNoaXAvaXJxLWdpYy12My1pdHMuYyB8IDE1ICsr
KysrKysrKysrKysrLQo+PiDCoDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCAxIGRl
bGV0aW9uKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2lycWNoaXAvaXJxLWdpYy12My1p
dHMuYwo+PiBiL2RyaXZlcnMvaXJxY2hpcC9pcnEtZ2ljLXYzLWl0cy5jCj4+IGluZGV4IGM4MWRh
MjcwNDRiZi4uZWViZWU1ODhlYTMwIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2lycWNoaXAvaXJx
LWdpYy12My1pdHMuYwo+PiArKysgYi9kcml2ZXJzL2lycWNoaXAvaXJxLWdpYy12My1pdHMuYwo+
PiBAQCAtMTc1LDYgKzE3NSwxOSBAQCBzdGF0aWMgREVGSU5FX0lEQShpdHNfdnBlaWRfaWRhKTsK
Pj4gwqAjZGVmaW5lIGdpY19kYXRhX3JkaXN0X3JkX2Jhc2UoKcKgwqDCoCAoZ2ljX2RhdGFfcmRp
c3QoKS0+cmRfYmFzZSkKPj4gwqAjZGVmaW5lIGdpY19kYXRhX3JkaXN0X3ZscGlfYmFzZSgpwqDC
oMKgIChnaWNfZGF0YV9yZGlzdF9yZF9iYXNlKCkgKyAKPj4gU1pfMTI4SykKPj4KPj4gK3N0YXRp
YyBpbmxpbmUgdTE2IGdldF9pdHNfbGlzdChzdHJ1Y3QgaXRzX3ZtICp2bSkKPiAKPiBQbGVhc2Ug
ZHJvcCB0aGUgaW5saW5lLCB0aGUgY29tcGlsZXIgd2lsbCBkbyBpdCBmb3IgeW91Lgo+IAo+PiAr
ewo+PiArwqDCoMKgIHN0cnVjdCBpdHNfbm9kZSAqaXRzOwo+PiArwqDCoMKgIHVuc2lnbmVkIGxv
bmcgaXRzX2xpc3Q7Cj4+ICsKPj4gK8KgwqDCoCBsaXN0X2Zvcl9lYWNoX2VudHJ5KGl0cywgJml0
c19ub2RlcywgZW50cnkpIHsKPiAKPiBZb3UgcHJvYmFibHkgd2FudCB0byBza2lwIG5vbiB2NCBJ
VFNzLCBhcyB0aGV5IGRvbid0IGhhdmUgYSBsaXN0X25yIAo+IGFzc29jaWF0ZWQKPiB0byB0aGVt
IChhbmQgeW91J2QgcHJvYmFibHkgZW5kLXVwIGhpdHRpbmcgSVRTICMwIGZvciBubyBnb29kIHJl
YXNvbikuCj4gCj4+ICvCoMKgwqDCoMKgwqDCoCBpZiAodm0tPnZscGlfY291bnRbaXRzLT5saXN0
X25yXSkKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc2V0X2JpdChpdHMtPmxpc3RfbnIsICZp
dHNfbGlzdCk7Cj4gCj4gV2UgZG9uJ3QgbmVlZCB0byBiZSBhdG9taWMgaGVyZSwgc28gX19zZXRf
Yml0IHdvdWxkIGJlIGp1c3QgYXMgZmluZS4KPiAKPj4gK8KgwqDCoCB9Cj4+ICsKPj4gK8KgwqDC
oCByZXR1cm4gKHUxNilpdHNfbGlzdDsKPj4gK30KPj4gKwo+PiDCoHN0YXRpYyBzdHJ1Y3QgaXRz
X2NvbGxlY3Rpb24gKmRldl9ldmVudF90b19jb2woc3RydWN0IGl0c19kZXZpY2UgCj4+ICppdHNf
ZGV2LAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgdTMyIGV2ZW50KQo+PiDCoHsKPj4gQEAgLTk4Miw3ICs5OTUsNiBAQCBzdGF0aWMgdm9p
ZCBpdHNfc2VuZF92bW92cChzdHJ1Y3QgaXRzX3ZwZSAqdnBlKQo+PiDCoMKgwqDCoCBpbnQgY29s
X2lkID0gdnBlLT5jb2xfaWR4Owo+Pgo+PiDCoMKgwqDCoCBkZXNjLml0c192bW92cF9jbWQudnBl
ID0gdnBlOwo+PiAtwqDCoMKgIGRlc2MuaXRzX3Ztb3ZwX2NtZC5pdHNfbGlzdCA9ICh1MTYpaXRz
X2xpc3RfbWFwOwo+IAo+IENhcmVmdWwgaGVyZSwgeW91J3JlIGxlYXZpbmcgdGhlIGl0c19saXN0
IGZpZWxkIHVuaW5pdGlhbGl6ZWQsIGFuZCBpdAo+IHJlYWxseSBzaG91bGQgYmUgMCB3aGVuIEdJ
VFNfVFlQRVIuVk1PVlAgPT0gMSAoaS5lLiB3aGVuIGl0c19saXN0X21hcAo+IGlzIHplcm8pLiBK
dXN0IGluaXRpYWxpemUgdGhlIHdob2xlIGRlc2NyaXB0b3IgdG8gemVyby4KClllcywgdGhpcyBu
ZWVkcyB0byBiZSBmaXhlZCwgYXMgd2VsbCBhcyBpbml0aWFsaXplICJpdHNfbGlzdCIgdG8gemVy
bwppbiBnZXRfaXRzX2xpc3QoKS4KCgpUaGFua3MsCnplbmdodWkKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
