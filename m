Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F91B834F1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 17:17:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/kw1Ljl4J0eeFAXR9ZQZdSzGbcvPloFc1pweRYI9DXQ=; b=p7dXhAdy8pYYrr
	9O+dKasq18aRZuMYE5dR27TKwta5wH+tWwDSxVrz13TcveLuwNYLeyHRHeQBxTnissvEf3igR3QeV
	Boe93wS5OXKxystpX90jlZEnxaEH0XsCU2HzUGUFGo++3o00dsJMaSiQa5CTC3xZv44LfJxtkR7qd
	qc8m9ojIat8WRWL95PB1LXhrT2GkLnQK2JlxeqAJHFjvv/NVgn+YQcf5aELLzpmVYPXTL6QMYG8oE
	J4rWN9uJJYNYkR06YmXWIVHoDEQecpCKwNPevxq6RE6VYCskAMJQUkph8CxsQPDh8mt0hCuP+KOFp
	piAHD34CWPYAisJDfFVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv1DV-0004wC-8b; Tue, 06 Aug 2019 15:17:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv1DK-0004vZ-O4
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 15:17:27 +0000
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
 [209.85.160.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 38011217D9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  6 Aug 2019 15:17:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565104646;
 bh=O7r2gpXOQ691eUhvxcBqHTnRWEAVRBQE6uOaSmCJ0ww=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=DVpBDt/iIMWNnmfMM2MMuyLg8KHBWkuWqY6H1EDOAIT+muOaaKSpY7Coip7A4eryn
 JbAiq1xgwOfNG6t2Ji2TMZL3VBxOScQm35wiicM1OE0jtGuxuX/tDTYvFXLskaTZ0e
 Kn0SplLQdqqPdxhiKWt37A3g0aeWDlyfwgf/Nmoo=
Received: by mail-qt1-f180.google.com with SMTP id h18so84915780qtm.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 08:17:26 -0700 (PDT)
X-Gm-Message-State: APjAAAWsgib8iFE4jtS5GS38pUOkM55adnSfX1RBag1gUFibTKxJACO0
 wTQQaQHTnkWMRjWPuUxUU5DbkUwmQNy0UCr8jA==
X-Google-Smtp-Source: APXvYqwPuPPmaziv0aqb78eSBuyoFJxdBkH4XjABe+CabJ603+wBi76G4no+REuxzJFDMefmj38zKOLnaukDigblww0=
X-Received: by 2002:a0c:b627:: with SMTP id f39mr3597235qve.72.1565104645367; 
 Tue, 06 Aug 2019 08:17:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190806135437.7451-1-linus.walleij@linaro.org>
In-Reply-To: <20190806135437.7451-1-linus.walleij@linaro.org>
From: Rob Herring <robh@kernel.org>
Date: Tue, 6 Aug 2019 09:17:14 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKhQwqtU_bdTymEM_b035f2rcPgYRWP7L-_G2F=DO1VWQ@mail.gmail.com>
Message-ID: <CAL_JsqKhQwqtU_bdTymEM_b035f2rcPgYRWP7L-_G2F=DO1VWQ@mail.gmail.com>
Subject: Re: [PATCH 2/4 v3] drm/panel: simple: Add TI nspire panel bindings
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_081726_800431_FFBF20B5 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Maxime Ripard <maxime.ripard@bootlin.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 dri-devel <dri-devel@lists.freedesktop.org>, Sean Paul <sean@poorly.run>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 6, 2019 at 7:55 AM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> Add bindings for the TI NSPIRE simple display panels.
>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> ChanegLog v2->v3:
> - Switch to GPL-2.0-only OR BSD-2-Clause license
> - Use a simple enum for the compatible
> - Use the new nifty panel-common.yaml, tested on
>   linux-next
> ChangeLog v1->v2:
> - New patch as bindings are required
> - Let's use YAML
> ---
>  .../bindings/display/panel/ti,nspire.yaml     | 36 +++++++++++++++++++
>  1 file changed, 36 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/ti,nspire.yaml

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
