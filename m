Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A918450FE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 03:03:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MmV1siRdtqX/rwJX8dZmN3/7c1Z3EKtTHw4Ol/ulV2A=; b=hlvrrTk7k+dyQV
	D8A8S7KbWnaRMQifRl2TqPCt66ZOQOL/Svc2TKv6TF/xYiiWhbFhL/Gea8Rity6pbNM/n9x/fHuPm
	ReJh2AS+2XMZ6X7k2sP3uTK75G+/tEMHd15DqT4MoSLIZsxUOK4MHSpybR73q5YbGH3ZxlcJRwroB
	y9Rf4qvsnIlEBXsnSi8c/QTagYP75K6i6TcEEuBzoU+NRVNBM0ssd3Gzbdszc57Slqd3Ok1I39fnw
	t+3zEserCPN+ZUUFXi6NiUMjldSpTZ9WVtw1hsrH6nTRp1sWnJN2FogDjaOEfzImyfDCfwN1YayKi
	BLEGKc/3e6FNE95ruerA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbadI-0002QI-J1; Fri, 14 Jun 2019 01:03:56 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbad8-0002Pj-Ai
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 01:03:48 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 2D40C8FC07ADAE7E2CF3;
 Fri, 14 Jun 2019 09:03:40 +0800 (CST)
Received: from [127.0.0.1] (10.177.223.23) by DGGEMS403-HUB.china.huawei.com
 (10.3.19.203) with Microsoft SMTP Server id 14.3.439.0; Fri, 14 Jun 2019
 09:03:15 +0800
Subject: Re: [bug report] ACPI: Add new IORT functions to support MSI domain
 handling
To: Robin Murphy <robin.murphy@arm.com>, Dan Carpenter
 <dan.carpenter@oracle.com>, <tn@semihalf.com>
References: <20190613065410.GB16334@mwanda>
 <425b5d78-b38f-270b-94e2-7ece1e5498e5@arm.com>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <5f9fecb1-66de-b550-3f8e-097795a08efe@huawei.com>
Date: Fri, 14 Jun 2019 09:03:09 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <425b5d78-b38f-270b-94e2-7ece1e5498e5@arm.com>
Content-Language: en-US
X-Originating-IP: [10.177.223.23]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_180346_607992_39B273B8 
X-CRM114-Status: GOOD (  14.32  )
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
Cc: linux-acpi@vger.kernel.org, Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAxOS82LzEzIDE3OjMwLCBSb2JpbiBNdXJwaHkgd3JvdGU6Cj4gT24gMTMvMDYvMjAxOSAw
Nzo1NCwgRGFuIENhcnBlbnRlciB3cm90ZToKPj4gSGVsbG8gVG9tYXN6IE5vd2lja2ksCj4+Cj4+
IFRoZSBwYXRjaCA0YmYyZWZkMjZkNzY6ICJBQ1BJOiBBZGQgbmV3IElPUlQgZnVuY3Rpb25zIHRv
IHN1cHBvcnQgTVNJCj4+IGRvbWFpbiBoYW5kbGluZyIgZnJvbSBTZXAgMTIsIDIwMTYsIGxlYWRz
IHRvIHRoZSBmb2xsb3dpbmcgc3RhdGljCj4+IGNoZWNrZXIgd2FybmluZzoKPj4KPj4gwqDCoMKg
wqBkcml2ZXJzL2FjcGkvYXJtNjQvaW9ydC5jOjYyOCBpb3J0X2Rldl9maW5kX2l0c19pZCgpCj4+
IMKgwqDCoMKgd2FybjogYXJyYXkgb2ZmIGJ5IG9uZT8gJ2l0cy0+aWRlbnRpZmllcnNbaWR4XScK
Pj4KPj4gZHJpdmVycy9hY3BpL2FybTY0L2lvcnQuYwo+PiDCoMKgwqAgNTg5wqAgLyoqCj4+IMKg
wqDCoCA1OTDCoMKgICogaW9ydF9kZXZfZmluZF9pdHNfaWQoKSAtIEZpbmQgdGhlIElUUyBpZGVu
dGlmaWVyIGZvciBhIGRldmljZQo+PiDCoMKgwqAgNTkxwqDCoCAqIEBkZXY6IFRoZSBkZXZpY2Uu
Cj4+IMKgwqDCoCA1OTLCoMKgICogQHJlcV9pZDogRGV2aWNlJ3MgcmVxdWVzdGVyIElECj4+IMKg
wqDCoCA1OTPCoMKgICogQGlkeDogSW5kZXggb2YgdGhlIElUUyBpZGVudGlmaWVyIGxpc3QuCj4+
IMKgwqDCoCA1OTTCoMKgICogQGl0c19pZDogSVRTIGlkZW50aWZpZXIuCj4+IMKgwqDCoCA1OTXC
oMKgICoKPj4gwqDCoMKgIDU5NsKgwqAgKiBSZXR1cm5zOiAwIG9uIHN1Y2Nlc3MsIGFwcHJvcHJp
YXRlIGVycm9yIHZhbHVlIG90aGVyd2lzZQo+PiDCoMKgwqAgNTk3wqDCoCAqLwo+PiDCoMKgwqAg
NTk4wqAgc3RhdGljIGludCBpb3J0X2Rldl9maW5kX2l0c19pZChzdHJ1Y3QgZGV2aWNlICpkZXYs
IHUzMiByZXFfaWQsCj4+IMKgwqDCoCA1OTnCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdW5zaWduZWQgaW50IGlkeCwgaW50
ICppdHNfaWQpCj4+IMKgwqDCoCA2MDDCoCB7Cj4+IMKgwqDCoCA2MDHCoMKgwqDCoMKgwqDCoMKg
wqAgc3RydWN0IGFjcGlfaW9ydF9pdHNfZ3JvdXAgKml0czsKPj4gwqDCoMKgIDYwMsKgwqDCoMKg
wqDCoMKgwqDCoCBzdHJ1Y3QgYWNwaV9pb3J0X25vZGUgKm5vZGU7Cj4+IMKgwqDCoCA2MDMKPj4g
wqDCoMKgIDYwNMKgwqDCoMKgwqDCoMKgwqDCoCBub2RlID0gaW9ydF9maW5kX2Rldl9ub2RlKGRl
dik7Cj4+IMKgwqDCoCA2MDXCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKCFub2RlKQo+PiDCoMKgwqAg
NjA2wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVOWElPOwo+PiDC
oMKgwqAgNjA3Cj4+IMKgwqDCoCA2MDjCoMKgwqDCoMKgwqDCoMKgwqAgbm9kZSA9IGlvcnRfbm9k
ZV9tYXBfaWQobm9kZSwgcmVxX2lkLCBOVUxMLCBJT1JUX01TSV9UWVBFKTsKPj4gwqDCoMKgIDYw
OcKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoIW5vZGUpCj4+IMKgwqDCoCA2MTDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAtRU5YSU87Cj4+IMKgwqDCoCA2MTEKPj4gwqDC
oMKgIDYxMsKgwqDCoMKgwqDCoMKgwqDCoCAvKiBNb3ZlIHRvIElUUyBzcGVjaWZpYyBkYXRhICov
Cj4+IMKgwqDCoCA2MTPCoMKgwqDCoMKgwqDCoMKgwqAgaXRzID0gKHN0cnVjdCBhY3BpX2lvcnRf
aXRzX2dyb3VwICopbm9kZS0+bm9kZV9kYXRhOwo+PiDCoMKgwqAgNjE0wqDCoMKgwqDCoMKgwqDC
oMKgIGlmIChpZHggPiBpdHMtPml0c19jb3VudCkgewo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIF5eXl5eXl5eXl5eXl5eXl5eXl5eCj4+IEkgd2Fzbid0IGFibGUg
dG8gZmluZCBhbnkgaW5mb3JtYXRpb24gYWJvdXQgaG93IGl0cy0+aXRzX2NvdW50IGlzIHNldAo+
PiBidXQgaXQgbG9va3MgdG8gbWUgdGhhdCBpcyBvZmYgYnkgb25lLgo+IAo+IGl0cy0+Y291bnQg
aXMgcmVhZCBkaXJlY3RseSBmcm9tIHRoZSBmaXJtd2FyZSB0YWJsZS4gQ3VycmVudGx5IGl0IHNl
ZW1zIHRoaXMgY29uZGl0aW9uIGNhbiBuZXZlciBiZSBoaXQgYW55d2F5LCBzaW5jZSB0aGlzIGlz
IG9ubHkgZXZlciBjYWxsZWQgd2l0aCBpZHggPT0gMC4gVEJIIEkgY2FuJ3QgcmVhbGx5IHNlZSBo
b3cgdGhlIGNvZGUgY291bGQgZXZvbHZlIHN1Y2ggdGhhdCB0aGlzIGNoZWNrIHNob3VsZCBldmVy
IGJlIG5lY2Vzc2FyeSAoaS5lLiBpdCBtYWtlcyBubyBzZW5zZSBmb3IgY2FsbGVycyB0byBwdWxs
IGlkeCB2YWx1ZXMgb3V0IGlmIHRoaW4gYWlyLCBzbyB0aGV5J2QgcHJlc3VtYWJseSBlbmQgdXAg
YmVpbmcgZGVyaXZlZCBmcm9tIGl0cy0+Y291bnQgaW4gdGhlIGZpcnN0IHBsYWNlKSwgYnV0IGlm
IHdlIGFyZSBnb2luZyB0byBoYXZlIGl0IHRoZW4gSSBhZ3JlZSBpdCBzaG91bGQgYmUgIj49Ii4K
CkZvciBub3cgc2VlbXMgd2Ugb25seSBnb3Qgc3lzdGVtcyB3aGljaCBtYXAgYSBkZXZpY2UgdG8g
YSBzaW5nbGUKSVRTLCBidXQgaW4gdGhlIElPUlQgc3BlYywgaXQgYXNzdW1lcyB0aGF0IG1heWJl
IHRoZXJlIGlzIGEgSVRTIGdyb3VwCmZvciBtYXBwaW5nLCBzbyBJIHRoaW5rIHdlIGNhbiBqdXN0
IHVzZSAiPj0iIGFzIHlvdSBzdWdnZXN0ZWQgdG8KYWxpZ24gd2l0aCB0aGUgc3BlYy4KClRoYW5r
cwpIYW5qdW4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
