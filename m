Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C19BA15D3DD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 09:33:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/8RlVtlroS45jfrhyO3Kh1x0AzSxK1uY/zzrSNAT0hA=; b=c+gGtrsbx6idn2
	RAMMjMBENETx/i6IkbUy3yj72kX6mvPnfbp7GhnqnhBXjxZZZKre8Xca/qDJIjo6oYE6mjDdsU8SN
	wNUiqKHXjFVcQVzaftE3hDid70cqdQ1IYqssElLDsSrEtbtiPN3tqSQ/A4oKjPGVAUW0pVtn19leH
	W/YzYMQgIYepquLUFe8zoXarU57GtFFwJTVP5/hsHj5CeNF5g7FZ21TdPrTIlNYuCedwkkma/WZiO
	chSdlLJozRMu6Vj4MiAAUNxtKCT7DMIY0SNeu3SL6rrG36FiBWf+ezvyNwwRRXhHNObzgDtsrY8j3
	XRiGmQz44Lfl69E67oWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2WP7-0002ek-2W; Fri, 14 Feb 2020 08:32:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2WOw-0002eF-NI
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 08:32:43 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4668420873;
 Fri, 14 Feb 2020 08:32:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581669162;
 bh=Hw5z4C04dvgDdgjwZX9sbW+U/h9mRyaYkFTxfMoV9rI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rGuXm0DAYYdFvoXOA59Sy1pGJdtM2VWWJPQwq+ZXZhkqeJCSUmUiYnVxDG2bCv1h5
 9iiG9o48fbxLQPKTUZhrPryC3Xtz3JWednyhkYIITa2OpLJALHu8pMMqSL/6Rn2ueF
 LfiTPsMGnSgCD9GXsdn38883h+c52sPH58FIwlaY=
Date: Fri, 14 Feb 2020 16:32:33 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
Subject: Re: [PATCH 2/6] ARM: dts: imx7-colibri: fix muxing of usbc_det pin
Message-ID: <20200214083232.GA25543@dragon>
References: <20200204111151.3426090-1-oleksandr.suvorov@toradex.com>
 <20200204111151.3426090-3-oleksandr.suvorov@toradex.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200204111151.3426090-3-oleksandr.suvorov@toradex.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_003242_778007_059B02E6 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Igor Opaniuk <igor.opaniuk@toradex.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Stefan Agner <stefan@agner.ch>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 04, 2020 at 01:11:47PM +0200, Oleksandr Suvorov wrote:
> USB_C_DET pin shouldn't be in ethernet group.
> 
> Creating a separate group allows one to use this pin
> as an USB ID pin.
> 
> Fixes: b326629f25b7 ("ARM: dts: imx7: add Toradex Colibri iMX7S/iMX7D suppor")
> Signed-off-by: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
