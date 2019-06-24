Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A9A4FF5B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 04:27:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lUjeaiRPh4XuS7glMHztK/7MZB+k6IcK7QcBcQnL/TY=; b=FGR98cYZxlQCrM
	ALrhFhd/CgRUPPICiJoqGJqjfkf/Cb3WUNt1A9yg1OYgLrk9c7RQtIXmFLkTxrTF0sl36Uoxngw0l
	0gcTLOVGF4eSBuZgLPYCn5kJNXkLdJOqOEk9iRrKfZkfFl5+j7N4sAUjpUaT4EPEKA17p0qSxGHrc
	lgBDTH5Fm8MD36QJWMEFoGwuDULc51QKGMakE6YgnvYJesaRsm4phqRj+Q/7C+jgNFhOU0Pf4tM2H
	Hv7enXmBkI/O4sAIcnpbgVZQZMndDgaz/Gu7/5mWOu8sBjt4hTiDfakCauI2cYJBNJzkxYmyAvOyf
	hMBZxSdJzy1bBiG5HlwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfEhu-0003Ud-3L; Mon, 24 Jun 2019 02:27:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfEhe-0003UB-RE
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 02:27:32 +0000
Received: from dragon (li1322-146.members.linode.com [45.79.223.146])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E22FF20673;
 Mon, 24 Jun 2019 02:27:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561343250;
 bh=ou2nDa4kNa8Pv4nkFnhiNPp3TzP3RXH/iQPlya1mB2s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=l1Bkm9jZrS8R93bPW+8w45kq/C2uyFqIlhyY6U+jjclFujI+oqLsgfu9GIgQbspDa
 +v8wBGNfLcygxHfHmSIsyWr2pu31FOkLi+pAgPCTtEXThDoUZcb8ons8a0WNe/gaAv
 /xVPCMYtS1DjaV8NPq8ZJsJZACXKEDQTLd+WphCM=
Date: Mon, 24 Jun 2019 10:27:14 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson.Huang@nxp.com
Subject: Re: [PATCH 1/4] arm64: Enable TIMER_IMX_SYS_CTR for ARCH_MXC platforms
Message-ID: <20190624022713.GO3800@dragon>
References: <20190621070720.12395-1-Anson.Huang@nxp.com>
 <20190624022200.GN3800@dragon>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190624022200.GN3800@dragon>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_192730_901949_6DB6B272 
X-CRM114-Status: GOOD (  13.87  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, aisheng.dong@nxp.com, peng.fan@nxp.com,
 ping.bai@nxp.com, will@kernel.org, devicetree@vger.kernel.org,
 sboyd@kernel.org, catalin.marinas@arm.com, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, daniel.baluta@nxp.com, mturquette@baylibre.com,
 robh+dt@kernel.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 leonard.crestez@nxp.com, festevam@gmail.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, abel.vesa@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 10:22:01AM +0800, Shawn Guo wrote:
> On Fri, Jun 21, 2019 at 03:07:17PM +0800, Anson.Huang@nxp.com wrote:
> > From: Anson Huang <Anson.Huang@nxp.com>
> > 
> > ARCH_MXC platforms needs system counter as broadcast timer
> > to support cpuidle, enable it by default.
> > 
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> >  arch/arm64/Kconfig.platforms | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
> > index 4778c77..f5e623f 100644
> > --- a/arch/arm64/Kconfig.platforms
> > +++ b/arch/arm64/Kconfig.platforms
> > @@ -173,6 +173,7 @@ config ARCH_MXC
> >  	select PM
> >  	select PM_GENERIC_DOMAINS
> >  	select SOC_BUS
> > +	select TIMER_IMX_SYS_CTR
> 
> Where is that driver?

Okay, just found it in the mailbox.  They seem to be sent in the wrong
order.  Really, you should send this series only after the driver lands
on mainline.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
