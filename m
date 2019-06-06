Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2678836999
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 03:48:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3bRCv/55KyZKc6iuHB1gXKk9jBjsaQLwkIZ+9R9qKhs=; b=OOQ94a02oUt/W/
	sELYEnlrBTvyAOgxKBnJabLbC3I94jzVHjPRjvTLpau4NKhK4nI0ybTvwFIo+R3WKvn2x5y1IxIf6
	R0vbecJ9OrVF9zi5qLW5j2nqaKnlhREZMjSmnBmnN7IKdue9JEeBIF+l3SmHSmblRiLbn61dPzTSj
	nupLSAJPF2X9CGQMauW3G0hDp8HEyEFaYrptYQCBd3qdKTg8tx/pbZ1gvyHV2D5zK0QHVP/qGn+Cl
	e3+T7FNgsAsf5XRQueKmIazvG+eXfZv1IiBHtxiFya3UKVUtCkJjIXzkuaw9HZh7rUf9zrj7y7orf
	uWCP0D8Fbs4WE7QpeR3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYhVj-0000oy-Tw; Thu, 06 Jun 2019 01:48:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYhVc-0000oY-6R
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 01:48:05 +0000
Received: from dragon (li1264-180.members.linode.com [45.79.165.180])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8D8FA2070B;
 Thu,  6 Jun 2019 01:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559785683;
 bh=AQf07PzbL36wKAQUrJOrcOkQ4LuctIqx8gRdVnnMQEQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gy/8/bZJwuAYu+DjoZBi/m7umY7zw427FKV+szGvUtDEEVCrvlaoXHYlnxHWVBnlQ
 OQ8/nE8SAY43FL3kCjwwB/YcZVsMQQck2rkraNEhqfUUfRftbwXpdxsxp747q9QymE
 yJMHRTfuAdgcknpBdnz9s1GHpY2T+rU0z4DNy7yg=
Date: Thu, 6 Jun 2019 09:47:47 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH 1/3] arm: imx6sx: udoo: Use the correct style for SPDX
 License Identifier
Message-ID: <20190606014745.GR29853@dragon>
References: <20190601070718.26971-1-pbrobinson@gmail.com>
 <20190601070718.26971-2-pbrobinson@gmail.com>
 <CAOMZO5B3dedXPyGgwWpdDL5ccC0TQuN=+UKBOW4Emv1_xwbZJw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOMZO5B3dedXPyGgwWpdDL5ccC0TQuN=+UKBOW4Emv1_xwbZJw@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_184804_263671_F6F513B2 
X-CRM114-Status: UNSURE (   9.00  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Peter Robinson <pbrobinson@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 05, 2019 at 12:19:18PM -0300, Fabio Estevam wrote:
> On Sat, Jun 1, 2019 at 4:07 AM Peter Robinson <pbrobinson@gmail.com> wrote:
> >
> > Use the SPDX License Identifier for GPL-2.0+ OR X11
> >
> > Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
> 
> Reviewed-by: Fabio Estevam <festevam@gmail.com>
> 
> Nit: the Subject could be consistent with the other patches in the series:
> 
> ARM: dts: imx6sx-udoo: Use the correct...

Fixed it up and applied all, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
