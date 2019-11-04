Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC36EDD0C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 11:56:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yR6U1mt9abpBGEGVrN/yWO/y6jH5evtirtzM2iGne5c=; b=tQp1kNkqAwqgir
	nwhMKPbSe/wb+ocONCSBS7KJ4GPdjv/tB50LIlry5cFTtwlhiU3Z0BxzHPVfsCzQJAkqykI5LIX0Y
	jqxP1TUUjAGEis/iqp0tKmk9u6zDK9tgdEt/PLQoYtDgq2tNL4QN+P6ECPt6pNn859IReGRpZh61t
	j1DJ/STvMp7gGOXCeQ9J3wRi1izVDZmzc5ddk+dJrdWzdxawpg40GxuOqcgzeJWaltPegyKm76nHL
	Gktetcqbe+zLz76bP2/SyS9n3aJq+6IS99uv7lUgzVtBMbniZTgpSpAqYYdlv1uCKOqKLCmVrYWWt
	5qHnF3MkBvXEAOMlKV6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRa1j-0005jl-Ev; Mon, 04 Nov 2019 10:56:03 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRa1O-0005ZY-SG
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 10:55:45 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xA4AtJ63011818; Mon, 4 Nov 2019 11:55:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=b8YspRAaoetqeQ0AOmzT0Wn61T1GntjuB/aZCDQVJfI=;
 b=BjdLQQ1ihUa4pmNq3LHS8oiHwfXRF2/ZE6/Veoeie1mBMskvtdsjEI+99eXuRVlcGaKX
 QJ3Vu+LAygF7ceIHCQKAvZwl1QOxfVt1L+jkSwmZzxCS8DePWTy5Os97TrEUEkMwGMNC
 4GzM8Q1mSQksmnFh595qcdZ4DYN5RNMwGJsOFfA9KBZiuXLrAq+nnePMQ7LkD0odDnVA
 u8TmAD8aAOrC1LgQkDQX3pLGaxqxfbUm42OelwYRtlfSzjzBWIx3MpAs9hcoQ3f1QqD7
 y2256RTRTTVblicJRl0rXUR73l1Wtnq2J/ZANSqSIEcL6o4Y2tWhWZyf3rNTuSJIo/Ol bg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2w0ytchn2h-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 04 Nov 2019 11:55:38 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D762010002A;
 Mon,  4 Nov 2019 11:55:37 +0100 (CET)
Received: from Webmail-eu.st.com (Safex1hubcas22.st.com [10.75.90.92])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id C5ED72BDA96;
 Mon,  4 Nov 2019 11:55:37 +0100 (CET)
Received: from SAFEX1HUBCAS24.st.com (10.75.90.95) by Safex1hubcas22.st.com
 (10.75.90.92) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 4 Nov 2019
 11:55:37 +0100
Received: from localhost (10.201.22.141) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 4 Nov 2019 11:55:36
 +0100
From: Amelie Delaunay <amelie.delaunay@st.com>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>
Subject: [PATCH v2 2/2] ARM: dts: stm32: change joystick pinctrl definition on
 stm32mp157c-ev1
Date: Mon, 4 Nov 2019 11:55:29 +0100
Message-ID: <20191104105529.8049-3-amelie.delaunay@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191104105529.8049-1-amelie.delaunay@st.com>
References: <20191104105529.8049-1-amelie.delaunay@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.22.141]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-11-04_08:2019-11-04,2019-11-04 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_025543_196710_94CE7562 
X-CRM114-Status: GOOD (  13.59  )
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
Cc: devicetree@vger.kernel.org, Amelie Delaunay <amelie.delaunay@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Pins used for joystick are all configured as input. "push-pull" is not a
valid setting for an input pin.

Fixes: a502b343ebd0 ("pinctrl: stmfx: update pinconf settings")
Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>
Signed-off-by: Amelie Delaunay <amelie.delaunay@st.com>
---
 arch/arm/boot/dts/stm32mp157c-ev1.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/stm32mp157c-ev1.dts b/arch/arm/boot/dts/stm32mp157c-ev1.dts
index 3f7fcba3a516..3789312c8539 100644
--- a/arch/arm/boot/dts/stm32mp157c-ev1.dts
+++ b/arch/arm/boot/dts/stm32mp157c-ev1.dts
@@ -220,7 +220,6 @@
 
 			joystick_pins: joystick {
 				pins = "gpio0", "gpio1", "gpio2", "gpio3", "gpio4";
-				drive-push-pull;
 				bias-pull-down;
 			};
 		};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
