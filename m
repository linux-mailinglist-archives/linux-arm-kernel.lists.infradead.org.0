Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B781E7C8F3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 18:40:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=he+GUDEejgjY7YjucysddR5I08JAZZOEMpfoYVp5Yk4=; b=r4jL+n1zR9HSoN
	drQjxgn/Y8HMSf+SINW/yOa7iEqDbXPJF2jooBU48qoabLzmrPEOZP34o8N9p10r7VLFAdy9q/ui2
	LMO+wfP4wHtiOzjdsK/o4r4D+YSQj5dGf9mJlk1d+Gnd0srPnzXltpOHrICaXDtvvbwxfwjI+cEzW
	yuLkyR53/GEoUwOzcEG9uF2GzlTUmhGZB1f4tbIhunT2NPzrJIcwXKvAZDJHEK6oNse+eUpYrPdxV
	OwoIbdyK/Q10ZOAF91oLq99bb7sTJni7bowj89Lys9XDtCDFCDwdaPsysAe+OTEI0DCNDzX26Qzj7
	Y2PlgPVpLWXR9c3u0X6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsref-0005k9-B6; Wed, 31 Jul 2019 16:40:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsreV-0005iX-LC
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 16:40:37 +0000
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com
 [209.85.160.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 18435217D7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 16:40:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564591235;
 bh=YL6XanHOolYBcQrCgtDrnoZxKEgTNa0ScsgoNJYUcl4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=vV17cvDdDvETO00aVhD1+RRzbWqVUfJpSZAbyKvzxiGWhpRx6idzA7KjVE3HSKgFJ
 yNR29JWdMJ0Ho79he6O206pMZhRdSF/wCyj36+CW/3no7oEm4X6dzIGADd3HD8yu77
 /6ZGkrZZQIbH49k0YWO7M0svFrDW+4oWHSYZ6T+g=
Received: by mail-qt1-f177.google.com with SMTP id l9so67188342qtu.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 09:40:35 -0700 (PDT)
X-Gm-Message-State: APjAAAV56MbJEMRivsR40qJNAIJVEKjFsP43B35I1vmmp6F6XyvN/b4b
 OcnK7g6ojpg/nbMgbFiVaKPkaVN8EEJ/tPjOxw==
X-Google-Smtp-Source: APXvYqxdcWD9trsaYQYOwFKEONE5H4wG9+/v4JG0/5E8QaOHAUVaeK8kQHktNxjbYmOrrMt7zJ5qZzoDHRl4gwI64GY=
X-Received: by 2002:a0c:8a43:: with SMTP id 3mr90832483qvu.138.1564591234233; 
 Wed, 31 Jul 2019 09:40:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190731073744.13963-1-geert+renesas@glider.be>
 <20190731074801.5706-1-geert+renesas@glider.be>
 <20190731081209.GA5080@pendragon.ideasonboard.com>
 <CAMuHMdV9MEYP97_6RFhmbGGB8uY-Pi8S9q+m+XMmHzKHcibJwQ@mail.gmail.com>
 <CAL_JsqJWJ+o6t2Wb162h7Xz98L=WPSi4une-EC0HfoRiWLmKWA@mail.gmail.com>
 <20190731150909.GD4369@sirena.org.uk>
In-Reply-To: <20190731150909.GD4369@sirena.org.uk>
From: Rob Herring <robh@kernel.org>
Date: Wed, 31 Jul 2019 10:40:22 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+qfGrrfG68WKSsHF2MoLBNi5m9w9x68dT+ZAG9fcWEjg@mail.gmail.com>
Message-ID: <CAL_Jsq+qfGrrfG68WKSsHF2MoLBNi5m9w9x68dT+ZAG9fcWEjg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: r8a77995: draak: Fix backlight
 regulator name
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_094035_734733_99BD498B 
X-CRM114-Status: GOOD (  12.54  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>, Johan Hovold <johan@kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Simon Horman <horms@verge.net.au>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Vasut <marek.vasut+renesas@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 9:09 AM Mark Brown <broonie@kernel.org> wrote:
>
> On Wed, Jul 31, 2019 at 08:47:38AM -0600, Rob Herring wrote:
>
> > As long as we have a consistent base name that we can match schema
> > with, then I'm happy. But for regulators, we have a lot of node names
> > like 'buck1', 'LDO2', etc.
>
> Those are all types of regulator (LDOs and DCDCs are the main types of
> voltage regulator, and buck is another term for DCDC).

Yes, I know.

> I'm still not clear what meaningful effect any of this node name stuff
> has :(

It is primarily just what I said. Standard names or patterns allow for
applying schemas. Otherwise, we only have schema checks when we have a
device specific schema. Of course, we do have those too, but generic
ones are useful when we don't. If there are errors in the DT causing
the device specific schema to not match (say a typo in the compatible
string), we still have some checking.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
