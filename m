Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2524D19FBB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 17:03:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ULHIf3+gdQqx9Wei5MYfK23LpKEAojJ4mKhYC+kfiDQ=; b=Jufg9B2PGrOhnv
	9wY+IuDcNJzqIk+hbPmB8OrI38ELw9n8UyNZ8RhCWDUy1eqk+4htmO7ZJis1fKcPFN9zM7z16RRmU
	WnV6nJb2KOnMncrx9bFe3E+VCO6wxGhSRs550agQm5uXaYOkgwggOJu1hQa5mfH35P/qqMB6oHoCf
	xCYVD9eHad9TLNGHSc+tlTmlOMayFvlkyIWN5znusiAqZ63MrN9A6KQP+ppDQUnCF9vzVMTVGZNYT
	RWOtEMgf+aZ3fW2i23J6NW7Dpn7Wbvd5Uz0ZxzixZxVg9aWSg+AKKFKhrg6VW5WGON2uzdzwgfIrE
	1rpEFEGQZN21cZTlZxog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP73R-00069I-4t; Fri, 10 May 2019 15:03:21 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP73J-00068t-O0
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 15:03:15 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4AErgJP004964; Fri, 10 May 2019 17:03:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : mime-version : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=WEEddrwDkIHLSmRlPP82HL8Zh6nr2g7bNKK4fLQdDyM=;
 b=y9+Lix1ZuXzL5a9DeIi/XePgAd7t9QEb1DElD58ROp5opc6t8id9Mh3aiFqHrUZRlWCG
 6QoABaK9EwTN9ic6cACvXC9QaBPqrV9c6DKUceqVH7lDJEo0Y6jQln+cWOB6TU+2EQ/g
 e+XkNkYamNYwneMZ4ToZQ/xAFxDVsRc2rjW2P3G9Jdi8Zgkcw0nw9XUqlfdDRtQKDL3U
 Ixyxk2Pn8gKIx29sOeopNOrj/n9sWPlKsw6JiRC6NxnDFj/GhX0YILSYAPyrqVWxVY5s
 5abTGLkevqZn7rnF9pOZksOjcREH2PYxQGj9k3VuUq2TWF1JzOpW6dgkqxJXT3v4VLru NA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2sc9s4k49q-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 10 May 2019 17:03:09 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 9473F34;
 Fri, 10 May 2019 15:03:08 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas22.st.com [10.75.90.92])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 7252B2AB8;
 Fri, 10 May 2019 15:03:08 +0000 (GMT)
Received: from SAFEX1HUBCAS23.st.com (10.75.90.47) by Safex1hubcas22.st.com
 (10.75.90.92) with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 10 May
 2019 17:03:08 +0200
Received: from localhost (10.201.23.97) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 10 May 2019 17:03:07
 +0200
From: =?UTF-8?q?Yannick=20Fertr=C3=A9?= <yannick.fertre@st.com>
To: Yannick Fertre <yannick.fertre@st.com>, Philippe Cornu
 <philippe.cornu@st.com>, Benjamin Gaignard <benjamin.gaignard@st.com>,
 Vincent Abriou <vincent.abriou@st.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 <dri-devel@lists.freedesktop.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH] drm/stm: dsi: check hardware version
Date: Fri, 10 May 2019 17:02:59 +0200
Message-ID: <1557500579-19720-1-git-send-email-yannick.fertre@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.201.23.97]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-09_02:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_080314_108351_4B2AEF2F 
X-CRM114-Status: GOOD (  14.63  )
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

Q2hlY2sgdmVyc2lvbiBvZiBEU0kgaGFyZHdhcmUgSVAuIE9ubHkgdmVyc2lvbnMgMS4zMCAmIDEu
MzEKYXJlIHN1cHBvcnRlZC4KClNpZ25lZC1vZmYtYnk6IFlhbm5pY2sgRmVydHLDqSA8eWFubmlj
ay5mZXJ0cmVAc3QuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9zdG0vZHdfbWlwaV9kc2ktc3Rt
LmMgfCAyNCArKysrKysrKysrKysrKysrKysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCAyMyBpbnNl
cnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3N0
bS9kd19taXBpX2RzaS1zdG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9zdG0vZHdfbWlwaV9kc2ktc3Rt
LmMKaW5kZXggMjJiZDA5NS4uMjkxMDVlOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3N0
bS9kd19taXBpX2RzaS1zdG0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vc3RtL2R3X21pcGlfZHNp
LXN0bS5jCkBAIC0yMjcsNyArMjI3LDYgQEAgZHdfbWlwaV9kc2lfZ2V0X2xhbmVfbWJwcyh2b2lk
ICpwcml2X2RhdGEsIGNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICptb2RlLAogCXUzMiB2
YWw7CiAKIAkvKiBVcGRhdGUgbGFuZSBjYXBhYmlsaXRpZXMgYWNjb3JkaW5nIHRvIGh3IHZlcnNp
b24gKi8KLQlkc2ktPmh3X3ZlcnNpb24gPSBkc2lfcmVhZChkc2ksIERTSV9WRVJTSU9OKSAmIFZF
UlNJT047CiAJZHNpLT5sYW5lX21pbl9rYnBzID0gTEFORV9NSU5fS0JQUzsKIAlkc2ktPmxhbmVf
bWF4X2ticHMgPSBMQU5FX01BWF9LQlBTOwogCWlmIChkc2ktPmh3X3ZlcnNpb24gPT0gSFdWRVJf
MTMxKSB7CkBAIC0zMDYsNiArMzA1LDcgQEAgc3RhdGljIGludCBkd19taXBpX2RzaV9zdG1fcHJv
YmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIHsKIAlzdHJ1Y3QgZGV2aWNlICpkZXYg
PSAmcGRldi0+ZGV2OwogCXN0cnVjdCBkd19taXBpX2RzaV9zdG0gKmRzaTsKKwlzdHJ1Y3QgY2xr
ICpwY2xrOwogCXN0cnVjdCByZXNvdXJjZSAqcmVzOwogCWludCByZXQ7CiAKQEAgLTM0Nyw2ICsz
NDcsMjggQEAgc3RhdGljIGludCBkd19taXBpX2RzaV9zdG1fcHJvYmUoc3RydWN0IHBsYXRmb3Jt
X2RldmljZSAqcGRldikKIAkJZ290byBlcnJfY2xrX2dldDsKIAl9CiAKKwlwY2xrID0gZGV2bV9j
bGtfZ2V0KGRldiwgInBjbGsiKTsKKwlpZiAoSVNfRVJSKHBjbGspKSB7CisJCXJldCA9IFBUUl9F
UlIocGNsayk7CisJCURSTV9FUlJPUigiVW5hYmxlIHRvIGdldCBwZXJpcGhlcmFsIGNsb2NrOiAl
ZFxuIiwgcmV0KTsKKwkJZ290byBlcnJfZHNpX3Byb2JlOworCX0KKworCXJldCA9IGNsa19wcmVw
YXJlX2VuYWJsZShwY2xrKTsKKwlpZiAocmV0KSB7CisJCURSTV9FUlJPUigiJXM6IEZhaWxlZCB0
byBlbmFibGUgcGVyaXBoZXJhbCBjbGtcbiIsIF9fZnVuY19fKTsKKwkJZ290byBlcnJfZHNpX3By
b2JlOworCX0KKworCWRzaS0+aHdfdmVyc2lvbiA9IGRzaV9yZWFkKGRzaSwgRFNJX1ZFUlNJT04p
ICYgVkVSU0lPTjsKKwljbGtfZGlzYWJsZV91bnByZXBhcmUocGNsayk7CisKKwlpZiAoZHNpLT5o
d192ZXJzaW9uICE9IEhXVkVSXzEzMCAmJiBkc2ktPmh3X3ZlcnNpb24gIT0gSFdWRVJfMTMxKSB7
CisJCXJldCA9IC1FTk9ERVY7CisJCURSTV9FUlJPUigiYmFkIGRzaSBoYXJkd2FyZSB2ZXJzaW9u
XG4iKTsKKwkJZ290byBlcnJfZHNpX3Byb2JlOworCX0KKwogCWR3X21pcGlfZHNpX3N0bV9wbGF0
X2RhdGEuYmFzZSA9IGRzaS0+YmFzZTsKIAlkd19taXBpX2RzaV9zdG1fcGxhdF9kYXRhLnByaXZf
ZGF0YSA9IGRzaTsKIAotLSAKMi43LjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
