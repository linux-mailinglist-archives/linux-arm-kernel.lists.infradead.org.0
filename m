Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0870715F6A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 10:32:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v4n4d5O4lG6lF2KHqUXenyPNHedvCVLWBYrzZoT2fa4=; b=nOqVbuZpXPnlH4
	b69YfgI3shrfXTaG1qP8HZfwRzjDMp+Ir6HJzRjmvzS+M65i+HkLnSanWysNN7Q8JJUxZl+HwdUZE
	H4Xim84aOg3Hm8qymKzGsJ1aB2WFojUUpGKeodSO7VkHKx5hDTSals/Kj0vK1MyWHGCFnES3Jvw4e
	dp6nG61/HSlxfcprpYYj/SSbIUIe32oCt0dHpLFFtTrJerpxVwdVmjjvXdc/x6dEz6XWbdeX2wTay
	OlHJr2DT5JLt4jygdalu84LeR4uQCJvwj1F15Hs3kesAm03p5VafOKrbcXl3C1raqydgr1ad2mslT
	h+iAdK/xBG5aube0o2+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNvWn-0003b8-29; Tue, 07 May 2019 08:32:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNvWf-0003ap-11
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 08:32:38 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 53B0920989;
 Tue,  7 May 2019 08:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557217956;
 bh=g2n/POvZ+QUwWAcPdyyHO/SuViXc2S+RG2DwZLLN2v0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2vxyFlsikiDtj43vCI0e+n5I6zQv1zTrtdhEU85ZX42URhjaHNrmGOkDl5HAUes1O
 lf8giBTnAnNrPyu/eKjzun7GtY0KkwZp5ojrIdk/rasjr7qpQSngikANjzQkOVp0yu
 i3iTus8ddnPpmem5Jo0gHgxRlZnNRZuEzQJvi/zU=
Date: Tue, 7 May 2019 16:32:20 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Leonard Crestez <leonard.crestez@nxp.com>,
 Fabio Estevam <festevam@gmail.com>, Olof Johansson <olof@lixom.net>
Subject: Re: [GIT PULL] i.MX fixes for 5.1, round 3
Message-ID: <20190507083218.GB22736@dragon>
References: <20190422031900.GV19962@dragon>
 <AM0PR04MB64349811AD49484EE269E2AEEE300@AM0PR04MB6434.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM0PR04MB64349811AD49484EE269E2AEEE300@AM0PR04MB6434.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_013237_088536_01EAE88C 
X-CRM114-Status: GOOD (  13.57  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Andrew Lunn <andrew@lunn.ch>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Olof Johansson <olof@lixom.net>, Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 06, 2019 at 07:10:22PM +0000, Leonard Crestez wrote:
> On 4/22/19 6:19 AM, Shawn Guo wrote:
> > The following changes since commit 7aedca875074b33795bc77066b325898b1eb8032:
> > 
> >    ARM: dts: imx6q-logicpd: Reduce inrush current on USBH1 (2019-04-11 13:45:03 +0800)
> > 
> > are available in the Git repository at:
> > 
> >    git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-fixes-5.1-3
> > 
> > for you to fetch changes up to c7861adbe37f576931650ad8ef805e0c47564b9a:
> > 
> >    ARM: dts: ls1021: Fix SGMII PCS link remaining down after PHY disconnect (2019-04-21 15:51:28 +0800)
> 
> I am confused by the path these fixes take to Linus.
> 
> The rgmii DT fixes from commit 0672d22a1924 ("ARM: dts: imx: Fix the 
> AR803X phy-mode") are still not present in v5.1 and netboot fails on a 
> large number of imx6 sabresd boards which have been stable for quite a 
> while.
> 
> These should have been included from "round 2": 
> https://www.spinics.net/lists/arm-kernel/msg723998.html

Unfortunately, we did have both round 2 and 3 miss 5.1 release.

@Olof, on April 28 you said you merged them.  What happened there?

I guess the only thing we can do is to merge them into v5.2-rc1 and get
them back onto v5.1.x stable kernel then.  Most of the patches have
Fixes tag and thus will be picked by Greg to v5.1.x.  But the one that
Leonard is talking about doesn't have.  @Fabio, can you please help send
it to Greg for v5.1.x inclusion?

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
