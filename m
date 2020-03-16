Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D981186367
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 03:48:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f6WwSR9F0K9ehElXa6w9zuV2lca4AFC9VtJrBJIKhUM=; b=BNErp0YnWsFPDc
	pw0onV9yEJsMgjHSCqpBQcv03Quyc7g1NFV6Wc31a64cINSJ2IWuMt5P7KIyRXrFkBxXBSoBIyxqK
	Wouw5hgsOKndTMZU5BVIl/XdkUDKVoxmvI0xKDD5EavRKE9LgTpkMV0BjjBgUF7tFdfzG7aVHy5cX
	P1mEwvzupFiAiLeFc+UIAFnhLCa1m+EaPGAE1lIBMM+IZGTXZtej9SPZf1KGe7COq4fBzkv5pj4Ct
	SQN85Wug7V/i87kwemQTkMJy4vqOBixFih/vUz2vstt7KZUZq7WAS+wuz9Fx3KvEREesVo6HdRRqX
	j0hUoLJS/Z0lEDp2ei5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDfnf-0002Ya-5w; Mon, 16 Mar 2020 02:48:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDfjv-0006d2-VL
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 02:44:33 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1FFEE2051A;
 Mon, 16 Mar 2020 02:44:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584326667;
 bh=sokKpDmsOMgGIEqegQoF/mAfoF33qpg3YGnnrVtn3BE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ncZoIyKoVcKyP7IVCFcLS2feVlHeXgh9/+q5vQ/mE4UCt6kDOpS7yCT8VzsE3A+H8
 0fjPgZtexTQcxpZGcNuLqZaFtn0JtTveKmy/n6zSy9d4PeFXcaYvqDqUHjzsl6z7tM
 rYe/RHPwmI7e7Fbzqlbx6eQ/tf3C2yMJjaKKmzjk=
Date: Mon, 16 Mar 2020 10:44:22 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Lucas Stach <l.stach@pengutronix.de>
Subject: Re: [PATCH] ARM: dts: imx6: RDU2: assign video PLL as input to LDB
Message-ID: <20200316024421.GY17221@dragon>
References: <20200313095804.18537-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200313095804.18537-1-l.stach@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_194428_073088_18CA8B18 
X-CRM114-Status: UNSURE (   9.99  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Fabio Estevam <festevam@gmail.com>, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, patchwork-lst@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 13, 2020 at 10:58:04AM +0100, Lucas Stach wrote:
> Currently we don't ensure that the LDB is clocked from the video PLL
> and relied on the bootloader to do the correct setup. This isn't always
> true, in which case we would run with a vastly different video clock
> than the desired one. Fix this by assigning the proper parent to the
> LDB.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
