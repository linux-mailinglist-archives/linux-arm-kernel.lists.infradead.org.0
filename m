Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F4D280721
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 18:01:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F0rSVPTAhOxNrpqNt6RRefpWs/SAsyNCQ40niajJPeg=; b=imuhxf1/fnUHsU
	V8RG+47mVvUe3y3jkxB7J26uQSDULu5PI+oBC10EwO40TKkAgl53q7saSmzzvX5mhkALBpocQCQpy
	fAZTIFWgkP+MbLgrbsr/vt40Eu9rKgebfZ0kp4fUhHcHJxR1mFmFszj97QorswXOWDFB8mNqG7WLL
	6bAVdUBf9RcLmucAs/MAXwjM7VGNDiiUCgob7kRnAFgKPc2OIahiROAEhKEuojW5hzrMnPHG8it0k
	9lkEYI/YNp094XjUyPfkMR4PCZK6Amp76dVBgB1L1N+v4LNYyka9TjyB0lKOhVXIMUdR1iy1/WAB/
	Z1V4gsEk0xlnHnMLus5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htwT1-0002t7-8K; Sat, 03 Aug 2019 16:01:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htwSp-0002sf-LX
 for linux-arm-kernel@lists.infradead.org; Sat, 03 Aug 2019 16:01:00 +0000
Received: from X250.getinternet.no (98.142.130.235.16clouds.com
 [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0DC0020679;
 Sat,  3 Aug 2019 16:00:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564848059;
 bh=9kT6FcX8OFoh4iNbRPweIkk1GRBWq9cbeTMktN7QBeg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HS/Qls+iEduPgXvxyrGORYNfwqgZ7ZZ3YCi1AMedaVJhuIgmGpvruh+twdzsVZ+oZ
 j+S6hy51Sqs/3D3DbGuhN5v65nmYzAsUHvP9WTlJFlVatLWmUCssxqnqq57VeTDi1R
 bVOrW/O9kZVcGGOv+URpXO0gWfhwKIV3F9wQcLnY=
Date: Sat, 3 Aug 2019 18:00:53 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Marek Vasut <marex@denx.de>
Subject: Re: [PATCH] ARM: dts: imx53: Update LCD panel node on M53Menlo
Message-ID: <20190803160052.GU8870@X250.getinternet.no>
References: <20190803134940.6060-1-marex@denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190803134940.6060-1-marex@denx.de>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_090059_727691_C31EDBBF 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Aug 03, 2019 at 03:49:40PM +0200, Marek Vasut wrote:
> Update the panel node with latest version of the panel used on the system.
> Add missing pincontrol phandle to the panel node.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> To: linux-arm-kernel@lists.infradead.org

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
