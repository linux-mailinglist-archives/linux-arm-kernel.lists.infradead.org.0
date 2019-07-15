Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 458E368485
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 09:40:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LO/iHIAjXTC52VqFm2LyYpNgt+h94NDYJLd0OAi6yn0=; b=I/Hr89q/V+5l/6
	nH16O445xh2rETG/J4j0/Wn5CeBnHH9g06swUnMd1QmZvEHRr2Q2Wu+2aLHSRYrYM62jY2Ha2rznz
	OeDkbtVTOkQgVUuM0KcCB44kOaaDILerLiTAepbbKiv+ZdC2oQWkMYuZMjc6B1pUQW/5YZaAy9Y8b
	8xWSPje+ikcwPdZ49BbywqNKFcDGb9ZkTmH7gg5uP6KpA1kRyBDSHc7ATv/YNurHoG0hCz7eDaOIf
	dda3MW0qMAt14wjjv6G69uNnncwHGsPO7aisMLXeQ6pRjmEPl6W5dumE6c2IzNtzYNjX7x81Bxlb6
	soGkG1928twdxed3Amrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmvaR-0005lO-10; Mon, 15 Jul 2019 07:39:51 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmva9-0005kY-Hu
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 07:39:36 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6F7au0k024443; Mon, 15 Jul 2019 09:39:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=HpVUgrShAgW9vXsEQTQa0RY6pPTPY9FAz9k7Q5LwFKg=;
 b=ifB0nituf9QfJe/DA2FY/drpX/1PbUubcs4dYlZU/B3AgwOG/263reAdB/BBsBE5Hfpk
 3c+j8avUhJyCCwY7msrRFQ95xaumfsuymFpXwQM7Kgn039HGwa/a9oEfRvfWXbnw22Ra
 +q+X6cTRQb2lPccaTqk7x2iRBnwHp0cO/2HSneNCEn+s29z4bVCfzRVcEzzyYF7dFSSo
 i88rSPOB7TJ2Cucx4XcVkKD0+3jEtO3WdIf3peM2X7aAhoETdF8XhlFW3O3+pjNrbJFj
 lPXSvSs1oRaQpdE/J1v7eUa5xPLfecbl3RldgEAhTC5Nwg0h5ousvgqQXm0t8zC49kpe cw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2tq4s1c82u-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 15 Jul 2019 09:39:24 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id BCB6441;
 Mon, 15 Jul 2019 07:39:23 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 8A557165F;
 Mon, 15 Jul 2019 07:39:23 +0000 (GMT)
Received: from SFHDAG6NODE1.st.com (10.75.127.16) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 15 Jul
 2019 09:39:23 +0200
Received: from SFHDAG6NODE1.st.com ([fe80::8d96:4406:44e3:eb27]) by
 SFHDAG6NODE1.st.com ([fe80::8d96:4406:44e3:eb27%20]) with mapi id
 15.00.1473.003; Mon, 15 Jul 2019 09:39:23 +0200
From: Ludovic BARRE <ludovic.barre@st.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: RE: [PATCH V3 0/3] mmc: mmci: add busy detect for stm32 sdmmc variant
Thread-Topic: [PATCH V3 0/3] mmc: mmci: add busy detect for stm32 sdmmc variant
Thread-Index: AQHVGiTDhxYOagQ32kiKuW56aV8v5aaZnBkA///hwACACwqQAIAnAuIk
Date: Mon, 15 Jul 2019 07:39:23 +0000
Message-ID: <1563176363071.36427@st.com>
References: <1559577325-19266-1-git-send-email-ludovic.Barre@st.com>
 <5b7e1ae5-c97e-5a21-fc3e-7cc328087f04@st.com>
 <CAPDyKFrULRk=cHzVodU9aa6LDX9ip-VPHNwG7QXhmNZrMpPjGw@mail.gmail.com>,
 <CAPDyKFr_KNpNY-xgGdKXdAnmmD5OD1=wxgs2LmBAUJOn0mZwqg@mail.gmail.com>
In-Reply-To: <CAPDyKFr_KNpNY-xgGdKXdAnmmD5OD1=wxgs2LmBAUJOn0mZwqg@mail.gmail.com>
Accept-Language: fr-FR, en-US
Content-Language: fr-FR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.48]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-15_02:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_003933_955428_1CD26A3D 
X-CRM114-Status: GOOD (  18.41  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: DTML <devicetree@vger.kernel.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ulf

like scheduled, I send you a "gentleman ping" about this series.

Regards,
Ludo
________________________________________
De : Ulf Hansson <ulf.hansson@linaro.org>
Envoy=E9 : jeudi 20 juin 2019 15:50
=C0 : Ludovic BARRE
Cc : Rob Herring; Srinivas Kandagatla; Maxime Coquelin; Alexandre TORGUE; L=
inux ARM; Linux Kernel Mailing List; DTML; linux-mmc@vger.kernel.org; linux=
-stm32@st-md-mailman.stormreply.com
Objet : Re: [PATCH V3 0/3] mmc: mmci: add busy detect for stm32 sdmmc varia=
nt

Hi Ludovic,

On Thu, 13 Jun 2019 at 15:13, Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> On Thu, 13 Jun 2019 at 15:02, Ludovic BARRE <ludovic.barre@st.com> wrote:
> >
> > hi Ulf
> >
> > Just a "gentleman ping" about this series.
> > I know you are busy, it's just to be sure you do not forget me :-)
>
> Thanks! I started briefly to review, but got distracted again. I will
> come to it, but it just seems to take more time than it should, my
> apologies.

Alright, so I planned to review this this week - but failed. I have
been overwhelmed with work lately (as usual when vacation is getting
closer).

I need to gently request to come back to this as of week 28, when I
will give this the highest prio. Again apologize for the delays!

Kind regards
Uffe

>
> Br
> Uffe
>
> >
> > Regards
> > Ludo
> >
> > On 6/3/19 5:55 PM, Ludovic Barre wrote:
> > > From: Ludovic Barre <ludovic.barre@st.com>
> > >
> > > This patch series adds busy detect for stm32 sdmmc variant.
> > > Some adaptations are required:
> > > -Clear busy status bit if busy_detect_flag and busy_detect_mask are
> > >   different.
> > > -Add hardware busy timeout with MMCIDATATIMER register.
> > >
> > > V3:
> > > -rebase on latest mmc next
> > > -replace re-read by status parameter.
> > >
> > > V2:
> > > -mmci_cmd_irq cleanup in separate patch.
> > > -simplify the busy_detect_flag exclude
> > > -replace sdmmc specific comment in
> > > "mmc: mmci: avoid fake busy polling in mmci_irq"
> > > to focus on common behavior
> > >
> > > Ludovic Barre (3):
> > >    mmc: mmci: fix read status for busy detect
> > >    mmc: mmci: add hardware busy timeout feature
> > >    mmc: mmci: add busy detect for stm32 sdmmc variant
> > >
> > >   drivers/mmc/host/mmci.c | 49 ++++++++++++++++++++++++++++++++++++++=
+++--------
> > >   drivers/mmc/host/mmci.h |  3 +++
> > >   2 files changed, 44 insertions(+), 8 deletions(-)
> > >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
