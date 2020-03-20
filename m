Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 300DF18CB99
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 11:27:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EuJwQcTpDJgxC2LQ00e6m4ijg8v9bkV7rFpAUSeavYQ=; b=uYGn5CrmoyzLiY
	1am2IYr0hjwjSpyl1K4jt8biFr4gKHAq/QjL8aICr1ZJ9eLH0iVE973YG+actYRhrygxPx5s/iTbL
	13pWbYa0IJ/Ca2i2Up+VIn+ZDgSTZlL8a+tD6TzbFIq7cCNZ+++eypu0rEyUNv60XA/jAMjmOKLBH
	hbh7GUKMmlVqhKHvmLkNXNUIr3NT1tZFAIPKWCMm9MS1BLOpNAVrs4hk/bF6wpbvqGwaxCBGLUUKy
	xrik7uU2V2NnIMWJgJ6ocNtkL1b+njQOOIk9tA/K542UyUAqrTnz8lhxKMHSHFNHJkq7ytrIf6rgE
	LZKJXLG5eEMbi9iQTw3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFEs3-0007sJ-TD; Fri, 20 Mar 2020 10:27:19 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFErw-0007s3-0n; Fri, 20 Mar 2020 10:27:12 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id DB756305C92;
 Fri, 20 Mar 2020 11:27:09 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id A5797285E2762; Fri, 20 Mar 2020 11:27:09 +0100 (CET)
Date: Fri, 20 Mar 2020 11:27:09 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: "chengjian (D)" <cj.chengjian@huawei.com>
Subject: Re: Why is text_mutex used in jump_label_transform for x86_64
Message-ID: <20200320102709.GC20696@hirez.programming.kicks-ass.net>
References: <f7f686f2-4f28-1763-dd19-43eff6a5a8f2@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f7f686f2-4f28-1763-dd19-43eff6a5a8f2@huawei.com>
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
Cc: jakub.kicinski@netronome.com, Kees Cook <keescook@chromium.org>,
 "Xiexiuqi \(Xie XiuQi\)" <xiexiuqi@huawei.com>,
 "x86@kernel.org" <x86@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 bobo.shaobowang@huawei.com, Li Bin <huawei.libin@huawei.com>,
 andrew.murray@arm.com, bristot@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBNYXIgMTksIDIwMjAgYXQgMDk6NDk6MDRQTSArMDgwMCwgY2hlbmdqaWFuIChEKSB3
cm90ZToKPiBIae+8jGV2ZXJ5b25lCj4gCj4gSSdtIHNvcnJ5IHRvIGRpc3R1cmIgeW91LiBJIGhh
dmUgYSBwcm9ibGVtIGFib3V0IGp1bXBfbGFiZWwsIGFuZCBhIGJpdAo+IGNvbmZ1c2VkIGFib3V0
IHRoZSBjb2RlCj4gCj4gSSBub3RpY2VkIHRoYXQgdGV4dF9tdXRleCBpcyB1c2VkIGluIHRoaXMg
ZnVuY3Rpb24gdW5kZXIgeDg2XzY0Cj4gYXJjaGl0ZWN0dXJlLAo+IGJ1dCBvdGhlciBhcmNoaXRl
Y3R1cmVzIGRvIG5vdC4KPiAKPiBpbiBhcmNoL3g4Ni9rZXJuZWwvanVtcF9sYWJlbC5jCj4gwqDC
oMKgwqDCoMKgwqAgc3RhdGljIHZvaWQgX19yZWYganVtcF9sYWJlbF90cmFuc2Zvcm0oc3RydWN0
IGp1bXBfZW50cnkgKmVudHJ5LAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBlbnVtIGp1bXBf
bGFiZWxfdHlwZSB0eXBlLAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpbnQgaW5pdCkKPiDC
oMKgwqDCoMKgwqDCoCB7Cj4gwqDCoMKgwqDCoMKgwqDCoCBtdXRleF9sb2NrKCZ0ZXh0X211dGV4
KTsKPiDCoMKgwqDCoMKgwqDCoMKgIF9fanVtcF9sYWJlbF90cmFuc2Zvcm0oZW50cnksIHR5cGUs
IGluaXQpOwo+IMKgwqDCoMKgwqDCoMKgwqAgbXV0ZXhfdW5sb2NrKCZ0ZXh0X211dGV4KTsKPiAK
PiBpbiBhcmNoL2FybTY0L2tlcm5lbC9qdW1wX2xhYmVsLmMKPiAKPiDCoMKgwqDCoMKgwqDCoCB2
b2lkIGFyY2hfanVtcF9sYWJlbF90cmFuc2Zvcm0oc3RydWN0IGp1bXBfZW50cnkgKmVudHJ5LAo+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgZW51bSBqdW1wX2xhYmVsX3R5cGUgdHlwZSkKPiDCoMKgwqDC
oMKgwqDCoCB7Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHZvaWQgKmFkZHIgPSAo
dm9pZCAqKWp1bXBfZW50cnlfY29kZShlbnRyeSk7Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHUzMiBpbnNuOwo+IAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAo
dHlwZSA9PSBKVU1QX0xBQkVMX0pNUCkgewo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgaW5zbiA9Cj4gYWFyY2g2NF9pbnNuX2dlbl9icmFuY2hfaW1tKGp1
bXBfZW50cnlfY29kZShlbnRyeSksCj4ganVtcF9lbnRyeV90YXJnZXQoZW50cnkpLAo+IEFBUkNI
NjRfSU5TTl9CUkFOQ0hfTk9MSU5LKTsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
fSBlbHNlIHsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IGluc24gPSBhYXJjaDY0X2luc25fZ2VuX25vcCgpOwo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCB9Cj4gCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGFhcmNoNjRfaW5z
bl9wYXRjaF90ZXh0X25vc3luYyhhZGRyLCBpbnNuKTsKPiDCoMKgwqDCoMKgwqDCoCB9Cj4gCj4g
Cj4gSXMgdGhlcmUgYW55dGhpbmcgd3Jvbmcgd2l0aCB4ODYKPiAKPiBvcgo+IAo+IGlzIHRoaXMg
bWlzc2luZyBmb3Igb3RoZXIgYXJjaGl0ZWN0dXJlcz8KCkl0IGRlcGVuZHMgb24gdGhlIGFyY2hp
dGVjdHVyZSBkZXRhaWxzIG9mIGhvdyBzZWxmLW1vZGlmeWluZyBjb2RlIHdvcmtzLgpJbiBwYXJ0
aWN1bGFyLCB4ODYgaXMgYSB2YXJpYWJsZSBpbnN0cnVjdGlvbiBsZW5ndGggYXJjaGl0ZWN0dXJl
IGFuZApuZWVkcyBleHRyZW1lIGNhcmUgLS0gaXQncyBpbXBsZW1lbnRhdGlvbiByZXF1aXJlcyB0
aGVyZSBvbmx5IGJlIGEKc2luZ2xlIHRleHQgbW9kaWZpZXIgYXQgYW55IG9uZSB0aW1lLCBoZW5j
ZSB0aGUgdXNlIG9mIHRleHRfbXV0ZXguCgpBUk02NCBPVE9IIGlzLCBsaWtlIG1vc3QgUklTQyBi
YXNlZCBhcmNoaXRlY3R1cmVzLCBhIGZpeGVkIHdpZHRoCmluc3RydWN0aW9uIGFyY2hpdGVjdHVy
ZS4gQW5kIGluIHBhcnRpY3VsYXIgaXQgY2FuIHJlLXdyaXRlIGNlcnRhaW4KKGJyYW5jaCkgaW5z
dHJ1Y3Rpb25zIHdpdGggaW1wdW5pdHkgKHNlZSB0aGVpcgphYXJjaDY0X2luc25fcGF0Y2hfdGV4
dF9ub3N5bmMoKSkuIFdoaWNoIGlzIHdoeSB0aGV5IGRvbid0IG5lZWQKYWRkaXRpb25hbCBzZXJp
YWxpemF0aW9uLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
