Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEEE31860BE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 01:23:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1zZZHyU3pdH6zHgGItwMRjxMYRqlupu++dGqNsMkHGI=; b=TNLAIlJg3byjN5
	BMXd8ufh1K0bmCNtJDBnsfypv1N01obql9uNyj1w4gZUq43fzfN5fznWr5s5Vu/qNrrxSv/f8OP67
	Y8rAR1cfo6jmQ2lq9nzfCt2MxNsZQGlwkPfHvBae3Ei/ihXQpYZHFQat4xO8kVpiJqJwtPNr+v6pt
	t/y08+VldTiiyvyZqFo7oV5xygZoHQ3cBqq0vlLALrZ4opq8Bw25u9F51ISJNHyZU88KNqPf186DH
	APuM2K4T+zKnX4XcP4Ny1mIpcznctDtcPS2WO25aBkU3G21n9pjUc30nK74+98Ukfw6KkMBSOqUl+
	kSViu0TJO1L8QKWgS3dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDdWw-0004iF-Hf; Mon, 16 Mar 2020 00:22:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDdWo-0004fG-No
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 00:22:48 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A382C205ED;
 Mon, 16 Mar 2020 00:22:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584318164;
 bh=9pwIEDU5WcVmzfi77kGSmrUFk6mxDJmB8thzfaHTIKE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cpvivAdVkIgSfiuzH4xmlNKpXyCwjWvMsXzNWo725j8tsFRRVZhYR9YYVx5XYJz0M
 fqWiYMXOlFaJMXFgGlKs2YvIsGZl7zooXQCe3UQwlG9LijLuIHeE6wXu09OEbp3mrZ
 9M8pmQTm+3i9a2njQtO7DsoI43ZZkSmr4wHVxt6A=
Date: Mon, 16 Mar 2020 08:22:40 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [GIT PULL] i.MX clock fixes for 5.6, round 2
Message-ID: <20200316002239.GK29269@dragon>
References: <20200224121322.GI27688@dragon>
 <158352907905.174340.14348638942004736998@swboyd.mtv.corp.google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158352907905.174340.14348638942004736998@swboyd.mtv.corp.google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_172246_799036_D2EF2E23 
X-CRM114-Status: GOOD (  15.26  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Stefan Agner <stefan@agner.ch>, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 06, 2020 at 01:11:19PM -0800, Stephen Boyd wrote:
> Quoting Shawn Guo (2020-02-24 04:13:23)
> > The following changes since commit 5eb40257047fb11085d582b7b9ccd0bffe900726:
> > 
> >   clk: imx8mn: Fix incorrect clock defines (2020-02-17 15:18:00 +0800)
> > 
> > are available in the Git repository at:
> > 
> >   git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-clk-fixes-5.6-2
> > 
> > for you to fetch changes up to 6fb9006abe37e44afaed4f2a5fd3a247a815bb8d:
> > 
> >   clk: imx8mp: Correct the enet_qos parent clock (2020-02-24 15:38:03 +0800)
> > 
> > ----------------------------------------------------------------
> > i.MX clock fixes for 5.6, round 2:
> > 
> >  - A couple of fixes on i.MX8MP clock driver to correct HDMI_AXI and
> >    ENET_QOS_ROOT parent clock.
> >  - A couple of fixes on clk-scu driver to ensure that messages sent to
> >    i.MX System Controller are 4 bytes aligned.
> > 
> > ----------------------------------------------------------------
> > Anson Huang (1):
> >       clk: imx8mp: Correct IMX8MP_CLK_HDMI_AXI clock parent
> > 
> > Fugang Duan (1):
> >       clk: imx8mp: Correct the enet_qos parent clock
> > 
> > Leonard Crestez (2):
> >       clk: imx: Align imx sc clock msg structs to 4
> >       clk: imx: Align imx sc clock parent msg structs to 4
> 
> Can you resend without these last two? I don't know what's going on with
> that thread.

Done. Please consider to pull, thanks!

The following changes since commit 5eb40257047fb11085d582b7b9ccd0bffe900726:

  clk: imx8mn: Fix incorrect clock defines (2020-02-17 15:18:00 +0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-clk-fixes-5.6-2

for you to fetch changes up to 857c9d31f59f0c0e6117518452ca54883e47d859:

  clk: imx8mp: Correct the enet_qos parent clock (2020-03-16 08:18:20 +0800)

----------------------------------------------------------------
i.MX clock fixes for 5.6, round 2:

 - A couple of fixes on i.MX8MP clock driver to correct HDMI_AXI and
   ENET_QOS_ROOT parent clock.

----------------------------------------------------------------
Anson Huang (1):
      clk: imx8mp: Correct IMX8MP_CLK_HDMI_AXI clock parent

Fugang Duan (1):
      clk: imx8mp: Correct the enet_qos parent clock

 drivers/clk/imx/clk-imx8mp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
