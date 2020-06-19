Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A930201D4F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 23:49:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G8W//u6hu+V+vv++Z23SxucLjzKYq0Lh/FkjaL1nHJQ=; b=YHi32STzF3jwgf
	La3Qjo8kTm/y8/CxfUHAfIZkPUYcDodg3wjtxFoPGa+P1fzvSnn6nHD3Q7JUFrBIcpJR/OQbMgrtv
	pj11Am2fp5Lc2T7T8YQ7lEJWCN02NJ86Dt8awWZlQmgeNkBfrHnGe23O/tr+1hEQe4+ZVbrDVLBlQ
	Bjq37Z3NtNDI8zL3pMisCA/+dkycABpcgSSom0TVHQIkVJNR+8XXZQ2h6W5Uuah1Iu8Yz4Vio7bys
	rCMyjSIW0aUk8eLP8Y1RAxOiN/qtmH1H08PPXueDCdPM687sPA8TyTA4cd0AfBgAmlQlJhdpJQrI1
	tSODUyay0yWQZcyatOLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmOt4-0003Tl-Af; Fri, 19 Jun 2020 21:49:26 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmOsv-0003TU-U5
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 21:49:19 +0000
Received: by mail-lf1-x144.google.com with SMTP id o4so6395115lfi.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 14:49:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rUldccX6Mfa9EMv3MM8tGDpY7SpqEJv/NYMh4QXIOk8=;
 b=U71qK9qRs9YwthJ53aVntPqRMlPaNywRknMLo8EtTj+B/Ee8ILj6wUezKcV9BFPL7O
 Ffc4rwSFPnUEsf86ajqakOlcQcfEolAxCenI4j+1IIf4Wrkn+X7Vfslw8FNpRf0EIDgT
 VZEjelw78lota5yVve8A+IdhtQ4TMNG5LxRkJfGLbMeKNyXHSr3YlndziPZlyC3PQ9Pk
 8colLodWvKLm1R5ZF9Jbgjfdfwhx+bU+BM8uS2NIq/SZls+FSmSilWjs3Muc2vM5F/65
 rUvlsvGhf3Zq10MseIOekggz3+gpNwTMV1FIoLnLhSvect/iyJksxGrU5SewrUPuGesC
 PHig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rUldccX6Mfa9EMv3MM8tGDpY7SpqEJv/NYMh4QXIOk8=;
 b=kgsXaCzuAsQTMenu5g4d6sdxuaU1KWR5NjSslN6S2M7cFHPEBc0bWuccRGu8OVQJcZ
 /ajHxNUy0xWzLXIPLxd/ZuifrMDZsspISYTkRvrxKMrrRgQ6z2MeX9SF5DOzpITWRYes
 bQj7tfoKMCemxxqDTJKmzbRrTdjfs1L6BdsouohzoWMGTLCl7h970ZnRfqKGz4QrPj6f
 uR2qmMHeYOUSAMGRJTktjXJGmxf8c9vez1b6GaxCGh/i15N5SqE0Rp86efy9M+Znu2C/
 LegLWbHz+krjrlY3SkjGhoexdsNN+jJI3gs2Vyrcc8RAzEXGojdPTfPX8FbLJ334tJeY
 JLKA==
X-Gm-Message-State: AOAM532Jhg6kMu3hTlbMMnia/Burj5bGjqxKTtPEI9E/zVTaFu0dS5V8
 zXTJbahCU0aeFIUKq5JBFWlDgOGXONFC35ZAzQQ=
X-Google-Smtp-Source: ABdhPJw+Jc8EiJtExsyj4224wBwNJN1umFBvQuNWb1X2EsFDH23OpL2io4VgdLKMMa+UZpyq54LsilgUzSo+ZKU7rZQ=
X-Received: by 2002:a19:d06:: with SMTP id 6mr2993995lfn.214.1592603356058;
 Fri, 19 Jun 2020 14:49:16 -0700 (PDT)
MIME-Version: 1.0
References: <20200619213347.27826-1-horia.geanta@nxp.com>
 <20200619213347.27826-5-horia.geanta@nxp.com>
 <CAOMZO5AZLUxXhX-Maop8iQc0Qan5YqH2QFXaDpYq0hL+BP-L+w@mail.gmail.com>
In-Reply-To: <CAOMZO5AZLUxXhX-Maop8iQc0Qan5YqH2QFXaDpYq0hL+BP-L+w@mail.gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 19 Jun 2020 18:49:04 -0300
Message-ID: <CAOMZO5BMS2RgRm2t7qDZnhiFBWE3pPZmHW7-kn-0KOq5NVYKfg@mail.gmail.com>
Subject: Re: [PATCH 4/4] hwrng: imx-rngc: enable driver for i.MX6
To: =?UTF-8?Q?Horia_Geant=C4=83?= <horia.geanta@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_144917_970388_8ED2CCD4 
X-CRM114-Status: UNSURE (   8.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 <devicetree@vger.kernel.org>, Martin Kaiser <martin@kaiser.cx>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Iuliana Prodan <iuliana.prodan@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Franck Lenormand <franck.lenormand@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Matt Mackall <mpm@selenic.com>, Silvano Di Ninno <silvano.dininno@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 19, 2020 at 6:46 PM Fabio Estevam <festevam@gmail.com> wrote:

> If in the future more SoCs will use this IP, then we will need to keep
> extending this list over and over again.
>
> Maybe you could use:
>
> depends on MACH_IMX || COMPILE_TEST

MACH_MXC is what I meant ;-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
