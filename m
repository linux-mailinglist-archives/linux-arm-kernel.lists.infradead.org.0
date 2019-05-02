Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB08311ADF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 16:09:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pKwYyzaJHHUxn1Xg9EUhrUHTbjHls+7svMrSTJRdvHI=; b=gFSSq3ZBQQyhBg
	0WM2Boqo6FeNv3ZLcbmKkmPcI3qziKr3U8A3dIWV+MpRcN80ldNjOTRiv4hoUoUOr7IoMXRkYLvXO
	3FAh70RSnvHdWuQDwRJshcJ8UNTre7oRprTOpYZo//hEHvF895SRKcp5EqdHxwYharpuhG9dS83NV
	eqFW6VFxyJ/6yUU2fwwYh1B8GjVPvhtu5178pfAAIaKXpd2BrRoN4uaIE+NRK1/N8mN5KfwfV5WLh
	ylv+H8Niip36o0gGQMp/J0k/rIHjz1eqLgQdF1ZtP0TOA6+sfsOc94ie7w17IAHDXy1KCfas2oh13
	wwJFdKD/D2PN5SNpvtgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMCOq-0007n9-JI; Thu, 02 May 2019 14:09:24 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMCOR-0007Qs-ML
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 14:09:02 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x42Dwv1S002402; Thu, 2 May 2019 16:08:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=FVkWMnd5QCZrrAZpQ6NJ9/fjWM/X82CadAEL49V6JPA=;
 b=wZBkWjE5k8IvrxC1KUp/YkYcWWIIqHvhFnML8yz3oiWf3SBqTXDTiNcd9Jcbzqdl7009
 HCH1HYj1BtH8/JvK9PnUvWcH8L8/0SXlHAQJ1yM2OE+6mTrTxk2h+m3HJVrCQRUZywJT
 gFEli0QAc0QiwD17pDBLZV03ai98fMj/GC7kzG1wObEusnqNqN1/l/xhawdW49SBZmOc
 UILLM31en0Vm8iMhHQdr4wRhoQEsmNkTT4FHsk2V1Y05Awc+JQbBKwLszqvsTXU/Qam0
 z82vZYyqjB0rbye3La8XPRQR7C9LzUukDUX/5qD+014i9ZtXx34w+QdphgOUUM6cD75x lg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2s6xgcry0q-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Thu, 02 May 2019 16:08:50 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id AEDE641;
 Thu,  2 May 2019 14:08:48 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas23.st.com [10.75.90.46])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 787462730;
 Thu,  2 May 2019 14:08:48 +0000 (GMT)
Received: from SAFEX1HUBCAS24.st.com (10.75.90.95) by SAFEX1HUBCAS23.st.com
 (10.75.90.46) with Microsoft SMTP Server (TLS) id 14.3.439.0; Thu, 2 May 2019
 16:08:48 +0200
Received: from lmecxl0923.lme.st.com (10.48.0.237) by webmail-ga.st.com
 (10.75.90.48) with Microsoft SMTP Server (TLS) id 14.3.439.0; Thu, 2 May 2019
 16:08:47 +0200
From: Ludovic Barre <ludovic.Barre@st.com>
To: Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck
 <linux@roeck-us.net>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH V2 0/3] watchdog: stm32: add dynamic prescaler support
Date: Thu, 2 May 2019 16:08:43 +0200
Message-ID: <1556806126-15890-1-git-send-email-ludovic.Barre@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.48.0.237]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-02_08:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_070900_451954_E3B8B0C6 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Alexandre Torgue <alexandre.torgue@st.com>,
 linux-kernel@vger.kernel.org, Ludovic Barre <ludovic.barre@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-watchdog@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ludovic Barre <ludovic.barre@st.com>

This patch series updates stm32 watchdog driver on:
-use devm_watchdog_register_device
-Guenter's recommendation about return value:
set_timeout return 0 on succes, -EINVAL for "parameter out of range"
and -EIO for "could not write value to the watchdog".
Set of reload and prescaler registers are stay in start function,
because the stm32 watchdog must be enabled to write these registers.
-adds dynamic prescaler support

Ludovic Barre (3):
  watchdog: stm32: update to devm_watchdog_register_device
  watchdog: stm32: update return values recommended by watchdog kernel
    api
  watchdog: stm32: add dynamic prescaler support

 drivers/watchdog/stm32_iwdg.c | 96 ++++++++++++++++++++++++-------------------
 1 file changed, 54 insertions(+), 42 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
