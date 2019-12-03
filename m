Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00CBC10FE79
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 14:13:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HzjN/FCSo8k54Lcu97A3ljEECSjOQp6q6Gnqr+whZaE=; b=PDahH53+JuoAoL
	bHP8PVhfXRreeBPZZXRjVRMwW/43Rmg9j6hZEOnF9/az21R9Yk4iWffB6zjsP0Ilk+ZOiXgrDxTqt
	Jff9fTYMJVX10V9FhqTG4kEh9jbG5DsbY6SNgNkadFHY3EeK3GkDMEEPpp4CM0hlsj2Cs14LbN+tf
	uLv8cNrxuqPDiRiFMvN9K6Hwwagozk8FMTJk020DIQjH6+E9I++W4sejZuzGR2p9QQlrVd0N1/Nbt
	CyjsLzikC+qPOQkAlrE1Emw5TpoMYJIS/fIqkZ3NuL1UfaXhnC7LE/W+UDTSwaN7TP7ZSlo4MdZSk
	3SfTiRmaFNpQi+6Q0d2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic7zH-0002jx-Pf; Tue, 03 Dec 2019 13:13:07 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic7z8-0002j8-IB
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 13:13:01 +0000
Received: by mail-lf1-x12b.google.com with SMTP id r15so2933813lff.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Dec 2019 05:12:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xL+wwaRMBv9RSY39RaXiUDci1/m24RW4l6zvHxar+tc=;
 b=npXjDGoyg1aRDYuFip3UFWBcqi0KI7PGwXUdKKMaSdLZpbuXsmOVKspSp1dIxAxMK0
 +ytYzmmCzX1PU2SZhocTG4K4m/HLJqopdsCf9sk2eUzKOaN7ub6w5/2dVrGoEnbDUu7D
 yo89c1d7rrj6rgfHD5PwOD5w7lwR/sCyDn01KfwaO8wUyH2CAnB1P5V7ManXBcSr60FK
 /OvqlFAr/s561m5JLSabtK2+h4DwQAMoHV/8CAmunaUWbKtxs4u/mi9FrzQ+ClxVU5Y1
 ndsL0wmPosCTTmN/gk/vYwcowBklRHotxOzVcQa84/p5wDUAPTLPLJgCvBxq9DwYZomM
 4uNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xL+wwaRMBv9RSY39RaXiUDci1/m24RW4l6zvHxar+tc=;
 b=eXkdw3H6SPCAtaxqjCIfotbCRZyGPf77oYSa8CQpX2G+1ihUVkBll+WTru8qLjU3hU
 0AJBdfuxpxr8lCo8uyDcbObPqfyW+agbK4Nk//x6kv98tFQNb7n8GsAQJXAVjqQ7oB0d
 hBGyD/zeZuimip8evov9BNJDqbCU4BfyhdKBj1gopDymA4J1T6I8uC2/P7VY2PfWMqHQ
 Q3pS668U8KXx1MM/wplcAbq3pJgTXI4+Td/qyJU1fKLUd6eIoEaRhoLi61gsk81CaJf8
 ng8/IIqEq2Hwj+ED3zXq9qDK+8PLOcbUwPMfLW54xdwJJKKWFIOxB7CQVQ/hoC2CnrtB
 cskQ==
X-Gm-Message-State: APjAAAWvQks36s6MoQmrwYLMhUnHMGvhTTsv/PkXZYrlg4JO8Ih+fkM4
 bTTl8eUTT56Dy5R2cHRnF9H5QZLZxgOoUeqzDZs=
X-Google-Smtp-Source: APXvYqyYlRr2czlmWkaMRwNWwQhGg3p+za24wre1ZLqjna9dtb+Jb7nGBb3H9ISdXGBmfc2ddR6+wWglH31E2UJpZ9g=
X-Received: by 2002:ac2:4119:: with SMTP id b25mr2718591lfi.90.1575378776541; 
 Tue, 03 Dec 2019 05:12:56 -0800 (PST)
MIME-Version: 1.0
References: <08794fde-cdd0-287c-62bf-e2e3b8c80686@gmail.com>
 <20191203101509.wte47aad5k4mqu2y@pengutronix.de>
 <CAOMZO5Cn993y9VeFN6hPO3-cfNnUKiuFd_rqAZ8htz=dO6t6ig@mail.gmail.com>
In-Reply-To: <CAOMZO5Cn993y9VeFN6hPO3-cfNnUKiuFd_rqAZ8htz=dO6t6ig@mail.gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 3 Dec 2019 10:13:11 -0300
Message-ID: <CAOMZO5BniszDhWKkoWY=P62kv9cY160r9P=pjpbSOZasxJvdBA@mail.gmail.com>
Subject: Re: Issue with imx_get_temp()
To: Marco Felsch <m.felsch@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_051259_774632_31C2CBA6 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12b listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Amit Kucheria <amit.kucheria@verdurent.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-pm@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, Igor Plyatov <plyatov@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Zhang Rui <rui.zhang@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 3, 2019 at 9:04 AM Fabio Estevam <festevam@gmail.com> wrote:
>
> Hi Marco,
>
> On Tue, Dec 3, 2019 at 7:15 AM Marco Felsch <m.felsch@pengutronix.de> wrote:
>
> > Mh.. it seems that the irq gets enabled before a irq-handler is
> > registered. As your backlog shows the thermal_zone_device_register()
> > triggers a imx_get_temp() and during boot the irq_enabled is false and
> > it seems that your temperature is below the alarm_temp. So in such a
> > case the enable_irq() is executed. I don't know what happens if we
> > enable a irq without a irq-handler.
>
> I think your analysis makes sense.
>
> Should we move the ' data->irq_enabled = true' just prior to calling
> thermal_zone_device_register()?

Or maybe we could call thermal_zone_device_register() later?

Igor,

Does the following patch help?
http://code.bulix.org/l3rz2e-982595

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
