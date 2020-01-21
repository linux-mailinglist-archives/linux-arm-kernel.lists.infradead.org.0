Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7872A143AA3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 11:15:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aSG8A3XC7k0pImFj510UOGZCKpYIMNB4KTdd3PoS95o=; b=jeMuTaf2oX9oIO
	c+UX5hKfGTX0sXVJ2snrSh0Rh/nTvO/TARDe+stOU27ccGDKHVGECC913tkDRrAwFmgb8yRENqYCe
	pxu8QHb3k69MyqdLw5XRbgnSAyLC+2yLd4p+tI1ESBHLiSnIeVSpcm/PFtuN2Pn2qblKIjWI8i3kb
	ywwlykYWk2fWYWwkVeRiHuDL/Dm75dKBBjR/+rkvS41sKxt3zGWDXO4sSI1GmZfmdzY2Xy/ONkbIv
	MWFNqf+/7KGs0ukxx+4DXyUo6ONm8jtlnC1kdrCfe7MZA+Ju1MNnO2ZMclQF9P0mGTH2Ovil6cSZk
	/Znh8jyy9k8lgvUb0CkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itqZL-0007Jj-PN; Tue, 21 Jan 2020 10:15:35 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itqYT-0005bK-Nl
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 10:14:46 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00LA7oZc022161; Tue, 21 Jan 2020 11:14:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : mime-version : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=k5qJRWoSgLmpSjylS2Utl+lUx5HEle5o+YTZ31pLcBY=;
 b=wduEk0LvIblC2IcFcHYwE7nIdG53pbfzZg6CUixJoMHvLCga8LLYZHhVlTBWnnQnTYri
 KzCSJ4cKGDzV5Y+4Dvw4LniveJQjHSWRtvMyfdLC0JoXYi5nAkE3sdMaRlKF3dmc34Rd
 EVjTFgmnhvIw1pcfNmh1cIW0OQf/ApBZTe61MP6rKG7R1TUzMXo+SnxvHwcJ0r5DR2Tk
 1UZJo8+zw8HQNlAenjGRnyb+EnHKQdePG0DEXNUSTzIEFtZsW4OYOdLtKcUrZ+Z00RRR
 pxqwNi11kGkQEgNca1CGmj6BXh0+AB5lRCRGr3MfC6k75GAyXTcuJqGwKyAvZmaqcfCh wQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xkrc4x3h0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 21 Jan 2020 11:14:36 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 1431510002A;
 Tue, 21 Jan 2020 11:14:36 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 04B062B1874;
 Tue, 21 Jan 2020 11:14:36 +0100 (CET)
Received: from localhost (10.75.127.44) by SFHDAG6NODE1.st.com (10.75.127.16)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Tue, 21 Jan 2020 11:14:35 +0100
From: Yannick Fertre <yannick.fertre@st.com>
To: Yannick Fertre <yannick.fertre@st.com>, Philippe Cornu
 <philippe.cornu@st.com>, Benjamin Gaignard <benjamin.gaignard@st.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 <dri-devel@lists.freedesktop.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH] drm/stm: ltdc: check number of endpoints
Date: Tue, 21 Jan 2020 11:14:33 +0100
Message-ID: <1579601673-7111-1-git-send-email-yannick.fertre@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG7NODE3.st.com (10.75.127.21) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-21_02:2020-01-21,
 2020-01-21 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_021442_118744_11C97CE5 
X-CRM114-Status: GOOD (  16.96  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

TnVtYmVyIG9mIGVuZHBvaW50cyBjb3VsZCBleGNlZWQgdGhlIGZpeCB2YWx1ZSBNQVhfRU5EUE9J
TlRTKDIpLgpJbnN0ZWFkIG9mIGluY3JlYXNlIHNpbXBseSB0aGlzIHZhbHVlLCB0aGUgbnVtYmVy
IG9mIGVuZHBvaW50CmNvdWxkIGJlIHJlYWQgZnJvbSBkZXZpY2UgdHJlZS4gTG9hZCBzZXF1ZW5j
ZSBoYXMgYmVlbiBhIGxpdHRsZQpyZXdvcmsgdG8gdGFrZSBjYXJlIG9mIHNldmVyYWwgcGFuZWwg
b3IgYnJpZGdlIHdoaWNoIGNhbiBiZQpjb25uZWN0ZWQvZGlzY29ubmVjdGVkIG9yIGVuYWJsZS9k
aXNhYmxlLgoKU2lnbmVkLW9mZi1ieTogWWFubmljayBGZXJ0csOpIDx5YW5uaWNrLmZlcnRyZUBz
dC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL3N0bS9sdGRjLmMgfCAxMDQgKysrKysrKysrKysr
KysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNTIgaW5z
ZXJ0aW9ucygrKSwgNTIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L3N0bS9sdGRjLmMgYi9kcml2ZXJzL2dwdS9kcm0vc3RtL2x0ZGMuYwppbmRleCBjMjgxNWU4Li5k
YmE4ZTdmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vc3RtL2x0ZGMuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vc3RtL2x0ZGMuYwpAQCAtNDIsOCArNDIsNiBAQAogCiAjZGVmaW5lIE1BWF9J
UlEgNAogCi0jZGVmaW5lIE1BWF9FTkRQT0lOVFMgMgotCiAjZGVmaW5lIEhXVkVSXzEwMjAwIDB4
MDEwMjAwCiAjZGVmaW5lIEhXVkVSXzEwMzAwIDB4MDEwMzAwCiAjZGVmaW5lIEhXVkVSXzIwMTAx
IDB4MDIwMTAxCkBAIC0xMTkwLDM2ICsxMTg4LDIwIEBAIGludCBsdGRjX2xvYWQoc3RydWN0IGRy
bV9kZXZpY2UgKmRkZXYpCiAJc3RydWN0IGx0ZGNfZGV2aWNlICpsZGV2ID0gZGRldi0+ZGV2X3By
aXZhdGU7CiAJc3RydWN0IGRldmljZSAqZGV2ID0gZGRldi0+ZGV2OwogCXN0cnVjdCBkZXZpY2Vf
bm9kZSAqbnAgPSBkZXYtPm9mX25vZGU7Ci0Jc3RydWN0IGRybV9icmlkZ2UgKmJyaWRnZVtNQVhf
RU5EUE9JTlRTXSA9IHtOVUxMfTsKLQlzdHJ1Y3QgZHJtX3BhbmVsICpwYW5lbFtNQVhfRU5EUE9J
TlRTXSA9IHtOVUxMfTsKKwlzdHJ1Y3QgZHJtX2JyaWRnZSAqYnJpZGdlOworCXN0cnVjdCBkcm1f
cGFuZWwgKnBhbmVsOwogCXN0cnVjdCBkcm1fY3J0YyAqY3J0YzsKIAlzdHJ1Y3QgcmVzZXRfY29u
dHJvbCAqcnN0YzsKIAlzdHJ1Y3QgcmVzb3VyY2UgKnJlczsKLQlpbnQgaXJxLCByZXQsIGksIGVu
ZHBvaW50X25vdF9yZWFkeSA9IC1FTk9ERVY7CisJaW50IGlycSwgaSwgbmJfZW5kcG9pbnRzOwor
CWludCByZXQgPSAtRU5PREVWOwogCiAJRFJNX0RFQlVHX0RSSVZFUigiXG4iKTsKIAotCS8qIEdl
dCBlbmRwb2ludHMgaWYgYW55ICovCi0JZm9yIChpID0gMDsgaSA8IE1BWF9FTkRQT0lOVFM7IGkr
KykgewotCQlyZXQgPSBkcm1fb2ZfZmluZF9wYW5lbF9vcl9icmlkZ2UobnAsIDAsIGksICZwYW5l
bFtpXSwKLQkJCQkJCSAgJmJyaWRnZVtpXSk7Ci0KLQkJLyoKLQkJICogSWYgYXQgbGVhc3Qgb25l
IGVuZHBvaW50IGlzIC1FUFJPQkVfREVGRVIsIGRlZmVyIHByb2JpbmcsCi0JCSAqIGVsc2UgaWYg
YXQgbGVhc3Qgb25lIGVuZHBvaW50IGlzIHJlYWR5LCBjb250aW51ZSBwcm9iaW5nLgotCQkgKi8K
LQkJaWYgKHJldCA9PSAtRVBST0JFX0RFRkVSKQotCQkJcmV0dXJuIHJldDsKLQkJZWxzZSBpZiAo
IXJldCkKLQkJCWVuZHBvaW50X25vdF9yZWFkeSA9IDA7Ci0JfQotCi0JaWYgKGVuZHBvaW50X25v
dF9yZWFkeSkKLQkJcmV0dXJuIGVuZHBvaW50X25vdF9yZWFkeTsKLQotCXJzdGMgPSBkZXZtX3Jl
c2V0X2NvbnRyb2xfZ2V0X2V4Y2x1c2l2ZShkZXYsIE5VTEwpOwotCi0JbXV0ZXhfaW5pdCgmbGRl
di0+ZXJyX2xvY2spOworCS8qIEdldCBudW1iZXIgb2YgZW5kcG9pbnRzICovCisJbmJfZW5kcG9p
bnRzID0gb2ZfZ3JhcGhfZ2V0X2VuZHBvaW50X2NvdW50KG5wKTsKKwlpZiAoIW5iX2VuZHBvaW50
cykKKwkJcmV0dXJuIC1FTk9ERVY7CiAKIAlsZGV2LT5waXhlbF9jbGsgPSBkZXZtX2Nsa19nZXQo
ZGV2LCAibGNkIik7CiAJaWYgKElTX0VSUihsZGV2LT5waXhlbF9jbGspKSB7CkBAIC0xMjMzLDYg
KzEyMTUsNDMgQEAgaW50IGx0ZGNfbG9hZChzdHJ1Y3QgZHJtX2RldmljZSAqZGRldikKIAkJcmV0
dXJuIC1FTk9ERVY7CiAJfQogCisJLyogR2V0IGVuZHBvaW50cyBpZiBhbnkgKi8KKwlmb3IgKGkg
PSAwOyBpIDwgbmJfZW5kcG9pbnRzOyBpKyspIHsKKwkJcmV0ID0gZHJtX29mX2ZpbmRfcGFuZWxf
b3JfYnJpZGdlKG5wLCAwLCBpLCAmcGFuZWwsICZicmlkZ2UpOworCisJCS8qCisJCSAqIElmIGF0
IGxlYXN0IG9uZSBlbmRwb2ludCBpcyAtRU5PREVWLCBjb250aW51ZSBwcm9iaW5nLAorCQkgKiBl
bHNlIGlmIGF0IGxlYXN0IG9uZSBlbmRwb2ludCByZXR1cm5lZCBhbiBlcnJvcgorCQkgKiAoaWUg
LUVQUk9CRV9ERUZFUikgdGhlbiBzdG9wIHByb2JpbmcuCisJCSAqLworCQlpZiAocmV0ID09IC1F
Tk9ERVYpCisJCQljb250aW51ZTsKKwkJZWxzZSBpZiAocmV0KQorCQkJZ290byBlcnI7CisKKwkJ
aWYgKHBhbmVsKSB7CisJCQlicmlkZ2UgPSBkcm1fcGFuZWxfYnJpZGdlX2FkZF90eXBlZChwYW5l
bCwKKwkJCQkJCQkgICAgRFJNX01PREVfQ09OTkVDVE9SX0RQSSk7CisJCQlpZiAoSVNfRVJSKGJy
aWRnZSkpIHsKKwkJCQlEUk1fRVJST1IoInBhbmVsLWJyaWRnZSBlbmRwb2ludCAlZFxuIiwgaSk7
CisJCQkJcmV0ID0gUFRSX0VSUihicmlkZ2UpOworCQkJCWdvdG8gZXJyOworCQkJfQorCQl9CisK
KwkJaWYgKGJyaWRnZSkgeworCQkJcmV0ID0gbHRkY19lbmNvZGVyX2luaXQoZGRldiwgYnJpZGdl
KTsKKwkJCWlmIChyZXQpIHsKKwkJCQlEUk1fRVJST1IoImluaXQgZW5jb2RlciBlbmRwb2ludCAl
ZFxuIiwgaSk7CisJCQkJZ290byBlcnI7CisJCQl9CisJCX0KKwl9CisKKwlyc3RjID0gZGV2bV9y
ZXNldF9jb250cm9sX2dldF9leGNsdXNpdmUoZGV2LCBOVUxMKTsKKworCW11dGV4X2luaXQoJmxk
ZXYtPmVycl9sb2NrKTsKKwogCWlmICghSVNfRVJSKHJzdGMpKSB7CiAJCXJlc2V0X2NvbnRyb2xf
YXNzZXJ0KHJzdGMpOwogCQl1c2xlZXBfcmFuZ2UoMTAsIDIwKTsKQEAgLTEyNjgsNyArMTI4Nyw2
IEBAIGludCBsdGRjX2xvYWQoc3RydWN0IGRybV9kZXZpY2UgKmRkZXYpCiAJCX0KIAl9CiAKLQog
CXJldCA9IGx0ZGNfZ2V0X2NhcHMoZGRldik7CiAJaWYgKHJldCkgewogCQlEUk1fRVJST1IoImhh
cmR3YXJlIGlkZW50aWZpZXIgKDB4JTA4eCkgbm90IHN1cHBvcnRlZCFcbiIsCkBAIC0xMjc4LDI3
ICsxMjk2LDYgQEAgaW50IGx0ZGNfbG9hZChzdHJ1Y3QgZHJtX2RldmljZSAqZGRldikKIAogCURS
TV9ERUJVR19EUklWRVIoImx0ZGMgaHcgdmVyc2lvbiAweCUwOHhcbiIsIGxkZXYtPmNhcHMuaHdf
dmVyc2lvbik7CiAKLQkvKiBBZGQgZW5kcG9pbnRzIHBhbmVscyBvciBicmlkZ2VzIGlmIGFueSAq
LwotCWZvciAoaSA9IDA7IGkgPCBNQVhfRU5EUE9JTlRTOyBpKyspIHsKLQkJaWYgKHBhbmVsW2ld
KSB7Ci0JCQlicmlkZ2VbaV0gPSBkcm1fcGFuZWxfYnJpZGdlX2FkZF90eXBlZChwYW5lbFtpXSwK
LQkJCQkJCQkgICAgICAgRFJNX01PREVfQ09OTkVDVE9SX0RQSSk7Ci0JCQlpZiAoSVNfRVJSKGJy
aWRnZVtpXSkpIHsKLQkJCQlEUk1fRVJST1IoInBhbmVsLWJyaWRnZSBlbmRwb2ludCAlZFxuIiwg
aSk7Ci0JCQkJcmV0ID0gUFRSX0VSUihicmlkZ2VbaV0pOwotCQkJCWdvdG8gZXJyOwotCQkJfQot
CQl9Ci0KLQkJaWYgKGJyaWRnZVtpXSkgewotCQkJcmV0ID0gbHRkY19lbmNvZGVyX2luaXQoZGRl
diwgYnJpZGdlW2ldKTsKLQkJCWlmIChyZXQpIHsKLQkJCQlEUk1fRVJST1IoImluaXQgZW5jb2Rl
ciBlbmRwb2ludCAlZFxuIiwgaSk7Ci0JCQkJZ290byBlcnI7Ci0JCQl9Ci0JCX0KLQl9Ci0KIAlj
cnRjID0gZGV2bV9remFsbG9jKGRldiwgc2l6ZW9mKCpjcnRjKSwgR0ZQX0tFUk5FTCk7CiAJaWYg
KCFjcnRjKSB7CiAJCURSTV9FUlJPUigiRmFpbGVkIHRvIGFsbG9jYXRlIGNydGNcbiIpOwpAQCAt
MTMzMSw4ICsxMzI4LDggQEAgaW50IGx0ZGNfbG9hZChzdHJ1Y3QgZHJtX2RldmljZSAqZGRldikK
IAogCXJldHVybiAwOwogZXJyOgotCWZvciAoaSA9IDA7IGkgPCBNQVhfRU5EUE9JTlRTOyBpKysp
Ci0JCWRybV9wYW5lbF9icmlkZ2VfcmVtb3ZlKGJyaWRnZVtpXSk7CisJZm9yIChpID0gMDsgaSA8
IG5iX2VuZHBvaW50czsgaSsrKQorCQlkcm1fb2ZfcGFuZWxfYnJpZGdlX3JlbW92ZShkZGV2LT5k
ZXYtPm9mX25vZGUsIDAsIGkpOwogCiAJY2xrX2Rpc2FibGVfdW5wcmVwYXJlKGxkZXYtPnBpeGVs
X2Nsayk7CiAKQEAgLTEzNDEsMTEgKzEzMzgsMTQgQEAgaW50IGx0ZGNfbG9hZChzdHJ1Y3QgZHJt
X2RldmljZSAqZGRldikKIAogdm9pZCBsdGRjX3VubG9hZChzdHJ1Y3QgZHJtX2RldmljZSAqZGRl
dikKIHsKLQlpbnQgaTsKKwlzdHJ1Y3QgZGV2aWNlICpkZXYgPSBkZGV2LT5kZXY7CisJaW50IG5i
X2VuZHBvaW50cywgaTsKIAogCURSTV9ERUJVR19EUklWRVIoIlxuIik7CiAKLQlmb3IgKGkgPSAw
OyBpIDwgTUFYX0VORFBPSU5UUzsgaSsrKQorCW5iX2VuZHBvaW50cyA9IG9mX2dyYXBoX2dldF9l
bmRwb2ludF9jb3VudChkZXYtPm9mX25vZGUpOworCisJZm9yIChpID0gMDsgaSA8IG5iX2VuZHBv
aW50czsgaSsrKQogCQlkcm1fb2ZfcGFuZWxfYnJpZGdlX3JlbW92ZShkZGV2LT5kZXYtPm9mX25v
ZGUsIDAsIGkpOwogCiAJcG1fcnVudGltZV9kaXNhYmxlKGRkZXYtPmRldik7Ci0tIAoyLjcuNAoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
