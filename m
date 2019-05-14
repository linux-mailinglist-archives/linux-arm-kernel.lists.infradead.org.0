Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 248321C632
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 11:36:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G4akgDq7nst7E2NCduuMVEuXQ4zvcf1/4DdB4TYri4c=; b=BfXH3QzZ3BjrBG
	Rlr2Ul+OOVOEwMFDiohJKgMQ25JIPrg5GGcz9UN8F8tCwcPyNu0NTVmUCrr0rQ14aN6010iT/LQ+m
	Bisi7e3zc79bGtzdsOVV3kpJRSrvclfa7lgiU8TvHXcCkD6lScbPDSzxtCujeM+Lmqby9MlE+GVLQ
	37R6XWiZpK5RCPwZXyGJX9jOdZA7OJgSLuQYJghHIx9VIL4nrHYQ4b4cFV0dbM2ykNZzp1SMCre0y
	GPzw9onl3vgiVwUfSXYaKKu9QKR509TkfToj0SdCsOCFs92ONP2+L8dJUKJdOKgBA6DG4ljiFk5eZ
	WB4Vy/IHTQfdQkEtnYgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQTrG-0006sP-Q2; Tue, 14 May 2019 09:36:26 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQTr8-0006rN-4s
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 09:36:19 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4E9W0r5031412; Tue, 14 May 2019 11:36:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : in-reply-to : references : mime-version : content-type
 : content-transfer-encoding; s=STMicroelectronics;
 bh=LzYSQmTyf5/EQ3Y2VGObHjM41SSi7kcFjXdBikk9ZQs=;
 b=vx3HrLuhnX85QMXeDgz/T1DXa6z04dnJ2EKrOm4UEz4vgiJab7dGEgdv0Lgva2qmXbGX
 3c0i9waUV0OHFrsgZfXK8Kr6wx38f0DMwHJAUAmYkRbrxVXiR34HPhJ3u9c89EzZFaT3
 x7Y3j4+RsVnXXVM7bC7TXwPqz1JWCdBdDYcX/MK0tKLnfAOvScT3hnLVhku40mJyT3Jy
 KgtmhZDIeDpAbJIzrZaJ8orwmfUHl7/cbqvQj3ZMdeTFPPSzMBbg4ugScy7OPfmi2dLz
 x8sumPvk/YOvVolGRWbOO6WEq8ehoBwotVQli88hxSaSy7yNViUppqPQqsvaIbTQ37Pq Cg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2sek5aa5dp-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 14 May 2019 11:36:12 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id AB19534;
 Tue, 14 May 2019 09:36:11 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas22.st.com [10.75.90.92])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 82D58179A;
 Tue, 14 May 2019 09:36:11 +0000 (GMT)
Received: from SAFEX1HUBCAS24.st.com (10.75.90.95) by Safex1hubcas22.st.com
 (10.75.90.92) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 14 May
 2019 11:36:11 +0200
Received: from localhost (10.201.23.97) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 14 May 2019 11:36:10
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
Subject: [PATCH v4 1/2] dt-bindings: display: stm32: add supply property to
 DSI controller
Date: Tue, 14 May 2019 11:35:55 +0200
Message-ID: <1557826556-10079-2-git-send-email-yannick.fertre@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1557826556-10079-1-git-send-email-yannick.fertre@st.com>
References: <1557826556-10079-1-git-send-email-yannick.fertre@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.23.97]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-14_06:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_023618_642941_2803ADE2 
X-CRM114-Status: GOOD (  13.09  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
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

VGhpcyBwYXRjaCBhZGRzIGRvY3VtZW50YXRpb24gb2YgYSBuZXcgcHJvcGVydHkgcGh5LWRzaS1z
dXBwbHkgdG8gdGhlClNUTTMyIERTSSBjb250cm9sbGVyLgoKU2lnbmVkLW9mZi1ieTogWWFubmlj
ayBGZXJ0csOpIDx5YW5uaWNrLmZlcnRyZUBzdC5jb20+ClJldmlld2VkLWJ5OiBSb2IgSGVycmlu
ZyA8cm9iaEBrZXJuZWwub3JnPgpSZXZpZXdlZC1ieTogUGhpbGlwcGUgQ29ybnUgPHBoaWxpcHBl
LmNvcm51QHN0LmNvbT4KLS0tCiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlz
cGxheS9zdCxzdG0zMi1sdGRjLnR4dCB8IDMgKysrCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRp
b25zKCspCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rp
c3BsYXkvc3Qsc3RtMzItbHRkYy50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvZGlzcGxheS9zdCxzdG0zMi1sdGRjLnR4dAppbmRleCAzZWIxYjQ4Li42MGM1NGRhIDEwMDY0
NAotLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9zdCxzdG0z
Mi1sdGRjLnR4dAorKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxh
eS9zdCxzdG0zMi1sdGRjLnR4dApAQCAtNDAsNiArNDAsOCBAQCBNYW5kYXRvcnkgbm9kZXMgc3Bl
Y2lmaWMgdG8gU1RNMzIgRFNJOgogLSBwYW5lbCBvciBicmlkZ2Ugbm9kZTogQSBub2RlIGNvbnRh
aW5pbmcgdGhlIHBhbmVsIG9yIGJyaWRnZSBkZXNjcmlwdGlvbiBhcwogICBkb2N1bWVudGVkIGlu
IFs2XS4KICAgLSBwb3J0OiBwYW5lbCBvciBicmlkZ2UgcG9ydCBub2RlLCBjb25uZWN0ZWQgdG8g
dGhlIERTSSBvdXRwdXQgcG9ydCAocG9ydEAxKS4KK09wdGlvbmFsIHByb3BlcnRpZXM6CistIHBo
eS1kc2ktc3VwcGx5OiBwaGFuZGxlIG9mIHRoZSByZWd1bGF0b3IgdGhhdCBwcm92aWRlcyB0aGUg
c3VwcGx5IHZvbHRhZ2UuCiAKIE5vdGU6IFlvdSBjYW4gZmluZCBtb3JlIGRvY3VtZW50YXRpb24g
aW4gdGhlIGZvbGxvd2luZyByZWZlcmVuY2VzCiBbMV0gRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL2Nsb2NrL2Nsb2NrLWJpbmRpbmdzLnR4dApAQCAtMTAxLDYgKzEwMyw3IEBAIEV4
YW1wbGUgMjogRFNJIHBhbmVsCiAJCQljbG9jay1uYW1lcyA9ICJwY2xrIiwgInJlZiI7CiAJCQly
ZXNldHMgPSA8JnJjYyBTVE0zMkY0X0FQQjJfUkVTRVQoRFNJKT47CiAJCQlyZXNldC1uYW1lcyA9
ICJhcGIiOworCQkJcGh5LWRzaS1zdXBwbHkgPSA8JnJlZzE4PjsKIAogCQkJcG9ydHMgewogCQkJ
CSNhZGRyZXNzLWNlbGxzID0gPDE+OwotLSAKMi43LjQKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
