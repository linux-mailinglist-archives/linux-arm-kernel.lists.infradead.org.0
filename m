Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7841BCBB91
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 15:21:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=v1DGOKz6FLz1GxSz37szq4TqdiFoH8eR/A+3ZZUCXl0=; b=FxF7R+SuZQyXuT
	Bwfj8lBU8AcpHpL6MakcJ2a8MahIiKBOAKaafWsELFf0Ge5/SjnE7tYNtOoFu7RM4+ywxP3DRH0Oj
	mnlEQYLrl/dKOsTbLAl9bW74jFSghiaVeL23vR55xapEkmX5SZnshNf7QMPg6PTk8NURCE6bRvUd/
	Vra2Yi3ZfUiNnIFym5QqIflwEivY7gtU2cU9vtF7rCt77OH/V+MfUFsPonrOZyQu2EKCA0eQm5UqH
	MDMzNUteF53Ce4YDoxivWo/1pDrg2pJtddlSY1F2OJR3qw7yUhpEljuuGanjA9K7LBx4HqrvupFR4
	d+pAxD91GDyUoWRxdb6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGNWd-0001O4-47; Fri, 04 Oct 2019 13:21:39 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGNWJ-0001ED-Pa
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 13:21:21 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x94DLFI7001754; Fri, 4 Oct 2019 15:21:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : mime-version : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=9Uex5pTCkhp4v8CMWAiUWlq97PLFUphIHvTvPnjz9jk=;
 b=I2csExbB326H9vM0Ed1LTD8ceGt2FGDV3BkbfYTOzMVxxOPSg2F+glSGDKrK/AfV1k/L
 yMWDbitX7LXxb8FUMpzP0Ih2CBhLHxxcUOmvnKd5SPg3vqq6hrqZv/G2anYlj/OnxT12
 Oazv7elhxpnnWW2/hctDa2QLG004/43nO4sg+yoHhGzYHTT656Ei8v9UI5mmKF5SXlxz
 gjGPH+xylHeN65JODXEW3gXZQz00QLg9SSeSlJ488jwPSyg3/6trsA72UDLWrzHqN7DQ
 9U8TihQi/9PGF5q7xjwInI6QzZL1pdaZlnaeuYJR+Hg//Wce1xB99Xiuon5u/p4FucgF zw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2v9xdhau44-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 04 Oct 2019 15:21:15 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id C993B10002A;
 Fri,  4 Oct 2019 15:21:09 +0200 (CEST)
Received: from Webmail-eu.st.com (Safex1hubcas23.st.com [10.75.90.46])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id B8A4C2C434C;
 Fri,  4 Oct 2019 15:21:09 +0200 (CEST)
Received: from SAFEX1HUBCAS24.st.com (10.75.90.95) by SAFEX1HUBCAS23.st.com
 (10.75.90.46) with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 4 Oct 2019
 15:21:09 +0200
Received: from localhost (10.201.23.97) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 4 Oct 2019 15:21:09
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
Subject: [PATCH] ARM: dts: stm32: add focaltech touchscreen on stm32mp157c-dk2
 board
Date: Fri, 4 Oct 2019 15:17:02 +0200
Message-ID: <1570195022-23327-1-git-send-email-yannick.fertre@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.201.23.97]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-04_06:2019-10-03,2019-10-04 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_062120_122793_138C9F5B 
X-CRM114-Status: GOOD (  11.29  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
YXJkLgoKU2lnbmVkLW9mZi1ieTogWWFubmljayBGZXJ0csOpIDx5YW5uaWNrLmZlcnRyZUBzdC5j
b20+Ci0tLQogYXJjaC9hcm0vYm9vdC9kdHMvc3RtMzJtcDE1N2MtZGsyLmR0cyB8IDEzICsrKysr
KysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEv
YXJjaC9hcm0vYm9vdC9kdHMvc3RtMzJtcDE1N2MtZGsyLmR0cyBiL2FyY2gvYXJtL2Jvb3QvZHRz
L3N0bTMybXAxNTdjLWRrMi5kdHMKaW5kZXggMjBlYTYwMS4uZDQ0YTdjNiAxMDA2NDQKLS0tIGEv
YXJjaC9hcm0vYm9vdC9kdHMvc3RtMzJtcDE1N2MtZGsyLmR0cworKysgYi9hcmNoL2FybS9ib290
L2R0cy9zdG0zMm1wMTU3Yy1kazIuZHRzCkBAIC02MSw2ICs2MSwxOSBAQAogCX07CiB9OwogCism
aTJjMSB7CisJdG91Y2hzY3JlZW5AMzggeworCQljb21wYXRpYmxlID0gImZvY2FsdGVjaCxmdDYy
MzYiOworCQlyZWcgPSA8MHgzOD47CisJCWludGVycnVwdHMgPSA8MiAyPjsKKwkJaW50ZXJydXB0
LXBhcmVudCA9IDwmZ3Bpb2Y+OworCQlpbnRlcnJ1cHQtY29udHJvbGxlcjsKKwkJdG91Y2hzY3Jl
ZW4tc2l6ZS14ID0gPDQ4MD47CisJCXRvdWNoc2NyZWVuLXNpemUteSA9IDw4MDA+OworCQlzdGF0
dXMgPSAib2theSI7CisJfTsKK307CisKICZsdGRjIHsKIAlzdGF0dXMgPSAib2theSI7CiAKLS0g
CjIuNy40CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
