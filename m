Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9724CDACC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 05:39:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oawhgAhAU36XIXhtwca76NDxHLDiIG38rxG5eZiP4yA=; b=LFgUSYzndKFjKy
	aLKWgqiwzj3qBj9xqhdQ2mPFcaw5djMYDjHDcrWcLN5YMMYiovhFKxstXgaExkE5X/6b58ZPQ7Lqh
	t1DHFQzXGSypoc3IjBSkYOJqsnNUnJspfFzXTA9T4AefsxkvnQBI0+Ng7ONxU8OaiVkj0LEso8BYW
	o5djzakAo6kn7krw+mgpctN3ICHSgMh1geFRCesrjS2LeDgAmnk6QpAx34+JMBvn+evlPFx+DLhLk
	L2E0qyzYBUSPmspo2H8Xs8/NlIvzmgoEs2V2LD07OEralHb1nLPUQ0Vgxtpcdg1ZNpjciJqruseai
	nTXwfT5wRyEGMslLDWOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHJrx-0008Lt-Qx; Mon, 07 Oct 2019 03:39:33 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHJrm-0008LI-GZ; Mon, 07 Oct 2019 03:39:24 +0000
X-UUID: 8c6e79b4f4c643a58528e4f6368d8fbd-20191006
X-UUID: 8c6e79b4f4c643a58528e4f6368d8fbd-20191006
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <hsin-hsiung.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1175008021; Sun, 06 Oct 2019 19:39:19 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 6 Oct 2019 20:39:12 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 7 Oct 2019 11:24:13 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 7 Oct 2019 11:24:12 +0800
Message-ID: <1570418653.8779.8.camel@mtksdaap41>
Subject: Re: Aw: Re: [PATCH] mfd: mt6397: fix probe after changing mt6397-core
From: Hsin-hsiung Wang <hsin-hsiung.wang@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Frank Wunderlich
 <frank-w@public-files.de>, Lee Jones <lee.jones@linaro.org>
Date: Mon, 7 Oct 2019 11:24:13 +0800
In-Reply-To: <3dcb030d-006e-7518-2679-48726d0c4e0e@gmail.com>
References: <20191003185323.24646-1-frank-w@public-files.de>
 <20191004152001.GS18429@dell>
 <trinity-c33ab112-57a5-47d6-80e5-13c96442e302-1570204319219@3c-app-gmx-bap10>
 <3dcb030d-006e-7518-2679-48726d0c4e0e@gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: B2BB257C51EF80567F0D78FDC8AB09DCF7AB0000E082C245E93B3B8248ACBB9A2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_203922_559647_59DFC694 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 2019-10-05 at 10:16 +0200, Matthias Brugger wrote:
> 
> On 04/10/2019 17:51, Frank Wunderlich wrote:
> > This Question goes to Hsin-Hsiung Wang ;)
> > 
> > i only took his code (and splitted the 3rd part) to get mt6323 working again without reverting the other 2 Patches
> >> regards Frank
> > 
Hi Frank,
Sorry for the late reply.
I appreciate your help very much for splitting the code to fix the
issue.
This patch is ok for me.

> > 
> >> Gesendet: Freitag, 04. Oktober 2019 um 17:20 Uhr
> >> Von: "Lee Jones" <lee.jones@linaro.org>
> > 
> >> Will there be other devices which have a !0 CID shift?
> > 
> 
> Frank, a quick look at the series would have given you the answer.
> @Lee: yes, this change is the preparation to support MT6358:
> https://patchwork.kernel.org/patch/11110515/
> 

Hi, Lee
MT6358 uses 8 for the cid shift and I will submit next version patch of
mt6358 which is based on Frank's patch.

Hi, Matthias
Many thanks for the explanation.

> Regards,
> Matthias



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
