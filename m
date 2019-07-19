Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7324C6E737
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 16:16:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VP15OFN79n6myWeXJvnEkZQIRhHp22bDq7DOrrDpz6Q=; b=b2FOWkRPdi5Brm
	XZu4u63RoplV+VLAOvQPLXN6QFeDzJrHmBcq3gNzYV3TpNyGuqxFj43WTdB181SM0A4TVCJSHZSpw
	4ibapMjmd+rcG3VF4DGAi/rbU0KQ/es1AhO9Afa0XAM5GO51w/zWeq/bdPVJH0Et7yqJluuFOjTa/
	F9Ho+awtRv7JIMdJirDkekKmkB2BogyjwAto3QQBy+vNpNvWAmEzgLUJxaPSPvUvREXcN+wIin8xr
	T6i+80qs8PlY1dfvpCT4PHEN7cJ5bNqA4aiduVeh42XVgznM91DAjZ5fso/0Jn4IAC2iTjxSE/ZX1
	sIliC0PlRw1Y+a/XWYYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoTg8-0003SW-UA; Fri, 19 Jul 2019 14:16:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoTft-0003SB-0N
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 14:15:54 +0000
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com
 [209.85.222.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9F16421882
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jul 2019 14:15:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563545752;
 bh=7voVgpdtafoQyqpHGpr3HIm+GXd3iZv/wz9SMFvW7ck=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Pm7Y7/tqvPhjBFQNYrTD2ZDZuBEpGhVOx+X8U3Yk6plwmTyAUYJlKqtkVvMClJh63
 I0wUD4utkn/rEMGiNBwZ9kDkw4dHjqV6hMrlhD1aJ1A7AMtOIN36FE6iEP3MHsHVfi
 bqP841/DOOpTUXePYnT8rzKcb3ZpOb+HZLr7Dx2M=
Received: by mail-qk1-f181.google.com with SMTP id m14so23256017qka.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jul 2019 07:15:52 -0700 (PDT)
X-Gm-Message-State: APjAAAXMLE/jtXv9YKQz/hpOnIXyV+OOWxkAYRh1JXKze2Zz4+pKHxOZ
 vVK0cninKHjwPAMZVUAZvojQP24ZcCkWrvDZ3A==
X-Google-Smtp-Source: APXvYqyCQmcUB1GHWepHZBo1tdMFeMAEMSgURcy+OnnXCy3g5sWq0ZnCiiLUjXA2/Nv8F6F0IBpMovoRupCvPyDbNys=
X-Received: by 2002:a37:a44a:: with SMTP id n71mr33826258qke.393.1563545751319; 
 Fri, 19 Jul 2019 07:15:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190719121430.9318-1-andradanciu1997@gmail.com>
 <20190719121430.9318-3-andradanciu1997@gmail.com>
In-Reply-To: <20190719121430.9318-3-andradanciu1997@gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 19 Jul 2019 08:15:39 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJ6vFdj2fru0_W=Mzkd=JHYB2=WFGtmeYosCc7jCQDDGg@mail.gmail.com>
Message-ID: <CAL_JsqJ6vFdj2fru0_W=Mzkd=JHYB2=WFGtmeYosCc7jCQDDGg@mail.gmail.com>
Subject: Re: [PATCH v5 2/2] dt-bindings: arm: fsl: Add the pico-pi-imx8m board
To: andradanciu1997 <andradanciu1997@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_071553_068771_4EFD3A68 
X-CRM114-Status: GOOD (  11.42  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Dong Aisheng <aisheng.dong@nxp.com>,
 Pramod Kumar <pramod.kumar_1@nxp.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, devicetree@vger.kernel.org,
 Andrey Smirnov <andrew.smirnov@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>,
 =?UTF-8?Q?Jonathan_Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>,
 Yang-Leo Li <leoyang.li@nxp.com>, richard.hu@technexion.com,
 Bhaskar Upadhaya <bhaskar.upadhaya@nxp.com>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Fabio Estevam <festevam@gmail.com>, Pankaj Bansal <pankaj.bansal@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 19, 2019 at 6:14 AM andradanciu1997
<andradanciu1997@gmail.com> wrote:
>
> From: Andra Danciu <andradanciu1997@gmail.com>
>
> Add an entry for TechNexion PICO-PI-IMX8M board based on i.MX8MQ SoC
> Datasheet can be found at:
> https://s3.us-east-2.amazonaws.com/technexion/datasheets/picopiimx8m.pdf
>
> Cc: Daniel Baluta <daniel.baluta@nxp.com>
> Signed-off-by: Andra Danciu <andradanciu1997@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
>  1 file changed, 1 insertion(+)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
