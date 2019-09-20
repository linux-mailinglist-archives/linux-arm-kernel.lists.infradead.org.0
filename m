Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A8FB960C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 18:55:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=62mQknPQpgNB4OB0BPv/LT5Cmb5f8YE5YJ3egXUWvfY=; b=JVBTEFTApupAAn
	MgtdSkUrDLczfDkJKrVVXv/uBaLuH2y4yc4zh4f0sDr6m9d5pPWaEmovFHfsiGLoEYmQu4ivw8rqH
	tWhdRQNUG9k0i8kY3vzEjUk0kWIxlZRed8Q6oLr5op7d5+FNv8TNguCcuS641pqw0tcpJIJq4Irry
	i7rUQN+9K7yF/hkwZUX0JuIjZwzvcEVn3AZZrCsysbIl7+38iqR9D0n16MFKPNDEecvYIxrwkzCfV
	oFxBt/xZ0TmBtuQDnJEBZs6Jilcjv7FqhTFbMi9DK2p/yEM/R7cy8yu0qmfIU+bqJdzK4ELxVf3CL
	NkVw4vWf0xJi4WryC1vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBMBw-0002sK-7u; Fri, 20 Sep 2019 16:55:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBMBp-0002rz-7h
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 16:55:26 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CC00C207FC;
 Fri, 20 Sep 2019 16:55:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568998524;
 bh=Bab7SDLgjUNFsw/GfqlNFONf2I9Lxrh9DUg39cNE7Hg=;
 h=In-Reply-To:References:Cc:To:From:Subject:Date:From;
 b=wFeBQOwWWr0Wic30e3/48RMpGfbohsWOdum7aaw4cEJjAt3r1vAVdSpydG5JKOG78
 /WBBfm0nVV5yc2Id3VdV36q89tGKozJUMtto+xGt078XAP58Nku/eRJRb9xEphtKbh
 8cp8xbrM2ce43QREPcf2OKyno/shbIO4MVImSiu0=
MIME-Version: 1.0
In-Reply-To: <AM6PR0402MB39110BCD655C354F8A295621F5880@AM6PR0402MB3911.eurprd04.prod.outlook.com>
References: <1567776846-6373-1-git-send-email-Anson.Huang@nxp.com>
 <AM6PR0402MB39110BCD655C354F8A295621F5880@AM6PR0402MB3911.eurprd04.prod.outlook.com>
To: "S.j. Wang" <shengjiu.wang@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "sfr@canb.auug.org.au" <sfr@canb.auug.org.au>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Abel Vesa <abel.vesa@nxp.com>,
 Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Fancy Fang <chen.fang@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Peng Fan <peng.fan@nxp.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: RE: [PATCH V2 1/2] clk: imx8mm: Move 1443X/1416X PLL clock structure
 to common place
User-Agent: alot/0.8.1
Date: Fri, 20 Sep 2019 09:55:23 -0700
Message-Id: <20190920165524.CC00C207FC@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_095525_302240_4DB27D8B 
X-CRM114-Status: UNSURE (   4.72  )
X-CRM114-Notice: Please train this message.
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Anson Huang (2019-09-19 18:27:39)
> Gentle ping...
> 

Merge window is open. I expect Shawn to pick this up for v5.5 in a week
or two.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
