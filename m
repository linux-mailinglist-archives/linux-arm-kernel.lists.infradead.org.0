Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 194103BED4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 23:42:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NxOZ3hzfVBn7oIv6Cg0I90aqe6d8SjYSa6tBBW90Bzc=; b=hX2I/N7tot/+vp
	vqsWV8MAr/FYULRg8+a+G0GUgkVIbSoeikUxtFxbaK3m0KiE7dXUo9ZwEt6TTkaaLQscxq2ozQaOq
	orJceDODziW9IobcFhybLcKdixeQ0IiqTmkGz7km+sd7j+d6IGc8MXsjCn0PqLmNjTNIoF7rcLLKD
	I4kcR3Rc74h8Y1F4aIb/JaviPbCK8/MBT2cFQyYouW26p9jLEUJ1xaun9V7NWWhNL64STfRX+f9J7
	upMmMhooGHnj1+1SJPN5+xX5weeL6l2jVaGfDne3Va3b58JiCG33Nb0rHAuuR+CDVaKnHhLwak5KO
	jB+Vj8BVehOe4AY/UM7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haS3y-0004Rf-IM; Mon, 10 Jun 2019 21:42:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haS3j-0004R5-Q0
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 21:42:32 +0000
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
 [209.85.222.174])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 59E23212F5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 21:42:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560202951;
 bh=F+4V9SOVQ4v75Ak6utykZfRgzCBn/IT6mnI8WtAlVhY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ILfeiq9bDt9sa/mNU2tx1noF7fSXMAMayhPvei97KNxQJGUq9GwKX/Sli4Wwv/ptf
 Yb9IRFovTLfDL9cJk8YxSpo/p/WdAI2UX2fCiSh6o5Z5wrg7O/VBzKagLyChPhO9Q5
 p7nsIE90E4lr3+5/Lp2jm+L+Z9IE2FEd6+ARjJPI=
Received: by mail-qk1-f174.google.com with SMTP id d15so6379925qkl.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 14:42:31 -0700 (PDT)
X-Gm-Message-State: APjAAAXfmlNU3StvQl6/MJdbI0Z0Riw55oVJl3K1HYyG8tm+qzvLHVPi
 woZzFc5u81tBp5CyXTPbWxd0ejWnrHUWnQSrMA==
X-Google-Smtp-Source: APXvYqxCG6PLxtYipbTcy/F82w3PywXJMfmgHZG+LKSYUxD5Wl+vqLF/bPa9yqVS6XKUs9krDfuWVpe0odr5pfiYhMM=
X-Received: by 2002:a05:620a:13d1:: with SMTP id
 g17mr2403350qkl.121.1560202950612; 
 Mon, 10 Jun 2019 14:42:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190603012747.38921-1-Anson.Huang@nxp.com>
In-Reply-To: <20190603012747.38921-1-Anson.Huang@nxp.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 10 Jun 2019 15:42:19 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+HsrQkJpL1hja=NxyQ6qC8tZBDxc9yxKSfSSBo_SrX5w@mail.gmail.com>
Message-ID: <CAL_Jsq+HsrQkJpL1hja=NxyQ6qC8tZBDxc9yxKSfSSBo_SrX5w@mail.gmail.com>
Subject: Re: [PATCH V2 1/3] dt-bindings: arm: imx: Add the soc binding for
 i.MX8MN
To: Anson Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_144231_863382_D3CF64BD 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 devicetree@vger.kernel.org, Pramod Kumar <pramod.kumar_1@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Vabhav Sharma <vabhav.sharma@nxp.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Dong Aisheng <aisheng.dong@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Yang-Leo Li <leoyang.li@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jun 2, 2019 at 7:26 PM <Anson.Huang@nxp.com> wrote:
>
> From: Anson Huang <Anson.Huang@nxp.com>
>
> This patch adds the soc & board binding for i.MX8MN.
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> No changes.
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
