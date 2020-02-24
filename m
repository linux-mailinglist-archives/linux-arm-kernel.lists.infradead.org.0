Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A26FC169EE8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 08:03:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WBGYO/rgLbZt7ibAKN1DVovcy/YMuneeWlyXRarv04Q=; b=B3gAJfGIlKIPWN
	0CjT6LfsRz7LTNVgbfyeABt7wk7K78I8xGH3fQw5F8rQLUEB5aVQQy8MKi5Ki9cSIOWloyDc29ou9
	83IfbegPf61DeDS/JGUOM1CBUgNK61YGrWSXomNls3hbqby/qutly/K12ORm9tKWQW/qKH7sYAEvn
	BCUFUZd6EiUh0n+/Rm/zmWveHskqWVfGiLTSJ2uAPtcHc4ZJ9525wKRf/bXh0g9YCld3T1OPy5nx8
	l1JE8DPdHV6PSoAe7cC+mHYggcLrldRAucTZjevPnthMMbRGobOin3FAtst29/QoVHHsvu4ZNZEi1
	YbvMwkvusTu5UXkUTLHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j67lz-0000ma-5V; Mon, 24 Feb 2020 07:03:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j67ls-0000lz-OT
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 07:03:17 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F10F820675;
 Mon, 24 Feb 2020 07:03:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582527796;
 bh=mnE2FfKS0R6lKiiP1VHoJT4DloK/ZQrvXjCpTnE6nKk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vIVK9h0A7q7zFUK8uhhdpSsehDJGk/kzhCV1Tc+mP/enKwRdutpTzP2OIr/cJl8sn
 Fpk1MAjNlB9dUmHEmCjcfxWsH869Xkggqdlb5OBCoxlVpz0xa8UeXm4W3QQzK5C3iM
 OxOZmK/E0orzd0a1WHwvxhAQOZWsoM8lCb3lgmLI=
Date: Mon, 24 Feb 2020 15:03:10 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH] firmware: imx: scu: Ensure sequential TX
Message-ID: <20200224070309.GQ27688@dragon>
References: <ae051784024f8fcc458437e278c27b4e79c6fe7d.1582214881.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ae051784024f8fcc458437e278c27b4e79c6fe7d.1582214881.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_230316_818923_CAC00490 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Richard Zhu <hongxing.zhu@nxp.com>, Jassi Brar <jassisinghbrar@gmail.com>,
 Oleksij Rempel <o.rempel@pengutronix.de>, linux-imx@nxp.com,
 kernel@pengutronix.de, Fabio Estevam <fabio.estevam@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 20, 2020 at 06:10:01PM +0200, Leonard Crestez wrote:
> SCU requires that all messages words are written sequentially but linux MU
> driver implements multiple independent channels for each register so ordering
> between different channels must be ensured by SCU API interface.
> 
> Wait for tx_done before every send to ensure that no queueing happens at the
> mailbox channel level.
> 
> Fixes: edbee095fafb ("firmware: imx: add SCU firmware driver support")
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> Cc: <stable@vger.kernel.org>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
