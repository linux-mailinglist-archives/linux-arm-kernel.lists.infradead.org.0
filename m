Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06C9E4FAA2
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Jun 2019 09:37:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nV595UtdCQY2iH1A15xi1DKQm+6XCo4HweGjrMtDwhA=; b=W03mTUcXqlW1St
	3Jy2hfUM8NQo6l5uSxx/qXFTXlSI3Dxi9kM96cO6DHbUpnmJwEqn3fs1Zmot7NzeyFASmVux1SJY8
	8hUcLpp5CReoFJxMX3QGwMvkB4QrheyTaBvzCzyEvugObK7+sRlvz0Gm+mbS2d53iaCGpKC+iRoOl
	OSDaCRd7b3Apf+G9KdR9ZaRGqH7A+zFqk/Thw+DE/hiFnBMh4AjBso+v4FuCYNwrDBuAGtyEUG/N7
	W7Zoegx9LF0R8iVxdOQGcvVQjm+xEKJRmmnF0dYsDQJdk3q57PaAudZSUe10dDQ0RmMVgMfpbgon8
	8cEFqeLGSA6KdXa5i71Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hex3c-0002rw-Im; Sun, 23 Jun 2019 07:37:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hex2y-0002rB-GA
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Jun 2019 07:36:21 +0000
Received: from dragon (li1322-146.members.linode.com [45.79.223.146])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9C7E92073F;
 Sun, 23 Jun 2019 07:36:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561275377;
 bh=GoqMkEGAkw9RsRi9oynfQuaA0MqWs5oMzUhbx6/BIjk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=h5cwObSJLtfGBmPwzlpJCw9ntlEZ/Hv7gCDQ5Zjnf8e0FlS3aGFVVwL1lY0V5NFVK
 69x89nQrjd3MQ4CM3CrnMxSmU6LJSyuooXR0Np6mZhoPpahmsX4TO4pRx2XDckXB9A
 NCM4R0rgY0oNLtu2yDTrgSg3PL3TNKjBwmKCwXM8=
Date: Sun, 23 Jun 2019 15:36:06 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: daniel.baluta@nxp.com
Subject: Re: [PATCH v4 2/2] arm64: dts: imx8mm-evk: Enable audio codec wm8524
Message-ID: <20190623073605.GA3800@dragon>
References: <20190604123257.2920-1-daniel.baluta@nxp.com>
 <20190604123257.2920-3-daniel.baluta@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190604123257.2920-3-daniel.baluta@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_003620_608523_BDCF5ACC 
X-CRM114-Status: UNSURE (   7.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, m.felsch@pengutronix.de, robh+dt@kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, festevam@gmail.com,
 shengjiu.wang@nxp.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 04, 2019 at 08:32:57PM +0800, daniel.baluta@nxp.com wrote:
> From: Daniel Baluta <daniel.baluta@nxp.com>
> 
> i.MX8MM has one wm8524 audio codec connected with
> SAI3 digital audio interface.
> 
> This patch uses simple-card machine driver in order
> to enable wm8524 codec.
> 
> We need to set:
> 	* SAI3 pinctrl configuration
> 	* codec reset gpio pinctrl configuration
> 	* clock hierarchy
> 	* codec node
> 	* simple-card configuration
> 
> Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
> Reviewed-by: Fabio Estevam <festevam@gmail.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
