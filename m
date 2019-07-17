Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A6AE6B85D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 10:37:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5LJKuUIQLPAOsF5LMQuKSzcQsEldhe0Xq67ak65Zj0g=; b=ko51nTMgKurQBu
	sFRYB4WQfgUfUrca/okpIEUUzIdIJ0LoHvNUYTemOm1v9ykFsSvsrNNWH975AfXkvS3cXz4djzn3V
	lpN+61V27JcENkw8PuTRp+m8zoJyZi3EZboE0RC1Nj1wBrQrO+Qx+4MeAWtiTilLDH/gWYyPMdxw8
	hb/wGKTocKnGC4WZl0DoDQ/CUZNdbsHLphroTFOiXVu45eU19GUZ4ml6OJYtP4MNreS9bZG/9gINK
	YSGHMEZmkCrk5nYsClr5JZEZT45wVFE/L7eVWlkZeSHhHFYILihnumdlu5leqNFYmVT+kOxhhMYRw
	mY62Ohg66jHwZWipwJlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnfRd-0008Rr-1W; Wed, 17 Jul 2019 08:37:49 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnfRO-0008R4-1O
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 08:37:35 +0000
Received: by mail-qt1-x844.google.com with SMTP id n11so22489367qtl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 01:37:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jFHVY++CWkwFboy+OGl7LS09ZrvgUC0vsq/EPA7fk5g=;
 b=NGomhEn8h7i0Fu8iT4PoPmKLmHMV09tnb/17a4UCa0dDumKBXWzy1sWlPHchDF0QlM
 DSjlMgBLSW+qLwKwWMjXgVcMhqyK1R+YZOehBDLA7/qpNmfGAIiBOqAz7jdErpQUJ7iH
 StHnO3Ayc/SLL8CmXfNI8sHjAUq7tgBHhQXgFf/2/5rsK6AXzkxEOrJUxKRdl8+VjZww
 AjQnJuQY6Yg+oC2NKGPWtssFJfL6htBZ8+PA0EEwSD95Lx9oUdLaRfxL16Etu10E8Dst
 3UlT/SC2qvL37bMxyM+iO7ufegplfSh3M2DaEthMxLZq0dKdqLototY/999RmuXhHWDg
 eW6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jFHVY++CWkwFboy+OGl7LS09ZrvgUC0vsq/EPA7fk5g=;
 b=Jve0DHY6R1trcDHB5FCemlZ9fvZqTOG0RQ5K5DAz1PteyejR7kZ1xTaUe+3erqdnuo
 GruLcmUaF7m8IF9bnYb0pRsxLweLa/Ce11HZlQY8wgBiFxOZubAV9TjIOA0T+/97URsI
 SBQm4Tyg0AeQPtBieA8q+4DrZ/uptbz0+NS4DNNYlRlNb7cAb+uBTgaab0VrPpN7AYjv
 G6ltHxHbW/OzjIaMATUCxepXeU9dpliMBBiZbPXNlROvGV4QOSn5wQuzcxg4HMBghSVS
 WAfKm7dnAe/jKSGzf1P5cCWIBeFycMS5D3RVom0PYyYqhboda4N88Gjnhjt9JgUT1LZF
 HcPg==
X-Gm-Message-State: APjAAAXz36ztgz2VpMyo53jnC1JQ1b+RyrQzrUk0obF0WMUkWsJfCtuG
 N9HgL8NWEcwFMiZB/xPKIaqpPKWwrhcgUQU551c=
X-Google-Smtp-Source: APXvYqylETEVZyJ5bZs0M/73MZ0v+WfKFP9/iMi1z7+GuZ6FQevCbKcHOeFaECNy3yzLSyj2R9IRW3HnCG4fEUAaPtg=
X-Received: by 2002:ac8:5042:: with SMTP id h2mr24681589qtm.96.1563352653233; 
 Wed, 17 Jul 2019 01:37:33 -0700 (PDT)
MIME-Version: 1.0
References: <1563290089-11085-1-git-send-email-aisheng.dong@nxp.com>
 <1563290089-11085-14-git-send-email-aisheng.dong@nxp.com>
 <CAOMZO5Cc6XLjFFEVd59Pru7t72jvW=OCikyXK7W6E8rWRVO3jA@mail.gmail.com>
In-Reply-To: <CAOMZO5Cc6XLjFFEVd59Pru7t72jvW=OCikyXK7W6E8rWRVO3jA@mail.gmail.com>
From: Dong Aisheng <dongas86@gmail.com>
Date: Wed, 17 Jul 2019 16:28:37 +0800
Message-ID: <CAA+hA=R5H3ArKEPGjeWRV+EpaBJ2xZRVdpRj5KFMkgRrOg_y5A@mail.gmail.com>
Subject: Re: [PATCH v2 13/15] arm64: dts: imx: add imx8qm common dts file
To: Fabio Estevam <festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_013734_106961_6F98D003 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
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
 Fabio Estevam <fabio.estevam@nxp.com>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 17, 2019 at 3:33 AM Fabio Estevam <festevam@gmail.com> wrote:
>
> On Tue, Jul 16, 2019 at 12:37 PM Dong Aisheng <aisheng.dong@nxp.com> wrote:
>
> > --- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> > @@ -144,7 +144,7 @@
> >                 };
> >
> >                 clk: clock-controller {
> > -                       compatible = "fsl,imx8qxp-clk";
> > +                       compatible = "fsl,imx8qxp-clk", "fsl,scu-clk";
>
> This looks like unrelated to adding imx8qm support.

Sorry, it's a mistake. Will remove in next version.
I will first wait to see if any more comments on the rest part.

Regards
Aisheng

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
