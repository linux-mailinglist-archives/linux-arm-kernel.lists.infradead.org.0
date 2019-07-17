Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 505B16B83C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 10:32:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k0ziYTqHrM8K23JiAFVS6pmKzYVS5cZ+w/oBJzqpDDs=; b=XdwIsqfWTJuzVY
	4tUp/THHYW1fGDDfX/6xFMngwxYbE+46U8cWjxZdGfnEpYXvQIjvcw/NC3iHDMw4gjO+eyWGBnbmc
	tUd0U0979rfOzsONjg1XXGm7tiFiH7A0RjlAb5B9HGWbRkzMamm+L7Z/UEDDd1AquZ0jO3GUpKHiY
	JiCnIQ5diOJSAp3Pfcvef8s9NyHFuPrBOmPiqtUu3Zxn3Nc1c4+BW3jnHhlm2LfETZO7oxfIS+Hxn
	pMT4pXDiuHGLuTmJjhZs/FgRMUpewUgMWijjJgP/gSVvQ9ccZMkEW17VWW311MWOw5rcltrGGI/wB
	dzOH5rhNVSbGGgqSv0lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnfMu-00046E-Kd; Wed, 17 Jul 2019 08:32:56 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnfMg-00045h-FC
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 08:32:43 +0000
Received: by mail-qt1-x843.google.com with SMTP id n11so22478897qtl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 01:32:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BIWfltDL/abzPRU7Atfv0EyU5DO71798bud3Tmr4p3s=;
 b=psYcszn5hv4rltxz4/Ev/GOedai34OwOzdz2B16oAm2fPbvAd4pqpMNfd6ycItYlDZ
 r2TnrQlI7ErpopGT4EWmKk+9xw4g+LwXsYMlwuWFOoEYaXK+qyJhmViKSQ5vB2TfhPSi
 PRbt5XDbsN0lfUtkRcc+ZtHAD+MkOFQ8XmLFmE30vblOulPs8yf795idaUtbnoBtUgLP
 IZoUegvXA3U7p+dEMm/aWW44DSn3gucxvAMf04tY/p3hQI9f/WB6Eby/QLnmOU/6JUL1
 MCNk9yrDJ/3ohUuzKxuEOIzCk85YGFjD6IawHFqCUpPgvAeDApLHvj8jyV9wck8S78FO
 2vNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BIWfltDL/abzPRU7Atfv0EyU5DO71798bud3Tmr4p3s=;
 b=t9ux6wBBYUnzbCVrVH4m+dXUmRgIUKChi/IdHUhCm8F+U495V3u8GPbZq3oJ04CI8b
 J8muOQHodwZ3Lhshcu/t7PTmQWz7vI43f8oDWvT4OJqcr0SHF6o7RUGU7LRJ/wWkCP2T
 YCYiVA7vR8xekvP8J1s2XxmCA9QwAOE+/nskcNnnTALV6hYabAR8AD3t5IS7cdBrm9Sn
 4uwl67RShCl5Hc7ev9/cJhzzfCYTh0mpi7KRzYgVsY4VB+5sZbOVVUg2s8pSYTVLAHqh
 r4p5g2q0EjEKGyScZEMcLNyJx1U6m27LMD8/DUjU+r+l+m4cj1zj9E8Dm2DUiB68INrv
 JPMg==
X-Gm-Message-State: APjAAAXK/1Y/fbZ3/Q5fqbfUbS/1xh9Qfd4aaTRCio8qjLixgSwrAdTe
 6bi3thwev1Ln8z55Krg0kejs1rTLykWQNeIkKds=
X-Google-Smtp-Source: APXvYqyLOKgGcvgTk7FMl5uP0TvLi6bfagmkeXYPc9354Tf7KYVOG9PgTIN239rBDw2dawgE4lBgnVHyBW9lf9GbdYc=
X-Received: by 2002:ac8:384c:: with SMTP id r12mr26561900qtb.153.1563352361429; 
 Wed, 17 Jul 2019 01:32:41 -0700 (PDT)
MIME-Version: 1.0
References: <1563290089-11085-1-git-send-email-aisheng.dong@nxp.com>
 <1563290089-11085-8-git-send-email-aisheng.dong@nxp.com>
 <CAOMZO5BMxZVuwz0jJ410H9Ey4iWD67mCdQhhrtnQ182DbcgtBg@mail.gmail.com>
In-Reply-To: <CAOMZO5BMxZVuwz0jJ410H9Ey4iWD67mCdQhhrtnQ182DbcgtBg@mail.gmail.com>
From: Dong Aisheng <dongas86@gmail.com>
Date: Wed, 17 Jul 2019 16:23:46 +0800
Message-ID: <CAA+hA=T33LHpX8ak_eEPPEtSY2pUDQXoQpc=j3GKYOB68=GRyg@mail.gmail.com>
Subject: Re: [PATCH v2 07/15] arm64: dts: imx8: switch to two cell scu clock
 binding
To: Fabio Estevam <festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_013242_515004_6E9FD055 
X-CRM114-Status: UNSURE (   8.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dongas86[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (dongas86[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 17, 2019 at 3:29 AM Fabio Estevam <festevam@gmail.com> wrote:
>
> On Tue, Jul 16, 2019 at 12:37 PM Dong Aisheng <aisheng.dong@nxp.com> wrote:
> >
> > switch to two cell scu clock binding
>
> Please explain why you are doing this.

Because we want to eliminate the using of SW Clock IDs.
For more details, please refer to:
https://patchwork.kernel.org/cover/11046287/

Regards
Aisheng

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
