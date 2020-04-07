Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E4CD1A086A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 09:35:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZhDSu6wSUmu0sm54gsPaE9padHGNYXdvjOhkEtE1vXc=; b=ZfuG/sCls80915
	+MBCuN77ovA7hNTmMPNtViE+ok/j5rzZbhhTomwWUJGSBn3Zzcrvixce9beIIT+RZZFjm4cZZ1Jef
	42GYVOP09F4yH+KWVnJDhWP4f/71h8h/QpaVkiYhHkduXHYdJfNzJ/CAgdo46/a06diLfmyQXnnXG
	WS3EZ1eRwMVdvS5RfQU1F3IHO/JeSk2NMVqXgKRFu/NPNheWmj3MkpPXpblAZIMwUTxiHoeP76aD1
	bCy6Nn0EqD+gNIIwVdAxQL6YZaTxNCxmSiJEfaFozUNRcG8GqQ+njiaLXrquB/AmAUKB21PYL8uXd
	oqxdpADWY92gNrhp/2LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLill-0000w1-IZ; Tue, 07 Apr 2020 07:35:37 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLile-0000vD-Ra
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 07:35:32 +0000
Received: by mail-ot1-x341.google.com with SMTP id a49so2079647otc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Apr 2020 00:35:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Fid1QYCY0NO/I6cTp/weYurLiEg0cFhCN05hyqNgj/o=;
 b=XJrU1YiGYXObCCyXMEpQZnKbbwe1ZMgGBITvdVL8yqcS5c4ABjNgv1qZ5t/y9cw1F8
 MsAAVIWLcQQ8q6DRSVEp6ovppqqwycPJ9VisN7GDYbtZfqjNpNOWgfnac39+vNq+GqHr
 DULGIjG0ANLz3tIsKU4xd3dR0PrSm/4vbFXWQN6POY1r40YiFRZSprxg0UweJmKdQaps
 TS21+MlgxJ9bz9czec7CBhYaH+YRzenE/DJ+JRbXLYVnFS9LPdxhQAtfN+nDIGbZ9+no
 dva2d+fT/l2uXBMFoA2YBFZoc3FnekN5iwPVOMlUVjsZlYPTg+9bGkMGhSeGq6HTV/yL
 eAGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Fid1QYCY0NO/I6cTp/weYurLiEg0cFhCN05hyqNgj/o=;
 b=BaCr1fu2yOgIui94lfpL516ulmHt6lVs0QJu2X/PJFZg5czZLroqipbPUreSTjeVoO
 Fuvik1MIWfxgO+dsXFfvTXshsTdA13XwXs4Pm5eF2Ch6g8BISFuFZ8/k9znV7HSuB4DV
 GxznKghKj++p+/NaCZQG6YY+Sq/L9FWELMQzhbIlDXjSC/cB2FvzHZhIj+3TydSSTInW
 ciCFrDVcC/gkZA6I4PzJ4il1PDeL6wU0kT2JosLx8ZwPM8Q/onGe/kQit/0uM/9rWE0j
 W2Vw/uee/noWnMf8N5Ro5voHDZnZN+FjpmdIXnbn8dZ9rWGiPU/iUetQQA5E83qB/LgP
 G9TQ==
X-Gm-Message-State: AGi0PuY5AEKmQ4l/dLpLNnQEXsYamklACQVA5ADB9o08TbeHnrxbzpMv
 LqX7YQRlPvOcqT85ZjatmYQPblObvNrWwgv5dsk=
X-Google-Smtp-Source: APiQypLI0T3PwqTnxtxkqJnxwE8QGxknf0jO+EhxS8l79ny0FYLhK6MNtO3r7HSPV1qbh6C45cOjMeY+tdBR+PB/R0k=
X-Received: by 2002:a9d:ef6:: with SMTP id 109mr474840otj.43.1586244928446;
 Tue, 07 Apr 2020 00:35:28 -0700 (PDT)
MIME-Version: 1.0
References: <1586191361-16598-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1586191361-16598-2-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200406173002.GC16885@pendragon.ideasonboard.com>
In-Reply-To: <20200406173002.GC16885@pendragon.ideasonboard.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Tue, 7 Apr 2020 08:35:02 +0100
Message-ID: <CA+V-a8sROBQpYvaP8TJ9fGYqOXT+uFsKhjnVBh0hZ2qS7yLQiQ@mail.gmail.com>
Subject: Re: [PATCH v5 1/5] media: dt-bindings: media: i2c: Deprecate usage of
 the clock-frequency property
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_003530_921968_D3217DB2 
X-CRM114-Status: GOOD (  19.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.csengg[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 LKML <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 LAK <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Laurent,

Thank you for the review.

On Mon, Apr 6, 2020 at 6:30 PM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Prabhakar,
>
> Thank you for the patch.
>
> On Mon, Apr 06, 2020 at 05:42:37PM +0100, Lad Prabhakar wrote:
> > OV5645 sensor supports input clock frequency ranging from 6MHz to 27MHz
> > but the driver strictly expects this to be 24MHz (with tolerance of 1%)
> > with this restrictions let the driver enforce the clock frequency
>
> Maybe s/with/With/ ?
>
OK will fix it next version.

Cheers,
--Prabhakar

> > internally to 24MHz rather then being passed as dt-property.
> >
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>
> > ---
> >  Documentation/devicetree/bindings/media/i2c/ov5645.txt | 2 --
> >  1 file changed, 2 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/media/i2c/ov5645.txt b/Documentation/devicetree/bindings/media/i2c/ov5645.txt
> > index 72ad992f77be..a55bb728ea48 100644
> > --- a/Documentation/devicetree/bindings/media/i2c/ov5645.txt
> > +++ b/Documentation/devicetree/bindings/media/i2c/ov5645.txt
> > @@ -8,7 +8,6 @@ Required Properties:
> >  - compatible: Value should be "ovti,ov5645".
> >  - clocks: Reference to the xclk clock.
> >  - clock-names: Should be "xclk".
> > -- clock-frequency: Frequency of the xclk clock.
> >  - enable-gpios: Chip enable GPIO. Polarity is GPIO_ACTIVE_HIGH. This corresponds
> >    to the hardware pin PWDNB which is physically active low.
> >  - reset-gpios: Chip reset GPIO. Polarity is GPIO_ACTIVE_LOW. This corresponds to
> > @@ -37,7 +36,6 @@ Example:
> >
> >                       clocks = <&clks 200>;
> >                       clock-names = "xclk";
> > -                     clock-frequency = <24000000>;
> >
> >                       vdddo-supply = <&camera_dovdd_1v8>;
> >                       vdda-supply = <&camera_avdd_2v8>;
>
> --
> Regards,
>
> Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
