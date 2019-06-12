Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81AF2424E1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 13:59:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5cLkuFyYNCq0PFUlZww/bAY+ae76UGh3cExKyzMVAfA=; b=KTWzPdiwdmiaHQ
	8q0Kw4CbiTxy87MFYn4EqmtDU5Nz6s/zSQb5LWJ85450nLQVY2VFEE3DftiMZYt1pcha9I3wX6Wb6
	sTg8090JhQ9nJ1EOEIev09LHlr+J09HRLAsYn2PQLQavvoxLJo47dCzmpmkyHpXLc0CCOF1yGG2xA
	D45EHVfJzAt9gJZvnO72/CIY4LjOsCUB8MkiVNp0LafOX0/JWDJEEZTZjHyMF/fJi1p/iGpjc8yLN
	M55n7iscFft54EqqLfDaJR3gcsJr6Qa8nS6nqDyEWMU+mpmKKNCslOOGJDYG9u26Z7LH4Cec9e8o4
	pESH3Q79N7tGFObwotqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb1uV-0001NB-9q; Wed, 12 Jun 2019 11:59:23 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hb1uL-0001Mr-8S
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 11:59:14 +0000
Received: from penelope.horms.nl (ip4dab7138.direct-adsl.nl [77.171.113.56])
 by kirsty.vergenet.net (Postfix) with ESMTPA id DBC6125AD60;
 Wed, 12 Jun 2019 21:59:11 +1000 (AEST)
Received: by penelope.horms.nl (Postfix, from userid 7100)
 id CE451E21FE5; Wed, 12 Jun 2019 13:59:09 +0200 (CEST)
Date: Wed, 12 Jun 2019 13:59:09 +0200
From: Simon Horman <horms@verge.net.au>
To: Biju Das <biju.das@bp.renesas.com>
Subject: Re: [PATCH v7 5/7] arm64: defconfig: enable TYPEC_HD3SS3220 config
 option
Message-ID: <20190612115909.7gsfxmdzrmqtzkc3@verge.net.au>
References: <1559296800-5610-1-git-send-email-biju.das@bp.renesas.com>
 <1559296800-5610-6-git-send-email-biju.das@bp.renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559296800-5610-6-git-send-email-biju.das@bp.renesas.com>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_045913_458042_1CF3534D 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Fabrizio Castro <fabrizio.castro@bp.renesas.com>,
 Chris Paterson <Chris.Paterson2@renesas.com>, Heiko Stuebner <heiko@sntech.de>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-renesas-soc@vger.kernel.org,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Andy Gross <agross@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Olof Johansson <olof@lixom.net>, Shawn Guo <shawn.guo@linaro.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 31, 2019 at 10:59:58AM +0100, Biju Das wrote:
> Enable support for the TI HD3SS320 USB Type-C DRP Port controller driver
> by turning on CONFIG_TYPEC and CONFIG_TYPEC_HD3SS3220 as modules.
> 
> Signed-off-by: Biju Das <biju.das@bp.renesas.com>

Thanks,

I see that the corresponding driver patch, "[PATCH v7 3/7] usb: typec:
driver for TI HD3SS3220 USB Type-C DRP port controller" has been reviewed
and appears destined for mainline.  On the strength of that I have applied
this patch for inclusion in v5.3. Please let me know if that is not desired
at this time.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
