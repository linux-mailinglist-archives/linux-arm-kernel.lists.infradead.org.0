Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3870D5E20
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 11:06:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A+Bkkn5ufvIx9K4nMauy+7OWUgBs/83mUmUkNaJAf6w=; b=NKC1CuvQobY5cv
	wQ5UGV/86tnZg5gPDoO6A6Ryni/iAsscp1MqiCdwH4j9BqIa2oaKPKTWEt5Ta+HKXmUPJmsbQbN5F
	vSPFM+uB80mW8s98H3U2pFONnKT714FJi5CUZF22/shzNjpi4diBLPQXM087F2Jpkpbr8UslPbdrf
	NnkM0rJRsUAAZluAzC8D4zxuavjtlFBV+Qex4tzGHaew6Uda40teXli3/xEQWGz4OFY28+sw7uQK5
	nZMc7VEF81FffT4xRnNCnquAYQdx4+FfNDOdPZ3ds02pKUr5hicSolVf7ZN/JVb1WDUPv44dXg8dy
	ZT0OTiTL54cMZ5RQpHMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJwJX-0003iS-Nq; Mon, 14 Oct 2019 09:06:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJwJO-0003i3-V1
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 09:06:44 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6B252207FF;
 Mon, 14 Oct 2019 09:06:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571044002;
 bh=e7F90pxnyT5ltvlpZKfXmZUjRp0991pAScW78vScOz0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hzh7Wf/4Bplayx6FIAkey/Zc5pSy3dtTuAWmCc2wN4ZFXqktgBe52w7247a3Qk85u
 QxI1eHDPKS4po7PVlmUR15B5tki9RWlyWL1i4wZxZtTagzKWpruWzD6POEes/KuNS5
 W9U/qNLRwqH0qUHjiEkufZMVvjx6/vTNrZcSmFjM=
Date: Mon, 14 Oct 2019 17:06:28 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Adam Ford <aford173@gmail.com>
Subject: Re: [PATCH] ARM: dts: imx6q-logicpd: Re-Enable SNVS power key
Message-ID: <20191014090626.GJ12262@dragon>
References: <20191002002029.19189-1-aford173@gmail.com>
 <20191002002029.19189-2-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002002029.19189-2-aford173@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_020643_020030_02571ECA 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, adam.ford@logicpd.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 01, 2019 at 07:20:29PM -0500, Adam Ford wrote:
> A previous patch disabled the SNVS power key by default which
> breaks the ability for the imx6q-logicpd board to wake from sleep.
> This patch re-enables this feature for this board.
> 
> Fixes: 770856f0da5d ("ARM: dts: imx6qdl: Enable SNVS power key according to board design")
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
