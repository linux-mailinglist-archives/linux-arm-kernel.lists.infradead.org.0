Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A27CE853B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 11:15:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1PWV1Zk/AEHOXRL3x/fd7picymqanTOj61AjB1ClfYs=; b=Wv7ZgREPjSbB12
	t8lz0IpzavUhz8hzMU7oZSTH4C0WU+0J5no/AKhQ4JrxThBIU42fZtMhJjysKRsLwj8PM+rE3Iw6U
	vsvD5ZNkTgv2VVwVyO6LBm8ry4PLqbI3C6+1k7ATEAzUHBKgl33jCmq+ZkeaArUICQA8WtG2VPtjV
	CIC9lH6EfvIcAtqpWHTAJ5k1BF2iTPV/6wEWgGCWbUIhl6JDamwBYcLBLlWONpDR115oREcUOokoO
	LcJYyhaK/BYAkvyni+Hlb+MtaDJBUir19cp+cPbr7QKnPi9J4QNeqbBdzdNqfjQ+hdCD/CxplpYoY
	Oa/kCgG8ljqnOtuGQbRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPOX0-0000XN-3U; Tue, 29 Oct 2019 10:15:18 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPOWn-0007uq-F2
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 10:15:07 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9TACYMr029429; Tue, 29 Oct 2019 11:14:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=zBiYi7dNOMJTLdbXRroWIi9Q7ObD9twJevRTLSNm5yg=;
 b=T5hv/RHE9G72p/h2wm+cxxQ88edMTRYoaVaHpL3wGo0zYYb9ssrGajg5UwABOANwSqbH
 F7i/+2fXCm/2H5mJun87sWsRhN4F3VIyKPKRnb1Duxn0RQ9m0fsMZQQmhtFGqp8yonL4
 HOXT5ac4oXredrj3uf2ZJkzhHNY5Kv6wtZuMycuGn5amcOzToQS6vlrx33AVDrJAakhy
 PTaPGxbyun4PhlhuHBS5dRTO/LS//bjmYjQyTVxumx4fSZ1BTxZI3oR/AnWQyHwea6H/
 q1HWDrz6SrlVxEGcyJJZRFMc7OSxOnuLOV9KkWTNeOVARScu123YB6wUqXS/5SGe+J4Y Cw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2vvb98f4ax-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 29 Oct 2019 11:14:54 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A9ACC10002A;
 Tue, 29 Oct 2019 11:14:52 +0100 (CET)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 9C14B2B28D8;
 Tue, 29 Oct 2019 11:14:52 +0100 (CET)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.93) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 29 Oct
 2019 11:14:52 +0100
Received: from localhost (10.201.22.222) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 29 Oct 2019 11:14:51
 +0100
From: Christophe Roullier <christophe.roullier@st.com>
To: <robh@kernel.org>, <davem@davemloft.net>, <joabreu@synopsys.com>,
 <mark.rutland@arm.com>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <peppe.cavallaro@st.com>
Subject: [net: ethernet: stmmac: some fixes and optimizations 2/5] net:
 ethernet: stmmac: fix warning when w=1 option is used during build
Date: Tue, 29 Oct 2019 11:14:38 +0100
Message-ID: <20191029101441.17290-3-christophe.roullier@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191029101441.17290-1-christophe.roullier@st.com>
References: <20191029101441.17290-1-christophe.roullier@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.22.222]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-29_03:2019-10-28,2019-10-29 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_031505_867928_35ABE974 
X-CRM114-Status: GOOD (  14.93  )
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
