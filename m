Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 325A76FE43
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 13:01:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nNCbSQs3nWVsWf/kCQ2WR0N3AZuZ3Le8qjXgKxnC1g0=; b=gIU6He7n62jIRZ
	dbPrCh7zR+Zd5JpNN43DTJfgdKWra0Z2GN4MdFfPHzUo7O1eIcg5EjgDshME4hqUuX8JvSrx5q9BD
	EbK/z5Zc3BPASrzqETDGVTSwaro5aoNdpvJKIv59vfQNZCmjD0B2eN96CH/SA5dV07qQTAc24mRzd
	5rqTubF1Q9Lw+6LGHmOkp9yNPMliqcAGBQyyCOCuf6owPA3wd4/d1hcMPZx3MgC4GIL2wGvMH1iGa
	Yk10CU7F60+ggLKVIFsQmshgWZdxHXpAYjBuCHElISnv6hXA95ZvJ1Z0vzAeJXZAAeBtd6aIqXDWs
	2etISMr9qiVMq/+QXj6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpW43-00006i-Qr; Mon, 22 Jul 2019 11:01:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpW3s-00006L-3n
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 11:00:57 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 037E521926;
 Mon, 22 Jul 2019 11:00:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563793255;
 bh=bz8L7Y4lQ/oG1EZPxMzmsi5kCGlXofk3qAQ79Iyho34=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lMZjrOV4kI/eXJyvtx7sF1ACqt/VSvQoy/KWW5oASQDX4MJoZA/LKl6rpCaleMLlX
 mbxXxBfaFZPOSK6ZVP4z1I7ShzeQVRiit45VA4YTEWb6OwMd0Y9FqjT7tMpYCp5lH/
 kElhVj70BaIk6J1ZEmmavXGYN6neCbSM8L73yfyI=
Date: Mon, 22 Jul 2019 19:00:26 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fancy Fang <chen.fang@nxp.com>
Subject: Re: [PATCH 2/2] clk: imx8mm: rename 'share_count_dcss' to
 'share_count_disp'
Message-ID: <20190722110025.GG3738@dragon>
References: <20190709071942.18109-1-chen.fang@nxp.com>
 <20190709071942.18109-2-chen.fang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190709071942.18109-2-chen.fang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_040056_178505_54CCA840 
X-CRM114-Status: UNSURE (   8.33  )
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
Cc: Jacky Bai <ping.bai@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 09, 2019 at 07:18:01AM +0000, Fancy Fang wrote:
> Rename 'share_count_dcss' to 'share_count_disp', since the
> DCSS module does not exist on imx8mm platform. So rename it
> to avoid any unnecessary confusion.
> 
> Signed-off-by: Fancy Fang <chen.fang@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
