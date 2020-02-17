Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7DC0160BB8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 08:38:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DjfvoQZSZOMStW0EdxSh7NiiX/NHJzPLIwpWAZEHubg=; b=cSaRcpUYjh5RdZ
	GipG3thBZbkzybik79f4uTyjPymL4OM05K9bejcJTKaJd5WkZMqL08Z42NBczs/hMmT1q9EbW0Wvc
	0+Wf15/LG2Y781NKCeCnb31ByNGQ9Ka7pRoF2vB1b13EOJrsE2v+bZejOLh3G8UsP75agzTSEXV3r
	xpPQyLggfUJ4fq9pR/K5Xy7DuTa9FeNa/3Q5pyTUvF1WG3YjweK/XNCLiI7d2ecAbDzyOcVcwNOvg
	g6rtgH+yXQB0oDG25VpDIHwPUK8f6o1tvSRwG0yz5WcMH2W5Ivrv90jAAfa6cHB5qARDz5rvBpIMb
	IIcaKiNtmwA56wINWUiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3az4-0001o1-5n; Mon, 17 Feb 2020 07:38:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3ayx-0001nY-PT
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 07:38:20 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4D93D206D5;
 Mon, 17 Feb 2020 07:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581925099;
 bh=fmxK/uvyf7c74xfGqAVYRBOfvVEdNPJ790VJ9J3SDGU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PurvmfocWVvFbzfgSlQYJ4vlb5doeN65jW+JM13GOpjBYu/Cd0WGbsQtZI97zCc0S
 XQc+70DtwOZ5Qf4YFJ41CyowWIRnu3KK0OEjaAm1hrT22kFaY9A8rdewUql8ZMPajm
 p2nu5zu1sVxGXuCdNgR9lP9da64xCGsqxV7Bf6zI=
Date: Mon, 17 Feb 2020 15:38:12 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH] ARM: imx: Remove unused include of linux/of.h on
 mach-imx6sl.c
Message-ID: <20200217073811.GK7973@dragon>
References: <1581660711-1301-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1581660711-1301-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_233819_840725_DBD8D1E2 
X-CRM114-Status: UNSURE (   7.86  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kstewart@linuxfoundation.org, festevam@gmail.com, s.hauer@pengutronix.de,
 linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
 gregkh@linuxfoundation.org, tglx@linutronix.de, info@metux.net,
 allison@lohutok.net, Linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 14, 2020 at 02:11:51PM +0800, Anson Huang wrote:
> linux/of.h is NOT used on mach-imx6sl.c, remove it.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
