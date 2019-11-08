Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B0CAF5C0E
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 00:49:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3f7M55Ua3bgUavQhVmJdHQT5jv1td0sRQl7JxGEkJ2o=; b=Pb9NdG4DL3KnLe
	0ksPajdONVcn/OHkdrABuxIT3vTahrhfhVtgtWa/BycthQXcU0YXVOClVyYvsGbt9zUhxqfBzC5+g
	on1Nn9/g/4z/MN29OzqOYPyE2ZXc4TMF5bJmL/JJSQtfvvwsIi9FXRzxc5BrT87Swe+dZ1NeAQxo7
	4iolgtAVHtaUPYP33ncCc87IdFmv62Cnyh7Hk+P3Sp/kdJYIzUI+JF8aWi4yqmimJCd/UVB0ZsB75
	iOimLDaNCOnlUUTNdGnakKuCDhAMuMl/Nf5sndxMRnonS/LOB753cHKZar0FyB+yCJKq4AISMGXtv
	MIrQnEOOkP3axx2l0pyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTE01-0007dm-1b; Fri, 08 Nov 2019 23:49:05 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTDzt-0007d1-4y
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 23:48:58 +0000
Received: by mail-oi1-f195.google.com with SMTP id a14so6805712oid.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 15:48:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XMVjsfRFCMgyyIBo6SJuyhGa3vmCkYAAcBk1J2DsBuY=;
 b=HCIFi+2QMkA+Zp4aMbkYUahdsyAdljT+1o6cHu2Upw3BEkQdVQPqCWWU91fmobcRrH
 CREvQDinMXxIq04EMADAKRD3N3VFM0958vakt51ci7VzPaNscnWf/BzFw7kKROiTrhxG
 KZrWJJ20qmZR2jZHg3VwZJ/NEEUVS/cXXFMgjaoIvlzxsv8KP/jAVG7CnNMoPT8FS+OP
 LuxyRJbNguQ5Cvat1Chm5h+yA98J5lXY0gLG4/Gs/3bd68v+0FN9/SHkE0cyulUb3a3O
 fZ92m/SA2nvULP5CahQ1tXxzdoiWfS7svGZeHL59wexWZarkbZpLaJtqj6Cnw+jpNf1f
 uj+Q==
X-Gm-Message-State: APjAAAXEL7WSZ5j8NA4h8ZGcB3fIDAfL2cnVBUvgJfmqa1UMcANZCTY7
 tpdL9l6frfwyq0moD3/AjvCoXvXMENI=
X-Google-Smtp-Source: APXvYqzJ562Hfx7q1GRQ7zK+RGsCAt1R3k86GIVjgNFqFgTxfTAq2dc8dTZODeYBNWUfZyOG5Cj/ew==
X-Received: by 2002:aca:6c1:: with SMTP id 184mr11913514oig.84.1573256935637; 
 Fri, 08 Nov 2019 15:48:55 -0800 (PST)
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com.
 [209.85.210.50])
 by smtp.gmail.com with ESMTPSA id z20sm2391710otk.22.2019.11.08.15.48.54
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 08 Nov 2019 15:48:55 -0800 (PST)
Received: by mail-ot1-f50.google.com with SMTP id t4so6720567otr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 15:48:54 -0800 (PST)
X-Received: by 2002:a05:6830:17c2:: with SMTP id
 p2mr11400428ota.74.1573256934498; 
 Fri, 08 Nov 2019 15:48:54 -0800 (PST)
MIME-Version: 1.0
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
 <20191108130123.6839-48-linux@rasmusvillemoes.dk>
In-Reply-To: <20191108130123.6839-48-linux@rasmusvillemoes.dk>
From: Li Yang <leoyang.li@nxp.com>
Date: Fri, 8 Nov 2019 17:48:43 -0600
X-Gmail-Original-Message-ID: <CADRPPNQwnmPCh8nzQ5vBTLoieO-r2u0huh17mwcinhfhNgo04A@mail.gmail.com>
Message-ID: <CADRPPNQwnmPCh8nzQ5vBTLoieO-r2u0huh17mwcinhfhNgo04A@mail.gmail.com>
Subject: Re: [PATCH v4 47/47] soc: fsl: qe: remove PPC32 dependency from
 CONFIG_QUICC_ENGINE
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_154857_193358_E0DBDCDB 
X-CRM114-Status: GOOD (  17.18  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pku.leo[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 lkml <linux-kernel@vger.kernel.org>, Scott Wood <oss@buserror.net>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Qiang Zhao <qiang.zhao@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 8, 2019 at 7:05 AM Rasmus Villemoes
<linux@rasmusvillemoes.dk> wrote:
>
> There are also ARM and ARM64 based SOCs with a QUICC Engine, and the
> core QE code as well as net/wan/fsl_ucc_hdlc and tty/serial/ucc_uart
> has now been modified to not rely on ppcisms.
>
> So extend the architectures that can select QUICC_ENGINE, and add the
> rather modest requirements of OF && HAS_IOMEM.
>
> The core code as well as the ucc_uart driver has been tested on an
> LS1021A (arm), and it has also been tested that the QE code still
> works on an mpc8309 (ppc).
>
> Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
> ---
>  drivers/soc/fsl/qe/Kconfig | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/soc/fsl/qe/Kconfig b/drivers/soc/fsl/qe/Kconfig
> index cfa4b2939992..f1974f811572 100644
> --- a/drivers/soc/fsl/qe/Kconfig
> +++ b/drivers/soc/fsl/qe/Kconfig
> @@ -5,7 +5,8 @@
>
>  config QUICC_ENGINE
>         bool "QUICC Engine (QE) framework support"
> -       depends on FSL_SOC && PPC32
> +       depends on OF && HAS_IOMEM
> +       depends on PPC32 || ARM || ARM64 || COMPILE_TEST

Can you also add PPC64?  It is also used on some PPC64 platforms
(QorIQ T series).

>         select GENERIC_ALLOCATOR
>         select CRC32
>         help
> --
> 2.23.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
