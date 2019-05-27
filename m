Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ECF02B210
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 12:22:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hV0Mv2pBeOr3bxosIrnGgroA7XQPc+SRJyAtVczw23g=; b=MJslAitl0wF+7O
	1p26oh0pRMpftXDlEmvgIevz4KUEBYAT3WLUBps3xSo0Sq5qy0p0sq4xybI4QMHMnRr5xHPRiAqlf
	tg9T28T4jQV2hl3rLkzhycNvlmeIok92O7JWKDFrnQzu5XAn0dQWdtrNHRRYbzMqx8bLnUk4OFKq9
	FBud22CElXY+w/LH4drJqDeJAJIqCbu0Ui0NKu8w+a2Rex0AqjdEYn2ZyXowy/eVg3kDM3uL9uYoC
	+g30180phTdELusrwlcjv+Ffq1KSXCqMal8xSFphyfDXfktwdSCnIX78X72Jv1/3pSi7Z4zKRPX3s
	sNV3ul8SjyHbMsYZtUSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVCm8-0006lo-DU; Mon, 27 May 2019 10:22:40 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVClR-0006Gc-Q5
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 10:22:09 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4RAGdv9031349; Mon, 27 May 2019 12:21:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : mime-version : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=ixDf88IcNb3TU6tNgq8bjWEyDdaEJ144CZTxviT3UTE=;
 b=ff8ILc4ioPMsKqkyweSlcBLsWP3MVx7APoWrr8IMFcUnhQbUOuM2cSK01jfzckrRQ1P3
 zPxU1nT7zO+zDGVsWWXKJFTD44GvrXet2j92zvpt0KVP6IL0QAnCbl5Amb26cx42FGLn
 PnlqIWbZ84Axixb93FC6KYocoPJ2V8J0yTda2eYpj2dsn1y0LZVIYqYknBlaWeJ0vI0c
 t/pm1I8WOT1U82e2h4eiizrCIWdso8nk3tmOCxkrl471FgxRc9gKBFos8alVZkxI10f8
 7FVl3dipDCqPhYVREzJd6YTFhU8UyVGdDuwpuhxNGoBAjXytNIT4M4SHcpZSNNJVDlNS kA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2sptu9jjhg-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 27 May 2019 12:21:47 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 636BB31;
 Mon, 27 May 2019 10:21:46 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 347112804;
 Mon, 27 May 2019 10:21:46 +0000 (GMT)
Received: from SAFEX1HUBCAS23.st.com (10.75.90.47) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 27 May
 2019 12:21:46 +0200
Received: from localhost (10.201.23.97) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 27 May 2019 12:21:45
 +0200
From: =?UTF-8?q?Yannick=20Fertr=C3=A9?= <yannick.fertre@st.com>
To: Andrzej Hajda <a.hajda@samsung.com>, Laurent Pinchart
 <Laurent.pinchart@ideasonboard.com>,
 David Airlie <airlied@linux.ie>, "Daniel Vetter" <daniel@ffwll.ch>,
 Heiko Stuebner <heiko@sntech.de>, Sam Ravnborg <sam@ravnborg.org>,
 Yannick Fertre <yannick.fertre@st.com>, Nickey
 Yang <nickey.yang@rock-chips.com>, Philippe Cornu <philippe.cornu@st.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>, Vincent Abriou
 <vincent.abriou@st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 <dri-devel@lists.freedesktop.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v1 0/2] dw-mipi-dsi: add power on & off optional phy ops and
 update stm
Date: Mon, 27 May 2019 12:21:37 +0200
Message-ID: <1558952499-15418-1-git-send-email-yannick.fertre@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.201.23.97]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-27_07:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_032158_804789_58E91680 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

VGhlc2UgcGF0Y2hlcyBmaXggYSBidWcgY29uY2VybmluZyBhbiBhY2Nlc3MgaXNzdWUgdG8gZGlz
cGxheSBjb250cm9sZXIgKGx0ZGMpCnJlZ2lzdGVycy4KSWYgdGhlIHBoeXNpY2FsIGxheWVyIG9m
IHRoZSBEU0kgaXMgc3RhcnRlZCB0b28gZWFybHkgdGhlbiB0aGUgZmlmbyBEU0kgYXJlIGZ1bGwK
dmVyeSBxdWlja2x5IHdoaWNoIGltcGxpZXMgbHRkYyByZWdpc3RlcidzIGFjY2VzcyBoYW5nIHVw
LiBUbyBhdm9pZCB0aGlzCnByb2JsZW0sIGl0IGlzIG5lY2Vzc2FyeSB0byBzdGFydCB0aGUgRFNJ
IHBoeXNpY2FsIGxheWVyIG9ubHkgd2hlbiB0aGUgYnJpZGdlCmlzIGVuYWJsZS4KCllhbm5pY2sg
RmVydHLDqSAoMik6CiAgZHJtL2JyaWRnZS9zeW5vcHN5czogZHNpOiBhZGQgcG93ZXIgb24vb2Zm
IG9wdGlvbmFsIHBoeSBvcHMKICBkcm0vc3RtOiBkc2k6IGFkZCBwb3dlciBvbi9vZmYgcGh5IG9w
cwoKIGRyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctbWlwaS1kc2kuYyB8ICA4ICsr
KysrKysrCiBkcml2ZXJzL2dwdS9kcm0vc3RtL2R3X21pcGlfZHNpLXN0bS5jICAgICAgICAgfCAy
MSArKysrKysrKysrKysrKysrKysrKy0KIGluY2x1ZGUvZHJtL2JyaWRnZS9kd19taXBpX2RzaS5o
ICAgICAgICAgICAgICB8ICAyICsrCiAzIGZpbGVzIGNoYW5nZWQsIDMwIGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkKCi0tCjIuNy40CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
