Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 192D2161FC8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 05:22:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XtWZBj+lv6bA2RcVhKj0ieBx5LRFkVuRjpgKGapbYFc=; b=OAYzL2NWqGAFP0
	qpqg/ocoiJjrruTKUp/tHhap5FK3hS7BsLRc/om+l5fJRgbTxfYucl0xjRTfdaCI2gbgNypcm1eX7
	eeiVTZOkWX5iYz7z2Tg0S4Um0HFw01jCd3HwKJae7SFV1FxIKeyGaHRTmZsPrsePKJqspyp8OseuT
	MKhuSKeH8Xyx7tqtVYIKBuCsk9Q+JWJyfo/yHzREAAPBkT5mVXahlQFO9L9jXbRDbsWp3Q8yeRCBc
	69UwmgXkYh4WV7ITSeXtENlXVf0AT78yH6z2MgwvlPFJadY4xRrnFrlmmXrlQ1h2u1HenuHPW0mzc
	eogpolghsmf/FwPsqzMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3uP9-0005bg-49; Tue, 18 Feb 2020 04:22:39 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3uOz-0005aO-2v; Tue, 18 Feb 2020 04:22:31 +0000
X-UUID: a763f1c528ff4016a936ce9ef81dc152-20200217
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=sC1dH8d6p1Sb7KU8Fpm99duFBOtY/J9QQu2NqxSwvKI=; 
 b=meGckE/RlG4C4gn9SvGq8p7btegtkWaCNAgOrHGz5uXE/hPuHn/nEmO/H6Kv4baV/2NN3DNL1UaM1l9a7y41uXPsT1YJYIBBgT6EWqymZ870u0XJJDg60VTd137oQo11g/9CSPeQ+bxQKfpnEI4WlITaUr09aIK66rqrIoYuvD8=;
X-UUID: a763f1c528ff4016a936ce9ef81dc152-20200217
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <macpaul.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 931175499; Mon, 17 Feb 2020 20:22:22 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 17 Feb 2020 20:13:10 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 18 Feb 2020 12:09:51 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 18 Feb 2020 12:11:50 +0800
Message-ID: <1581999138.19053.21.camel@mtkswgap22>
Subject: Re: [PATCH v7 0/7] Add basic SoC support for mt6765
From: Macpaul Lin <macpaul.lin@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Stephen Boyd <sboyd@kernel.org>
Date: Tue, 18 Feb 2020 12:12:18 +0800
In-Reply-To: <bf5e1a64-1aaa-e1e0-00bf-c0e750dd27ed@gmail.com>
References: <1581067250-12744-1-git-send-email-macpaul.lin@mediatek.com>
 <158155109134.184098.10100489231587620578@swboyd.mtv.corp.google.com>
 <bf5e1a64-1aaa-e1e0-00bf-c0e750dd27ed@gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 84BB3C13CA23C8AB9C9ED080959C0C3F21F3FB9B8B07A59D24DCEF47D5C4BF1C2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_202229_137742_D297BD93 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Mediatek WSD Upstream <wsd_upstream@mediatek.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Michael
 Turquette <mturquette@baylibre.com>, Loda
 Chou <loda.chou@mediatek.com>, Fabien Parent <fparent@baylibre.com>,
 Mars Cheng <mars.cheng@mediatek.com>, Will Deacon <will@kernel.org>,
 linux-clk@vger.kernel.org, Ryder Lee <Ryder.Lee@mediatek.com>,
 Weiyi Lu <weiyi.lu@mediatek.com>, Evan
 Green <evgreen@chromium.org>, Yong Wu <yong.wu@mediatek.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, mtk01761 <wendell.lin@mediatek.com>,
 Owen Chen <owen.chen@mediatek.com>, devicetree@vger.kernel.org, Joerg
 Roedel <jroedel@suse.de>, Marc Zyngier <marc.zyngier@arm.com>,
 Sean Wang <Sean.Wang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 CC Hwang <cc.hwang@mediatek.com>, Stephen Boyd <sboyd@kernel.org>,
 linux-kernel@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 2020-02-15 at 02:47 +0100, Matthias Brugger wrote:

Hi Stephen,

> Hi Stephen,
> 
> On 13/02/2020 00:44, Stephen Boyd wrote:
> > Quoting Macpaul Lin (2020-02-07 01:20:43)
> >> This patch adds basic SoC support for Mediatek's new 8-core SoC,
> >> MT6765, which is mainly for smartphone application.
> > 
> > Clock patches look OK to me. Can you resend them without the defconfig
> > and dts patches and address Matthias' question?
> > 
> 
> I'm not sure if I understand you. Do you prefer to have just the clock parts
> send as an independent version so that you can easier apply the patches to your
> tree?
> 
> Patch 2, 5, 6 and 7 should go through my tree.
> So do you want a series with patches 1, 3 and 4?
> 
> Regards,
> Matthias

Yup, I've got a little bit confused, too.
Should I separate and resend these patches into 2 patch sets?
The 1st patch set includes #1, #3, and #4?
And the other includes #2, #5, #6, and #7?

Regards,
Macpaul Lin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
