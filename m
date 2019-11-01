Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45329EBFE7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 09:47:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vhOO4lk2FxCAFobTUDiVy80nwp+vcscHbGyOmFL+xHE=; b=gJfiPFvT+Se5wA
	4VBOIo7pyfcv4ThTT+6LBvYllFizjTbFIwg5NRHGNQB3HnY9HzzgQFWEwC25vQBHYn5xPwB1GEBlb
	nDCb293cPUzfXTyBrAdVd2/Ck3CeWA8MJyouOsh0QIcyTlGBdayfSqhIk9MkBBSFxvWe9Os1s3LRJ
	szZBfybSsl+tX6vGp0ErWu6w2zIBOdo4VAe6aKKZarLcPBLQCTf3EwVO2v3oP1wPx8f7XPaoLfMRr
	Khga4z7x9XO2nfs4mV1DKb0xS1cNxNAfo+Uc7SP3gBahK0bqqVIgWneJxOc31gt/jaCSxev1zLKLz
	sUesqtbmwQkvyUVWKdyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQSai-0006zB-P4; Fri, 01 Nov 2019 08:47:32 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQSUf-0000bx-9j
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 08:41:24 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id xA18fCAM130186;
 Fri, 1 Nov 2019 03:41:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1572597672;
 bh=Wz+yfF/2dpMVr1e/em9jgd25MFMPGK2iUYEKXuehtjs=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=F09pM5g8RSSxjrTLDjycgsUmYlJwFC2Lrda3VAiTTLAQ5GqGjzeL7yy7XSqVL+1x3
 x1PIU5CqkHWz034DFnKKu/F5Hn2aw+NuQbJLGZk1IHSVdT9xqEv8y1m7pUDOfgdW0e
 V2hH2VCup9rCpOQ0gGHKObOTED4+I13z8QIDFOlE=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xA18fCJK124476
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 1 Nov 2019 03:41:12 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 1 Nov
 2019 03:40:58 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 1 Nov 2019 03:41:11 -0500
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id xA18eP8k036903;
 Fri, 1 Nov 2019 03:41:08 -0500
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <vkoul@kernel.org>, <robh+dt@kernel.org>, <nm@ti.com>,
 <ssantosh@kernel.org>
Subject: [PATCH v4 11/15] dmaengine: ti: New driver for K3 UDMA - split#3:
 alloc/free chan_resources
Date: Fri, 1 Nov 2019 10:41:31 +0200
Message-ID: <20191101084135.14811-12-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191101084135.14811-1-peter.ujfalusi@ti.com>
References: <20191101084135.14811-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_014117_607026_40D8393D 
X-CRM114-Status: GOOD (  17.57  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

U3BsaXQgcGF0Y2ggZm9yIHJldmlldyBjb250YWluaW5nOiBjaGFubmVsIHJzb3VyY2UgYWxsb2Nh
dGlvbiBhbmQgZnJlZQpmdW5jdGlvbnMuCgpETUEgZHJpdmVyIGZvcgpUZXhhcyBJbnN0cnVtZW50
cyBLMyBOQVZTUyBVbmlmaWVkIERNQSDigJMgUGVyaXBoZXJhbCBSb290IENvbXBsZXggKFVETUEt
UCkKClRoZSBVRE1BLVAgaXMgaW50ZW5kZWQgdG8gcGVyZm9ybSBzaW1pbGFyIChidXQgc2lnbmlm
aWNhbnRseSB1cGdyYWRlZCkgZnVuY3Rpb25zCmFzIHRoZSBwYWNrZXQtb3JpZW50ZWQgRE1BIHVz
ZWQgb24gcHJldmlvdXMgU29DIGRldmljZXMuIFRoZSBVRE1BLVAgbW9kdWxlCnN1cHBvcnRzIHRo
ZSB0cmFuc21pc3Npb24gYW5kIHJlY2VwdGlvbiBvZiB2YXJpb3VzIHBhY2tldCB0eXBlcy4gVGhl
IFVETUEtUCBpcwphcmNoaXRlY3RlZCB0byBmYWNpbGl0YXRlIHRoZSBzZWdtZW50YXRpb24gYW5k
IHJlYXNzZW1ibHkgb2YgU29DIERNQSBkYXRhCnN0cnVjdHVyZSBjb21wbGlhbnQgcGFja2V0cyB0
by9mcm9tIHNtYWxsZXIgZGF0YSBibG9ja3MgdGhhdCBhcmUgbmF0aXZlbHkKY29tcGF0aWJsZSB3
aXRoIHRoZSBzcGVjaWZpYyByZXF1aXJlbWVudHMgb2YgZWFjaCBjb25uZWN0ZWQgcGVyaXBoZXJh
bC4gTXVsdGlwbGUKVHggYW5kIFJ4IGNoYW5uZWxzIGFyZSBwcm92aWRlZCB3aXRoaW4gdGhlIERN
QSB3aGljaCBhbGxvdyBtdWx0aXBsZSBzZWdtZW50YXRpb24Kb3IgcmVhc3NlbWJseSBvcGVyYXRp
b25zIHRvIGJlIG9uZ29pbmcuIFRoZSBETUEgY29udHJvbGxlciBtYWludGFpbnMgc3RhdGUKaW5m
b3JtYXRpb24gZm9yIGVhY2ggb2YgdGhlIGNoYW5uZWxzIHdoaWNoIGFsbG93cyBwYWNrZXQgc2Vn
bWVudGF0aW9uIGFuZApyZWFzc2VtYmx5IG9wZXJhdGlvbnMgdG8gYmUgdGltZSBkaXZpc2lvbiBt
dWx0aXBsZXhlZCBiZXR3ZWVuIGNoYW5uZWxzIGluIG9yZGVyCnRvIHNoYXJlIHRoZSB1bmRlcmx5
aW5nIERNQSBoYXJkd2FyZS4gQW4gZXh0ZXJuYWwgRE1BIHNjaGVkdWxlciBpcyB1c2VkIHRvCmNv
bnRyb2wgdGhlIG9yZGVyaW5nIGFuZCByYXRlIGF0IHdoaWNoIHRoaXMgbXVsdGlwbGV4aW5nIG9j
Y3VycyBmb3IgVHJhbnNtaXQKb3BlcmF0aW9ucy4gVGhlIG9yZGVyaW5nIGFuZCByYXRlIG9mIFJl
Y2VpdmUgb3BlcmF0aW9ucyBpcyBpbmRpcmVjdGx5IGNvbnRyb2xsZWQKYnkgdGhlIG9yZGVyIGlu
IHdoaWNoIGJsb2NrcyBhcmUgcHVzaGVkIGludG8gdGhlIERNQSBvbiB0aGUgUnggUFNJLUwgaW50
ZXJmYWNlLgoKVGhlIFVETUEtUCBhbHNvIHN1cHBvcnRzIGFjdGluZyBhcyBib3RoIGEgVVRDIGFu
ZCBVRE1BLUMgZm9yIGl0cyBpbnRlcm5hbApjaGFubmVscy4gQ2hhbm5lbHMgaW4gdGhlIFVETUEt
UCBjYW4gYmUgY29uZmlndXJlZCB0byBiZSBlaXRoZXIgUGFja2V0LUJhc2VkIG9yClRoaXJkLVBh
cnR5IGNoYW5uZWxzIG9uIGEgY2hhbm5lbCBieSBjaGFubmVsIGJhc2lzLgoKVGhlIGluaXRpYWwg
ZHJpdmVyIHN1cHBvcnRzOgotIE1FTV9UT19NRU0gKFRSIG1vZGUpCi0gREVWX1RPX01FTSAoUGFj
a2V0IC8gVFIgbW9kZSkKLSBNRU1fVE9fREVWIChQYWNrZXQgLyBUUiBtb2RlKQotIEN5Y2xpYyAo
UGFja2V0IC8gVFIgbW9kZSkKLSBNZXRhZGF0YSBmb3IgZGVzY3JpcHRvcnMKClNpZ25lZC1vZmYt
Ynk6IFBldGVyIFVqZmFsdXNpIDxwZXRlci51amZhbHVzaUB0aS5jb20+Ci0tLQogZHJpdmVycy9k
bWEvdGkvazMtdWRtYS5jIHwgNzk5ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKwogMSBmaWxlIGNoYW5nZWQsIDc5OSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9kbWEvdGkvazMtdWRtYS5jIGIvZHJpdmVycy9kbWEvdGkvazMtdWRtYS5jCmluZGV4IGUz
OGM3ODBjZDIwZC4uMmNlMjJkMmYyMDNlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2RtYS90aS9rMy11
ZG1hLmMKKysrIGIvZHJpdmVycy9kbWEvdGkvazMtdWRtYS5jCkBAIC0xMDUwLDYgKzEwNTAsODA1
IEBAIHN0YXRpYyBpcnFyZXR1cm5fdCB1ZG1hX3VkbWFfaXJxX2hhbmRsZXIoaW50IGlycSwgdm9p
ZCAqZGF0YSkKIAlyZXR1cm4gSVJRX0hBTkRMRUQ7CiB9CiAKK3N0YXRpYyBzdHJ1Y3QgdWRtYV9y
ZmxvdyAqX191ZG1hX2dldF9yZmxvdyhzdHJ1Y3QgdWRtYV9kZXYgKnVkLCBpbnQgaWQpCit7CisJ
LyoKKwkgKiBBdHRlbXB0IHRvIHJlcXVlc3QgcmZsb3cgYnkgSUQgY2FuIGJlIG1hZGUgZm9yIGFu
eSByZmxvdworCSAqIGlmIG5vdCBpbiB1c2Ugd2l0aCBhc3N1bXB0aW9uIHRoYXQgY2FsbGVyIGtu
b3dzIHdoYXQncyBkb2luZy4KKwkgKiBUSS1TQ0kgRlcgd2lsbCBwZXJmb3JtIGFkZGl0aW9uYWwg
cGVybWlzc2lvbiBjaGVjayBhbnQgd2F5LCBpdCdzCisJICogc2FmZQorCSAqLworCisJaWYgKGlk
IDwgMCB8fCBpZCA+PSB1ZC0+cmZsb3dfY250KQorCQlyZXR1cm4gRVJSX1BUUigtRU5PRU5UKTsK
KworCWlmICh0ZXN0X2JpdChpZCwgdWQtPnJmbG93X2luX3VzZSkpCisJCXJldHVybiBFUlJfUFRS
KC1FTk9FTlQpOworCisJLyogR1AgcmZsb3cgaGFzIHRvIGJlIGFsbG9jYXRlZCBmaXJzdCAqLwor
CWlmICghdGVzdF9iaXQoaWQsIHVkLT5yZmxvd19ncF9tYXApICYmCisJICAgICF0ZXN0X2JpdChp
ZCwgdWQtPnJmbG93X2dwX21hcF9hbGxvY2F0ZWQpKQorCQlyZXR1cm4gRVJSX1BUUigtRUlOVkFM
KTsKKworCWRldl9kYmcodWQtPmRldiwgImdldCByZmxvdyVkXG4iLCBpZCk7CisJc2V0X2JpdChp
ZCwgdWQtPnJmbG93X2luX3VzZSk7CisJcmV0dXJuICZ1ZC0+cmZsb3dzW2lkXTsKK30KKworc3Rh
dGljIHZvaWQgX191ZG1hX3B1dF9yZmxvdyhzdHJ1Y3QgdWRtYV9kZXYgKnVkLCBzdHJ1Y3QgdWRt
YV9yZmxvdyAqcmZsb3cpCit7CisJaWYgKCF0ZXN0X2JpdChyZmxvdy0+aWQsIHVkLT5yZmxvd19p
bl91c2UpKSB7CisJCWRldl9lcnIodWQtPmRldiwgImF0dGVtcHQgdG8gcHV0IHVudXNlZCByZmxv
dyVkXG4iLCByZmxvdy0+aWQpOworCQlyZXR1cm47CisJfQorCisJZGV2X2RiZyh1ZC0+ZGV2LCAi
cHV0IHJmbG93JWRcbiIsIHJmbG93LT5pZCk7CisJY2xlYXJfYml0KHJmbG93LT5pZCwgdWQtPnJm
bG93X2luX3VzZSk7Cit9CisKKyNkZWZpbmUgVURNQV9SRVNFUlZFX1JFU09VUkNFKHJlcykJCQkJ
CVwKK3N0YXRpYyBzdHJ1Y3QgdWRtYV8jI3JlcyAqX191ZG1hX3Jlc2VydmVfIyNyZXMoc3RydWN0
IHVkbWFfZGV2ICp1ZCwJXAorCQkJCQkgICAgICAgZW51bSB1ZG1hX3RwX2xldmVsIHRwbCwJXAor
CQkJCQkgICAgICAgaW50IGlkKQkJCVwKK3sJCQkJCQkJCQlcCisJaWYgKGlkID49IDApIHsJCQkJ
CQkJXAorCQlpZiAodGVzdF9iaXQoaWQsIHVkLT5yZXMjI19tYXApKSB7CQkJXAorCQkJZGV2X2Vy
cih1ZC0+ZGV2LCAicmVzIyMlZCBpcyBpbiB1c2VcbiIsIGlkKTsJXAorCQkJcmV0dXJuIEVSUl9Q
VFIoLUVOT0VOVCk7CQkJXAorCQl9CQkJCQkJCVwKKwl9IGVsc2UgewkJCQkJCQlcCisJCWludCBz
dGFydDsJCQkJCQlcCisJCQkJCQkJCQlcCisJCWlmICh0cGwgPj0gdWQtPm1hdGNoX2RhdGEtPnRw
bF9sZXZlbHMpCQkJXAorCQkJdHBsID0gdWQtPm1hdGNoX2RhdGEtPnRwbF9sZXZlbHMgLSAxOwkJ
XAorCQkJCQkJCQkJXAorCQlzdGFydCA9IHVkLT5tYXRjaF9kYXRhLT5sZXZlbF9zdGFydF9pZHhb
dHBsXTsJCVwKKwkJCQkJCQkJCVwKKwkJaWQgPSBmaW5kX25leHRfemVyb19iaXQodWQtPnJlcyMj
X21hcCwgdWQtPnJlcyMjX2NudCwJXAorCQkJCQlzdGFydCk7CQkJCVwKKwkJaWYgKGlkID09IHVk
LT5yZXMjI19jbnQpIHsJCQkJXAorCQkJcmV0dXJuIEVSUl9QVFIoLUVOT0VOVCk7CQkJXAorCQl9
CQkJCQkJCVwKKwl9CQkJCQkJCQlcCisJCQkJCQkJCQlcCisJc2V0X2JpdChpZCwgdWQtPnJlcyMj
X21hcCk7CQkJCQlcCisJcmV0dXJuICZ1ZC0+cmVzIyNzW2lkXTsJCQkJCQlcCit9CisKK1VETUFf
UkVTRVJWRV9SRVNPVVJDRSh0Y2hhbik7CitVRE1BX1JFU0VSVkVfUkVTT1VSQ0UocmNoYW4pOwor
CitzdGF0aWMgaW50IHVkbWFfZ2V0X3RjaGFuKHN0cnVjdCB1ZG1hX2NoYW4gKnVjKQoreworCXN0
cnVjdCB1ZG1hX2RldiAqdWQgPSB1Yy0+dWQ7CisKKwlpZiAodWMtPnRjaGFuKSB7CisJCWRldl9k
YmcodWQtPmRldiwgImNoYW4lZDogYWxyZWFkeSBoYXZlIHRjaGFuJWQgYWxsb2NhdGVkXG4iLAor
CQkJdWMtPmlkLCB1Yy0+dGNoYW4tPmlkKTsKKwkJcmV0dXJuIDA7CisJfQorCisJdWMtPnRjaGFu
ID0gX191ZG1hX3Jlc2VydmVfdGNoYW4odWQsIHVjLT5jaGFubmVsX3RwbCwgLTEpOworCWlmIChJ
U19FUlIodWMtPnRjaGFuKSkKKwkJcmV0dXJuIFBUUl9FUlIodWMtPnRjaGFuKTsKKworCXJldHVy
biAwOworfQorCitzdGF0aWMgaW50IHVkbWFfZ2V0X3JjaGFuKHN0cnVjdCB1ZG1hX2NoYW4gKnVj
KQoreworCXN0cnVjdCB1ZG1hX2RldiAqdWQgPSB1Yy0+dWQ7CisKKwlpZiAodWMtPnJjaGFuKSB7
CisJCWRldl9kYmcodWQtPmRldiwgImNoYW4lZDogYWxyZWFkeSBoYXZlIHJjaGFuJWQgYWxsb2Nh
dGVkXG4iLAorCQkJdWMtPmlkLCB1Yy0+cmNoYW4tPmlkKTsKKwkJcmV0dXJuIDA7CisJfQorCisJ
dWMtPnJjaGFuID0gX191ZG1hX3Jlc2VydmVfcmNoYW4odWQsIHVjLT5jaGFubmVsX3RwbCwgLTEp
OworCWlmIChJU19FUlIodWMtPnJjaGFuKSkKKwkJcmV0dXJuIFBUUl9FUlIodWMtPnJjaGFuKTsK
KworCXJldHVybiAwOworfQorCitzdGF0aWMgaW50IHVkbWFfZ2V0X2NoYW5fcGFpcihzdHJ1Y3Qg
dWRtYV9jaGFuICp1YykKK3sKKwlzdHJ1Y3QgdWRtYV9kZXYgKnVkID0gdWMtPnVkOworCWNvbnN0
IHN0cnVjdCB1ZG1hX21hdGNoX2RhdGEgKm1hdGNoX2RhdGEgPSB1ZC0+bWF0Y2hfZGF0YTsKKwlp
bnQgY2hhbl9pZCwgZW5kOworCisJaWYgKCh1Yy0+dGNoYW4gJiYgdWMtPnJjaGFuKSAmJiB1Yy0+
dGNoYW4tPmlkID09IHVjLT5yY2hhbi0+aWQpIHsKKwkJZGV2X2luZm8odWQtPmRldiwgImNoYW4l
ZDogYWxyZWFkeSBoYXZlICVkIHBhaXIgYWxsb2NhdGVkXG4iLAorCQkJIHVjLT5pZCwgdWMtPnRj
aGFuLT5pZCk7CisJCXJldHVybiAwOworCX0KKworCWlmICh1Yy0+dGNoYW4pIHsKKwkJZGV2X2Vy
cih1ZC0+ZGV2LCAiY2hhbiVkOiBhbHJlYWR5IGhhdmUgdGNoYW4lZCBhbGxvY2F0ZWRcbiIsCisJ
CQl1Yy0+aWQsIHVjLT50Y2hhbi0+aWQpOworCQlyZXR1cm4gLUVCVVNZOworCX0gZWxzZSBpZiAo
dWMtPnJjaGFuKSB7CisJCWRldl9lcnIodWQtPmRldiwgImNoYW4lZDogYWxyZWFkeSBoYXZlIHJj
aGFuJWQgYWxsb2NhdGVkXG4iLAorCQkJdWMtPmlkLCB1Yy0+cmNoYW4tPmlkKTsKKwkJcmV0dXJu
IC1FQlVTWTsKKwl9CisKKwkvKiBDYW4gYmUgb3B0aW1pemVkLCBidXQgbGV0J3MgaGF2ZSBpdCBs
aWtlIHRoaXMgZm9yIG5vdyAqLworCWVuZCA9IG1pbih1ZC0+dGNoYW5fY250LCB1ZC0+cmNoYW5f
Y250KTsKKwkvKiBUcnkgdG8gdXNlIHRoZSBoaWdoZXN0IFRQTCBjaGFubmVsIHBhaXIgZm9yIE1F
TV9UT19NRU0gY2hhbm5lbHMgKi8KKwljaGFuX2lkID0gbWF0Y2hfZGF0YS0+bGV2ZWxfc3RhcnRf
aWR4W21hdGNoX2RhdGEtPnRwbF9sZXZlbHMgLSAxXTsKKwlmb3IgKDsgY2hhbl9pZCA8IGVuZDsg
Y2hhbl9pZCsrKSB7CisJCWlmICghdGVzdF9iaXQoY2hhbl9pZCwgdWQtPnRjaGFuX21hcCkgJiYK
KwkJICAgICF0ZXN0X2JpdChjaGFuX2lkLCB1ZC0+cmNoYW5fbWFwKSkKKwkJCWJyZWFrOworCX0K
KworCWlmIChjaGFuX2lkID09IGVuZCkKKwkJcmV0dXJuIC1FTk9FTlQ7CisKKwlzZXRfYml0KGNo
YW5faWQsIHVkLT50Y2hhbl9tYXApOworCXNldF9iaXQoY2hhbl9pZCwgdWQtPnJjaGFuX21hcCk7
CisJdWMtPnRjaGFuID0gJnVkLT50Y2hhbnNbY2hhbl9pZF07CisJdWMtPnJjaGFuID0gJnVkLT5y
Y2hhbnNbY2hhbl9pZF07CisKKwlyZXR1cm4gMDsKK30KKworc3RhdGljIGludCB1ZG1hX2dldF9y
ZmxvdyhzdHJ1Y3QgdWRtYV9jaGFuICp1YywgaW50IGZsb3dfaWQpCit7CisJc3RydWN0IHVkbWFf
ZGV2ICp1ZCA9IHVjLT51ZDsKKworCWlmICh1Yy0+cmZsb3cpIHsKKwkJZGV2X2RiZyh1ZC0+ZGV2
LCAiY2hhbiVkOiBhbHJlYWR5IGhhdmUgcmZsb3clZCBhbGxvY2F0ZWRcbiIsCisJCQl1Yy0+aWQs
IHVjLT5yZmxvdy0+aWQpOworCQlyZXR1cm4gMDsKKwl9CisKKwlpZiAoIXVjLT5yY2hhbikKKwkJ
ZGV2X3dhcm4odWQtPmRldiwgImNoYW4lZDogZG9lcyBub3QgaGF2ZSByY2hhbj8/XG4iLCB1Yy0+
aWQpOworCisJdWMtPnJmbG93ID0gX191ZG1hX2dldF9yZmxvdyh1ZCwgZmxvd19pZCk7CisJaWYg
KElTX0VSUih1Yy0+cmZsb3cpKQorCQlyZXR1cm4gUFRSX0VSUih1Yy0+cmZsb3cpOworCisJcmV0
dXJuIDA7Cit9CisKK3N0YXRpYyB2b2lkIHVkbWFfcHV0X3JjaGFuKHN0cnVjdCB1ZG1hX2NoYW4g
KnVjKQoreworCXN0cnVjdCB1ZG1hX2RldiAqdWQgPSB1Yy0+dWQ7CisKKwlpZiAodWMtPnJjaGFu
KSB7CisJCWRldl9kYmcodWQtPmRldiwgImNoYW4lZDogcHV0IHJjaGFuJWRcbiIsIHVjLT5pZCwK
KwkJCXVjLT5yY2hhbi0+aWQpOworCQljbGVhcl9iaXQodWMtPnJjaGFuLT5pZCwgdWQtPnJjaGFu
X21hcCk7CisJCXVjLT5yY2hhbiA9IE5VTEw7CisJfQorfQorCitzdGF0aWMgdm9pZCB1ZG1hX3B1
dF90Y2hhbihzdHJ1Y3QgdWRtYV9jaGFuICp1YykKK3sKKwlzdHJ1Y3QgdWRtYV9kZXYgKnVkID0g
dWMtPnVkOworCisJaWYgKHVjLT50Y2hhbikgeworCQlkZXZfZGJnKHVkLT5kZXYsICJjaGFuJWQ6
IHB1dCB0Y2hhbiVkXG4iLCB1Yy0+aWQsCisJCQl1Yy0+dGNoYW4tPmlkKTsKKwkJY2xlYXJfYml0
KHVjLT50Y2hhbi0+aWQsIHVkLT50Y2hhbl9tYXApOworCQl1Yy0+dGNoYW4gPSBOVUxMOworCX0K
K30KKworc3RhdGljIHZvaWQgdWRtYV9wdXRfcmZsb3coc3RydWN0IHVkbWFfY2hhbiAqdWMpCit7
CisJc3RydWN0IHVkbWFfZGV2ICp1ZCA9IHVjLT51ZDsKKworCWlmICh1Yy0+cmZsb3cpIHsKKwkJ
ZGV2X2RiZyh1ZC0+ZGV2LCAiY2hhbiVkOiBwdXQgcmZsb3clZFxuIiwgdWMtPmlkLAorCQkJdWMt
PnJmbG93LT5pZCk7CisJCV9fdWRtYV9wdXRfcmZsb3codWQsIHVjLT5yZmxvdyk7CisJCXVjLT5y
ZmxvdyA9IE5VTEw7CisJfQorfQorCitzdGF0aWMgdm9pZCB1ZG1hX2ZyZWVfdHhfcmVzb3VyY2Vz
KHN0cnVjdCB1ZG1hX2NoYW4gKnVjKQoreworCWlmICghdWMtPnRjaGFuKQorCQlyZXR1cm47CisK
KwlrM19yaW5nYWNjX3JpbmdfZnJlZSh1Yy0+dGNoYW4tPnRfcmluZyk7CisJazNfcmluZ2FjY19y
aW5nX2ZyZWUodWMtPnRjaGFuLT50Y19yaW5nKTsKKwl1Yy0+dGNoYW4tPnRfcmluZyA9IE5VTEw7
CisJdWMtPnRjaGFuLT50Y19yaW5nID0gTlVMTDsKKworCXVkbWFfcHV0X3RjaGFuKHVjKTsKK30K
Kworc3RhdGljIGludCB1ZG1hX2FsbG9jX3R4X3Jlc291cmNlcyhzdHJ1Y3QgdWRtYV9jaGFuICp1
YykKK3sKKwlzdHJ1Y3QgazNfcmluZ19jZmcgcmluZ19jZmc7CisJc3RydWN0IHVkbWFfZGV2ICp1
ZCA9IHVjLT51ZDsKKwlpbnQgcmV0OworCisJcmV0ID0gdWRtYV9nZXRfdGNoYW4odWMpOworCWlm
IChyZXQpCisJCXJldHVybiByZXQ7CisKKwl1Yy0+dGNoYW4tPnRfcmluZyA9IGszX3JpbmdhY2Nf
cmVxdWVzdF9yaW5nKHVkLT5yaW5nYWNjLAorCQkJCQkJICAgIHVjLT50Y2hhbi0+aWQsIDApOwor
CWlmICghdWMtPnRjaGFuLT50X3JpbmcpIHsKKwkJcmV0ID0gLUVCVVNZOworCQlnb3RvIGVycl90
eF9yaW5nOworCX0KKworCXVjLT50Y2hhbi0+dGNfcmluZyA9IGszX3JpbmdhY2NfcmVxdWVzdF9y
aW5nKHVkLT5yaW5nYWNjLCAtMSwgMCk7CisJaWYgKCF1Yy0+dGNoYW4tPnRjX3JpbmcpIHsKKwkJ
cmV0ID0gLUVCVVNZOworCQlnb3RvIGVycl90eGNfcmluZzsKKwl9CisKKwltZW1zZXQoJnJpbmdf
Y2ZnLCAwLCBzaXplb2YocmluZ19jZmcpKTsKKwlyaW5nX2NmZy5zaXplID0gSzNfVURNQV9ERUZB
VUxUX1JJTkdfU0laRTsKKwlyaW5nX2NmZy5lbG1fc2l6ZSA9IEszX1JJTkdBQ0NfUklOR19FTFNJ
WkVfODsKKwlyaW5nX2NmZy5tb2RlID0gSzNfUklOR0FDQ19SSU5HX01PREVfTUVTU0FHRTsKKwor
CXJldCA9IGszX3JpbmdhY2NfcmluZ19jZmcodWMtPnRjaGFuLT50X3JpbmcsICZyaW5nX2NmZyk7
CisJcmV0IHw9IGszX3JpbmdhY2NfcmluZ19jZmcodWMtPnRjaGFuLT50Y19yaW5nLCAmcmluZ19j
ZmcpOworCisJaWYgKHJldCkKKwkJZ290byBlcnJfcmluZ2NmZzsKKworCXJldHVybiAwOworCitl
cnJfcmluZ2NmZzoKKwlrM19yaW5nYWNjX3JpbmdfZnJlZSh1Yy0+dGNoYW4tPnRjX3JpbmcpOwor
CXVjLT50Y2hhbi0+dGNfcmluZyA9IE5VTEw7CitlcnJfdHhjX3Jpbmc6CisJazNfcmluZ2FjY19y
aW5nX2ZyZWUodWMtPnRjaGFuLT50X3JpbmcpOworCXVjLT50Y2hhbi0+dF9yaW5nID0gTlVMTDsK
K2Vycl90eF9yaW5nOgorCXVkbWFfcHV0X3RjaGFuKHVjKTsKKworCXJldHVybiByZXQ7Cit9CisK
K3N0YXRpYyB2b2lkIHVkbWFfZnJlZV9yeF9yZXNvdXJjZXMoc3RydWN0IHVkbWFfY2hhbiAqdWMp
Cit7CisJaWYgKCF1Yy0+cmNoYW4pCisJCXJldHVybjsKKworCWlmICh1Yy0+ZGlyICE9IERNQV9N
RU1fVE9fTUVNKSB7CisJCWszX3JpbmdhY2NfcmluZ19mcmVlKHVjLT5yY2hhbi0+ZmRfcmluZyk7
CisJCWszX3JpbmdhY2NfcmluZ19mcmVlKHVjLT5yY2hhbi0+cl9yaW5nKTsKKwkJdWMtPnJjaGFu
LT5mZF9yaW5nID0gTlVMTDsKKwkJdWMtPnJjaGFuLT5yX3JpbmcgPSBOVUxMOworCisJCXVkbWFf
cHV0X3JmbG93KHVjKTsKKwl9CisKKwl1ZG1hX3B1dF9yY2hhbih1Yyk7Cit9CisKK3N0YXRpYyBp
bnQgdWRtYV9hbGxvY19yeF9yZXNvdXJjZXMoc3RydWN0IHVkbWFfY2hhbiAqdWMpCit7CisJc3Ry
dWN0IGszX3JpbmdfY2ZnIHJpbmdfY2ZnOworCXN0cnVjdCB1ZG1hX2RldiAqdWQgPSB1Yy0+dWQ7
CisJaW50IGZkX3JpbmdfaWQ7CisJaW50IHJldDsKKworCXJldCA9IHVkbWFfZ2V0X3JjaGFuKHVj
KTsKKwlpZiAocmV0KQorCQlyZXR1cm4gcmV0OworCisJLyogRm9yIE1FTV9UT19NRU0gd2UgZG9u
J3QgbmVlZCByZmxvdyBvciByaW5ncyAqLworCWlmICh1Yy0+ZGlyID09IERNQV9NRU1fVE9fTUVN
KQorCQlyZXR1cm4gMDsKKworCXJldCA9IHVkbWFfZ2V0X3JmbG93KHVjLCB1Yy0+cmNoYW4tPmlk
KTsKKwlpZiAocmV0KSB7CisJCXJldCA9IC1FQlVTWTsKKwkJZ290byBlcnJfcmZsb3c7CisJfQor
CisJZmRfcmluZ19pZCA9IHVkLT50Y2hhbl9jbnQgKyB1ZC0+ZWNoYW5fY250ICsgdWMtPnJjaGFu
LT5pZDsKKwl1Yy0+cmNoYW4tPmZkX3JpbmcgPSBrM19yaW5nYWNjX3JlcXVlc3RfcmluZyh1ZC0+
cmluZ2FjYywKKwkJCQkJCSAgICAgZmRfcmluZ19pZCwgMCk7CisJaWYgKCF1Yy0+cmNoYW4tPmZk
X3JpbmcpIHsKKwkJcmV0ID0gLUVCVVNZOworCQlnb3RvIGVycl9yeF9yaW5nOworCX0KKworCXVj
LT5yY2hhbi0+cl9yaW5nID0gazNfcmluZ2FjY19yZXF1ZXN0X3JpbmcodWQtPnJpbmdhY2MsIC0x
LCAwKTsKKwlpZiAoIXVjLT5yY2hhbi0+cl9yaW5nKSB7CisJCXJldCA9IC1FQlVTWTsKKwkJZ290
byBlcnJfcnhjX3Jpbmc7CisJfQorCisJbWVtc2V0KCZyaW5nX2NmZywgMCwgc2l6ZW9mKHJpbmdf
Y2ZnKSk7CisKKwlpZiAodWMtPnBrdF9tb2RlKQorCQlyaW5nX2NmZy5zaXplID0gU0dfTUFYX1NF
R01FTlRTOworCWVsc2UKKwkJcmluZ19jZmcuc2l6ZSA9IEszX1VETUFfREVGQVVMVF9SSU5HX1NJ
WkU7CisKKwlyaW5nX2NmZy5lbG1fc2l6ZSA9IEszX1JJTkdBQ0NfUklOR19FTFNJWkVfODsKKwly
aW5nX2NmZy5tb2RlID0gSzNfUklOR0FDQ19SSU5HX01PREVfTUVTU0FHRTsKKworCXJldCA9IGsz
X3JpbmdhY2NfcmluZ19jZmcodWMtPnJjaGFuLT5mZF9yaW5nLCAmcmluZ19jZmcpOworCXJpbmdf
Y2ZnLnNpemUgPSBLM19VRE1BX0RFRkFVTFRfUklOR19TSVpFOworCXJldCB8PSBrM19yaW5nYWNj
X3JpbmdfY2ZnKHVjLT5yY2hhbi0+cl9yaW5nLCAmcmluZ19jZmcpOworCisJaWYgKHJldCkKKwkJ
Z290byBlcnJfcmluZ2NmZzsKKworCXJldHVybiAwOworCitlcnJfcmluZ2NmZzoKKwlrM19yaW5n
YWNjX3JpbmdfZnJlZSh1Yy0+cmNoYW4tPnJfcmluZyk7CisJdWMtPnJjaGFuLT5yX3JpbmcgPSBO
VUxMOworZXJyX3J4Y19yaW5nOgorCWszX3JpbmdhY2NfcmluZ19mcmVlKHVjLT5yY2hhbi0+ZmRf
cmluZyk7CisJdWMtPnJjaGFuLT5mZF9yaW5nID0gTlVMTDsKK2Vycl9yeF9yaW5nOgorCXVkbWFf
cHV0X3JmbG93KHVjKTsKK2Vycl9yZmxvdzoKKwl1ZG1hX3B1dF9yY2hhbih1Yyk7CisKKwlyZXR1
cm4gcmV0OworfQorCitzdGF0aWMgaW50IHVkbWFfdGlzY2lfbTJtX2NoYW5uZWxfY29uZmlnKHN0
cnVjdCB1ZG1hX2NoYW4gKnVjKQoreworCXN0cnVjdCB1ZG1hX2RldiAqdWQgPSB1Yy0+dWQ7CisJ
c3RydWN0IHVkbWFfdGlzY2lfcm0gKnRpc2NpX3JtID0gJnVkLT50aXNjaV9ybTsKKwljb25zdCBz
dHJ1Y3QgdGlfc2NpX3JtX3VkbWFwX29wcyAqdGlzY2lfb3BzID0gdGlzY2lfcm0tPnRpc2NpX3Vk
bWFwX29wczsKKwlzdHJ1Y3QgdWRtYV90Y2hhbiAqdGNoYW4gPSB1Yy0+dGNoYW47CisJc3RydWN0
IHVkbWFfcmNoYW4gKnJjaGFuID0gdWMtPnJjaGFuOworCWludCByZXQgPSAwOworCisJLyogTm9u
IHN5bmNocm9uaXplZCAtIG1lbSB0byBtZW0gdHlwZSBvZiB0cmFuc2ZlciAqLworCWludCB0Y19y
aW5nID0gazNfcmluZ2FjY19nZXRfcmluZ19pZCh0Y2hhbi0+dGNfcmluZyk7CisJc3RydWN0IHRp
X3NjaV9tc2dfcm1fdWRtYXBfdHhfY2hfY2ZnIHJlcV90eCA9IHsgMCB9OworCXN0cnVjdCB0aV9z
Y2lfbXNnX3JtX3VkbWFwX3J4X2NoX2NmZyByZXFfcnggPSB7IDAgfTsKKworCXJlcV90eC52YWxp
ZF9wYXJhbXMgPQorCQlUSV9TQ0lfTVNHX1ZBTFVFX1JNX1VETUFQX0NIX1BBVVNFX09OX0VSUl9W
QUxJRCB8CisJCVRJX1NDSV9NU0dfVkFMVUVfUk1fVURNQVBfQ0hfVFhfRklMVF9FSU5GT19WQUxJ
RCB8CisJCVRJX1NDSV9NU0dfVkFMVUVfUk1fVURNQVBfQ0hfVFhfRklMVF9QU1dPUkRTX1ZBTElE
IHwKKwkJVElfU0NJX01TR19WQUxVRV9STV9VRE1BUF9DSF9DSEFOX1RZUEVfVkFMSUQgfAorCQlU
SV9TQ0lfTVNHX1ZBTFVFX1JNX1VETUFQX0NIX1RYX1NVUFJfVERQS1RfVkFMSUQgfAorCQlUSV9T
Q0lfTVNHX1ZBTFVFX1JNX1VETUFQX0NIX0ZFVENIX1NJWkVfVkFMSUQgfAorCQlUSV9TQ0lfTVNH
X1ZBTFVFX1JNX1VETUFQX0NIX0NRX1FOVU1fVkFMSUQ7CisKKwlyZXFfdHgubmF2X2lkID0gdGlz
Y2lfcm0tPnRpc2NpX2Rldl9pZDsKKwlyZXFfdHguaW5kZXggPSB0Y2hhbi0+aWQ7CisJcmVxX3R4
LnR4X3BhdXNlX29uX2VyciA9IDA7CisJcmVxX3R4LnR4X2ZpbHRfZWluZm8gPSAwOworCXJlcV90
eC50eF9maWx0X3Bzd29yZHMgPSAwOworCXJlcV90eC50eF9jaGFuX3R5cGUgPSBUSV9TQ0lfUk1f
VURNQVBfQ0hBTl9UWVBFXzNSRFBfQkNPUFlfUEJSUjsKKwlyZXFfdHgudHhfc3Vwcl90ZHBrdCA9
IDA7CisJcmVxX3R4LnR4X2ZldGNoX3NpemUgPSBzaXplb2Yoc3RydWN0IGNwcGk1X2Rlc2NfaGRy
X3QpID4+IDI7CisJcmVxX3R4LnR4Y3FfcW51bSA9IHRjX3Jpbmc7CisKKwlyZXQgPSB0aXNjaV9v
cHMtPnR4X2NoX2NmZyh0aXNjaV9ybS0+dGlzY2ksICZyZXFfdHgpOworCWlmIChyZXQpIHsKKwkJ
ZGV2X2Vycih1ZC0+ZGV2LCAidGNoYW4lZCBjZmcgZmFpbGVkICVkXG4iLCB0Y2hhbi0+aWQsIHJl
dCk7CisJCXJldHVybiByZXQ7CisJfQorCisJcmVxX3J4LnZhbGlkX3BhcmFtcyA9CisJCVRJX1ND
SV9NU0dfVkFMVUVfUk1fVURNQVBfQ0hfUEFVU0VfT05fRVJSX1ZBTElEIHwKKwkJVElfU0NJX01T
R19WQUxVRV9STV9VRE1BUF9DSF9GRVRDSF9TSVpFX1ZBTElEIHwKKwkJVElfU0NJX01TR19WQUxV
RV9STV9VRE1BUF9DSF9DUV9RTlVNX1ZBTElEIHwKKwkJVElfU0NJX01TR19WQUxVRV9STV9VRE1B
UF9DSF9DSEFOX1RZUEVfVkFMSUQgfAorCQlUSV9TQ0lfTVNHX1ZBTFVFX1JNX1VETUFQX0NIX1JY
X0lHTk9SRV9TSE9SVF9WQUxJRCB8CisJCVRJX1NDSV9NU0dfVkFMVUVfUk1fVURNQVBfQ0hfUlhf
SUdOT1JFX0xPTkdfVkFMSUQgfAorCQlUSV9TQ0lfTVNHX1ZBTFVFX1JNX1VETUFQX0NIX1JYX0ZM
T1dJRF9TVEFSVF9WQUxJRCB8CisJCVRJX1NDSV9NU0dfVkFMVUVfUk1fVURNQVBfQ0hfUlhfRkxP
V0lEX0NOVF9WQUxJRDsKKworCXJlcV9yeC5uYXZfaWQgPSB0aXNjaV9ybS0+dGlzY2lfZGV2X2lk
OworCXJlcV9yeC5pbmRleCA9IHJjaGFuLT5pZDsKKwlyZXFfcngucnhfZmV0Y2hfc2l6ZSA9IHNp
emVvZihzdHJ1Y3QgY3BwaTVfZGVzY19oZHJfdCkgPj4gMjsKKwlyZXFfcngucnhjcV9xbnVtID0g
dGNfcmluZzsKKwlyZXFfcngucnhfcGF1c2Vfb25fZXJyID0gMDsKKwlyZXFfcngucnhfY2hhbl90
eXBlID0gVElfU0NJX1JNX1VETUFQX0NIQU5fVFlQRV8zUkRQX0JDT1BZX1BCUlI7CisJcmVxX3J4
LnJ4X2lnbm9yZV9zaG9ydCA9IDA7CisJcmVxX3J4LnJ4X2lnbm9yZV9sb25nID0gMDsKKwlyZXFf
cnguZmxvd2lkX3N0YXJ0ID0gMDsKKwlyZXFfcnguZmxvd2lkX2NudCA9IDA7CisKKwlyZXQgPSB0
aXNjaV9vcHMtPnJ4X2NoX2NmZyh0aXNjaV9ybS0+dGlzY2ksICZyZXFfcngpOworCWlmIChyZXQp
CisJCWRldl9lcnIodWQtPmRldiwgInJjaGFuJWQgYWxsb2MgZmFpbGVkICVkXG4iLCByY2hhbi0+
aWQsIHJldCk7CisKKwlyZXR1cm4gcmV0OworfQorCitzdGF0aWMgaW50IHVkbWFfdGlzY2lfdHhf
Y2hhbm5lbF9jb25maWcoc3RydWN0IHVkbWFfY2hhbiAqdWMpCit7CisJc3RydWN0IHVkbWFfZGV2
ICp1ZCA9IHVjLT51ZDsKKwlzdHJ1Y3QgdWRtYV90aXNjaV9ybSAqdGlzY2lfcm0gPSAmdWQtPnRp
c2NpX3JtOworCWNvbnN0IHN0cnVjdCB0aV9zY2lfcm1fdWRtYXBfb3BzICp0aXNjaV9vcHMgPSB0
aXNjaV9ybS0+dGlzY2lfdWRtYXBfb3BzOworCXN0cnVjdCB1ZG1hX3RjaGFuICp0Y2hhbiA9IHVj
LT50Y2hhbjsKKwlpbnQgdGNfcmluZyA9IGszX3JpbmdhY2NfZ2V0X3JpbmdfaWQodGNoYW4tPnRj
X3JpbmcpOworCXN0cnVjdCB0aV9zY2lfbXNnX3JtX3VkbWFwX3R4X2NoX2NmZyByZXFfdHggPSB7
IDAgfTsKKwl1MzIgbW9kZSwgZmV0Y2hfc2l6ZTsKKwlpbnQgcmV0ID0gMDsKKworCWlmICh1Yy0+
cGt0X21vZGUpIHsKKwkJbW9kZSA9IFRJX1NDSV9STV9VRE1BUF9DSEFOX1RZUEVfUEtUX1BCUlI7
CisJCWZldGNoX3NpemUgPSBjcHBpNV9oZGVzY19jYWxjX3NpemUodWMtPm5lZWRzX2VwaWIsIHVj
LT5wc2Rfc2l6ZSwKKwkJCQkJCSAgIDApOworCX0gZWxzZSB7CisJCW1vZGUgPSBUSV9TQ0lfUk1f
VURNQVBfQ0hBTl9UWVBFXzNSRFBfUEJSUjsKKwkJZmV0Y2hfc2l6ZSA9IHNpemVvZihzdHJ1Y3Qg
Y3BwaTVfZGVzY19oZHJfdCk7CisJfQorCisJcmVxX3R4LnZhbGlkX3BhcmFtcyA9CisJCVRJX1ND
SV9NU0dfVkFMVUVfUk1fVURNQVBfQ0hfUEFVU0VfT05fRVJSX1ZBTElEIHwKKwkJVElfU0NJX01T
R19WQUxVRV9STV9VRE1BUF9DSF9UWF9GSUxUX0VJTkZPX1ZBTElEIHwKKwkJVElfU0NJX01TR19W
QUxVRV9STV9VRE1BUF9DSF9UWF9GSUxUX1BTV09SRFNfVkFMSUQgfAorCQlUSV9TQ0lfTVNHX1ZB
TFVFX1JNX1VETUFQX0NIX0NIQU5fVFlQRV9WQUxJRCB8CisJCVRJX1NDSV9NU0dfVkFMVUVfUk1f
VURNQVBfQ0hfVFhfU1VQUl9URFBLVF9WQUxJRCB8CisJCVRJX1NDSV9NU0dfVkFMVUVfUk1fVURN
QVBfQ0hfRkVUQ0hfU0laRV9WQUxJRCB8CisJCVRJX1NDSV9NU0dfVkFMVUVfUk1fVURNQVBfQ0hf
Q1FfUU5VTV9WQUxJRDsKKworCXJlcV90eC5uYXZfaWQgPSB0aXNjaV9ybS0+dGlzY2lfZGV2X2lk
OworCXJlcV90eC5pbmRleCA9IHRjaGFuLT5pZDsKKwlyZXFfdHgudHhfcGF1c2Vfb25fZXJyID0g
MDsKKwlyZXFfdHgudHhfZmlsdF9laW5mbyA9IDA7CisJcmVxX3R4LnR4X2ZpbHRfcHN3b3JkcyA9
IDA7CisJcmVxX3R4LnR4X2NoYW5fdHlwZSA9IG1vZGU7CisJcmVxX3R4LnR4X3N1cHJfdGRwa3Qg
PSB1Yy0+bm90ZHBrdDsKKwlyZXFfdHgudHhfZmV0Y2hfc2l6ZSA9IGZldGNoX3NpemUgPj4gMjsK
KwlyZXFfdHgudHhjcV9xbnVtID0gdGNfcmluZzsKKwlpZiAodWMtPmVwX3R5cGUgPT0gUFNJTF9F
UF9QRE1BX1hZKSB7CisJCS8qIHdhaXQgZm9yIHBlZXIgdG8gY29tcGxldGUgdGhlIHRlYXJkb3du
IGZvciBQRE1BcyAqLworCQlyZXFfdHgudmFsaWRfcGFyYW1zIHw9CisJCQkJVElfU0NJX01TR19W
QUxVRV9STV9VRE1BUF9DSF9UWF9URFRZUEVfVkFMSUQ7CisJCXJlcV90eC50eF90ZHR5cGUgPSAx
OworCX0KKworCXJldCA9IHRpc2NpX29wcy0+dHhfY2hfY2ZnKHRpc2NpX3JtLT50aXNjaSwgJnJl
cV90eCk7CisJaWYgKHJldCkKKwkJZGV2X2Vycih1ZC0+ZGV2LCAidGNoYW4lZCBjZmcgZmFpbGVk
ICVkXG4iLCB0Y2hhbi0+aWQsIHJldCk7CisKKwlyZXR1cm4gcmV0OworfQorCitzdGF0aWMgaW50
IHVkbWFfdGlzY2lfcnhfY2hhbm5lbF9jb25maWcoc3RydWN0IHVkbWFfY2hhbiAqdWMpCit7CisJ
c3RydWN0IHVkbWFfZGV2ICp1ZCA9IHVjLT51ZDsKKwlzdHJ1Y3QgdWRtYV90aXNjaV9ybSAqdGlz
Y2lfcm0gPSAmdWQtPnRpc2NpX3JtOworCWNvbnN0IHN0cnVjdCB0aV9zY2lfcm1fdWRtYXBfb3Bz
ICp0aXNjaV9vcHMgPSB0aXNjaV9ybS0+dGlzY2lfdWRtYXBfb3BzOworCXN0cnVjdCB1ZG1hX3Jj
aGFuICpyY2hhbiA9IHVjLT5yY2hhbjsKKwlpbnQgZmRfcmluZyA9IGszX3JpbmdhY2NfZ2V0X3Jp
bmdfaWQocmNoYW4tPmZkX3JpbmcpOworCWludCByeF9yaW5nID0gazNfcmluZ2FjY19nZXRfcmlu
Z19pZChyY2hhbi0+cl9yaW5nKTsKKwlzdHJ1Y3QgdGlfc2NpX21zZ19ybV91ZG1hcF9yeF9jaF9j
ZmcgcmVxX3J4ID0geyAwIH07CisJc3RydWN0IHRpX3NjaV9tc2dfcm1fdWRtYXBfZmxvd19jZmcg
Zmxvd19yZXEgPSB7IDAgfTsKKwl1MzIgbW9kZSwgZmV0Y2hfc2l6ZTsKKwlpbnQgcmV0ID0gMDsK
KworCWlmICh1Yy0+cGt0X21vZGUpIHsKKwkJbW9kZSA9IFRJX1NDSV9STV9VRE1BUF9DSEFOX1RZ
UEVfUEtUX1BCUlI7CisJCWZldGNoX3NpemUgPSBjcHBpNV9oZGVzY19jYWxjX3NpemUodWMtPm5l
ZWRzX2VwaWIsCisJCQkJCQkJdWMtPnBzZF9zaXplLCAwKTsKKwl9IGVsc2UgeworCQltb2RlID0g
VElfU0NJX1JNX1VETUFQX0NIQU5fVFlQRV8zUkRQX1BCUlI7CisJCWZldGNoX3NpemUgPSBzaXpl
b2Yoc3RydWN0IGNwcGk1X2Rlc2NfaGRyX3QpOworCX0KKworCXJlcV9yeC52YWxpZF9wYXJhbXMg
PQorCQlUSV9TQ0lfTVNHX1ZBTFVFX1JNX1VETUFQX0NIX1BBVVNFX09OX0VSUl9WQUxJRCB8CisJ
CVRJX1NDSV9NU0dfVkFMVUVfUk1fVURNQVBfQ0hfRkVUQ0hfU0laRV9WQUxJRCB8CisJCVRJX1ND
SV9NU0dfVkFMVUVfUk1fVURNQVBfQ0hfQ1FfUU5VTV9WQUxJRCB8CisJCVRJX1NDSV9NU0dfVkFM
VUVfUk1fVURNQVBfQ0hfQ0hBTl9UWVBFX1ZBTElEIHwKKwkJVElfU0NJX01TR19WQUxVRV9STV9V
RE1BUF9DSF9SWF9JR05PUkVfU0hPUlRfVkFMSUQgfAorCQlUSV9TQ0lfTVNHX1ZBTFVFX1JNX1VE
TUFQX0NIX1JYX0lHTk9SRV9MT05HX1ZBTElEIHwKKwkJVElfU0NJX01TR19WQUxVRV9STV9VRE1B
UF9DSF9SWF9GTE9XSURfU1RBUlRfVkFMSUQgfAorCQlUSV9TQ0lfTVNHX1ZBTFVFX1JNX1VETUFQ
X0NIX1JYX0ZMT1dJRF9DTlRfVkFMSUQ7CisKKwlyZXFfcngubmF2X2lkID0gdGlzY2lfcm0tPnRp
c2NpX2Rldl9pZDsKKwlyZXFfcnguaW5kZXggPSByY2hhbi0+aWQ7CisJcmVxX3J4LnJ4X2ZldGNo
X3NpemUgPSAgZmV0Y2hfc2l6ZSA+PiAyOworCXJlcV9yeC5yeGNxX3FudW0gPSByeF9yaW5nOwor
CXJlcV9yeC5yeF9wYXVzZV9vbl9lcnIgPSAwOworCXJlcV9yeC5yeF9jaGFuX3R5cGUgPSBtb2Rl
OworCXJlcV9yeC5yeF9pZ25vcmVfc2hvcnQgPSAwOworCXJlcV9yeC5yeF9pZ25vcmVfbG9uZyA9
IDA7CisJcmVxX3J4LmZsb3dpZF9zdGFydCA9IDA7CisJcmVxX3J4LmZsb3dpZF9jbnQgPSAwOwor
CisJcmV0ID0gdGlzY2lfb3BzLT5yeF9jaF9jZmcodGlzY2lfcm0tPnRpc2NpLCAmcmVxX3J4KTsK
KwlpZiAocmV0KSB7CisJCWRldl9lcnIodWQtPmRldiwgInJjaGFuJWQgY2ZnIGZhaWxlZCAlZFxu
IiwgcmNoYW4tPmlkLCByZXQpOworCQlyZXR1cm4gcmV0OworCX0KKworCWZsb3dfcmVxLnZhbGlk
X3BhcmFtcyA9CisJCVRJX1NDSV9NU0dfVkFMVUVfUk1fVURNQVBfRkxPV19FSU5GT19QUkVTRU5U
X1ZBTElEIHwKKwkJVElfU0NJX01TR19WQUxVRV9STV9VRE1BUF9GTE9XX1BTSU5GT19QUkVTRU5U
X1ZBTElEIHwKKwkJVElfU0NJX01TR19WQUxVRV9STV9VRE1BUF9GTE9XX0VSUk9SX0hBTkRMSU5H
X1ZBTElEIHwKKwkJVElfU0NJX01TR19WQUxVRV9STV9VRE1BUF9GTE9XX0RFU0NfVFlQRV9WQUxJ
RCB8CisJCVRJX1NDSV9NU0dfVkFMVUVfUk1fVURNQVBfRkxPV19ERVNUX1FOVU1fVkFMSUQgfAor
CQlUSV9TQ0lfTVNHX1ZBTFVFX1JNX1VETUFQX0ZMT1dfU1JDX1RBR19ISV9TRUxfVkFMSUQgfAor
CQlUSV9TQ0lfTVNHX1ZBTFVFX1JNX1VETUFQX0ZMT1dfU1JDX1RBR19MT19TRUxfVkFMSUQgfAor
CQlUSV9TQ0lfTVNHX1ZBTFVFX1JNX1VETUFQX0ZMT1dfREVTVF9UQUdfSElfU0VMX1ZBTElEIHwK
KwkJVElfU0NJX01TR19WQUxVRV9STV9VRE1BUF9GTE9XX0RFU1RfVEFHX0xPX1NFTF9WQUxJRCB8
CisJCVRJX1NDSV9NU0dfVkFMVUVfUk1fVURNQVBfRkxPV19GRFEwX1NaMF9RTlVNX1ZBTElEIHwK
KwkJVElfU0NJX01TR19WQUxVRV9STV9VRE1BUF9GTE9XX0ZEUTFfUU5VTV9WQUxJRCB8CisJCVRJ
X1NDSV9NU0dfVkFMVUVfUk1fVURNQVBfRkxPV19GRFEyX1FOVU1fVkFMSUQgfAorCQlUSV9TQ0lf
TVNHX1ZBTFVFX1JNX1VETUFQX0ZMT1dfRkRRM19RTlVNX1ZBTElEOworCisJZmxvd19yZXEubmF2
X2lkID0gdGlzY2lfcm0tPnRpc2NpX2Rldl9pZDsKKwlmbG93X3JlcS5mbG93X2luZGV4ID0gcmNo
YW4tPmlkOworCisJaWYgKHVjLT5uZWVkc19lcGliKQorCQlmbG93X3JlcS5yeF9laW5mb19wcmVz
ZW50ID0gMTsKKwllbHNlCisJCWZsb3dfcmVxLnJ4X2VpbmZvX3ByZXNlbnQgPSAwOworCWlmICh1
Yy0+cHNkX3NpemUpCisJCWZsb3dfcmVxLnJ4X3BzaW5mb19wcmVzZW50ID0gMTsKKwllbHNlCisJ
CWZsb3dfcmVxLnJ4X3BzaW5mb19wcmVzZW50ID0gMDsKKwlmbG93X3JlcS5yeF9lcnJvcl9oYW5k
bGluZyA9IDE7CisJZmxvd19yZXEucnhfZGVzY190eXBlID0gMDsKKwlmbG93X3JlcS5yeF9kZXN0
X3FudW0gPSByeF9yaW5nOworCWZsb3dfcmVxLnJ4X3NyY190YWdfaGlfc2VsID0gMjsKKwlmbG93
X3JlcS5yeF9zcmNfdGFnX2xvX3NlbCA9IDQ7CisJZmxvd19yZXEucnhfZGVzdF90YWdfaGlfc2Vs
ID0gNTsKKwlmbG93X3JlcS5yeF9kZXN0X3RhZ19sb19zZWwgPSA0OworCWZsb3dfcmVxLnJ4X2Zk
cTBfc3owX3FudW0gPSBmZF9yaW5nOworCWZsb3dfcmVxLnJ4X2ZkcTFfcW51bSA9IGZkX3Jpbmc7
CisJZmxvd19yZXEucnhfZmRxMl9xbnVtID0gZmRfcmluZzsKKwlmbG93X3JlcS5yeF9mZHEzX3Fu
dW0gPSBmZF9yaW5nOworCisJcmV0ID0gdGlzY2lfb3BzLT5yeF9mbG93X2NmZyh0aXNjaV9ybS0+
dGlzY2ksICZmbG93X3JlcSk7CisKKwlpZiAocmV0KQorCQlkZXZfZXJyKHVkLT5kZXYsICJmbG93
JWQgY29uZmlnIGZhaWxlZDogJWRcbiIsIHJjaGFuLT5pZCwgcmV0KTsKKworCXJldHVybiAwOwor
fQorCitzdGF0aWMgaW50IHVkbWFfYWxsb2NfY2hhbl9yZXNvdXJjZXMoc3RydWN0IGRtYV9jaGFu
ICpjaGFuKQoreworCXN0cnVjdCB1ZG1hX2NoYW4gKnVjID0gdG9fdWRtYV9jaGFuKGNoYW4pOwor
CXN0cnVjdCB1ZG1hX2RldiAqdWQgPSB0b191ZG1hX2RldihjaGFuLT5kZXZpY2UpOworCWNvbnN0
IHN0cnVjdCB1ZG1hX21hdGNoX2RhdGEgKm1hdGNoX2RhdGEgPSB1ZC0+bWF0Y2hfZGF0YTsKKwlz
dHJ1Y3QgazNfcmluZyAqaXJxX3Jpbmc7CisJdTMyIGlycV91ZG1hX2lkeDsKKwlpbnQgcmV0Owor
CisJaWYgKHVjLT5wa3RfbW9kZSB8fCB1Yy0+ZGlyID09IERNQV9NRU1fVE9fTUVNKSB7CisJCXVj
LT51c2VfZG1hX3Bvb2wgPSB0cnVlOworCQkvKiBpbiBjYXNlIG9mIE1FTV9UT19NRU0gd2UgaGF2
ZSBtYXhpbXVtIG9mIHR3byBUUnMgKi8KKwkJaWYgKHVjLT5kaXIgPT0gRE1BX01FTV9UT19NRU0p
IHsKKwkJCXVjLT5oZGVzY19zaXplID0gY3BwaTVfdHJkZXNjX2NhbGNfc2l6ZSgKKwkJCQkJc2l6
ZW9mKHN0cnVjdCBjcHBpNV90cl90eXBlMTVfdCksIDIpOworCQkJdWMtPnBrdF9tb2RlID0gZmFs
c2U7CisJCX0KKwl9CisKKwlpZiAodWMtPnVzZV9kbWFfcG9vbCkgeworCQl1Yy0+aGRlc2NfcG9v
bCA9IGRtYV9wb29sX2NyZWF0ZSh1Yy0+bmFtZSwgdWQtPmRkZXYuZGV2LAorCQkJCQkJIHVjLT5o
ZGVzY19zaXplLCB1ZC0+ZGVzY19hbGlnbiwKKwkJCQkJCSAwKTsKKwkJaWYgKCF1Yy0+aGRlc2Nf
cG9vbCkgeworCQkJZGV2X2Vycih1ZC0+ZGRldi5kZXYsCisJCQkJIkRlc2NyaXB0b3IgcG9vbCBh
bGxvY2F0aW9uIGZhaWxlZFxuIik7CisJCQl1Yy0+dXNlX2RtYV9wb29sID0gZmFsc2U7CisJCQly
ZXR1cm4gLUVOT01FTTsKKwkJfQorCX0KKworCS8qCisJICogTWFrZSBzdXJlIHRoYXQgdGhlIGNv
bXBsZXRpb24gaXMgaW4gYSBrbm93biBzdGF0ZToKKwkgKiBObyB0ZWFyZG93biwgdGhlIGNoYW5u
ZWwgaXMgaWRsZQorCSAqLworCXJlaW5pdF9jb21wbGV0aW9uKCZ1Yy0+dGVhcmRvd25fY29tcGxl
dGVkKTsKKwljb21wbGV0ZV9hbGwoJnVjLT50ZWFyZG93bl9jb21wbGV0ZWQpOworCXVjLT5zdGF0
ZSA9IFVETUFfQ0hBTl9JU19JRExFOworCisJc3dpdGNoICh1Yy0+ZGlyKSB7CisJY2FzZSBETUFf
TUVNX1RPX01FTToKKwkJLyogTm9uIHN5bmNocm9uaXplZCAtIG1lbSB0byBtZW0gdHlwZSBvZiB0
cmFuc2ZlciAqLworCQlkZXZfZGJnKHVjLT51ZC0+ZGV2LCAiJXM6IGNoYW4lZCBhcyBNRU0tdG8t
TUVNXG4iLCBfX2Z1bmNfXywKKwkJCXVjLT5pZCk7CisKKwkJcmV0ID0gdWRtYV9nZXRfY2hhbl9w
YWlyKHVjKTsKKwkJaWYgKHJldCkKKwkJCXJldHVybiByZXQ7CisKKwkJcmV0ID0gdWRtYV9hbGxv
Y190eF9yZXNvdXJjZXModWMpOworCQlpZiAocmV0KQorCQkJcmV0dXJuIHJldDsKKworCQlyZXQg
PSB1ZG1hX2FsbG9jX3J4X3Jlc291cmNlcyh1Yyk7CisJCWlmIChyZXQpIHsKKwkJCXVkbWFfZnJl
ZV90eF9yZXNvdXJjZXModWMpOworCQkJcmV0dXJuIHJldDsKKwkJfQorCisJCXVjLT5zcmNfdGhy
ZWFkID0gdWQtPnBzaWxfYmFzZSArIHVjLT50Y2hhbi0+aWQ7CisJCXVjLT5kc3RfdGhyZWFkID0g
KHVkLT5wc2lsX2Jhc2UgKyB1Yy0+cmNoYW4tPmlkKSB8CisJCQkJIEszX1BTSUxfRFNUX1RIUkVB
RF9JRF9PRkZTRVQ7CisKKwkJaXJxX3JpbmcgPSB1Yy0+dGNoYW4tPnRjX3Jpbmc7CisJCWlycV91
ZG1hX2lkeCA9IHVjLT50Y2hhbi0+aWQ7CisKKwkJcmV0ID0gdWRtYV90aXNjaV9tMm1fY2hhbm5l
bF9jb25maWcodWMpOworCQlicmVhazsKKwljYXNlIERNQV9NRU1fVE9fREVWOgorCQkvKiBTbGF2
ZSB0cmFuc2ZlciBzeW5jaHJvbml6ZWQgLSBtZW0gdG8gZGV2IChUWCkgdHJhc25mZXIgKi8KKwkJ
ZGV2X2RiZyh1Yy0+dWQtPmRldiwgIiVzOiBjaGFuJWQgYXMgTUVNLXRvLURFVlxuIiwgX19mdW5j
X18sCisJCQl1Yy0+aWQpOworCisJCXJldCA9IHVkbWFfYWxsb2NfdHhfcmVzb3VyY2VzKHVjKTsK
KwkJaWYgKHJldCkgeworCQkJdWMtPnJlbW90ZV90aHJlYWRfaWQgPSAtMTsKKwkJCXJldHVybiBy
ZXQ7CisJCX0KKworCQl1Yy0+c3JjX3RocmVhZCA9IHVkLT5wc2lsX2Jhc2UgKyB1Yy0+dGNoYW4t
PmlkOworCQl1Yy0+ZHN0X3RocmVhZCA9IHVjLT5yZW1vdGVfdGhyZWFkX2lkOworCQl1Yy0+ZHN0
X3RocmVhZCB8PSBLM19QU0lMX0RTVF9USFJFQURfSURfT0ZGU0VUOworCisJCWlycV9yaW5nID0g
dWMtPnRjaGFuLT50Y19yaW5nOworCQlpcnFfdWRtYV9pZHggPSB1Yy0+dGNoYW4tPmlkOworCisJ
CXJldCA9IHVkbWFfdGlzY2lfdHhfY2hhbm5lbF9jb25maWcodWMpOworCQlicmVhazsKKwljYXNl
IERNQV9ERVZfVE9fTUVNOgorCQkvKiBTbGF2ZSB0cmFuc2ZlciBzeW5jaHJvbml6ZWQgLSBkZXYg
dG8gbWVtIChSWCkgdHJhc25mZXIgKi8KKwkJZGV2X2RiZyh1Yy0+dWQtPmRldiwgIiVzOiBjaGFu
JWQgYXMgREVWLXRvLU1FTVxuIiwgX19mdW5jX18sCisJCQl1Yy0+aWQpOworCisJCXJldCA9IHVk
bWFfYWxsb2NfcnhfcmVzb3VyY2VzKHVjKTsKKwkJaWYgKHJldCkgeworCQkJdWMtPnJlbW90ZV90
aHJlYWRfaWQgPSAtMTsKKwkJCXJldHVybiByZXQ7CisJCX0KKworCQl1Yy0+c3JjX3RocmVhZCA9
IHVjLT5yZW1vdGVfdGhyZWFkX2lkOworCQl1Yy0+ZHN0X3RocmVhZCA9ICh1ZC0+cHNpbF9iYXNl
ICsgdWMtPnJjaGFuLT5pZCkgfAorCQkJCSBLM19QU0lMX0RTVF9USFJFQURfSURfT0ZGU0VUOwor
CisJCWlycV9yaW5nID0gdWMtPnJjaGFuLT5yX3Jpbmc7CisJCWlycV91ZG1hX2lkeCA9IG1hdGNo
X2RhdGEtPnJjaGFuX29lc19vZmZzZXQgKyB1Yy0+cmNoYW4tPmlkOworCisJCXJldCA9IHVkbWFf
dGlzY2lfcnhfY2hhbm5lbF9jb25maWcodWMpOworCQlicmVhazsKKwlkZWZhdWx0OgorCQkvKiBD
YW4gbm90IGhhcHBlbiAqLworCQlkZXZfZXJyKHVjLT51ZC0+ZGV2LCAiJXM6IGNoYW4lZCBpbnZh
bGlkIGRpcmVjdGlvbiAoJXUpXG4iLAorCQkJX19mdW5jX18sIHVjLT5pZCwgdWMtPmRpcik7CisJ
CXJldHVybiAtRUlOVkFMOworCX0KKworCS8qIGNoZWNrIGlmIHRoZSBjaGFubmVsIGNvbmZpZ3Vy
YXRpb24gd2FzIHN1Y2Nlc3NmdWwgKi8KKwlpZiAocmV0KQorCQlnb3RvIGVycl9yZXNfZnJlZTsK
KworCWlmICh1ZG1hX2lzX2NoYW5fcnVubmluZyh1YykpIHsKKwkJZGV2X3dhcm4odWQtPmRldiwg
ImNoYW4lZDogaXMgcnVubmluZyFcbiIsIHVjLT5pZCk7CisJCXVkbWFfc3RvcCh1Yyk7CisJCWlm
ICh1ZG1hX2lzX2NoYW5fcnVubmluZyh1YykpIHsKKwkJCWRldl9lcnIodWQtPmRldiwgImNoYW4l
ZDogd29uJ3Qgc3RvcCFcbiIsIHVjLT5pZCk7CisJCQlnb3RvIGVycl9yZXNfZnJlZTsKKwkJfQor
CX0KKworCS8qIFBTSS1MIHBhaXJpbmcgKi8KKwlyZXQgPSBuYXZzc19wc2lsX3BhaXIodWQsIHVj
LT5zcmNfdGhyZWFkLCB1Yy0+ZHN0X3RocmVhZCk7CisJaWYgKHJldCkgeworCQlkZXZfZXJyKHVk
LT5kZXYsICJQU0ktTCBwYWlyaW5nIGZhaWxlZDogMHglMDR4IC0+IDB4JTA0eFxuIiwKKwkJCXVj
LT5zcmNfdGhyZWFkLCB1Yy0+ZHN0X3RocmVhZCk7CisJCWdvdG8gZXJyX3Jlc19mcmVlOworCX0K
KworCXVjLT5wc2lsX3BhaXJlZCA9IHRydWU7CisKKwl1Yy0+aXJxX251bV9yaW5nID0gazNfcmlu
Z2FjY19nZXRfcmluZ19pcnFfbnVtKGlycV9yaW5nKTsKKwlpZiAodWMtPmlycV9udW1fcmluZyA8
PSAwKSB7CisJCWRldl9lcnIodWQtPmRldiwgIkZhaWxlZCB0byBnZXQgcmluZyBpcnEgKGluZGV4
OiAldSlcbiIsCisJCQlrM19yaW5nYWNjX2dldF9yaW5nX2lkKGlycV9yaW5nKSk7CisJCXJldCA9
IC1FSU5WQUw7CisJCWdvdG8gZXJyX3BzaV9mcmVlOworCX0KKworCXJldCA9IHJlcXVlc3RfaXJx
KHVjLT5pcnFfbnVtX3JpbmcsIHVkbWFfcmluZ19pcnFfaGFuZGxlciwKKwkJCSAgSVJRRl9UUklH
R0VSX0hJR0gsIHVjLT5uYW1lLCB1Yyk7CisJaWYgKHJldCkgeworCQlkZXZfZXJyKHVkLT5kZXYs
ICJjaGFuJWQ6IHJpbmcgaXJxIHJlcXVlc3QgZmFpbGVkXG4iLCB1Yy0+aWQpOworCQlnb3RvIGVy
cl9pcnFfZnJlZTsKKwl9CisKKwkvKiBFdmVudCBmcm9tIFVETUEgKFRSIGV2ZW50cykgb25seSBu
ZWVkZWQgZm9yIHNsYXZlIFRSIG1vZGUgY2hhbm5lbHMgKi8KKwlpZiAoaXNfc2xhdmVfZGlyZWN0
aW9uKHVjLT5kaXIpICYmICF1Yy0+cGt0X21vZGUpIHsKKwkJdWMtPmlycV9udW1fdWRtYSA9IHRp
X3NjaV9pbnRhX21zaV9nZXRfdmlycSh1ZC0+ZGV2LAorCQkJCQkJCSAgICBpcnFfdWRtYV9pZHgp
OworCQlpZiAodWMtPmlycV9udW1fdWRtYSA8PSAwKSB7CisJCQlkZXZfZXJyKHVkLT5kZXYsICJG
YWlsZWQgdG8gZ2V0IHVkbWEgaXJxIChpbmRleDogJXUpXG4iLAorCQkJCWlycV91ZG1hX2lkeCk7
CisJCQlmcmVlX2lycSh1Yy0+aXJxX251bV9yaW5nLCB1Yyk7CisJCQlyZXQgPSAtRUlOVkFMOwor
CQkJZ290byBlcnJfaXJxX2ZyZWU7CisJCX0KKworCQlyZXQgPSByZXF1ZXN0X2lycSh1Yy0+aXJx
X251bV91ZG1hLCB1ZG1hX3VkbWFfaXJxX2hhbmRsZXIsIDAsCisJCQkJICB1Yy0+bmFtZSwgdWMp
OworCQlpZiAocmV0KSB7CisJCQlkZXZfZXJyKHVkLT5kZXYsICJjaGFuJWQ6IFVETUEgaXJxIHJl
cXVlc3QgZmFpbGVkXG4iLAorCQkJCXVjLT5pZCk7CisJCQlmcmVlX2lycSh1Yy0+aXJxX251bV9y
aW5nLCB1Yyk7CisJCQlnb3RvIGVycl9pcnFfZnJlZTsKKwkJfQorCX0gZWxzZSB7CisJCXVjLT5p
cnFfbnVtX3VkbWEgPSAwOworCX0KKworCXVkbWFfcmVzZXRfcmluZ3ModWMpOworCisJcmV0dXJu
IDA7CisKK2Vycl9pcnFfZnJlZToKKwl1Yy0+aXJxX251bV9yaW5nID0gMDsKKwl1Yy0+aXJxX251
bV91ZG1hID0gMDsKK2Vycl9wc2lfZnJlZToKKwluYXZzc19wc2lsX3VucGFpcih1ZCwgdWMtPnNy
Y190aHJlYWQsIHVjLT5kc3RfdGhyZWFkKTsKKwl1Yy0+cHNpbF9wYWlyZWQgPSBmYWxzZTsKK2Vy
cl9yZXNfZnJlZToKKwl1ZG1hX2ZyZWVfdHhfcmVzb3VyY2VzKHVjKTsKKwl1ZG1hX2ZyZWVfcnhf
cmVzb3VyY2VzKHVjKTsKKworCXVkbWFfcmVzZXRfdWNoYW4odWMpOworCisJaWYgKHVjLT51c2Vf
ZG1hX3Bvb2wpIHsKKwkJZG1hX3Bvb2xfZGVzdHJveSh1Yy0+aGRlc2NfcG9vbCk7CisJCXVjLT51
c2VfZG1hX3Bvb2wgPSBmYWxzZTsKKwl9CisKKwlyZXR1cm4gcmV0OworfQorCitzdGF0aWMgdm9p
ZCB1ZG1hX2ZyZWVfY2hhbl9yZXNvdXJjZXMoc3RydWN0IGRtYV9jaGFuICpjaGFuKQoreworCXN0
cnVjdCB1ZG1hX2NoYW4gKnVjID0gdG9fdWRtYV9jaGFuKGNoYW4pOworCXN0cnVjdCB1ZG1hX2Rl
diAqdWQgPSB0b191ZG1hX2RldihjaGFuLT5kZXZpY2UpOworCisJdWRtYV90ZXJtaW5hdGVfYWxs
KGNoYW4pOworCisJaWYgKHVjLT5pcnFfbnVtX3JpbmcgPiAwKSB7CisJCWZyZWVfaXJxKHVjLT5p
cnFfbnVtX3JpbmcsIHVjKTsKKworCQl1Yy0+aXJxX251bV9yaW5nID0gMDsKKwl9CisJaWYgKHVj
LT5pcnFfbnVtX3VkbWEgPiAwKSB7CisJCWZyZWVfaXJxKHVjLT5pcnFfbnVtX3VkbWEsIHVjKTsK
KworCQl1Yy0+aXJxX251bV91ZG1hID0gMDsKKwl9CisKKwkvKiBSZWxlYXNlIFBTSS1MIHBhaXJp
bmcgKi8KKwlpZiAodWMtPnBzaWxfcGFpcmVkKSB7CisJCW5hdnNzX3BzaWxfdW5wYWlyKHVkLCB1
Yy0+c3JjX3RocmVhZCwgdWMtPmRzdF90aHJlYWQpOworCQl1Yy0+cHNpbF9wYWlyZWQgPSBmYWxz
ZTsKKwl9CisKKwl2Y2hhbl9mcmVlX2NoYW5fcmVzb3VyY2VzKCZ1Yy0+dmMpOworCXRhc2tsZXRf
a2lsbCgmdWMtPnZjLnRhc2spOworCisJdWRtYV9mcmVlX3R4X3Jlc291cmNlcyh1Yyk7CisJdWRt
YV9mcmVlX3J4X3Jlc291cmNlcyh1Yyk7CisJdWRtYV9yZXNldF91Y2hhbih1Yyk7CisKKwlpZiAo
dWMtPnVzZV9kbWFfcG9vbCkgeworCQlkbWFfcG9vbF9kZXN0cm95KHVjLT5oZGVzY19wb29sKTsK
KwkJdWMtPnVzZV9kbWFfcG9vbCA9IGZhbHNlOworCX0KK30KKwogc3RhdGljIHN0cnVjdCBwbGF0
Zm9ybV9kcml2ZXIgdWRtYV9kcml2ZXI7CiAKIHN0YXRpYyBib29sIHVkbWFfZG1hX2ZpbHRlcl9m
bihzdHJ1Y3QgZG1hX2NoYW4gKmNoYW4sIHZvaWQgKnBhcmFtKQotLSAKUGV0ZXIKClRleGFzIElu
c3RydW1lbnRzIEZpbmxhbmQgT3ksIFBvcmtrYWxhbmthdHUgMjIsIDAwMTgwIEhlbHNpbmtpLgpZ
LXR1bm51cy9CdXNpbmVzcyBJRDogMDYxNTUyMS00LiBLb3RpcGFpa2thL0RvbWljaWxlOiBIZWxz
aW5raQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
