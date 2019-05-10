Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3880C19F1C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 16:25:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CFCtHE6nF6j6sU8++SI7hAZeoXh6kuNQyKUjGxwWjxQ=; b=FqRlGvX8mWUhYJ
	sR6pr8QbMHhfutyuxfXyoZ5X/YMQH/RbHqBGx3lkAQEL2QIn+h4mNaHdUms8R3CUncegSuKt5Vg9H
	4TxiSvxST0j/KuRDvH3oBaE1Op2J+TWMRJTXBNrnro6G3IGTimerPSz2m6QZy6MqfGlI3Jz/KJuL+
	w6rPulSN8MG6dl3ahJTYfcsR767Qoz/fRdS1AiuAkpVJ0JyIwkMSsE3ktpEujE3Fg1IJ0W56+CjWX
	tLymqyTxMxnMtLerRUZnbFjvv/Z0EDgH/5IJ/wfWhkDiIlMwyERmHpuzj/U9mAU4kcOD0X7cjSw3v
	71nu3+FnnCinASOhV6sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP6T6-00023M-9C; Fri, 10 May 2019 14:25:48 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP6Sy-00022A-7O
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 14:25:41 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4AE1s09030708; Fri, 10 May 2019 16:20:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : in-reply-to : references : mime-version : content-type
 : content-transfer-encoding; s=STMicroelectronics;
 bh=98w/OussyxuOrcLWSMqRtFhnLM+xTLnhKVGbTHyMH+g=;
 b=1iDvh+RspI3I9R7djaQ6BAUvhMdBdC/10L5C4kP699I2iYf98qBnOS8hsWQp8VD8nTvS
 h9CdTHpg/QIxJG0IRtNr+tMWs+tk61GoNmus7in9fKUTQwFboYHuDXBj/mgqsySIMMDf
 fQvjFItf2PHJCmjiPAfxfEjDxdFMuZv4z+nUeuK4MzKwIwu1H/PluAb58ByvJIaiTWYL
 Kqj5xlCaADMMKtztF+qwhwbzLBf7I7JSRnOAZx0KK0sFW3YQcberQ9ck2QvWmOQtq7t6
 idnAu6e7qco9PGJASJhH5DiK82my9XTgqlRNPwn9SebDspe1KoZDevMPxjRIpuIztH7T qQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2sc9s4jwnw-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 10 May 2019 16:20:33 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id AB84E31;
 Fri, 10 May 2019 14:20:31 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 7E2C5113A;
 Fri, 10 May 2019 14:20:31 +0000 (GMT)
Received: from SAFEX1HUBCAS23.st.com (10.75.90.47) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.361.1; Fri, 10 May
 2019 16:20:31 +0200
Received: from localhost (10.201.23.97) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 10 May 2019 16:20:30
 +0200
From: =?UTF-8?q?Yannick=20Fertr=C3=A9?= <yannick.fertre@st.com>
To: Yannick Fertre <yannick.fertre@st.com>, Philippe Cornu
 <philippe.cornu@st.com>, Benjamin Gaignard <benjamin.gaignard@st.com>,
 Vincent Abriou <vincent.abriou@st.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, "Mark Rutland" <mark.rutland@arm.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 2/3] drm/stm: dsi: add support of an optional regulator
Date: Fri, 10 May 2019 16:20:20 +0200
Message-ID: <1557498023-10766-3-git-send-email-yannick.fertre@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1557498023-10766-1-git-send-email-yannick.fertre@st.com>
References: <1557498023-10766-1-git-send-email-yannick.fertre@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.23.97]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-09_02:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_072540_547197_68E6EF74 
X-CRM114-Status: GOOD (  18.05  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

QWRkIHN1cHBvcnQgb2YgYW4gb3B0aW9uYWwgcmVndWxhdG9yIGZvciB0aGUgcGh5IHBhcnQgb2Yg
dGhlIERTSQpjb250cm9sbGVyLgoKU2lnbmVkLW9mZi1ieTogWWFubmljayBGZXJ0csOpIDx5YW5u
aWNrLmZlcnRyZUBzdC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL3N0bS9kd19taXBpX2RzaS1z
dG0uYyB8IDQ1ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tCiAxIGZpbGUgY2hh
bmdlZCwgMzkgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vc3RtL2R3X21pcGlfZHNpLXN0bS5jIGIvZHJpdmVycy9ncHUvZHJtL3N0bS9k
d19taXBpX2RzaS1zdG0uYwppbmRleCAxYmVmNzNlLi4yMmJkMDk1IDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vc3RtL2R3X21pcGlfZHNpLXN0bS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9z
dG0vZHdfbWlwaV9kc2ktc3RtLmMKQEAgLTksNiArOSw3IEBACiAjaW5jbHVkZSA8bGludXgvY2xr
Lmg+CiAjaW5jbHVkZSA8bGludXgvaW9wb2xsLmg+CiAjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+
CisjaW5jbHVkZSA8bGludXgvcmVndWxhdG9yL2NvbnN1bWVyLmg+CiAjaW5jbHVkZSA8ZHJtL2Ry
bVAuaD4KICNpbmNsdWRlIDxkcm0vZHJtX21pcGlfZHNpLmg+CiAjaW5jbHVkZSA8ZHJtL2JyaWRn
ZS9kd19taXBpX2RzaS5oPgpAQCAtNzYsNiArNzcsNyBAQCBzdHJ1Y3QgZHdfbWlwaV9kc2lfc3Rt
IHsKIAl1MzIgaHdfdmVyc2lvbjsKIAlpbnQgbGFuZV9taW5fa2JwczsKIAlpbnQgbGFuZV9tYXhf
a2JwczsKKwlzdHJ1Y3QgcmVndWxhdG9yICp2ZGRfc3VwcGx5OwogfTsKIAogc3RhdGljIGlubGlu
ZSB2b2lkIGRzaV93cml0ZShzdHJ1Y3QgZHdfbWlwaV9kc2lfc3RtICpkc2ksIHUzMiByZWcsIHUz
MiB2YWwpCkBAIC0zMTgsMTcgKzMyMCwzMSBAQCBzdGF0aWMgaW50IGR3X21pcGlfZHNpX3N0bV9w
cm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCQlyZXR1cm4gUFRSX0VSUihkc2kt
PmJhc2UpOwogCX0KIAorCWRzaS0+dmRkX3N1cHBseSA9IGRldm1fcmVndWxhdG9yX2dldF9vcHRp
b25hbChkZXYsICJwaHktZHNpIik7CisJaWYgKElTX0VSUihkc2ktPnZkZF9zdXBwbHkpKSB7CisJ
CXJldCA9IFBUUl9FUlIoZHNpLT52ZGRfc3VwcGx5KTsKKwkJaWYgKHJldCAhPSAtRVBST0JFX0RF
RkVSKQorCQkJRFJNX0VSUk9SKCJmYWlsZWQgdG8gcmVxdWVzdCByZWd1bGF0b3I6ICVkXG4iLCBy
ZXQpOworCQlyZXR1cm4gcmV0OworCX0KKworCXJldCA9IHJlZ3VsYXRvcl9lbmFibGUoZHNpLT52
ZGRfc3VwcGx5KTsKKwlpZiAocmV0KSB7CisJCURSTV9FUlJPUigiZmFpbGVkIHRvIGVuYWJsZSBy
ZWd1bGF0b3I6ICVkXG4iLCByZXQpOworCQlyZXR1cm4gcmV0OworCX0KKwogCWRzaS0+cGxscmVm
X2NsayA9IGRldm1fY2xrX2dldChkZXYsICJyZWYiKTsKIAlpZiAoSVNfRVJSKGRzaS0+cGxscmVm
X2NsaykpIHsKIAkJcmV0ID0gUFRSX0VSUihkc2ktPnBsbHJlZl9jbGspOwotCQlkZXZfZXJyKGRl
diwgIlVuYWJsZSB0byBnZXQgcGxsIHJlZmVyZW5jZSBjbG9jazogJWRcbiIsIHJldCk7Ci0JCXJl
dHVybiByZXQ7CisJCURSTV9FUlJPUigiVW5hYmxlIHRvIGdldCBwbGwgcmVmZXJlbmNlIGNsb2Nr
OiAlZFxuIiwgcmV0KTsKKwkJZ290byBlcnJfY2xrX2dldDsKIAl9CiAKIAlyZXQgPSBjbGtfcHJl
cGFyZV9lbmFibGUoZHNpLT5wbGxyZWZfY2xrKTsKIAlpZiAocmV0KSB7Ci0JCWRldl9lcnIoZGV2
LCAiJXM6IEZhaWxlZCB0byBlbmFibGUgcGxscmVmX2Nsa1xuIiwgX19mdW5jX18pOwotCQlyZXR1
cm4gcmV0OworCQlEUk1fRVJST1IoIiVzOiBGYWlsZWQgdG8gZW5hYmxlIHBsbHJlZl9jbGtcbiIs
IF9fZnVuY19fKTsKKwkJZ290byBlcnJfY2xrX2dldDsKIAl9CiAKIAlkd19taXBpX2RzaV9zdG1f
cGxhdF9kYXRhLmJhc2UgPSBkc2ktPmJhc2U7CkBAIC0zMzksMTEgKzM1NSwxOSBAQCBzdGF0aWMg
aW50IGR3X21pcGlfZHNpX3N0bV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQog
CWRzaS0+ZHNpID0gZHdfbWlwaV9kc2lfcHJvYmUocGRldiwgJmR3X21pcGlfZHNpX3N0bV9wbGF0
X2RhdGEpOwogCWlmIChJU19FUlIoZHNpLT5kc2kpKSB7CiAJCURSTV9FUlJPUigiRmFpbGVkIHRv
IGluaXRpYWxpemUgbWlwaSBkc2kgaG9zdFxuIik7Ci0JCWNsa19kaXNhYmxlX3VucHJlcGFyZShk
c2ktPnBsbHJlZl9jbGspOwotCQlyZXR1cm4gUFRSX0VSUihkc2ktPmRzaSk7CisJCXJldCA9IFBU
Ul9FUlIoZHNpLT5kc2kpOworCQlnb3RvIGVycl9kc2lfcHJvYmU7CiAJfQogCiAJcmV0dXJuIDA7
CisKK2Vycl9kc2lfcHJvYmU6CisJY2xrX2Rpc2FibGVfdW5wcmVwYXJlKGRzaS0+cGxscmVmX2Ns
ayk7CitlcnJfY2xrX2dldDoKKwlyZWd1bGF0b3JfZGlzYWJsZShkc2ktPnZkZF9zdXBwbHkpOwor
CisJcmV0dXJuIHJldDsKKwogfQogCiBzdGF0aWMgaW50IGR3X21pcGlfZHNpX3N0bV9yZW1vdmUo
c3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKQEAgLTM1MSw2ICszNzUsNyBAQCBzdGF0aWMg
aW50IGR3X21pcGlfZHNpX3N0bV9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikK
IAlzdHJ1Y3QgZHdfbWlwaV9kc2lfc3RtICpkc2kgPSBwbGF0Zm9ybV9nZXRfZHJ2ZGF0YShwZGV2
KTsKIAogCWNsa19kaXNhYmxlX3VucHJlcGFyZShkc2ktPnBsbHJlZl9jbGspOworCXJlZ3VsYXRv
cl9kaXNhYmxlKGRzaS0+dmRkX3N1cHBseSk7CiAJZHdfbWlwaV9kc2lfcmVtb3ZlKGRzaS0+ZHNp
KTsKIAogCXJldHVybiAwOwpAQCAtMzYzLDYgKzM4OCw3IEBAIHN0YXRpYyBpbnQgX19tYXliZV91
bnVzZWQgZHdfbWlwaV9kc2lfc3RtX3N1c3BlbmQoc3RydWN0IGRldmljZSAqZGV2KQogCURSTV9E
RUJVR19EUklWRVIoIlxuIik7CiAKIAljbGtfZGlzYWJsZV91bnByZXBhcmUoZHNpLT5wbGxyZWZf
Y2xrKTsKKwlyZWd1bGF0b3JfZGlzYWJsZShkc2ktPnZkZF9zdXBwbHkpOwogCiAJcmV0dXJuIDA7
CiB9CkBAIC0zNzAsOSArMzk2LDE2IEBAIHN0YXRpYyBpbnQgX19tYXliZV91bnVzZWQgZHdfbWlw
aV9kc2lfc3RtX3N1c3BlbmQoc3RydWN0IGRldmljZSAqZGV2KQogc3RhdGljIGludCBfX21heWJl
X3VudXNlZCBkd19taXBpX2RzaV9zdG1fcmVzdW1lKHN0cnVjdCBkZXZpY2UgKmRldikKIHsKIAlz
dHJ1Y3QgZHdfbWlwaV9kc2lfc3RtICpkc2kgPSBkd19taXBpX2RzaV9zdG1fcGxhdF9kYXRhLnBy
aXZfZGF0YTsKKwlpbnQgcmV0OwogCiAJRFJNX0RFQlVHX0RSSVZFUigiXG4iKTsKIAorCXJldCA9
IHJlZ3VsYXRvcl9lbmFibGUoZHNpLT52ZGRfc3VwcGx5KTsKKwlpZiAocmV0KSB7CisJCURSTV9F
UlJPUigiZmFpbGVkIHRvIGVuYWJsZSByZWd1bGF0b3I6ICVkXG4iLCByZXQpOworCQlyZXR1cm4g
cmV0OworCX0KKwogCWNsa19wcmVwYXJlX2VuYWJsZShkc2ktPnBsbHJlZl9jbGspOwogCiAJcmV0
dXJuIDA7Ci0tIAoyLjcuNAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
