Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54151EDCDF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 11:51:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pKlKEaWkG8C1Lt5AktBd2DY+7cPxn4kI9Y8Gknh+SzI=; b=DJAt+zADf6kpe2
	WZ0MGuVjiJJE2gpygMIwdxFKVbd/Q6+TiMffUWlq8HzA/5odaUn8825eBjKZh6fC/QB5puzeX8cec
	22xoJ8aYCD3q8UkLSdWI6Ukyy8+Nu28NCG4cRQJjmL5KlsTZa586uqatYyybKAEfFn7xm+pDlZiuY
	Ue52UEvDoMnKTi53z7rqZFZg1B3CI8z/ktrNMueFGGWks+o/axu6dWigZP6DnoE1mdD2yfYeeAyrP
	yg5Vv2pQdf/QR7Te8DBQ/PsRxIDJy33ZfvzAs9rsZ+NneiRK1jMdD1rO8/6sA/MXd6QC+BebXk68S
	prKr2gfOmrHJBQpj7Pqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRZxE-0003Ys-6s; Mon, 04 Nov 2019 10:51:24 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRZx7-0003YP-Jl
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 10:51:19 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xA4AonqB008086; Mon, 4 Nov 2019 11:51:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=Qaurhduesnw25w0jh3pIp/yKxoZ09ZwN/xuDw+l7BNo=;
 b=MDi01UsaPAO8xz8ft6zNnwdNE5PplDfS44Pz4LtEZhurX/UMtGwpBALwoTVtceYbxtZB
 fuJWU5XfdN5fn0JvoZTdL5hipFgSWtcXh3Hn8ZsldHmNZ8Ebhlbs2kVJ9R89oVSjkJy6
 oNF5gppFiaNOieDmc4Lwo2OPoBWBgab5lNiWeL4qL9W5lVtKY0vJMKF5JQkjgUMvd1sQ
 i/3ie0JVmeygrKmHufnYpqE530wbY/p5nMIcID4yiCIH/pA/MKUnC5DE0HEZmbaK8BQ0
 b2LDp4twHDFT0C4FZHEMFlaAxE5w10/IhV5PXsy3Ylm8S2Mr9imz/VFbE+rius8Werdv Ew== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2w0ytchmh6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 04 Nov 2019 11:51:05 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id B21BC100034;
 Mon,  4 Nov 2019 11:51:04 +0100 (CET)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 954D62BDA87;
 Mon,  4 Nov 2019 11:51:04 +0100 (CET)
Received: from SAFEX1HUBCAS21.st.com (10.75.90.45) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 4 Nov 2019
 11:51:04 +0100
Received: from localhost (10.201.22.222) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 4 Nov 2019 11:51:03
 +0100
From: Christophe Roullier <christophe.roullier@st.com>
To: <robh@kernel.org>, <davem@davemloft.net>, <joabreu@synopsys.com>,
 <mark.rutland@arm.com>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <peppe.cavallaro@st.com>
Subject: [PATCH V2 1/1] net: ethernet: stmmac: drop unused variable in
 stm32mp1_set_mode()
Date: Mon, 4 Nov 2019 11:51:00 +0100
Message-ID: <20191104105100.4288-1-christophe.roullier@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.201.22.222]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-11-04_07:2019-11-04,2019-11-04 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_025117_948754_9ED2639B 
X-CRM114-Status: GOOD (  14.68  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, andrew@lunn.ch, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 christophe.roullier@st.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QnVpbGRpbmcgd2l0aCBXPTEgKGNmLnNjcmlwdHMvTWFrZWZpbGUuZXh0cmF3YXJuKSBvdXRwdXRz
Ogp3YXJuaW5nOiB2YXJpYWJsZSDigJhyZXTigJkgc2V0IGJ1dCBub3QgdXNlZCBbLVd1bnVzZWQt
YnV0LXNldC12YXJpYWJsZV0KCkRyb3AgdGhlIHVudXNlZCAncmV0JyB2YXJpYWJsZS4KClNpZ25l
ZC1vZmYtYnk6IENocmlzdG9waGUgUm91bGxpZXIgPGNocmlzdG9waGUucm91bGxpZXJAc3QuY29t
PgoKLS0tClYyOiB1cGRhdGUgY29tbWl0IG1lc3NhZ2Ugd2l0aCBNYXJjIEdvbnphbGV6IHJlY29t
bWVuZGF0aW9uCi0tLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvc3RtaWNyby9zdG1tYWMvZHdtYWMt
c3RtMzIuYyB8IDYgKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L3N0bWljcm8vc3Rt
bWFjL2R3bWFjLXN0bTMyLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9zdG1pY3JvL3N0bW1hYy9k
d21hYy1zdG0zMi5jCmluZGV4IDRlZjA0MWJkZjZhMS4uNTk1YWYyZWM4OWZiIDEwMDY0NAotLS0g
YS9kcml2ZXJzL25ldC9ldGhlcm5ldC9zdG1pY3JvL3N0bW1hYy9kd21hYy1zdG0zMi5jCisrKyBi
L2RyaXZlcnMvbmV0L2V0aGVybmV0L3N0bWljcm8vc3RtbWFjL2R3bWFjLXN0bTMyLmMKQEAgLTE3
NSw3ICsxNzUsNyBAQCBzdGF0aWMgaW50IHN0bTMybXAxX3NldF9tb2RlKHN0cnVjdCBwbGF0X3N0
bW1hY2VuZXRfZGF0YSAqcGxhdF9kYXQpCiB7CiAJc3RydWN0IHN0bTMyX2R3bWFjICpkd21hYyA9
IHBsYXRfZGF0LT5ic3BfcHJpdjsKIAl1MzIgcmVnID0gZHdtYWMtPm1vZGVfcmVnOwotCWludCB2
YWwsIHJldDsKKwlpbnQgdmFsOwogCiAJc3dpdGNoIChwbGF0X2RhdC0+aW50ZXJmYWNlKSB7CiAJ
Y2FzZSBQSFlfSU5URVJGQUNFX01PREVfTUlJOgpAQCAtMjExLDggKzIxMSw4IEBAIHN0YXRpYyBp
bnQgc3RtMzJtcDFfc2V0X21vZGUoc3RydWN0IHBsYXRfc3RtbWFjZW5ldF9kYXRhICpwbGF0X2Rh
dCkKIAl9CiAKIAkvKiBOZWVkIHRvIHVwZGF0ZSBQTUNDTFJSIChjbGVhciByZWdpc3RlcikgKi8K
LQlyZXQgPSByZWdtYXBfd3JpdGUoZHdtYWMtPnJlZ21hcCwgcmVnICsgU1lTQ0ZHX1BNQ0NMUlJf
T0ZGU0VULAotCQkJICAgZHdtYWMtPm9wcy0+c3lzY2ZnX2V0aF9tYXNrKTsKKwlyZWdtYXBfd3Jp
dGUoZHdtYWMtPnJlZ21hcCwgcmVnICsgU1lTQ0ZHX1BNQ0NMUlJfT0ZGU0VULAorCQkgICAgIGR3
bWFjLT5vcHMtPnN5c2NmZ19ldGhfbWFzayk7CiAKIAkvKiBVcGRhdGUgUE1DU0VUUiAoc2V0IHJl
Z2lzdGVyKSAqLwogCXJldHVybiByZWdtYXBfdXBkYXRlX2JpdHMoZHdtYWMtPnJlZ21hcCwgcmVn
LAotLSAKMi4xNy4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
