Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C8251D55C2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 18:20:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yf62bxtuSS7VACDO10CQ4iAonQrWnzTTpqici25RUR4=; b=C5/m8lhjUHM+ZY
	20orocDoEBd0AIbgdJWkgdVyfKUk/WvZCNR8y1LkiX5Huwy33IjV8p/oTr5UJqaYDPvTs3FeGklWN
	ofRfOhFf4YOvMhCDEG6QzNiMqNeruFzsWbjT9WOutV9RZrWgL2o/hK5sQZDzS+heX79+aw4mDqpBy
	7fxEI1/lGlvgRKZrlIqP74uIKgrPajNUcAYHv62P8e4zD5c0btpzpGSKKOBgmpNHcVgeh7Mx7096H
	q+WFbdVH2Fcok5NxdPuY9CbPrDECxUVE5ZMUeXkwdXrzN5AWezc3sZX79gdFtn8tuBmGLu+Hsi6QZ
	DPkJ3rCthntxRPgrNeAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZd4W-0000Sq-Cn; Fri, 15 May 2020 16:20:28 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZd4H-0006Xj-Gx; Fri, 15 May 2020 16:20:17 +0000
X-UUID: 4597d2909441446fbd672b14d3cc48de-20200515
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=daT5vIjMMWKHxeEq35Hg3A5bQddsffUWP1nkfOQhP6s=; 
 b=gnu6BnKSdmTStfX/P09VcThW+EUE3y4Z1paN2zromqco3UYPQuJtgzn0olhgqNNqQBIN4gUl02xHN+H9SQdZHW5wy4/DwSHjsGvRs+eraYt8dKHfbncVCNdJqfkytYgjSKXflUAQt6pjl/tlauw0qQHuWYwVtRPNImfMhnX/ZcU=;
X-UUID: 4597d2909441446fbd672b14d3cc48de-20200515
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <yingjoe.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1109447986; Fri, 15 May 2020 08:19:45 -0800
Received: from MTKMBS32N2.mediatek.inc (172.27.4.72) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 15 May 2020 09:19:56 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 MTKMBS32N2.mediatek.inc (172.27.4.72) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 16 May 2020 00:19:54 +0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Sat, 16 May 2020 00:19:43 +0800
Message-ID: <1589559587.28571.0.camel@mtksdaap41>
Subject: Re: [PATCH v8 2/3] drivers: input: keyboard: Add mtk keypad driver
From: Yingjoe Chen <yingjoe.chen@mediatek.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Date: Sat, 16 May 2020 00:19:47 +0800
In-Reply-To: <20200515114044.GR185537@smile.fi.intel.com>
References: <20200515062007.28346-1-fengping.yu@mediatek.com>
 <20200515062007.28346-3-fengping.yu@mediatek.com>
 <20200515093016.rw5bmvoumgzvkqrc@pengutronix.de>
 <20200515114044.GR185537@smile.fi.intel.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 504A2C560B75F9C0E94BF133E726E79914057E37B5687E4BA8C310B10E096B912000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_092013_579249_12015736 
X-CRM114-Status: UNSURE (   7.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Marco Felsch <m.felsch@pengutronix.de>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Fengping Yu <fengping.yu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2020-05-15 at 14:40 +0300, Andy Shevchenko wrote:
> On Fri, May 15, 2020 at 11:30:16AM +0200, Marco Felsch wrote:
> > On 20-05-15 14:20, Fengping Yu wrote:
> 
> ...
> 
> > > +	depends on OF && HAVE_CLK
> > 
> > Please drop those deps and instead use:
> 
> +1
> 
> > depends on ARCH_MEDIATEK && ARM64
> 
> I would go even further
> 	depends on (ARCH_MEDIATEK && ARM64) || COMPILE_TEST

Please drop ARM64. This works for 32bits SoC as well.

Joe.C


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
