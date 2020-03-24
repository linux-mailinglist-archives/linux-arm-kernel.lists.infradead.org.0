Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 869061912A6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 15:18:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cyKdR70vbMgXSOMHjinZj6PxceWGPh9a/idBwO7WHwI=; b=QEPZVfgO7CLhzq
	gPIJEWhfiaUAdMzRMuD0aHbbqRdKgwV4UvSMsl1ToVJMvcYQa1xcwGQeB3Mid8vmiOkrIx1M1Zgz9
	dSMMBd/8sUvicI2yVh5ur2A3hCQzyFBnBezMcQVpNPtIhvbiZegIpi7An14fqCcEjWj5IPeGwKsrI
	XtQJmR7gLc1azU+WHrfW4TaDksVVZaeSIxU+Ym4/hF/Qc4wbRaRkj0fw+sX0CE7XAYU7f5T8Q/JXX
	bF3+hQwE8nAE7ydRoKZCKKhbxGUFEOP7nelu5c7eCJIqbet0Fg6Zw62nfuG2Dozswfh6PdpG+IFJH
	ZC96E639xqePDreXGJEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGkNa-0004qR-T4; Tue, 24 Mar 2020 14:18:06 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGkNQ-0004ov-9z; Tue, 24 Mar 2020 14:17:57 +0000
Received: by mail-ed1-x543.google.com with SMTP id z65so20894201ede.0;
 Tue, 24 Mar 2020 07:17:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xx2u6dAeKaaJIcCdGG7a+MHyPFXyawY2CxF2KYjyqZQ=;
 b=Pfi3U3Ir4fQy1Yx260wRphweTsnWzdkKnJG94vRjiuMBLX4MwnIELs2kjki8abS+e9
 P1mDGBUW8ebLtZWZy8wZ722Cr2ghTK3WhEoE/1L+6ZW8E4iaIcjjv8hcyuh1UtVt8BpM
 bHx2dhHaSFLlOQHEa3RBTyXULDsxsK4CLfJYbmiHSjj/1edLkjkOCpRFAUg2fh6ezT/F
 f+w7jTZPtdmPzj68h01NTo22/gSsbrYHAvWRzcOB+WqfJV0XuuRPJAob48hy0O4axb/t
 3Yk+1QbeLzM7cFUm589nmKPecsboesnHlC+mDNMCOeZKN5yRM+edDvUlY8Vi8H09c2Oo
 9HIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xx2u6dAeKaaJIcCdGG7a+MHyPFXyawY2CxF2KYjyqZQ=;
 b=rGai4ocuxmaDsF3kNO8KxiiOoT/3icokZajQwMIQGa630ap9TER45kNOj+0eueEbno
 CQcYRGOlj5O6zXMMHfe+y0Pol3A2WHJgbVXDfJO6ZTdo4RV0HgLAGyIanse5ZzdNL08y
 MaD4TsSvKlQzw/COsxqWPZVATrzPI3MIkWG6jH0o3SmT9tfnECRyFaN18ZR/3seigfB4
 rX+XyQgm+Cm6COJB4svyB6gQygP8urp4nm9KhTqtEO8NTAIUrJI3lpxiwN2VCrHbgBkx
 UhhQq8G07rdvzAmbHOsH9mrl1JuR4DvT+Y23Yjb/OJEJt59ubdAUmUeI6wuDB/gcQXHL
 K0MQ==
X-Gm-Message-State: ANhLgQ1pcJa8VRSTZ9GxP8+73VDIM1VgCSZqOgPzZ1pMmN9Yhd/DrnzK
 umB87Zmk0lzm57MfFBDs/PGNVXU0r9l3vKeJR6w=
X-Google-Smtp-Source: ADFU+vvZgU97KBWThgXsmPEOlxqBfDic4xAuO4yKuCu8eS8LLOFWGOi+tSJBGkNesAYEEyX2igkt8q2rwd+Rdcoco7c=
X-Received: by 2002:aa7:c910:: with SMTP id b16mr7482653edt.13.1585059474879; 
 Tue, 24 Mar 2020 07:17:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200324102030.31000-1-narmstrong@baylibre.com>
 <20200324102030.31000-4-narmstrong@baylibre.com>
In-Reply-To: <20200324102030.31000-4-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 24 Mar 2020 15:17:44 +0100
Message-ID: <CAFBinCA53iP3n849JacHjvSJCLxJEwikAspL-MUDJsZi7kWC5g@mail.gmail.com>
Subject: Re: [PATCH 03/13] usb: dwc3: meson-g12a: handle the phy and glue
 registers separately
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_071756_355802_7C79AAC5 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
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
Cc: balbi@kernel.org, khilman@baylibre.com, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, kishon@ti.com, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 24, 2020 at 11:20 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> On the Amlogic GXL/GXM SoCs, only the USB control registers are available,
> the PHY mode being handled in the PHY registers.
>
> Thus, handle the PHY mode registers in separate regmaps and prepare
> support for Amlogic GXL/GXM SoCs by moving the regmap setup in a callback
> set in the SoC match data.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
