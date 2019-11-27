Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB4B10AD7A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 11:24:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UkF/7y4g1jdmWdrPnQuWKEIoIrcEfOnQVMjN8y1myDs=; b=U3w5dZd3x/3Br4
	Vg7y48bDjdHd4A0uASEm0yWKb2KP1KIruCNsGDzVn4RrgEYV1vQlKMYcPZx1V6A/xT0LnZiUKhufu
	DlSzLvrQTcLCkmXoEHFDp8VW2USta3gutat/J+ZkJHYP8VOU0QxxikHbfL1asIKz4n//U6E1vwYes
	+06zDu44Tc3F91qkpYyMoIBVG5MWj4rv8SveUZ5irROO6E6LbfIroTJaKXZXmIYnCYZboYqDLBFxq
	gl1PAwTrUVUuRHaOlxP9JxE+VIW6OdRLgp4KqZSmPVRK+hwmMWMcrQBbWlHvD6bSS+zz4n2DT0ZrQ
	8TLY1zcbQpzrmWb4qYmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZuUE-0003No-Pz; Wed, 27 Nov 2019 10:23:54 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZuU4-0003Ml-PC
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 10:23:46 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xARAMdUZ021243; Wed, 27 Nov 2019 11:23:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : mime-version : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=JJSf8q2JoRexvh5kfOMyzAlAfib54Yh6pgtrZwuFoHs=;
 b=wQcFB9Lm+wS2aIK88V+NQ7mmLRFme4CfBdWQgIrLQdVZ4rPoqIufIkbgpJF4FKdBlDvO
 hj+RQCTLCfeUC3mfAMy0DYu/wGGjrnw+/BEN1m3EO815nBrNWxllwlAAreYqvQ2fvbF/
 M6NHkILX6jN4hJH29UYsZ4jyZelHzZ4LOFFC8AEgLuKJHr3pH/z1OUzUmUd/ZDDw9ysW
 b8C6DuFiOat5k7L5a7vEZQFOPpClz6C5p4WJESDjGxtLTnFhPUvb7YY0YWD1ho2zwDx/
 UEkPA7d1TXCzz7sSafh9LrZDGCy9/jjLtnhG6pRbP7S+fPrH1HY3JxthNCdG8aIic4VP ag== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2whcxyb0n7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 27 Nov 2019 11:23:40 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id C9AC810002A;
 Wed, 27 Nov 2019 11:23:39 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 233552B1214;
 Wed, 27 Nov 2019 11:23:40 +0100 (CET)
Received: from localhost (10.75.127.45) by SFHDAG6NODE1.st.com (10.75.127.16)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Wed, 27 Nov 2019 11:23:39 +0100
From: Yannick Fertre <yannick.fertre@st.com>
To: Yannick Fertre <yannick.fertre@st.com>, Philippe Cornu
 <philippe.cornu@st.com>, Benjamin Gaignard <benjamin.gaignard@st.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 <dri-devel@lists.freedesktop.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH] drm/stm: ltdc: move pinctrl to encoder mode set
Date: Wed, 27 Nov 2019 11:23:38 +0100
Message-ID: <1574850218-13257-1-git-send-email-yannick.fertre@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG2NODE2.st.com (10.75.127.5) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-27_02:2019-11-27,2019-11-27 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_022345_112743_6BA1ECD6 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

RnJvbTogWWFubmljayBGZXJ0csOpIDx5YW5uaWNrLmZlcnRyZUBzdC5jb20+CgpUaGUgcGluIGNv
bnRyb2wgbXVzdCBiZSBzZXQgdG8gZGVmYXVsdCBhcyBzb29uIGFzIHBvc3NpYmxlIHRvCmVzdGFi
bGlzaCBhIGdvb2QgdmlkZW8gbGluayBiZXR3ZWVuIHR2ICYgYnJpZGdlIGhkbWkKKGVuY29kZXIg
bW9kZSBzZXQgaXMgY2FsbCBiZWZvcmUgZW5jb2RlciBlbmFibGUpLgoKU2lnbmVkLW9mZi1ieTog
WWFubmljayBGZXJ0cmUgPHlhbm5pY2suZmVydHJlQHN0LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9k
cm0vc3RtL2x0ZGMuYyB8IDI0ICsrKysrKysrKysrKysrKysrKy0tLS0tLQogMSBmaWxlIGNoYW5n
ZWQsIDE4IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL3N0bS9sdGRjLmMgYi9kcml2ZXJzL2dwdS9kcm0vc3RtL2x0ZGMuYwppbmRleCA0
OWVmNDA2Li5kYmE4ZTdmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vc3RtL2x0ZGMuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vc3RtL2x0ZGMuYwpAQCAtNDM1LDkgKzQzNSw2IEBAIHN0YXRp
YyB2b2lkIGx0ZGNfY3J0Y19hdG9taWNfZW5hYmxlKHN0cnVjdCBkcm1fY3J0YyAqY3J0YywKIAkv
KiBDb21taXQgc2hhZG93IHJlZ2lzdGVycyA9IHVwZGF0ZSBwbGFuZXMgYXQgbmV4dCB2Ymxhbmsg
Ki8KIAlyZWdfc2V0KGxkZXYtPnJlZ3MsIExURENfU1JDUiwgU1JDUl9WQlIpOwogCi0JLyogRW5h
YmxlIExUREMgKi8KLQlyZWdfc2V0KGxkZXYtPnJlZ3MsIExURENfR0NSLCBHQ1JfTFREQ0VOKTsK
LQogCWRybV9jcnRjX3ZibGFua19vbihjcnRjKTsKIH0KIApAQCAtNDUxLDkgKzQ0OCw2IEBAIHN0
YXRpYyB2b2lkIGx0ZGNfY3J0Y19hdG9taWNfZGlzYWJsZShzdHJ1Y3QgZHJtX2NydGMgKmNydGMs
CiAKIAlkcm1fY3J0Y192Ymxhbmtfb2ZmKGNydGMpOwogCi0JLyogZGlzYWJsZSBMVERDICovCi0J
cmVnX2NsZWFyKGxkZXYtPnJlZ3MsIExURENfR0NSLCBHQ1JfTFREQ0VOKTsKLQogCS8qIGRpc2Fi
bGUgSVJRICovCiAJcmVnX2NsZWFyKGxkZXYtPnJlZ3MsIExURENfSUVSLCBJRVJfUlJJRSB8IElF
Ul9GVUlFIHwgSUVSX1RFUlJJRSk7CiAKQEAgLTEwNDIsOSArMTAzNiwxMyBAQCBzdGF0aWMgY29u
c3Qgc3RydWN0IGRybV9lbmNvZGVyX2Z1bmNzIGx0ZGNfZW5jb2Rlcl9mdW5jcyA9IHsKIHN0YXRp
YyB2b2lkIGx0ZGNfZW5jb2Rlcl9kaXNhYmxlKHN0cnVjdCBkcm1fZW5jb2RlciAqZW5jb2RlcikK
IHsKIAlzdHJ1Y3QgZHJtX2RldmljZSAqZGRldiA9IGVuY29kZXItPmRldjsKKwlzdHJ1Y3QgbHRk
Y19kZXZpY2UgKmxkZXYgPSBkZGV2LT5kZXZfcHJpdmF0ZTsKIAogCURSTV9ERUJVR19EUklWRVIo
IlxuIik7CiAKKwkvKiBEaXNhYmxlIExUREMgKi8KKwlyZWdfY2xlYXIobGRldi0+cmVncywgTFRE
Q19HQ1IsIEdDUl9MVERDRU4pOworCiAJLyogU2V0IHRvIHNsZWVwIHN0YXRlIHRoZSBwaW5jdHJs
IHdoYXRldmVyIHR5cGUgb2YgZW5jb2RlciAqLwogCXBpbmN0cmxfcG1fc2VsZWN0X3NsZWVwX3N0
YXRlKGRkZXYtPmRldik7CiB9CkBAIC0xMDUyLDYgKzEwNTAsMTkgQEAgc3RhdGljIHZvaWQgbHRk
Y19lbmNvZGVyX2Rpc2FibGUoc3RydWN0IGRybV9lbmNvZGVyICplbmNvZGVyKQogc3RhdGljIHZv
aWQgbHRkY19lbmNvZGVyX2VuYWJsZShzdHJ1Y3QgZHJtX2VuY29kZXIgKmVuY29kZXIpCiB7CiAJ
c3RydWN0IGRybV9kZXZpY2UgKmRkZXYgPSBlbmNvZGVyLT5kZXY7CisJc3RydWN0IGx0ZGNfZGV2
aWNlICpsZGV2ID0gZGRldi0+ZGV2X3ByaXZhdGU7CisKKwlEUk1fREVCVUdfRFJJVkVSKCJcbiIp
OworCisJLyogRW5hYmxlIExUREMgKi8KKwlyZWdfc2V0KGxkZXYtPnJlZ3MsIExURENfR0NSLCBH
Q1JfTFREQ0VOKTsKK30KKworc3RhdGljIHZvaWQgbHRkY19lbmNvZGVyX21vZGVfc2V0KHN0cnVj
dCBkcm1fZW5jb2RlciAqZW5jb2RlciwKKwkJCQkgIHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICpt
b2RlLAorCQkJCSAgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKmFkanVzdGVkX21vZGUpCit7CisJ
c3RydWN0IGRybV9kZXZpY2UgKmRkZXYgPSBlbmNvZGVyLT5kZXY7CiAKIAlEUk1fREVCVUdfRFJJ
VkVSKCJcbiIpOwogCkBAIC0xMDY3LDYgKzEwNzgsNyBAQCBzdGF0aWMgdm9pZCBsdGRjX2VuY29k
ZXJfZW5hYmxlKHN0cnVjdCBkcm1fZW5jb2RlciAqZW5jb2RlcikKIHN0YXRpYyBjb25zdCBzdHJ1
Y3QgZHJtX2VuY29kZXJfaGVscGVyX2Z1bmNzIGx0ZGNfZW5jb2Rlcl9oZWxwZXJfZnVuY3MgPSB7
CiAJLmRpc2FibGUgPSBsdGRjX2VuY29kZXJfZGlzYWJsZSwKIAkuZW5hYmxlID0gbHRkY19lbmNv
ZGVyX2VuYWJsZSwKKwkubW9kZV9zZXQgPSBsdGRjX2VuY29kZXJfbW9kZV9zZXQsCiB9OwogCiBz
dGF0aWMgaW50IGx0ZGNfZW5jb2Rlcl9pbml0KHN0cnVjdCBkcm1fZGV2aWNlICpkZGV2LCBzdHJ1
Y3QgZHJtX2JyaWRnZSAqYnJpZGdlKQotLSAKMi43LjQKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
