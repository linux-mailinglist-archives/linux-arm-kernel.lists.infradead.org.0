Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2C4C70503
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 18:06:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zwdXo5ayPF3Op46zOng6397wOOi19NoGVyhmPIlgc/o=; b=E6/sKIp+GQgIzY
	hF/55aOgwbgw78UidzvA/KfhXo0Jnknayq3o6wXuNutMA0Gb2WtuOrPq9hX4Al402yXnJGtBfGmk/
	pS3iMwARXLXan/zFC3gbKEMt+Q2KfOmL1VIIvdI/Bwbh7qA3nqyfkLbWhD+9iW4kIiOz3/BytjOK/
	AWzys/tD9fdkZMPZug8CtmW+oXRKiodlosaaE7AYvVYC2Js2F9vfGGXLX/OA8tnlrWXki00dpuRX8
	Usz6vjgbm/ybufz75qh6nsCByh3O6Dw3BZAXVOHbQa9pS/xqMwCAdA932GnhZwr7xWQD5KV1T7inQ
	5S0VsgaJRuHUpgwR5Esg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpapm-0000jF-3K; Mon, 22 Jul 2019 16:06:42 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpapV-0000hf-75
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 16:06:27 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6MG1ITI002144; Mon, 22 Jul 2019 18:06:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=d7z0bc5ddIegrEON9PA826gu/aOX90pz7EYmNLgF1Eg=;
 b=XVkDOxOhGfHnkorsYJLRrlA5ooG84J//7fcFWzDNt/fbRXjIAludfLutY7Hse+BIRoYj
 zAFhgeWo9qYpisJwcXsmHNJkMMx5QqsknzTnW6qUNhKGmWlEMdgd1pB8ZSDLv3Hxvymz
 XvdO4Z03mO3OEnuupt2zkBQLQMRdkTO2ZuxyvVyEEGAUgG/NQZfAp7VcqVZrhsHSl55n
 x4mEh3NGr6sUi0rWohXJuDi8bBhycWjWe8MMnDB34yScZUxH9yQFqMAAfptepbDqyn7Y
 2l+Vn6vdh0bhvryI0f/zXTjELNd8JwKPGBHGo/uifBCzvbiNe2+gFKeEU8QRHAFYUQfj zg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2tuw7w391e-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 22 Jul 2019 18:06:05 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id F02D838;
 Mon, 22 Jul 2019 16:06:04 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas23.st.com [10.75.90.46])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id C484652BB;
 Mon, 22 Jul 2019 16:06:04 +0000 (GMT)
Received: from SAFEX1HUBCAS21.st.com (10.75.90.45) by SAFEX1HUBCAS23.st.com
 (10.75.90.46) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 22 Jul
 2019 18:06:04 +0200
Received: from localhost (10.201.23.16) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 22 Jul 2019 18:06:04
 +0200
From: Olivier Moysan <olivier.moysan@st.com>
To: <a.hajda@samsung.com>, <narmstrong@baylibre.com>,
 <Laurent.pinchart@ideasonboard.com>, <jonas@kwiboo.se>,
 <jernej.skrabec@siol.net>, <airlied@linux.ie>, <daniel@ffwll.ch>,
 <dri-devel@lists.freedesktop.org>, <linux-kernel@vger.kernel.org>,
 <benjamin.gaignard@st.com>, <alexandre.torgue@st.com>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-stm32@st-md-mailman.stormreply.com>, <olivier.moysan@st.com>,
 <jsarha@ti.com>, <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <devicetree@vger.kernel.org>
Subject: [PATCH v2 2/3] dt-bindings: display: sii902x: Change audio mclk
 binding
Date: Mon, 22 Jul 2019 18:05:59 +0200
Message-ID: <1563811560-29589-3-git-send-email-olivier.moysan@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563811560-29589-1-git-send-email-olivier.moysan@st.com>
References: <1563811560-29589-1-git-send-email-olivier.moysan@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.23.16]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-22_12:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_090625_709808_67022F03 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As stated in SiL9022/24 datasheet, master clock is not required for I2S.
Make mclk property optional in DT bindings.

Fixes: 3f18021f43a3 ("dt-bindings: display: sii902x: Add HDMI audio bindings")

Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
Reviewed-by: Jyri Sarha <jsarha@ti.com>
Acked-by: Andrzej Hajda <a.hajda@samsung.com>
---
 Documentation/devicetree/bindings/display/bridge/sii902x.txt | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/sii902x.txt b/Documentation/devicetree/bindings/display/bridge/sii902x.txt
index 2df44b7d3821..6e14e087c0d0 100644
--- a/Documentation/devicetree/bindings/display/bridge/sii902x.txt
+++ b/Documentation/devicetree/bindings/display/bridge/sii902x.txt
@@ -26,9 +26,8 @@ Optional properties:
 	- clocks: phandle and clock specifier for each clock listed in
            the clock-names property
 	- clock-names: "mclk"
-	   Describes SII902x MCLK input. MCLK is used to produce
-	   HDMI audio CTS values. This property is required if
-	   "#sound-dai-cells"-property is present. This property follows
+	   Describes SII902x MCLK input. MCLK can be used to produce
+	   HDMI audio CTS values. This property follows
 	   Documentation/devicetree/bindings/clock/clock-bindings.txt
 	   consumer binding.
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
