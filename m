Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF4586F99A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 08:42:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9jHIiQ7xWaonDfFcAAL8Pd0+vKdQcpX0hAXzVw5ZqA4=; b=ufWzd5bX8YfZdE
	78Vq7xMX92SQiZ0dQJ09Ye2c8CHoLhTo8bfJt29Wm8KcaTXM5g8ER22mIVSXcxsLDMf66FPGyVoJx
	qxeDEvR9AlD8CuFNQLrqdzhu5gNfWaoqUMjv1pVC9dEhY012ORIG4Brh9sAj43C432PUaBTStKJcd
	lWturORq9l+dw/QnRfrOJGE0bOh5YOeSfsXMSzgerlqEsZLDFrwgjtfvTIVJwb6ZTtLGkrD5KT9Qp
	LCL8DptWWiWzWvQGdxhgF56a5Te08NJAkuS6Lce7z5qCRBOxOXaBI/sD/gh3GK50QWkcYN/x/N7hz
	ofbzAoa41tICFGGRe2HQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpS1i-0000IT-9O; Mon, 22 Jul 2019 06:42:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpS1C-0000GF-Dv
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 06:41:57 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CF4D021E6D;
 Mon, 22 Jul 2019 06:41:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563777713;
 bh=Y7qwGlXzUiSE0kZg0GESG8XYy7cqbIb5hrbHF8nFU1c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=b7r/sGk0gxkWn1ddDkwMyXgL1IWvDpoiOIOe3zBiw5clFQ5yAbx4t8AkWsH2jldZ3
 bQq/V+dGe4r0fVq17LNGzIxcxop5gSYqFqYtxAm/MhgPPKnFif1yiDzhvB7vwpwRPa
 Nxoq/kneifaC0Hke5TGg5uWwOqfd3B7R+s1V1kGg=
Date: Mon, 22 Jul 2019 14:41:22 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH 3/3] arm64: defconfig: Build imx8 ddr pmu as module
Message-ID: <20190722064121.GZ3738@dragon>
References: <cover.1562230183.git.leonard.crestez@nxp.com>
 <e51a2f95044f0a9003c3be2e82c3c4b2653670a7.1562230183.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e51a2f95044f0a9003c3be2e82c3c4b2653670a7.1562230183.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_234154_714799_9F0A8551 
X-CRM114-Status: UNSURE (   8.26  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Dong Aisheng <aisheng.dong@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, devicetree@vger.kernel.org,
 Andrey Smirnov <andrew.smirnov@gmail.com>, Frank Li <Frank.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 04, 2019 at 11:53:22AM +0300, Leonard Crestez wrote:
> This is available on all imx8 but is not "boot critical" in any way so
> build as a module.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
