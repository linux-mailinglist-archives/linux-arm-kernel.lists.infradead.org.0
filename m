Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6661DCDAC4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 05:32:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Z9rTmUbTfCdoIuMjyThehKRLRwhofR17vsBVnHGG+A=; b=ttcZuiCnmGQK6c
	tY1t2jEK8QTTQYp2sobcGCOwRbkXVyV0yf+VWH0cF5miHKGJnyLrEbBKJESUPUqr8cJyAfWSyDFlT
	rOMuMPXx5ae3qzgqk1Pc87tTsiSuf4y5MUCTDc4lu4iDYRzXXqD4eneTx8dHxn+pDo5cECQnBil+g
	Aq+F1DaOgGALb+0UcBu2Rd436E1HVQPY6hJgEkMbPKy/1UZvtq26YIvct3rEdexhtjldT+sET0Oe5
	ArLWcP/gRIw+01ip4DsSpFvovq3YUEr8d4qL4a+dy8aSu3afGkCFbqCqzplArHzYf678DxzDx/8jz
	7tbpNUgpxcK88Q5h4Pog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHJlK-000637-KI; Mon, 07 Oct 2019 03:32:42 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHJlC-000626-FD; Mon, 07 Oct 2019 03:32:37 +0000
X-UUID: 2fbb5fcfb24643b59ac267899ea0f406-20191006
X-UUID: 2fbb5fcfb24643b59ac267899ea0f406-20191006
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <hsin-hsiung.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 244182242; Sun, 06 Oct 2019 19:32:28 -0800
Received: from MTKMBS06N1.mediatek.inc (172.21.101.129) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 6 Oct 2019 20:32:21 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs06n1.mediatek.inc (172.21.101.129) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 7 Oct 2019 11:32:27 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 7 Oct 2019 11:32:26 +0800
Message-ID: <1570419147.28952.1.camel@mtksdaap41>
Subject: Re: Aw: Re: [PATCH] mfd: mt6397: fix probe after changing mt6397-core
From: Hsin-hsiung Wang <hsin-hsiung.wang@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Frank Wunderlich
 <frank-w@public-files.de>, Lee Jones <lee.jones@linaro.org>
Date: Mon, 7 Oct 2019 11:32:27 +0800
In-Reply-To: <3dcb030d-006e-7518-2679-48726d0c4e0e@gmail.com>
References: <20191003185323.24646-1-frank-w@public-files.de>
 <20191004152001.GS18429@dell>
 <trinity-c33ab112-57a5-47d6-80e5-13c96442e302-1570204319219@3c-app-gmx-bap10>
 <3dcb030d-006e-7518-2679-48726d0c4e0e@gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_203234_512684_392B641C 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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

Hi, Frank
Sorry for the late reply.
I appreciate your help very much for splitting the code to fix the
issue.
This patch is ok for me.

> > 
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
