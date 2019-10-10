Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15B63D2D7B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 17:16:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wyr7vdvtPAPtKmhYdbw84vDYYUTKcBiEyJ9VV6LXvJE=; b=nwkY+6AirWL/Qi
	U/dOlaBZo36M2hWPzmAt3fUafrkOZ4Ln3besnkcMoDUJqIMWxfsb+Bh9km/6PySKcn31GV+dAyTxA
	21VcEf/q+Vc5Mw3I1UdXDu17ZQznkaOoLajFwGlj2UXnOMf/nf6xwyHgDLgdnZDeAhsXHJKkyrcDs
	FIvLaIRKn88NNpQmZxFRAvHd71wMLccs4eDUIzNLkVrE7h17wSrkpr0fMPauKp1113qWixnn4gTXe
	f4/UEu2ULPS5UlC6/l7iLCeKRvIaYbTDXELFz+zQqJAifjVqX8NTneraNjU26Mt3Vnx/bqh20fzmB
	aa2AlabY6WsOD5Kd6l4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIaBM-0000p5-Qq; Thu, 10 Oct 2019 15:16:48 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIaBD-0000nl-1G
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 15:16:40 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9AFBKhQ025036; Thu, 10 Oct 2019 17:16:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=WdF442jlxXHtW99D7VXviowbwCBFKKqETJKUfQQ750w=;
 b=mm2aIehas26Nib8HsLOMFdpsO23R7o8VnUJ+GWdEZjSLZR9ZOFAHky36iI4Br1lxJ3Sk
 avwn9mmM/xIpqctgJhEm9dhtDoAAVur2AUA24mzmir1bc7GfdSSENlTsoxZSjM1Hwdhc
 Y9/ElLzy6dDdBMiJdyB5L0mLKFzGbnEPa5jMvbKMsKX5r6+Bfg/UXc6AmbV6JqTQO4AY
 8Jklj38blZDBAAgFPOruDqxcjSdUcSJEi4/Uo81ZOOIsbQpsCxarYtqW4GV0lYAl2b/e
 mDwA9H2Ajdi8ApxoA9I0ppL9aM69bXJCPv2By43adSY7PAYuJiqsDgbVSOi3MgUE7bl7 3g== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2vej2pmt2t-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 10 Oct 2019 17:16:20 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 40B5A10002A;
 Thu, 10 Oct 2019 17:16:19 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag7node2.st.com [10.75.127.20])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 9391E2B433F;
 Thu, 10 Oct 2019 17:16:19 +0200 (CEST)
Received: from SFHDAG5NODE3.st.com (10.75.127.15) by SFHDAG7NODE2.st.com
 (10.75.127.20) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 10 Oct
 2019 17:16:19 +0200
Received: from SFHDAG5NODE3.st.com ([fe80::7c09:5d6b:d2c7:5f47]) by
 SFHDAG5NODE3.st.com ([fe80::7c09:5d6b:d2c7:5f47%20]) with mapi id
 15.00.1473.003; Thu, 10 Oct 2019 17:16:19 +0200
From: Fabien DESSENNE <fabien.dessenne@st.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre TORGUE
 <alexandre.torgue@st.com>, Ohad Ben-Cohen <ohad@wizery.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-remoteproc@vger.kernel.org"
 <linux-remoteproc@vger.kernel.org>
Subject: RE: [PATCH 0/2] remoteproc: stm32: allow wdg irq to be a wakeup source
Thread-Topic: [PATCH 0/2] remoteproc: stm32: allow wdg irq to be a wakeup
 source
Thread-Index: AQHVXCRbzfqre7GQVUu6MRQERXnqfqdUQtwQ
Date: Thu, 10 Oct 2019 15:16:19 +0000
Message-ID: <1bef12295e864dfa90edfa495803167f@SFHDAG5NODE3.st.com>
References: <1566833923-16718-1-git-send-email-fabien.dessenne@st.com>
In-Reply-To: <1566833923-16718-1-git-send-email-fabien.dessenne@st.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.51]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-10_05:2019-10-10,2019-10-10 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_081639_529296_14B4885F 
X-CRM114-Status: GOOD (  15.41  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Arnaud POULIQUEN <arnaud.pouliquen@st.com>,
 Loic PALLARDY <loic.pallardy@st.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi

I Got Rob's Reviewed-by for the bindings. Any further comments for the driv=
er part?

Fabien

> -----Original Message-----
> From: Fabien DESSENNE <fabien.dessenne@st.com>
> Sent: lundi 26 ao=FBt 2019 17:39
> To: Rob Herring <robh+dt@kernel.org>; Mark Rutland <mark.rutland@arm.com>;
> Maxime Coquelin <mcoquelin.stm32@gmail.com>; Alexandre TORGUE
> <alexandre.torgue@st.com>; Ohad Ben-Cohen <ohad@wizery.com>; Bjorn
> Andersson <bjorn.andersson@linaro.org>; devicetree@vger.kernel.org; linux-
> stm32@st-md-mailman.stormreply.com; linux-arm-kernel@lists.infradead.org;
> linux-kernel@vger.kernel.org; linux-remoteproc@vger.kernel.org
> Cc: Fabien DESSENNE <fabien.dessenne@st.com>; Loic PALLARDY
> <loic.pallardy@st.com>; Arnaud POULIQUEN <arnaud.pouliquen@st.com>
> Subject: [PATCH 0/2] remoteproc: stm32: allow wdg irq to be a wakeup sour=
ce
> =

> The watchdog IRQ which notifies the remote processor crash is used by the
> remoteproc framework to perform a recovery procedure.
> Since this IRQ may be fired when the Linux system is suspended, this IRQ =
may
> be configured to wake up the system.
> =

> Fabien Dessenne (2):
>   dt-bindings: remoteproc: stm32: add wakeup-source
>   remoteproc: stm32: wakeup the system by wdg irq
> =

>  .../devicetree/bindings/remoteproc/stm32-rproc.txt |  3 ++
>  drivers/remoteproc/stm32_rproc.c                   | 47 ++++++++++++++++=
++++++
>  2 files changed, 50 insertions(+)
> =

> --
> 2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
