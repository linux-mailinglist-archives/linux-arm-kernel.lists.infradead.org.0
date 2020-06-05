Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D03AC1EF125
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 08:04:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pCh+gz1H/TqLPwOwtzi6KVV8Fxyuz6XnqKnOkqSVdys=; b=ODCQg4I9CIEgCo
	6mwgzuRE5HQDEqpIXFU5caL56C78bS6BgyoOtH5MY7XS5/GNEdhKNMtv7jaE3wFmpT7sbS+EN77sB
	BtzYfV7ODAgs/yjds5t3sBYAEgV62cmMFUlxhz2IjK5QK4rxbb2q/I+LzVojAoE3F+t5X5UHTtO3m
	qevy/xziNJshYktXfKlGolR5id3/RLfIKOyB+hUL69wPiVCVx/OjfiY0JJgqlaxQaOtmIdWfZttCA
	5U1e+Xd3r0H0H1Jy+jvnXPUbIg6pzyy868kJiCsZBMDfBVvbW9YWo5Q3ihsFush4zb0tSx/CtaQC2
	p2pt927HOm6n+nQKx41g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh5T9-0007Jw-BJ; Fri, 05 Jun 2020 06:04:43 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh5T2-0007I7-P1; Fri, 05 Jun 2020 06:04:38 +0000
X-UUID: 6dd17656914c4451b279de1de8c36d5c-20200604
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=5zTg+Ae3aI1oUNdcUL6hKGmNs4wF6e1l6u5UQkutTio=; 
 b=oFs3Ny0Ob60ZMWSxzSRXOV/zfLBO7m3HchUR7My58YphoF8wMAzqtny8E4uI4SWIZ+NPuE+vuqybkFLHr8MZF1ZwNnyHZGDqJkBfUGMXP20FQykTnCo4ULKTQN+lTrB1q9rK6V054rDhxymkxVNAg1e/HOlHJvI/Ja7lp2CdcH4=;
X-UUID: 6dd17656914c4451b279de1de8c36d5c-20200604
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <xia.jiang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1211080217; Thu, 04 Jun 2020 22:04:23 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 4 Jun 2020 23:04:25 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31N2.mediatek.inc
 (172.27.4.87) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Fri, 5 Jun 2020 14:04:21 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 5 Jun 2020 14:04:19 +0800
Message-ID: <1591336937.31802.2.camel@mhfsdcap03>
Subject: Re: [PATCH v8 04/14] media: platform: Change the fixed device node
 number to unfixed value
From: Xia Jiang <xia.jiang@mediatek.com>
To: Tomasz Figa <tfiga@chromium.org>
Date: Fri, 5 Jun 2020 14:02:17 +0800
In-Reply-To: <20200521135937.GD209565@chromium.org>
References: <20200403094033.8288-1-xia.jiang@mediatek.com>
 <20200403094033.8288-5-xia.jiang@mediatek.com>
 <20200521135937.GD209565@chromium.org>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: C643C80CC609DDC425F0E80F5429FEB6BC9807E21373CF433474C9660B3CCD582000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_230436_817588_4A92EDD6 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: drinkcat@chromium.org, devicetree@vger.kernel.org, mojahsu@chromium.org,
 srv_heupstream@mediatek.com, Rick Chang <rick.chang@mediatek.com>,
 senozhatsky@chromium.org, linux-kernel@vger.kernel.org,
 maoguang.meng@mediatek.com, Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 sj.huang@mediatek.com, Rob Herring <robh+dt@kernel.org>, Matthias
 Brugger <matthias.bgg@gmail.com>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 linux-mediatek@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2020-05-21 at 13:59 +0000, Tomasz Figa wrote:
> Hi Xia,
> 
> On Fri, Apr 03, 2020 at 05:40:23PM +0800, Xia Jiang wrote:
> > Change device node number from 3 to -1 because that the driver will
> > also support jpeg encoder.
> > 
> 
> Thanks for the patch. The change is correct, but I think the commit
> message doesn't really explain the real reason for it. Perhaps something
> like
> 
> "The driver can be instantiated multiple times, e.g. for a decoder and
> an encoder. Moreover, other drivers could coexist on the same system.
> This makes the static video node number assignment pointless, so switch
> to automatic assignment instead."
> 
> WDYT?
Dear Tomasz,
Thanks for your advice.I have changed it in new v9 .

Best Regards,
Xia Jiang
> 
> Best regards,
> Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
