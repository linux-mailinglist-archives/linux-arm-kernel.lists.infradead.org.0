Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 906B911CA0B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 10:58:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F7+bFAa81spJvDSbCzGkam8yB1r7ZwQu56CpCwR+uGU=; b=CZC4sSWFtbdBye
	2Dt0NTPCz/itLaG5aK94BdD0COL8wEe81+El6V2KV4vEdJLoY14u3LkBa5/+mfEPekEqCbQb/Ii7T
	aou6TvNRCqBeaiTb11M8gdsI6vP/m2MyIy6GugOSFfNe+NL2wWA+JWZLOlLb+BMI1ThTP3jxD0Yaa
	nJTcXyVz358DnI7q2DdUBAcEWAo7ivCMXQ20qGZOIJ8H7L81YlcLJdnDorgS3gZXADejHxY0x5pww
	GW5p2O0ugP9QqfHgfYzOzPdZGcFqTnsYXjKTZK6ZpZAd0JBtVowU0iwyCyo3+URP41hQvwQl9HxGs
	JRO4acADpEc7xlX4MWIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifLEt-0000Sa-4T; Thu, 12 Dec 2019 09:58:31 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifLEP-0000BA-FU; Thu, 12 Dec 2019 09:58:02 +0000
X-UUID: 0002e869d2b64c58a74eb2c293629ba9-20191212
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=jjUFyhr70q5Qwl+cMOFBMZpPatFW/kw0aENfH71RXPE=; 
 b=jq1MoFnXSMWZvmV0J7XARns1yvG2bHjCQbtyK65p/f/bLDgB/PvOdmWrmEMcXF5rTX9bvglZotXQa5HwIpiqnc+QdQsXWCsRVFfcnnM/cVX6QsHaS1Lq6YfkMfQSvyrBVim5vxfXraDAoabZFjvpD1fe5Qm152QqcUSnzzDZzuQ=;
X-UUID: 0002e869d2b64c58a74eb2c293629ba9-20191212
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 392406774; Thu, 12 Dec 2019 01:57:52 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Dec 2019 01:48:06 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Dec 2019 17:47:29 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 12 Dec 2019 17:47:46 +0800
Message-ID: <1576144069.16442.3.camel@mtksdaap41>
Subject: Re: [PATCH v17 0/6] support gce on mt8183 platform
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Jassi Brar
 <jassisinghbrar@gmail.com>
Date: Thu, 12 Dec 2019 17:47:49 +0800
In-Reply-To: <cb5cd58e-dc62-ae30-9ddd-7c2b95fde3e3@gmail.com>
References: <20191121015410.18852-1-bibby.hsieh@mediatek.com>
 <CANMq1KCTJQL+GFqo8HYM8cEpzXJmebJ=9ju4CzHLwyuQfbZEAA@mail.gmail.com>
 <cb5cd58e-dc62-ae30-9ddd-7c2b95fde3e3@gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_015801_548544_22128ADC 
X-CRM114-Status: GOOD (  15.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Nicolas Boichat <drinkcat@chromium.org>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 lkml <linux-kernel@vger.kernel.org>,
 Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, "moderated list:ARM/Mediatek SoC
 support" <linux-mediatek@lists.infradead.org>, CK HU <ck.hu@mediatek.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-12-12 at 08:49 +0100, Matthias Brugger wrote:
> 
> On 11/12/2019 23:09, Nicolas Boichat wrote:
> > Hi Matthias,
> > 
> > Quick question, any reason you picked only patches 2+3+6 from this
> > series, and not the 3 others?
> > 
> 
> The quick answer, time :)
> The longer one:
> 1/6 went already in through fixes for v5.4
> 4/6 it touches mailbox code, so we will need a acked-by from Jassi

Hi, Jassi,

Sorry for the mailing losing.
Could you help me to review [PATCH 4/6 soc: mediatek: cmdq: add polling
function] if you are free?

Bibby

> 5/6 time, I want to have a better look onto this to see if that makes sense (I
> slightly remember some old comment I had on this)
> 
> Regards,
> Matthias
> 
> > Thanks.
> > 
> > On Wed, Nov 20, 2019 at 5:54 PM Bibby Hsieh <bibby.hsieh@mediatek.com> wrote:
> >>
> >> Changes since v16:
> >>  - naming the poll mask enable bit
> >>  - add a patch to fiup the input order of write api
> >>
> >> Changes since v15:
> >>  - rebase onto 5.4-rc1
> >>  - rollback the v14 change
> >>  - add a patch to fixup the combination of return value
> >>
> >> Changes since v14:
> >>  - change input argument as pointer in append_commend()
> >>
> >> Changes since v13:
> >>  - separate poll function as poll w/ & w/o mask function
> >>  - directly pass inst into append_command function instead
> >>    of returns a pointer
> >>  - fixup coding style
> >>  - rebase onto 5.3-rc1
> >>
> >> [... snip ...]
> >>
> >> Bibby Hsieh (6):
> >>   soc: mediatek: cmdq: fixup wrong input order of write api
> >>   soc: mediatek: cmdq: remove OR opertaion from err return
> >>   soc: mediatek: cmdq: define the instruction struct
> >>   soc: mediatek: cmdq: add polling function
> >>   soc: mediatek: cmdq: add cmdq_dev_get_client_reg function
> >>   arm64: dts: add gce node for mt8183
> >>
> >>  arch/arm64/boot/dts/mediatek/mt8183.dtsi |  10 ++
> >>  drivers/soc/mediatek/mtk-cmdq-helper.c   | 147 +++++++++++++++++++----
> >>  include/linux/mailbox/mtk-cmdq-mailbox.h |  11 ++
> >>  include/linux/soc/mediatek/mtk-cmdq.h    |  53 ++++++++
> >>  4 files changed, 195 insertions(+), 26 deletions(-)
> >>
> >> --
> >> 2.18.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
