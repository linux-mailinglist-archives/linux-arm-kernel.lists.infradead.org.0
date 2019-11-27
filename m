Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F6E110AD84
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 11:24:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=T0G4W+PxHXrEvwR5U8GtUGqAhquE6sEireIfr1ytdm4=; b=J5Qx+zNUiwKb1e
	Nz3Z0ThLuFcX1K+60+mfxkwewQ9Mb91bHLHJvXYfBQ55u1wZTvOUpKiQeBZoFH2XDHlQlUm5yq5X6
	qr8NhS99NdP5FblGjy9Cf0QPjkPkJ8D1yYbGckKWtloZgCcxgDwfcYtBExoqM7t37PANiJidq2L9X
	mXJ1234ADV8jIYxQreGtttJb8t5/fz0XaQrKomNKOdn0y0oik4i68X+9cuMmZmMrnMP/7+fPznTFh
	KC3PPmVvBLlZo1g+opWxgq0Iy11RdPyC3LLRI/A49Wj9g7Q3DWY6YKdjx98J9WIup2OD+6K7MtvFA
	u0eyXdYBZ2vw9FDx61hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZuUu-0003on-HP; Wed, 27 Nov 2019 10:24:36 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZuUf-0003jh-2H
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 10:24:22 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xARAMKPL028075; Wed, 27 Nov 2019 11:24:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : mime-version : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=NGFn1INSjiFml8tyG7QtE320FjzT4hxnP0D7Gm8LUjM=;
 b=uME+JoZ+//t/DS+f6MAZex+Z9TXISsVsn5lhbai1DelE4ii2Ew9vpIylgLi6hfjVKvI4
 ZmjyIfAzdSlG11yX8kQVXhk3bss4hHlWY8sdJmtkax+oBFMs138y3dU4XcN1dHBzahUS
 pJ6v6phHMhlHkBeZ/437466BYpEzIWWCriT1LzEFFunp/1tUsdbBW97PsWQjPyeWldOj
 OSuZfXTcZ5m/0rOBCq0QxhLaLPr7/hYJpawKA5Andlix/2ajYuSBGNRGZ9fPQ28U8U+0
 TeFyQpcwDWy2xXlakHz+JDNT0hBm/daX3tStKgkJRXWq9uIGiPNuU/CctC1V0xDlnWB5 iw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2whcxsb0sj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 27 Nov 2019 11:24:17 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 4E46010002A;
 Wed, 27 Nov 2019 11:24:16 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id A1EF82B1218;
 Wed, 27 Nov 2019 11:24:16 +0100 (CET)
Received: from localhost (10.75.127.45) by SFHDAG6NODE1.st.com (10.75.127.16)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Wed, 27 Nov 2019 11:24:15 +0100
From: Yannick Fertre <yannick.fertre@st.com>
To: Yannick Fertre <yannick.fertre@st.com>, Philippe Cornu
 <philippe.cornu@st.com>, Benjamin Gaignard <benjamin.gaignard@st.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 <dri-devel@lists.freedesktop.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH] Input: goodix - support gt9147 touchpanel
Date: Wed, 27 Nov 2019 11:24:14 +0100
Message-ID: <1574850254-13381-1-git-send-email-yannick.fertre@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG1NODE3.st.com (10.75.127.3) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-27_02:2019-11-27,2019-11-27 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_022421_404637_991610E0 
X-CRM114-Status: GOOD (  12.16  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogWWFubmljayBGZXJ0csOpIDx5YW5uaWNrLmZlcnRyZUBzdC5jb20+CgpBZGQgc3VwcG9y
dCBmb3IgaXQgYnkgYWRkaW5nIGNvbXBhdGlibGUgYW5kIHN1cHBvcnRlZCBjaGlwIGRhdGEKKGRl
ZmF1bHQgc2V0dGluZ3MgdXNlZCkuClRoZSBjaGlwIGRhdGEgb24gR1Q5MTQ3IGlzIHNpbWlsYXIg
dG8gR1Q5MTIsIGxpa2UKLSBjb25maWcgZGF0YSByZWdpc3RlciBoYXMgMHg4MDQ3IGFkZHJlc3MK
LSBjb25maWcgZGF0YSByZWdpc3RlciBtYXggbGVuIGlzIDI0MAotIGNvbmZpZyBkYXRhIGNoZWNr
c3VtIGhhcyA4LWJpdAoKU2lnbmVkLW9mZi1ieTogWWFubmljayBGZXJ0cmUgPHlhbm5pY2suZmVy
dHJlQHN0LmNvbT4KLS0tCiBkcml2ZXJzL2lucHV0L3RvdWNoc2NyZWVuL2dvb2RpeC5jIHwgMSAr
CiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2lu
cHV0L3RvdWNoc2NyZWVuL2dvb2RpeC5jIGIvZHJpdmVycy9pbnB1dC90b3VjaHNjcmVlbi9nb29k
aXguYwppbmRleCBmYjQzYWE3Li5iNDcwNzczIDEwMDY0NAotLS0gYS9kcml2ZXJzL2lucHV0L3Rv
dWNoc2NyZWVuL2dvb2RpeC5jCisrKyBiL2RyaXZlcnMvaW5wdXQvdG91Y2hzY3JlZW4vZ29vZGl4
LmMKQEAgLTEwNDUsNiArMTA0NSw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lk
IGdvb2RpeF9vZl9tYXRjaFtdID0gewogCXsgLmNvbXBhdGlibGUgPSAiZ29vZGl4LGd0OTI3MSIg
fSwKIAl7IC5jb21wYXRpYmxlID0gImdvb2RpeCxndDkyOCIgfSwKIAl7IC5jb21wYXRpYmxlID0g
Imdvb2RpeCxndDk2NyIgfSwKKwl7IC5jb21wYXRpYmxlID0gImdvb2RpeCxndDkxNDciLH0sCiAJ
eyB9CiB9OwogTU9EVUxFX0RFVklDRV9UQUJMRShvZiwgZ29vZGl4X29mX21hdGNoKTsKLS0gCjIu
Ny40CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
