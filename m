Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29FB91DAC97
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 09:51:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yr7vDG+YWuO22Ar5RJzhn8per4mUD4lBYagb2BIYR1c=; b=LBMkR1BHQdhIcX
	VVN4PW1ZrG/VNRJ8N/2Gb10QsYdZeqFJpolkDJlrekr8cJ830sHWM6pOTF5RMPp+7B7yNodQDI/Wx
	AkLFHrdk2A1nmsnrxo8kiiVph5zteGfaD7yFbBOLZEP/JYHia4ZqWxaYpOq3IxinNsVTeOpP6PQiC
	Pa9UR9xWYeRwHjOhURqi8NWZXubg7lafrv60tujsPLKGY6c7NpY9eHCx78xIMPdKYiKucdaHHJvIb
	skftkXQH2XvJ0mDu2INUhUU+KVj8+TWIiT70832j5TP2iTrK9XDPhhVLBdMZ8+bsSadBETheTVF0m
	rcKPVgvOF8afR6ATv3Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbJW6-0008Qa-Lv; Wed, 20 May 2020 07:51:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbJVx-0008QB-ET
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 07:51:46 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 17377207ED;
 Wed, 20 May 2020 07:51:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589961105;
 bh=dQ/uADpcOq2BLNT5fjKHvtag8jw9uAoK2Wq6CuJkc1I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=czMZPTd0ovp4NsCjgdIqD+35Cg68zSygTaXHzQqEd3j4kGr6Pi+hskDGbHafHQSWR
 ogv72iz2IkTgbJJevFFf5C03lYg3pNn/ZDp5wdulrg9p8XAYsEM4ifODgUIhdXEw3N
 Q767EJ5GyAOFf2BlbVzvi8TZ1nd0YSJQgyCaDJlE=
Date: Wed, 20 May 2020 08:51:40 +0100
From: Will Deacon <will@kernel.org>
To: Joakim Zhang <qiangqing.zhang@nxp.com>
Subject: Re: [PATCH 2/2] perf/imx_ddr: Add stop counter support for i.MX8MP
Message-ID: <20200520075140.GB23818@willie-the-truck>
References: <20200225125644.18853-1-qiangqing.zhang@nxp.com>
 <20200225125644.18853-2-qiangqing.zhang@nxp.com>
 <20200302112441.GB7995@willie-the-truck>
 <DB7PR04MB46189CEDD1DFD5B5B6C1FD15E6E40@DB7PR04MB4618.eurprd04.prod.outlook.com>
 <DB8PR04MB67952EC95A5BE39C60F7F1FCE6D80@DB8PR04MB6795.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB8PR04MB67952EC95A5BE39C60F7F1FCE6D80@DB8PR04MB6795.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_005145_505792_A59CE148 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 16, 2020 at 09:51:13AM +0000, Joakim Zhang wrote:
> Any comments about this issue? Thanks a lot!

You didn't really answer any of my questions, so I don't really know what to
do with this.

  - The locking appears to be broken. Your solution was to remove it
    entirely.

  - It appears to be a user visible change and you haven't explained how it
    continues to work with old userspace

  - Perf core is not aware of you stopping counters and you haven't said why
    that's not an issue.

While these issues are outstanding, I cannot merge the patch. Sorry.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
