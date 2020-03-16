Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B179E187250
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 19:28:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+D9jJY4JPVmHd4zd5SB8czM+44qLSy44vf4MC8wdmlE=; b=iHbcJkmiyri5PK
	2/zY8hKYY1R9+D2MesQKl9z0Vm9XxZfdvejU3UohTihk43zzMvRsCF5s+fJAPbeoloKED4p9QHuBn
	Vzg6e1UA6lbXkwMBpTkAI1+Aaujzjdjv4RN3CuZfrg80rrbi5LUNQqSlgUPBh4Dj6PYb0vpWcy9TA
	0/wjiXf3sp60LiGvBp9+G/eUkiTontu5GdbdmTDx5LSJ9Lvgo7NwvAd4ax8lOfWQA1a8PBj4VxVGX
	6ETrvRkR8QarrCV7KRgJoVIJrOjf8r7LLHIXOBctQ7wdlcyOz3bZx6/N/qpNMcrmgsjJSFXb6bQzX
	mm6lZKs+WqMMhRIS8EkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDuTA-00052l-MA; Mon, 16 Mar 2020 18:28:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDuSz-000525-Vg
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 18:27:59 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A2067206C0;
 Mon, 16 Mar 2020 18:27:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584383275;
 bh=1X0RWpWGXgWjM59m17N7HN5PeVRY8yHe1mAvSdyPZQw=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=Z+RIJZkR3Lun08KSd7Q+ocCxvwpEuKWytRxk9quUXtEzieQ1U8ArGpFaJPU2u31cl
 Xw/ScsYkKv75OnKN4O0C2hoOxyE+FgCfbcVJQZAMRLU55N3900lAUM87j1B47gNC4G
 dMjUtYAQ1LuWoMiZyO/38Mfa2PQbSQY8YMKH0mYM=
MIME-Version: 1.0
In-Reply-To: <20200316002239.GK29269@dragon>
References: <20200224121322.GI27688@dragon>
 <158352907905.174340.14348638942004736998@swboyd.mtv.corp.google.com>
 <20200316002239.GK29269@dragon>
Subject: Re: [GIT PULL] i.MX clock fixes for 5.6, round 2
From: Stephen Boyd <sboyd@kernel.org>
To: Shawn Guo <shawnguo@kernel.org>
Date: Mon, 16 Mar 2020 11:27:54 -0700
Message-ID: <158438327489.88485.18004315671422121263@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_112758_044329_25137139 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Stefan Agner <stefan@agner.ch>, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Shawn Guo (2020-03-15 17:22:40)
> On Fri, Mar 06, 2020 at 01:11:19PM -0800, Stephen Boyd wrote:
> > Quoting Shawn Guo (2020-02-24 04:13:23)
> > > The following changes since commit 5eb40257047fb11085d582b7b9ccd0bffe900726:
> > > 
> > >   clk: imx8mn: Fix incorrect clock defines (2020-02-17 15:18:00 +0800)
> > > 
> > > are available in the Git repository at:
> > > 
> > >   git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-clk-fixes-5.6-2
> > > 
> > > for you to fetch changes up to 6fb9006abe37e44afaed4f2a5fd3a247a815bb8d:
> > > 
> > >   clk: imx8mp: Correct the enet_qos parent clock (2020-02-24 15:38:03 +0800)
> > > 
> > > ----------------------------------------------------------------

Thanks. Pulled into clk-fixes.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
