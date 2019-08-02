Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A69927FC84
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 16:48:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9RcB5moBXBCOQNbPPPVy/0YHinHfz0MkXywX4afY3FA=; b=MDA3EicYThOl6n
	J0W9lAz/oCbKVbE1IVV2HFnAwy55IDdVi5Zk2RDyOraEioYJ3F+yOm4rBj4vRXq0DkWjxq1RO6ae9
	adbeKPJl3SYofoxvpjjbtESCiyERmG4t8rveraY7HhEvr7qe7si4DXC8/vhq3P7oR2gtIzHsJJkec
	7eVcNRPMOVqXZP82QYfW3lq97gzBlsetzSj0n+jkXXFX2uMgD7UppCzajwJmi0jiRGM8PkQgswMNe
	2h3LN8ls+oP3Eosf4uyBqWpb6W+RciRogvDGvy+7i7m8eDiK9eFbDkVfNT6sBd/iLp2fdiBZ6yyci
	wb0xVQcfOc00GWoABqEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htYqh-00013d-Ne; Fri, 02 Aug 2019 14:48:03 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htYqb-00013G-95
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 14:47:59 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x72EaJNq005392; Fri, 2 Aug 2019 16:47:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : mime-version : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=N8rgZWIZfOw81q7QuM18Tttp0ZdrCfm1/QUNIZC/5bM=;
 b=KqUvXDckPZyMTnjcTF4guAysii2fBpfThquE/WOr+K6iec9ZCasTAjCaVoHBc694o/nA
 IocwSQWQ9NiMwq5QF2oY40wO4jJZ7mbzbLYAWz/44U3O1kyYXaYCRfMWN/+Gnmyhqq3h
 koYoCPpSZSAcBPN1XfGoiyVTdRSW3RczZnlNDgfimraWV9IbHNMpWHyQ32ETRf7TjLOz
 Nv011AIcA7qb3HtK6DQ5Dni+YbVRPbP93ZxJsI+XBR/bhohdv0MpgMB5hQVAIKNWFGDT
 Icw0ZbXBFx2Vh4HxzOnXGWvBS9k1cMl8n4lpWWsZLtx0nZq2v20lut9fEJfjyGBPoTE+ 6A== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2u3vd07vqr-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 02 Aug 2019 16:47:50 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id EA83231;
 Fri,  2 Aug 2019 14:47:49 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas22.st.com [10.75.90.92])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id D68092C54E2;
 Fri,  2 Aug 2019 16:47:49 +0200 (CEST)
Received: from SAFEX1HUBCAS23.st.com (10.75.90.47) by Safex1hubcas22.st.com
 (10.75.90.92) with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 2 Aug 2019
 16:47:49 +0200
Received: from localhost (10.201.23.97) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 2 Aug 2019 16:47:49
 +0200
From: =?UTF-8?q?Yannick=20Fertr=C3=A9?= <yannick.fertre@st.com>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>,
 Benjamin Gaignard <benjamin.gaignard@st.com>,
 Yannick Fertre <yannick.fertre@st.com>, Philippe Cornu
 <philippe.cornu@st.com>, Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: [PATCH] drm/stm: ltdc: add pinctrl for DPI encoder mode
Date: Fri, 2 Aug 2019 16:47:42 +0200
Message-ID: <1564757262-6166-1-git-send-email-yannick.fertre@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.201.23.97]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-02_06:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_074757_699911_4445D529 
X-CRM114-Status: GOOD (  14.92  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIGltcGxlbWVudGF0aW9uIG9mIGZ1bmN0aW9ucyBlbmNvZGVyX2VuYWJsZSBhbmQgZW5jb2Rl
cl9kaXNhYmxlCm1ha2UgcG9zc2libGUgdG8gY29udHJvbCB0aGUgcGluY3RybCBhY2NvcmRpbmcg
dG8gdGhlIGVuY29kZXIgdHlwZS4KVGhlIHBpbmN0cmwgbXVzdCBiZSBhY3RpdmF0ZWQgb25seSBp
ZiB0aGUgZW5jb2RlciB0eXBlIGlzIERQSS4KVGhpcyBoZWxwcyB0byBtb3ZlIHRoZSBEUEktcmVs
YXRlZCBwaW5jdHJsIGNvbmZpZ3VyYXRpb24gZnJvbQphbGwgdGhlIHBhbmVsIG9yIGJyaWRnZSB0
byB0aGUgTFREQyBkdCBub2RlLgoKU2lnbmVkLW9mZi1ieTogWWFubmljayBGZXJ0csOpIDx5YW5u
aWNrLmZlcnRyZUBzdC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL3N0bS9sdGRjLmMgfCAzNSAr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDM1IGlu
c2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vc3RtL2x0ZGMuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9zdG0vbHRkYy5jCmluZGV4IDNhYjRmYmYuLjFjNGZkZTAgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9zdG0vbHRkYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9zdG0v
bHRkYy5jCkBAIC0xNSw2ICsxNSw3IEBACiAjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+CiAjaW5j
bHVkZSA8bGludXgvb2ZfYWRkcmVzcy5oPgogI2luY2x1ZGUgPGxpbnV4L29mX2dyYXBoLmg+Cisj
aW5jbHVkZSA8bGludXgvcGluY3RybC9jb25zdW1lci5oPgogI2luY2x1ZGUgPGxpbnV4L3BsYXRm
b3JtX2RldmljZS5oPgogI2luY2x1ZGUgPGxpbnV4L3BtX3J1bnRpbWUuaD4KICNpbmNsdWRlIDxs
aW51eC9yZXNldC5oPgpAQCAtMTA0MCw2ICsxMDQxLDM2IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
ZHJtX2VuY29kZXJfZnVuY3MgbHRkY19lbmNvZGVyX2Z1bmNzID0gewogCS5kZXN0cm95ID0gZHJt
X2VuY29kZXJfY2xlYW51cCwKIH07CiAKK3N0YXRpYyB2b2lkIGx0ZGNfZW5jb2Rlcl9kaXNhYmxl
KHN0cnVjdCBkcm1fZW5jb2RlciAqZW5jb2RlcikKK3sKKwlzdHJ1Y3QgZHJtX2RldmljZSAqZGRl
diA9IGVuY29kZXItPmRldjsKKworCURSTV9ERUJVR19EUklWRVIoIlxuIik7CisKKwkvKiBTZXQg
dG8gc2xlZXAgc3RhdGUgdGhlIHBpbmN0cmwgd2hhdGV2ZXIgdHlwZSBvZiBlbmNvZGVyICovCisJ
cGluY3RybF9wbV9zZWxlY3Rfc2xlZXBfc3RhdGUoZGRldi0+ZGV2KTsKK30KKworc3RhdGljIHZv
aWQgbHRkY19lbmNvZGVyX2VuYWJsZShzdHJ1Y3QgZHJtX2VuY29kZXIgKmVuY29kZXIpCit7CisJ
c3RydWN0IGRybV9kZXZpY2UgKmRkZXYgPSBlbmNvZGVyLT5kZXY7CisKKwlEUk1fREVCVUdfRFJJ
VkVSKCJcbiIpOworCisJLyoKKwkgKiBTZXQgdG8gZGVmYXVsdCBzdGF0ZSB0aGUgcGluY3RybCBv
bmx5IHdpdGggRFBJIHR5cGUuCisJICogT3RoZXJzIHR5cGVzIGxpa2UgRFNJLCBkb24ndCBuZWVk
IHBpbmN0cmwgZHVlIHRvCisJICogaW50ZXJuYWwgYnJpZGdlICh0aGUgc2lnbmFscyBkbyBub3Qg
Y29tZSBvdXQgb2YgdGhlIGNoaXBzZXQpLgorCSAqLworCWlmIChlbmNvZGVyLT5lbmNvZGVyX3R5
cGUgPT0gRFJNX01PREVfRU5DT0RFUl9EUEkpCisJCXBpbmN0cmxfcG1fc2VsZWN0X2RlZmF1bHRf
c3RhdGUoZGRldi0+ZGV2KTsKK30KKworc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fZW5jb2Rlcl9o
ZWxwZXJfZnVuY3MgbHRkY19lbmNvZGVyX2hlbHBlcl9mdW5jcyA9IHsKKwkuZGlzYWJsZSA9IGx0
ZGNfZW5jb2Rlcl9kaXNhYmxlLAorCS5lbmFibGUgPSBsdGRjX2VuY29kZXJfZW5hYmxlLAorfTsK
Kwogc3RhdGljIGludCBsdGRjX2VuY29kZXJfaW5pdChzdHJ1Y3QgZHJtX2RldmljZSAqZGRldiwg
c3RydWN0IGRybV9icmlkZ2UgKmJyaWRnZSkKIHsKIAlzdHJ1Y3QgZHJtX2VuY29kZXIgKmVuY29k
ZXI7CkBAIC0xMDU1LDYgKzEwODYsOCBAQCBzdGF0aWMgaW50IGx0ZGNfZW5jb2Rlcl9pbml0KHN0
cnVjdCBkcm1fZGV2aWNlICpkZGV2LCBzdHJ1Y3QgZHJtX2JyaWRnZSAqYnJpZGdlKQogCWRybV9l
bmNvZGVyX2luaXQoZGRldiwgZW5jb2RlciwgJmx0ZGNfZW5jb2Rlcl9mdW5jcywKIAkJCSBEUk1f
TU9ERV9FTkNPREVSX0RQSSwgTlVMTCk7CiAKKwlkcm1fZW5jb2Rlcl9oZWxwZXJfYWRkKGVuY29k
ZXIsICZsdGRjX2VuY29kZXJfaGVscGVyX2Z1bmNzKTsKKwogCXJldCA9IGRybV9icmlkZ2VfYXR0
YWNoKGVuY29kZXIsIGJyaWRnZSwgTlVMTCk7CiAJaWYgKHJldCkgewogCQlkcm1fZW5jb2Rlcl9j
bGVhbnVwKGVuY29kZXIpOwpAQCAtMTI4MCw2ICsxMzEzLDggQEAgaW50IGx0ZGNfbG9hZChzdHJ1
Y3QgZHJtX2RldmljZSAqZGRldikKIAogCWNsa19kaXNhYmxlX3VucHJlcGFyZShsZGV2LT5waXhl
bF9jbGspOwogCisJcGluY3RybF9wbV9zZWxlY3Rfc2xlZXBfc3RhdGUoZGRldi0+ZGV2KTsKKwog
CXBtX3J1bnRpbWVfZW5hYmxlKGRkZXYtPmRldik7CiAKIAlyZXR1cm4gMDsKLS0gCjIuNy40CgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
