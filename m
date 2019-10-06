Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30B52CCDDC
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 04:22:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RSUUn5uZAoKDpIBxszOBBfEVgjsxQK2FHhxX1+l9VFk=; b=NGZ9ZbVqBgpGrW
	wtiAqQd3PaBjHQVgTw/p0R4rNKyfwco99+uNGkPtykBCE6LJf6FHX9x/xOGst5KMWJW3+/12AoM6A
	hPEdOBWnojQR6Uw+6cMM8QhZLV1/M9GHnnQjIM180WGXG+efUSXyO46awdjrkYT/NHYwMmwMzD0v0
	lHFVZjNifVgTNXr9VHd6FIA8mvLZU3DUeBujq40I3tddW+X9qePss9dVXrikfb6SovGzlKDIVX5cT
	lptp7Js1sY6g6Mj+uaqyYipALBUTHojs4JizbbPXFyr5VhRUUsxaAfeZqKAdg68HT4/VEq6H22lJh
	bZRha63J+HrIv7wbso8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGwC2-0002I7-Vi; Sun, 06 Oct 2019 02:22:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGwBr-0002He-EQ
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 02:22:32 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 53616222C5;
 Sun,  6 Oct 2019 02:22:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570328551;
 bh=W4xU03tSUsqcNkrHpxSjw5JxRUV/UwwrjzLn0U9wGrM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uzalxclAzFhjuIXS0oAsVImrcFZpNHU4l9Xjx9gGWRbpqTvUbb1gTPTkwO5qEXfyJ
 0FGEUyCKMJfv7fzPPem6lB13UEHu8S9eFrU200mGBY4R12V7UxUfnEx55c4RVGjihv
 wWTAL2QsQsol/wnIoDpfCWN0B/WG6l1iClAqyoIw=
Date: Sun, 6 Oct 2019 10:22:15 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Lucas Stach <l.stach@pengutronix.de>
Subject: Re: [PATCH] arm64: dts: zii-ultra: fix ARM regulator states
Message-ID: <20191006022213.GN7150@dragon>
References: <20190906170601.2914-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190906170601.2914-1-l.stach@pengutronix.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_192231_510273_23855A16 
X-CRM114-Status: UNSURE (   9.15  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Fabio Estevam <festevam@gmail.com>, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, patchwork-lst@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 06, 2019 at 07:06:01PM +0200, Lucas Stach wrote:
> The GPIO controlled regulator for the ARM power supply is supplying
> the higher voltage when the GPIO is driven high. This is opposite to
> the similar regulator setup on the EVK board and is impacting stability
> of the board as the ARM domain has been supplied with a too low voltage
> when to faster OPPs are in use.
> 
> Fixes: 4a13b3bec3b4 (arm64: dts: imx: add Zii Ultra board support)
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
