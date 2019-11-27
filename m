Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC52E10AD83
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 11:24:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BR18F6sL2Rtd6r8Otw1V4Wsl7tn0HEc32U5nO+7/9yM=; b=MgUZY0zr3NzJk4
	9c61ireIlven23MOLnuwJ4rY9L1sw5/JLpLUlDBJofTdM0AQFI1vzkHTI/uR7kmn4tWYzUYwPdQYr
	Y3gdgiLZBGIe0jDENJ86gdxVXMKvRIWyewdcsPlRWpFLnXnAPsbNUCDdnXXoox1fwl8W9i9QwY3wN
	o1Km1HLEPUZ5hrm065bd6K3RiHPe2KA9/fYRAAdft1HKLI9RC2n5Qe8kJ3Otm+naIVVy01y1vKiR+
	cJSyoew/09D4h5rJ6kz4nafqWhzfWmzVUcbTF0Mdode/lfXjeENcTaQhXKqMyBM+jjAxwth0zGhuS
	LkiqkKIB+AxH1OspRjeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZuUf-0003dT-0s; Wed, 27 Nov 2019 10:24:21 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZuUV-0003cm-DH
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 10:24:12 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xARAMKPI028075; Wed, 27 Nov 2019 11:24:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : mime-version : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=Bmi9ZxvHiIlWxe/sSml2LTtA26zSCPWx7oIRLedeHJE=;
 b=essqUBkxbMrrIuPbpzljeVkKukn47nmTXRvV9HLBD2v3JURaDG8dBcU17MDwF7T55mn2
 b6JllkFERRYnivQyKHDjbJVbVVGySsq5FOLd0Op0sBW2459+7cto8S1eLBwclSPmsMVM
 FZj8G4xjTtpAmI2diFvD61FuJfIeDPgeBoU8Lyx0fVz1wmbn5mBW+BoOwXeaccPS3Vns
 uwqCzwJ4wpws9WKcj+HEB1jy4dtc3OhD9jk5VUEmz5O4+lqrgWwlnFfT23QnYmWsGQj6
 eZcjhorvXJf921ohtHfc6gWkezI0bez9WVTfgkhlhl2pzYSsMrXt4lDboDNyTINnG+zR uA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2whcxsb0rp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 27 Nov 2019 11:24:07 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 65C1110002A;
 Wed, 27 Nov 2019 11:24:06 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id B85732B1216;
 Wed, 27 Nov 2019 11:24:06 +0100 (CET)
Received: from localhost (10.75.127.47) by SFHDAG6NODE1.st.com (10.75.127.16)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Wed, 27 Nov 2019 11:24:05 +0100
From: Yannick Fertre <yannick.fertre@st.com>
To: Yannick Fertre <yannick.fertre@st.com>, Philippe Cornu
 <philippe.cornu@st.com>, Benjamin Gaignard <benjamin.gaignard@st.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 <dri-devel@lists.freedesktop.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH] Input: goodix: request_irq: convert gpio to irq
Date: Wed, 27 Nov 2019 11:24:05 +0100
Message-ID: <1574850245-13325-1-git-send-email-yannick.fertre@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG4NODE2.st.com (10.75.127.11) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-27_02:2019-11-27,2019-11-27 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_022411_746691_05CC2F6A 
X-CRM114-Status: GOOD (  12.06  )
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

RnJvbTogWWFubmljayBGZXJ0csOpIDx5YW5uaWNrLmZlcnRyZUBzdC5jb20+CgpDb252ZXJ0IGdw
aW8gdG8gaXJxIGlmIG5vdCBhbHJlYWR5IGRvbmUgYnkgZ3BpbyBsaWIuCgpTaWduZWQtb2ZmLWJ5
OiBZYW5uaWNrIEZlcnRyw6kgPHlhbm5pY2suZmVydHJlCi0tLQogZHJpdmVycy9pbnB1dC90b3Vj
aHNjcmVlbi9nb29kaXguYyB8IDggKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlv
bnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2lucHV0L3RvdWNoc2NyZWVuL2dvb2RpeC5jIGIv
ZHJpdmVycy9pbnB1dC90b3VjaHNjcmVlbi9nb29kaXguYwppbmRleCBiNDcwNzczLi5mMWQ5ZDVl
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2lucHV0L3RvdWNoc2NyZWVuL2dvb2RpeC5jCisrKyBiL2Ry
aXZlcnMvaW5wdXQvdG91Y2hzY3JlZW4vZ29vZGl4LmMKQEAgLTIzLDYgKzIzLDcgQEAKICNpbmNs
dWRlIDxsaW51eC9kZWxheS5oPgogI2luY2x1ZGUgPGxpbnV4L2lycS5oPgogI2luY2x1ZGUgPGxp
bnV4L2ludGVycnVwdC5oPgorI2luY2x1ZGUgPGxpbnV4L2dwaW8uaD4KICNpbmNsdWRlIDxsaW51
eC9yZWd1bGF0b3IvY29uc3VtZXIuaD4KICNpbmNsdWRlIDxsaW51eC9zbGFiLmg+CiAjaW5jbHVk
ZSA8bGludXgvYWNwaS5oPgpAQCAtMzkyLDYgKzM5MywxMyBAQCBzdGF0aWMgdm9pZCBnb29kaXhf
ZnJlZV9pcnEoc3RydWN0IGdvb2RpeF90c19kYXRhICp0cykKIAogc3RhdGljIGludCBnb29kaXhf
cmVxdWVzdF9pcnEoc3RydWN0IGdvb2RpeF90c19kYXRhICp0cykKIHsKKwlpbnQgZ3BpbzsKKwor
CWdwaW8gPSBkZXNjX3RvX2dwaW8odHMtPmdwaW9kX2ludCk7CisKKwlpZiAoZ3Bpb19pc192YWxp
ZChncGlvKSkKKwkJdHMtPmNsaWVudC0+aXJxID0gZ3Bpb190b19pcnEoZ3Bpbyk7CisKIAlyZXR1
cm4gZGV2bV9yZXF1ZXN0X3RocmVhZGVkX2lycSgmdHMtPmNsaWVudC0+ZGV2LCB0cy0+Y2xpZW50
LT5pcnEsCiAJCQkJCSBOVUxMLCBnb29kaXhfdHNfaXJxX2hhbmRsZXIsCiAJCQkJCSB0cy0+aXJx
X2ZsYWdzLCB0cy0+Y2xpZW50LT5uYW1lLCB0cyk7Ci0tIAoyLjcuNAoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
