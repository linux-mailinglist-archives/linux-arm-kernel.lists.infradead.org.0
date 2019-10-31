Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C265EB5D5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 18:09:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ojy5rz9uTumE839eCMG2Q2Rhw4UGgRRUXqoNpwaomQ4=; b=SJl1yWp7e+Pbdk
	tN9tT77ujpsrp4KN+MiDmWd5PoGThs3gpp7e4Ga33qKjrAsd5sFE6OWBtC7Zj4zQLUkq0AfvDJ0Ip
	EMfiAjsrA62fc0uM/4LuROsCEiAJ7Uxw027eID2157Lfa2cqbRabaDnE5PUsvILHrIhm/mbXhilzM
	5Jbo4jkIebuODsMdhZoFPl6sJRpfgTdvoH4QLJ4PnUMX9B6/UgqvFfsB7X2hPAh0BLX15jteXoWIq
	SAPpsxXPLyE/BTtmEloc3p255MuazM8HPm9DQjPwvitKmTh+6hjBCGEpNslgsaspXkmtKZOjRaaMA
	o4JK/CShG4mU2MJHyjBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQDxB-00048Y-W5; Thu, 31 Oct 2019 17:09:46 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQDx1-00046y-41; Thu, 31 Oct 2019 17:09:36 +0000
Received: by mail-vs1-xe43.google.com with SMTP id j85so4551983vsd.11;
 Thu, 31 Oct 2019 10:09:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BbJu3UVGxb/D3O3Jaajy2yYceop1LdG6jIZpC2UGdME=;
 b=sILgo0ExuXrqJv9wUbE2Tumq0ELe9CBQDKkU77dnmj/RuVa26/zmecu0GpbeZGTHBM
 ePVf1uFkrSYmYYbtLs705cqb8LfV8HUlHunhiFQbAbOik3oQEtW7EJPpasqgTvjQ2TM0
 LIrREjmrFrRvjpBgBmRubuP6d0oRUxDI8Hc32Y4qIlmCaBj2B/JSC+PHwtXGcKgLiWus
 DEKo5bKI89SVAivdVDnQ+wCLFKmAm9oWYDSxKRXcB3/y3uZeqC/7CvcgrGjxfvkSWxoG
 TG6wKMt7wZHp7DAHNEHqrk4ygoaC3HxA8z/wUcmHdZrBvMtS821UR9VsV2r3le3tgedY
 vrJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BbJu3UVGxb/D3O3Jaajy2yYceop1LdG6jIZpC2UGdME=;
 b=X3F6ZYULWnhfUZhsmHYRf3McuoGeSiqSuXnN6wfvWBE3JvGky23q9MN/c6ISVdr/fa
 ZanOZQgd4IRA9ICVgPwUmkHNLU4pIEI8dsRajmIreV/hnawg1FyA7KNO5kxQFK1TY85p
 xjJJ02VRx9JwhPgahysBwYkMMGa2cJs5l/gtdh8+jxNMb8exR0sDceWf5MrkGjzH3Dhh
 JvkdT3vE8fk4T2tBeDOMqpPnArV6ADb++ah/NXhS/v8wZDneO8Vfh7rxwn3uQWsDmpcv
 F8tffpY9QB2WXHUNeRU//N/rVnacoE8rs6hB+Szzq+vNP29wrzbhCO9BPRRxRGYCbZOx
 rXFA==
X-Gm-Message-State: APjAAAWMhfGIOUYteCnBCnEXGwWz5XuAWNvkaV/4ahi5lP2Sf0VRtbTK
 qYmMQ5l+I1B8rdjjP4Z1m0KvuC/Tm6NiwFVXYl36Ykku
X-Google-Smtp-Source: APXvYqyLkkWgJ7ICTVfMGBOcq4S2OAn5nYpk6VJZW0O94lgZM/BCKp35+LK16Ms8/t5Z7RoL2Vj7T2VyJxX2Oc575EY=
X-Received: by 2002:a67:77d4:: with SMTP id s203mr3435400vsc.118.1572541771757; 
 Thu, 31 Oct 2019 10:09:31 -0700 (PDT)
MIME-Version: 1.0
References: <20191031142633.12460-1-adrian.ratiu@collabora.com>
In-Reply-To: <20191031142633.12460-1-adrian.ratiu@collabora.com>
From: Emil Velikov <emil.l.velikov@gmail.com>
Date: Thu, 31 Oct 2019 17:07:36 +0000
Message-ID: <CACvgo50NmofJrCvADOTxJqJqKEWDsy8qD-1B6R356vFMcmdbWA@mail.gmail.com>
Subject: Re: [PATCH 0/4] Genericize DW MIPI DSI bridge and add i.MX 6 driver
To: Adrian Ratiu <adrian.ratiu@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_100935_182307_EF1A19AA 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (emil.l.velikov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "Linux-Kernel@Vger. Kernel. Org" <linux-kernel@vger.kernel.org>,
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 linux-rockchip <linux-rockchip@lists.infradead.org>, kernel@collabora.com,
 linux-stm32@st-md-mailman.stormreply.com,
 LAKML <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Adrian,

On Thu, 31 Oct 2019 at 14:26, Adrian Ratiu <adrian.ratiu@collabora.com> wrote:
>
> Having a generic Synopsis DesignWare MIPI-DSI host controller bridge
> driver is a very good idea, however the current implementation has
> hardcoded quite a lot of the register layouts used by the two supported
> SoC vendors, STM and Rockchip, which use IP cores v1.30 and v1.31.
>
> This makes it hard to support other SoC vendors like the FSL/NXP i.MX 6
> which use older v1.01 cores or future versions because, based on history,
> layout changes should also be expected in new DSI versions / SoCs.
>
> This patch series converts the bridge and platform drivers to access
> registers via generic regmap APIs and allows each platform driver to
> configure its register layout via struct reg_fields, then adds support
> for the host controller found on i.MX 6.
>
Have you considered keeping the difference internal to the dw-mipi-dsi driver?
Say having the iMX6 module "request" the v1.01 regmap from the bridge
driver, while rockchip/others doing the equivalent.

>  .../bindings/display/imx/mipi-dsi.txt         |  56 ++
>  drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 518 +++++++++---------
>  drivers/gpu/drm/imx/Kconfig                   |   7 +
>  drivers/gpu/drm/imx/Makefile                  |   1 +
>  drivers/gpu/drm/imx/dw_mipi_dsi-imx.c         | 502 +++++++++++++++++
>  .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   | 154 +++++-
>  drivers/gpu/drm/stm/dw_mipi_dsi-stm.c         | 160 +++++-
>  include/drm/bridge/dw_mipi_dsi.h              |  60 +-
>  8 files changed, 1185 insertions(+), 273 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/display/imx/mipi-dsi.txt
>  create mode 100644 drivers/gpu/drm/imx/dw_mipi_dsi-imx.c
>

This should make the delta a lot smaller, avoiding the unnecessary
copy of register fields and regmap.
Plus plugging future users will be dead trivial.

-Emil

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
