Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E53A74D35
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 13:37:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=j/YCmyxoa+lZAz8iA5Wow8xXHoP+wPQ0QaKg9HyMhmE=; b=fyrXqIddfEE0Yo
	hAHnVqAFclYmrsarKyA2V39/33DQEt4AyLOjgcRugysGbfLLRpJc2xeaHtrbBEgf4NjEjv/JiDAvJ
	fLMxgBE4BW0Ucacfg9+McwAIu+KGhDweB3n5NgSnY/9ryRY5jANjxxD8vXkfKBmXOl95HXWNUPUXA
	n1KI6hlmrwoGORFNLWgedZXSfMaHlf3FoWWKqd2TmNKYSPsS86HIkBPwLXbUrAmoLadMuMtFcqk1W
	v2blyb1s471ihljZfhYpyKeOEjwQFQpd4bdehl4wbHPHZuq8Baxi2KXx1+uTjdYdygskLczwyJBuv
	zO5OpI5FRZHMt2oUKK6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqc3y-0005tj-2H; Thu, 25 Jul 2019 11:37:34 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqc3n-0005sV-UF
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 11:37:25 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6PBauCD016931; Thu, 25 Jul 2019 13:37:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=mUqJHmLzQrt2mbDOnM5cVdOaFubBSHL/hq22+APxamY=;
 b=SkdL9PBs9NNzqnt2E98n6EXCju4Rl2ZMHruo1yPogzuhxGrKP+wCyTbz5GXj8QRGI+WL
 /Wfod0uAW6Wc98jPeSHysY+GEzfVjKcMfKrdi4ebwpYCZG3tt+NaVEWyqQWtNkr0j7fa
 az1daSsDeyYTuzdeXAH5wXVW1h7eOe+Qp7TFQz3AOzho/8k/6O4vrAHarz3nEDhOHFqa
 SL2QSvKtiIKhK/MnD1WpIaCNcNFwDwpnNW/8hgDcAJM1m/Xi6F/rcWx+Mccv3HF3g+QV
 qJCzi+a2d2JzCAhbkoLVGZ/xl3WNka8SOkoC1PaecjEQaYkCZ7BQ22012xrjVT6r4lXb KQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2tx6043f6e-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Thu, 25 Jul 2019 13:37:16 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 87B4831;
 Thu, 25 Jul 2019 11:37:15 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 604402B4D;
 Thu, 25 Jul 2019 11:37:15 +0000 (GMT)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.93) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.439.0; Thu, 25 Jul
 2019 13:37:15 +0200
Received: from localhost (10.201.20.5) by Webmail-ga.st.com (10.75.90.48) with
 Microsoft SMTP Server (TLS) id 14.3.439.0;
 Thu, 25 Jul 2019 13:37:14 +0200
From: Amelie Delaunay <amelie.delaunay@st.com>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>
Subject: [PATCH 0/2] STMFX GPIO consumers update
Date: Thu, 25 Jul 2019 13:36:45 +0200
Message-ID: <1564054607-2028-1-git-send-email-amelie.delaunay@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.201.20.5]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-25_04:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_043724_333265_77976B69 
X-CRM114-Status: GOOD (  10.08  )
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
Cc: devicetree@vger.kernel.org, Amelie Delaunay <amelie.delaunay@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series depends on a STMFX pinctrl driver update
(https://lkml.org/lkml/2019/7/25/536).
Now, STMFX GPIO consumers can use standard GPIO bindings.

Alexandre Torgue (2):
  ARM: dts: stm32: remove OV5640 pinctrl definition on stm32mp157c-ev1
  ARM: dts: stm32: change pinctrl definition for joystick pins on
    stm32mp157c-ev1

 arch/arm/boot/dts/stm32mp157c-ev1.dts | 13 ++-----------
 1 file changed, 2 insertions(+), 11 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
