Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 951664FE59
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 03:29:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kN0BFwpeD/0jD1dC+fykKjO/FEtfKEfrYH6L7nFSVx0=; b=g2RIPgk0rl6J6u
	hl6YajPZ3xPO8h1+r1oHM4x/R2r/1n8G1WmAJ2Zg7LKp6W5pYrdTcXghBsLMLOL3f6eQMbMjW9zSs
	KbDQEo5Cl4iqHNtRY4ObgfBvqNmBeeWlsjJH6Cl1GTlKCECky8cZikLPqf43600nS2S42K3hU9Ke5
	DJAK0Nylm2wLS1A4bLcsJr3KBIS2FbWTjYwX81Qt87UAzIWDgDNMzbVSeQfidpfZtwrqe5d07k/+w
	2ninAmWod1pccl6mztRPJqfBSugTabK5TAj1nQcHP24uVEnwi38lk39a8dCiNR0Ki8tU2CjWE3Nkn
	B/TyQQqu0E7bWR5JRRfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfDna-0006Wk-JE; Mon, 24 Jun 2019 01:29:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfDnM-0006WO-FK
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 01:29:21 +0000
Received: from dragon (li1322-146.members.linode.com [45.79.223.146])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C277522CEA;
 Mon, 24 Jun 2019 01:29:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561339760;
 bh=4nvZp6iXSVydigSn7lGWLwxqlvENp3j62806CqZD/NQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mfEU6Sc1RAoevKpcSCGpMzSh0Vi+dgoiG6xE5H+OwvrBvsGnvlPo/g6jRRAtOmJf2
 GfGRD/gpTyNOfaG1hK4qfP8ekwgev8BiWDZic2KfJuUh3hryaHsf7oxRBIMioZKspE
 7DltZxx3wT08P3MQOiamPFipM7rnAb9okCLDRaPQ=
Date: Mon, 24 Jun 2019 09:29:08 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson.Huang@nxp.com
Subject: Re: [PATCH V2] soc: imx: Add i.MX8MN SoC driver support
Message-ID: <20190624012757.GH3800@dragon>
References: <20190619010708.31412-1-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190619010708.31412-1-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_182920_527912_29244311 
X-CRM114-Status: UNSURE (   7.57  )
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
Cc: abel.vesa@nxp.com, viresh.kumar@linaro.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 leonard.crestez@nxp.com, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 19, 2019 at 09:07:08AM +0800, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> This patch adds i.MX8MN SoC driver support:
> 
> root@imx8mnevk:~# cat /sys/devices/soc0/family
> Freescale i.MX
> 
> root@imx8mnevk:~# cat /sys/devices/soc0/machine
> NXP i.MX8MNano DDR4 EVK board
> 
> root@imx8mnevk:~# cat /sys/devices/soc0/soc_id
> i.MX8MN
> 
> root@imx8mnevk:~# cat /sys/devices/soc0/revision
> 1.0
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
