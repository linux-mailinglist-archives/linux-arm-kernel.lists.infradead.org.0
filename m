Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9E3043618
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 14:54:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4LL1/LxMyJRA27e3u+nOsPDDLa54ftHQfn9mmPDOpTM=; b=MOhvpbVa3RLoAV
	TlF/cjKbKIED9fR5qgKPHbh76s8oKwOKk86OqLYxgPCHAYGDs2vG90BMXNaTDihdcbOucombLgGFL
	dy6LO2/gbFV0/1XELeL5DXImGFi3T+bGb0WkvpXzufGpVACrggk9HW/n4VdqRlPu6kx6JfRtc7wgv
	i2urvOECafVRtoqRXS3DyhO1dnBd73BWrncUsccy0k33DXJJpj3ktArm1Vf7CMbHa9hCafOq6sNlw
	D51hh+ab/hHpoDi15KEHRr5rDVEZOcvKb4nnJs94aaBsV0wJtptb3TPdiHZEVYPdc3kA82c3FyUNn
	hNM8I5qI8SPvseg9KE+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbPFo-0005RP-Bu; Thu, 13 Jun 2019 12:54:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbPFa-0005Qv-CE
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 12:54:43 +0000
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
 [209.85.160.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EEB232177E
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 12:54:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560430482;
 bh=+dpcx+t3gqsrdkSAF32yzocQzxMx51ogbHZjaUxs06g=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=UC8yBn2wHn5Q7MOC0f1Y/gBNFscwOv67bdYXMtHV4JMJO3xgYA58rEUWsbazZQVwX
 VYpP9uAQ33ZZFVpKlTVRw0WPvfqYG4lStUureizyJTVqwMKIHfVxFH8pqdbYtBxtoT
 gKnW0cbyeN6v+RfYVSfhsVKFQpKqrRfOjJMXcCHs=
Received: by mail-qt1-f173.google.com with SMTP id p15so2981003qtl.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 05:54:41 -0700 (PDT)
X-Gm-Message-State: APjAAAU7O5DRDxLfFiSQpiKosN8YPLdZ5weHl7Kr4Kwmz8h18tzd8ZXG
 X0wD0Xuy4E/lFUav/Y66EnJgp1gko2V9VBpMxA==
X-Google-Smtp-Source: APXvYqzMa0Uyb0Z+rWRg4l/d54XGw039fVYUrrOI8A8Wr/WbXB3zrEmuYPzH+FK2dGun9qwWEQm+TE/ODK7+RcwR90Q=
X-Received: by 2002:aed:3fb0:: with SMTP id s45mr22297842qth.136.1560430481170; 
 Thu, 13 Jun 2019 05:54:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190613051344.1170-1-Anson.Huang@nxp.com>
 <20190613051344.1170-4-Anson.Huang@nxp.com>
In-Reply-To: <20190613051344.1170-4-Anson.Huang@nxp.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 13 Jun 2019 06:54:29 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKQgQ=+4xt41_2X3ddsO=rt4u--MJ28+p=is33c1=0DQg@mail.gmail.com>
Message-ID: <CAL_JsqKQgQ=+4xt41_2X3ddsO=rt4u--MJ28+p=is33c1=0DQg@mail.gmail.com>
Subject: Re: [PATCH V3 4/4] dt-bindings: arm: imx: Add the soc binding for
 i.MX8MQ
To: Anson Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_055442_435971_6963B19F 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Bai Ping <ping.bai@nxp.com>,
 Bhaskar Upadhaya <bhaskar.upadhaya@nxp.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 =?UTF-8?B?TWFyZWsgVmHFoXV0?= <marex@denx.de>,
 Andrey Smirnov <andrew.smirnov@gmail.com>,
 Pankaj Bansal <pankaj.bansal@nxp.com>, NXP Linux Team <Linux-imx@nxp.com>,
 devicetree@vger.kernel.org,
 =?UTF-8?B?TWljaGFsIFZva8OhxI0=?= <Michal.Vokac@ysoft.com>,
 Pramod Kumar <pramod.kumar_1@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Vabhav Sharma <vabhav.sharma@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Dong Aisheng <aisheng.dong@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Yang-Leo Li <leoyang.li@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 12, 2019 at 11:12 PM <Anson.Huang@nxp.com> wrote:
>
> From: Anson Huang <Anson.Huang@nxp.com>
>
> This patch adds the soc & board binding for i.MX8MQ.
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> New patch, as I just found i.MX8MQ SoC & board binding is missed, so add this patch
> based on i.MX8MN binding, so put it in same series to avoid dependency issue.
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
