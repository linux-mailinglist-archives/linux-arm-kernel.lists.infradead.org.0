Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08D54E5939
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 10:17:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DCofB+Tfieu6tnatjUy0/7sqRECXRt8OFVLpovfTJX4=; b=qrnLkxcG3B75l2
	bYPaYSwSPh8b9+7gd9oKmLPL5QbaS4HrNWJ+L1RtMKgsFVVC1EtTPDOjaPacs+gpDtUnQWl93CLct
	t4zpIFSWp2Z18mFiWxL3AMjWanqEz35PleAEwKpsZ9MGW3baX7NHsWB++dqa3ys0ytSA4rLzp29tx
	SK+4WPea1v1DPEutegdbqmJCCouwBxnaB/3rEzdsRANPYTs6UDF647OzWk6W/p+Yzsigqa+EeMjiA
	JXrT+bXukgyqjjfObyzVJsyANF6EkyzO4SNYFhvyoE93jfsnJ2nLqOiyFMfq8YK/mnxIlK9LI4joF
	9+oy+hkjgoyt+azDb1rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOHGJ-0005WL-Br; Sat, 26 Oct 2019 08:17:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOHG9-0005W1-OG
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 08:17:18 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D054C205F4;
 Sat, 26 Oct 2019 08:17:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572077837;
 bh=z3MpLB+xELO0dgBsp/trPGrwsDL2LK34945azngzhgc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rA20J243awBpAOyf+i9/SIbrZAqIvm3X/jw4VdNHLnf+jVhsx2r8rXDfExzGecFN3
 HYvDNsvOIy9CF1Y80e3AR8L4hmBS0qwvy7iFPx2nmFqvCCxj9jOmGrlTrmY1sb2K+R
 mRFaLo5Vq3F9hC8IgPQU3YFpo6OZLg35rG21czbw=
Date: Sat, 26 Oct 2019 16:17:00 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH] clk: imx7ulp: Correct DDR clock mux options
Message-ID: <20191026081658.GD14401@dragon>
References: <1570784940-5965-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1570784940-5965-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_011717_805231_97828DB2 
X-CRM114-Status: UNSURE (   7.09  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: aisheng.dong@nxp.com, gustavo@embeddedor.com, sboyd@kernel.org,
 mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, s.hauer@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 11, 2019 at 05:09:00PM +0800, Anson Huang wrote:
> In the latest reference manual Rev.0,06/2019, the DDR clock mux
> is extended to 2 bits, and the clock options are also changed,
> correct them accordingly.
> 
> Fixes: b1260067ac3d ("clk: imx: add imx7ulp clk driver")
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
