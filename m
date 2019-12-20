Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1B0B127403
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 04:36:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yMfeP3GJ7Sxt8oxUGy4vabp4614885jyqTqbz5nC9Vo=; b=Ew/viyP3pm9LbS
	sVH1pHt777jZRvG+jRpOuL0gVD2L7HhDz46bAMVXIzradxQVmITQpxHrepv4Y6QL8t98j9rMT23Fl
	AS9vSaJGqCAIZv2A1+Qnwj5N69QBkkIGC0Jwi05WVKAGay6xPQwLfmbYv1TB0lryo7mcu7jSuvYvf
	tY4thDvd/aIua0A5R2CksyHc65Ogyqg0H/h6isrGj4hx/GPIReWRYFyR2ceh4UkA3C4DsE3a2dDdY
	GOUktC03jelOyfp47Xlh9EjMBGQ68EW0c0o9tluagDZBUDICvKaGvGNlzk5lmOq2G7qFz6cq+5KeR
	VL2PgUmQZWsgm9lKvv+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii95x-0000fw-41; Fri, 20 Dec 2019 03:36:53 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii95g-0000eG-AM; Fri, 20 Dec 2019 03:36:37 +0000
X-UUID: 46d727b6afc1400d840f44dfd2178f0c-20191219
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=b3BvJEb+vzVbaT4+/7UIh98dwFNwj/jxNR863LYiVIU=; 
 b=l2ELMJOB4mMfTnYMA0CZpPtB2eudOKMht9/o3XcfuX2e+fDTN3hrHUo++ErjDPXSkqhZr5Yi0GehudKI3bW05+ZBtBAFVMlhLkIKPJyZYYaxGjKKVeCDO4jMX/uwAegIyS2/WUx4BSuWvgiSZwniunIDML5PEx7ApjaonNRP2qs=;
X-UUID: 46d727b6afc1400d840f44dfd2178f0c-20191219
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <weiyi.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1695137931; Thu, 19 Dec 2019 19:36:34 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 19 Dec 2019 19:30:42 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 20 Dec 2019 11:29:46 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 20 Dec 2019 11:30:26 +0800
Message-ID: <1576812619.8410.8.camel@mtksdaap41>
Subject: Re: [PATCH v10 05/12] soc: mediatek: Add multiple step bus
 protection control
From: Weiyi Lu <weiyi.lu@mediatek.com>
To: Nicolas Boichat <drinkcat@chromium.org>
Date: Fri, 20 Dec 2019 11:30:19 +0800
In-Reply-To: <CANMq1KAB9vTDY+d1ktmAtxCGMYqc_C9-SzLzOkLyBmgLz39KYQ@mail.gmail.com>
References: <1576657848-14711-1-git-send-email-weiyi.lu@mediatek.com>
 <1576657848-14711-6-git-send-email-weiyi.lu@mediatek.com>
 <CANMq1KAB9vTDY+d1ktmAtxCGMYqc_C9-SzLzOkLyBmgLz39KYQ@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_193636_363301_E1376265 
X-CRM114-Status: GOOD (  10.62  )
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
Cc: Rob Herring <robh@kernel.org>, srv_heupstream <srv_heupstream@mediatek.com>,
 James Liao <jamesjj.liao@mediatek.com>, lkml <linux-kernel@vger.kernel.org>,
 Fan Chen <fan.chen@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Sascha Hauer <kernel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-12-19 at 11:51 +0800, Nicolas Boichat wrote:
> On Wed, Dec 18, 2019 at 4:31 PM Weiyi Lu <weiyi.lu@mediatek.com> wrote:
> >
> > Both MT8183 & MT6765 have more control steps of bus protection
> > than previous project. And there add more bus protection registers
> > reside at infracfg & smi-common. Also add new APIs for multiple
> > step bus protection control with more customized arguments.
> >
> > Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
> ...
> > diff --git a/include/linux/soc/mediatek/scpsys-ext.h b/include/linux/soc/mediatek/scpsys-ext.h
> 
> Will this include file be used by anything other than
> drivers/soc/mediatek/scpsys*.c? If so I think you should keep it in
> drivers/soc/mediatek/ instead.
> 

No. And I'll move it under drivers/soc/mediatek/

> I also still had a comment in v9 about clr_mask, otherwise this looks ok.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
