Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35DE6F41E4
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 09:14:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M1wOu4wKLL0ud9iSScrj/IvDYVZRTMfq7Sw1Ja7iT6Q=; b=ekOiE/SEXNW6ee
	6JCTUtboZa8+KZJ44q52K1LFWIFz5wp7TbMcJCQPEcGdt7nchEQ6ovzeTfDrpbhEeU1FN9btnoWkb
	PdkPPqULEgEaej7789WKuFNvr07LZiVnHrE6S5WygGxFImvSxBNX8z1PH+3rOgxNpDI4oR7gFvDhC
	fO/6Zm5tS/e0RFpJ3F03sQ4n6yKB55NWfGfhK1WxGiWP+6BN0eRN/PLpVenvcr3DOitUG3kCCzZf8
	DY/efd6QcdnjPHtmpr0h4hc4gT/v03hmd09SYEM3fB+7NuXdN6RFEOMZMmy/bl/3Hz4yZnC+ZBYfK
	C6tkhI1sUuKimJSKdAqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSzPE-0008Vs-Ou; Fri, 08 Nov 2019 08:14:08 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSzP3-0008VA-Lq; Fri, 08 Nov 2019 08:13:58 +0000
X-UUID: e281e83cdbf54713aeeb88feaa1d44de-20191108
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=xBlkyXC6QXDUVtiAo1Ep4CtUp9rzUNb55vuuwtwgRxQ=; 
 b=gaNzLAbHUbPc8cHrLJOCkW0kG80ufIGtRF9iUaqDaRtsVQh8ow/lZUTpXlzHkhwouwrhoa21FFfCtS57v/v6pwjhTJvW4jAuON/iUmw/aSuFcmWC7kIVENw0Wf65Tk2ZBpSHD7KJxJVMtyTRWB33G0p+Oa/7YKSqEFo251Z65m0=;
X-UUID: e281e83cdbf54713aeeb88feaa1d44de-20191108
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <mark-mc.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 279056674; Fri, 08 Nov 2019 00:13:38 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 8 Nov 2019 00:13:28 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 8 Nov 2019 16:13:26 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 8 Nov 2019 16:13:26 +0800
Message-ID: <1573200809.10348.9.camel@mtksdccf07>
Subject: Re: [PATCH net] net: ethernet: mediatek: rework GDM setup flow
From: mtk15127 <Mark-MC.Lee@mediatek.com>
To: David Miller <davem@davemloft.net>
Date: Fri, 8 Nov 2019 16:13:29 +0800
In-Reply-To: <20191107.154922.1123372183066604716.davem@davemloft.net>
References: <20191107105135.1403-1-Mark-MC.Lee@mediatek.com>
 <20191107.154922.1123372183066604716.davem@davemloft.net>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_001357_723362_F09AB197 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, andrew@lunn.ch, jakub.kicinski@netronome.com,
 devicetree@vger.kernel.org, netdev@vger.kernel.org, sean.wang@mediatek.com,
 linux-kernel@vger.kernel.org, opensource@vdorst.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, john@phrozen.org, matthias.bgg@gmail.com,
 Mark-MC.Lee@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-11-07 at 15:49 -0800, David Miller wrote:
> From: MarkLee <Mark-MC.Lee@mediatek.com>
> Date: Thu, 7 Nov 2019 18:51:35 +0800
> 
> > +	for (i = 0; i < 2; i++) {
> 
> This is a regression, because in the existing code...
> 
> > -	for (i = 0; i < MTK_MAC_COUNT; i++) {
> 
> the proper macro is used instead of a magic constant.
 Yes, you are right, I make a mistake here, will correct it in the next
patch
> 
> You're doing so many things in one change, it's hard to review
> and audit.
> 
> If you're going to consolidate code, do that only in one change.
> 
> Then make other functional changes such as putting the chip into
> GDMA_DROP_ALL mode during the stop operation etc.
Thanks for your suggestion, I will separate these changes into
a patch series to make every change to be more clear for its 
purpose.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
