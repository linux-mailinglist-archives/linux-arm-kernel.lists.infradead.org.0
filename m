Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFACC164DD5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 19:41:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VDz8xNWxdxq5OZWP/efpbUvBQko6gUAL+Fhn9X/9UVM=; b=mfIrn5ojoC+mfn
	cIsjZrJiGBERaMtg1dZsg0jftoEWtNRDjSHVevuzRMihNbbUxro4TllBkG9TYJIAAUuYn+8pYkJEy
	SAXgVR4Mu6BlrxjcVNPh3a/+amvFYPp+cQBr7OZMQ4HsI3VEnkyd8k52w4+Lpun4/K3qqZfZTF840
	gB0az2MeqGivaNByfH+S4ug43Osyx7jJx+FMIYF7Do1gLRF+aoDMQ0nlhrjbR6YQuXcZH001d1bUf
	21AmeivwQAOmIF9GHHxRApHaWwtwoSd4oOip9R4S1bi21NFyQu+rPCfZ/6X1f9tYO2gc5eRf2B2JD
	SP9/6S5RXarSzhXBqGng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4UI2-0005vi-1H; Wed, 19 Feb 2020 18:41:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4UHu-0005vM-3f; Wed, 19 Feb 2020 18:41:35 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9A62B24670;
 Wed, 19 Feb 2020 18:41:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582137693;
 bh=y154k2uuTbGD94Zlk02vS2B19qqnUVB2EVKv7l94kNw=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=Pg2nZ4uoohWZjP+BIMtpi2NMG9sPU8dIIUTvOC22OSIqGA70OfJB/rzFiJCYjpeww
 DvQL878DwOMYisPb3aPKrLmjbuIOnIjYLwJaVOs1g/vlRJxfuyG+hZApM+W0rTipbe
 QcDbarV7quXlg7jGtGql29sX3o8CfyG29JO0ztAU=
MIME-Version: 1.0
In-Reply-To: <2c6728a5-7789-4ca2-a173-67df57fe5f1e@gmail.com>
References: <1581067250-12744-1-git-send-email-macpaul.lin@mediatek.com>
 <158155109134.184098.10100489231587620578@swboyd.mtv.corp.google.com>
 <bf5e1a64-1aaa-e1e0-00bf-c0e750dd27ed@gmail.com>
 <1581999138.19053.21.camel@mtkswgap22>
 <2c6728a5-7789-4ca2-a173-67df57fe5f1e@gmail.com>
Subject: Re: [PATCH v7 0/7] Add basic SoC support for mt6765
From: Stephen Boyd <sboyd@kernel.org>
To: Macpaul Lin <macpaul.lin@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>
Date: Wed, 19 Feb 2020 10:41:32 -0800
Message-ID: <158213769281.184098.14491216159423631295@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_104134_169236_33074DB6 
X-CRM114-Status: GOOD (  14.59  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Catalin Marinas <catalin.marinas@arm.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Loda Chou <loda.chou@mediatek.com>, Fabien Parent <fparent@baylibre.com>,
 Mars Cheng <mars.cheng@mediatek.com>, Will Deacon <will@kernel.org>,
 linux-clk@vger.kernel.org, Ryder Lee <Ryder.Lee@mediatek.com>,
 Weiyi Lu <weiyi.lu@mediatek.com>, Evan Green <evgreen@chromium.org>,
 Yong Wu <yong.wu@mediatek.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 mtk01761 <wendell.lin@mediatek.com>, Owen Chen <owen.chen@mediatek.com>,
 devicetree@vger.kernel.org, Joerg Roedel <jroedel@suse.de>,
 Marc Zyngier <marc.zyngier@arm.com>, Sean Wang <Sean.Wang@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, CC Hwang <cc.hwang@mediatek.com>,
 linux-kernel@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Matthias Brugger (2020-02-18 08:45:42)
> 
> 
> On 18/02/2020 05:12, Macpaul Lin wrote:
> > On Sat, 2020-02-15 at 02:47 +0100, Matthias Brugger wrote:
> > 
> > Hi Stephen,
> > 
> >> Hi Stephen,
> >>
> >> On 13/02/2020 00:44, Stephen Boyd wrote:
> >>> Quoting Macpaul Lin (2020-02-07 01:20:43)
> >>>> This patch adds basic SoC support for Mediatek's new 8-core SoC,
> >>>> MT6765, which is mainly for smartphone application.
> >>>
> >>> Clock patches look OK to me. Can you resend them without the defconfig
> >>> and dts patches and address Matthias' question?
> >>>
> >>
> >> I'm not sure if I understand you. Do you prefer to have just the clock parts
> >> send as an independent version so that you can easier apply the patches to your
> >> tree?
> >>
> >> Patch 2, 5, 6 and 7 should go through my tree.
> >> So do you want a series with patches 1, 3 and 4?
> >>
> >> Regards,
> >> Matthias
> > 
> > Yup, I've got a little bit confused, too.
> > Should I separate and resend these patches into 2 patch sets?
> > The 1st patch set includes #1, #3, and #4?
> > And the other includes #2, #5, #6, and #7?
> > 
> 
> Yes please do so. I think that's what Stephen referred to.
> 

If those are the ones that aren't dts or defconfig patches sounds good
to me.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
