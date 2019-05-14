Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8ADD1C634
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 11:36:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F+lf4fP5lJMsdYsc2BIZ9S+NVwrdmHBZ9+3XzWAuh/M=; b=oMrQZfVUZ6DMop
	QQsKGSmUvkwkf7h5lADlWHFSMrH1suZfHyfwTRBt73Rr/CwOs2uuyS8UHAfZLxhD0sKqAgSRwMcin
	9MF9pc3RqeE1JAg1CXe0c1MKSsNLabrkwh6MWKolNif2CSU5q0n6I3AA8LSnQBEzNRgd9OcVlmyYU
	duiUU0PmNaPjdI95uJghSOT3e42FYTLLbIOZx9/tSyPs1/Yxg17ntqj/wrpN1+D+cMbMLNhT1N/1I
	TE1lkN6+5j6GgQ4SmNoqiMjhdL42UXI4L7NxqVp7kOiq7V4a0JMBlKaAKBzP2fBNjt1wsFeEVgGa4
	stUsPdzrBCt9EK1vAHfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQTrd-0007K4-Kn; Tue, 14 May 2019 09:36:49 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQTr8-0006rQ-SG
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 09:36:21 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4E9WgDo021984; Tue, 14 May 2019 11:36:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : in-reply-to : references : mime-version : content-type
 : content-transfer-encoding; s=STMicroelectronics;
 bh=p4KJTrB20tDL7D759q2SgCgcwhHiCq4+y8XxWZe2CVk=;
 b=JH+JrhXM2KRQ1Gy7PMP6OgN9+bDXQhVScvsY8CtqFQa4/pReFbAbIWv59MpEbL1bFscA
 twt3rcTyGOI7g3hDTXH4N3KBxRn53lJUbQo5xABuJeMtc1f7dmwmLNLtlnhZFnf6fIJe
 FlRsxXMnCp48TSUo/s5ERsH9on8TaElDjpIRhqC+kwV0hLyMEbiwnLENKwKnw+nHBPVd
 aL7G6+FQpBcbeEBUq6MkchoSuGbcwRpRdG6GuVgD9nQRKJzzjAcVjPdE2Ieil5zav3OI
 WMbR3kH13Caaxz0dgmwYsnz08XkGtNS6MvX0WnNc0shFmcCt66Sl2tvNvbrkdHXEiUc4 rQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2sdm5u01m8-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 14 May 2019 11:36:13 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id BE70D34;
 Tue, 14 May 2019 09:36:12 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 9D4F6179A;
 Tue, 14 May 2019 09:36:12 +0000 (GMT)
Received: from SAFEX1HUBCAS24.st.com (10.75.90.95) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 14 May
 2019 11:36:12 +0200
Received: from localhost (10.201.23.97) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 14 May 2019 11:36:11
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
Subject: [PATCH v4 2/2] drm/stm: dsi: add regulator support
Date: Tue, 14 May 2019 11:35:56 +0200
Message-ID: <1557826556-10079-3-git-send-email-yannick.fertre@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1557826556-10079-1-git-send-email-yannick.fertre@st.com>
References: <1557826556-10079-1-git-send-email-yannick.fertre@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.23.97]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-14_06:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_023619_202824_CB283E7E 
X-CRM114-Status: GOOD (  16.95  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

QWRkIHN1cHBvcnQgb2YgcmVndWxhdG9yIGZvciB0aGUgcGh5IHBhcnQgb2YgdGhlIERTSQpjb250
cm9sbGVyLgoKU2lnbmVkLW9mZi1ieTogWWFubmljayBGZXJ0csOpIDx5YW5uaWNrLmZlcnRyZUBz
dC5jb20+CkFja2VkLWJ5OiBQaGlsaXBwZSBDb3JudSA8cGhpbGlwcGUuY29ybnVAc3QuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9zdG0vZHdfbWlwaV9kc2ktc3RtLmMgfCA2MCArKysrKysrKysr
KysrKysrKysrKysrKysrKysrLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQ5IGluc2VydGlvbnMo
KyksIDExIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9zdG0vZHdf
bWlwaV9kc2ktc3RtLmMgYi9kcml2ZXJzL2dwdS9kcm0vc3RtL2R3X21pcGlfZHNpLXN0bS5jCmlu
ZGV4IDFiZWY3M2UuLmQ4ZTRhMTQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9zdG0vZHdf
bWlwaV9kc2ktc3RtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3N0bS9kd19taXBpX2RzaS1zdG0u
YwpAQCAtOSw2ICs5LDcgQEAKICNpbmNsdWRlIDxsaW51eC9jbGsuaD4KICNpbmNsdWRlIDxsaW51
eC9pb3BvbGwuaD4KICNpbmNsdWRlIDxsaW51eC9tb2R1bGUuaD4KKyNpbmNsdWRlIDxsaW51eC9y
ZWd1bGF0b3IvY29uc3VtZXIuaD4KICNpbmNsdWRlIDxkcm0vZHJtUC5oPgogI2luY2x1ZGUgPGRy
bS9kcm1fbWlwaV9kc2kuaD4KICNpbmNsdWRlIDxkcm0vYnJpZGdlL2R3X21pcGlfZHNpLmg+CkBA
IC03Niw2ICs3Nyw3IEBAIHN0cnVjdCBkd19taXBpX2RzaV9zdG0gewogCXUzMiBod192ZXJzaW9u
OwogCWludCBsYW5lX21pbl9rYnBzOwogCWludCBsYW5lX21heF9rYnBzOworCXN0cnVjdCByZWd1
bGF0b3IgKnZkZF9zdXBwbHk7CiB9OwogCiBzdGF0aWMgaW5saW5lIHZvaWQgZHNpX3dyaXRlKHN0
cnVjdCBkd19taXBpX2RzaV9zdG0gKmRzaSwgdTMyIHJlZywgdTMyIHZhbCkKQEAgLTMxNCwyMSAr
MzE2LDM2IEBAIHN0YXRpYyBpbnQgZHdfbWlwaV9kc2lfc3RtX3Byb2JlKHN0cnVjdCBwbGF0Zm9y
bV9kZXZpY2UgKnBkZXYpCiAJcmVzID0gcGxhdGZvcm1fZ2V0X3Jlc291cmNlKHBkZXYsIElPUkVT
T1VSQ0VfTUVNLCAwKTsKIAlkc2ktPmJhc2UgPSBkZXZtX2lvcmVtYXBfcmVzb3VyY2UoZGV2LCBy
ZXMpOwogCWlmIChJU19FUlIoZHNpLT5iYXNlKSkgewotCQlEUk1fRVJST1IoIlVuYWJsZSB0byBn
ZXQgZHNpIHJlZ2lzdGVyc1xuIik7Ci0JCXJldHVybiBQVFJfRVJSKGRzaS0+YmFzZSk7CisJCXJl
dCA9IFBUUl9FUlIoZHNpLT5iYXNlKTsKKwkJRFJNX0VSUk9SKCJVbmFibGUgdG8gZ2V0IGRzaSBy
ZWdpc3RlcnMgJWRcbiIsIHJldCk7CisJCXJldHVybiByZXQ7CisJfQorCisJZHNpLT52ZGRfc3Vw
cGx5ID0gZGV2bV9yZWd1bGF0b3JfZ2V0KGRldiwgInBoeS1kc2kiKTsKKwlpZiAoSVNfRVJSKGRz
aS0+dmRkX3N1cHBseSkpIHsKKwkJcmV0ID0gUFRSX0VSUihkc2ktPnZkZF9zdXBwbHkpOworCQlp
ZiAocmV0ICE9IC1FUFJPQkVfREVGRVIpCisJCQlEUk1fRVJST1IoIkZhaWxlZCB0byByZXF1ZXN0
IHJlZ3VsYXRvcjogJWRcbiIsIHJldCk7CisJCXJldHVybiByZXQ7CisJfQorCisJcmV0ID0gcmVn
dWxhdG9yX2VuYWJsZShkc2ktPnZkZF9zdXBwbHkpOworCWlmIChyZXQpIHsKKwkJRFJNX0VSUk9S
KCJGYWlsZWQgdG8gZW5hYmxlIHJlZ3VsYXRvcjogJWRcbiIsIHJldCk7CisJCXJldHVybiByZXQ7
CiAJfQogCiAJZHNpLT5wbGxyZWZfY2xrID0gZGV2bV9jbGtfZ2V0KGRldiwgInJlZiIpOwogCWlm
IChJU19FUlIoZHNpLT5wbGxyZWZfY2xrKSkgewogCQlyZXQgPSBQVFJfRVJSKGRzaS0+cGxscmVm
X2Nsayk7Ci0JCWRldl9lcnIoZGV2LCAiVW5hYmxlIHRvIGdldCBwbGwgcmVmZXJlbmNlIGNsb2Nr
OiAlZFxuIiwgcmV0KTsKLQkJcmV0dXJuIHJldDsKKwkJRFJNX0VSUk9SKCJVbmFibGUgdG8gZ2V0
IHBsbCByZWZlcmVuY2UgY2xvY2s6ICVkXG4iLCByZXQpOworCQlnb3RvIGVycl9jbGtfZ2V0Owog
CX0KIAogCXJldCA9IGNsa19wcmVwYXJlX2VuYWJsZShkc2ktPnBsbHJlZl9jbGspOwogCWlmIChy
ZXQpIHsKLQkJZGV2X2VycihkZXYsICIlczogRmFpbGVkIHRvIGVuYWJsZSBwbGxyZWZfY2xrXG4i
LCBfX2Z1bmNfXyk7Ci0JCXJldHVybiByZXQ7CisJCURSTV9FUlJPUigiRmFpbGVkIHRvIGVuYWJs
ZSBwbGxyZWZfY2xrOiAlZFxuIiwgcmV0KTsKKwkJZ290byBlcnJfY2xrX2dldDsKIAl9CiAKIAlk
d19taXBpX2RzaV9zdG1fcGxhdF9kYXRhLmJhc2UgPSBkc2ktPmJhc2U7CkBAIC0zMzgsMjAgKzM1
NSwyOCBAQCBzdGF0aWMgaW50IGR3X21pcGlfZHNpX3N0bV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1f
ZGV2aWNlICpwZGV2KQogCiAJZHNpLT5kc2kgPSBkd19taXBpX2RzaV9wcm9iZShwZGV2LCAmZHdf
bWlwaV9kc2lfc3RtX3BsYXRfZGF0YSk7CiAJaWYgKElTX0VSUihkc2ktPmRzaSkpIHsKLQkJRFJN
X0VSUk9SKCJGYWlsZWQgdG8gaW5pdGlhbGl6ZSBtaXBpIGRzaSBob3N0XG4iKTsKLQkJY2xrX2Rp
c2FibGVfdW5wcmVwYXJlKGRzaS0+cGxscmVmX2Nsayk7Ci0JCXJldHVybiBQVFJfRVJSKGRzaS0+
ZHNpKTsKKwkJcmV0ID0gUFRSX0VSUihkc2ktPmRzaSk7CisJCURSTV9FUlJPUigiRmFpbGVkIHRv
IGluaXRpYWxpemUgbWlwaSBkc2kgaG9zdDogJWRcbiIsIHJldCk7CisJCWdvdG8gZXJyX2RzaV9w
cm9iZTsKIAl9CiAKIAlyZXR1cm4gMDsKKworZXJyX2RzaV9wcm9iZToKKwljbGtfZGlzYWJsZV91
bnByZXBhcmUoZHNpLT5wbGxyZWZfY2xrKTsKK2Vycl9jbGtfZ2V0OgorCXJlZ3VsYXRvcl9kaXNh
YmxlKGRzaS0+dmRkX3N1cHBseSk7CisKKwlyZXR1cm4gcmV0OwogfQogCiBzdGF0aWMgaW50IGR3
X21pcGlfZHNpX3N0bV9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIHsKIAlz
dHJ1Y3QgZHdfbWlwaV9kc2lfc3RtICpkc2kgPSBwbGF0Zm9ybV9nZXRfZHJ2ZGF0YShwZGV2KTsK
IAotCWNsa19kaXNhYmxlX3VucHJlcGFyZShkc2ktPnBsbHJlZl9jbGspOwogCWR3X21pcGlfZHNp
X3JlbW92ZShkc2ktPmRzaSk7CisJY2xrX2Rpc2FibGVfdW5wcmVwYXJlKGRzaS0+cGxscmVmX2Ns
ayk7CisJcmVndWxhdG9yX2Rpc2FibGUoZHNpLT52ZGRfc3VwcGx5KTsKIAogCXJldHVybiAwOwog
fQpAQCAtMzYzLDYgKzM4OCw3IEBAIHN0YXRpYyBpbnQgX19tYXliZV91bnVzZWQgZHdfbWlwaV9k
c2lfc3RtX3N1c3BlbmQoc3RydWN0IGRldmljZSAqZGV2KQogCURSTV9ERUJVR19EUklWRVIoIlxu
Iik7CiAKIAljbGtfZGlzYWJsZV91bnByZXBhcmUoZHNpLT5wbGxyZWZfY2xrKTsKKwlyZWd1bGF0
b3JfZGlzYWJsZShkc2ktPnZkZF9zdXBwbHkpOwogCiAJcmV0dXJuIDA7CiB9CkBAIC0zNzAsMTAg
KzM5NiwyMiBAQCBzdGF0aWMgaW50IF9fbWF5YmVfdW51c2VkIGR3X21pcGlfZHNpX3N0bV9zdXNw
ZW5kKHN0cnVjdCBkZXZpY2UgKmRldikKIHN0YXRpYyBpbnQgX19tYXliZV91bnVzZWQgZHdfbWlw
aV9kc2lfc3RtX3Jlc3VtZShzdHJ1Y3QgZGV2aWNlICpkZXYpCiB7CiAJc3RydWN0IGR3X21pcGlf
ZHNpX3N0bSAqZHNpID0gZHdfbWlwaV9kc2lfc3RtX3BsYXRfZGF0YS5wcml2X2RhdGE7CisJaW50
IHJldDsKIAogCURSTV9ERUJVR19EUklWRVIoIlxuIik7CiAKLQljbGtfcHJlcGFyZV9lbmFibGUo
ZHNpLT5wbGxyZWZfY2xrKTsKKwlyZXQgPSByZWd1bGF0b3JfZW5hYmxlKGRzaS0+dmRkX3N1cHBs
eSk7CisJaWYgKHJldCkgeworCQlEUk1fRVJST1IoIkZhaWxlZCB0byBlbmFibGUgcmVndWxhdG9y
OiAlZFxuIiwgcmV0KTsKKwkJcmV0dXJuIHJldDsKKwl9CisKKwlyZXQgPSBjbGtfcHJlcGFyZV9l
bmFibGUoZHNpLT5wbGxyZWZfY2xrKTsKKwlpZiAocmV0KSB7CisJCXJlZ3VsYXRvcl9kaXNhYmxl
KGRzaS0+dmRkX3N1cHBseSk7CisJCURSTV9FUlJPUigiRmFpbGVkIHRvIGVuYWJsZSBwbGxyZWZf
Y2xrOiAlZFxuIiwgcmV0KTsKKwkJcmV0dXJuIHJldDsKKwl9CiAKIAlyZXR1cm4gMDsKIH0KLS0g
CjIuNy40CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
