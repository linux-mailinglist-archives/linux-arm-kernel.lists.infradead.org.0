Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36E2D47731
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 01:22:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QuM3n/Gm3wzbVaOuMbzGRChBzJlmpwYWyulXfGOh2no=; b=mo0AJLiSAHukT+
	jSlD7IrbD4T7EvFVAGK3rN6QihZP2nkIv/RmgkMXczMouz6A4oQpkfCig4lgAM6/m9LEH3m2cJhEz
	bFzhaR08r2O2u93Zzg7RO04Slwp5BL6sNwbpUzANfp7hyy4POpBirKT/SRd03mT/meUQSyxGm+vE1
	0BrLC9N1YG3v4y02rfdeBDbfuGyqcGVTg4ljvsK8f/QrjgUFJO1/HeNlef95bjgru5obz3qLyCtR0
	7oXZZD7ax35M0YHQF1wHIy7i9g5Pu8/Eg4iMitDjwVoI3YN8vGWQkkKN7FHIHtSsAshjmkO6xbKPZ
	WGzDMmVveXL0wHeFIghQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hceTC-0003H0-6x; Sun, 16 Jun 2019 23:21:54 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hceT0-0003Fy-Tp
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Jun 2019 23:21:44 +0000
Received: by mail-lj1-x243.google.com with SMTP id 131so7499126ljf.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Jun 2019 16:21:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hXpKt6gWW20yw9T+P1iuF5WONvvDKQOR+kKRgVpbTwg=;
 b=TU5pM3BB/GIQukfbzVMV9fH53Ktg/mugM3gnGasFWtYIF03pcT0Zbg+nKtx2JzXLwu
 77USxRwKw48qyqqdd/OOUXOHfi2MR+wKeFifow4ZErMvlo4RPyR527yRkUmvIjfCCD5M
 oGQwHv8725JoAJXaPBv93jkhiRRwVrPtF5RGI5nXkRC8Eit+BbYkVGqGWbaqWXnIM5vc
 Hn8ejuz4YN4E00Zp74Pe+iFWxjf9sMHqbaPQ2o62QUKv9aVVW96h+TbU9vKZuQJuzVmz
 uBvwG/P/iUnJ2sinKop202IL5bM9vSFsP3e3woKdsMz+LmPFoWv2oRPdJ0XHRh/Qg8li
 fiLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hXpKt6gWW20yw9T+P1iuF5WONvvDKQOR+kKRgVpbTwg=;
 b=qHrX2zrkfwT/bsXrRRRswL51Ttkxn+dlF4ef5uph28S6gz1uWYN2TN9JSQH0eXAnKV
 Eo6ONRJhYDvP9oiBd+6KMRrc6eXmVzvbL17Hm6boxO0DlQ7SK6FYwSdy0tQ7QUUUqDxg
 jlfual2PBjwbPyZ5xAQvsks9OTAGSmL0DMJSrJz4cambpAkV8OwbXXBobozluSk8a/h+
 DVdm3fnxWYn1/pwYtwNXcnOAVdzN9DgBJP1mdgk2woBg9rIzjNvVQQlwm3JapFbs1ovd
 RYB8w19p/g4OeB+NS7U4/t3ngWvYqGr7u9XBvsxTtq1ZBC2P4UfG+bUyjEHgO51MbcvB
 rjiQ==
X-Gm-Message-State: APjAAAUR2u05UlWk/pLwnsjmoMAgC3HTunETwCyv0WIMQy1F8WDMxcM7
 +qvtZ3V88r4goIJIGRJE7tlUjMCjlOn+ZLUGTv0=
X-Google-Smtp-Source: APXvYqxfTZNXDzQZaA2y9stVc88vFamxGkheySz+gCelCRvNO2IizDWgxf/+T92tJ6JdbZEni1wXZ4Ac/1HNyqmuJ0Q=
X-Received: by 2002:a2e:2c07:: with SMTP id s7mr17587606ljs.44.1560727299408; 
 Sun, 16 Jun 2019 16:21:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190614080317.16850-1-andrew.smirnov@gmail.com>
 <20190614080317.16850-2-andrew.smirnov@gmail.com>
In-Reply-To: <20190614080317.16850-2-andrew.smirnov@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Sun, 16 Jun 2019 20:21:48 -0300
Message-ID: <CAOMZO5DNAEGWqG6VTn0KAJ5J5kKy=YurQJZ0FCTDunUADJZ3Pg@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: arm: fsl: Add support for ZII i.MX7 RMU2
 board
To: Andrey Smirnov <andrew.smirnov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_162142_993317_F9B54CFC 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Rob Herring <robh@kernel.org>,
 Liang Pan <Liang.Pan@zii.aero>, linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Chris Healy <cphealy@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, Bob Langer <Bob.Langer@zii.aero>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrey,

On Fri, Jun 14, 2019 at 5:03 AM Andrey Smirnov <andrew.smirnov@gmail.com> wrote:

> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index 407138ebc0d0..8fb4dc1d55e7 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -158,6 +158,7 @@ properties:
>                - fsl,imx7d-sdb             # i.MX7 SabreSD Board
>                - tq,imx7d-mba7             # i.MX7D TQ MBa7 with TQMa7D SoM
>                - zii,imx7d-rpu2            # ZII RPU2 Board
> +              - zii,imx7d-rmu2            # ZII RMU2 Board

Nit: Please keep the entries in alphabetical order.

Other than that:

Reviewed-by: Fabio Estevam <festevam@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
