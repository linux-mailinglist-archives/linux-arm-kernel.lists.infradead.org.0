Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA492203D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 May 2019 00:25:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WZl3H969vQfBkuISMCwAe1mNmy5JrkBVOiBoZrFzJwo=; b=cGrbc/WBha6Kj0
	Dp/c/nmmXTYt7rqH/KD8z2EY9DIvWki/4oprllE2BtdeyRk2zHCk6VEKEGMqssM/wHKrbhiYdPXzN
	ZBXnPqwD2AYFDWEsAVY1m2ei1cdp46WSqMsd2Bmhq2wk8dI5GPYtXijjWsIojJFId9jX0KKB1Avb/
	7wEA6vhI3BOhV9VThYr6PkLloDrBLYAU/tm8nZf1dRMW1SO5XGk6AuuE2BkD/X0LRERArUa6qgqHa
	P7CwaPnYkVZDIWnSB1ALxcwwl/eQb1Zu9DFZy7+4j3nxld6s+Sh49nXr8pP1EN0yUQZwddtrJMioP
	Z8+YfeFisTktWC7AuApA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRlI9-0004of-LU; Fri, 17 May 2019 22:25:29 +0000
Received: from relay1.mentorg.com ([192.94.38.131])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRlI2-0004oH-ET
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 22:25:24 +0000
Received: from svr-orw-mbx-01.mgc.mentorg.com ([147.34.90.201])
 by relay1.mentorg.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
 id 1hRlHn-0005rB-6T from George_Davis@mentor.com ;
 Fri, 17 May 2019 15:25:07 -0700
Received: from localhost (147.34.91.1) by svr-orw-mbx-01.mgc.mentorg.com
 (147.34.90.201) with Microsoft SMTP Server (TLS) id 15.0.1320.4; Fri, 17 May
 2019 15:25:04 -0700
Date: Fri, 17 May 2019 18:25:04 -0400
From: "George G. Davis" <george_davis@mentor.com>
To: Sasha Levin <sashal@kernel.org>
Subject: Re: [PATCH v3] ARM: dts: imx: Fix the AR803X phy-mode
Message-ID: <20190517222502.GA1844@mam-gdavis-lt>
References: <20190403221241.4753-1-festevam@gmail.com>
 <20190513171826.GA18591@mam-gdavis-lt>
 <20190514004539.GG11972@sasha-vm>
 <20190514011606.GA18528@mam-gdavis-lt>
 <20190514020742.GJ11972@sasha-vm>
 <20190514152240.GB18528@mam-gdavis-lt>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190514152240.GB18528@mam-gdavis-lt>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-ClientProxiedBy: svr-orw-mbx-01.mgc.mentorg.com (147.34.90.201) To
 svr-orw-mbx-01.mgc.mentorg.com (147.34.90.201)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_152522_484992_21ACB067 
X-CRM114-Status: GOOD (  14.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.94.38.131 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: andrew@lunn.ch, baruch@tkos.co.il, Fabio Estevam <festevam@gmail.com>,
 ken.lin@advantech.com, stable@vger.kernel.org, smoch@web.de,
 stwiss.opensource@diasemi.com, linux-imx@nxp.com, kernel@pengutronix.de,
 aford173@gmail.com, Marc Kleine-Budde <mkl@pengutronix.de>,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Sasha,

On Tue, May 14, 2019 at 11:22:40AM -0400, George G. Davis wrote:
> On Mon, May 13, 2019 at 10:07:42PM -0400, Sasha Levin wrote:
> > On Mon, May 13, 2019 at 09:16:07PM -0400, George G. Davis wrote:
> > >On Mon, May 13, 2019 at 08:45:39PM -0400, Sasha Levin wrote:
> > >>On Mon, May 13, 2019 at 01:18:27PM -0400, George G. Davis wrote:
> > >>>On Wed, Apr 03, 2019 at 07:12:41PM -0300, Fabio Estevam wrote:
> > >>What's the commit id in Linus's tree? I don't see it.

Finally:

commit 0672d22a19244cdb0e5c753125c1a55a120db5d0 upstream.

> > We'll happily take it once it makes it into Linus's tree and into a
> > release.
> > 
> > >Meanwhile, I wanted to let you know that v5.1.x is rather broken, in this
> > >regard, on i.MX6 as-is for now.
> > 
> > This would be something we can't do much about, but given it's an
> > important fix it should make it into Linus's tree very soon, right?
> 
> Yes, it will hopefully reach Linus's tree soon. Apologies for my impatience. :)

Again, apologies for my impatience!

TIA!

-- 
Regards,
George

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
