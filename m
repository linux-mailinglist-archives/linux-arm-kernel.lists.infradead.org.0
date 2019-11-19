Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2E50102BA7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 19:21:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SMf47aSdyqoduD9/5x5UVo0w82ajzMgxI07B9dOHuGc=; b=isN+N0ZjGAGEHA
	LNVkNDA4OMs++AC6RdkNO4sA47IjOuPhlkByn2eXDaDoFSfZouTlSF6ohwC5BiOcoAhoSRGS1SBDN
	5xXbVz2TT1eBrr2gIULSg9kZDrXstZw7Jdzg1U1jfTGUH9Zf+kQTVzMiaxO0QnLokgQUFWNnQn+f6
	g+tF14TZfJ5207NNf8xGBzGPSvswDwsUNedmQjFn+qBG4gDwHEsY5tTeic7xPy97oi9pZZRN/sc+R
	dFdMhuuL18NZOI8OkN4BH/AO/2CyuexAYS2gdW2v2pUDeVQoAOJ9+mRsla6xqsU9Bs+EjciLvDvJz
	lIbLAVBthgWIbXb/idpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX883-00038q-Rg; Tue, 19 Nov 2019 18:21:31 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX87t-00037x-0r; Tue, 19 Nov 2019 18:21:22 +0000
Received: by mail-lf1-x143.google.com with SMTP id 203so1996943lfa.12;
 Tue, 19 Nov 2019 10:21:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0dUXKYCswQ0fk3ChDtCHMcNLvLahQKNVxckNHbLK62U=;
 b=e5lESrFN8MyoYepnYPws1P7yf4C1dXiYfMOkmezNqIXAiZCpH6SxlKI9ix3SlSORNf
 /5JsXZyp1E+IjqGqwMhUYHulRiSh9QJkMf1GIFQllRE77579xVcB4EDXytX2AWhcMFvQ
 1ksK6LpTugAMceaAYTPHCvwtSWDKN7rqeIueDTbWQtIHR4HQydG5oXkfTtYGFdaIoyjU
 CylOl88XU0mV6aCUOh7u/8Q+Yga6rgxzX3jS4Uzen0MivFUrqkq6uYhpdWXn0ASFSQew
 25whUzIeI6GQW/U3sk+CCl9AnoSAUrolJLK0fI3TEVzTWkTXjIjQqrrTPxWQjG7LKd5E
 juzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0dUXKYCswQ0fk3ChDtCHMcNLvLahQKNVxckNHbLK62U=;
 b=JSpo3VWqeYkz7svFdm46uuab9e5mUUGN5dvH5OoIb7CVaWtN7j5iD21QibyTD/7/w1
 r8zolMChgeF6bPWCdTa4BnEl8b9coV/EmIvP6ov0d3YwkzMk2InHdJDVKDapH1vb+k6g
 AJgg0LvKHN4OA0cI43iUM0A1PvfntIQEgiIzQsmS30veHmcwkI0vNr63e6qJ1cfDY0rn
 igdk7ehPVGwJLxxg1GYRsUUIurzFTuqVKon5ghZDgerenLROXGw51TsBAUZuJEDNpkI1
 y1Yi9/xrPQOPd1+dWBKpTKE30U002fYX069WJGj9uyRQ8uFOjJ3N3XoQKDME8AATqw1h
 IA0g==
X-Gm-Message-State: APjAAAUgGmdALLXCUrBESQB9dkQTQ+PH/0ceoqAUMGTDLVPTtKaPxBjD
 dEOOk3ZOywdMZ3zZSK7FzPWKGeI/fHkUpdTnLl8=
X-Google-Smtp-Source: APXvYqzVzn1n+QdLBDwkgCKvCRCAJA5gUf/1Cpb09fd0k1gg5uwHXZcpoFJbgiH7FOKqOuf17TVa1Ixb5NlB5WAK620=
X-Received: by 2002:a19:4318:: with SMTP id q24mr5172404lfa.12.1574187679050; 
 Tue, 19 Nov 2019 10:21:19 -0800 (PST)
MIME-Version: 1.0
References: <20191118152518.3374263-1-adrian.ratiu@collabora.com>
 <20191118152518.3374263-4-adrian.ratiu@collabora.com>
In-Reply-To: <20191118152518.3374263-4-adrian.ratiu@collabora.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 19 Nov 2019 15:21:14 -0300
Message-ID: <CAOMZO5C5gpW6KF9d-79wd=-7ZGAbXQLAXw3kLi+_5DBW_DYrTw@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] drm: imx: Add i.MX 6 MIPI DSI host driver
To: Adrian Ratiu <adrian.ratiu@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_102121_086996_387E2CCA 
X-CRM114-Status: UNSURE (   5.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Martyn Welch <martyn.welch@collabora.com>,
 Sjoerd Simons <sjoerd.simons@collabora.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 linux-rockchip@lists.infradead.org, NXP Linux Team <linux-imx@nxp.com>,
 kernel@collabora.com, linux-stm32@st-md-mailman.stormreply.com,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Emil Velikov <emil.velikov@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Adrian,

On Mon, Nov 18, 2019 at 12:25 PM Adrian Ratiu
<adrian.ratiu@collabora.com> wrote:

Some nitpicks:

> +
> +config DRM_IMX_MIPI_DSI
> +       tristate "Freescale i.MX DRM MIPI DSI"

This text seems too generic as there are i.MX SoCs that use different
MIPI DSI IP.

Maybe "Freescale i.MX6 DRM MIPI DSI" instead?

> +module_platform_driver(imx_mipi_dsi_driver);
> +
> +MODULE_DESCRIPTION("i.MX MIPI DSI host controller driver");

i.MX6 MIPI DSI, please.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
