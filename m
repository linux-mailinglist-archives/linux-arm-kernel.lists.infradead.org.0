Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17D2D1ADBC6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 13:00:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=t8f607L9NwfmsHHm66jbV1QUwnY9xHAmFCl+9fXaViM=; b=BFYfL8/482fSCD
	gg5aIDpblTnVxiyZ76CagqdHbOaJwrtOd+hWPM1Xmei6zbfLppS5nyq6zw2L0M1Xvnpv2rxfop5mI
	Vb6IzE8lx1RJV5o1NrbqHBkoFYhrOdrBtgknPo9KNxqbGHwlHkWq1XHTg8Hxvb/TiqOyIYTZDxTHz
	I9uIcffLUK35gwB4KvkhI5ai14pMcvGnvOP0JNpxrkEY4NI7kog5RsXhwicufYxz+qwuJhKL4qHYZ
	SkEovV+D+1OTAuOU06LM7FIpK3odzIWMBwJy88iXXkaafEt1hYPjrgNOQtX6/voGM+hErOl6MV0cA
	dWa4xJTjbaL5J4AuBuWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPOjJ-0008Oe-Sw; Fri, 17 Apr 2020 11:00:17 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPOjB-0007jE-RM
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 11:00:11 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03HApuxE031127; Fri, 17 Apr 2020 13:00:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : content-type : content-id :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=iaKOkD8P3V9vzBfI10Q5OH02fO1tCp/xIClsudvRayc=;
 b=kOpIDyNRXv1p8pqXGWI7PldoSyhd4u6b0FxZR5CFlmWbnrikSyJXxIt8iJ8hVdNI9afq
 qKLukiSAtC+Am7s9cIlFGh4Pww9aLkQ3vfYi0QjcMNDp88THJHvzJ6zQLkMXNoA1me4o
 LLWYJ51WOea3Kx1wX3/2UtFx5y/GyONtWWzLl20dye/MsC5y8wAVn8+bIPyYa+rWrA/9
 fHdlbc+RXk5kl4OwaCFFwLjA8azl2kKhWgTjAwkkACwSE5pRxIQolU8a5URZop4ASK/P
 8iQY6KqAFh19w7Gb9NkxLJ7kdzWOsMZMIIvy+af+wRhK3Rjj5UNBS9ly8wGKCZ4di8n8 zw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30dn7610r0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 17 Apr 2020 13:00:06 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 7F1EE100034;
 Fri, 17 Apr 2020 13:00:05 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag6node3.st.com [10.75.127.18])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 738A82AC2CA;
 Fri, 17 Apr 2020 13:00:05 +0200 (CEST)
Received: from SFHDAG6NODE2.st.com (10.75.127.17) by SFHDAG6NODE3.st.com
 (10.75.127.18) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 17 Apr
 2020 13:00:04 +0200
Received: from SFHDAG6NODE2.st.com ([fe80::a56f:c186:bab7:13d6]) by
 SFHDAG6NODE2.st.com ([fe80::a56f:c186:bab7:13d6%20]) with mapi id
 15.00.1347.000; Fri, 17 Apr 2020 13:00:05 +0200
From: Patrice CHOTARD <patrice.chotard@st.com>
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
 "khilman@baylibre.com" <khilman@baylibre.com>
Subject: [GIT PULL] STi DT update for v5.8 round 1
Thread-Topic: [GIT PULL] STi DT update for v5.8 round 1
Thread-Index: AQHWFKdZVmv/dV1PmE+m2tl7Ft8Xag==
Date: Fri, 17 Apr 2020 11:00:05 +0000
Message-ID: <4b0c02e7-a247-50c0-d729-88d16b9dd7fd@st.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.47]
Content-ID: <EB92C33EAF915540AD3B254771BB42AC@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-17_03:2020-04-17,
 2020-04-17 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_040010_182037_E0BDF0F2 
X-CRM114-Status: GOOD (  14.41  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Alain VOLMAT <alain.volmat@st.com>, "soc@kernel.org" <soc@kernel.org>,
 "arm@kernel.org" <arm@kernel.org>, Patrice CHOTARD <patrice.chotard@st.com>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd, Olof, Kevin

Please find STi dt update for v5.8 round 1:


The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/pchotard/sti.git sti-dt-for-v5.8-round1

for you to fetch changes up to 7f21a85085b7211ec1d1583d10912ad272ab76bc:

  dts: arm: stih407-family: remove duplicated rng nodes (2020-04-17 10:17:54 +0200)

----------------------------------------------------------------
STi DT fixes:
- Remove duplicated rng node in stih407-family.dtsi
- Fix complain about IRQ_TYPE_NONE usage in stih418.dtsi

----------------------------------------------------------------
Alain Volmat (2):
      dts: arm: stih418: Fix complain about IRQ_TYPE_NONE usage
      dts: arm: stih407-family: remove duplicated rng nodes

 arch/arm/boot/dts/stih407-family.dtsi | 14 --------------
 arch/arm/boot/dts/stih418.dtsi        |  8 ++++----
 2 files changed, 4 insertions(+), 18 deletions(-)
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
