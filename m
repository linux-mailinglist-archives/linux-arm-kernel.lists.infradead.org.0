Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D637D7134E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 09:54:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VaxFZWO3hTbPa3o1yUs3QzsvmvlPLCjgWtjf4mZE+EE=; b=TmWolX7XY7qsIt
	RB7K/BTNUDRMwUnAp5YzdZqxl9c9LLMkk7C1sfufkpumLUsKcNgfRRUn1J8u3raoP45/pGgYi98nL
	4rs9oGhAQIdDd4QUrDYIjqjSXPZ3xJ2S1kREsk+6SZ+YoWQTy1xii2FElBNDkqOvutXMKHui2nVIK
	jMZcBIETBXW1xrpLwjca8EjAG3hSdG5t0OXinh8YX6tQn759zkJjf7qYKy1qbtfGFNC964EZ/Z0FZ
	TdgySDpDos+eO4ZQwoFaFnbC0yk4v6VilWp7UQP7syn6BdmXOvnuUyVqrmqci2T7bcUYwRYakszlo
	RLnOzRW/cZENIFXHYcZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hppcV-0006ms-J3; Tue, 23 Jul 2019 07:53:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hppbw-0006ee-Hu
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 07:53:25 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 92A052238C;
 Tue, 23 Jul 2019 07:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563868404;
 bh=KbqltgeaRqRHvIjtIyhPr6+qyU8BCIF9jNZGXEGpGRI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OQlyLTuGZSYbxL7Obp5ImvQ+eQuilNGO6zwHzvRJWAX1jBIqp+A0W9mb6RTa8MQuV
 5Z/KDiqZE7/QogEFAUugsN5py2UXBUnKPHADMjBGueePuHafX9j5n3oEmINx3RH4uU
 zTZB0lueD0HSuKt3dYogOjRvp9q/JDuGjDtNF0I0=
Date: Tue, 23 Jul 2019 15:52:56 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mm-evk: Remove invalid properties
Message-ID: <20190723075255.GM15632@dragon>
References: <20190719001717.7192-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190719001717.7192-1-festevam@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_005324_855847_EAAB9191 
X-CRM114-Status: UNSURE (   6.62  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org, ping.bai@nxp.com,
 kernel@pengutronix.de, linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 18, 2019 at 09:17:17PM -0300, Fabio Estevam wrote:
> All these at803x properties are not documented anywhere, so
> just remove them.
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
