Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 256BA1E04BB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 04:32:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ByUKUXBOsMqVEnLP/1KcfSPSJd3Y4REc8LU+py1i/4Q=; b=ESZpf5wNGSNMp0
	F1fHBPcFEghGHo72JjhyNaZHqT+1lMB4+eyV1/tSY12MskWCniKGW6HGDsF/nL5WHNu6U8/zCGvXn
	Kz9QWQyCprS/bsQnPvYLubTl39BnfdWQHbaoiWQbZVzsn7Amk2M5D/URWQWDB28gg4CXUKUihD20A
	C33UE9OXx+mjfrTiKreSyrlQJq9v4hQQ974Ta3Yj7CR0qJrx+myFDzsHtlCzI24Nz/cU2JQjYOAte
	Gsh/zCzUzVfDePPrxwWQJMztF6PB/Sv1rkhkyLnVF09opZ7iNMUGMHdZqcG6ixMDe6w5JI+N4nYmV
	HW9r65JbyiUtXWt5X+Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd2uX-0001xw-Tv; Mon, 25 May 2020 02:32:17 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd2tz-0001i9-Q8; Mon, 25 May 2020 02:31:45 +0000
X-UUID: e6ce3daf9c914beabf01cb587a3a05d2-20200524
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=ooK+iIy0dqz3B+xhJunMUOu6PJzalddKbdB9jFuuiGs=; 
 b=u7VuTHcf3wfTIbRVMWoptP87ILwu8lhZR4uArS31w8+PdGNRLcy2IFCsDTc+p1ftoyee6+jgE0zjl4IiEi7pYH+u5t8hQ4QQMDGF/G+pRxzhP0lqb6ZXkC5/LAMNXwgzxEPAP/BnmQH/uSP4SWYVRIFU/dawKz6RGBzmqWjHrA4=;
X-UUID: e6ce3daf9c914beabf01cb587a3a05d2-20200524
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <andrew-sh.cheng@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1472562909; Sun, 24 May 2020 18:31:32 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sun, 24 May 2020 19:21:30 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 25 May 2020 10:21:28 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Mon, 25 May 2020 10:21:27 +0800
Message-ID: <1590373289.12854.3.camel@mtksdaap41>
Subject: Re: [PATCH V3] arm64: dts: mediatek: add cpufreq and cci devfreq
 nodes for mt8183
From: andrew-sh.cheng <andrew-sh.cheng@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Date: Mon, 25 May 2020 10:21:29 +0800
In-Reply-To: <085be59e-76d5-4743-0f0c-12f6440715fe@gmail.com>
References: <1576826785-3867-1-git-send-email-andrew-sh.cheng@mediatek.com>
 <085be59e-76d5-4743-0f0c-12f6440715fe@gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_193143_848434_FC354485 
X-CRM114-Status: GOOD (  11.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 2020-05-23 at 21:04 +0200, Matthias Brugger wrote:
> 
> On 20/12/2019 08:26, Andrew-sh.Cheng wrote:
> > From: "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>
> > 
> > add cpufreq and cci devfreq nodes for mt8183
> > 
> > Depend on regulator node patch:
> > https://patchwork.kernel.org/patch/11284617/
> > 
> > Signed-off-by: Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>
> > ---
> >  arch/arm64/boot/dts/mediatek/mt8183-evb.dts |  36 ++++
> >  arch/arm64/boot/dts/mediatek/mt8183.dtsi    | 245 ++++++++++++++++++++++++++++
> >  2 files changed, 281 insertions(+)
> > 
> [...]
> > +
> > +	cci: cci {
> > +		compatible = "mediatek,mt8183-cci";
> 
> I wasn't able to find anyprovider for this compatible.
> 
> I'll drop this patch from my queue.
> 
> Regards,
> Matthias
Hi Matthias,

I put the dt-binding at another patch set.
https://patchwork.kernel.org/patch/11559265/
I will integrate this patch with that patch set and resend.
Thank you.

BR
Andrew-sh.Cheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
