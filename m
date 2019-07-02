Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FAD65D35F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 17:48:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=htG9AiC3niO26gdkxcQGtRgwtaI1pSQ51yKHo8ZikqY=; b=phX6x7kH+KxWEc
	eeKqNB5PrZrBep1EApT2JLBxn5F/WvvkBDbJlQWo6q3BToOzBbraOKBp4uvjOQ1crYJJXOOQBG9xB
	jw3jzGsRJS0ohGdf4+qkt4H7Firna5fNJHY+PDrGp/rvpb7qKPkiw5TgUKscRp43N5vCrt9QRTaC2
	TXpILQ9eWqHzKMYViSh4Wm5O185lS5E+jvrL1GPv337u2hr8OVqoeIDbGb8sJuglsYbyjcoRolH0r
	VEZpQUnZuph4dZY838GbbEN6TLPMf/Bo1k2EHGEWKvhGbjhrMhLOr3Hdy3BBNPeJWMuLWRfxTg0t4
	6uDItX0UcjEvymSDPcyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiL1D-00015N-Jo; Tue, 02 Jul 2019 15:48:31 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiL0h-0000to-Lw
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 15:48:01 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x62FkM2h018386; Tue, 2 Jul 2019 17:47:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=NhsrEoJveWLgOo+1joeRhmVOkkmiBIRuZljoqUTyfqA=;
 b=u37jVT5XGv1pPt6ooAENikWSafDNGybH9HPYxmvdZ1ENAqps0XOpCzUwQwh6+uoOgj7R
 pCWourv9LZH4C5Bk2dOm1gjFeTjY0/bfs8j6EdY7rqZ3Fn23LH25QPSL68UXyatCQihc
 dH89CvDrq47a8+Ehi1PVoUVkFqj9sZuyK/KkC0+7hgE3hYVISM8qdEiCP9Z6LqN2XUos
 WItGk+H2CANCGhjEVodlc/Tv1vYeoyEcWGEw2w1funzfO6HcuRrk5fPMkKHVPoViQu9z
 bf1W/BYiwoDTmHpxQeUSsbZPzBCwSO9kAehktn/zzMB9Pj5yJIoJXILNKKHBssfaH1IW 4g== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2tdwruw18b-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 02 Jul 2019 17:47:41 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 4E4843D;
 Tue,  2 Jul 2019 15:47:40 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id E7593487E;
 Tue,  2 Jul 2019 15:47:39 +0000 (GMT)
Received: from SAFEX1HUBCAS21.st.com (10.75.90.45) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 2 Jul 2019
 17:47:39 +0200
Received: from localhost (10.201.23.16) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 2 Jul 2019 17:47:39
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
Subject: [PATCH 2/3] dt-bindings: display: sii902x: Change audio mclk binding
Date: Tue, 2 Jul 2019 17:47:05 +0200
Message-ID: <1562082426-14876-3-git-send-email-olivier.moysan@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1562082426-14876-1-git-send-email-olivier.moysan@st.com>
References: <1562082426-14876-1-git-send-email-olivier.moysan@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.23.16]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-02_08:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_084800_019291_2F02C731 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As stated in SiL9022/24 datasheet, master clock is not required for I2S.
Make mclk property optional in DT bindings.

Fixes: 3f18021f43a3 ("dt-bindings: display: sii902x: Add HDMI audio bindings")

Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
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
