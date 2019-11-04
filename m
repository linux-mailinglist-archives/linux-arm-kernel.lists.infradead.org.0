Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B8BBEE2BA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 15:39:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LH8xtb1bUjlLY5RrUr4P9KMkcFijUePV/WVO2FVcnRg=; b=odpO9t2nns/Opt
	EXBuX0apQQ2ctj0h4r8Aq13qbN5X1f0FNW6bKm4FtvJh9QSU5kKFGJ4abuOTW6yLVrxApL2RUa/VW
	Zfdp975u1emefAUjnjMcdd6FYqynYYhpfZDTitbcWn5DkMAsWuO40ul/Jksd5gb04nqNFBVRYcJRw
	5lvuNdPJyWsQSiXEjYAlwbRl5F9DFwyfu1VPiq5PZkDWe8+c1PN1YZAbmO6BLm8MLWxB6r/0EmDZR
	qD1RqYv+5NYWPugpzPeBj/+a3zoO7nTTGGE44BCWxs+izHMViheZvH+kLBISbwJLoO9/93ZXkCPhd
	V+UzflqSlCrtsrKoCD0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRdVr-0004nS-AY; Mon, 04 Nov 2019 14:39:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRdVl-0004mu-9i
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 14:39:18 +0000
Received: from dragon (li1038-30.members.linode.com [45.33.96.30])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4BEF721D7D;
 Mon,  4 Nov 2019 14:39:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572878356;
 bh=rBD591jAd5nuzaGDk6Z/gE1VUXjG7vny3xKcPb3R5hQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zK/5Iy8EzzxsdwVFYIqQjFAqf3sny0M+yC08xIROTlZfFllRHCWvvN7lnEHp7oksa
 +BH0PLqkrNhRGd9XAsrdhe8OErtjUReXs3uKIh7M1vz+wSfwSeM5eCkB16iH2O8jZE
 vcRCrd6vx1ykwc/p1gsdG4Lco/WVnG/zpMN0wIdo=
Date: Mon, 4 Nov 2019 22:38:48 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Schrempf Frieder <frieder.schrempf@kontron.de>
Subject: Re: [PATCH v4 0/9] Add support for more Kontron i.MX6UL/ULL SoMs and
 boards
Message-ID: <20191104143844.GZ24620@dragon>
References: <20191104115352.8728-1-frieder.schrempf@kontron.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191104115352.8728-1-frieder.schrempf@kontron.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_063917_359419_0DCE7F2E 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 04, 2019 at 11:53:56AM +0000, Schrempf Frieder wrote:
> Frieder Schrempf (9):
>   ARM: dts: imx6ul-kontron-n6310: Move common SoM nodes to a separate
>     file
>   ARM: dts: Add support for two more Kontron SoMs N6311 and N6411
>   ARM: dts: imx6ul-kontron-n6310-s: Disable the snvs-poweroff driver
>   ARM: dts: imx6ul-kontron-n6310-s: Move common nodes to a separate file
>   ARM: dts: Add support for two more Kontron evalkit boards 'N6311 S'
>     and 'N6411 S'
>   ARM: dts: imx6ul-kontron-n6x1x: Add 'chosen' node with 'stdout-path'
>   ARM: dts: imx6ul-kontron-n6x1x-s: Add vbus-supply and overcurrent
>     polarity to usb nodes
>   ARM: dts: imx6ul-kontron-n6x1x-s: Remove an obsolete comment and fix
>     indentation
>   dt-bindings: arm: fsl: Add more Kontron i.MX6UL/ULL compatibles

Applied all, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
