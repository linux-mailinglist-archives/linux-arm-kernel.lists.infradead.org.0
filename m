Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A65457FBC8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 16:09:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LszdyRfVB0SU591qPwbcVsTkEwGy6q/uBpxuzNCY0ug=; b=M9ppgIPmgr8sPp
	Azw1k/mijC2jrX9Et2CEBjXPBqxwmNCQv6GC+HrCPaM5DVL7yXK20199gFVT6sQ9goAFKxRMWLdeB
	zn8l8Tpk34oN6LZ72tu6jxCq3UddcQM9IQGBF9GjVMkU2tYGQQIUDTvtvHWtFh22mUUomdkKZm5od
	Rx9jxINb1eabkk4VBxA/bvuH15fp/KU0Lwi1CxYoROGnWeCHjaC1KlTqnBXIXoA0CAQBbc2KovYTY
	VZctABXWFXNb0LuwO7h1NLu9qhOFZkoSD28vac4y2xqOp6P0GO0ns3YjQm6z+AHX7YW5nIPbedvrs
	ETvnX74wURBoGawLkicA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htYF8-0000mR-MB; Fri, 02 Aug 2019 14:09:14 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htYF1-0000hh-Ha
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 14:09:09 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x72E6uLF014555; Fri, 2 Aug 2019 16:09:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : mime-version : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=V4Oy0E5gbwyi1cbiRiVoGW45+5zWyza++ydGz4D477E=;
 b=Z8BqG/0ydEYKorRq6uN7BstyvNz9rvTzsNTLIiUk0O/KLzdXaVrhf3fKJhOL+XEeruk1
 dGUUYZ4gXS3ohGtP7MiUizl4oLWZ+3EVWP2e5syGLv5FHVEzscdE5QRYsQOizAfJ3arT
 If/qqA0CWJFToyr79Oo1fW+TyDtXUPqoCjCri19Zu2UKJOzafaDMbPx4oM+cc3YbTcgq
 FdYxSHDdY1A1zlMjTW4MURJTjducO/Wg9zL1r6gc++okNND+3dMKEHtGkOU+dfm4N5OJ
 vrzrvZf/IH6fEAqSaggQGi8n5GCeCFmQ5c9+eKAk8Q7L+qYSDlwvbGiC2Hggumm9od11 vQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2u0c2yvs6w-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 02 Aug 2019 16:09:00 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 537F634;
 Fri,  2 Aug 2019 14:09:00 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas22.st.com [10.75.90.92])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 3CEE72C4581;
 Fri,  2 Aug 2019 16:09:00 +0200 (CEST)
Received: from SAFEX1HUBCAS23.st.com (10.75.90.47) by Safex1hubcas22.st.com
 (10.75.90.92) with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 2 Aug 2019
 16:09:00 +0200
Received: from localhost (10.201.23.97) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 2 Aug 2019 16:08:59
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
Subject: [PATCH] ARM: dts: stm32: move ltdc pinctrl on stm32mp157a dk1 board
Date: Fri, 2 Aug 2019 16:08:51 +0200
Message-ID: <1564754931-13861-1-git-send-email-yannick.fertre@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.201.23.97]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-02_06:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_070908_061217_21B77141 
X-CRM114-Status: GOOD (  13.18  )
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

VGhlIGx0ZGMgcGluY3RybCBtdXN0IGJlIGluIHRoZSBkaXNwbGF5IGNvbnRyb2xsZXIgbm9kZSBh
bmQKbm90IGluIHRoZSBwZXJpcGhlcmFsIG5vZGUgKGhkbWkgYnJpZGdlKS4KClNpZ25lZC1vZmYt
Ynk6IFlhbm5pY2sgRmVydHLDqSA8eWFubmljay5mZXJ0cmVAc3QuY29tPgotLS0KIGFyY2gvYXJt
L2Jvb3QvZHRzL3N0bTMybXAxNTdhLWRrMS5kdHMgfCA2ICsrKy0tLQogMSBmaWxlIGNoYW5nZWQs
IDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9i
b290L2R0cy9zdG0zMm1wMTU3YS1kazEuZHRzIGIvYXJjaC9hcm0vYm9vdC9kdHMvc3RtMzJtcDE1
N2EtZGsxLmR0cwppbmRleCBmM2YwZTM3Li4xMjg1Y2ZjIDEwMDY0NAotLS0gYS9hcmNoL2FybS9i
b290L2R0cy9zdG0zMm1wMTU3YS1kazEuZHRzCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3N0bTMy
bXAxNTdhLWRrMS5kdHMKQEAgLTk5LDkgKzk5LDYgQEAKIAkJcmVzZXQtZ3Bpb3MgPSA8JmdwaW9h
IDEwIEdQSU9fQUNUSVZFX0xPVz47CiAJCWludGVycnVwdHMgPSA8MSBJUlFfVFlQRV9FREdFX0ZB
TExJTkc+OwogCQlpbnRlcnJ1cHQtcGFyZW50ID0gPCZncGlvZz47Ci0JCXBpbmN0cmwtbmFtZXMg
PSAiZGVmYXVsdCIsICJzbGVlcCI7Ci0JCXBpbmN0cmwtMCA9IDwmbHRkY19waW5zX2E+OwotCQlw
aW5jdHJsLTEgPSA8Jmx0ZGNfcGluc19zbGVlcF9hPjsKIAkJc3RhdHVzID0gIm9rYXkiOwogCiAJ
CXBvcnRzIHsKQEAgLTI3Niw2ICsyNzMsOSBAQAogfTsKIAogJmx0ZGMgeworCXBpbmN0cmwtbmFt
ZXMgPSAiZGVmYXVsdCIsICJzbGVlcCI7CisJcGluY3RybC0wID0gPCZsdGRjX3BpbnNfYT47CisJ
cGluY3RybC0xID0gPCZsdGRjX3BpbnNfc2xlZXBfYT47CiAJc3RhdHVzID0gIm9rYXkiOwogCiAJ
cG9ydCB7Ci0tIAoyLjcuNAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
