Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD91813A344
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 09:53:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pdn9TumxFpL/jBB1uFb6+Xf+GcazvfXjCfaDqs7X7VY=; b=oNwwS8PCeKbPfj
	DuaFeLZf3ZMWlTkPwehB/2e7dyJUE85FEt3kKhSs0MVpwEd0WvsCntoaElTNfPz8hOGHjPjgisbfg
	1gMRR5obgcn1ot2c7Tq+u4BFCK8SfVR0S3OpvlBgxSN6lIHyMYii1AJDyhh/a249kxdyVsGgWz5yy
	wBHWp9W0NuUIffJ98/wPj8e2PdAumaeOdpZMymEH0ZH0dSgVGMU+Os7zYmCUX5cRvkPAoAa0kSQs2
	Bqk26CdMJSc7ORv9bz6N71Fj9FVdNFywZp4zkcItuTt3mwsdJPC/bSjkWtsXABTeODpZKOkEW+9ae
	A0WEcjz4d9gprvjIU+Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irHxD-0004PE-Ft; Tue, 14 Jan 2020 08:53:39 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irHx0-0004Nw-Qa; Tue, 14 Jan 2020 08:53:28 +0000
X-UUID: bb32172a98e44d63bc820f2c50adc678-20200114
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=Dost+0dFRh/iyChepfPjiNF1opJPrShWqwDKLyfccxU=; 
 b=kPk55WYD7CVetq4NyivfOK5nRYcuZQUUzAeXOfgFDz3OOfxGTDOwqW6XOa5wysHDdP0/DuSgBe23f9nvLi4uTazpmSdFmB/v0pj2p8IwnrOyZL+3kMJvfhx/H6KSC4Pqb8Z1dlqg9bMLCBAo7sUWnAFIq1rp8xndPvCEf/vd2GY=;
X-UUID: bb32172a98e44d63bc820f2c50adc678-20200114
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2041577777; Tue, 14 Jan 2020 00:53:20 -0800
Received: from MTKMBS33N2.mediatek.inc (172.27.4.76) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 14 Jan 2020 00:43:17 -0800
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS33N2.mediatek.inc
 (172.27.4.76) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 14 Jan 2020 16:43:39 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 14 Jan 2020 16:42:27 +0800
Message-ID: <1578991386.21256.36.camel@mhfsdcap03>
Subject: Re: [RESEND PATCH v5 01/11] dt-bindings: phy-mtk-tphy: add two
 optional properties for u2phy
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Kishon Vijay Abraham I <kishon@ti.com>
Date: Tue, 14 Jan 2020 16:43:06 +0800
In-Reply-To: <970b7cce-40ed-9ab7-5e04-9e3d609eadf7@ti.com>
References: <1578448326-27455-1-git-send-email-chunfeng.yun@mediatek.com>
 <20200110111006.GB2220@a0393678ub> <1578990166.21256.35.camel@mhfsdcap03>
 <970b7cce-40ed-9ab7-5e04-9e3d609eadf7@ti.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: D582942802D1883A0CC1327A8F6B5666E8F2723D1A7B198DCC432FD73969D2B32000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_005326_868747_B9B20E20 
X-CRM114-Status: GOOD (  20.37  )
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

Got it, will test again, thanks a lot

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
