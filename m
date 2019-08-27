Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AFA79E71E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 13:55:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RGDYF+8N/wfQp4vjToXpNIsdenSyOHqMLTWkBeXGSHg=; b=UP38qA2eDC4lKY
	m91+fC+M+y5yVD9PZA5dJMGiAXs6wPkz1ZQSVmBic8GHjZyWGFrghRwHAOwnM90Vp1ZAAO4h+iogv
	i4czi2LmasAgmpEwSqslh8hDWkg6LvOqb6teZmx+Goo1HWUmw9HcUvTWFLH3Tu7bUGRTzn4NhPX2t
	tLcSRlOCnfbmEPGhmWGv4W70yOCEd/SoeaTarRNkeNUzRczEmf53RqfpPVeatq1jiuuBCHwbDBmZ4
	dmJtBLD7kc6AEHwG0V6tStu9strViGDuhePZ9JKRkK5ICXt4r+YaHB2anaAG2U3KGl5CI/9VMirIt
	xd6Lzr2Q7dEHecyFGwLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2a4Y-0004LV-NS; Tue, 27 Aug 2019 11:55:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2a4J-0004L1-DO
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 11:55:26 +0000
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com
 [209.85.160.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 592CD21881
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 11:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566906922;
 bh=JiIH7GvJBqIxLgHBqdAcR6l0tLEHUHaDAkOIev7Itr0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=trzMOQh6oZRO2pC2WPUJO+UAuISCDB3Ul+ISna6+GjiF9AQ0VsBlOswIOikqm5YJo
 trwRBjITsBFlMVOKWXfbbnofPrPCqHnrclSmJ911WA80Bi50zHu6WEz1JrMGVMcArq
 ZX8WplDbV4CvWTmuPgkFgxyf8L0B5KpP96g69Dl0=
Received: by mail-qt1-f169.google.com with SMTP id z4so20979543qtc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 04:55:22 -0700 (PDT)
X-Gm-Message-State: APjAAAXflvMSu5PzwlbEgRbZdttDHfeiMrm2Cs3GRqmWggWXoc5XUaU3
 5RUfU8DmVsoSKjg5IH3iEyNir8WXyCI5XvtizA==
X-Google-Smtp-Source: APXvYqxCV/v7Inh8wWhYTUZAYGrC60mkBp9+b9uV5KJfPw0V8JXBVd0Ry8xbsYF6Er9EbPJLQGadfPnHe8X09KiOeQA=
X-Received: by 2002:ac8:44c4:: with SMTP id b4mr22131243qto.224.1566906921516; 
 Tue, 27 Aug 2019 04:55:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190821195217.4166-1-sunil@medhas.org>
 <20190821195217.4166-2-sunil@medhas.org>
In-Reply-To: <20190821195217.4166-2-sunil@medhas.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 27 Aug 2019 06:55:10 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKLLUX+CZOuBWqxB3UZv7uY74snqqz8fHPqnw4Zrz-p0A@mail.gmail.com>
Message-ID: <CAL_JsqKLLUX+CZOuBWqxB3UZv7uY74snqqz8fHPqnw4Zrz-p0A@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: sunxi: Add compatible for A64
 OlinuXino with eMMC
To: Sunil Mohan Adapa <sunil@medhas.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_045523_477419_6D2FCD8B 
X-CRM114-Status: GOOD (  13.08  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>, devicetree@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Mark Rutland <mark.rutland@arm.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 2:53 PM Sunil Mohan Adapa <sunil@medhas.org> wrote:
>
> A64 OLinuXino board from Olimex has three variants with onboard eMMC:
> A64-OLinuXino-1Ge16GW, A64-OLinuXino-1Ge4GW and A64-OLinuXino-2Ge8G-IND. In
> addition, there are two variants without eMMC. One without eMMC and one with SPI
> flash. This suggests the need for separate device tree for the three eMMC
> variants.
>
> Add new compatible string to the bindings documentation for the A64 OlinuXino
> board variant with on-board eMMC.
>
> Signed-off-by: Sunil Mohan Adapa <sunil@medhas.org>
> ---
>  Documentation/devicetree/bindings/arm/sunxi.yaml | 5 +++++
>  1 file changed, 5 insertions(+)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
