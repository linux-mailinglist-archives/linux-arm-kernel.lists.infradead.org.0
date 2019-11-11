Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33C3BF75C3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 14:57:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rFK9QN/LNPpqQ1jD02t8jxSD0jrWRWVoDD9dpBE1f3Q=; b=eIlwTTJmDkJuJS
	eGnyxjxGiHyvVe9yeoVBoPbpTojJk0B4uvWkDbXdl7SW2zA1+Bcwf3X4YwXLy6uMbVla4JwLCAShW
	iSESWEox4tuX2zCSAdRul0XIAWXI1wT3zdYe+5ejoCf5UF2hhED7dbzMpmknzr+Ru4xrohNmcaZTZ
	gjcZOVhdeJ3z2pYk/5ePJInK7df9/5nfZrABRqkeNZGHwrvapltv6BH9gxnApQJ8z3CpqAgCK9sVA
	J8uip4sXKDdYokPm4YrOJaSimx0ZEK1TLCtgwxst8T+IbNHt5c9mgv7XbiD+y7XfhxzLCq+PH02eG
	KYmKa/FD+s7+Y4NgxPEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUACC-000627-DW; Mon, 11 Nov 2019 13:57:32 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUA82-00013u-MN
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 13:53:16 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id xABDrA8p090734;
 Mon, 11 Nov 2019 07:53:10 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573480391;
 bh=EOL7+ILAJKMK9C2xGDp+0K1qLoucOFWJ/CJCGCWfatY=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=C74CsEKKdE4xkIUJfcDlndtfyjSzVetlyShTs0xbfJCR37wviX65PBuH4tXgRTmPm
 x8l9JAQrHuOsqqA+jkgpWKYDrcrPmDRGZzU5ZfcTEgh1qWuQWGmEPRm77syOfve3Eq
 JxbOUtVMSvrOCBHvmVUQpN4a/ZafP/4hiMatace8=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xABDrAxK002742
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 11 Nov 2019 07:53:10 -0600
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 11
 Nov 2019 07:53:10 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 11 Nov 2019 07:52:52 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id xABDqE91097668;
 Mon, 11 Nov 2019 07:53:06 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <vkoul@kernel.org>, <robh+dt@kernel.org>, <nm@ti.com>,
 <ssantosh@kernel.org>
Subject: [PATCH v5 14/15] dmaengine: ti: New driver for K3 UDMA - split#6:
 Kconfig and Makefile
Date: Mon, 11 Nov 2019 15:53:29 +0200
Message-ID: <20191111135330.8235-15-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191111135330.8235-1-peter.ujfalusi@ti.com>
References: <20191111135330.8235-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_055314_969494_F8F00B80 
X-CRM114-Status: GOOD (  11.41  )
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

U3BsaXQgcGF0Y2ggZm9yIHJldmlldyBjb250YWluaW5nOgpLY29uZmlnIGFuZCBNYWtlZmlsZSBj
aGFuZ2VzCgpETUEgZHJpdmVyIGZvcgpUZXhhcyBJbnN0cnVtZW50cyBLMyBOQVZTUyBVbmlmaWVk
IERNQSDigJMgUGVyaXBoZXJhbCBSb290IENvbXBsZXggKFVETUEtUCkKClRoZSBVRE1BLVAgaXMg
aW50ZW5kZWQgdG8gcGVyZm9ybSBzaW1pbGFyIChidXQgc2lnbmlmaWNhbnRseSB1cGdyYWRlZCkg
ZnVuY3Rpb25zCmFzIHRoZSBwYWNrZXQtb3JpZW50ZWQgRE1BIHVzZWQgb24gcHJldmlvdXMgU29D
IGRldmljZXMuIFRoZSBVRE1BLVAgbW9kdWxlCnN1cHBvcnRzIHRoZSB0cmFuc21pc3Npb24gYW5k
IHJlY2VwdGlvbiBvZiB2YXJpb3VzIHBhY2tldCB0eXBlcy4gVGhlIFVETUEtUCBpcwphcmNoaXRl
Y3RlZCB0byBmYWNpbGl0YXRlIHRoZSBzZWdtZW50YXRpb24gYW5kIHJlYXNzZW1ibHkgb2YgU29D
IERNQSBkYXRhCnN0cnVjdHVyZSBjb21wbGlhbnQgcGFja2V0cyB0by9mcm9tIHNtYWxsZXIgZGF0
YSBibG9ja3MgdGhhdCBhcmUgbmF0aXZlbHkKY29tcGF0aWJsZSB3aXRoIHRoZSBzcGVjaWZpYyBy
ZXF1aXJlbWVudHMgb2YgZWFjaCBjb25uZWN0ZWQgcGVyaXBoZXJhbC4gTXVsdGlwbGUKVHggYW5k
IFJ4IGNoYW5uZWxzIGFyZSBwcm92aWRlZCB3aXRoaW4gdGhlIERNQSB3aGljaCBhbGxvdyBtdWx0
aXBsZSBzZWdtZW50YXRpb24Kb3IgcmVhc3NlbWJseSBvcGVyYXRpb25zIHRvIGJlIG9uZ29pbmcu
IFRoZSBETUEgY29udHJvbGxlciBtYWludGFpbnMgc3RhdGUKaW5mb3JtYXRpb24gZm9yIGVhY2gg
b2YgdGhlIGNoYW5uZWxzIHdoaWNoIGFsbG93cyBwYWNrZXQgc2VnbWVudGF0aW9uIGFuZApyZWFz
c2VtYmx5IG9wZXJhdGlvbnMgdG8gYmUgdGltZSBkaXZpc2lvbiBtdWx0aXBsZXhlZCBiZXR3ZWVu
IGNoYW5uZWxzIGluIG9yZGVyCnRvIHNoYXJlIHRoZSB1bmRlcmx5aW5nIERNQSBoYXJkd2FyZS4g
QW4gZXh0ZXJuYWwgRE1BIHNjaGVkdWxlciBpcyB1c2VkIHRvCmNvbnRyb2wgdGhlIG9yZGVyaW5n
IGFuZCByYXRlIGF0IHdoaWNoIHRoaXMgbXVsdGlwbGV4aW5nIG9jY3VycyBmb3IgVHJhbnNtaXQK
b3BlcmF0aW9ucy4gVGhlIG9yZGVyaW5nIGFuZCByYXRlIG9mIFJlY2VpdmUgb3BlcmF0aW9ucyBp
cyBpbmRpcmVjdGx5IGNvbnRyb2xsZWQKYnkgdGhlIG9yZGVyIGluIHdoaWNoIGJsb2NrcyBhcmUg
cHVzaGVkIGludG8gdGhlIERNQSBvbiB0aGUgUnggUFNJLUwgaW50ZXJmYWNlLgoKVGhlIFVETUEt
UCBhbHNvIHN1cHBvcnRzIGFjdGluZyBhcyBib3RoIGEgVVRDIGFuZCBVRE1BLUMgZm9yIGl0cyBp
bnRlcm5hbApjaGFubmVscy4gQ2hhbm5lbHMgaW4gdGhlIFVETUEtUCBjYW4gYmUgY29uZmlndXJl
ZCB0byBiZSBlaXRoZXIgUGFja2V0LUJhc2VkIG9yClRoaXJkLVBhcnR5IGNoYW5uZWxzIG9uIGEg
Y2hhbm5lbCBieSBjaGFubmVsIGJhc2lzLgoKVGhlIGluaXRpYWwgZHJpdmVyIHN1cHBvcnRzOgot
IE1FTV9UT19NRU0gKFRSIG1vZGUpCi0gREVWX1RPX01FTSAoUGFja2V0IC8gVFIgbW9kZSkKLSBN
RU1fVE9fREVWIChQYWNrZXQgLyBUUiBtb2RlKQotIEN5Y2xpYyAoUGFja2V0IC8gVFIgbW9kZSkK
LSBNZXRhZGF0YSBmb3IgZGVzY3JpcHRvcnMKClNpZ25lZC1vZmYtYnk6IFBldGVyIFVqZmFsdXNp
IDxwZXRlci51amZhbHVzaUB0aS5jb20+Ci0tLQogZHJpdmVycy9kbWEvdGkvS2NvbmZpZyAgfCAx
MyArKysrKysrKysrKysrCiBkcml2ZXJzL2RtYS90aS9NYWtlZmlsZSB8ICAxICsKIDIgZmlsZXMg
Y2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hL3RpL0tj
b25maWcgYi9kcml2ZXJzL2RtYS90aS9LY29uZmlnCmluZGV4IDcyZjNkMjcyODE3OC4uYTA5NmYw
ZWMzOTk4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2RtYS90aS9LY29uZmlnCisrKyBiL2RyaXZlcnMv
ZG1hL3RpL0tjb25maWcKQEAgLTM0LDYgKzM0LDE5IEBAIGNvbmZpZyBETUFfT01BUAogCSAgRW5h
YmxlIHN1cHBvcnQgZm9yIHRoZSBUSSBzRE1BIChTeXN0ZW0gRE1BIG9yIERNQTQpIGNvbnRyb2xs
ZXIuIFRoaXMKIAkgIERNQSBlbmdpbmUgaXMgZm91bmQgb24gT01BUCBhbmQgRFJBN3h4IHBhcnRz
LgogCitjb25maWcgVElfSzNfVURNQQorCXRyaXN0YXRlICJUZXhhcyBJbnN0cnVtZW50cyBVRE1B
IHN1cHBvcnQiCisJZGVwZW5kcyBvbiBBUkNIX0szIHx8IENPTVBJTEVfVEVTVAorCWRlcGVuZHMg
b24gVElfU0NJX1BST1RPQ09MCisJZGVwZW5kcyBvbiBUSV9TQ0lfSU5UQV9JUlFDSElQCisJc2Vs
ZWN0IERNQV9FTkdJTkUKKwlzZWxlY3QgRE1BX1ZJUlRVQUxfQ0hBTk5FTFMKKwlzZWxlY3QgVElf
SzNfUklOR0FDQworCXNlbGVjdCBUSV9LM19QU0lMCisgICAgICAgIGhlbHAKKwkgIEVuYWJsZSBz
dXBwb3J0IGZvciB0aGUgVEkgVURNQSAoVW5pZmllZCBETUEpIGNvbnRyb2xsZXIuIFRoaXMKKwkg
IERNQSBlbmdpbmUgaXMgdXNlZCBpbiBBTTY1eC4KKwogY29uZmlnIFRJX0szX1BTSUwKIAlib29s
CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hL3RpL01ha2VmaWxlIGIvZHJpdmVycy9kbWEvdGkv
TWFrZWZpbGUKaW5kZXggZjhkOTEyYWQ3ZWFmLi45ZDc4N2YwMDkxOTUgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZG1hL3RpL01ha2VmaWxlCisrKyBiL2RyaXZlcnMvZG1hL3RpL01ha2VmaWxlCkBAIC0y
LDUgKzIsNiBAQAogb2JqLSQoQ09ORklHX1RJX0NQUEk0MSkgKz0gY3BwaTQxLm8KIG9iai0kKENP
TkZJR19USV9FRE1BKSArPSBlZG1hLm8KIG9iai0kKENPTkZJR19ETUFfT01BUCkgKz0gb21hcC1k
bWEubworb2JqLSQoQ09ORklHX1RJX0szX1VETUEpICs9IGszLXVkbWEubwogb2JqLSQoQ09ORklH
X1RJX0szX1BTSUwpICs9IGszLXBzaWwubyBrMy1wc2lsLWFtNjU0Lm8gazMtcHNpbC1qNzIxZS5v
CiBvYmotJChDT05GSUdfVElfRE1BX0NST1NTQkFSKSArPSBkbWEtY3Jvc3NiYXIubwotLSAKUGV0
ZXIKClRleGFzIEluc3RydW1lbnRzIEZpbmxhbmQgT3ksIFBvcmtrYWxhbmthdHUgMjIsIDAwMTgw
IEhlbHNpbmtpLgpZLXR1bm51cy9CdXNpbmVzcyBJRDogMDYxNTUyMS00LiBLb3RpcGFpa2thL0Rv
bWljaWxlOiBIZWxzaW5raQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
