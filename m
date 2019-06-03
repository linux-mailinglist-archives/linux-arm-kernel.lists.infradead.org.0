Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CCF632ADE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 10:32:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ggB44Fq8aca7fEJy9GtLgi94mYfwU3CiCjZYLiG/w50=; b=LzMl8epfL5L1Gh
	ufigj+MYeaYN+brEJhLxAS5KWKxq0zQSz7YrY2NEy0vuxX8keRho6BEdgbclBDblVS1tkQcE/TpgG
	Oib3PVkrxkxRuN/45nwYLAcIzHxx46sLPWp5yMpwEJ0s5FJB13WqyYZJYHYQFD+G/jQBmq4trhD+Q
	fQ87FHA6bIXcRakpeStbnzYByVA0le0vHVi9mZcmwkcWACnLLsd15HfONsqyGjdOVC+7ehuHmD155
	5sMNKQPoxt2s9E6/tblzKYTxdYStj32QxetcZK8JjJi6igW8J/7V6izRBdSpFq6BrFwPGPy3zYwZf
	E73qB19c+9O7uSx9hVTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXiNz-0006Zq-3a; Mon, 03 Jun 2019 08:32:07 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXiNr-0006Ys-HM
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 08:32:01 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x538VI0P012223; Mon, 3 Jun 2019 10:31:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : mime-version : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=E3rVaIy9kAIHI7M+214fHf8F4WB/bpg155JaSxbNFQ4=;
 b=ejkUkIvy9/n+XTOUFTHEic+5n733rjUac84ytlorYMH7sM9c1SEGoeE2tPPOaQQvObQD
 yKHW5phkhg3z/KcLKjHRxkL/a2TdIbUrf4s6fNWDUlYF2S/IksOnpjntbXPr+2J4THPh
 uwgX+OYSxOJrOde0FoQ11zD/sLBEgVriYtokLX1paw6Hn+A+yx363N61csMOvWb4d9lM
 0RC+r0JlSGZdwKRl6/TH+1121ZGTsAZETdNgu0ghxisDXIazS9WH3mLmX+n6VRk/1Qe2
 irMiT/VcNhhl9zeQweWl0/93PFNZ00UNPG5PDYzG2K/h8s8Ll/YlRpW4FoXXa3I7mT80 Jw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2sundrs730-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 03 Jun 2019 10:31:49 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id F2F8931;
 Mon,  3 Jun 2019 08:31:45 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id AE3CF2514;
 Mon,  3 Jun 2019 08:31:45 +0000 (GMT)
Received: from SAFEX1HUBCAS23.st.com (10.75.90.47) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 3 Jun 2019
 10:31:45 +0200
Received: from localhost (10.201.23.97) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 3 Jun 2019 10:31:45
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
Subject: [PATCH] drm/stm: ltdc: No message if probe
Date: Mon, 3 Jun 2019 10:31:34 +0200
Message-ID: <1559550694-14042-1-git-send-email-yannick.fertre@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.201.23.97]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-03_06:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_013159_895638_2D22CEFC 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

UHJpbnQgZGlzcGxheSBjb250cm9sbGVyIGhhcmR3YXJlIHZlcnNpb24gaW4gZGVidWcgbW9kZSBv
bmx5LgoKU2lnbmVkLW9mZi1ieTogWWFubmljayBGZXJ0csOpIDx5YW5uaWNrLmZlcnRyZUBzdC5j
b20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL3N0bS9sdGRjLmMgfCAyICstCiAxIGZpbGUgY2hhbmdl
ZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vc3RtL2x0ZGMuYyBiL2RyaXZlcnMvZ3B1L2RybS9zdG0vbHRkYy5jCmluZGV4IGE0MDg3
MGIuLjJmZTZjNGEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9zdG0vbHRkYy5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9zdG0vbHRkYy5jCkBAIC0xMjI5LDcgKzEyMjksNyBAQCBpbnQgbHRk
Y19sb2FkKHN0cnVjdCBkcm1fZGV2aWNlICpkZGV2KQogCQlnb3RvIGVycjsKIAl9CiAKLQlEUk1f
SU5GTygibHRkYyBodyB2ZXJzaW9uIDB4JTA4eCAtIHJlYWR5XG4iLCBsZGV2LT5jYXBzLmh3X3Zl
cnNpb24pOworCURSTV9ERUJVR19EUklWRVIoImx0ZGMgaHcgdmVyc2lvbiAweCUwOHhcbiIsIGxk
ZXYtPmNhcHMuaHdfdmVyc2lvbik7CiAKIAkvKiBBZGQgZW5kcG9pbnRzIHBhbmVscyBvciBicmlk
Z2VzIGlmIGFueSAqLwogCWZvciAoaSA9IDA7IGkgPCBNQVhfRU5EUE9JTlRTOyBpKyspIHsKLS0g
CjIuNy40CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
