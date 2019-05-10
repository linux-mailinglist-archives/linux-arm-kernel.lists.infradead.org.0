Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3865819F06
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 16:21:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5XJnlEn3dUoSTK2qduzk0iQavC70xQqz7NgvfYp06Dk=; b=bkTXckLvNGPzg0
	ixcXklq2YRHg9FO9Y7lP7pkiOvxHLVFRuF2QlX70pQL5Q8MZQf9VkcW8TF+D9ACCS2e1s8Z67Mg8s
	Qb7Qz7eT2cmUtpkDw3jei2WuT/hovsqrQOsyMBIddd27pZJcuOmX8l5xCa+LfakmE2r3OTiLmCBov
	mlC+LLf9lEDJ9eXK1kR7MsM5xZt1ny/YdvOay5dXdsGvEf9JLRXVjuDiHcsmRZJcWz8rWK3q3vRwv
	tvNdJYUFAufTrbF9CbKKe6AT+bQqb11bSwp5jb9Xo0NF/Z/PGdEWvMQgFwrGIo8gw4n2n8C6WI+t9
	i5FIWYAa9fZm7egGTUhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP6Oq-0008NS-Mr; Fri, 10 May 2019 14:21:24 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP6OA-0007gX-Sy
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 14:20:45 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4AE1mfQ025399; Fri, 10 May 2019 16:20:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : in-reply-to : references : mime-version : content-type
 : content-transfer-encoding; s=STMicroelectronics;
 bh=/XRL/cLbUyuiOX7oZ//xMTlD4EbxIiDLjZE+ThQcnls=;
 b=PTQbnLjW+4cIwTlZRJQ7M0JJ7VWQbIjead4RnKIdGrVSe9FJJQ8PnLpnJSm/Qr32Czxg
 hgrSy9SitxnMH9jMvP0ClqBFdU2LVSPBfYufiyTj24AyQQ4NrGs5dWtTt4b2qcJlfIYt
 TPzmiyWddvuHizI++YI5XvYZj1ytzxVnKHzWs2oryLmk2vK0+8bmlMLqK4isEMLICTKM
 uUdjt+CCaOXjHzT/F4Anv9raBFZIU622NfqrtAdW5KXuFgMtA1/06K868iJleupRSndk
 S91rnNrtYH73E1HpwdqAfSbFHYAZn8Kzdf/kq6U+KWpmStGDdfMVFIAej9vaukOhGKr7 Xw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2scfv2s5w5-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 10 May 2019 16:20:35 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 958323D;
 Fri, 10 May 2019 14:20:33 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas22.st.com [10.75.90.92])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 754F5113A;
 Fri, 10 May 2019 14:20:33 +0000 (GMT)
Received: from SAFEX1HUBCAS23.st.com (10.75.90.47) by Safex1hubcas22.st.com
 (10.75.90.92) with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 10 May
 2019 16:20:33 +0200
Received: from localhost (10.201.23.97) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 10 May 2019 16:20:32
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
Subject: [PATCH v2 4/5] ARM: dts: stm32: move fixe regulators reg11 & reg18
Date: Fri, 10 May 2019 16:20:22 +0200
Message-ID: <1557498023-10766-5-git-send-email-yannick.fertre@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1557498023-10766-1-git-send-email-yannick.fertre@st.com>
References: <1557498023-10766-1-git-send-email-yannick.fertre@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.23.97]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-09_02:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_072043_251819_A65DF750 
X-CRM114-Status: GOOD (  13.23  )
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

TW92ZSByZWd1bGF0b3JzIHJlZzExICYgcmVnMTggZnJvbSBkZXZpY2UtdHJlZSBmaWxlcyBzdG0z
Mm1wMTU3Yy1lZDEuZHRzCiYgc3RtMzJtcDE1N2MtZGsyLmR0cyB0byBmaWxlIHN0bTMybXAxNTdj
LmR0c2kuCgpTaWduZWQtb2ZmLWJ5OiBZYW5uaWNrIEZlcnRyw6kgPHlhbm5pY2suZmVydHJlQHN0
LmNvbT4KLS0tCiBhcmNoL2FybS9ib290L2R0cy9zdG0zMm1wMTU3Yy1kazIuZHRzIHwgIDggLS0t
LS0tLS0KIGFyY2gvYXJtL2Jvb3QvZHRzL3N0bTMybXAxNTdjLWVkMS5kdHMgfCAxNiAtLS0tLS0t
LS0tLS0tLS0tCiBhcmNoL2FybS9ib290L2R0cy9zdG0zMm1wMTU3Yy5kdHNpICAgIHwgMTYgKysr
KysrKysrKysrKysrKwogMyBmaWxlcyBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCAyNCBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9zdG0zMm1wMTU3Yy1kazIu
ZHRzIGIvYXJjaC9hcm0vYm9vdC9kdHMvc3RtMzJtcDE1N2MtZGsyLmR0cwppbmRleCAyMGVhNjAx
Li4wMjBlYTBmIDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib290L2R0cy9zdG0zMm1wMTU3Yy1kazIu
ZHRzCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3N0bTMybXAxNTdjLWRrMi5kdHMKQEAgLTExLDE0
ICsxMSw2IEBACiAvIHsKIAltb2RlbCA9ICJTVE1pY3JvZWxlY3Ryb25pY3MgU1RNMzJNUDE1N0Mt
REsyIERpc2NvdmVyeSBCb2FyZCI7CiAJY29tcGF0aWJsZSA9ICJzdCxzdG0zMm1wMTU3Yy1kazIi
LCAic3Qsc3RtMzJtcDE1NyI7Ci0KLQlyZWcxODogcmVnMTggewotCQljb21wYXRpYmxlID0gInJl
Z3VsYXRvci1maXhlZCI7Ci0JCXJlZ3VsYXRvci1uYW1lID0gInJlZzE4IjsKLQkJcmVndWxhdG9y
LW1pbi1taWNyb3ZvbHQgPSA8MTgwMDAwMD47Ci0JCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0g
PDE4MDAwMDA+OwotCQlyZWd1bGF0b3ItYWx3YXlzLW9uOwotCX07CiB9OwogCiAmZHNpIHsKZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3N0bTMybXAxNTdjLWVkMS5kdHMgYi9hcmNoL2Fy
bS9ib290L2R0cy9zdG0zMm1wMTU3Yy1lZDEuZHRzCmluZGV4IDYyYThjNzguLmY0MTE4OWMgMTAw
NjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3N0bTMybXAxNTdjLWVkMS5kdHMKKysrIGIvYXJj
aC9hcm0vYm9vdC9kdHMvc3RtMzJtcDE1N2MtZWQxLmR0cwpAQCAtMjcsMjIgKzI3LDYgQEAKIAkJ
c2VyaWFsMCA9ICZ1YXJ0NDsKIAl9OwogCi0JcmVnMTE6IHJlZzExIHsKLQkJY29tcGF0aWJsZSA9
ICJyZWd1bGF0b3ItZml4ZWQiOwotCQlyZWd1bGF0b3ItbmFtZSA9ICJyZWcxMSI7Ci0JCXJlZ3Vs
YXRvci1taW4tbWljcm92b2x0ID0gPDExMDAwMDA+OwotCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9s
dCA9IDwxMTAwMDAwPjsKLQkJcmVndWxhdG9yLWFsd2F5cy1vbjsKLQl9OwotCi0JcmVnMTg6IHJl
ZzE4IHsKLQkJY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOwotCQlyZWd1bGF0b3ItbmFt
ZSA9ICJyZWcxOCI7Ci0JCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDE4MDAwMDA+OwotCQly
ZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwxODAwMDAwPjsKLQkJcmVndWxhdG9yLWFsd2F5cy1v
bjsKLQl9OwotCiAJc2Rfc3dpdGNoOiByZWd1bGF0b3Itc2Rfc3dpdGNoIHsKIAkJY29tcGF0aWJs
ZSA9ICJyZWd1bGF0b3ItZ3BpbyI7CiAJCXJlZ3VsYXRvci1uYW1lID0gInNkX3N3aXRjaCI7CmRp
ZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9zdG0zMm1wMTU3Yy5kdHNpIGIvYXJjaC9hcm0v
Ym9vdC9kdHMvc3RtMzJtcDE1N2MuZHRzaQppbmRleCA2YjE0ZjFlLi5hYWFjNTFjZCAxMDA2NDQK
LS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvc3RtMzJtcDE1N2MuZHRzaQorKysgYi9hcmNoL2FybS9i
b290L2R0cy9zdG0zMm1wMTU3Yy5kdHNpCkBAIC0xMSw2ICsxMSwyMiBAQAogCSNhZGRyZXNzLWNl
bGxzID0gPDE+OwogCSNzaXplLWNlbGxzID0gPDE+OwogCisJcmVnMTE6IHJlZzExIHsKKwkJY29t
cGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOworCQlyZWd1bGF0b3ItbmFtZSA9ICJyZWcxMSI7
CisJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDExMDAwMDA+OworCQlyZWd1bGF0b3ItbWF4
LW1pY3Jvdm9sdCA9IDwxMTAwMDAwPjsKKwkJcmVndWxhdG9yLWFsd2F5cy1vbjsKKwl9OworCisJ
cmVnMTg6IHJlZzE4IHsKKwkJY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOworCQlyZWd1
bGF0b3ItbmFtZSA9ICJyZWcxOCI7CisJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDE4MDAw
MDA+OworCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwxODAwMDAwPjsKKwkJcmVndWxhdG9y
LWFsd2F5cy1vbjsKKwl9OworCiAJY3B1cyB7CiAJCSNhZGRyZXNzLWNlbGxzID0gPDE+OwogCQkj
c2l6ZS1jZWxscyA9IDwwPjsKLS0gCjIuNy40CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
