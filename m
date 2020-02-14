Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE7D815CFE1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 03:22:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qAcfjoG2quln6U2dquARXW91liM1AWO9P8BeYa1j4pM=; b=a0bOU6hobJIUx8
	BRaZ4fOsyLQB/EDlM/Gkj0yu2zmmtEAq/s7bk0MQdRy0j1E7LnWSiL9nX1tLkBmnbcRF1U6LPsx27
	XN1tf/tFQvbnoDYp+I9eqMSEMFjDHdAY7/fDlxz+4szqV2TnzmVJgJE/xPVdZ/msB1ZtTNBw5488a
	biOTlmYJw02STRaxTfiHQcxVJBFY1DC3uwLoAd+r7KMcczzGBBbkvK3KnraZwaFCL1tpMw+KUlSpr
	u98AYkjEdMGf9U//JxEWNm8AR/bbVyi2+CajcXP1QYfRsIyWVFRkHolVTCFKH9R5FKjzSW6pAJK93
	GC3/ZAUeUvwteMlnMhSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Qd0-000496-NK; Fri, 14 Feb 2020 02:22:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Qcs-00045r-Uz
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 02:22:44 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E6F052168B;
 Fri, 14 Feb 2020 02:22:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581646962;
 bh=V/yIBOW0qyBH39HbReEUIcxt6F608GMeHjcJhctMbAk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zmB4iHeKQXVGEZd9PsTJ1dLpZOiIAgZpxSMzeog+11olTBM53/65hPX19fPX5t6zZ
 8wP2cjp2vg9Y5cLm8+8MSV+Nb90YrTyASeCdNmU9blmpmzr4U1bLKbS6TPempJCFXL
 4kzi3Bbu+7E43Q36lNz6CVM5VdNsz1Sc2/4eXLGY=
Date: Fri, 14 Feb 2020 10:22:37 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH] soc: imx: gpcv2: include linux/sizes.h
Message-ID: <20200214022236.GC22842@dragon>
References: <9e4549b47f0872a6a670d07b513f452c33f26501.1579524316.git.leonard.crestez@nxp.com>
 <20200214020332.GB22842@dragon>
 <AM0PR04MB4481483CD085CA6AD6567F5788150@AM0PR04MB4481.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM0PR04MB4481483CD085CA6AD6567F5788150@AM0PR04MB4481.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_182243_020699_82FA0DF5 
X-CRM114-Status: UNSURE (   8.94  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 14, 2020 at 02:07:02AM +0000, Peng Fan wrote:
> Hi Shawn
> 
> > Subject: Re: [PATCH] soc: imx: gpcv2: include linux/sizes.h
> 
> I included this patch in https://patchwork.kernel.org/cover/11353557/
> 
> Patch 1/2 is exactly the same with this one.
> Patch 2/2 needs this patch or patch 1/2.

Thanks for the note.  I will deal with it.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
