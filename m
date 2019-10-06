Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAA0BCCD73
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 02:20:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FUu7WL89fbBpJY7+EoUXKCW82Blxv4OdqyKTMczzE8M=; b=tnKBlyiJD/nTOC
	Bi0LybZMiqipYgPwGyUlRFCj/Ji3+28PWWQ0McRQHWJgK4kc2f8ThXZ4oFknL7OsACEZTEg0Nn/b6
	D1eonBGID9V+P7x6+/0cTYm9q86g0WzGjy1TZj4GOUA3Ok55B1zfcb3XnQiaPa4Jfg29uo4OttXZc
	mZIekuCtTbS0puS0TI9G4+E+CenH5yGNe5v3eJZqga4HKqKmRo0+yP9z8Cb9yZYf9yf2aQA5ZtiO7
	O9797GXdzpDIs721j555bryhvUbzFNDU1jefIozbho+gdZLUOKJw1ebEapoSpfH8pWaWHChON+vAi
	QxAAznsLfHtPgkZiI9Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGuHe-00053J-OZ; Sun, 06 Oct 2019 00:20:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGuHX-00052b-F5
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 00:20:16 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 07CB5222C8;
 Sun,  6 Oct 2019 00:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570321206;
 bh=qQ+AM7HzTxUatAdVYalvXuoGaXRz+y1gBg/GtTj6Ly0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IT94Vl4UeNiaxnAbEub0yaKVQCYfGFVYkKazdQwfLNbPy/C6nLnSoqGZg/UpeeHAo
 oHTJBQToZ94hp52JtZSPUL6MbpnnNh3x9zuyuKPaaKMtU7iPCzceU0aRvmjErAaGmh
 GMEKwVTY/vua6Qsmu1psHg8iMLS8CJWCLdrbU+so=
Date: Sun, 6 Oct 2019 08:19:50 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V2] arm64: dts: imx8mn-ddr4-evk: Enable GPIO LED
Message-ID: <20191006001948.GC7150@dragon>
References: <1567517277-30919-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1567517277-30919-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_172015_525439_62CAF3B9 
X-CRM114-Status: UNSURE (   7.36  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, pavel@ucw.cz,
 dmurphy@ti.com, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 jacek.anaszewski@gmail.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
 festevam@gmail.com, linux-leds@vger.kernel.org, Linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 03, 2019 at 09:27:57AM -0400, Anson Huang wrote:
> i.MX8MN DDR4 EVK board has a GPIO LED to indicate status,
> add support for it.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
