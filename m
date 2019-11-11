Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44536F75C2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 14:57:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6AoECbHy87AqbMB30wbsW0J7khZ6Xs9QW4vCqUrWGZE=; b=tnRj3HSHM7ppPQ
	KkgTKmWSuPXWeDm5N3C4Udnk6uyDIRUpu9XyVBaAIu07fYSbEJXMjD2Cen92BI5tpOjH4XAAgayuo
	TwgG2PYlQB1ztWT29HF79JE0wdlwDijSi5PkwxQyWk2LTMhYwy/ZDkSy7DAzAxrTBUVgUWxxF2BJe
	WJPWAoyAZHVsheVmMqzla9yHrT8XN24Z9+4S7KbQXdTZ+GvJ4yVD001Qka07j7bTJp+Bgpnp9Un/4
	CD38UAdm8NMfZGcOayDIwo/EmK0hiAib/rmLjM3IEdj7gSDf7w3QF98fckT1QHQVSW9wFscVoDN6x
	GlWd2/ePu+YO392SwA1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUABt-0005km-KY; Mon, 11 Nov 2019 13:57:13 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUA7y-00010s-F2
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 13:53:15 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id xABDr6be090695;
 Mon, 11 Nov 2019 07:53:06 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573480386;
 bh=ohRHfztl/6cwF/ARblvPlIwfCKujALnmx6Fu/d0o7cU=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=JaU2tcB3WN+oVX9nAefMGll10oCv8xzvrHGI6fxhCXyoYinufZUOkG++nUWIPhzqJ
 X70LtqTIAZ2Zo8A6JFFeuPA2ThL2s2LFqd4HUXcvz8mWVjcAwORj2Zb6oY9yVOoKDA
 OtDTg2rhc3KjPHmp+JE2QVF+DlRjtZ5O+1PRBbrA=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id xABDr633046552;
 Mon, 11 Nov 2019 07:53:06 -0600
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 11
 Nov 2019 07:52:49 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 11 Nov 2019 07:52:49 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id xABDqE90097668;
 Mon, 11 Nov 2019 07:53:03 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <vkoul@kernel.org>, <robh+dt@kernel.org>, <nm@ti.com>,
 <ssantosh@kernel.org>
Subject: [PATCH v5 13/15] dmaengine: ti: New driver for K3 UDMA - split#5:
 dma_device callbacks 2
Date: Mon, 11 Nov 2019 15:53:28 +0200
Message-ID: <20191111135330.8235-14-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191111135330.8235-1-peter.ujfalusi@ti.com>
References: <20191111135330.8235-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_055310_707685_4DAA19D5 
X-CRM114-Status: GOOD (  17.13  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
azMtdWRtYS5jIHwgNzAyICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwog
MSBmaWxlIGNoYW5nZWQsIDcwMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9k
bWEvdGkvazMtdWRtYS5jIGIvZHJpdmVycy9kbWEvdGkvazMtdWRtYS5jCmluZGV4IDRiMTEzYzRl
YjNkOS4uOGNmZmM0MWI5ZDM4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2RtYS90aS9rMy11ZG1hLmMK
KysrIGIvZHJpdmVycy9kbWEvdGkvazMtdWRtYS5jCkBAIC0xNzkwLDYgKzE3OTAsNzA4IEBAIHN0
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
Y2NfZ2V0X3JpbmdfaWQodWMtPnJmbG93LT5yX3JpbmcpOworCWVsc2UKKwkJcmluZ19pZCA9IGsz
X3JpbmdhY2NfZ2V0X3JpbmdfaWQodWMtPnRjaGFuLT50Y19yaW5nKTsKKworCWNwcGk1X3RyZGVz
Y19pbml0KHRyX2Rlc2MsIHRyX2NvdW50LCB0cl9zaXplLCAwLCByZWxvYWRfY291bnQpOworCWNw
cGk1X2Rlc2Nfc2V0X3BrdGlkcyh0cl9kZXNjLCB1Yy0+aWQsIDB4M2ZmZik7CisJY3BwaTVfZGVz
Y19zZXRfcmV0cG9saWN5KHRyX2Rlc2MsIDAsIHJpbmdfaWQpOworCisJcmV0dXJuIGQ7Cit9CisK
K3N0YXRpYyBzdHJ1Y3QgdWRtYV9kZXNjICoKK3VkbWFfcHJlcF9zbGF2ZV9zZ190cihzdHJ1Y3Qg
dWRtYV9jaGFuICp1Yywgc3RydWN0IHNjYXR0ZXJsaXN0ICpzZ2wsCisJCSAgICAgIHVuc2lnbmVk
IGludCBzZ2xlbiwgZW51bSBkbWFfdHJhbnNmZXJfZGlyZWN0aW9uIGRpciwKKwkJICAgICAgdW5z
aWduZWQgbG9uZyB0eF9mbGFncywgdm9pZCAqY29udGV4dCkKK3sKKwllbnVtIGRtYV9zbGF2ZV9i
dXN3aWR0aCBkZXZfd2lkdGg7CisJc3RydWN0IHNjYXR0ZXJsaXN0ICpzZ2VudDsKKwlzdHJ1Y3Qg
dWRtYV9kZXNjICpkOworCXNpemVfdCB0cl9zaXplOworCXN0cnVjdCBjcHBpNV90cl90eXBlMV90
ICp0cl9yZXEgPSBOVUxMOworCXVuc2lnbmVkIGludCBpOworCXUzMiBidXJzdDsKKworCWlmIChk
aXIgPT0gRE1BX0RFVl9UT19NRU0pIHsKKwkJZGV2X3dpZHRoID0gdWMtPmNmZy5zcmNfYWRkcl93
aWR0aDsKKwkJYnVyc3QgPSB1Yy0+Y2ZnLnNyY19tYXhidXJzdDsKKwl9IGVsc2UgaWYgKGRpciA9
PSBETUFfTUVNX1RPX0RFVikgeworCQlkZXZfd2lkdGggPSB1Yy0+Y2ZnLmRzdF9hZGRyX3dpZHRo
OworCQlidXJzdCA9IHVjLT5jZmcuZHN0X21heGJ1cnN0OworCX0gZWxzZSB7CisJCWRldl9lcnIo
dWMtPnVkLT5kZXYsICIlczogYmFkIGRpcmVjdGlvbj9cbiIsIF9fZnVuY19fKTsKKwkJcmV0dXJu
IE5VTEw7CisJfQorCisJaWYgKCFidXJzdCkKKwkJYnVyc3QgPSAxOworCisJLyogTm93IGFsbG9j
YXRlIGFuZCBzZXR1cCB0aGUgZGVzY3JpcHRvci4gKi8KKwl0cl9zaXplID0gc2l6ZW9mKHN0cnVj
dCBjcHBpNV90cl90eXBlMV90KTsKKwlkID0gdWRtYV9hbGxvY190cl9kZXNjKHVjLCB0cl9zaXpl
LCBzZ2xlbiwgZGlyKTsKKwlpZiAoIWQpCisJCXJldHVybiBOVUxMOworCisJZC0+c2dsZW4gPSBz
Z2xlbjsKKworCXRyX3JlcSA9IChzdHJ1Y3QgY3BwaTVfdHJfdHlwZTFfdCAqKWQtPmh3ZGVzY1sw
XS50cl9yZXFfYmFzZTsKKwlmb3JfZWFjaF9zZyhzZ2wsIHNnZW50LCBzZ2xlbiwgaSkgeworCQlk
LT5yZXNpZHVlICs9IHNnX2RtYV9sZW4oc2dlbnQpOworCisJCWNwcGk1X3RyX2luaXQoJnRyX3Jl
cVtpXS5mbGFncywgQ1BQSTVfVFJfVFlQRTEsIGZhbHNlLCBmYWxzZSwKKwkJCSAgICAgIENQUEk1
X1RSX0VWRU5UX1NJWkVfQ09NUExFVElPTiwgMCk7CisJCWNwcGk1X3RyX2NzZl9zZXQoJnRyX3Jl
cVtpXS5mbGFncywgQ1BQSTVfVFJfQ1NGX1NVUFJfRVZUKTsKKworCQl0cl9yZXFbaV0uYWRkciA9
IHNnX2RtYV9hZGRyZXNzKHNnZW50KTsKKwkJdHJfcmVxW2ldLmljbnQwID0gYnVyc3QgKiBkZXZf
d2lkdGg7CisJCXRyX3JlcVtpXS5kaW0xID0gYnVyc3QgKiBkZXZfd2lkdGg7CisJCXRyX3JlcVtp
XS5pY250MSA9IHNnX2RtYV9sZW4oc2dlbnQpIC8gdHJfcmVxW2ldLmljbnQwOworCX0KKworCWNw
cGk1X3RyX2NzZl9zZXQoJnRyX3JlcVtpIC0gMV0uZmxhZ3MsIENQUEk1X1RSX0NTRl9FT1ApOwor
CisJcmV0dXJuIGQ7Cit9CisKK3N0YXRpYyBpbnQgdWRtYV9jb25maWd1cmVfc3RhdGljdHIoc3Ry
dWN0IHVkbWFfY2hhbiAqdWMsIHN0cnVjdCB1ZG1hX2Rlc2MgKmQsCisJCQkJICAgZW51bSBkbWFf
c2xhdmVfYnVzd2lkdGggZGV2X3dpZHRoLAorCQkJCSAgIHUxNiBlbGNudCkKK3sKKwlpZiAodWMt
PmVwX3R5cGUgIT0gUFNJTF9FUF9QRE1BX1hZKQorCQlyZXR1cm4gMDsKKworCS8qIEJ1cyB3aWR0
aCB0cmFuc2xhdGVzIHRvIHRoZSBlbGVtZW50IHNpemUgKEVTKSAqLworCXN3aXRjaCAoZGV2X3dp
ZHRoKSB7CisJY2FzZSBETUFfU0xBVkVfQlVTV0lEVEhfMV9CWVRFOgorCQlkLT5zdGF0aWNfdHIu
ZWxzaXplID0gMDsKKwkJYnJlYWs7CisJY2FzZSBETUFfU0xBVkVfQlVTV0lEVEhfMl9CWVRFUzoK
KwkJZC0+c3RhdGljX3RyLmVsc2l6ZSA9IDE7CisJCWJyZWFrOworCWNhc2UgRE1BX1NMQVZFX0JV
U1dJRFRIXzNfQllURVM6CisJCWQtPnN0YXRpY190ci5lbHNpemUgPSAyOworCQlicmVhazsKKwlj
YXNlIERNQV9TTEFWRV9CVVNXSURUSF80X0JZVEVTOgorCQlkLT5zdGF0aWNfdHIuZWxzaXplID0g
MzsKKwkJYnJlYWs7CisJY2FzZSBETUFfU0xBVkVfQlVTV0lEVEhfOF9CWVRFUzoKKwkJZC0+c3Rh
dGljX3RyLmVsc2l6ZSA9IDQ7CisJCWJyZWFrOworCWRlZmF1bHQ6IC8qIG5vdCByZWFjaGVkICov
CisJCXJldHVybiAtRUlOVkFMOworCX0KKworCWQtPnN0YXRpY190ci5lbGNudCA9IGVsY250Owor
CisJLyoKKwkgKiBQRE1BIG11c3QgdG8gY2xvc2UgdGhlIHBhY2tldCB3aGVuIHRoZSBjaGFubmVs
IGlzIGluIHBhY2tldCBtb2RlLgorCSAqIEZvciBUUiBtb2RlIHdoZW4gdGhlIGNoYW5uZWwgaXMg
bm90IGN5Y2xpYyB3ZSBhbHNvIG5lZWQgUERNQSB0byBjbG9zZQorCSAqIHRoZSBwYWNrZXQgb3Ro
ZXJ3aXNlIHRoZSB0cmFuc2ZlciB3aWxsIHN0YWxsIGJlY2F1c2UgUERNQSBob2xkcyBvbgorCSAq
IHRoZSBkYXRhIGl0IGhhcyByZWNlaXZlZCBmcm9tIHRoZSBwZXJpcGhlcmFsLgorCSAqLworCWlm
ICh1Yy0+cGt0X21vZGUgfHwgIXVjLT5jeWNsaWMpIHsKKwkJdW5zaWduZWQgaW50IGRpdiA9IGRl
dl93aWR0aCAqIGVsY250OworCisJCWlmICh1Yy0+Y3ljbGljKQorCQkJZC0+c3RhdGljX3RyLmJz
dGNudCA9IGQtPnJlc2lkdWUgLyBkLT5zZ2xlbiAvIGRpdjsKKwkJZWxzZQorCQkJZC0+c3RhdGlj
X3RyLmJzdGNudCA9IGQtPnJlc2lkdWUgLyBkaXY7CisKKwkJaWYgKHVjLT5kaXIgPT0gRE1BX0RF
Vl9UT19NRU0gJiYKKwkJICAgIGQtPnN0YXRpY190ci5ic3RjbnQgPiB1Yy0+dWQtPm1hdGNoX2Rh
dGEtPnN0YXRpY3RyX3pfbWFzaykKKwkJCXJldHVybiAtRUlOVkFMOworCX0gZWxzZSB7CisJCWQt
PnN0YXRpY190ci5ic3RjbnQgPSAwOworCX0KKworCXJldHVybiAwOworfQorCitzdGF0aWMgc3Ry
dWN0IHVkbWFfZGVzYyAqCit1ZG1hX3ByZXBfc2xhdmVfc2dfcGt0KHN0cnVjdCB1ZG1hX2NoYW4g
KnVjLCBzdHJ1Y3Qgc2NhdHRlcmxpc3QgKnNnbCwKKwkJICAgICAgIHVuc2lnbmVkIGludCBzZ2xl
biwgZW51bSBkbWFfdHJhbnNmZXJfZGlyZWN0aW9uIGRpciwKKwkJICAgICAgIHVuc2lnbmVkIGxv
bmcgdHhfZmxhZ3MsIHZvaWQgKmNvbnRleHQpCit7CisJc3RydWN0IHNjYXR0ZXJsaXN0ICpzZ2Vu
dDsKKwlzdHJ1Y3QgY3BwaTVfaG9zdF9kZXNjX3QgKmhfZGVzYyA9IE5VTEw7CisJc3RydWN0IHVk
bWFfZGVzYyAqZDsKKwl1MzIgcmluZ19pZDsKKwl1bnNpZ25lZCBpbnQgaTsKKworCWQgPSBremFs
bG9jKHNpemVvZigqZCkgKyBzZ2xlbiAqIHNpemVvZihkLT5od2Rlc2NbMF0pLCBHRlBfQVRPTUlD
KTsKKwlpZiAoIWQpCisJCXJldHVybiBOVUxMOworCisJZC0+c2dsZW4gPSBzZ2xlbjsKKwlkLT5o
d2Rlc2NfY291bnQgPSBzZ2xlbjsKKworCWlmIChkaXIgPT0gRE1BX0RFVl9UT19NRU0pCisJCXJp
bmdfaWQgPSBrM19yaW5nYWNjX2dldF9yaW5nX2lkKHVjLT5yZmxvdy0+cl9yaW5nKTsKKwllbHNl
CisJCXJpbmdfaWQgPSBrM19yaW5nYWNjX2dldF9yaW5nX2lkKHVjLT50Y2hhbi0+dGNfcmluZyk7
CisKKwlmb3JfZWFjaF9zZyhzZ2wsIHNnZW50LCBzZ2xlbiwgaSkgeworCQlzdHJ1Y3QgdWRtYV9o
d2Rlc2MgKmh3ZGVzYyA9ICZkLT5od2Rlc2NbaV07CisJCWRtYV9hZGRyX3Qgc2dfYWRkciA9IHNn
X2RtYV9hZGRyZXNzKHNnZW50KTsKKwkJc3RydWN0IGNwcGk1X2hvc3RfZGVzY190ICpkZXNjOwor
CQlzaXplX3Qgc2dfbGVuID0gc2dfZG1hX2xlbihzZ2VudCk7CisKKwkJaHdkZXNjLT5jcHBpNV9k
ZXNjX3ZhZGRyID0gZG1hX3Bvb2xfemFsbG9jKHVjLT5oZGVzY19wb29sLAorCQkJCQkJR0ZQX0FU
T01JQywKKwkJCQkJCSZod2Rlc2MtPmNwcGk1X2Rlc2NfcGFkZHIpOworCQlpZiAoIWh3ZGVzYy0+
Y3BwaTVfZGVzY192YWRkcikgeworCQkJZGV2X2Vycih1Yy0+dWQtPmRldiwKKwkJCQkiZGVzY3Jp
cHRvciVkIGFsbG9jYXRpb24gZmFpbGVkXG4iLCBpKTsKKworCQkJdWRtYV9mcmVlX2h3ZGVzYyh1
YywgZCk7CisJCQlrZnJlZShkKTsKKwkJCXJldHVybiBOVUxMOworCQl9CisKKwkJZC0+cmVzaWR1
ZSArPSBzZ19sZW47CisJCWh3ZGVzYy0+Y3BwaTVfZGVzY19zaXplID0gdWMtPmhkZXNjX3NpemU7
CisJCWRlc2MgPSBod2Rlc2MtPmNwcGk1X2Rlc2NfdmFkZHI7CisKKwkJaWYgKGkgPT0gMCkgewor
CQkJY3BwaTVfaGRlc2NfaW5pdChkZXNjLCAwLCAwKTsKKwkJCS8qIEZsb3cgYW5kIFBhY2tlZCBJ
RCAqLworCQkJY3BwaTVfZGVzY19zZXRfcGt0aWRzKCZkZXNjLT5oZHIsIHVjLT5pZCwgMHgzZmZm
KTsKKwkJCWNwcGk1X2Rlc2Nfc2V0X3JldHBvbGljeSgmZGVzYy0+aGRyLCAwLCByaW5nX2lkKTsK
KwkJfSBlbHNlIHsKKwkJCWNwcGk1X2hkZXNjX3Jlc2V0X2hiZGVzYyhkZXNjKTsKKwkJCWNwcGk1
X2Rlc2Nfc2V0X3JldHBvbGljeSgmZGVzYy0+aGRyLCAwLCAweGZmZmYpOworCQl9CisKKwkJLyog
YXR0YWNoIHRoZSBzZyBidWZmZXIgdG8gdGhlIGRlc2NyaXB0b3IgKi8KKwkJY3BwaTVfaGRlc2Nf
YXR0YWNoX2J1ZihkZXNjLCBzZ19hZGRyLCBzZ19sZW4sIHNnX2FkZHIsIHNnX2xlbik7CisKKwkJ
LyogQXR0YWNoIGxpbmsgYXMgaG9zdCBidWZmZXIgZGVzY3JpcHRvciAqLworCQlpZiAoaF9kZXNj
KQorCQkJY3BwaTVfaGRlc2NfbGlua19oYmRlc2MoaF9kZXNjLAorCQkJCQkJaHdkZXNjLT5jcHBp
NV9kZXNjX3BhZGRyKTsKKworCQlpZiAoZGlyID09IERNQV9NRU1fVE9fREVWKQorCQkJaF9kZXNj
ID0gZGVzYzsKKwl9CisKKwlpZiAoZC0+cmVzaWR1ZSA+PSBTWl80TSkgeworCQlkZXZfZXJyKHVj
LT51ZC0+ZGV2LAorCQkJIiVzOiBUcmFuc2ZlciBzaXplICV1IGlzIG92ZXIgdGhlIHN1cHBvcnRl
ZCA0TSByYW5nZVxuIiwKKwkJCV9fZnVuY19fLCBkLT5yZXNpZHVlKTsKKwkJdWRtYV9mcmVlX2h3
ZGVzYyh1YywgZCk7CisJCWtmcmVlKGQpOworCQlyZXR1cm4gTlVMTDsKKwl9CisKKwloX2Rlc2Mg
PSBkLT5od2Rlc2NbMF0uY3BwaTVfZGVzY192YWRkcjsKKwljcHBpNV9oZGVzY19zZXRfcGt0bGVu
KGhfZGVzYywgZC0+cmVzaWR1ZSk7CisKKwlyZXR1cm4gZDsKK30KKworc3RhdGljIGludCB1ZG1h
X2F0dGFjaF9tZXRhZGF0YShzdHJ1Y3QgZG1hX2FzeW5jX3R4X2Rlc2NyaXB0b3IgKmRlc2MsCisJ
CQkJdm9pZCAqZGF0YSwgc2l6ZV90IGxlbikKK3sKKwlzdHJ1Y3QgdWRtYV9kZXNjICpkID0gdG9f
dWRtYV9kZXNjKGRlc2MpOworCXN0cnVjdCB1ZG1hX2NoYW4gKnVjID0gdG9fdWRtYV9jaGFuKGRl
c2MtPmNoYW4pOworCXN0cnVjdCBjcHBpNV9ob3N0X2Rlc2NfdCAqaF9kZXNjOworCXUzMiBwc2Rf
c2l6ZSA9IGxlbjsKKwl1MzIgZmxhZ3MgPSAwOworCisJaWYgKCF1Yy0+cGt0X21vZGUgfHwgIXVj
LT5tZXRhZGF0YV9zaXplKQorCQlyZXR1cm4gLUVOT1RTVVBQOworCisJaWYgKCFkYXRhIHx8IGxl
biA+IHVjLT5tZXRhZGF0YV9zaXplKQorCQlyZXR1cm4gLUVJTlZBTDsKKworCWlmICh1Yy0+bmVl
ZHNfZXBpYiAmJiBsZW4gPCBDUFBJNV9JTkZPMF9IREVTQ19FUElCX1NJWkUpCisJCXJldHVybiAt
RUlOVkFMOworCisJaF9kZXNjID0gZC0+aHdkZXNjWzBdLmNwcGk1X2Rlc2NfdmFkZHI7CisJaWYg
KGQtPmRpciA9PSBETUFfTUVNX1RPX0RFVikKKwkJbWVtY3B5KGhfZGVzYy0+ZXBpYiwgZGF0YSwg
bGVuKTsKKworCWlmICh1Yy0+bmVlZHNfZXBpYikKKwkJcHNkX3NpemUgLT0gQ1BQSTVfSU5GTzBf
SERFU0NfRVBJQl9TSVpFOworCisJZC0+bWV0YWRhdGEgPSBkYXRhOworCWQtPm1ldGFkYXRhX3Np
emUgPSBsZW47CisJaWYgKHVjLT5uZWVkc19lcGliKQorCQlmbGFncyB8PSBDUFBJNV9JTkZPMF9I
REVTQ19FUElCX1BSRVNFTlQ7CisKKwljcHBpNV9oZGVzY191cGRhdGVfZmxhZ3MoaF9kZXNjLCBm
bGFncyk7CisJY3BwaTVfaGRlc2NfdXBkYXRlX3BzZGF0YV9zaXplKGhfZGVzYywgcHNkX3NpemUp
OworCisJcmV0dXJuIDA7Cit9CisKK3N0YXRpYyB2b2lkICp1ZG1hX2dldF9tZXRhZGF0YV9wdHIo
c3RydWN0IGRtYV9hc3luY190eF9kZXNjcmlwdG9yICpkZXNjLAorCQkJCSAgIHNpemVfdCAqcGF5
bG9hZF9sZW4sIHNpemVfdCAqbWF4X2xlbikKK3sKKwlzdHJ1Y3QgdWRtYV9kZXNjICpkID0gdG9f
dWRtYV9kZXNjKGRlc2MpOworCXN0cnVjdCB1ZG1hX2NoYW4gKnVjID0gdG9fdWRtYV9jaGFuKGRl
c2MtPmNoYW4pOworCXN0cnVjdCBjcHBpNV9ob3N0X2Rlc2NfdCAqaF9kZXNjOworCisJaWYgKCF1
Yy0+cGt0X21vZGUgfHwgIXVjLT5tZXRhZGF0YV9zaXplKQorCQlyZXR1cm4gRVJSX1BUUigtRU5P
VFNVUFApOworCisJaF9kZXNjID0gZC0+aHdkZXNjWzBdLmNwcGk1X2Rlc2NfdmFkZHI7CisKKwkq
bWF4X2xlbiA9IHVjLT5tZXRhZGF0YV9zaXplOworCisJKnBheWxvYWRfbGVuID0gY3BwaTVfaGRl
c2NfZXBpYl9wcmVzZW50KCZoX2Rlc2MtPmhkcikgPworCQkgICAgICAgQ1BQSTVfSU5GTzBfSERF
U0NfRVBJQl9TSVpFIDogMDsKKwkqcGF5bG9hZF9sZW4gKz0gY3BwaTVfaGRlc2NfZ2V0X3BzZGF0
YV9zaXplKGhfZGVzYyk7CisKKwlyZXR1cm4gaF9kZXNjLT5lcGliOworfQorCitzdGF0aWMgaW50
IHVkbWFfc2V0X21ldGFkYXRhX2xlbihzdHJ1Y3QgZG1hX2FzeW5jX3R4X2Rlc2NyaXB0b3IgKmRl
c2MsCisJCQkJIHNpemVfdCBwYXlsb2FkX2xlbikKK3sKKwlzdHJ1Y3QgdWRtYV9kZXNjICpkID0g
dG9fdWRtYV9kZXNjKGRlc2MpOworCXN0cnVjdCB1ZG1hX2NoYW4gKnVjID0gdG9fdWRtYV9jaGFu
KGRlc2MtPmNoYW4pOworCXN0cnVjdCBjcHBpNV9ob3N0X2Rlc2NfdCAqaF9kZXNjOworCXUzMiBw
c2Rfc2l6ZSA9IHBheWxvYWRfbGVuOworCXUzMiBmbGFncyA9IDA7CisKKwlpZiAoIXVjLT5wa3Rf
bW9kZSB8fCAhdWMtPm1ldGFkYXRhX3NpemUpCisJCXJldHVybiAtRU5PVFNVUFA7CisKKwlpZiAo
cGF5bG9hZF9sZW4gPiB1Yy0+bWV0YWRhdGFfc2l6ZSkKKwkJcmV0dXJuIC1FSU5WQUw7CisKKwlp
ZiAodWMtPm5lZWRzX2VwaWIgJiYgcGF5bG9hZF9sZW4gPCBDUFBJNV9JTkZPMF9IREVTQ19FUElC
X1NJWkUpCisJCXJldHVybiAtRUlOVkFMOworCisJaF9kZXNjID0gZC0+aHdkZXNjWzBdLmNwcGk1
X2Rlc2NfdmFkZHI7CisKKwlpZiAodWMtPm5lZWRzX2VwaWIpIHsKKwkJcHNkX3NpemUgLT0gQ1BQ
STVfSU5GTzBfSERFU0NfRVBJQl9TSVpFOworCQlmbGFncyB8PSBDUFBJNV9JTkZPMF9IREVTQ19F
UElCX1BSRVNFTlQ7CisJfQorCisJY3BwaTVfaGRlc2NfdXBkYXRlX2ZsYWdzKGhfZGVzYywgZmxh
Z3MpOworCWNwcGk1X2hkZXNjX3VwZGF0ZV9wc2RhdGFfc2l6ZShoX2Rlc2MsIHBzZF9zaXplKTsK
KworCXJldHVybiAwOworfQorCitzdGF0aWMgc3RydWN0IGRtYV9kZXNjcmlwdG9yX21ldGFkYXRh
X29wcyBtZXRhZGF0YV9vcHMgPSB7CisJLmF0dGFjaCA9IHVkbWFfYXR0YWNoX21ldGFkYXRhLAor
CS5nZXRfcHRyID0gdWRtYV9nZXRfbWV0YWRhdGFfcHRyLAorCS5zZXRfbGVuID0gdWRtYV9zZXRf
bWV0YWRhdGFfbGVuLAorfTsKKworc3RhdGljIHN0cnVjdCBkbWFfYXN5bmNfdHhfZGVzY3JpcHRv
ciAqCit1ZG1hX3ByZXBfc2xhdmVfc2coc3RydWN0IGRtYV9jaGFuICpjaGFuLCBzdHJ1Y3Qgc2Nh
dHRlcmxpc3QgKnNnbCwKKwkJICAgdW5zaWduZWQgaW50IHNnbGVuLCBlbnVtIGRtYV90cmFuc2Zl
cl9kaXJlY3Rpb24gZGlyLAorCQkgICB1bnNpZ25lZCBsb25nIHR4X2ZsYWdzLCB2b2lkICpjb250
ZXh0KQoreworCXN0cnVjdCB1ZG1hX2NoYW4gKnVjID0gdG9fdWRtYV9jaGFuKGNoYW4pOworCWVu
dW0gZG1hX3NsYXZlX2J1c3dpZHRoIGRldl93aWR0aDsKKwlzdHJ1Y3QgdWRtYV9kZXNjICpkOwor
CXUzMiBidXJzdDsKKworCWlmIChkaXIgIT0gdWMtPmRpcikgeworCQlkZXZfZXJyKGNoYW4tPmRl
dmljZS0+ZGV2LAorCQkJIiVzOiBjaGFuJWQgaXMgZm9yICVzLCBub3Qgc3VwcG9ydGluZyAlc1xu
IiwKKwkJCV9fZnVuY19fLCB1Yy0+aWQsIHVkbWFfZ2V0X2Rpcl90ZXh0KHVjLT5kaXIpLAorCQkJ
dWRtYV9nZXRfZGlyX3RleHQoZGlyKSk7CisJCXJldHVybiBOVUxMOworCX0KKworCWlmIChkaXIg
PT0gRE1BX0RFVl9UT19NRU0pIHsKKwkJZGV2X3dpZHRoID0gdWMtPmNmZy5zcmNfYWRkcl93aWR0
aDsKKwkJYnVyc3QgPSB1Yy0+Y2ZnLnNyY19tYXhidXJzdDsKKwl9IGVsc2UgaWYgKGRpciA9PSBE
TUFfTUVNX1RPX0RFVikgeworCQlkZXZfd2lkdGggPSB1Yy0+Y2ZnLmRzdF9hZGRyX3dpZHRoOwor
CQlidXJzdCA9IHVjLT5jZmcuZHN0X21heGJ1cnN0OworCX0gZWxzZSB7CisJCWRldl9lcnIoY2hh
bi0+ZGV2aWNlLT5kZXYsICIlczogYmFkIGRpcmVjdGlvbj9cbiIsIF9fZnVuY19fKTsKKwkJcmV0
dXJuIE5VTEw7CisJfQorCisJaWYgKCFidXJzdCkKKwkJYnVyc3QgPSAxOworCisJaWYgKHVjLT5w
a3RfbW9kZSkKKwkJZCA9IHVkbWFfcHJlcF9zbGF2ZV9zZ19wa3QodWMsIHNnbCwgc2dsZW4sIGRp
ciwgdHhfZmxhZ3MsCisJCQkJCSAgIGNvbnRleHQpOworCWVsc2UKKwkJZCA9IHVkbWFfcHJlcF9z
bGF2ZV9zZ190cih1Yywgc2dsLCBzZ2xlbiwgZGlyLCB0eF9mbGFncywKKwkJCQkJICBjb250ZXh0
KTsKKworCWlmICghZCkKKwkJcmV0dXJuIE5VTEw7CisKKwlkLT5kaXIgPSBkaXI7CisJZC0+ZGVz
Y19pZHggPSAwOworCWQtPnRyX2lkeCA9IDA7CisKKwkvKiBzdGF0aWMgVFIgZm9yIHJlbW90ZSBQ
RE1BICovCisJaWYgKHVkbWFfY29uZmlndXJlX3N0YXRpY3RyKHVjLCBkLCBkZXZfd2lkdGgsIGJ1
cnN0KSkgeworCQlkZXZfZXJyKHVjLT51ZC0+ZGV2LAorCQkJIiVzOiBTdGF0aWNUUiBaIGlzIGxp
bXRlZCB0byBtYXhpbXVtIDQwOTUgKCV1KVxuIiwKKwkJCV9fZnVuY19fLCBkLT5zdGF0aWNfdHIu
YnN0Y250KTsKKworCQl1ZG1hX2ZyZWVfaHdkZXNjKHVjLCBkKTsKKwkJa2ZyZWUoZCk7CisJCXJl
dHVybiBOVUxMOworCX0KKworCWlmICh1Yy0+bWV0YWRhdGFfc2l6ZSkKKwkJZC0+dmQudHgubWV0
YWRhdGFfb3BzID0gJm1ldGFkYXRhX29wczsKKworCXJldHVybiB2Y2hhbl90eF9wcmVwKCZ1Yy0+
dmMsICZkLT52ZCwgdHhfZmxhZ3MpOworfQorCitzdGF0aWMgc3RydWN0IHVkbWFfZGVzYyAqCit1
ZG1hX3ByZXBfZG1hX2N5Y2xpY190cihzdHJ1Y3QgdWRtYV9jaGFuICp1YywgZG1hX2FkZHJfdCBi
dWZfYWRkciwKKwkJCXNpemVfdCBidWZfbGVuLCBzaXplX3QgcGVyaW9kX2xlbiwKKwkJCWVudW0g
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
dGF0aWMgc3RydWN0IHVkbWFfZGVzYyAqCit1ZG1hX3ByZXBfZG1hX2N5Y2xpY19wa3Qoc3RydWN0
IHVkbWFfY2hhbiAqdWMsIGRtYV9hZGRyX3QgYnVmX2FkZHIsCisJCQkgc2l6ZV90IGJ1Zl9sZW4s
IHNpemVfdCBwZXJpb2RfbGVuLAorCQkJIGVudW0gZG1hX3RyYW5zZmVyX2RpcmVjdGlvbiBkaXIs
IHVuc2lnbmVkIGxvbmcgZmxhZ3MpCit7CisJc3RydWN0IHVkbWFfZGVzYyAqZDsKKwl1MzIgcmlu
Z19pZDsKKwlpbnQgaTsKKwlpbnQgcGVyaW9kcyA9IGJ1Zl9sZW4gLyBwZXJpb2RfbGVuOworCisJ
aWYgKHBlcmlvZHMgPiAoSzNfVURNQV9ERUZBVUxUX1JJTkdfU0laRSAtIDEpKQorCQlyZXR1cm4g
TlVMTDsKKworCWlmIChwZXJpb2RfbGVuID4gMHgzRkZGRkYpCisJCXJldHVybiBOVUxMOworCisJ
ZCA9IGt6YWxsb2Moc2l6ZW9mKCpkKSArIHBlcmlvZHMgKiBzaXplb2YoZC0+aHdkZXNjWzBdKSwg
R0ZQX0FUT01JQyk7CisJaWYgKCFkKQorCQlyZXR1cm4gTlVMTDsKKworCWQtPmh3ZGVzY19jb3Vu
dCA9IHBlcmlvZHM7CisKKwkvKiBUT0RPOiByZS1jaGVjayB0aGlzLi4uICovCisJaWYgKGRpciA9
PSBETUFfREVWX1RPX01FTSkKKwkJcmluZ19pZCA9IGszX3JpbmdhY2NfZ2V0X3JpbmdfaWQodWMt
PnJmbG93LT5yX3JpbmcpOworCWVsc2UKKwkJcmluZ19pZCA9IGszX3JpbmdhY2NfZ2V0X3Jpbmdf
aWQodWMtPnRjaGFuLT50Y19yaW5nKTsKKworCWZvciAoaSA9IDA7IGkgPCBwZXJpb2RzOyBpKysp
IHsKKwkJc3RydWN0IHVkbWFfaHdkZXNjICpod2Rlc2MgPSAmZC0+aHdkZXNjW2ldOworCQlkbWFf
YWRkcl90IHBlcmlvZF9hZGRyID0gYnVmX2FkZHIgKyAocGVyaW9kX2xlbiAqIGkpOworCQlzdHJ1
Y3QgY3BwaTVfaG9zdF9kZXNjX3QgKmhfZGVzYzsKKworCQlod2Rlc2MtPmNwcGk1X2Rlc2NfdmFk
ZHIgPSBkbWFfcG9vbF96YWxsb2ModWMtPmhkZXNjX3Bvb2wsCisJCQkJCQlHRlBfQVRPTUlDLAor
CQkJCQkJJmh3ZGVzYy0+Y3BwaTVfZGVzY19wYWRkcik7CisJCWlmICghaHdkZXNjLT5jcHBpNV9k
ZXNjX3ZhZGRyKSB7CisJCQlkZXZfZXJyKHVjLT51ZC0+ZGV2LAorCQkJCSJkZXNjcmlwdG9yJWQg
YWxsb2NhdGlvbiBmYWlsZWRcbiIsIGkpOworCisJCQl1ZG1hX2ZyZWVfaHdkZXNjKHVjLCBkKTsK
KwkJCWtmcmVlKGQpOworCQkJcmV0dXJuIE5VTEw7CisJCX0KKworCQlod2Rlc2MtPmNwcGk1X2Rl
c2Nfc2l6ZSA9IHVjLT5oZGVzY19zaXplOworCQloX2Rlc2MgPSBod2Rlc2MtPmNwcGk1X2Rlc2Nf
dmFkZHI7CisKKwkJY3BwaTVfaGRlc2NfaW5pdChoX2Rlc2MsIDAsIDApOworCQljcHBpNV9oZGVz
Y19zZXRfcGt0bGVuKGhfZGVzYywgcGVyaW9kX2xlbik7CisKKwkJLyogRmxvdyBhbmQgUGFja2Vk
IElEICovCisJCWNwcGk1X2Rlc2Nfc2V0X3BrdGlkcygmaF9kZXNjLT5oZHIsIHVjLT5pZCwgMHgz
ZmZmKTsKKwkJY3BwaTVfZGVzY19zZXRfcmV0cG9saWN5KCZoX2Rlc2MtPmhkciwgMCwgcmluZ19p
ZCk7CisKKwkJLyogYXR0YWNoIGVhY2ggcGVyaW9kIHRvIGEgbmV3IGRlc2NyaXB0b3IgKi8KKwkJ
Y3BwaTVfaGRlc2NfYXR0YWNoX2J1ZihoX2Rlc2MsCisJCQkJICAgICAgIHBlcmlvZF9hZGRyLCBw
ZXJpb2RfbGVuLAorCQkJCSAgICAgICBwZXJpb2RfYWRkciwgcGVyaW9kX2xlbik7CisJfQorCisJ
cmV0dXJuIGQ7Cit9CisKK3N0YXRpYyBzdHJ1Y3QgZG1hX2FzeW5jX3R4X2Rlc2NyaXB0b3IgKgor
dWRtYV9wcmVwX2RtYV9jeWNsaWMoc3RydWN0IGRtYV9jaGFuICpjaGFuLCBkbWFfYWRkcl90IGJ1
Zl9hZGRyLCBzaXplX3QgYnVmX2xlbiwKKwkJICAgICBzaXplX3QgcGVyaW9kX2xlbiwgZW51bSBk
bWFfdHJhbnNmZXJfZGlyZWN0aW9uIGRpciwKKwkJICAgICB1bnNpZ25lZCBsb25nIGZsYWdzKQor
eworCXN0cnVjdCB1ZG1hX2NoYW4gKnVjID0gdG9fdWRtYV9jaGFuKGNoYW4pOworCWVudW0gZG1h
X3NsYXZlX2J1c3dpZHRoIGRldl93aWR0aDsKKwlzdHJ1Y3QgdWRtYV9kZXNjICpkOworCXUzMiBi
dXJzdDsKKworCWlmIChkaXIgIT0gdWMtPmRpcikgeworCQlkZXZfZXJyKGNoYW4tPmRldmljZS0+
ZGV2LAorCQkJIiVzOiBjaGFuJWQgaXMgZm9yICVzLCBub3Qgc3VwcG9ydGluZyAlc1xuIiwKKwkJ
CV9fZnVuY19fLCB1Yy0+aWQsIHVkbWFfZ2V0X2Rpcl90ZXh0KHVjLT5kaXIpLAorCQkJdWRtYV9n
ZXRfZGlyX3RleHQoZGlyKSk7CisJCXJldHVybiBOVUxMOworCX0KKworCXVjLT5jeWNsaWMgPSB0
cnVlOworCisJaWYgKGRpciA9PSBETUFfREVWX1RPX01FTSkgeworCQlkZXZfd2lkdGggPSB1Yy0+
Y2ZnLnNyY19hZGRyX3dpZHRoOworCQlidXJzdCA9IHVjLT5jZmcuc3JjX21heGJ1cnN0OworCX0g
ZWxzZSBpZiAoZGlyID09IERNQV9NRU1fVE9fREVWKSB7CisJCWRldl93aWR0aCA9IHVjLT5jZmcu
ZHN0X2FkZHJfd2lkdGg7CisJCWJ1cnN0ID0gdWMtPmNmZy5kc3RfbWF4YnVyc3Q7CisJfSBlbHNl
IHsKKwkJZGV2X2Vycih1Yy0+dWQtPmRldiwgIiVzOiBiYWQgZGlyZWN0aW9uP1xuIiwgX19mdW5j
X18pOworCQlyZXR1cm4gTlVMTDsKKwl9CisKKwlpZiAoIWJ1cnN0KQorCQlidXJzdCA9IDE7CisK
KwlpZiAodWMtPnBrdF9tb2RlKQorCQlkID0gdWRtYV9wcmVwX2RtYV9jeWNsaWNfcGt0KHVjLCBi
dWZfYWRkciwgYnVmX2xlbiwgcGVyaW9kX2xlbiwKKwkJCQkJICAgICBkaXIsIGZsYWdzKTsKKwll
bHNlCisJCWQgPSB1ZG1hX3ByZXBfZG1hX2N5Y2xpY190cih1YywgYnVmX2FkZHIsIGJ1Zl9sZW4s
IHBlcmlvZF9sZW4sCisJCQkJCSAgICBkaXIsIGZsYWdzKTsKKworCWlmICghZCkKKwkJcmV0dXJu
IE5VTEw7CisKKwlkLT5zZ2xlbiA9IGJ1Zl9sZW4gLyBwZXJpb2RfbGVuOworCisJZC0+ZGlyID0g
ZGlyOworCWQtPnJlc2lkdWUgPSBidWZfbGVuOworCisJLyogc3RhdGljIFRSIGZvciByZW1vdGUg
UERNQSAqLworCWlmICh1ZG1hX2NvbmZpZ3VyZV9zdGF0aWN0cih1YywgZCwgZGV2X3dpZHRoLCBi
dXJzdCkpIHsKKwkJZGV2X2Vycih1Yy0+dWQtPmRldiwKKwkJCSIlczogU3RhdGljVFIgWiBpcyBs
aW10ZWQgdG8gbWF4aW11bSA0MDk1ICgldSlcbiIsCisJCQlfX2Z1bmNfXywgZC0+c3RhdGljX3Ry
LmJzdGNudCk7CisKKwkJdWRtYV9mcmVlX2h3ZGVzYyh1YywgZCk7CisJCWtmcmVlKGQpOworCQly
ZXR1cm4gTlVMTDsKKwl9CisKKwlpZiAodWMtPm1ldGFkYXRhX3NpemUpCisJCWQtPnZkLnR4Lm1l
dGFkYXRhX29wcyA9ICZtZXRhZGF0YV9vcHM7CisKKwlyZXR1cm4gdmNoYW5fdHhfcHJlcCgmdWMt
PnZjLCAmZC0+dmQsIGZsYWdzKTsKK30KKworc3RhdGljIHN0cnVjdCBkbWFfYXN5bmNfdHhfZGVz
Y3JpcHRvciAqCit1ZG1hX3ByZXBfZG1hX21lbWNweShzdHJ1Y3QgZG1hX2NoYW4gKmNoYW4sIGRt
YV9hZGRyX3QgZGVzdCwgZG1hX2FkZHJfdCBzcmMsCisJCSAgICAgc2l6ZV90IGxlbiwgdW5zaWdu
ZWQgbG9uZyB0eF9mbGFncykKK3sKKwlzdHJ1Y3QgdWRtYV9jaGFuICp1YyA9IHRvX3VkbWFfY2hh
bihjaGFuKTsKKwlzdHJ1Y3QgdWRtYV9kZXNjICpkOworCXN0cnVjdCBjcHBpNV90cl90eXBlMTVf
dCAqdHJfcmVxOworCWludCBudW1fdHI7CisJc2l6ZV90IHRyX3NpemUgPSBzaXplb2Yoc3RydWN0
IGNwcGk1X3RyX3R5cGUxNV90KTsKKwl1MTYgdHIwX2NudDAsIHRyMF9jbnQxLCB0cjFfY250MDsK
KworCWlmICh1Yy0+ZGlyICE9IERNQV9NRU1fVE9fTUVNKSB7CisJCWRldl9lcnIoY2hhbi0+ZGV2
aWNlLT5kZXYsCisJCQkiJXM6IGNoYW4lZCBpcyBmb3IgJXMsIG5vdCBzdXBwb3J0aW5nICVzXG4i
LAorCQkJX19mdW5jX18sIHVjLT5pZCwgdWRtYV9nZXRfZGlyX3RleHQodWMtPmRpciksCisJCQl1
ZG1hX2dldF9kaXJfdGV4dChETUFfTUVNX1RPX01FTSkpOworCQlyZXR1cm4gTlVMTDsKKwl9CisK
KwlpZiAobGVuIDwgU1pfNjRLKSB7CisJCW51bV90ciA9IDE7CisJCXRyMF9jbnQwID0gbGVuOwor
CQl0cjBfY250MSA9IDE7CisJfSBlbHNlIHsKKwkJdW5zaWduZWQgbG9uZyBhbGlnbl90byA9IF9f
ZmZzKHNyYyB8IGRlc3QpOworCisJCWlmIChhbGlnbl90byA+IDMpCisJCQlhbGlnbl90byA9IDM7
CisJCS8qCisJCSAqIEtlZXAgc2ltcGxlOiB0cjA6IFNaXzY0Sy1hbGlnbm1lbnQgYmxvY2tzLAor
CQkgKgkJdHIxOiB0aGUgcmVtYWluaW5nCisJCSAqLworCQludW1fdHIgPSAyOworCQl0cjBfY250
MCA9IChTWl82NEsgLSBCSVQoYWxpZ25fdG8pKTsKKwkJaWYgKGxlbiAvIHRyMF9jbnQwID49IFNa
XzY0SykgeworCQkJZGV2X2Vycih1Yy0+dWQtPmRldiwgInNpemUgJXp1IGlzIG5vdCBzdXBwb3J0
ZWRcbiIsCisJCQkJbGVuKTsKKwkJCXJldHVybiBOVUxMOworCQl9CisKKwkJdHIwX2NudDEgPSBs
ZW4gLyB0cjBfY250MDsKKwkJdHIxX2NudDAgPSBsZW4gJSB0cjBfY250MDsKKwl9CisKKwlkID0g
dWRtYV9hbGxvY190cl9kZXNjKHVjLCB0cl9zaXplLCBudW1fdHIsIERNQV9NRU1fVE9fTUVNKTsK
KwlpZiAoIWQpCisJCXJldHVybiBOVUxMOworCisJZC0+ZGlyID0gRE1BX01FTV9UT19NRU07CisJ
ZC0+ZGVzY19pZHggPSAwOworCWQtPnRyX2lkeCA9IDA7CisJZC0+cmVzaWR1ZSA9IGxlbjsKKwor
CXRyX3JlcSA9IChzdHJ1Y3QgY3BwaTVfdHJfdHlwZTE1X3QgKilkLT5od2Rlc2NbMF0udHJfcmVx
X2Jhc2U7CisKKwljcHBpNV90cl9pbml0KCZ0cl9yZXFbMF0uZmxhZ3MsIENQUEk1X1RSX1RZUEUx
NSwgZmFsc2UsIHRydWUsCisJCSAgICAgIENQUEk1X1RSX0VWRU5UX1NJWkVfQ09NUExFVElPTiwg
MCk7CisJY3BwaTVfdHJfY3NmX3NldCgmdHJfcmVxWzBdLmZsYWdzLCBDUFBJNV9UUl9DU0ZfU1VQ
Ul9FVlQpOworCisJdHJfcmVxWzBdLmFkZHIgPSBzcmM7CisJdHJfcmVxWzBdLmljbnQwID0gdHIw
X2NudDA7CisJdHJfcmVxWzBdLmljbnQxID0gdHIwX2NudDE7CisJdHJfcmVxWzBdLmljbnQyID0g
MTsKKwl0cl9yZXFbMF0uaWNudDMgPSAxOworCXRyX3JlcVswXS5kaW0xID0gdHIwX2NudDA7CisK
Kwl0cl9yZXFbMF0uZGFkZHIgPSBkZXN0OworCXRyX3JlcVswXS5kaWNudDAgPSB0cjBfY250MDsK
Kwl0cl9yZXFbMF0uZGljbnQxID0gdHIwX2NudDE7CisJdHJfcmVxWzBdLmRpY250MiA9IDE7CisJ
dHJfcmVxWzBdLmRpY250MyA9IDE7CisJdHJfcmVxWzBdLmRkaW0xID0gdHIwX2NudDA7CisKKwlp
ZiAobnVtX3RyID09IDIpIHsKKwkJY3BwaTVfdHJfaW5pdCgmdHJfcmVxWzFdLmZsYWdzLCBDUFBJ
NV9UUl9UWVBFMTUsIGZhbHNlLCB0cnVlLAorCQkJICAgICAgQ1BQSTVfVFJfRVZFTlRfU0laRV9D
T01QTEVUSU9OLCAwKTsKKwkJY3BwaTVfdHJfY3NmX3NldCgmdHJfcmVxWzFdLmZsYWdzLCBDUFBJ
NV9UUl9DU0ZfU1VQUl9FVlQpOworCisJCXRyX3JlcVsxXS5hZGRyID0gc3JjICsgdHIwX2NudDEg
KiB0cjBfY250MDsKKwkJdHJfcmVxWzFdLmljbnQwID0gdHIxX2NudDA7CisJCXRyX3JlcVsxXS5p
Y250MSA9IDE7CisJCXRyX3JlcVsxXS5pY250MiA9IDE7CisJCXRyX3JlcVsxXS5pY250MyA9IDE7
CisKKwkJdHJfcmVxWzFdLmRhZGRyID0gZGVzdCArIHRyMF9jbnQxICogdHIwX2NudDA7CisJCXRy
X3JlcVsxXS5kaWNudDAgPSB0cjFfY250MDsKKwkJdHJfcmVxWzFdLmRpY250MSA9IDE7CisJCXRy
X3JlcVsxXS5kaWNudDIgPSAxOworCQl0cl9yZXFbMV0uZGljbnQzID0gMTsKKwl9CisKKwljcHBp
NV90cl9jc2Zfc2V0KCZ0cl9yZXFbbnVtX3RyIC0gMV0uZmxhZ3MsIENQUEk1X1RSX0NTRl9FT1Ap
OworCisJaWYgKHVjLT5tZXRhZGF0YV9zaXplKQorCQlkLT52ZC50eC5tZXRhZGF0YV9vcHMgPSAm
bWV0YWRhdGFfb3BzOworCisJcmV0dXJuIHZjaGFuX3R4X3ByZXAoJnVjLT52YywgJmQtPnZkLCB0
eF9mbGFncyk7Cit9CisKIHN0YXRpYyB2b2lkIHVkbWFfaXNzdWVfcGVuZGluZyhzdHJ1Y3QgZG1h
X2NoYW4gKmNoYW4pCiB7CiAJc3RydWN0IHVkbWFfY2hhbiAqdWMgPSB0b191ZG1hX2NoYW4oY2hh
bik7Ci0tIApQZXRlcgoKVGV4YXMgSW5zdHJ1bWVudHMgRmlubGFuZCBPeSwgUG9ya2thbGFua2F0
dSAyMiwgMDAxODAgSGVsc2lua2kuClktdHVubnVzL0J1c2luZXNzIElEOiAwNjE1NTIxLTQuIEtv
dGlwYWlra2EvRG9taWNpbGU6IEhlbHNpbmtpCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
