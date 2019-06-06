Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3B5F373EC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 14:15:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TmAqx2CPaYnUe/ADOVs5tvSH5OTBHE65UzFfWF/hHPs=; b=J3ukSCAthTcKU2
	8BB0YK+CFLB9MXFuzqlyTxi6Hq7R0woj6t6WcxknI6B3tyDgqB2hBTVFvjNC66TqY506xMrwXZeaJ
	EdWkhbKWX2dbcwzFW0UnA7tB/tWPxsc/LD5Cu6YkU9za2eIo0pGZ+bmbw+Y10S479tzibfeFBDHEH
	Hm/7jRMD6MHeKA19qY+QK+SSsjYyWiCFlPEViHpZcmjdFgvCSm3GZ3KZArwqu+pmMZpJvSHpD/trk
	jeHHQdO/oq6wLboCCBeyONLRFjRoahZK48B1OwH5uuE7sHaLTjKXmR0IVjrUJgaRB73sLg24wHLUl
	TxUcG/dxhoVHUE5jDvPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYrIY-0006ZR-AK; Thu, 06 Jun 2019 12:15:14 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYrIQ-0005Um-JD
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 12:15:08 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x56C7Efh017662; Thu, 6 Jun 2019 14:14:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=2ao/1Ko28jWmrR5KQ2lgMosqcwhFq37QstmQ1+57bmQ=;
 b=VAV1B5Ok6Fy7pGBgTGRVh59NUpaOP8Ypt7x+6i5fW58wXFKyH9oPqDvXyc7sXBwAJp6j
 IuPsKQscjFzxfrcUAJpxWvJH/csMGT4t9BzeQpcnUcEzU6NmVXUBPSyZQxZqYWR9SjoE
 I9BsWX0nIgt+j2UsuubA/8Yu4h3fK5EdgKwqwrHmDeqvggGGxEm0ZCVIEmmUrU9gO5d6
 1kz4okJfV4oqkBzD3+fKECiO7YqeotXFyhaEPWF+149BErfswcsQsoy9sNlhDVqVzJx3
 gP02dhwaMWcvNI+3C0UaCGcMJtqf9XEhUWRVYMvfwHhsiGQnvpvSES88gmdNYFDhLwj7 3A== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2sxqyab5qv-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Thu, 06 Jun 2019 14:14:47 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 3E45331;
 Thu,  6 Jun 2019 12:14:45 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 0980E2718;
 Thu,  6 Jun 2019 12:14:45 +0000 (GMT)
Received: from SFHDAG5NODE1.st.com (10.75.127.13) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 6 Jun
 2019 14:14:44 +0200
Received: from SFHDAG5NODE1.st.com ([fe80::cc53:528c:36c8:95f6]) by
 SFHDAG5NODE1.st.com ([fe80::cc53:528c:36c8:95f6%20]) with mapi id
 15.00.1347.000; Thu, 6 Jun 2019 14:14:44 +0200
From: Gerald BAEZA <gerald.baeza@st.com>
To: "will.deacon@arm.com" <will.deacon@arm.com>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>, Alexandre TORGUE
 <alexandre.torgue@st.com>, "corbet@lwn.net" <corbet@lwn.net>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>, "olof@lixom.net"
 <olof@lixom.net>,
 "horms+renesas@verge.net.au" <horms+renesas@verge.net.au>,
 "arnd@arndb.de" <arnd@arndb.de>
Subject: RE: [PATCH v2 0/5] stm32-ddr-pmu driver creation
Thread-Topic: [PATCH v2 0/5] stm32-ddr-pmu driver creation
Thread-Index: AQHVDyCA+bIWujGZrUGYoRHYm+G4SqaOo0BA
Date: Thu, 6 Jun 2019 12:14:44 +0000
Message-ID: <f886ca5ef786493a8a5c7859465d6822@SFHDAG5NODE1.st.com>
References: <1558366019-24214-1-git-send-email-gerald.baeza@st.com>
In-Reply-To: <1558366019-24214-1-git-send-email-gerald.baeza@st.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.48]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-06_10:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_051506_960453_51FB7FC1 
X-CRM114-Status: GOOD (  17.31  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dear all

A gentle reminder to get your feedbacks on the series below.

Best regards

G=E9rald



> -----Original Message-----
> From: Gerald BAEZA <gerald.baeza@st.com>
> Sent: lundi 20 mai 2019 17:27
> To: will.deacon@arm.com; mark.rutland@arm.com; robh+dt@kernel.org;
> mcoquelin.stm32@gmail.com; Alexandre TORGUE
> <alexandre.torgue@st.com>; corbet@lwn.net; linux@armlinux.org.uk;
> olof@lixom.net; horms+renesas@verge.net.au; arnd@arndb.de
> Cc: linux-arm-kernel@lists.infradead.org; devicetree@vger.kernel.org; lin=
ux-
> stm32@st-md-mailman.stormreply.com; linux-kernel@vger.kernel.org;
> linux-doc@vger.kernel.org; Gerald BAEZA <gerald.baeza@st.com>
> Subject: [PATCH v2 0/5] stm32-ddr-pmu driver creation
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

> Gerald Baeza (5):
>   Documentation: perf: stm32: ddrperfm support
>   dt-bindings: perf: stm32: ddrperfm support
>   perf: stm32: ddrperfm driver creation
>   ARM: configs: enable STM32_DDR_PMU
>   ARM: dts: stm32: add ddrperfm on stm32mp157c
> =

>  .../devicetree/bindings/perf/stm32-ddr-pmu.txt     |  20 +
>  Documentation/perf/stm32-ddr-pmu.txt               |  41 ++
>  arch/arm/boot/dts/stm32mp157c.dtsi                 |   9 +
>  arch/arm/configs/multi_v7_defconfig                |   1 +
>  drivers/perf/Kconfig                               |   6 +
>  drivers/perf/Makefile                              |   1 +
>  drivers/perf/stm32_ddr_pmu.c                       | 512 +++++++++++++++=
++++++
>  7 files changed, 590 insertions(+)
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
