Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FC0A17D84C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 04:36:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D7UcFnvKDoEliOhpXCrvMPQE7modzIu3dF9xSbgidaE=; b=p2ic2RL3FhEU2X
	ANoFbhh2URJtbvfTPZojFmKcG6WLx+OSEG1pVvYt6AXYviBb3McpmAI5K27YDlzrs3knlxMoLNhZ6
	wDx4F6/RvLpmsziCZ129bSCiUv8x0HMtyZzJ0LCykFtYIMaeqpUcyfrEXKBmei/oOvMK39WZ8FFXg
	ffv/tnJRVkNkNxVXPYkADDWTm6H3c3E2gpkXytZgT9rHo8dnh4PCh0XRsUSwasvoez17ACHM0RreQ
	l+6xRL/BNBLWb0UP5MjZ/qiu23qUGZ5Zg09o6Xhcli4zvdVbCsi1BFVRPQTbcvKD35w+yvTrub8Hd
	3pFbO3aHUwRIR/pfkIBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jB9D2-00085b-H0; Mon, 09 Mar 2020 03:36:04 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jB9Ct-00083d-L2; Mon, 09 Mar 2020 03:35:57 +0000
X-UUID: 7d1e5005fd2c4a6393e834ca6484086a-20200308
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=NPplXrKgtKtz1x0Ix8YmImoSvkv1+1IC9efSsIgz5rA=; 
 b=AB2oTMhhsGwn7IAr4Qzok/BmldTZg5IS9JmZN2xCjI5wr/ORouceMWiyafGUawfICQvU95eYdBUDW/qbTz6nxSeSEz3QFGN7yysqmtAjGFoGAZvA/zTOtd9ld+v+4Gd8/bt7HxL6+7CNpjsWsr7/Yab57m4v1KKZhDyoidVVKTY=;
X-UUID: 7d1e5005fd2c4a6393e834ca6484086a-20200308
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <sam.shih@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1619119128; Sun, 08 Mar 2020 19:35:45 -0800
Received: from MTKMBS06N2.mediatek.inc (172.21.101.130) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 8 Mar 2020 20:35:46 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs06n2.mediatek.inc (172.21.101.130) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 9 Mar 2020 11:35:41 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 9 Mar 2020 11:35:38 +0800
Message-ID: <1583724941.15393.8.camel@mtksdccf07>
Subject: Re: [PATCH v2 1/1] pwm: mediatek: add longer period support
From: Sam Shih <sam.shih@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Uwe
 =?ISO-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Date: Mon, 9 Mar 2020 11:35:41 +0800
In-Reply-To: <20200308201811.hlac57s3h4p4cgev@pengutronix.de>
References: <1583230755-25986-1-git-send-email-sam.shih@mediatek.com>
 <1583230755-25986-2-git-send-email-sam.shih@mediatek.com>
 <1a3a523e-62ff-e380-c67b-12f742d348ea@gmail.com>
 <20200308201811.hlac57s3h4p4cgev@pengutronix.de>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: BF9287628D924EBECDF23B1AA8716029622345E5AC47F06F0882C90E7795C30A2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_203555_701682_ED606157 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-pwm@vger.kernel.org, linux-kernel@vger.kernel.org, Thierry
 Reding <thierry.reding@gmail.com>, linux-mediatek@lists.infradead.org,
 John Crispin <john@phrozen.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On Sun, 2020-03-08 at 21:18 +0100, Uwe Kleine-K=F6nig wrote:
> Hello,
> =

> On Sat, Mar 07, 2020 at 10:28:36PM +0100, Matthias Brugger wrote:
> > On 03/03/2020 11:19, Sam Shih wrote:
> > > The pwm clock source could be divided by 1625 with PWM_CON
> > > BIT(3) setting in mediatek hardware.
> > > =

> > > This patch add support for longer pwm period configuration,
> > > which allowing blinking LEDs via pwm interface.
> > =

> > Is this a fix? In this case please provide a Fixes tag with the commit =
ID which
> > introduced the bug.
> =

> I'd say it qualifies as a fix if without it a request with a long period
> returns success but isn't properly implemented. Otherwise it's only a
> new feature.
> =


It's only a new feature.

Without this patch, pwm_mediatek_config return -EINVAL when receive a
long period request.

I will send v3 to reply Uwe's comment.


Best Regards,
Sam Shih

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
