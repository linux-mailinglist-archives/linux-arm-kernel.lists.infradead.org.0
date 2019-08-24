Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8650F9BADF
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 04:23:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oRn3QzwTjq8JzGhbZqSZfH9e8Me6VthCwFdO66dpL+8=; b=U/57/LodFyq0RG
	Cl/eMhGJcjKLUitYSbzGpPKQQaRAMr5H/NcXsgkd/73oTqgOA1vEgmskqsuzvABLfPbEY8bx0RVNI
	A87xm/UjiztueMRIso0f8YfdEghCbOA88YJrMZWDh9kPbvwlN+SYAJV2hBFZ7hiWTkXj3rLyjfjfM
	IZTwGMcVoI3fTZu7j9idpIzdHtjYg87mx4WoUrA5S29BPvbRqwZgcSO2W4WkaScaislhYptuxye1W
	AHz957At0JSNb/1Um/OLpAy1fRllBgq6G5Z7ceBV6AOQuhhCPdXGMQBqhTW6HgUQwvx+yel8H62Zn
	pvtra7v0t6kluFUyQOyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Li9-0001SL-5O; Sat, 24 Aug 2019 02:23:25 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Lhl-0001Rf-7g
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 02:23:02 +0000
Received: by mail-io1-xd43.google.com with SMTP id x4so24354441iog.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 19:22:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NGSMDcjJGR/lxbJbfE5aNWOUlk38H0AtLy17bR4uyIE=;
 b=lVEqWFw60a4Z78tdeJFx8bcay1/2obbySui1sMdFVBfXHcgKpx3c7rSPBxka29TjRj
 kKdemlYYm1Lzn8YkZEVR3sFLamF69Ck4ne2HSR63Sm3wtF9QX7qi0FybeTyHDZWllcOt
 9olkCxKRKxC/WFDRrMStm0wffKbBnOsizhXt/7iaf1z7Xombt646BkIXK4waSGazKztD
 UNqTIUY7+mDTKgU/pgUKSSFZGCgshzDMYZMRjoGuexMsxVmpfx6L8YBqSo6G6kT1X7Kv
 ntUSabphSNwXSGVRGvlRt9s3rSk8vtwvw7/8HaUSQClH89NuR0jzkDtZhxfTW0ekNRY/
 Fs/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NGSMDcjJGR/lxbJbfE5aNWOUlk38H0AtLy17bR4uyIE=;
 b=GtiW/IC+nnjhJ5xp5AwJqk4TGZrZCICrdEVzPYWEsnwBGFF6lS+SctR/YByj6dWwGx
 cZkyHIct/msVpm4T5lq9nuJnw3nsulzozgSPcSNPQm6M1HbFPCSo/YoM/IFHtlLNVZtQ
 gp9AS1JKNjWFvGDam4wX7AodSstfgDEQLp/PsFCWd9tH8ZmK1BEZtHTYAXoZxgepWiA5
 DIZH6JoE3lT1aRpjUdbMchaIYTLsbn+6Ro67XfgJfmRv3eXwpMpJJa4BoZsJ/XUT8u9z
 P+eZBtn8QdlGRDJ3/n0paHMn3a+J+5rSWJc8zTz08T+XRzvN95YOD70TNBdDsl5PoKke
 xRJQ==
X-Gm-Message-State: APjAAAUOL9N1KO1Vn6reAxOGwdvsJVM0nzIP7R61kEIbkDnPk1F6ERmn
 xblyoF0vnbU4LyQeku8A7hHdY1NBgMzBBxp+/wU=
X-Google-Smtp-Source: APXvYqyQIS+kgykE1sTKO8zMu+2MUNM9kWz2yqg6PIfQIEfkX6L20qIXdmAnNPfbFL2O745HrdYDKv5zosTqwd5B/9U=
X-Received: by 2002:a5d:9714:: with SMTP id h20mr4704721iol.294.1566613378979; 
 Fri, 23 Aug 2019 19:22:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190824002703.13902-1-andrew.smirnov@gmail.com>
In-Reply-To: <20190824002703.13902-1-andrew.smirnov@gmail.com>
From: Chris Healy <cphealy@gmail.com>
Date: Fri, 23 Aug 2019 19:22:47 -0700
Message-ID: <CAFXsbZqxoR491hT2oqNcH3YbO+C0=EsFYc_Wu+UVQMw5zqH4cw@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: vf610-zii-scu4-aib: Configure IRQ line for GPIO
 expander
To: Andrey Smirnov <andrew.smirnov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_192301_279384_8196CBE2 
X-CRM114-Status: GOOD (  12.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cphealy[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Cory Tusar <cory.tusar@zii.aero>, Fabio Estevam <festevam@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 23, 2019 at 5:27 PM Andrey Smirnov <andrew.smirnov@gmail.com> wrote:
>
> Configure IRQ line for SX1503 GPIO expander. We already have
> appropriate pinmux entry and all that is missing is "interrupt-parent"
> and "interrupts" properties. Add them.
>
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Chris Healy <cphealy@gmail.com>
> Cc: Cory Tusar <cory.tusar@zii.aero>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> ---
>  arch/arm/boot/dts/vf610-zii-scu4-aib.dts | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/arch/arm/boot/dts/vf610-zii-scu4-aib.dts b/arch/arm/boot/dts/vf610-zii-scu4-aib.dts
> index e6c3621079e0..45a978defbdc 100644
> --- a/arch/arm/boot/dts/vf610-zii-scu4-aib.dts
> +++ b/arch/arm/boot/dts/vf610-zii-scu4-aib.dts
> @@ -570,6 +570,8 @@
>                 #gpio-cells = <2>;
>                 reg = <0x20>;
>                 gpio-controller;
> +               interrupt-parent = <&gpio1>;
> +               interrupts = <31 IRQ_TYPE_EDGE_FALLING>;
>         };
>
>         lm75@4e {
> --

Tested-by: Chris Healy <cphealy@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
