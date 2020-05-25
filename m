Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE3681E1257
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 18:06:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JzyOikiEErUgwMKuz9fP/nr3hXClVLmLaAa1JD4+xhc=; b=o46l5mBkAzHKkj
	aOjYgqhhGmaZePd2l7eEjwB4/bnCu5nRplgHq3XV2p3CS28UuP5RiJZ3oNaUlcO/r4q7MYOUWV52E
	hrMmdElmnuLVYR+ko8y8bzxZ8yNQVd7uToMkaA9tuKREpAdU3KsE2rKSMYLmcntNNK0ao+A6nYEEw
	GbvPgE4dgVO0VfEiTWbwGYJp8hs1IBpX3+yo63mZytqMb/KeCFrMGdz4SMUX8saDaxlUaAlvEa9v1
	BYSttR2/+51A0tNJ7g59jLmq+UFfxRGMMO5CC/t0iOoAWTL2BBf38qJUYEmiCMq5JmxNUwR4T+eDe
	1sAvbblprx1DpOfOiMYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdFc0-0004fv-Cx; Mon, 25 May 2020 16:06:00 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdFbp-0004eL-LF
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 16:05:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YzvAZSrosvDChzEiaS5Q8/ZPHohPgNhgyWrALTj4cbk=; b=YnWReJ+pz5Wv+yAdbJI1vI/HIt
 zmFOj2+wvqxTgmTWj0O3+YcLkAjXAY7sBcMqVSsHrlhJmTBssvpAtH5nT22YR1jChwCqNCex1xO+F
 TwBWtUCF+tlOl/FAWZG3LzhUs3lb1PpbB4ib+2ml/1osHSqh4368Ic/zuphKIfx0hljU=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1jdFbd-003CcN-Co; Mon, 25 May 2020 18:05:37 +0200
Date: Mon, 25 May 2020 18:05:37 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Andy Duan <fugang.duan@nxp.com>
Subject: Re: [EXT] Re: [PATCH] stmmac: platform: add "snps,dwmac-5.10a" IP
 compatible string
Message-ID: <20200525160537.GD762220@lunn.ch>
References: <1590394945-5571-1-git-send-email-fugang.duan@nxp.com>
 <20200525141048.GF752669@lunn.ch>
 <AM6PR0402MB3607312E97B14B09C398B586FFB30@AM6PR0402MB3607.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM6PR0402MB3607312E97B14B09C398B586FFB30@AM6PR0402MB3607.eurprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_090549_696733_01C45DE2 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "alexandre.torgue@st.com" <alexandre.torgue@st.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "joabreu@synopsys.com" <joabreu@synopsys.com>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "peppe.cavallaro@st.com" <peppe.cavallaro@st.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 25, 2020 at 04:00:29PM +0000, Andy Duan wrote:
> From: Andrew Lunn <andrew@lunn.ch> Sent: Monday, May 25, 2020 10:11 PM
> > On Mon, May 25, 2020 at 04:22:25PM +0800, Fugang Duan wrote:
> > > Add "snps,dwmac-5.10a" compatible string for 5.10a version that can
> > > avoid to define some plat data in glue layer.
> > 
> > Documentation/devicetree/bindings/net/snps,dwmac.yaml ?
> > 
> >       Andrew
> 
> Here, we don't want to use generic driver "dwmac-generic.c" for 5.10a version
> since it requires platform specific code to be functional, like the we implement
> glue layer driver "dwmac-imx.c" to support 5.10a on i.MX platform.
> 
> So I think it doesn't require to add the compatible string into dwmac.yaml. 

Hi Andy

It needs to be documented somewhere. If not
Documentation/devicetree/bindings/net/snps,dwmac.yaml it needs to be
in an NXP specific document.

   Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
