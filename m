Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC96A1166DE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 07:21:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uyRhqnUsxjtz3bJRepp7ZzYj0cdej26jdkVoZ4ByKTw=; b=fRfqlMA6sexcRX
	t0s1HQpLMTkLbQlz1aPF39dv0xSG1svuY+MSQVJcBnB+K309wbnxUfrNuBy4f2SkHgvcLsoX+KlU3
	EbJfCDlHW93fVp/QBDXVkx0RZbQNNB0O8Djs3x5Le7tf0svNVx0u1CjlsjpoKTxwJqSnmFcGNNYlr
	Obz9KokOt6MZK9VzStTHh/dFGBE8wo7ByYIIWv9rbfcfOroKAs4spbd1oE3m38vwPYwPziWziqoDU
	YQvmgY5lBYqvM54j+J6OreipQfSYwi+t6E5/RG56N7TbdYJ/s+ROq5Pv3QB8ePDJG+RzYeIcCQT3W
	QW4mBrDTQtm5PTwbPNWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieCQY-0006vm-Vm; Mon, 09 Dec 2019 06:21:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieCPQ-0005w5-PI
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 06:20:42 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0F1D920721;
 Mon,  9 Dec 2019 06:20:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575872440;
 bh=xx/kMdZFsXWmIP1cEByJCGhN3/wIkksEuxaZs0yioW8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RX8fG32HbIJJZGLMAaFuULZMUeNGr8rsjLwyycgNvutc2gCx6ERCv3AQlDZ1hlUIE
 Sv44Ulyd3DTYT1kOsGqVSfzHzornvHPqYqBUcGbjN7RSlaXGTGmeKOH++tvR8Ykdq+
 xp+YvwqF3y+MHG/cj8CWFwLpQYZzseu887FG9g74=
Date: Mon, 9 Dec 2019 14:20:15 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Lucas Stach <l.stach@pengutronix.de>
Subject: Re: [PATCH] arm64: dts: imx8mq: increase NOC clock to 800 MHz
Message-ID: <20191209062014.GA3365@dragon>
References: <20191127110509.29905-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191127110509.29905-1-l.stach@pengutronix.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_222040_857235_FEA79771 
X-CRM114-Status: UNSURE (   7.45  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, patchwork-lst@pengutronix.de,
 NXP Linux Team <linux-imx@nxp.com>, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 27, 2019 at 12:05:09PM +0100, Lucas Stach wrote:
> From: Philipp Zabel <p.zabel@pengutronix.de>
> 
> The NOC clock defaults to 400 MHz. Increase it to 800 MHz for improved
> memory performance.
> 
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
