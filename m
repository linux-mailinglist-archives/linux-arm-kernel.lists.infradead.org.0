Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4CD610BB8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 19:03:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:To:Subject:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hOgpJ5Qlh2jgsPsIuUp3TQWGQYKnkkn+d3WuT3jL0L0=; b=tcLxK/tevKLVqB
	BU9hHPCt9b2LooSxo2zie8HBxFvkaTT33qlqHfu31IjEhNP8/wIbYscKTIJ1ZajeIZ75TlrLo/UDv
	JvYHUuo6kLmpKXkQiAMByhYYXYhqNnbP3s1EidrHpaUsMc5Kjww/Fd9LxHAj/G8PszNztBiKsJmAo
	qKWSAM2VE3z1KJf70Y/vY4Nrc9ZNOdVxkzIEvMHjdWQQ7au30enQ1fjQ9UrGGr0u3QewXtYvaVUbo
	vx+t7Wkis8+w27wUInQOOPJ74Nw7XRVMYOTwMal8x0ctlEmaUVt55ukGljsn5lAOXVss9CueE5BJS
	whvS6d8q3qsSwTil6ehQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLseA-0000un-Rw; Wed, 01 May 2019 17:03:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLse4-0000uU-Ql
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 17:03:49 +0000
Received: from localhost (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 261CB20835;
 Wed,  1 May 2019 17:03:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556730228;
 bh=BBvwoNEHVRq6c/XWJXO2zRZ6ZBCo20OJ+aAG/Lv8KEw=;
 h=In-Reply-To:References:From:Subject:To:Cc:Date:From;
 b=0gtlaiv6NrICHtxforyV7oISLK86EyMix5IUOatqtwQ4kcZeGdpRed8mVTYeLb1S3
 foVvw/4MYzmnzg9+rks40rohOWflkP2KHZAL9EYhuoRYXNDeCG9zIODbT2xcYqgoAW
 HD932Ci7ImLSuvL3t9y+sbDPcxVCvsnPbxKT5vKo=
MIME-Version: 1.0
In-Reply-To: <DB3PR0402MB3916F59134DB9CF9837B43C1F53B0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1556589033-6080-1-git-send-email-Anson.Huang@nxp.com>
 <155664820799.168659.12393223246835475198@swboyd.mtv.corp.google.com>
 <DB3PR0402MB3916F59134DB9CF9837B43C1F53B0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: RE: [PATCH] clk: imx: pllv3: Fix fall through build warning
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Anson Huang <anson.huang@nxp.com>
Message-ID: <155673022723.168659.16788237682007828514@swboyd.mtv.corp.google.com>
User-Agent: alot/0.8
Date: Wed, 01 May 2019 10:03:47 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_100348_887193_54CA56F4 
X-CRM114-Status: UNSURE (   7.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.3 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Anson Huang (2019-05-01 02:33:46)
> Hi, Stephen
>         I saw Gustavo already sent out a patch to fix these two warnings, so I will NOT sent the patch again, thanks.

So I will apply that patch instead? Can you send your reviewed-by tag
then?


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
