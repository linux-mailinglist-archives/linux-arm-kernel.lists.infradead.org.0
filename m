Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17B0EEEC8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 04:32:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SMUubG1dMKJh631XF6OM9feN3rN+76Uo0a2U2xXh4D0=; b=W/xv2NeGtKjms1
	gnnMNUGI1mh7QfcMTMXytwsO/8e7CNc7FwZo5Oph3NG13nK44m+jguw7k+uP5gxY6rBToE7c3okEQ
	nwA6+Y57iijYT/R0R0reZtKaIO6XyMK65v+dY/pjgbBJifKfAbzNWIwyzhQhPNv/Sb2FAQ/8yO+o9
	uvwtrN5fNv4x9lyBmtmKlq2bAvk7Ag6h2DKfdvmct0VYm+elwChN8ksiR+rxu3QJrU8NFIMj1BhVY
	1VZKUdrBEWt+BPx5s0e0lD6Cgv5k0c+2MwIAuwaSsGLrFqK1e1agau6yWXWHC+4omm6Qt92LrhPbE
	2tRE+vypNAtczONPMW+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLIYv-0000Yv-8R; Tue, 30 Apr 2019 02:32:05 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLIYo-0000YR-MG
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 02:31:59 +0000
Received: by mail-lj1-x22d.google.com with SMTP id c6so4760969lji.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 19:31:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lB0h3HGhN1ZDkjZ8KszyAvTraMTociyF6MERrjOu7vY=;
 b=GAmkfkzicjQVnguE58CopmOupxvnO0TCr8Vu0U0UbDuMG5LKz1G1dc5p8I9zah7Z2/
 5derGFrPMo7jI5F819ViI3Oblel6oTrspH5tQWBF53is/5lZOX0AQ8FvKoZrKvCm5egr
 TzN2UOyUjmbMHNv+1j6ArJThGP09oeKU4NVicG+UQMrCa2w88cVbdnnCP1CdkpbGLFBc
 /v/eBnIKlrtubqbZ3JQ1h8E4H0/cQ59yC9ZOM0b4jMnwioPF7smBw/LBn/n66rOBq0t2
 Al+1neDzGYJ9gYeb4wfawWIyZE52UDE8+cYcBB2XBnauTOwKJbQi6bLM98gbjMDCo1Yl
 B/jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lB0h3HGhN1ZDkjZ8KszyAvTraMTociyF6MERrjOu7vY=;
 b=gYJN/OCGvq+kVt2XjQFcpVKa66beMckWkGILBnx643M2meRE9WPLRIDM88ZeqkaLSq
 p0Y8Ti/fjFAssztajFE3Rm354S6aQZPg7aQcSb70Fasvpu5+Aj0AjACH7HeN0oi4/OCi
 UhfR9ePvxp+Bn4I5VDKXCHDc/o3e4BraHXSP6zI2vCyqYumzw8a9rEJdvzuBRHq7+8uJ
 GhwK10B4l/YE3PqrqFBFC0nIyAgEruYjUPg6ZesE17kn1hckl2eh+oLP43DEjFharEDG
 NZgsJs9UHQoW8gBYMfiaO1WVOJOSqzih8n28yimN8qMdJBGzLd7BfN21S5tdZ6JfqVD9
 M4CQ==
X-Gm-Message-State: APjAAAUYPg0glGXzOfCmD5gL1ZsiujRAfBMsUmCRsiW3qWLLiq3nVDVS
 d06VD2gxK2CBnD6u2p5Mr4OqYUfIJPaSWeaDqGA=
X-Google-Smtp-Source: APXvYqx7ID8DtL2Tsmq9PNcBdR8czDOFxj2GGzr5oRy9zvkwwx08KdvCqZCZL0HRrMOL5nAHo78+TTeMAQBMAlI69ZY=
X-Received: by 2002:a2e:9812:: with SMTP id a18mr7128173ljj.146.1556591514939; 
 Mon, 29 Apr 2019 19:31:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190422082836.3734-1-shawnguo@kernel.org>
 <20190422082836.3734-6-shawnguo@kernel.org>
 <20190429162910.l27ewbfvvestb474@localhost> <20190430022636.GA25377@dragon>
In-Reply-To: <20190430022636.GA25377@dragon>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 29 Apr 2019 23:31:45 -0300
Message-ID: <CAOMZO5D7Pv5+ewyuGMBH5TBpFhsgRH3qd+j25_vZZV7z9EmFmA@mail.gmail.com>
Subject: Re: [GIT PULL 6/6] i.MX defconfig update for 5.2
To: Shawn Guo <shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_193158_752249_6705A9FC 
X-CRM114-Status: UNSURE (   8.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:22d listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Abel Vesa <abel.vesa@nxp.com>, Stefan Agner <stefan@agner.ch>,
 Li Yang <leoyang.li@nxp.com>, arm-soc <arm@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Olof Johansson <olof@lixom.net>, Leonard Crestez <leonard.crestez@nxp.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 29, 2019 at 11:27 PM Shawn Guo <shawnguo@kernel.org> wrote:

> Okay, let's check them one by one.
>
> - CONFIG_SPI_IMX=y
>
>   @Fabio, do you have a critical use case for this to be 'y'?  Or can we
>   change this to 'm'?

Yes, we can change it to be a module.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
