Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA5FE6C60
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 07:21:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZHjKiZiYoCWTHwwID93yBgKXvUFIy+NWqP1qHvZ8dw0=; b=SpkFoDSf876U6J
	0xz/Pv5eYRUJZ54V6Lji6Lcm60MAKEb+OYr5TmtBo3QNiUpZS8jl+fq4ok4o9BuKjiKXB4l2+BRE5
	6Qhlrpeylj+HQYXolgtg6Aunb1mDkMXRinVQYJEssImD37PDHDBTxCgKnaPsXlVYaobeW3n30gDhd
	ZrZuHOwpDgERKKgMmPB/BzZ2Zs2OH4f+4Q27aUzQR1W6LxNCmDBgWpzLKcdXbsX70oFLyMr/UFMh+
	SsGwZ8YHf1tvNqTjhb8PjUvxhOrasjv7Hnv8uMHwlQ5uOcP5ScU7txYGzVZydmUzMUVui4MTBGjuj
	G0NnxKP4501UNOEdj75A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOyP2-00038S-NF; Mon, 28 Oct 2019 06:21:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOyOe-00030N-7p
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 06:20:57 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5550F20659;
 Mon, 28 Oct 2019 06:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572243654;
 bh=1oraWkvGzB9i9YIhUnpN2CmrzqBkmrHglcy6dngSph0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BicByxo3CtsNd7n/zsZKv1iyV6JhcfcHGWYQ6toEw4HYp1HWwf7zGtiZ6WLZxEYpb
 P1bALq/KSNVc02swIBd3gab1fH1XhxspQ6klaRekMPG5hBpghjKgeuuuGVXKw70daW
 vKQl7R8Fur/w07XWZylLF1GAFOxm6fa853rKSfgI=
Date: Mon, 28 Oct 2019 14:20:34 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Subject: Re: [PATCH 2/3] ARM: dts: imx6qdl-zii-rdu2: Fix accelerometer
 interrupt-names
Message-ID: <20191028062033.GN16985@dragon>
References: <20191022040500.18548-1-andrew.smirnov@gmail.com>
 <20191022040500.18548-2-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191022040500.18548-2-andrew.smirnov@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_232056_312892_7F1D1BF8 
X-CRM114-Status: GOOD (  10.00  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
 Chris Healy <cphealy@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 21, 2019 at 09:04:59PM -0700, Andrey Smirnov wrote:
> According to Documentation/devicetree/bindings/iio/accel/mma8452.txt,
> the correct interrupt-names are "INT1" and "INT2", so fix them
> accordingly.
> 
> While at it, modify the node to only specify "INT2" since providing
> two interrupts is not necessary or useful (the driver will only use
> one).
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>
> [andrew.smirnov@gmail.com modified the patch to drop INT1]
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Chris Healy <cphealy@gmail.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: linux-arm-kernel@lists.infradead.org,
> Cc: linux-kernel@vger.kernel.org

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
