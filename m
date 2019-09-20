Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A62E5B8A91
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 07:39:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1PWV1Zk/AEHOXRL3x/fd7picymqanTOj61AjB1ClfYs=; b=SKBeLJkqvDuUIU
	XCz9ceUac4DUQrwdlcxEep8KD4v9SMYf1TQPUnzH2oRSixT/02t3ARm+0il48AJQrXgLoLzQOGKz4
	DKX6IzkWyWzUKs5lbV9vghnTUz8cO8WXY+XoOMY5jRdLE5soWQHkScyMNQtxHb7OBsqjps1q66BxH
	o1xNqhSgr52KdxaaA6VkZjYGkLCaqyrQFOAM3h/HsJbXLou+LV7Jtr12KHJnoUclgadV5hwqWKAEw
	WwHyhaLP6xaF4nVg3/1DxDl92hTKnUf2sg0L6UtYpTcIXrBNa+Ps4emDZz4zu98OZkh38p0CgViMt
	CAXAt1jKwkjMIenP6amA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBBdj-00028X-2L; Fri, 20 Sep 2019 05:39:31 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBBd9-0001uK-Pc
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 05:38:57 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8K5ZtuG010148; Fri, 20 Sep 2019 07:38:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=zBiYi7dNOMJTLdbXRroWIi9Q7ObD9twJevRTLSNm5yg=;
 b=C6Q+iNzyqotehTXKNZSE9pEBOQM+iQbl8c9i7lD/bqnjB0hIbXDtwPy/SIk6soaLvyUb
 DiTrGe0CPXqXAvet8xrSyAi4ePiXpzlzscCZdc93QmiGHW5hYO6gzvB9KtYaMjc1WQnD
 Umnmfth2DPjB9g32x6phbZelR8Xs9rAe8mjr1uNH/gPBucmU7c+8RMJgMduat0ZyUf3y
 PWf38D5U5RraeXoGBZKml6QfpGHb2GqBvFgvfnRmXeXV/dUIVgL6OEkhEvrTn9h8MbLl
 RDvdr8cwCMo4BILmGQi5j3G/lQsSgLui/BDslVtQ3kD8PhPdBEb0gHaHZ/SIFXcQ04bE Kg== 
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
 by mx08-00178001.pphosted.com with ESMTP id 2v3va18qd0-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 20 Sep 2019 07:38:41 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 2EB8752;
 Fri, 20 Sep 2019 05:38:37 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id DAFE42209BE;
 Fri, 20 Sep 2019 07:38:36 +0200 (CEST)
Received: from SAFEX1HUBCAS24.st.com (10.75.90.95) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 20 Sep
 2019 07:38:36 +0200
Received: from localhost (10.201.22.222) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 20 Sep 2019 07:38:36
 +0200
From: Christophe Roullier <christophe.roullier@st.com>
To: <robh@kernel.org>, <davem@davemloft.net>, <joabreu@synopsys.com>,
 <mark.rutland@arm.com>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <peppe.cavallaro@st.com>
Subject: [PATCH 2/5] net: ethernet: stmmac: fix warning when w=1 option is
 used during build
Date: Fri, 20 Sep 2019 07:38:14 +0200
Message-ID: <20190920053817.13754-3-christophe.roullier@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190920053817.13754-1-christophe.roullier@st.com>
References: <20190920053817.13754-1-christophe.roullier@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.22.222]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-20_01:2019-09-19,2019-09-20 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_223856_275867_4230C270 
X-CRM114-Status: GOOD (  14.21  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, andrew@lunn.ch, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 christophe.roullier@st.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBwYXRjaCBmaXggdGhlIGZvbGxvd2luZyB3YXJuaW5nOgoKd2FybmluZzogdmFyaWFibGUg
4oCYcmV04oCZIHNldCBidXQgbm90IHVzZWQgWy1XdW51c2VkLWJ1dC1zZXQtdmFyaWFibGVdCiAg
aW50IHZhbCwgcmV0OwoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0b3BoZSBSb3VsbGllciA8Y2hyaXN0
b3BoZS5yb3VsbGllckBzdC5jb20+Ci0tLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvc3RtaWNyby9z
dG1tYWMvZHdtYWMtc3RtMzIuYyB8IDYgKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRp
b25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0
L3N0bWljcm8vc3RtbWFjL2R3bWFjLXN0bTMyLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9zdG1p
Y3JvL3N0bW1hYy9kd21hYy1zdG0zMi5jCmluZGV4IDdlNjYxOTg2OGNjMS4uMTY3YTVlOTk5NjBh
IDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9zdG1pY3JvL3N0bW1hYy9kd21hYy1z
dG0zMi5jCisrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L3N0bWljcm8vc3RtbWFjL2R3bWFjLXN0
bTMyLmMKQEAgLTE4NCw3ICsxODQsNyBAQCBzdGF0aWMgaW50IHN0bTMybXAxX3NldF9tb2RlKHN0
cnVjdCBwbGF0X3N0bW1hY2VuZXRfZGF0YSAqcGxhdF9kYXQpCiB7CiAJc3RydWN0IHN0bTMyX2R3
bWFjICpkd21hYyA9IHBsYXRfZGF0LT5ic3BfcHJpdjsKIAl1MzIgcmVnID0gZHdtYWMtPm1vZGVf
cmVnOwotCWludCB2YWwsIHJldDsKKwlpbnQgdmFsOwogCiAJc3dpdGNoIChwbGF0X2RhdC0+aW50
ZXJmYWNlKSB7CiAJY2FzZSBQSFlfSU5URVJGQUNFX01PREVfTUlJOgpAQCAtMjIwLDggKzIyMCw4
IEBAIHN0YXRpYyBpbnQgc3RtMzJtcDFfc2V0X21vZGUoc3RydWN0IHBsYXRfc3RtbWFjZW5ldF9k
YXRhICpwbGF0X2RhdCkKIAl9CiAKIAkvKiBOZWVkIHRvIHVwZGF0ZSBQTUNDTFJSIChjbGVhciBy
ZWdpc3RlcikgKi8KLQlyZXQgPSByZWdtYXBfd3JpdGUoZHdtYWMtPnJlZ21hcCwgcmVnICsgU1lT
Q0ZHX1BNQ0NMUlJfT0ZGU0VULAotCQkJICAgZHdtYWMtPm9wcy0+c3lzY2ZnX2V0aF9tYXNrKTsK
KwlyZWdtYXBfd3JpdGUoZHdtYWMtPnJlZ21hcCwgcmVnICsgU1lTQ0ZHX1BNQ0NMUlJfT0ZGU0VU
LAorCQkgICAgIGR3bWFjLT5vcHMtPnN5c2NmZ19ldGhfbWFzayk7CiAKIAkvKiBVcGRhdGUgUE1D
U0VUUiAoc2V0IHJlZ2lzdGVyKSAqLwogCXJldHVybiByZWdtYXBfdXBkYXRlX2JpdHMoZHdtYWMt
PnJlZ21hcCwgcmVnLAotLSAKMi4xNy4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
