Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 300C91ADB9C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 12:52:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=t8f607L9NwfmsHHm66jbV1QUwnY9xHAmFCl+9fXaViM=; b=fmeosfhAgvPWKP
	zzZisxflUfHMsP5DjyoGCr4M/Wc1KkeIoJYm3waqB+MA4+XtptAqLFpHB9xNq9EScavXbnDdiG0d4
	4jXKAmXPeguq6gaFBeDYm8nWKBXQIerCbXKNpVgjKGXgSBdfADU3ZRDkHL+CELDt2zE7fQ13Skhe4
	XRifcd1WYmvaMuc/a8k+gndPDHRe6RP+UaAz4cCcx4aWcOPBaEpOGdPtbDUd0DiDEv+L+2DleYWJ4
	2OlVBnvkTT66CTUrr1bnZwkNw0mvboAi4JADJFNEx2Bfaev5KZ88vtuZM5XUi0FuUJaa3F7hEjC94
	hqxqbkDehsn72KRMjzWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPOZg-000645-QG; Fri, 17 Apr 2020 10:50:20 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPOYK-0004QA-5v
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 10:48:58 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03HAluJO027657; Fri, 17 Apr 2020 12:48:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : content-type : content-id :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=iaKOkD8P3V9vzBfI10Q5OH02fO1tCp/xIClsudvRayc=;
 b=AojqR0yUgJLEggzEyJNJcbFYUAtixBNt0sfjzgVA70WwmZOZSEQ1hIxyWuLEiua+ce6d
 upBUtUnkkt0nlGhKmXrjQ97Uvtj8hzzEeG99tuSmk8KLRtPp7/swlbNFIyBCKUZWWgGX
 eaX7h9lezY7diurQPhkkJLIlaEuWdTLqSf4Gi+aFR1q/04PAN5ahiQMbqVsZiAsGBNKI
 8N/C8gUZptet33XqukunlUARxuzEXU2+ERLu5yaOqp8K0OGBuU4vuiafid+WRCcGcnPb
 gSRaor8E+yopxM8dn3s1rSuz+qpnHozPcEkDN5DUHngaO6bComVOVfUKJR0I3wBut7e8 gQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30dn760xw3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 17 Apr 2020 12:48:49 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id EF62610002A;
 Fri, 17 Apr 2020 12:48:48 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag6node3.st.com [10.75.127.18])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id D34812AA9F0;
 Fri, 17 Apr 2020 12:48:48 +0200 (CEST)
Received: from SFHDAG6NODE2.st.com (10.75.127.17) by SFHDAG6NODE3.st.com
 (10.75.127.18) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 17 Apr
 2020 12:48:48 +0200
Received: from SFHDAG6NODE2.st.com ([fe80::a56f:c186:bab7:13d6]) by
 SFHDAG6NODE2.st.com ([fe80::a56f:c186:bab7:13d6%20]) with mapi id
 15.00.1347.000; Fri, 17 Apr 2020 12:48:48 +0200
From: Patrice CHOTARD <patrice.chotard@st.com>
To: Arnd Bergmann <arnd@arndb.de>, "khilman@baylibre.com"
 <khilman@baylibre.com>, Olof Johansson <olof@lixom.net>
Subject: [GIT PULL] STi DT update for v5.8 round 1
Thread-Topic: [GIT PULL] STi DT update for v5.8 round 1
Thread-Index: AQHWFKXGRE1MaIpH7Eq9IiX+E6fFPQ==
Date: Fri, 17 Apr 2020 10:48:48 +0000
Message-ID: <6fd7974d-a5f2-f7cd-fa7a-d761fac75b3c@st.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.48]
Content-ID: <387F1F919E614F4591A0EA8A484238EC@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-17_03:2020-04-17,
 2020-04-17 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_034856_621587_4C785AD3 
X-CRM114-Status: GOOD (  14.12  )
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
Cc: Alain VOLMAT <alain.volmat@st.com>, "arm@kernel.org" <arm@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
 Patrice CHOTARD <patrice.chotard@st.com>
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
