Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5692817D6D6
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Mar 2020 23:40:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uRQPtjRK3SsmXvinFIs5xCNS9qCKZzhyNUoYza0n+rM=; b=Uvtw7rFRSEcq7S
	pEkhp5Lw77wTnMxxxsfsd4g0pgykqEU/zvlPHrXZFvxp93YQImNeGpten7ny3c8DZpRgTOeaexZBr
	KJD58SxO7oQBnsGMy7ffHa5PrjWOBBt4/f2YiIY+1dy6M42eUMUDjAyw4W8s5rwaekgYMmEzPiNBN
	XnPKX0FTt3wHDkOjKtYjmRXRxExYE0Qel/wSYFkB1GvrfXjmxJZIMXKQeFOvp+fV6FasS0Uh4EC/i
	C1AUhc7khQBJfpmbIx6L1+ZEzfvTq6l99tXSspFbp6XvgoyhFMdTHnzUIVlOpPYKrMC+udDpFgjaS
	UMkPlkdoySpPk/qHi7VQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jB4aP-0000cu-3u; Sun, 08 Mar 2020 22:39:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jB4aD-0000bR-8A; Sun, 08 Mar 2020 22:39:42 +0000
Received: from p508fd11c.dip0.t-ipconnect.de ([80.143.209.28]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jB4a8-00040n-Ox; Sun, 08 Mar 2020 23:39:36 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: add Odroid Advance Go
Date: Sun, 08 Mar 2020 23:39:35 +0100
Message-ID: <2618559.AJtVb54S78@phil>
In-Reply-To: <20200308223250.353053-3-heiko@sntech.de>
References: <20200308223250.353053-1-heiko@sntech.de>
 <20200308223250.353053-3-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_153941_440316_7A6F82AE 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, kever.yang@rock-chips.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, jbx6244@gmail.com,
 robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Sonntag, 8. M=E4rz 2020, 23:32:50 CET schrieb Heiko Stuebner:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> =

> The Odroid Advance Go is a handheld based on Rockchip's rk3326 soc
> with a DSI display and some handheld controls including an analog
> joystick connected to the saradc.
> =

> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

> +		 *      *** ODROIDGO2-Advance Switch layoout ***

It was pointed out to me that there is a typo here, layout instead
of layoout ;-) .

I'll hopefully just remember to remove that when applying, if I don't
need a v3 for other things.

> +		 * |------------------------------------------------|
> +		 * | sw15                                      sw16 |
> +		 * |------------------------------------------------|
> +		 * |     sw1      |-------------------|      sw8    |
> +		 * |  sw3   sw4   |                   |   sw7   sw5 |
> +		 * |     sw2      |    LCD Display    |      sw6    |
> +		 * |              |                   |             |
> +		 * |              |-------------------|             |
> +		 * |         sw9 sw10   sw11 sw12   sw13 sw14       |
> +		 * |------------------------------------------------|
> +		 */
> +




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
