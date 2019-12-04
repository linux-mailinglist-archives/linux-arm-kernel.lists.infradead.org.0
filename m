Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 346DA11233F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 08:03:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DkZ1eO5GdujYo6fsTgq4oVMzmHuOOgLlHHAKfL7VnRE=; b=MwpioaTGxBP2hq
	VI1C86Jy8hriDNDGdEXZL7he/QsvqkfOAMTYhKDIvH+2NEkqELIZdSxUAJ4PjrUB1gfW4ZrS7MR7Q
	vOjUk8x7IFCpEmZdfWc0ntrh9s9yxJUJRBSTFopW5l+qAaXi80Ids5p0IsIII+88rcAHQ+uypgPvp
	p23GeMxKHna3OeyoRTBDnVAjyuxocBLyMlqoh5/wE8lKEx7QwlNg3UnjMJf4w6WbpiCNGe4xVnVJt
	elRRnnQZx2MBYlS1txMmpb5tNut7r+W4snCNJN+rbiJ49qzNd+5re0DauO+/Zx5v+6ql5DGyC6e+m
	jcAPaywYXQUOukimBwMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icOh9-0008Q5-Hi; Wed, 04 Dec 2019 07:03:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icOh4-0008Pm-7c
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 07:03:27 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CCF8920640;
 Wed,  4 Dec 2019 07:03:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575443005;
 bh=KdcqJ1Du5b1fFi3mrE7QihV/xxYnqKSs8F+4VKxDpDY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=10UoHMKtcJGHaoz1X74ZDcJNcOTZKLq8BhqT70Kxvjzo7Yjqx7KB2Ve0zHfOIVZ28
 WaHL78a4qNAueypXn/yy42WJx7MDJ0T5zm0e3/CvhFmV5o0bGK8GyFdrel/AYlcIxL
 T0K1IHthf/JhGPmHsNrJn23qr4373/BKqXq+MBDs=
Date: Wed, 4 Dec 2019 15:03:11 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 1/2] ARM: dts: imx6sx-sdb-reva: Add revision in board
 compatible string
Message-ID: <20191204070310.GD3365@dragon>
References: <1573091764-20483-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1573091764-20483-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_230326_292554_480F24A1 
X-CRM114-Status: UNSURE (   6.89  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, andrew.smirnov@gmail.com,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 marcel.ziswiler@toradex.com, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, manivannan.sadhasivam@linaro.org, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 07, 2019 at 09:56:03AM +0800, Anson Huang wrote:
> i.MX6SX SDB Rev-A board should use its own board compatible
> string instead of default i.MX6SX SDB board.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied both, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
