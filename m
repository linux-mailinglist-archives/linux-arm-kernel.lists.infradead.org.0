Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8DCC19FDD9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 21:06:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FWQ89CWvx655G6phkRVGlvUdQCtLhh8GHmfmxy4q2sw=; b=j1VJDAQE6wWh07
	0cQdJLroKKFWsTHYjLqJwQGYtzM71TxVGikP6/G04iXEB9jZ1sUgn2uJY0MG2ql2/AMe7HUHXjlJ5
	fEswxw4NF1zzvKu/lD2LCW4+LOppPsq/xfXW2Pt15Y5rKf/bkOqrT8OtwUBeuASaewU/+RGyehRTW
	b3YX7Daj1iIJxdstMEclgNePaNZvVyxoFJV1vEjcA2rPcs0GW3SAJTBVMq09pD0mkO2+50Uk6VUit
	yNUSKfKFeUcPaCtG2UHGpNC0ntWi7wT7F1WOZV+7xSxu3OXdVP+/Cs6jvKlhQ2CdlD5ou2xILuXbQ
	bwAZlQ6yIBj6Pb33tmUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLX4K-0006aW-DS; Mon, 06 Apr 2020 19:06:00 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLX4D-0006a7-I8
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 19:05:54 +0000
Received: by mail-vs1-xe43.google.com with SMTP id z125so544283vsb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 12:05:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=verdurent-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CQD+C9Kg+kaXZdnpmDMOsE8KjUIcSylxGT9eltj8hNc=;
 b=WhAwEyU65nt+MH7u4Sm52detAfx9AIKlU92gMP8ZZjnP/YTmwEGd/LbcN7xKL2hE51
 k33IGFnYJNF81bp0cgu0ieHEO2nG2fgKfkeph9q5+J1j823v87d70SIQf5G5cmin7U33
 fJ595tv9GlciDWOEG78lrS0WKo0atnz3Pf9p5SgHb24u7KJue2mUW3Rj8gaaTBMZfkZ3
 tO1eq65TrQU0gUuBsACWKiy/EeyYYoJBz5BX/ZJFmU7pZ5BpCrs00HvnPh5d3nk0XN7M
 QiMV9X/r+33J0rScDcEvCa6HdGp9/8CL/c9ItWBlLbfswn4+hM9psHLM0KescvXJSasR
 5izg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CQD+C9Kg+kaXZdnpmDMOsE8KjUIcSylxGT9eltj8hNc=;
 b=FGr7Qpieadf+++Buf92RWRTII099fdC+stZo3DhboGcl3B0pqSbG881pzi0LzEVgSj
 z13psnUfp14a6QDEtC50kCnXNC9VE2MeWeEBJ7YASNXBK62m9Aa8vOIjWt7zzA872Sj2
 LcpIu+I6ZsrDuvvRjnKBdGeVNLP7CzP7rrnxYxLv69D9WMy0UuWnuQXbqQb2P9Fm3ic3
 H9e/RsElPjs3dzbvK0untDcUmrNDro0Nr2BW7ABeSvhEcynxfdPYv/6oanattMaYs4dM
 jULtxPW2AVjABW5Q6TAiJHUJe6N/5tHT/1kcsAC5YXZWd+wVRKew2vi4aBCsGHmabn81
 U3ng==
X-Gm-Message-State: AGi0PuYfHX2BlRy0SyvGEg/4V/f31RbM2gDpBj9nna7J3LKkdZjJZZDz
 t8jUnowd3pMI2ltzkHl/9uNbxoLT/qO0eLuhf4GSsg==
X-Google-Smtp-Source: APiQypLdrhoD1+TZ4jdw1dsDSA7rmF0tkHvtxRtrwnEQz6g0MHUDl4HPqBpBqlQNHeEaYI9LDwzy6jJDIgV2779T/zM=
X-Received: by 2002:a05:6102:5c5:: with SMTP id v5mr1064068vsf.9.1586199952066; 
 Mon, 06 Apr 2020 12:05:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200331075356.19171-1-j-keerthy@ti.com>
 <20200331075356.19171-5-j-keerthy@ti.com>
In-Reply-To: <20200331075356.19171-5-j-keerthy@ti.com>
From: Amit Kucheria <amit.kucheria@verdurent.com>
Date: Tue, 7 Apr 2020 00:35:41 +0530
Message-ID: <CAHLCerOwqOmGRotiofs_xtB9XEa-YUwYWFgJGNMXQqifW+azAA@mail.gmail.com>
Subject: Re: [PATCH v5 4/4] arm64: dts: ti: am6: Add VTM node
To: Keerthy <j-keerthy@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_120553_598610_3300DBF5 
X-CRM114-Status: GOOD (  15.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Linux PM list <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, t-kristo@ti.com,
 Rob Herring <robh+dt@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 lakml <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 31, 2020 at 1:24 PM Keerthy <j-keerthy@ti.com> wrote:
>
> VTM stands for voltage and thermal management. Add the vtm node and
> the associated thermal zones on the SoC.
>
> Signed-off-by: Keerthy <j-keerthy@ti.com>
> ---
>  arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi
> index f4227e2743f2..54a133fa1bf2 100644
> --- a/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi
> @@ -89,4 +89,15 @@
>                 clocks = <&k3_clks 59 0>;
>                 clock-names = "gpio";
>         };
> +
> +       wkup_vtm0: thermal@42050000 {
> +               compatible = "ti,am654-vtm";
> +               reg = <0x42050000 0x25c>;
> +               power-domains = <&k3_pds 80 TI_SCI_PD_EXCLUSIVE>;
> +               #thermal-sensor-cells = <1>;
> +       };
> +

Make this patch 3

> +       thermal_zones: thermal-zones {
> +               #include "k3-am654-industrial-thermal.dtsi"
> +       };
>  };

Move this with what is currently patch 3.

> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
