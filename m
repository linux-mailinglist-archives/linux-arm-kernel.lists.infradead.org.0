Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 426B7EDD0F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 11:56:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GLnj2CrqJl9HiJ7VFI+ZAkmBaeqvvhIjcfx1ncbvtAA=; b=nkxVxmofZaa+X+
	tzOHUfmHQCS3hPwQuJincCQ20OP6J6QKe5fUkWi6W9vnAgcBK+aEyU4chlYpplKOH5CfgeMtLBBkB
	IvsLLYHm88fx39DXyKrh75YZtLkvttSuH03ibIx7UqlO1Hif2BYKHSeFizCC9UZmuXTQljo8VVniX
	UOFmTfuDVjHXErB5vgs1QCqKrqJcEgmYzGv2T0Vc9dFrNta9W+BmJ6nnJ5XB3tD3cbVouBLxtU6uf
	LvcZngQ7lcETsAyC7HKFEXItg5+YN/CPH0+0RbxnSwfzWGhrxVCdQYQ+m6jC+6o7/I0NLdfwkqoxI
	nZbGrIxFPatcG8zuQf6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRa1V-0005cP-Rq; Mon, 04 Nov 2019 10:55:49 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRa1N-0005ZN-7S
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 10:55:43 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xA4AtIoX011716; Mon, 4 Nov 2019 11:55:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=EEEFNYvMlCmEOwjqHkRBm4xFsgzUd+bwPAuMghh0Las=;
 b=VM2lY3l68Z7bkEekKCLbyUHaxfESYvRc/3tyOTpmITpLWTkN09ENlkUvWgIQ509dZZKC
 f6GlI8TPskWIO2jGFcYUuHwNO+VP83TUTk2mGUAuBaZGQW1am4rp33h4Qq4XqGuUdkMQ
 VnilK2evfAJaAadOiV6Gkmq0Nv4xnW8z4uWp965JMezWc1rshiZBlXd3EmMO/IhV7psz
 OuHn9H+JMt4dWqYnH5VuHckYk/Wt8PzmetmsmQ9qFODSEaFXWEu7J0pX202MTLn4zVPx
 ZgzbZzQnMyB1Nrcg7nUEYdm6o6NgzQdRunqUyX0hL5aYL34GlJSx4mSmmJ/WVE5fNuSP jQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2w0ytchn2d-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 04 Nov 2019 11:55:36 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 7AE18100038;
 Mon,  4 Nov 2019 11:55:35 +0100 (CET)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 645B42BDA95;
 Mon,  4 Nov 2019 11:55:35 +0100 (CET)
Received: from SAFEX1HUBCAS24.st.com (10.75.90.95) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 4 Nov 2019
 11:55:35 +0100
Received: from localhost (10.201.22.141) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 4 Nov 2019 11:55:34
 +0100
From: Amelie Delaunay <amelie.delaunay@st.com>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>
Subject: [PATCH v2 0/2] STMFX pinctrl definition updates
Date: Mon, 4 Nov 2019 11:55:27 +0100
Message-ID: <20191104105529.8049-1-amelie.delaunay@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.201.22.141]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-11-04_08:2019-11-04,2019-11-04 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_025542_692320_21D7B7CA 
X-CRM114-Status: GOOD (  10.52  )
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

Since a502b343ebd0 ("pinctrl: stmfx: update pinconf settings"), pin
configuration has been fixed in STMFX pinctrl driver. Moreover, gpiolib now
fully handles "push-pull" configuration.
This series cleans up stm32mp157c-ev1 stmfx ov5640 pins use and fixes stmfx
joystick pins use otherwise joystick doesn't work.

Amelie Delaunay (2):
  ARM: dts: stm32: remove OV5640 pinctrl definition on stm32mp157c-ev1
  ARM: dts: stm32: change joystick pinctrl definition on stm32mp157c-ev1

 arch/arm/boot/dts/stm32mp157c-ev1.dts | 13 ++-----------
 1 file changed, 2 insertions(+), 11 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
