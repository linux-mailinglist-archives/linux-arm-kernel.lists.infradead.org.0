Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59148359D7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 11:49:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C6uVnuF3jI/eg17puJw9qOg8Orcet5LeZj3CDaIJAMM=; b=avMjuJBEqMuAns
	dD5jO6Opz1iJ1a0tuhPHr+7c6QsyQfVmae8l9VxtWLwnl01XPuv2QDXwKgUjJKipun6Jov/DMAIgq
	8JW+cc/0uFEU7PVnptuZBBYpwBwnZnjHHqEkHS3N0h4XPIub+Lotd0OSJoX399X0MsHh6lokxbJOh
	XPx5ilJ3a9T+iwEcPjp6jI35f2wuGqTH9FfGWDm5ltiqYiXlGyDuTrCRFXZGN7YEcsYEh8nNsuHuv
	sy9JJmNp49lZv8ox15Lssx1bq9JNG/Yg7Bva2quhhOmWVOZM+yqRFiMbxX8GMhTYRkulz8B010WuA
	j9H1e+soRGYcMZADLu9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYSY0-0007d2-9p; Wed, 05 Jun 2019 09:49:32 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYSXr-0007bH-RQ
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 09:49:25 +0000
X-Originating-IP: 90.88.144.139
Received: from localhost (aaubervilliers-681-1-24-139.w90-88.abo.wanadoo.fr
 [90.88.144.139]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 94C4B1BF204;
 Wed,  5 Jun 2019 09:49:06 +0000 (UTC)
Date: Wed, 5 Jun 2019 11:49:06 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH v4 01/13] dt-bindings: media: sunxi-ir: Add A31 compatible
Message-ID: <20190605094906.d5fjoeelfblhpvfm@flea>
References: <20190604162959.29199-1-peron.clem@gmail.com>
 <20190604162959.29199-2-peron.clem@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190604162959.29199-2-peron.clem@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_024924_042820_F85AD886 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Sean Young <sean@mess.org>, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 04, 2019 at 06:29:47PM +0200, Cl=E9ment P=E9ron wrote:
> Allwinner A31 has introduced a new memory mapping and a
> reset line.
>
> The difference in memory mapping are :
>
> - In the configure register there is a new sample bit
>   and Allwinner has introduced the active threshold feature.
>
> - In the status register a new STAT bit is present.
>
> Note: CGPO and DRQ_EN bits are removed on A31 but present on A13
> and on new SoCs like A64/H6.
> This is actually not an issue as these bits are togglable and new
> SoCs have a dedicated bindings.
>
> Introduce this bindings to make a difference since this generation.
> And declare the reset line required since A31.
>
> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> Acked-by: Sean Young <sean@mess.org>

Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
