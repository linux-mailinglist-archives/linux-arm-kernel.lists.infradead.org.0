Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C17160B78
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 08:18:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bXPDiAcdGyqqRuUCgxf99jDgvbolKm5LZyCy/W4iG8o=; b=gJSaUpYNntUwKH
	UfSewyCPFQSkXD3QrXde+gH6KzqYv8EuSr19fncoqSPD0CaNhCbxmTI2EADDm8ZKKygEZ/zm2i86+
	hUbZScnTJWsjq+bEPf7uLbu1AL/VXxwE5l8K+jCsu+rM7Gqc5AxXRLm+MofhjMDS3lH7G9gl5Sj6t
	v1aAu4PcDE4zsmDLQtWEhq96Yogub77oYfG3mCtsxMlsGcHzkGzA+4Ucqr0GyISZhpJ3MJXvPP56n
	7iI4FTIUJo4A/rdHBqujhqY+Lv6/R/bdw/sPvQZQtQluz9rX1o+Jo6eKLeIjyghvTSED3Ay6TfHzp
	2e35RKm4AFgKeCtsMyQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3afy-0001WK-6Y; Mon, 17 Feb 2020 07:18:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3afp-0001VU-DU
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 07:18:34 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 580CA20718;
 Mon, 17 Feb 2020 07:18:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581923913;
 bh=d1Kkja0ZMXgZjNlJF+Ikl9WhfLNQfqy3/oo7a/LOPEw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UWAQe1lSC3P/42E+6KUUROjTQU3z86Weq3w3YFpqAhp28V/v/FQ7T8Lq6MfP2DFc4
 bJgDaPxNPtLWWe7Zr3uFyQmVyDGbk4TpQqsyoEVCFXmJ07wn2P2Qsdrz3gRlKBnFnk
 KBer8H+lXpatyntw19wPMo5GFV8zC+FXUs0AOt98=
Date: Mon, 17 Feb 2020 15:18:26 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH] clk: imx8mn: Fix incorrect clock defines
Message-ID: <20200217071826.GD7973@dragon>
References: <1581908495-11746-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1581908495-11746-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_231833_468210_B9AB4AF7 
X-CRM114-Status: UNSURE (   7.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, robh@kernel.org, abel.vesa@nxp.com,
 devicetree@vger.kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, mripard@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, leonard.crestez@nxp.com, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 11:01:35AM +0800, Anson Huang wrote:
> IMX8MN_CLK_I2C4 and IMX8MN_CLK_UART1's index definitions are incorrect,
> fix them.
> 
> Fixes: 1e80936a42e1 ("dt-bindings: imx: Add clock binding doc for i.MX8MN")
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
