Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A508F17228E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 16:53:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TilxkJUF98MNdKfAMm9awImTRADVHLuDUbRcKKcTdHw=; b=YxdTr7RagxUYhu
	OgyMKci4eYT4RLg51TRW+l/nfUuCBN6bqJlF5SVuMfpdby0XokMFerke0LrH+eLT3e6FS5moxr5Pr
	XkSr2aA8LRc2T7iTgCuikDFak8di5qilwVem3t3awCC4g7fqfV5MWBK9hp68wJsnQ2bUHNGTH+tsF
	ia5yfBKNfP0YX/FHT52MjI8zOQLMoLFZ75TYQ8Ulg9waHnM6YxOH/MJIfhBCubH3wLSrAJ9ZDx5uK
	yJ7LHykvsDs+IpRVBeAEqh/irmgbr4z6GPe/tuG1D7tbIM15b5fztBj/0wr+rGHaeqynhBwEKiE/+
	uHx9+oYcYlUOYnBkEZXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7LTN-0007bm-4X; Thu, 27 Feb 2020 15:53:13 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7LTC-0007b8-JS
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 15:53:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1582818779; bh=9G3TKy4/xrc5jr6Pbe73EGsbZNccDkBuSnkf4goeC3U=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=eTHOlOzGPHThofA8iMxQuXOb2N5X7CpRxbNqFJZEva2/buP1hGUN/LmNZnoHvPhLn
 2YSbqShNGKPK9awd5EUJCxdt2BN23vzvtJnaKywBYx05g4t9nkZEY8xeLxrmE79tCE
 hASUbASg529At8OVXJSTqZIL+jNTQNvzl0Cow9aI=
Date: Thu, 27 Feb 2020 16:52:59 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH v2 0/3] Add support for Pine64 PinePhone Linux Smartphone
Message-ID: <20200227155259.2gvtmeiismceh7ca@core.my.home>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>,
 Maxime Ripard <maxime@cerno.tech>, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Corentin Labbe <clabbe@baylibre.com>,
 Georgii Staroselskii <georgii.staroselskii@emlid.com>,
 Samuel Holland <samuel@sholland.org>,
 Martijn Braam <martijn@brixit.nl>, Luca Weiss <luca@z3ntu.xyz>,
 Bhushan Shah <bshah@kde.org>, Icenowy Zheng <icenowy@aosc.io>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20200227012650.1179151-1-megous@megous.com>
 <20200227130427.s6dckhlxxpwmekch@gilmour.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200227130427.s6dckhlxxpwmekch@gilmour.lan>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_075302_978303_AC79D1B3 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Luca Weiss <luca@z3ntu.xyz>,
 linux-arm-kernel@lists.infradead.org, Samuel Holland <samuel@sholland.org>,
 Bhushan Shah <bshah@kde.org>, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, Martijn Braam <martijn@brixit.nl>,
 Georgii Staroselskii <georgii.staroselskii@emlid.com>,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 Corentin Labbe <clabbe@baylibre.com>, devicetree@vger.kernel.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 02:04:27PM +0100, Maxime Ripard wrote:
> On Thu, Feb 27, 2020 at 02:26:47AM +0100, Ondrej Jirman wrote:
> > This series adds an initial support for Pine64 PinePhone.
> >
> > Please take a look.
> >
> > thank you and regards,
> >   Ondrej Jirman
> 
> Applied all three, thanks

Thank you too! :)

regards,
	o.

> Maxime



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
