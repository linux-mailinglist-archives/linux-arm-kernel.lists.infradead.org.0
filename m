Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 289BC7A4BE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 11:39:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k/3GKM+irrb2qqmgJ7xHrg3EbY41+VEr1LT4eoGBlqQ=; b=bnReDlh+HG4SYr
	pWzX+G7j00fVnTG0bXrDKxg5Xu2kvOaTBjK0iAbg+HZVg21flUXLibuzlmTa3gfi1m0EcKyrJRA80
	F+Xch+o0I+akZxZN6qWbwrtXIva0Izl2/cSs0DcQPwGSVdWbKI3ABNdHgQJsvYGNYwIXoZ97eiEZk
	faNAyZ7m/03+gfhPWSlTGwMCrZmhZBUQEyy4ilsHGmAdCCSr8DUcyeGaa9pcwk+f/KK9V/vPPOyER
	Ze1IhkwoKfkfFTsVUNyxwMJlRWy66ifWVRBmTYVv1G2GvSQloSb34TcGpgYhQDTYkPpBh4tvq/XHX
	zjFmPawv+rAtZKOWLq7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsObh-0001kB-D1; Tue, 30 Jul 2019 09:39:45 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsOY6-0007KD-Ls
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 09:36:05 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6U9ZxQk060065;
 Tue, 30 Jul 2019 04:35:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1564479359;
 bh=XE7PJWAxclsE4Y74rnXt5+mgn4DIMV/2pyQg3wG4rQU=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=OnwZrA4ZBctJrO6km1i7ZMXXDI5TkTsWS/URJLgZOsJG68J6C5xrPYl1wMWB6Mha1
 mmvjm4/yIbYQeiU5npm2i9t141A/wALVO+VXb5++mU9XLDmfD77hLd1ad7ofQFj4cq
 hqqyeJgHboxjNRp7q7TCvouIvSLWsRu8tZljAWZQ=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6U9Zxjb100606
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 30 Jul 2019 04:35:59 -0500
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 30
 Jul 2019 04:35:58 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 30 Jul 2019 04:35:58 -0500
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6U9YkU9027547;
 Tue, 30 Jul 2019 04:35:55 -0500
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <vkoul@kernel.org>, <robh+dt@kernel.org>, <nm@ti.com>,
 <ssantosh@kernel.org>
Subject: [PATCH v2 12/14] dmaengine: ti: New driver for K3 UDMA - split#5:
 dma_device callbacks 2
Date: Tue, 30 Jul 2019 12:34:48 +0300
Message-ID: <20190730093450.12664-13-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190730093450.12664-1-peter.ujfalusi@ti.com>
References: <20190730093450.12664-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_023602_998020_7725F89D 
X-CRM114-Status: GOOD (  20.01  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, grygorii.strashko@ti.com, lokeshvutla@ti.com,
 j-keerthy@ti.com, linux-kernel@vger.kernel.org, t-kristo@ti.com,
 tony@atomide.com, dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U3BsaXQgcGF0Y2ggZm9yIHJldmlldyBjb250YWluaW5nOgpkZXZpY2VfcHJlcF9zbGF2ZV9zZyBh
bmQgZGV2aWNlX3ByZXBfZG1hX2N5Y2xpYyBpbXBsZW1lbnRhdGlvbiBzdXBwb3J0aW5nCnBhY2tl
dCBhbmQgVFIgY2hhbm5lbHMuCgpETUEgZHJpdmVyIGZvcgpUZXhhcyBJbnN0cnVtZW50cyBLMyBO
QVZTUyBVbmlmaWVkIERNQSDigJMgUGVyaXBoZXJhbCBSb290IENvbXBsZXggKFVETUEtUCkKClRo
ZSBVRE1BLVAgaXMgaW50ZW5kZWQgdG8gcGVyZm9ybSBzaW1pbGFyIChidXQgc2lnbmlmaWNhbnRs
eSB1cGdyYWRlZCkgZnVuY3Rpb25zCmFzIHRoZSBwYWNrZXQtb3JpZW50ZWQgRE1BIHVzZWQgb24g
cHJldmlvdXMgU29DIGRldmljZXMuIFRoZSBVRE1BLVAgbW9kdWxlCnN1cHBvcnRzIHRoZSB0cmFu
c21pc3Npb24gYW5kIHJlY2VwdGlvbiBvZiB2YXJpb3VzIHBhY2tldCB0eXBlcy4gVGhlIFVETUEt
UCBpcwphcmNoaXRlY3RlZCB0byBmYWNpbGl0YXRlIHRoZSBzZWdtZW50YXRpb24gYW5kIHJlYXNz
ZW1ibHkgb2YgU29DIERNQSBkYXRhCnN0cnVjdHVyZSBjb21wbGlhbnQgcGFja2V0cyB0by9mcm9t
IHNtYWxsZXIgZGF0YSBibG9ja3MgdGhhdCBhcmUgbmF0aXZlbHkKY29tcGF0aWJsZSB3aXRoIHRo
ZSBzcGVjaWZpYyByZXF1aXJlbWVudHMgb2YgZWFjaCBjb25uZWN0ZWQgcGVyaXBoZXJhbC4gTXVs
dGlwbGUKVHggYW5kIFJ4IGNoYW5uZWxzIGFyZSBwcm92aWRlZCB3aXRoaW4gdGhlIERNQSB3aGlj
aCBhbGxvdyBtdWx0aXBsZSBzZWdtZW50YXRpb24Kb3IgcmVhc3NlbWJseSBvcGVyYXRpb25zIHRv
IGJlIG9uZ29pbmcuIFRoZSBETUEgY29udHJvbGxlciBtYWludGFpbnMgc3RhdGUKaW5mb3JtYXRp
b24gZm9yIGVhY2ggb2YgdGhlIGNoYW5uZWxzIHdoaWNoIGFsbG93cyBwYWNrZXQgc2VnbWVudGF0
aW9uIGFuZApyZWFzc2VtYmx5IG9wZXJhdGlvbnMgdG8gYmUgdGltZSBkaXZpc2lvbiBtdWx0aXBs
ZXhlZCBiZXR3ZWVuIGNoYW5uZWxzIGluIG9yZGVyCnRvIHNoYXJlIHRoZSB1bmRlcmx5aW5nIERN
QSBoYXJkd2FyZS4gQW4gZXh0ZXJuYWwgRE1BIHNjaGVkdWxlciBpcyB1c2VkIHRvCmNvbnRyb2wg
dGhlIG9yZGVyaW5nIGFuZCByYXRlIGF0IHdoaWNoIHRoaXMgbXVsdGlwbGV4aW5nIG9jY3VycyBm
b3IgVHJhbnNtaXQKb3BlcmF0aW9ucy4gVGhlIG9yZGVyaW5nIGFuZCByYXRlIG9mIFJlY2VpdmUg
b3BlcmF0aW9ucyBpcyBpbmRpcmVjdGx5IGNvbnRyb2xsZWQKYnkgdGhlIG9yZGVyIGluIHdoaWNo
IGJsb2NrcyBhcmUgcHVzaGVkIGludG8gdGhlIERNQSBvbiB0aGUgUnggUFNJLUwgaW50ZXJmYWNl
LgoKVGhlIFVETUEtUCBhbHNvIHN1cHBvcnRzIGFjdGluZyBhcyBib3RoIGEgVVRDIGFuZCBVRE1B
LUMgZm9yIGl0cyBpbnRlcm5hbApjaGFubmVscy4gQ2hhbm5lbHMgaW4gdGhlIFVETUEtUCBjYW4g
YmUgY29uZmlndXJlZCB0byBiZSBlaXRoZXIgUGFja2V0LUJhc2VkIG9yClRoaXJkLVBhcnR5IGNo
YW5uZWxzIG9uIGEgY2hhbm5lbCBieSBjaGFubmVsIGJhc2lzLgoKVGhlIGluaXRpYWwgZHJpdmVy
IHN1cHBvcnRzOgotIE1FTV9UT19NRU0gKFRSIG1vZGUpCi0gREVWX1RPX01FTSAoUGFja2V0IC8g
VFIgbW9kZSkKLSBNRU1fVE9fREVWIChQYWNrZXQgLyBUUiBtb2RlKQotIEN5Y2xpYyAoUGFja2V0
IC8gVFIgbW9kZSkKLSBNZXRhZGF0YSBmb3IgZGVzY3JpcHRvcnMKClNpZ25lZC1vZmYtYnk6IFBl
dGVyIFVqZmFsdXNpIDxwZXRlci51amZhbHVzaUB0aS5jb20+Ci0tLQogZHJpdmVycy9kbWEvdGkv
azMtdWRtYS5jIHwgNjk2ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwog
MSBmaWxlIGNoYW5nZWQsIDY5NiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9k
bWEvdGkvazMtdWRtYS5jIGIvZHJpdmVycy9kbWEvdGkvazMtdWRtYS5jCmluZGV4IDgwNzY3MGJh
OTc3NC4uYmRkNzY1MmIwMWNmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2RtYS90aS9rMy11ZG1hLmMK
KysrIGIvZHJpdmVycy9kbWEvdGkvazMtdWRtYS5jCkBAIC0xNzgwLDYgKzE3ODAsNzAyIEBAIHN0
YXRpYyBpbnQgdWRtYV9zbGF2ZV9jb25maWcoc3RydWN0IGRtYV9jaGFuICpjaGFuLAogCXJldHVy
biAwOwogfQogCitzdGF0aWMgc3RydWN0IHVkbWFfZGVzYyAqdWRtYV9hbGxvY190cl9kZXNjKHN0
cnVjdCB1ZG1hX2NoYW4gKnVjLAorCQkJCQkgICAgc2l6ZV90IHRyX3NpemUsIGludCB0cl9jb3Vu
dCwKKwkJCQkJICAgIGVudW0gZG1hX3RyYW5zZmVyX2RpcmVjdGlvbiBkaXIpCit7CisJc3RydWN0
IHVkbWFfaHdkZXNjICpod2Rlc2M7CisJc3RydWN0IGNwcGk1X2Rlc2NfaGRyX3QgKnRyX2Rlc2M7
CisJc3RydWN0IHVkbWFfZGVzYyAqZDsKKwl1MzIgcmVsb2FkX2NvdW50ID0gMDsKKwl1MzIgcmlu
Z19pZDsKKworCXN3aXRjaCAodHJfc2l6ZSkgeworCWNhc2UgMTY6CisJY2FzZSAzMjoKKwljYXNl
IDY0OgorCWNhc2UgMTI4OgorCQlicmVhazsKKwlkZWZhdWx0OgorCQlkZXZfZXJyKHVjLT51ZC0+
ZGV2LCAiVW5zdXBwb3J0ZWQgVFIgc2l6ZSBvZiAlenVcbiIsIHRyX3NpemUpOworCQlyZXR1cm4g
TlVMTDsKKwl9CisKKwkvKiBXZSBoYXZlIG9ubHkgb25lIGRlc2NyaXB0b3IgY29udGFpbmluZyBt
dWx0aXBsZSBUUnMgKi8KKwlkID0ga3phbGxvYyhzaXplb2YoKmQpICsgc2l6ZW9mKGQtPmh3ZGVz
Y1swXSksIEdGUF9BVE9NSUMpOworCWlmICghZCkKKwkJcmV0dXJuIE5VTEw7CisKKwlkLT5zZ2xl
biA9IHRyX2NvdW50OworCisJZC0+aHdkZXNjX2NvdW50ID0gMTsKKwlod2Rlc2MgPSAmZC0+aHdk
ZXNjWzBdOworCisJLyogQWxsb2NhdGUgbWVtb3J5IGZvciBETUEgcmluZyBkZXNjcmlwdG9yICov
CisJaWYgKHVjLT51c2VfZG1hX3Bvb2wpIHsKKwkJaHdkZXNjLT5jcHBpNV9kZXNjX3NpemUgPSB1
Yy0+aGRlc2Nfc2l6ZTsKKwkJaHdkZXNjLT5jcHBpNV9kZXNjX3ZhZGRyID0gZG1hX3Bvb2xfemFs
bG9jKHVjLT5oZGVzY19wb29sLAorCQkJCQkJR0ZQX0FUT01JQywKKwkJCQkJCSZod2Rlc2MtPmNw
cGk1X2Rlc2NfcGFkZHIpOworCX0gZWxzZSB7CisJCWh3ZGVzYy0+Y3BwaTVfZGVzY19zaXplID0g
Y3BwaTVfdHJkZXNjX2NhbGNfc2l6ZSh0cl9zaXplLAorCQkJCQkJCQkgdHJfY291bnQpOworCQlo
d2Rlc2MtPmNwcGk1X2Rlc2Nfc2l6ZSA9IEFMSUdOKGh3ZGVzYy0+Y3BwaTVfZGVzY19zaXplLAor
CQkJCQkJdWMtPnVkLT5kZXNjX2FsaWduKTsKKwkJaHdkZXNjLT5jcHBpNV9kZXNjX3ZhZGRyID0g
ZG1hX2FsbG9jX2NvaGVyZW50KHVjLT51ZC0+ZGV2LAorCQkJCQkJaHdkZXNjLT5jcHBpNV9kZXNj
X3NpemUsCisJCQkJCQkmaHdkZXNjLT5jcHBpNV9kZXNjX3BhZGRyLAorCQkJCQkJR0ZQX0FUT01J
Qyk7CisJfQorCisJaWYgKCFod2Rlc2MtPmNwcGk1X2Rlc2NfdmFkZHIpIHsKKwkJa2ZyZWUoZCk7
CisJCXJldHVybiBOVUxMOworCX0KKworCS8qIFN0YXJ0IG9mIHRoZSBUUiByZXEgcmVjb3JkcyAq
LworCWh3ZGVzYy0+dHJfcmVxX2Jhc2UgPSBod2Rlc2MtPmNwcGk1X2Rlc2NfdmFkZHIgKyB0cl9z
aXplOworCS8qIFN0YXJ0IGFkZHJlc3Mgb2YgdGhlIFRSIHJlc3BvbnNlIGFycmF5ICovCisJaHdk
ZXNjLT50cl9yZXNwX2Jhc2UgPSBod2Rlc2MtPnRyX3JlcV9iYXNlICsgdHJfc2l6ZSAqIHRyX2Nv
dW50OworCisJdHJfZGVzYyA9IGh3ZGVzYy0+Y3BwaTVfZGVzY192YWRkcjsKKworCWlmICh1Yy0+
Y3ljbGljKQorCQlyZWxvYWRfY291bnQgPSBDUFBJNV9JTkZPMF9UUkRFU0NfUkxEQ05UX0lORklO
SVRFOworCisJaWYgKGRpciA9PSBETUFfREVWX1RPX01FTSkKKwkJcmluZ19pZCA9IGszX3Jpbmdh
Y2NfZ2V0X3JpbmdfaWQodWMtPnJjaGFuLT5yX3JpbmcpOworCWVsc2UKKwkJcmluZ19pZCA9IGsz
X3JpbmdhY2NfZ2V0X3JpbmdfaWQodWMtPnRjaGFuLT50Y19yaW5nKTsKKworCWNwcGk1X3RyZGVz
Y19pbml0KHRyX2Rlc2MsIHRyX2NvdW50LCB0cl9zaXplLCAwLCByZWxvYWRfY291bnQpOworCWNw
cGk1X2Rlc2Nfc2V0X3BrdGlkcyh0cl9kZXNjLCB1Yy0+aWQsIDB4M2ZmZik7CisJY3BwaTVfZGVz
Y19zZXRfcmV0cG9saWN5KHRyX2Rlc2MsIDAsIHJpbmdfaWQpOworCisJcmV0dXJuIGQ7Cit9CisK
K3N0YXRpYyBzdHJ1Y3QgdWRtYV9kZXNjICp1ZG1hX3ByZXBfc2xhdmVfc2dfdHIoCisJc3RydWN0
IHVkbWFfY2hhbiAqdWMsIHN0cnVjdCBzY2F0dGVybGlzdCAqc2dsLCB1bnNpZ25lZCBpbnQgc2ds
ZW4sCisJZW51bSBkbWFfdHJhbnNmZXJfZGlyZWN0aW9uIGRpciwgdW5zaWduZWQgbG9uZyB0eF9m
bGFncywgdm9pZCAqY29udGV4dCkKK3sKKwllbnVtIGRtYV9zbGF2ZV9idXN3aWR0aCBkZXZfd2lk
dGg7CisJc3RydWN0IHNjYXR0ZXJsaXN0ICpzZ2VudDsKKwlzdHJ1Y3QgdWRtYV9kZXNjICpkOwor
CXNpemVfdCB0cl9zaXplOworCXN0cnVjdCBjcHBpNV90cl90eXBlMV90ICp0cl9yZXEgPSBOVUxM
OworCXVuc2lnbmVkIGludCBpOworCXUzMiBidXJzdDsKKworCWlmIChkaXIgPT0gRE1BX0RFVl9U
T19NRU0pIHsKKwkJZGV2X3dpZHRoID0gdWMtPmNmZy5zcmNfYWRkcl93aWR0aDsKKwkJYnVyc3Qg
PSB1Yy0+Y2ZnLnNyY19tYXhidXJzdDsKKwl9IGVsc2UgaWYgKGRpciA9PSBETUFfTUVNX1RPX0RF
VikgeworCQlkZXZfd2lkdGggPSB1Yy0+Y2ZnLmRzdF9hZGRyX3dpZHRoOworCQlidXJzdCA9IHVj
LT5jZmcuZHN0X21heGJ1cnN0OworCX0gZWxzZSB7CisJCWRldl9lcnIodWMtPnVkLT5kZXYsICIl
czogYmFkIGRpcmVjdGlvbj9cbiIsIF9fZnVuY19fKTsKKwkJcmV0dXJuIE5VTEw7CisJfQorCisJ
aWYgKCFidXJzdCkKKwkJYnVyc3QgPSAxOworCisJLyogTm93IGFsbG9jYXRlIGFuZCBzZXR1cCB0
aGUgZGVzY3JpcHRvci4gKi8KKwl0cl9zaXplID0gc2l6ZW9mKHN0cnVjdCBjcHBpNV90cl90eXBl
MV90KTsKKwlkID0gdWRtYV9hbGxvY190cl9kZXNjKHVjLCB0cl9zaXplLCBzZ2xlbiwgZGlyKTsK
KwlpZiAoIWQpCisJCXJldHVybiBOVUxMOworCisJZC0+c2dsZW4gPSBzZ2xlbjsKKworCXRyX3Jl
cSA9IChzdHJ1Y3QgY3BwaTVfdHJfdHlwZTFfdCAqKWQtPmh3ZGVzY1swXS50cl9yZXFfYmFzZTsK
Kwlmb3JfZWFjaF9zZyhzZ2wsIHNnZW50LCBzZ2xlbiwgaSkgeworCQlkLT5yZXNpZHVlICs9IHNn
X2RtYV9sZW4oc2dlbnQpOworCisJCWNwcGk1X3RyX2luaXQoJnRyX3JlcVtpXS5mbGFncywgQ1BQ
STVfVFJfVFlQRTEsIGZhbHNlLCBmYWxzZSwKKwkJCSAgICAgIENQUEk1X1RSX0VWRU5UX1NJWkVf
Q09NUExFVElPTiwgMCk7CisJCWNwcGk1X3RyX2NzZl9zZXQoJnRyX3JlcVtpXS5mbGFncywgQ1BQ
STVfVFJfQ1NGX1NVUFJfRVZUKTsKKworCQl0cl9yZXFbaV0uYWRkciA9IHNnX2RtYV9hZGRyZXNz
KHNnZW50KTsKKwkJdHJfcmVxW2ldLmljbnQwID0gYnVyc3QgKiBkZXZfd2lkdGg7CisJCXRyX3Jl
cVtpXS5kaW0xID0gYnVyc3QgKiBkZXZfd2lkdGg7CisJCXRyX3JlcVtpXS5pY250MSA9IHNnX2Rt
YV9sZW4oc2dlbnQpIC8gdHJfcmVxW2ldLmljbnQwOworCX0KKworCWNwcGk1X3RyX2NzZl9zZXQo
JnRyX3JlcVtpIC0gMV0uZmxhZ3MsIENQUEk1X1RSX0NTRl9FT1ApOworCisJcmV0dXJuIGQ7Cit9
CisKK3N0YXRpYyBpbnQgdWRtYV9jb25maWd1cmVfc3RhdGljdHIoc3RydWN0IHVkbWFfY2hhbiAq
dWMsIHN0cnVjdCB1ZG1hX2Rlc2MgKmQsCisJCQkJICAgZW51bSBkbWFfc2xhdmVfYnVzd2lkdGgg
ZGV2X3dpZHRoLAorCQkJCSAgIHUxNiBlbGNudCkKK3sKKwlpZiAoIXVjLT5zdGF0aWNfdHJfdHlw
ZSkKKwkJcmV0dXJuIDA7CisKKwkvKiBCdXMgd2lkdGggdHJhbnNsYXRlcyB0byB0aGUgZWxlbWVu
dCBzaXplIChFUykgKi8KKwlzd2l0Y2ggKGRldl93aWR0aCkgeworCWNhc2UgRE1BX1NMQVZFX0JV
U1dJRFRIXzFfQllURToKKwkJZC0+c3RhdGljX3RyLmVsc2l6ZSA9IDA7CisJCWJyZWFrOworCWNh
c2UgRE1BX1NMQVZFX0JVU1dJRFRIXzJfQllURVM6CisJCWQtPnN0YXRpY190ci5lbHNpemUgPSAx
OworCQlicmVhazsKKwljYXNlIERNQV9TTEFWRV9CVVNXSURUSF8zX0JZVEVTOgorCQlkLT5zdGF0
aWNfdHIuZWxzaXplID0gMjsKKwkJYnJlYWs7CisJY2FzZSBETUFfU0xBVkVfQlVTV0lEVEhfNF9C
WVRFUzoKKwkJZC0+c3RhdGljX3RyLmVsc2l6ZSA9IDM7CisJCWJyZWFrOworCWNhc2UgRE1BX1NM
QVZFX0JVU1dJRFRIXzhfQllURVM6CisJCWQtPnN0YXRpY190ci5lbHNpemUgPSA0OworCQlicmVh
azsKKwlkZWZhdWx0OiAvKiBub3QgcmVhY2hlZCAqLworCQlyZXR1cm4gLUVJTlZBTDsKKwl9CisK
KwlkLT5zdGF0aWNfdHIuZWxjbnQgPSBlbGNudDsKKworCS8qCisJICogUERNQSBtdXN0IHRvIGNs
b3NlIHRoZSBwYWNrZXQgd2hlbiB0aGUgY2hhbm5lbCBpcyBpbiBwYWNrZXQgbW9kZS4KKwkgKiBG
b3IgVFIgbW9kZSB3aGVuIHRoZSBjaGFubmVsIGlzIG5vdCBjeWNsaWMgd2UgYWxzbyBuZWVkIFBE
TUEgdG8gY2xvc2UKKwkgKiB0aGUgcGFja2V0IG90aGVyd2lzZSB0aGUgdHJhbnNmZXIgd2lsbCBz
dGFsbCBiZWNhdXNlIFBETUEgaG9sZHMgb24KKwkgKiB0aGUgZGF0YSBpdCBoYXMgcmVjZWl2ZWQg
ZnJvbSB0aGUgcGVyaXBoZXJhbC4KKwkgKi8KKwlpZiAodWMtPnBrdF9tb2RlIHx8ICF1Yy0+Y3lj
bGljKSB7CisJCXVuc2lnbmVkIGludCBkaXYgPSBkZXZfd2lkdGggKiBlbGNudDsKKworCQlpZiAo
dWMtPmN5Y2xpYykKKwkJCWQtPnN0YXRpY190ci5ic3RjbnQgPSBkLT5yZXNpZHVlIC8gZC0+c2ds
ZW4gLyBkaXY7CisJCWVsc2UKKwkJCWQtPnN0YXRpY190ci5ic3RjbnQgPSBkLT5yZXNpZHVlIC8g
ZGl2OworCisJCWlmICh1Yy0+ZGlyID09IERNQV9ERVZfVE9fTUVNICYmCisJCSAgICBkLT5zdGF0
aWNfdHIuYnN0Y250ID4gdWMtPnVkLT5tYXRjaF9kYXRhLT5zdGF0aWN0cl96X21hc2spCisJCQly
ZXR1cm4gLUVJTlZBTDsKKwl9IGVsc2UgeworCQlkLT5zdGF0aWNfdHIuYnN0Y250ID0gMDsKKwl9
CisKKwlyZXR1cm4gMDsKK30KKworc3RhdGljIHN0cnVjdCB1ZG1hX2Rlc2MgKnVkbWFfcHJlcF9z
bGF2ZV9zZ19wa3QoCisJc3RydWN0IHVkbWFfY2hhbiAqdWMsIHN0cnVjdCBzY2F0dGVybGlzdCAq
c2dsLCB1bnNpZ25lZCBpbnQgc2dsZW4sCisJZW51bSBkbWFfdHJhbnNmZXJfZGlyZWN0aW9uIGRp
ciwgdW5zaWduZWQgbG9uZyB0eF9mbGFncywgdm9pZCAqY29udGV4dCkKK3sKKwlzdHJ1Y3Qgc2Nh
dHRlcmxpc3QgKnNnZW50OworCXN0cnVjdCBjcHBpNV9ob3N0X2Rlc2NfdCAqaF9kZXNjID0gTlVM
TDsKKwlzdHJ1Y3QgdWRtYV9kZXNjICpkOworCXUzMiByaW5nX2lkOworCXVuc2lnbmVkIGludCBp
OworCisJZCA9IGt6YWxsb2Moc2l6ZW9mKCpkKSArIHNnbGVuICogc2l6ZW9mKGQtPmh3ZGVzY1sw
XSksIEdGUF9BVE9NSUMpOworCWlmICghZCkKKwkJcmV0dXJuIE5VTEw7CisKKwlkLT5zZ2xlbiA9
IHNnbGVuOworCWQtPmh3ZGVzY19jb3VudCA9IHNnbGVuOworCisJaWYgKGRpciA9PSBETUFfREVW
X1RPX01FTSkKKwkJcmluZ19pZCA9IGszX3JpbmdhY2NfZ2V0X3JpbmdfaWQodWMtPnJjaGFuLT5y
X3JpbmcpOworCWVsc2UKKwkJcmluZ19pZCA9IGszX3JpbmdhY2NfZ2V0X3JpbmdfaWQodWMtPnRj
aGFuLT50Y19yaW5nKTsKKworCWZvcl9lYWNoX3NnKHNnbCwgc2dlbnQsIHNnbGVuLCBpKSB7CisJ
CXN0cnVjdCB1ZG1hX2h3ZGVzYyAqaHdkZXNjID0gJmQtPmh3ZGVzY1tpXTsKKwkJZG1hX2FkZHJf
dCBzZ19hZGRyID0gc2dfZG1hX2FkZHJlc3Moc2dlbnQpOworCQlzdHJ1Y3QgY3BwaTVfaG9zdF9k
ZXNjX3QgKmRlc2M7CisJCXNpemVfdCBzZ19sZW4gPSBzZ19kbWFfbGVuKHNnZW50KTsKKworCQlo
d2Rlc2MtPmNwcGk1X2Rlc2NfdmFkZHIgPSBkbWFfcG9vbF96YWxsb2ModWMtPmhkZXNjX3Bvb2ws
CisJCQkJCQlHRlBfQVRPTUlDLAorCQkJCQkJJmh3ZGVzYy0+Y3BwaTVfZGVzY19wYWRkcik7CisJ
CWlmICghaHdkZXNjLT5jcHBpNV9kZXNjX3ZhZGRyKSB7CisJCQlkZXZfZXJyKHVjLT51ZC0+ZGV2
LAorCQkJCSJkZXNjcmlwdG9yJWQgYWxsb2NhdGlvbiBmYWlsZWRcbiIsIGkpOworCisJCQl1ZG1h
X2ZyZWVfaHdkZXNjKHVjLCBkKTsKKwkJCWtmcmVlKGQpOworCQkJcmV0dXJuIE5VTEw7CisJCX0K
KworCQlkLT5yZXNpZHVlICs9IHNnX2xlbjsKKwkJaHdkZXNjLT5jcHBpNV9kZXNjX3NpemUgPSB1
Yy0+aGRlc2Nfc2l6ZTsKKwkJZGVzYyA9IGh3ZGVzYy0+Y3BwaTVfZGVzY192YWRkcjsKKworCQlp
ZiAoaSA9PSAwKSB7CisJCQljcHBpNV9oZGVzY19pbml0KGRlc2MsIDAsIDApOworCQkJLyogRmxv
dyBhbmQgUGFja2VkIElEICovCisJCQljcHBpNV9kZXNjX3NldF9wa3RpZHMoJmRlc2MtPmhkciwg
dWMtPmlkLCAweDNmZmYpOworCQkJY3BwaTVfZGVzY19zZXRfcmV0cG9saWN5KCZkZXNjLT5oZHIs
IDAsIHJpbmdfaWQpOworCQl9IGVsc2UgeworCQkJY3BwaTVfaGRlc2NfcmVzZXRfaGJkZXNjKGRl
c2MpOworCQkJY3BwaTVfZGVzY19zZXRfcmV0cG9saWN5KCZkZXNjLT5oZHIsIDAsIDB4ZmZmZik7
CisJCX0KKworCQkvKiBhdHRhY2ggdGhlIHNnIGJ1ZmZlciB0byB0aGUgZGVzY3JpcHRvciAqLwor
CQljcHBpNV9oZGVzY19hdHRhY2hfYnVmKGRlc2MsIHNnX2FkZHIsIHNnX2xlbiwgc2dfYWRkciwg
c2dfbGVuKTsKKworCQkvKiBBdHRhY2ggbGluayBhcyBob3N0IGJ1ZmZlciBkZXNjcmlwdG9yICov
CisJCWlmIChoX2Rlc2MpCisJCQljcHBpNV9oZGVzY19saW5rX2hiZGVzYyhoX2Rlc2MsCisJCQkJ
CQlod2Rlc2MtPmNwcGk1X2Rlc2NfcGFkZHIpOworCisJCWlmIChkaXIgPT0gRE1BX01FTV9UT19E
RVYpCisJCQloX2Rlc2MgPSBkZXNjOworCX0KKworCWlmIChkLT5yZXNpZHVlID49IFNaXzRNKSB7
CisJCWRldl9lcnIodWMtPnVkLT5kZXYsCisJCQkiJXM6IFRyYW5zZmVyIHNpemUgJXUgaXMgb3Zl
ciB0aGUgc3VwcG9ydGVkIDRNIHJhbmdlXG4iLAorCQkJX19mdW5jX18sIGQtPnJlc2lkdWUpOwor
CQl1ZG1hX2ZyZWVfaHdkZXNjKHVjLCBkKTsKKwkJa2ZyZWUoZCk7CisJCXJldHVybiBOVUxMOwor
CX0KKworCWhfZGVzYyA9IGQtPmh3ZGVzY1swXS5jcHBpNV9kZXNjX3ZhZGRyOworCWNwcGk1X2hk
ZXNjX3NldF9wa3RsZW4oaF9kZXNjLCBkLT5yZXNpZHVlKTsKKworCXJldHVybiBkOworfQorCitz
dGF0aWMgaW50IHVkbWFfYXR0YWNoX21ldGFkYXRhKHN0cnVjdCBkbWFfYXN5bmNfdHhfZGVzY3Jp
cHRvciAqZGVzYywKKwkJCQl2b2lkICpkYXRhLCBzaXplX3QgbGVuKQoreworCXN0cnVjdCB1ZG1h
X2Rlc2MgKmQgPSB0b191ZG1hX2Rlc2MoZGVzYyk7CisJc3RydWN0IHVkbWFfY2hhbiAqdWMgPSB0
b191ZG1hX2NoYW4oZGVzYy0+Y2hhbik7CisJc3RydWN0IGNwcGk1X2hvc3RfZGVzY190ICpoX2Rl
c2M7CisJdTMyIHBzZF9zaXplID0gbGVuOworCXUzMiBmbGFncyA9IDA7CisKKwlpZiAoIXVjLT5w
a3RfbW9kZSB8fCAhdWMtPm1ldGFkYXRhX3NpemUpCisJCXJldHVybiAtRU5PVFNVUFA7CisKKwlp
ZiAoIWRhdGEgfHwgbGVuID4gdWMtPm1ldGFkYXRhX3NpemUpCisJCXJldHVybiAtRUlOVkFMOwor
CisJaWYgKHVjLT5uZWVkc19lcGliICYmIGxlbiA8IENQUEk1X0lORk8wX0hERVNDX0VQSUJfU0la
RSkKKwkJcmV0dXJuIC1FSU5WQUw7CisKKwloX2Rlc2MgPSBkLT5od2Rlc2NbMF0uY3BwaTVfZGVz
Y192YWRkcjsKKwlpZiAoZC0+ZGlyID09IERNQV9NRU1fVE9fREVWKQorCQltZW1jcHkoaF9kZXNj
LT5lcGliLCBkYXRhLCBsZW4pOworCisJaWYgKHVjLT5uZWVkc19lcGliKQorCQlwc2Rfc2l6ZSAt
PSBDUFBJNV9JTkZPMF9IREVTQ19FUElCX1NJWkU7CisKKwlkLT5tZXRhZGF0YSA9IGRhdGE7CisJ
ZC0+bWV0YWRhdGFfc2l6ZSA9IGxlbjsKKwlpZiAodWMtPm5lZWRzX2VwaWIpCisJCWZsYWdzIHw9
IENQUEk1X0lORk8wX0hERVNDX0VQSUJfUFJFU0VOVDsKKworCWNwcGk1X2hkZXNjX3VwZGF0ZV9m
bGFncyhoX2Rlc2MsIGZsYWdzKTsKKwljcHBpNV9oZGVzY191cGRhdGVfcHNkYXRhX3NpemUoaF9k
ZXNjLCBwc2Rfc2l6ZSk7CisKKwlyZXR1cm4gMDsKK30KKworc3RhdGljIHZvaWQgKnVkbWFfZ2V0
X21ldGFkYXRhX3B0cihzdHJ1Y3QgZG1hX2FzeW5jX3R4X2Rlc2NyaXB0b3IgKmRlc2MsCisJCQkJ
ICAgc2l6ZV90ICpwYXlsb2FkX2xlbiwgc2l6ZV90ICptYXhfbGVuKQoreworCXN0cnVjdCB1ZG1h
X2Rlc2MgKmQgPSB0b191ZG1hX2Rlc2MoZGVzYyk7CisJc3RydWN0IHVkbWFfY2hhbiAqdWMgPSB0
b191ZG1hX2NoYW4oZGVzYy0+Y2hhbik7CisJc3RydWN0IGNwcGk1X2hvc3RfZGVzY190ICpoX2Rl
c2M7CisKKwlpZiAoIXVjLT5wa3RfbW9kZSB8fCAhdWMtPm1ldGFkYXRhX3NpemUpCisJCXJldHVy
biBFUlJfUFRSKC1FTk9UU1VQUCk7CisKKwloX2Rlc2MgPSBkLT5od2Rlc2NbMF0uY3BwaTVfZGVz
Y192YWRkcjsKKworCSptYXhfbGVuID0gdWMtPm1ldGFkYXRhX3NpemU7CisKKwkqcGF5bG9hZF9s
ZW4gPSBjcHBpNV9oZGVzY19lcGliX3ByZXNlbnQoJmhfZGVzYy0+aGRyKSA/CisJCSAgICAgICBD
UFBJNV9JTkZPMF9IREVTQ19FUElCX1NJWkUgOiAwOworCSpwYXlsb2FkX2xlbiArPSBjcHBpNV9o
ZGVzY19nZXRfcHNkYXRhX3NpemUoaF9kZXNjKTsKKworCXJldHVybiBoX2Rlc2MtPmVwaWI7Cit9
CisKK3N0YXRpYyBpbnQgdWRtYV9zZXRfbWV0YWRhdGFfbGVuKHN0cnVjdCBkbWFfYXN5bmNfdHhf
ZGVzY3JpcHRvciAqZGVzYywKKwkJCQkgc2l6ZV90IHBheWxvYWRfbGVuKQoreworCXN0cnVjdCB1
ZG1hX2Rlc2MgKmQgPSB0b191ZG1hX2Rlc2MoZGVzYyk7CisJc3RydWN0IHVkbWFfY2hhbiAqdWMg
PSB0b191ZG1hX2NoYW4oZGVzYy0+Y2hhbik7CisJc3RydWN0IGNwcGk1X2hvc3RfZGVzY190ICpo
X2Rlc2M7CisJdTMyIHBzZF9zaXplID0gcGF5bG9hZF9sZW47CisJdTMyIGZsYWdzID0gMDsKKwor
CWlmICghdWMtPnBrdF9tb2RlIHx8ICF1Yy0+bWV0YWRhdGFfc2l6ZSkKKwkJcmV0dXJuIC1FTk9U
U1VQUDsKKworCWlmIChwYXlsb2FkX2xlbiA+IHVjLT5tZXRhZGF0YV9zaXplKQorCQlyZXR1cm4g
LUVJTlZBTDsKKworCWlmICh1Yy0+bmVlZHNfZXBpYiAmJiBwYXlsb2FkX2xlbiA8IENQUEk1X0lO
Rk8wX0hERVNDX0VQSUJfU0laRSkKKwkJcmV0dXJuIC1FSU5WQUw7CisKKwloX2Rlc2MgPSBkLT5o
d2Rlc2NbMF0uY3BwaTVfZGVzY192YWRkcjsKKworCWlmICh1Yy0+bmVlZHNfZXBpYikgeworCQlw
c2Rfc2l6ZSAtPSBDUFBJNV9JTkZPMF9IREVTQ19FUElCX1NJWkU7CisJCWZsYWdzIHw9IENQUEk1
X0lORk8wX0hERVNDX0VQSUJfUFJFU0VOVDsKKwl9CisKKwljcHBpNV9oZGVzY191cGRhdGVfZmxh
Z3MoaF9kZXNjLCBmbGFncyk7CisJY3BwaTVfaGRlc2NfdXBkYXRlX3BzZGF0YV9zaXplKGhfZGVz
YywgcHNkX3NpemUpOworCisJcmV0dXJuIDA7Cit9CisKK3N0YXRpYyBzdHJ1Y3QgZG1hX2Rlc2Ny
aXB0b3JfbWV0YWRhdGFfb3BzIG1ldGFkYXRhX29wcyA9IHsKKwkuYXR0YWNoID0gdWRtYV9hdHRh
Y2hfbWV0YWRhdGEsCisJLmdldF9wdHIgPSB1ZG1hX2dldF9tZXRhZGF0YV9wdHIsCisJLnNldF9s
ZW4gPSB1ZG1hX3NldF9tZXRhZGF0YV9sZW4sCit9OworCitzdGF0aWMgc3RydWN0IGRtYV9hc3lu
Y190eF9kZXNjcmlwdG9yICp1ZG1hX3ByZXBfc2xhdmVfc2coCisJc3RydWN0IGRtYV9jaGFuICpj
aGFuLCBzdHJ1Y3Qgc2NhdHRlcmxpc3QgKnNnbCwgdW5zaWduZWQgaW50IHNnbGVuLAorCWVudW0g
ZG1hX3RyYW5zZmVyX2RpcmVjdGlvbiBkaXIsIHVuc2lnbmVkIGxvbmcgdHhfZmxhZ3MsIHZvaWQg
KmNvbnRleHQpCit7CisJc3RydWN0IHVkbWFfY2hhbiAqdWMgPSB0b191ZG1hX2NoYW4oY2hhbik7
CisJZW51bSBkbWFfc2xhdmVfYnVzd2lkdGggZGV2X3dpZHRoOworCXN0cnVjdCB1ZG1hX2Rlc2Mg
KmQ7CisJdTMyIGJ1cnN0OworCisJaWYgKGRpciAhPSB1Yy0+ZGlyKSB7CisJCWRldl9lcnIoY2hh
bi0+ZGV2aWNlLT5kZXYsCisJCQkiJXM6IGNoYW4lZCBpcyBmb3IgJXMsIG5vdCBzdXBwb3J0aW5n
ICVzXG4iLAorCQkJX19mdW5jX18sIHVjLT5pZCwgdWRtYV9nZXRfZGlyX3RleHQodWMtPmRpciks
CisJCQl1ZG1hX2dldF9kaXJfdGV4dChkaXIpKTsKKwkJcmV0dXJuIE5VTEw7CisJfQorCisJaWYg
KGRpciA9PSBETUFfREVWX1RPX01FTSkgeworCQlkZXZfd2lkdGggPSB1Yy0+Y2ZnLnNyY19hZGRy
X3dpZHRoOworCQlidXJzdCA9IHVjLT5jZmcuc3JjX21heGJ1cnN0OworCX0gZWxzZSBpZiAoZGly
ID09IERNQV9NRU1fVE9fREVWKSB7CisJCWRldl93aWR0aCA9IHVjLT5jZmcuZHN0X2FkZHJfd2lk
dGg7CisJCWJ1cnN0ID0gdWMtPmNmZy5kc3RfbWF4YnVyc3Q7CisJfSBlbHNlIHsKKwkJZGV2X2Vy
cihjaGFuLT5kZXZpY2UtPmRldiwgIiVzOiBiYWQgZGlyZWN0aW9uP1xuIiwgX19mdW5jX18pOwor
CQlyZXR1cm4gTlVMTDsKKwl9CisKKwlpZiAoIWJ1cnN0KQorCQlidXJzdCA9IDE7CisKKwlpZiAo
dWMtPnBrdF9tb2RlKQorCQlkID0gdWRtYV9wcmVwX3NsYXZlX3NnX3BrdCh1Yywgc2dsLCBzZ2xl
biwgZGlyLCB0eF9mbGFncywKKwkJCQkJICAgY29udGV4dCk7CisJZWxzZQorCQlkID0gdWRtYV9w
cmVwX3NsYXZlX3NnX3RyKHVjLCBzZ2wsIHNnbGVuLCBkaXIsIHR4X2ZsYWdzLAorCQkJCQkgIGNv
bnRleHQpOworCisJaWYgKCFkKQorCQlyZXR1cm4gTlVMTDsKKworCWQtPmRpciA9IGRpcjsKKwlk
LT5kZXNjX2lkeCA9IDA7CisJZC0+dHJfaWR4ID0gMDsKKworCS8qIHN0YXRpYyBUUiBmb3IgcmVt
b3RlIFBETUEgKi8KKwlpZiAodWRtYV9jb25maWd1cmVfc3RhdGljdHIodWMsIGQsIGRldl93aWR0
aCwgYnVyc3QpKSB7CisJCWRldl9lcnIodWMtPnVkLT5kZXYsCisJCQkiJXM6IFN0YXRpY1RSIFog
aXMgbGltdGVkIHRvIG1heGltdW0gNDA5NSAoJXUpXG4iLAorCQkJX19mdW5jX18sIGQtPnN0YXRp
Y190ci5ic3RjbnQpOworCisJCXVkbWFfZnJlZV9od2Rlc2ModWMsIGQpOworCQlrZnJlZShkKTsK
KwkJcmV0dXJuIE5VTEw7CisJfQorCisJaWYgKHVjLT5tZXRhZGF0YV9zaXplKQorCQlkLT52ZC50
eC5tZXRhZGF0YV9vcHMgPSAmbWV0YWRhdGFfb3BzOworCisJcmV0dXJuIHZjaGFuX3R4X3ByZXAo
JnVjLT52YywgJmQtPnZkLCB0eF9mbGFncyk7Cit9CisKK3N0YXRpYyBzdHJ1Y3QgdWRtYV9kZXNj
ICp1ZG1hX3ByZXBfZG1hX2N5Y2xpY190cigKKwlzdHJ1Y3QgdWRtYV9jaGFuICp1YywgZG1hX2Fk
ZHJfdCBidWZfYWRkciwgc2l6ZV90IGJ1Zl9sZW4sCisJc2l6ZV90IHBlcmlvZF9sZW4sIGVudW0g
ZG1hX3RyYW5zZmVyX2RpcmVjdGlvbiBkaXIsIHVuc2lnbmVkIGxvbmcgZmxhZ3MpCit7CisJZW51
bSBkbWFfc2xhdmVfYnVzd2lkdGggZGV2X3dpZHRoOworCXN0cnVjdCB1ZG1hX2Rlc2MgKmQ7CisJ
c2l6ZV90IHRyX3NpemU7CisJc3RydWN0IGNwcGk1X3RyX3R5cGUxX3QgKnRyX3JlcTsKKwl1bnNp
Z25lZCBpbnQgaTsKKwl1bnNpZ25lZCBpbnQgcGVyaW9kcyA9IGJ1Zl9sZW4gLyBwZXJpb2RfbGVu
OworCXUzMiBidXJzdDsKKworCWlmIChkaXIgPT0gRE1BX0RFVl9UT19NRU0pIHsKKwkJZGV2X3dp
ZHRoID0gdWMtPmNmZy5zcmNfYWRkcl93aWR0aDsKKwkJYnVyc3QgPSB1Yy0+Y2ZnLnNyY19tYXhi
dXJzdDsKKwl9IGVsc2UgaWYgKGRpciA9PSBETUFfTUVNX1RPX0RFVikgeworCQlkZXZfd2lkdGgg
PSB1Yy0+Y2ZnLmRzdF9hZGRyX3dpZHRoOworCQlidXJzdCA9IHVjLT5jZmcuZHN0X21heGJ1cnN0
OworCX0gZWxzZSB7CisJCWRldl9lcnIodWMtPnVkLT5kZXYsICIlczogYmFkIGRpcmVjdGlvbj9c
biIsIF9fZnVuY19fKTsKKwkJcmV0dXJuIE5VTEw7CisJfQorCisJaWYgKCFidXJzdCkKKwkJYnVy
c3QgPSAxOworCisJLyogTm93IGFsbG9jYXRlIGFuZCBzZXR1cCB0aGUgZGVzY3JpcHRvci4gKi8K
Kwl0cl9zaXplID0gc2l6ZW9mKHN0cnVjdCBjcHBpNV90cl90eXBlMV90KTsKKwlkID0gdWRtYV9h
bGxvY190cl9kZXNjKHVjLCB0cl9zaXplLCBwZXJpb2RzLCBkaXIpOworCWlmICghZCkKKwkJcmV0
dXJuIE5VTEw7CisKKwl0cl9yZXEgPSAoc3RydWN0IGNwcGk1X3RyX3R5cGUxX3QgKilkLT5od2Rl
c2NbMF0udHJfcmVxX2Jhc2U7CisJZm9yIChpID0gMDsgaSA8IHBlcmlvZHM7IGkrKykgeworCQlj
cHBpNV90cl9pbml0KCZ0cl9yZXFbaV0uZmxhZ3MsIENQUEk1X1RSX1RZUEUxLCBmYWxzZSwgZmFs
c2UsCisJCQkgICAgICBDUFBJNV9UUl9FVkVOVF9TSVpFX0NPTVBMRVRJT04sIDApOworCisJCXRy
X3JlcVtpXS5hZGRyID0gYnVmX2FkZHIgKyBwZXJpb2RfbGVuICogaTsKKwkJdHJfcmVxW2ldLmlj
bnQwID0gZGV2X3dpZHRoOworCQl0cl9yZXFbaV0uaWNudDEgPSBwZXJpb2RfbGVuIC8gZGV2X3dp
ZHRoOworCQl0cl9yZXFbaV0uZGltMSA9IGRldl93aWR0aDsKKworCQlpZiAoIShmbGFncyAmIERN
QV9QUkVQX0lOVEVSUlVQVCkpCisJCQljcHBpNV90cl9jc2Zfc2V0KCZ0cl9yZXFbaV0uZmxhZ3Ms
CisJCQkJCSBDUFBJNV9UUl9DU0ZfU1VQUl9FVlQpOworCX0KKworCXJldHVybiBkOworfQorCitz
dGF0aWMgc3RydWN0IHVkbWFfZGVzYyAqdWRtYV9wcmVwX2RtYV9jeWNsaWNfcGt0KAorCXN0cnVj
dCB1ZG1hX2NoYW4gKnVjLCBkbWFfYWRkcl90IGJ1Zl9hZGRyLCBzaXplX3QgYnVmX2xlbiwKKwlz
aXplX3QgcGVyaW9kX2xlbiwgZW51bSBkbWFfdHJhbnNmZXJfZGlyZWN0aW9uIGRpciwgdW5zaWdu
ZWQgbG9uZyBmbGFncykKK3sKKwlzdHJ1Y3QgdWRtYV9kZXNjICpkOworCXUzMiByaW5nX2lkOwor
CWludCBpOworCWludCBwZXJpb2RzID0gYnVmX2xlbiAvIHBlcmlvZF9sZW47CisKKwlpZiAocGVy
aW9kcyA+IChLM19VRE1BX0RFRkFVTFRfUklOR19TSVpFIC0gMSkpCisJCXJldHVybiBOVUxMOwor
CisJaWYgKHBlcmlvZF9sZW4gPiAweDNGRkZGRikKKwkJcmV0dXJuIE5VTEw7CisKKwlkID0ga3ph
bGxvYyhzaXplb2YoKmQpICsgcGVyaW9kcyAqIHNpemVvZihkLT5od2Rlc2NbMF0pLCBHRlBfQVRP
TUlDKTsKKwlpZiAoIWQpCisJCXJldHVybiBOVUxMOworCisJZC0+aHdkZXNjX2NvdW50ID0gcGVy
aW9kczsKKworCS8qIFRPRE86IHJlLWNoZWNrIHRoaXMuLi4gKi8KKwlpZiAoZGlyID09IERNQV9E
RVZfVE9fTUVNKQorCQlyaW5nX2lkID0gazNfcmluZ2FjY19nZXRfcmluZ19pZCh1Yy0+cmNoYW4t
PnJfcmluZyk7CisJZWxzZQorCQlyaW5nX2lkID0gazNfcmluZ2FjY19nZXRfcmluZ19pZCh1Yy0+
dGNoYW4tPnRjX3JpbmcpOworCisJZm9yIChpID0gMDsgaSA8IHBlcmlvZHM7IGkrKykgeworCQlz
dHJ1Y3QgdWRtYV9od2Rlc2MgKmh3ZGVzYyA9ICZkLT5od2Rlc2NbaV07CisJCWRtYV9hZGRyX3Qg
cGVyaW9kX2FkZHIgPSBidWZfYWRkciArIChwZXJpb2RfbGVuICogaSk7CisJCXN0cnVjdCBjcHBp
NV9ob3N0X2Rlc2NfdCAqaF9kZXNjOworCisJCWh3ZGVzYy0+Y3BwaTVfZGVzY192YWRkciA9IGRt
YV9wb29sX3phbGxvYyh1Yy0+aGRlc2NfcG9vbCwKKwkJCQkJCUdGUF9BVE9NSUMsCisJCQkJCQkm
aHdkZXNjLT5jcHBpNV9kZXNjX3BhZGRyKTsKKwkJaWYgKCFod2Rlc2MtPmNwcGk1X2Rlc2NfdmFk
ZHIpIHsKKwkJCWRldl9lcnIodWMtPnVkLT5kZXYsCisJCQkJImRlc2NyaXB0b3IlZCBhbGxvY2F0
aW9uIGZhaWxlZFxuIiwgaSk7CisKKwkJCXVkbWFfZnJlZV9od2Rlc2ModWMsIGQpOworCQkJa2Zy
ZWUoZCk7CisJCQlyZXR1cm4gTlVMTDsKKwkJfQorCisJCWh3ZGVzYy0+Y3BwaTVfZGVzY19zaXpl
ID0gdWMtPmhkZXNjX3NpemU7CisJCWhfZGVzYyA9IGh3ZGVzYy0+Y3BwaTVfZGVzY192YWRkcjsK
KworCQljcHBpNV9oZGVzY19pbml0KGhfZGVzYywgMCwgMCk7CisJCWNwcGk1X2hkZXNjX3NldF9w
a3RsZW4oaF9kZXNjLCBwZXJpb2RfbGVuKTsKKworCQkvKiBGbG93IGFuZCBQYWNrZWQgSUQgKi8K
KwkJY3BwaTVfZGVzY19zZXRfcGt0aWRzKCZoX2Rlc2MtPmhkciwgdWMtPmlkLCAweDNmZmYpOwor
CQljcHBpNV9kZXNjX3NldF9yZXRwb2xpY3koJmhfZGVzYy0+aGRyLCAwLCByaW5nX2lkKTsKKwor
CQkvKiBhdHRhY2ggZWFjaCBwZXJpb2QgdG8gYSBuZXcgZGVzY3JpcHRvciAqLworCQljcHBpNV9o
ZGVzY19hdHRhY2hfYnVmKGhfZGVzYywKKwkJCQkgICAgICAgcGVyaW9kX2FkZHIsIHBlcmlvZF9s
ZW4sCisJCQkJICAgICAgIHBlcmlvZF9hZGRyLCBwZXJpb2RfbGVuKTsKKwl9CisKKwlyZXR1cm4g
ZDsKK30KKworc3RhdGljIHN0cnVjdCBkbWFfYXN5bmNfdHhfZGVzY3JpcHRvciAqdWRtYV9wcmVw
X2RtYV9jeWNsaWMoCisJc3RydWN0IGRtYV9jaGFuICpjaGFuLCBkbWFfYWRkcl90IGJ1Zl9hZGRy
LCBzaXplX3QgYnVmX2xlbiwKKwlzaXplX3QgcGVyaW9kX2xlbiwgZW51bSBkbWFfdHJhbnNmZXJf
ZGlyZWN0aW9uIGRpciwgdW5zaWduZWQgbG9uZyBmbGFncykKK3sKKwlzdHJ1Y3QgdWRtYV9jaGFu
ICp1YyA9IHRvX3VkbWFfY2hhbihjaGFuKTsKKwllbnVtIGRtYV9zbGF2ZV9idXN3aWR0aCBkZXZf
d2lkdGg7CisJc3RydWN0IHVkbWFfZGVzYyAqZDsKKwl1MzIgYnVyc3Q7CisKKwlpZiAoZGlyICE9
IHVjLT5kaXIpIHsKKwkJZGV2X2VycihjaGFuLT5kZXZpY2UtPmRldiwKKwkJCSIlczogY2hhbiVk
IGlzIGZvciAlcywgbm90IHN1cHBvcnRpbmcgJXNcbiIsCisJCQlfX2Z1bmNfXywgdWMtPmlkLCB1
ZG1hX2dldF9kaXJfdGV4dCh1Yy0+ZGlyKSwKKwkJCXVkbWFfZ2V0X2Rpcl90ZXh0KGRpcikpOwor
CQlyZXR1cm4gTlVMTDsKKwl9CisKKwl1Yy0+Y3ljbGljID0gdHJ1ZTsKKworCWlmIChkaXIgPT0g
RE1BX0RFVl9UT19NRU0pIHsKKwkJZGV2X3dpZHRoID0gdWMtPmNmZy5zcmNfYWRkcl93aWR0aDsK
KwkJYnVyc3QgPSB1Yy0+Y2ZnLnNyY19tYXhidXJzdDsKKwl9IGVsc2UgaWYgKGRpciA9PSBETUFf
TUVNX1RPX0RFVikgeworCQlkZXZfd2lkdGggPSB1Yy0+Y2ZnLmRzdF9hZGRyX3dpZHRoOworCQli
dXJzdCA9IHVjLT5jZmcuZHN0X21heGJ1cnN0OworCX0gZWxzZSB7CisJCWRldl9lcnIodWMtPnVk
LT5kZXYsICIlczogYmFkIGRpcmVjdGlvbj9cbiIsIF9fZnVuY19fKTsKKwkJcmV0dXJuIE5VTEw7
CisJfQorCisJaWYgKCFidXJzdCkKKwkJYnVyc3QgPSAxOworCisJaWYgKHVjLT5wa3RfbW9kZSkK
KwkJZCA9IHVkbWFfcHJlcF9kbWFfY3ljbGljX3BrdCh1YywgYnVmX2FkZHIsIGJ1Zl9sZW4sIHBl
cmlvZF9sZW4sCisJCQkJCSAgICAgZGlyLCBmbGFncyk7CisJZWxzZQorCQlkID0gdWRtYV9wcmVw
X2RtYV9jeWNsaWNfdHIodWMsIGJ1Zl9hZGRyLCBidWZfbGVuLCBwZXJpb2RfbGVuLAorCQkJCQkg
ICAgZGlyLCBmbGFncyk7CisKKwlpZiAoIWQpCisJCXJldHVybiBOVUxMOworCisJZC0+c2dsZW4g
PSBidWZfbGVuIC8gcGVyaW9kX2xlbjsKKworCWQtPmRpciA9IGRpcjsKKwlkLT5yZXNpZHVlID0g
YnVmX2xlbjsKKworCS8qIHN0YXRpYyBUUiBmb3IgcmVtb3RlIFBETUEgKi8KKwlpZiAodWRtYV9j
b25maWd1cmVfc3RhdGljdHIodWMsIGQsIGRldl93aWR0aCwgYnVyc3QpKSB7CisJCWRldl9lcnIo
dWMtPnVkLT5kZXYsCisJCQkiJXM6IFN0YXRpY1RSIFogaXMgbGltdGVkIHRvIG1heGltdW0gNDA5
NSAoJXUpXG4iLAorCQkJX19mdW5jX18sIGQtPnN0YXRpY190ci5ic3RjbnQpOworCisJCXVkbWFf
ZnJlZV9od2Rlc2ModWMsIGQpOworCQlrZnJlZShkKTsKKwkJcmV0dXJuIE5VTEw7CisJfQorCisJ
aWYgKHVjLT5tZXRhZGF0YV9zaXplKQorCQlkLT52ZC50eC5tZXRhZGF0YV9vcHMgPSAmbWV0YWRh
dGFfb3BzOworCisJcmV0dXJuIHZjaGFuX3R4X3ByZXAoJnVjLT52YywgJmQtPnZkLCBmbGFncyk7
Cit9CisKK3N0YXRpYyBzdHJ1Y3QgZG1hX2FzeW5jX3R4X2Rlc2NyaXB0b3IgKnVkbWFfcHJlcF9k
bWFfbWVtY3B5KAorCXN0cnVjdCBkbWFfY2hhbiAqY2hhbiwgZG1hX2FkZHJfdCBkZXN0LCBkbWFf
YWRkcl90IHNyYywKKwlzaXplX3QgbGVuLCB1bnNpZ25lZCBsb25nIHR4X2ZsYWdzKQoreworCXN0
cnVjdCB1ZG1hX2NoYW4gKnVjID0gdG9fdWRtYV9jaGFuKGNoYW4pOworCXN0cnVjdCB1ZG1hX2Rl
c2MgKmQ7CisJc3RydWN0IGNwcGk1X3RyX3R5cGUxNV90ICp0cl9yZXE7CisJaW50IG51bV90cjsK
KwlzaXplX3QgdHJfc2l6ZSA9IHNpemVvZihzdHJ1Y3QgY3BwaTVfdHJfdHlwZTE1X3QpOworCXUx
NiB0cjBfY250MCwgdHIwX2NudDEsIHRyMV9jbnQwOworCisJaWYgKHVjLT5kaXIgIT0gRE1BX01F
TV9UT19NRU0pIHsKKwkJZGV2X2VycihjaGFuLT5kZXZpY2UtPmRldiwKKwkJCSIlczogY2hhbiVk
IGlzIGZvciAlcywgbm90IHN1cHBvcnRpbmcgJXNcbiIsCisJCQlfX2Z1bmNfXywgdWMtPmlkLCB1
ZG1hX2dldF9kaXJfdGV4dCh1Yy0+ZGlyKSwKKwkJCXVkbWFfZ2V0X2Rpcl90ZXh0KERNQV9NRU1f
VE9fTUVNKSk7CisJCXJldHVybiBOVUxMOworCX0KKworCWlmIChsZW4gPCBTWl82NEspIHsKKwkJ
bnVtX3RyID0gMTsKKwkJdHIwX2NudDAgPSBsZW47CisJCXRyMF9jbnQxID0gMTsKKwl9IGVsc2Ug
eworCQl1bnNpZ25lZCBsb25nIGFsaWduX3RvID0gX19mZnMoc3JjIHwgZGVzdCk7CisKKwkJaWYg
KGFsaWduX3RvID4gMykKKwkJCWFsaWduX3RvID0gMzsKKwkJLyoKKwkJICogS2VlcCBzaW1wbGU6
IHRyMDogU1pfNjRLLWFsaWdubWVudCBibG9ja3MsCisJCSAqCQl0cjE6IHRoZSByZW1haW5pbmcK
KwkJICovCisJCW51bV90ciA9IDI7CisJCXRyMF9jbnQwID0gKFNaXzY0SyAtIEJJVChhbGlnbl90
bykpOworCQlpZiAobGVuIC8gdHIwX2NudDAgPj0gU1pfNjRLKSB7CisJCQlkZXZfZXJyKHVjLT51
ZC0+ZGV2LCAic2l6ZSAlenUgaXMgbm90IHN1cHBvcnRlZFxuIiwKKwkJCQlsZW4pOworCQkJcmV0
dXJuIE5VTEw7CisJCX0KKworCQl0cjBfY250MSA9IGxlbiAvIHRyMF9jbnQwOworCQl0cjFfY250
MCA9IGxlbiAlIHRyMF9jbnQwOworCX0KKworCWQgPSB1ZG1hX2FsbG9jX3RyX2Rlc2ModWMsIHRy
X3NpemUsIG51bV90ciwgRE1BX01FTV9UT19NRU0pOworCWlmICghZCkKKwkJcmV0dXJuIE5VTEw7
CisKKwlkLT5kaXIgPSBETUFfTUVNX1RPX01FTTsKKwlkLT5kZXNjX2lkeCA9IDA7CisJZC0+dHJf
aWR4ID0gMDsKKwlkLT5yZXNpZHVlID0gbGVuOworCisJdHJfcmVxID0gKHN0cnVjdCBjcHBpNV90
cl90eXBlMTVfdCAqKWQtPmh3ZGVzY1swXS50cl9yZXFfYmFzZTsKKworCWNwcGk1X3RyX2luaXQo
JnRyX3JlcVswXS5mbGFncywgQ1BQSTVfVFJfVFlQRTE1LCBmYWxzZSwgdHJ1ZSwKKwkJICAgICAg
Q1BQSTVfVFJfRVZFTlRfU0laRV9DT01QTEVUSU9OLCAwKTsKKwljcHBpNV90cl9jc2Zfc2V0KCZ0
cl9yZXFbMF0uZmxhZ3MsIENQUEk1X1RSX0NTRl9TVVBSX0VWVCk7CisKKwl0cl9yZXFbMF0uYWRk
ciA9IHNyYzsKKwl0cl9yZXFbMF0uaWNudDAgPSB0cjBfY250MDsKKwl0cl9yZXFbMF0uaWNudDEg
PSB0cjBfY250MTsKKwl0cl9yZXFbMF0uaWNudDIgPSAxOworCXRyX3JlcVswXS5pY250MyA9IDE7
CisJdHJfcmVxWzBdLmRpbTEgPSB0cjBfY250MDsKKworCXRyX3JlcVswXS5kYWRkciA9IGRlc3Q7
CisJdHJfcmVxWzBdLmRpY250MCA9IHRyMF9jbnQwOworCXRyX3JlcVswXS5kaWNudDEgPSB0cjBf
Y250MTsKKwl0cl9yZXFbMF0uZGljbnQyID0gMTsKKwl0cl9yZXFbMF0uZGljbnQzID0gMTsKKwl0
cl9yZXFbMF0uZGRpbTEgPSB0cjBfY250MDsKKworCWlmIChudW1fdHIgPT0gMikgeworCQljcHBp
NV90cl9pbml0KCZ0cl9yZXFbMV0uZmxhZ3MsIENQUEk1X1RSX1RZUEUxNSwgZmFsc2UsIHRydWUs
CisJCQkgICAgICBDUFBJNV9UUl9FVkVOVF9TSVpFX0NPTVBMRVRJT04sIDApOworCQljcHBpNV90
cl9jc2Zfc2V0KCZ0cl9yZXFbMV0uZmxhZ3MsIENQUEk1X1RSX0NTRl9TVVBSX0VWVCk7CisKKwkJ
dHJfcmVxWzFdLmFkZHIgPSBzcmMgKyB0cjBfY250MSAqIHRyMF9jbnQwOworCQl0cl9yZXFbMV0u
aWNudDAgPSB0cjFfY250MDsKKwkJdHJfcmVxWzFdLmljbnQxID0gMTsKKwkJdHJfcmVxWzFdLmlj
bnQyID0gMTsKKwkJdHJfcmVxWzFdLmljbnQzID0gMTsKKworCQl0cl9yZXFbMV0uZGFkZHIgPSBk
ZXN0ICsgdHIwX2NudDEgKiB0cjBfY250MDsKKwkJdHJfcmVxWzFdLmRpY250MCA9IHRyMV9jbnQw
OworCQl0cl9yZXFbMV0uZGljbnQxID0gMTsKKwkJdHJfcmVxWzFdLmRpY250MiA9IDE7CisJCXRy
X3JlcVsxXS5kaWNudDMgPSAxOworCX0KKworCWNwcGk1X3RyX2NzZl9zZXQoJnRyX3JlcVtudW1f
dHIgLSAxXS5mbGFncywgQ1BQSTVfVFJfQ1NGX0VPUCk7CisKKwlpZiAodWMtPm1ldGFkYXRhX3Np
emUpCisJCWQtPnZkLnR4Lm1ldGFkYXRhX29wcyA9ICZtZXRhZGF0YV9vcHM7CisKKwlyZXR1cm4g
dmNoYW5fdHhfcHJlcCgmdWMtPnZjLCAmZC0+dmQsIHR4X2ZsYWdzKTsKK30KKwogc3RhdGljIHZv
aWQgdWRtYV9pc3N1ZV9wZW5kaW5nKHN0cnVjdCBkbWFfY2hhbiAqY2hhbikKIHsKIAlzdHJ1Y3Qg
dWRtYV9jaGFuICp1YyA9IHRvX3VkbWFfY2hhbihjaGFuKTsKLS0gClBldGVyCgpUZXhhcyBJbnN0
cnVtZW50cyBGaW5sYW5kIE95LCBQb3Jra2FsYW5rYXR1IDIyLCAwMDE4MCBIZWxzaW5raS4KWS10
dW5udXMvQnVzaW5lc3MgSUQ6IDA2MTU1MjEtNC4gS290aXBhaWtrYS9Eb21pY2lsZTogSGVsc2lu
a2kKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
