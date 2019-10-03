Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 559F8C9BB5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 12:08:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZmBm9o8qguxJqoN9s2lbK5x3OsGeRkt0DUB2UXNUFT8=; b=H6XytZZOJtrHU6
	52ZOzyVXt9GPAEgZjYsYgSZQxpXnSrDXGb0tO3KHEM37olp7vywJX5YyLrO1gtdxWNegFMPRVU7rE
	3Xcsds3tOesWquwVr/rkS1FRiYwAreRgPRgyyUB0AWVy26wEMLM3lnFOEIJghNK6l9d/YyVSg5ZWZ
	dhHSti2ipOYm4oWZdt/R96XuKgI5WBZ1bCFTjIKkOyE4BS2UN1owJtvsFegqrYDKOgWSZ4EV7WMXf
	/DP8lMq2Hn7H7zMYPs6syowEif+PsXWQfARDu+2Dw/EMPdDeSif/eOvru9aHZgprHqtTmrKESD4mT
	2ce3ETRDjczI+IgiEsRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFy2E-0008Af-Le; Thu, 03 Oct 2019 10:08:34 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFy27-0008AF-Ai
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 10:08:29 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x93A2vsa020834; Thu, 3 Oct 2019 12:08:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=aOluPCF6ESczZ7lBj75ysirYywqU6TpjFJ3pKXx14HA=;
 b=tWLZ2rCpdbtQMBUgXGvr/BC7PDLIdTDZcXKZvrsSlLQ+QdRLZewXN7uj6MTgO+2VeCeh
 GX4lh9VcZmScLP2p2lmbpdVH4Gxtb1yWC5IVj/0JYA0BgcKqXxnL9PRXoYHf2E3rUqzX
 /6Le48HXrwFWbeOIsMy8NUU+TCLl/Zl8CBLtK1iQ+UoU+Fi+QjPp1cvYAe4I5UP1xzLj
 39bQW4u6cYieeCSTSDvHk0T7Hklv2O5jROxhLy+QZZowsAzf1zJ07Gp0BqkW6EmDUBW9
 gs3nQ9Dfat/5SFN3quriPKhjEZHsmLL8JKmV+UAqbeVJINAh/9dn6s2GYPmJNdIl39EQ lA== 
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
 by mx08-00178001.pphosted.com with ESMTP id 2v9xdh3kq6-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Thu, 03 Oct 2019 12:08:10 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 27E3822;
 Thu,  3 Oct 2019 10:08:07 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id CC98B2B00F7;
 Thu,  3 Oct 2019 12:08:06 +0200 (CEST)
Received: from SFHDAG5NODE1.st.com (10.75.127.13) by SFHDAG3NODE1.st.com
 (10.75.127.7) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 3 Oct
 2019 12:08:06 +0200
Received: from SFHDAG5NODE1.st.com ([fe80::cc53:528c:36c8:95f6]) by
 SFHDAG5NODE1.st.com ([fe80::cc53:528c:36c8:95f6%20]) with mapi id
 15.00.1473.003; Thu, 3 Oct 2019 12:08:06 +0200
From: Gerald BAEZA <gerald.baeza@st.com>
To: "will@kernel.org" <will@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>, Alexandre TORGUE
 <alexandre.torgue@st.com>, "corbet@lwn.net" <corbet@lwn.net>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>, "olof@lixom.net"
 <olof@lixom.net>, "arnd@arndb.de" <arnd@arndb.de>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-doc@vger.kernel.org"
 <linux-doc@vger.kernel.org>
Subject: RE: [PATCH v3 0/5] stm32-ddr-pmu driver creation
Thread-Topic: [PATCH v3 0/5] stm32-ddr-pmu driver creation
Thread-Index: AQHVXOk+As8mb1s6+UKuO5XjiYJqiadI6qNQ
Date: Thu, 3 Oct 2019 10:08:06 +0000
Message-ID: <013321ff60ae44da892d806fbd3024d4@SFHDAG5NODE1.st.com>
References: <1566918464-23927-1-git-send-email-gerald.baeza@st.com>
In-Reply-To: <1566918464-23927-1-git-send-email-gerald.baeza@st.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.44]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-03_04:2019-10-01,2019-10-03 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_030828_151286_26A37D16 
X-CRM114-Status: GOOD (  18.18  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dear all

Gentle reminder for this review.

Thanks in advance !

G=E9rald

> From: Gerald BAEZA <gerald.baeza@st.com>
> =

> The DDRPERFM is the DDR Performance Monitor embedded in STM32MP1
> SOC.
> =

> This series adds support for the DDRPERFM via a new stm32-ddr-pmu driver,
> registered into the perf framework.
> =

> This driver is inspired from arch/arm/mm/cache-l2x0-pmu.c
> =

> ---
> Changes from v1:
> - add 'resets' description (bindings) and using (driver). Thanks Rob.
> - rebase on 5.2-rc1 (that includes the ddrperfm clock control patch).
> =

> Changes from v2:
> - rebase on 5.3-rc6 that has to be completed with
>   'perf tools: fix alignment trap in perf stat': mandatory.
>   'Documentation: add link to stm32mp157 docs': referenced from this seri=
es.
> - take into account all remarks from Mark Rutland: thanks for your time!
>   https://lkml.org/lkml/2019/6/26/388
> - fix for event type filtering in stm32_ddr_pmu_event_init()
> =

> Gerald Baeza (5):
>   Documentation: perf: stm32: ddrperfm support
>   dt-bindings: perf: stm32: ddrperfm support
>   perf: stm32: ddrperfm driver creation
>   ARM: configs: enable STM32_DDR_PMU
>   ARM: dts: stm32: add ddrperfm on stm32mp157c
> =

>  .../devicetree/bindings/perf/stm32-ddr-pmu.txt     |  16 +
>  Documentation/perf/stm32-ddr-pmu.txt               |  37 ++
>  arch/arm/boot/dts/stm32mp157c.dtsi                 |   8 +
>  arch/arm/configs/multi_v7_defconfig                |   1 +
>  drivers/perf/Kconfig                               |   6 +
>  drivers/perf/Makefile                              |   1 +
>  drivers/perf/stm32_ddr_pmu.c                       | 426 +++++++++++++++=
++++++
>  7 files changed, 495 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/perf/stm32-ddr-
> pmu.txt
>  create mode 100644 Documentation/perf/stm32-ddr-pmu.txt
>  create mode 100644 drivers/perf/stm32_ddr_pmu.c
> =

> --
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
