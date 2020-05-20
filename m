Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 484B71DA7E6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 04:19:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oG5lm2AKOw0AIT4N0oEuh+B6IcnvFhb6EKcTDkGErro=; b=mkfo9XcS23WhIk
	pVQUqv1E5mIm9QacGRsRHYjE4fmFGwT8y2Z3wDR1QOmJf4ugsBwKRpttkIGfIxEhdhCSX6ZLOihcf
	tqDy/5G2MDloUTmv9YDwAiTeaX1IYBojaGMaJ3GipSuRnaYdQsAm6TCgAqDfgfb6Zu4NlRxwAE1wF
	52YrZMwhWuh+dHdKh1nvEU4df4ti/XZLmt3xgQ2RUV3YpRLZggn0uSz0uv/PUdeMdLiNkZiQczWXM
	JVSetakTD5ydNQcwLdDKX6+SSP4ybfIhR/L0GsN8oQf+qX2hu3c9pnV6mMPFilFrz91i8Sd1PT6ap
	97rs9/v1DmCGdIleCwLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbEKh-00056G-Pz; Wed, 20 May 2020 02:19:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbEKX-00055w-HD
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 02:19:38 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 94EA72070A;
 Wed, 20 May 2020 02:19:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589941177;
 bh=3fXb+EI8ngopPkb4IHKZ5B7gS7wb6BillnmOQicLI1w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NOWsdZKue7cvB+S0VdKBvrMGukCYla71N44Y4qdym1Nvje6ymhLLrT/reGSwoJLFq
 d9mVBvAy6mNdgjaWlzwmaT61Dm0fBKnJMmZKPFgI4/81df79NrFz09hGhlH/qQ8PiL
 JScZprkbKVrZ+UD3iCboLv0HvvM7q5DdWpzbQnTo=
Date: Wed, 20 May 2020 10:19:32 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Tim Harvey <tharvey@gateworks.com>
Subject: Re: [PATCH] ARM: dts: imx6qdl-gw5910: fix wlan regulator
Message-ID: <20200520021931.GQ11739@dragon>
References: <1589320954-25219-1-git-send-email-tharvey@gateworks.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589320954-25219-1-git-send-email-tharvey@gateworks.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_191937_588073_D40C4EBA 
X-CRM114-Status: GOOD (  10.41  )
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
Cc: devicetree@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 12, 2020 at 03:02:34PM -0700, Tim Harvey wrote:
> Connect the wl_reg regulator to usdhc2 such that it can be enabled
> and disabled as needed. There is no need for this to be always-on.
> 
> Signed-off-by: Tim Harvey <tharvey@gateworks.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
