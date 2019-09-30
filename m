Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96D93C2394
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 16:46:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=z2yEz0j/T3zTH9EhWkESYSFlbSCKZWCqICRm94MGUJY=; b=JLxxin9Zo8lwjz
	e24ME/x1+C1EBTLa4r3Dnu+kHfB3l9Jb3Xr5pAjQoZkwv9CxTgj7L+VDTojvgsB8AtIzCmACybw7e
	Sap5Bcw34IzOtLZ+c1IGDkqESBq4MZaj5ofIuTbjQLtZdTTXMhOjYqoiZ/TepdDt9PhRt3L6cr1d2
	4YE1rg7WBF1ve4iwYC7EBeNI+vJgC2vVo39KUBjUE5/idHtZQGIa0YyTmZ1deQytFlIQRKMlGtkbG
	cCuJ3MPq1o8xMeGgcMb0YHC+gWj6bp5kQv+S3sIyYeFeTz0SEKo+64B5EyupV+6OvFwCsqPjX5zlT
	buU4SMJmO5AYM+W3Npow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEwwL-0004PE-Tl; Mon, 30 Sep 2019 14:46:17 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEwwC-0004Ol-6m
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 14:46:09 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8UEfUkC017751; Mon, 30 Sep 2019 16:45:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : mime-version : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=u7ckPEielE0COPIH48zXj6aZ3G/8patmlJ6fYKZv6f8=;
 b=zdodmSE9H3b/b7Xd/OA5GtPen95vb0u77yQMhu0ifkJ0pEYPUCTJ0xEgUBfCGRzrVlQB
 lonjHgT+wu83yBAPJahKOiap0EJTyk7PQS2jffjJy49t5zbhphiLUmVeeMGo9TY1DAhf
 0XBcso5YZg3qeCSh4cv7VIHFHQXpzhtY+uLCaRV41eHEPKJxZXTgXab4CAuj3Vl4G2+E
 Bj/6ewts6HTpreJlaHvflTbY63hWkWHE+0QfjZJ0QQZZ0qHfMOv7b8RnaHrY57IXspSJ
 iikOB5/zEo4aDJi+6c3i4VFU1uBWtNMukhduCsh6LNq1p+NQyT+n68YajRdyI+smKt5u YQ== 
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
 by mx07-00178001.pphosted.com with ESMTP id 2v9w00ut72-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 30 Sep 2019 16:45:58 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id C2C4D4D;
 Mon, 30 Sep 2019 14:45:53 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 793062D0559;
 Mon, 30 Sep 2019 16:45:53 +0200 (CEST)
Received: from SAFEX1HUBCAS24.st.com (10.75.90.95) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 30 Sep
 2019 16:45:53 +0200
Received: from localhost (10.201.23.97) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 30 Sep 2019 16:45:52
 +0200
From: =?UTF-8?q?Yannick=20Fertr=C3=A9?= <yannick.fertre@st.com>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>,
 Benjamin Gaignard <benjamin.gaignard@st.com>,
 =?UTF-8?q?Yannick=20Fertr=C3=A9?= <yannick.fertre@st.com>, Philippe Cornu
 <philippe.cornu@st.com>, Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: [PATCH] ARM: dts: stm32: add focaltech touchscreen on stm32mp157c-dk2
 board
Date: Mon, 30 Sep 2019 16:45:51 +0200
Message-ID: <1569854751-22337-1-git-send-email-yannick.fertre@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.201.23.97]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-09-30_09:2019-09-25,2019-09-30 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_074608_697206_9D59400A 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

RW5hYmxlIGZvY2FsdGVjaCBmdDYyMzYgdG91Y2hzY3JlZW4gb24gU1RNMzJNUDE1N0MtREsyIGJv
YXJkLgpUaGlzIGRldmljZSBzdXBwb3J0cyAyIGRpZmZlcmVudCBhZGRyZXNzZXMgKDB4MmEgYW5k
IDB4MzgpCmRlcGVuZGluZyBvbiB0aGUgZGlzcGxheSAgYm9hcmQgdmVyc2lvbiAoTUIxNDA3KS4K
ClNpZ25lZC1vZmYtYnk6IFlhbm5pY2sgRmVydHLDqSA8eWFubmljay5mZXJ0cmVAc3QuY29tPgot
LS0KIGFyY2gvYXJtL2Jvb3QvZHRzL3N0bTMybXAxNTdjLWRrMi5kdHMgfCAyMyArKysrKysrKysr
KysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDIzIGluc2VydGlvbnMoKykKCmRpZmYgLS1n
aXQgYS9hcmNoL2FybS9ib290L2R0cy9zdG0zMm1wMTU3Yy1kazIuZHRzIGIvYXJjaC9hcm0vYm9v
dC9kdHMvc3RtMzJtcDE1N2MtZGsyLmR0cwppbmRleCAyMGVhNjAxLi41MjdiYjc1IDEwMDY0NAot
LS0gYS9hcmNoL2FybS9ib290L2R0cy9zdG0zMm1wMTU3Yy1kazIuZHRzCisrKyBiL2FyY2gvYXJt
L2Jvb3QvZHRzL3N0bTMybXAxNTdjLWRrMi5kdHMKQEAgLTYxLDYgKzYxLDI5IEBACiAJfTsKIH07
CiAKKyZpMmMxIHsKKwl0b3VjaHNjcmVlbkAyYSB7CisJCWNvbXBhdGlibGUgPSAiZm9jYWx0ZWNo
LGZ0NjIzNiI7CisJCXJlZyA9IDwweDJhPjsKKwkJaW50ZXJydXB0cyA9IDwyIDI+OworCQlpbnRl
cnJ1cHQtcGFyZW50ID0gPCZncGlvZj47CisJCWludGVycnVwdC1jb250cm9sbGVyOworCQl0b3Vj
aHNjcmVlbi1zaXplLXggPSA8NDgwPjsKKwkJdG91Y2hzY3JlZW4tc2l6ZS15ID0gPDgwMD47CisJ
CXN0YXR1cyA9ICJva2F5IjsKKwl9OworCXRvdWNoc2NyZWVuQDM4IHsKKwkJY29tcGF0aWJsZSA9
ICJmb2NhbHRlY2gsZnQ2MjM2IjsKKwkJcmVnID0gPDB4Mzg+OworCQlpbnRlcnJ1cHRzID0gPDIg
Mj47CisJCWludGVycnVwdC1wYXJlbnQgPSA8JmdwaW9mPjsKKwkJaW50ZXJydXB0LWNvbnRyb2xs
ZXI7CisJCXRvdWNoc2NyZWVuLXNpemUteCA9IDw0ODA+OworCQl0b3VjaHNjcmVlbi1zaXplLXkg
PSA8ODAwPjsKKwkJc3RhdHVzID0gIm9rYXkiOworCX07Cit9OworCiAmbHRkYyB7CiAJc3RhdHVz
ID0gIm9rYXkiOwogCi0tIAoyLjcuNAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
