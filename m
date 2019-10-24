Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF32AE303F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 13:22:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=856UFNF0/8x558F1DsSwZRYWqcoG7Y3G7GxZ70xdFug=; b=RW4KLFlwvZhIpT
	oe/J2B7V3QMM5A1U462OVlxbfTy4AeKKG6bUF0euKFDWQODri7jPtoP/3ITxVuzSpy+YgzSFLcYE+
	n5GVoTH8g7D/jBs8Jvkzta8FFSNPcGx6BiFt0/nRGJv7pLALpCLJC/wfKj18kLy8peqA7QZfjAkDy
	bYGB2IFBdYY4Zp7xqKPWuaJwTHZfaEW6yKdzI3crOh6/MahS5ltW2mgov9AYQr93u2n8HmDy2ZRRb
	qmZzONYmfK7OP1b+cKj5h3HtGRFylYmlVteUmk53QFIE0+3oY8C7JydFj12fFYDG+M3zTofszcX0i
	AwF47C0G6nOHw74SKJcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNbCK-0007g3-Q1; Thu, 24 Oct 2019 11:22:32 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNbC9-0007W2-8t
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 11:22:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 85B66B57;
 Thu, 24 Oct 2019 04:22:10 -0700 (PDT)
Received: from [10.1.194.43] (e112269-lin.cambridge.arm.com [10.1.194.43])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7790D3F71A;
 Thu, 24 Oct 2019 04:22:09 -0700 (PDT)
From: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH] KVM: arm64: Select SCHED_INFO before SCHEDSTATS
To: Marc Zyngier <maz@kernel.org>, Mao Wenan <maowenan@huawei.com>
References: <20191023032254.159510-1-maowenan@huawei.com>
 <26ee413334937b9530bc8f033fe378ec@www.loen.fr>
Message-ID: <6d037fa1-5e8b-38cd-e947-7547c1e8dd15@arm.com>
Date: Thu, 24 Oct 2019 12:22:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <26ee413334937b9530bc8f033fe378ec@www.loen.fr>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_042221_401370_294172A6 
X-CRM114-Status: GOOD (  21.28  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: catalin.marinas@arm.com, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, will@kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjMvMTAvMjAxOSAxNzo1MSwgTWFyYyBaeW5naWVyIHdyb3RlOgo+IE9uIDIwMTktMTAtMjMg
MDQ6MjIsIE1hbyBXZW5hbiB3cm90ZToKPj4gSWYgS1ZNPXksIGl0IHdpbGwgc2VsZWN0IFNDSEVE
U1RBVFMsIGJlbG93IGVycm9zIGNhbgo+PiBiZSBzZWVuOgo+PiBrZXJuZWwvc2NoZWQvc3RhdHMu
aDogSW4gZnVuY3Rpb24gcnFfc2NoZWRfaW5mb19hcnJpdmU6Cj4+IGtlcm5lbC9zY2hlZC9zdGF0
cy5oOjEyOjIwOiBlcnJvcjogc3RydWN0IHNjaGVkX2luZm8KPj4gaGFzIG5vIG1lbWJlciBuYW1l
ZCBydW5fZGVsYXkKPj4gwqDCoCBycS0+cnFfc2NoZWRfaW5mby5ydW5fZGVsYXkgKz0gZGVsdGE7
Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIF4KPj4ga2VybmVsL3Nj
aGVkL3N0YXRzLmg6MTM6MjA6IGVycm9yOiBzdHJ1Y3Qgc2NoZWRfaW5mbwo+PiBoYXMgbm8gbWVt
YmVyIG5hbWVkIHBjb3VudAo+PiDCoMKgIHJxLT5ycV9zY2hlZF9pbmZvLnBjb3VudCsrOwo+PiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBeCj4+IGtlcm5lbC9zY2hlZC9z
dGF0cy5oOiBJbiBmdW5jdGlvbiBycV9zY2hlZF9pbmZvX2RlcXVldWVkOgo+PiBrZXJuZWwvc2No
ZWQvc3RhdHMuaDozMToyMDogZXJyb3I6IHN0cnVjdCBzY2hlZF9pbmZvIGhhcwo+PiBubyBtZW1i
ZXIgbmFtZWQgcnVuX2RlbGF5Cj4+IMKgwqAgcnEtPnJxX3NjaGVkX2luZm8ucnVuX2RlbGF5ICs9
IGRlbHRhOwo+Pgo+PiBUaGVzZSBhcmUgYmVjYXVzZSBDT05GSUdfU0NIRURfSU5GTyBpcyBub3Qg
c2V0LCBUaGlzIHBhdGNoCj4+IGlzIHRvIHNlbGVjdCBTQ0hFRF9JTkZPIGJlZm9yZSBTQ0hFRFNU
QVRTLgo+Pgo+PiBGaXhlczogODU2NGQ2MzcyYTdkICgiS1ZNOiBhcm02NDogU3VwcG9ydCBzdG9s
ZW4gdGltZSByZXBvcnRpbmcgdmlhCj4+IHNoYXJlZCBzdHJ1Y3R1cmUiKQo+PiBTaWduZWQtb2Zm
LWJ5OiBNYW8gV2VuYW4gPG1hb3dlbmFuQGh1YXdlaS5jb20+Cj4+IC0tLQo+PiDCoGFyY2gvYXJt
NjQva3ZtL0tjb25maWcgfCAxICsKPj4gwqAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykK
Pj4KPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQva3ZtL0tjb25maWcgYi9hcmNoL2FybTY0L2t2
bS9LY29uZmlnCj4+IGluZGV4IGQ4Yjg4ZTQuLjNjNDZlYWMgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gv
YXJtNjQva3ZtL0tjb25maWcKPj4gKysrIGIvYXJjaC9hcm02NC9rdm0vS2NvbmZpZwo+PiBAQCAt
MzksNiArMzksNyBAQCBjb25maWcgS1ZNCj4+IMKgwqDCoMKgIHNlbGVjdCBJUlFfQllQQVNTX01B
TkFHRVIKPj4gwqDCoMKgwqAgc2VsZWN0IEhBVkVfS1ZNX0lSUV9CWVBBU1MKPj4gwqDCoMKgwqAg
c2VsZWN0IEhBVkVfS1ZNX1ZDUFVfUlVOX1BJRF9DSEFOR0UKPj4gK8KgwqDCoCBzZWxlY3QgU0NI
RURfSU5GTwo+PiDCoMKgwqDCoCBzZWxlY3QgU0NIRURTVEFUUwo+PiDCoMKgwqDCoCAtLS1oZWxw
LS0tCj4+IMKgwqDCoMKgwqDCoCBTdXBwb3J0IGhvc3RpbmcgdmlydHVhbGl6ZWQgZ3Vlc3QgbWFj
aGluZXMuCj4gCj4gU0NIRURTVEFUUyBpcyByZWFsbHkgYW4gb2RkIGNob2ljZS4gSGVyZSdzIHdo
YXQgSSBnZXQgYWZ0ZXIgZGlzYWJsaW5nCj4gREVCVUdfS0VSTkVMIChmcm9tIGRlZmNvbmZpZyk6
Cj4gCj4gV0FSTklORzogdW5tZXQgZGlyZWN0IGRlcGVuZGVuY2llcyBkZXRlY3RlZCBmb3IgU0NI
RURTVEFUUwo+IMKgIERlcGVuZHMgb24gW25dOiBERUJVR19LRVJORUwgWz1uXSAmJiBQUk9DX0ZT
IFs9eV0KPiDCoCBTZWxlY3RlZCBieSBbeV06Cj4gwqAgLSBLVk0gWz15XSAmJiBWSVJUVUFMSVpB
VElPTiBbPXldICYmIE9GIFs9eV0KPiAKPiBXQVJOSU5HOiB1bm1ldCBkaXJlY3QgZGVwZW5kZW5j
aWVzIGRldGVjdGVkIGZvciBTQ0hFRFNUQVRTCj4gwqAgRGVwZW5kcyBvbiBbbl06IERFQlVHX0tF
Uk5FTCBbPW5dICYmIFBST0NfRlMgWz15XQo+IMKgIFNlbGVjdGVkIGJ5IFt5XToKPiDCoCAtIEtW
TSBbPXldICYmIFZJUlRVQUxJWkFUSU9OIFs9eV0gJiYgT0YgWz15XQo+IAo+IFdBUk5JTkc6IHVu
bWV0IGRpcmVjdCBkZXBlbmRlbmNpZXMgZGV0ZWN0ZWQgZm9yIFNDSEVEU1RBVFMKPiDCoCBEZXBl
bmRzIG9uIFtuXTogREVCVUdfS0VSTkVMIFs9bl0gJiYgUFJPQ19GUyBbPXldCj4gwqAgU2VsZWN0
ZWQgYnkgW3ldOgo+IMKgIC0gS1ZNIFs9eV0gJiYgVklSVFVBTElaQVRJT04gWz15XSAmJiBPRiBb
PXldCj4gCj4gU28gY2xlYXJseSBTQ0hFRFNUQVRTIGlzbid0IG1lYW50IHRvIGJlIHNlbGVjdGVk
IG9uIGl0cyBvd24uCj4gCj4gV2UgY2FuIGVpdGhlciBqdXN0IHNlbGVjdCBTQ0hFRF9JTkZPICh3
aGljaCAqbm9ib2R5IGVsc2UgZG9lcyopLCBvciBnbwo+IHRoZSBmdWxsIHg4NiB3YXkgd2hpY2gg
c2VsZWN0cyBUQVNLX0RFTEFZX0FDQ1QgKGFuZCB0aHVzIGRlcGVuZHMgb24KPiBORVQgJiYgTVVM
VElVU0VSKS4gTXkgZ3V0IGZlZWxpbmcgaXMgdGhhdCB3ZSBzaG91bGRuJ3QgZGV2aWF0ZSB0b28g
bXVjaAo+IGZyb20geDg2Li4uCj4gCj4gVGhvdWdodHM/CgpJIHN1c3BlY3QgeW91J3JlIHJpZ2h0
IC0gVEFTS19ERUxBWV9BQ0NUIHNlZW1zIHRvIGJlIHRoZSBjbG9zZXN0IHRvIHdoYXQKd2UgbmVl
ZC4gU0NIRURTVEFUUyBoYXMgdGhlICJhZHZhbnRhZ2UiIG9mIGZvcmNpbmcgc2NoZWRfaW5mb19v
bigpIHRvCnJldHVybiB0cnVlIC0gcHJldmVudGluZyBpdCBmcm9tIGJlaW5nIGRpc2FibGVkLiBC
dXQgd2UgY2xlYXJseSBkb24ndAp3YW50IHRvIHJlcXVpcmUgQ09ORklHX0RFQlVHX0tFUk5FTCBm
b3IgQ09ORklHX0tWTS4KClRoZSBuZXh0IGJlc3QgaXMgQ09ORklHX1RBU0tfREVMQVlfQUNDVCB3
aGljaCBlbmFibGVzIHNjaGVkX2luZm9fb24oKQp1bmxlc3MgIm5vZGVsYXlhY2N0IiBpcyBzcGVj
aWZpZWQgb24gdGhlIGNtZGxpbmUuIEl0IHNlZW1zIHJlYXNvbmFibGUKdGhhdCB0aGUgY21kbGlu
ZSBvcHRpb24gbWlnaHQgYnJlYWsgc3RvbGVuIHRpbWUuCgpTbyBsZXQncyBqdXN0IGNvcHkgeDg2
OgoKLS0tLS04PC0tLS0tCkZyb20gOTE1ODkzZjVjNTcyNDFjYzI5ZDkwNzY5YjNmNzIwYTYxMzUy
NzdkNyBNb24gU2VwIDE3IDAwOjAwOjAwIDIwMDEKRnJvbTogU3RldmVuIFByaWNlIDxzdGV2ZW4u
cHJpY2VAYXJtLmNvbT4KRGF0ZTogVGh1LCAyNCBPY3QgMjAxOSAxMjoxNDozNiArMDEwMApTdWJq
ZWN0OiBbUEFUQ0hdIEtWTTogYXJtNjQ6IFNlbGVjdCBUQVNLX0RFTEFZX0FDQ1QgcmF0aGVyIHRo
YW4gU0NIRURTVEFUUwoKU0NIRURTVEFUUyByZXF1aXJlcyBERUJVR19LRVJORUwgKGFuZCBQUk9D
X0ZTKSBhbmQgdGhlcmVmb3JlIGlzbid0IGEKZ29vZCBjaG9pY2UgZm9yIGVuYWJsaW5nIHRoZSBz
Y2hlZHVsaW5nIHN0YXRpc3RpY3MgcmVxdWlyZWQgZm9yIHN0b2xlbgp0aW1lLgoKSW5zdGVhZCBt
YXRjaCB0aGUgeDg2IGNvbmZpZ3VyYXRpb24gYW5kIHNlbGVjdCBUQVNLX0RFTEFZX0FDQ1QuIFRo
aXMKYWRkcyB0aGUgZGVwZW5kZW5jaWVzIG9mIE5FVCAmJiBNVUxUSVVTRVIgZm9yIGFybTY0IEtW
TS4KClN1Z2dlc3RlZC1ieTogTWFyYyBaeW5naWVyIDxtYXpAa2VybmVsLm9yZz4KRml4ZXM6IDg1
NjRkNjM3MmE3ZCAoIktWTTogYXJtNjQ6IFN1cHBvcnQgc3RvbGVuIHRpbWUgcmVwb3J0aW5nIHZp
YSBzaGFyZWQgc3RydWN0dXJlIikKU2lnbmVkLW9mZi1ieTogU3RldmVuIFByaWNlIDxzdGV2ZW4u
cHJpY2VAYXJtLmNvbT4KLS0tCiBhcmNoL2FybTY0L2t2bS9LY29uZmlnIHwgNCArKystCiAxIGZp
bGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEv
YXJjaC9hcm02NC9rdm0vS2NvbmZpZyBiL2FyY2gvYXJtNjQva3ZtL0tjb25maWcKaW5kZXggZDhi
ODhlNDBkMjIzLi4xZmZiMzAwZTJkOTIgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQva3ZtL0tjb25m
aWcKKysrIGIvYXJjaC9hcm02NC9rdm0vS2NvbmZpZwpAQCAtMjEsNiArMjEsOCBAQCBpZiBWSVJU
VUFMSVpBVElPTgogY29uZmlnIEtWTQogCWJvb2wgIktlcm5lbC1iYXNlZCBWaXJ0dWFsIE1hY2hp
bmUgKEtWTSkgc3VwcG9ydCIKIAlkZXBlbmRzIG9uIE9GCisJIyBmb3IgVEFTS1NUQVRTL1RBU0tf
REVMQVlfQUNDVDoKKwlkZXBlbmRzIG9uIE5FVCAmJiBNVUxUSVVTRVIKIAlzZWxlY3QgTU1VX05P
VElGSUVSCiAJc2VsZWN0IFBSRUVNUFRfTk9USUZJRVJTCiAJc2VsZWN0IEhBVkVfS1ZNX0NQVV9S
RUxBWF9JTlRFUkNFUFQKQEAgLTM5LDcgKzQxLDcgQEAgY29uZmlnIEtWTQogCXNlbGVjdCBJUlFf
QllQQVNTX01BTkFHRVIKIAlzZWxlY3QgSEFWRV9LVk1fSVJRX0JZUEFTUwogCXNlbGVjdCBIQVZF
X0tWTV9WQ1BVX1JVTl9QSURfQ0hBTkdFCi0Jc2VsZWN0IFNDSEVEU1RBVFMKKwlzZWxlY3QgVEFT
S19ERUxBWV9BQ0NUCiAJLS0taGVscC0tLQogCSAgU3VwcG9ydCBob3N0aW5nIHZpcnR1YWxpemVk
IGd1ZXN0IG1hY2hpbmVzLgogCSAgV2UgZG9uJ3Qgc3VwcG9ydCBLVk0gd2l0aCAxNksgcGFnZSB0
YWJsZXMgeWV0LCBkdWUgdG8gdGhlIG11bHRpcGxlCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
