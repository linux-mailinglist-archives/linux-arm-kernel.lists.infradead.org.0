Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BE6A19BA7A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 04:48:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w9E/Z+bm/KvlVO1KiHpdMmHEQsstEzSFmA3WjKuZjho=; b=pXJRfpyauDjGn4
	5krtW6K8IoEbB5kVdTsBUHkTPQwkMd6CyrJGzBWMWUTEIyDk/CeTFLXZh2z1dmq9dgV0C4rAPJqpY
	jymT6qcbWntwtN1vmoEMKXYmHl6MbRIz00JWhJDlvPfs4kaSX9tTSCbyiomLOxcGD014G2pR6qHRL
	UiD5K/dFG3FcR14ARj72LeQylVr6gkveKe5ERZyDGUfO3Rsg4I5Z+V1ffKVOGCI//BdV1P1Jb8n/C
	E43IhX6CCW2zmgjsrgbLWSJL3kDL/czDJYTgpAuXRH6OPVoHJBD9BjznNSvI5J9+KcSU3acH1PwAi
	MYAnEKInE1VT10+2iMEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJpu3-0006BG-FX; Thu, 02 Apr 2020 02:48:23 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJptv-00069k-7u; Thu, 02 Apr 2020 02:48:17 +0000
X-UUID: 4978751b305c43288bc536d9d312d835-20200401
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=yvxzSL3ARjPlbxPt4EEaC22R2omEz1sQZS0v7fH05E4=; 
 b=u3T4NKUWv4tEmEkOaFb2nHIDu78K0tPcU9jPPax6/n3BQicoLEra64FOdCU/Eas9W0g8VsrQGQSi3Z45KqAycsWzoYxXU3e/vKc38VFhzMmIHDNwluCwtiuNduRZOXV5S9NUn5q1WjmoeFehF+gUnIf2Z1tnDS5JdqFX+wpS7VQ=;
X-UUID: 4978751b305c43288bc536d9d312d835-20200401
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <henryc.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1494658489; Wed, 01 Apr 2020 18:48:04 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 1 Apr 2020 19:48:02 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 2 Apr 2020 10:48:02 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 2 Apr 2020 10:48:01 +0800
Message-ID: <1585795682.27527.12.camel@mtksdaap41>
Subject: Re: [PATCH V4 00/13] Add driver for dvfsrc, support for active
 state of scpsys
From: Henry Chen <henryc.chen@mediatek.com>
To: Georgi Djakov <georgi.djakov@linaro.org>
Date: Thu, 2 Apr 2020 10:48:02 +0800
In-Reply-To: <2737cc5c-3876-6861-c44f-fc9f552bbdb9@linaro.org>
References: <1584092066-24425-1-git-send-email-henryc.chen@mediatek.com>
 <2737cc5c-3876-6861-c44f-fc9f552bbdb9@linaro.org>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_194815_283010_A15B99DE 
X-CRM114-Status: GOOD (  17.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nicolas Boichat <drinkcat@google.com>,
 Mike Turquette <mturquette@linaro.org>, srv_heupstream@mediatek.com,
 James Liao <jamesjj.liao@mediatek.com>, Viresh Kumar <vireshk@kernel.org>,
 Mark Brown <broonie@kernel.org>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Stephen
 Boyd <swboyd@chromium.org>, Fan Chen <fan.chen@mediatek.com>,
 devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Ryan Case <ryandcase@chromium.org>, Arvin Wang <arvin.wang@mediatek.com>,
 Matthias
 Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Georgi,

On Wed, 2020-04-01 at 18:09 +0300, Georgi Djakov wrote:
> Hi Henry,
> 
> On 3/13/20 11:34, Henry Chen wrote:
> > The patchsets add support for MediaTek hardware module named DVFSRC
> > (dynamic voltage and frequency scaling resource collector). The DVFSRC is
> > a HW module which is used to collect all the requests from both software
> > and hardware and turn into the decision of minimum operating voltage and
> > minimum DRAM frequency to fulfill those requests.
> > 
> > So, This series is to implement the dvfsrc driver to collect all the
> > requests of operating voltage or DRAM bandwidth from other device drivers
> > likes GPU/Camera through 3 frameworks basically:
> > 
> > 1. interconnect framework: to aggregate the bandwidth
> >    requirements from different clients
> > 
> > [1] https://patchwork.kernel.org/cover/10766329/
> > 
> > Below is the emi bandwidth map of mt8183. There has a hw module "DRAM scheduler"
> > which used to control the throughput. The DVFSRC will collect forecast data
> > of dram bandwidth from SW consumers(camera/gpu...), and according the forecast
> > to change the DRAM frequency
> > 
> >            ICC provider         ICC Nodes
> >                             ----          ----
> >            ---------       |CPU |   |--->|VPU |
> >   -----   |         |-----> ----    |     ----
> >  |DRAM |--|DRAM     |       ----    |     ----
> >  |     |--|scheduler|----->|GPU |   |--->|DISP|
> >  |     |--|(EMI)    |       ----    |     ----
> >  |     |--|         |       -----   |     ----
> >   -----   |         |----->|MMSYS|--|--->|VDEC|
> >            ---------        -----   |     ----
> >              /|\                    |     ----
> >               |change DRAM freq     |--->|VENC|
> >            ----------               |     ----
> >           |  DVFSR   |              |
> >           |          |              |     ----
> >            ----------               |--->|IMG |
> >                                     |     ----
> >                                     |     ----
> >                                     |--->|CAM |
> >                                           ----
> 
> It would be useful to also add the above diagram into the commit text of
> patch 09/13. By doing so, it will be saved into the history, as cover letters
> are discarded.
OK, thanks.
> 
> Thanks,
> Georgi
> 
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
