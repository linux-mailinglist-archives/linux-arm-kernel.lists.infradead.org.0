Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 090FB13B7AC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 03:28:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J+FuW6NjqRffkX+V2OW9ldWovrolYrtwgUK4JHcM6aA=; b=C5dwidYbZRjnKm
	ORXEgOqYFNPKFnQmtLL+nwQLFpB2qFy0dl/K5Js8L0hmudEI8cptQkIsFMDmgyWjMiUti+PifwC7y
	ve39K4NO9pUYfzSWzvPeAZYwQIlxYnvHBziv9wd6vy8Qvq7IPdLg2QkX1n7Ej6rM9h5aY+gSmX59j
	Q2LGIyBDH6Naw5sG0MRtg3bBVZdDYYTJ8ozK9O0yCD2qYNVqx51yuV2BT85KtnK2YGqJZ23Q3we+x
	JhtawLUvMtqPd7RxViVx/US8P3zyEihTJaLm3OuLO2NSxn5zKJWZtq3u/2eutKb5QLrt/Q20kITrh
	Pxfhnyqf5QtQVyp7Oj2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irYPU-00046e-BP; Wed, 15 Jan 2020 02:27:56 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irYP9-00045H-V3; Wed, 15 Jan 2020 02:27:37 +0000
X-UUID: fe80f3403572480289d653f60677eb9b-20200114
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=t7G0F5wFKNpxOWWP1HfUu2lE6k+aZLiE8/TaEH0DhZY=; 
 b=ePJgFl1O0gI1j7JP5yfOQJZvZQSsKi2O++HGnh7M/Fzuh2fihu/AVLhw+0qDXabJASuzXnqkThlCGLWMt8Eniih2xPsotjYvoq1O/E19ebOi6R8IiTWPaUWmZvpQm0FVcSuTEBKN90ja61Of7MYuKkqV34WUT8USgv5Rexy4VcM=;
X-UUID: fe80f3403572480289d653f60677eb9b-20200114
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1600501926; Tue, 14 Jan 2020 18:27:29 -0800
Received: from MTKMBS32DR.mediatek.inc (172.27.6.104) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 14 Jan 2020 18:28:15 -0800
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS32DR.mediatek.inc
 (172.27.6.104) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Wed, 15 Jan 2020 10:26:26 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 15 Jan 2020 10:26:37 +0800
Message-ID: <1579055239.21256.41.camel@mhfsdcap03>
Subject: Re: [RESEND PATCH v5 01/11] dt-bindings: phy-mtk-tphy: add two
 optional properties for u2phy
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Kishon Vijay Abraham I <kishon@ti.com>
Date: Wed, 15 Jan 2020 10:27:19 +0800
In-Reply-To: <970b7cce-40ed-9ab7-5e04-9e3d609eadf7@ti.com>
References: <1578448326-27455-1-git-send-email-chunfeng.yun@mediatek.com>
 <20200110111006.GB2220@a0393678ub> <1578990166.21256.35.camel@mhfsdcap03>
 <970b7cce-40ed-9ab7-5e04-9e3d609eadf7@ti.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: D6F4E3B3560C67F3EC8745B1AA703FF32EBECC3C2932946A4CB08C403FC63D962000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_182736_011370_58F1B353 
X-CRM114-Status: GOOD (  21.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Kishon Vijay Abraham I <kishon@a0393678ub>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Kishon,

On Tue, 2020-01-14 at 14:01 +0530, Kishon Vijay Abraham I wrote:
> Hi Chunfeng,
> 
> On 14/01/20 1:52 PM, Chunfeng Yun wrote:
> > Hi Kishon,
> > 
> > On Fri, 2020-01-10 at 16:40 +0530, Kishon Vijay Abraham I wrote:
> >> Hi,
> >>
> >> On Wed, Jan 08, 2020 at 09:51:56AM +0800, Chunfeng Yun wrote:
> >>> Add two optional properties, one for tuning J-K voltage by INTR,
> >>> another for disconnect threshold, both of them are related with
> >>> connect detection
> >>>
> >>> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> >>> Acked-by: Rob Herring <robh@kernel.org>
> >>
> >> Patch does not apply. I get the following errors
> >> error: patch failed: Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt:52
> >> error: Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt: patch does not apply
> >> error: Did you hand edit your patch?
> >>
> >> Can you send them again in the right format?
> > I download this patch from https://patchwork.kernel.org/patch/11322505/
> > and fetch kernel5.5-rc5, then
> 
> Please try applying to
> git://git.kernel.org/pub/scm/linux/kernel/git/kishon/linux-phy.git next

Sorry, still not reproduce it on your next branch, logs as following:

[linux-phy]$git am --reject
RESEND-v5-01-11-dt-bindings-phy-mtk-tphy-add-two-optional-properties-for-u2phy.patch
Applying: dt-bindings: phy-mtk-tphy: add two optional properties for
u2phy
Checking patch Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt...
Applied patch Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
cleanly.

[linux-phy]$git log --oneline -6
e93d3cf70eee (HEAD -> next) dt-bindings: phy-mtk-tphy: add two optional
properties for u2phy
28a263814638 (origin/next) dt-bindings: phy: Add PHY_TYPE_DP definition
56b337ef505d phy: ti: j721e-wiz: Fix return value check in wiz_probe()
b66d1ac82918 dt-bindings: usb: Convert Allwinner A80 USB PHY controller
to a schema
b109c13a533b phy: intel-lgm-emmc: Fix warning by adding missing
MODULE_LICENSE
c9f9eba06629 phy: ti: j721e-wiz: Manage typec-gpio-dir

> > 
> > git am --reject
> > RESEND-v5-01-11-dt-bindings-phy-mtk-tphy-add-two-optional-properties-for-u2phy.patch
> > Applying: dt-bindings: phy-mtk-tphy: add two optional properties for
> > u2phy
> > Checking patch Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt...
> > Applied patch Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
> > cleanly.
> > 
> > don't reproduce the error you encountered, can you tell me the steps you
> > apply the patch, thanks
> 
> git am chunfeng.yun.patch --reject
> Applying: dt-bindings: phy-mtk-tphy: add two optional properties for u2phy
> Checking patch Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt...
> error: while searching for:
> - mediatek,eye-vrt	: u32, the selection of VRT reference voltage?
> - mediatek,eye-term	: u32, the selection of HS_TX TERM reference voltage?
> - mediatek,bc12	: bool, enable BC12 of u2phy if support it?
> ?
> Example:?
> ?
BTW, ? is line break?

When I open the patch by vim, and set invlist, line break is $.

> 
> error: patch failed:
> Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt:52
> Applying patch Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
> with 1 reject...
> Rejected hunk #1.
> Patch failed at 0001 dt-bindings: phy-mtk-tphy: add two optional
> properties for u2phy
> Use 'git am --show-current-patch' to see the failed patch
> When you have resolved this problem, run "git am --continue".
> If you prefer to skip this patch, run "git am --skip" instead.
> To restore the original branch and stop patching, run "git am --abort".
> 
> Thanks
> Kishon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
