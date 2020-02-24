Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E076169F7E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 08:50:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KySxWVbUDw9zQM2SzseECzQPwQKq+MLbRZpjzzflM90=; b=fnHFCb/CUWDV8g
	EJm/N6tizQXbn9X1osL6mvyNPPpoLHGnyGHB9yoMIzHAWrpz53DGFJ0qprt9tsDt26nPFfy/2U9qg
	GtDECVbyJhOBCi+CiqTzQ3eKQDggD5VtU+AojyRiisUZl1oy7HXEk5aS7s/3/hbGye6ScO8AxJvkL
	cEert8LA/doNonK9mqBhNt1H3nk+TTdLCK3IAh0UtHTU+UdYbVXi1mtkIRmfVvUFxRzI0hn/gfuKz
	cgwdiaQ0o1fnYcNQeejoRy8n2/X1mMBTDCv1vx4tL3tdgZtXik6sul57mfBLipjCexSQDMV2KnJGG
	SG6R9HZIOd96bt92SBDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j68VL-0000CN-CB; Mon, 24 Feb 2020 07:50:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j68V5-0000Bv-EA
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 07:50:00 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 777B020675;
 Mon, 24 Feb 2020 07:49:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582530599;
 bh=uN/mf/cIKhX+Ioyz/MHScF/+mLz2fKQr2PZkKgF9n+E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ip3DBLS7gV1Oa6Wrpcxg2sWfSCPThUYY6QXhso9dMzTugE6rwFvimMUU9w1wEF21h
 fuGdZS0cGc95R16nBOJXFNvE8JCg0EAsc/v3L22HYgp88n8r3jImZjz7tXA6pO/Jnm
 j8X6J0BNj0cHZFPAEXOhU1w+J2LrZKpekKW63KTs=
Date: Mon, 24 Feb 2020 15:49:51 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH] clk: imx: clk-sscg-pll: Drop unnecessary initialization
Message-ID: <20200224074950.GA27688@dragon>
References: <1582268376-1672-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582268376-1672-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_234959_497108_6DC17A8A 
X-CRM114-Status: UNSURE (   8.14  )
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
Cc: abel.vesa@nxp.com, sboyd@kernel.org, mturquette@baylibre.com,
 jonas.gorski@gmail.com, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 john@phrozen.org, festevam@gmail.com, s.hauer@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, heiko@sntech.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 21, 2020 at 02:59:36PM +0800, Anson Huang wrote:
> No need to initialize 'ret' in many functions, as it will get
> the return value from function call, so remove the initializtion
> of 'ret'.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
