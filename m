Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD1A579064
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 18:10:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R8zWpzrmJi+l+yzySocVRYRdGshGYP9kRvdQRBRfcY0=; b=CY4RWSNO6GGrh4
	sl/XfoSk/9bJAWFM6NldxgWu43GZIE1iIBc9gZVafyFbQvDPBGL4zIm+vcYOzcEpofpNQcWk5BEWu
	Xzu+c03aT9iAhE0UHVnAQMCFyPBM4L3NzUm48GdjAa0pG5TeXqnd6PI8ITH1Ew+7abCZdCAx9pzd0
	thcDiODMzakRSSo97qlCDKGQhypRDn785ojxid0ESJzo4tScG0ru0wxtmZMtAbz4Cr1acWNmar2Ze
	Nrnos41NGZNz0n3TRZMLq7JEvn3djd1rwFKhn/vhx1E4u3pfTaKgikm1k2QHGAFpONFg2QQh2tkrf
	LJque8CnV3KvMnHuTYrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs8EZ-0000ZT-Ap; Mon, 29 Jul 2019 16:10:47 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs8EJ-0000Yn-Kt
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 16:10:32 +0000
Received: by mail-lf1-x141.google.com with SMTP id s19so42466576lfb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 09:10:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=npRMv0SA0p7PANP5eaT2dvKRy5JgSkEUbJ98gB+GiNA=;
 b=kyxTI6kAj6pudtAvy2uPFUZdvC2mEvsH9RAuosmIvkEdE89FXzSgL3gTBEaqAgO9Ke
 txA7wcAGjbL+v+3OV4KCv9a5ZSnjvEL73vbaRGfZ4swVZ0m8XOx3Q/lz/hpsdu1y4Zom
 DEHmi/26n2aPc+fdyjlt+qAowiXJ4HD2dlPVzFqCJKYg7+T3HBSUrqTLkltaafB18aa7
 Id1eomu8LsbZ6Gn4p71PptmeIXAU29NXY0ZwrBXQ2/8vcTNlUupL7JpsOMLwj74sjAMk
 mbufnAXbQhbZHPjn7FjOHUvODjpyjK3KOfOR+OdrpEIFsrNcZYRvoqPvezfLYcg0Ex9W
 liEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=npRMv0SA0p7PANP5eaT2dvKRy5JgSkEUbJ98gB+GiNA=;
 b=FSsN4+rD8DlvxQa0ZBcfLmG60LR1gojRmUvGSHQxi+O+QiJxYMc3Pw60X8ixif6khE
 ZuDnxdqkoM7c1JHTJ/2631dSawRk0QMGhyiN9ANb0ULShtQjQXq6KwTlH/Ei3B0RNw4d
 1HczSJiBQAD0pZrA7svtBTPnSlbgsNCbXX89kVsIN9b8G4WTFX1qsbaik+fTNQQDtIkP
 IpxgNtd915oNoH8zw+4LOfngj4UU1VM/vZJI1+UhwCtfGwIZe6h6biOjo864qRYejg4j
 uGfCrSZOu/pd+VgH/EiCqAU47BQ28awRSSstEbnxCjySmti9vCcrcGaczQ9IRLZCOZ5T
 IrVw==
X-Gm-Message-State: APjAAAWpTRHBWeo76yhTrD7wGt+SiOvelv9/xusJLwSf1LxzuJOSF1RT
 CDfhn4Etuqn7hwN7rPZH3jG/M1oHaVg1YNWOo7s=
X-Google-Smtp-Source: APXvYqwdz1CgAj9YWJEywVjy5/+ZOXM2PAZBpcZzhiq77Jtw7OAINgOfRbirJI/QNRtMdrSjifGSh2pMRBRpwUejJb8=
X-Received: by 2002:a05:6512:21e:: with SMTP id
 a30mr32590426lfo.107.1564416630026; 
 Mon, 29 Jul 2019 09:10:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190729142316.21900-1-martin@kaiser.cx>
In-Reply-To: <20190729142316.21900-1-martin@kaiser.cx>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 29 Jul 2019 13:10:35 -0300
Message-ID: <CAOMZO5BDY5poV=bGGZZB8=xYTNw-Q7rTXRmqarpTLJMxngB4+g@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: imx25-pdk: native-mode is part of
 display-timings
To: Martin Kaiser <martin@kaiser.cx>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_091031_705339_95D1BC05 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-kernel <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 11:23 AM Martin Kaiser <martin@kaiser.cx> wrote:
>
> Move the native-mode property inside the display-timings node.
>
> According to
> Documentation/devicetree/bindings/display/panel/display-timing.txt.
> native-mode is a property of the display-timings node.
>
> If it's located outside of display-timings, the native-mode setting is
> ignored and the first display timing is used (which is a problem only if
> someone adds another display timing).
>
> Signed-off-by: Martin Kaiser <martin@kaiser.cx>

Reviewed-by: Fabio Estevam <festevam@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
