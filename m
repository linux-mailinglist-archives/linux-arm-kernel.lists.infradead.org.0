Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5843F41863
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 00:49:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UkM16Nueu7n32rDufVN5X9YnIUZZKvGfmTM4eu5QQF0=; b=SQBWktxvuc97xD
	CUj8Qnh9K7VoP8xl9Odr66S4KNtewd1BV5A6x40AYS2HtZe8rCyPxftZu5rKMmojwwihd1C3YsPWh
	aVm2lRUtnfj2AaVMG5NwW8gD/G7CuojBsNuKJKJnZQIAsR8w8fv9N+P8QbdpYxDyOy9wEuRkhtxK7
	d4Zc8WIvwxB2RIeEzvEZleSlOqnM4uHTX5KYqaTaZBFwRJCrLLT4WI728M3K7oPou2ggc6hDzOj8C
	JxBUshNLoFhDGYRe3Pm59ppfMLLQQnc6Nyuk6CNUJKKjGJS3zhvRDxUjXonu314KpjDUCU/C5FDLx
	drjaKmqSsB2tYjJ7sDEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hapaQ-0008Pp-CD; Tue, 11 Jun 2019 22:49:50 +0000
Received: from mail-it1-f194.google.com ([209.85.166.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hapaF-0008PR-Ga
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 22:49:41 +0000
Received: by mail-it1-f194.google.com with SMTP id j204so7519988ite.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 15:49:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=HkF898wZHCzno2ojSJAmMX3GvOSzIz/fM8o6cCEwLdI=;
 b=K3DWtrD5kRd06HfooqKvFnhmXO1h2k2vxFS+ABNUSXTlzCBoxwAHuoA+wpyCyMvLTR
 rW2TBiOO25bxKIodzY9XdfWGcsNR7/2pzhq6MJys3VQHLmxOSySsrsokGbEWSA/gFdl0
 kWBZtz05cMwD1zXJZbt7OLva5GE4cxqBvIA97WjTU+U0YY5dBhaacNiLXZ/X4F3Rrvad
 /NEBd89aAp0xzNAqb89IHDjhPiDwWHL+4pEnlWQjDV5SZR2XO7HA5G2fmu+iK9hYqKfl
 X42cIaDhE17hksCbfNgB46tyN892Hlcg6cfU8P1DgAMQlEKsixPCY034czVZrNuWWoh3
 k/Ng==
X-Gm-Message-State: APjAAAVU8xbgerEb1Cg5OSnjerfLBUxGZdEktCZCgihNp8NgGg0uwsjh
 YAKbWFBp7ouwgGwV+yIErQ==
X-Google-Smtp-Source: APXvYqyTb9wqkl6RDKvaXUUZpQ/RweIaT0vnNcURHeZ0x1GwjwZVJDARDy8ByqA9bPKBIVmR8U7GuA==
X-Received: by 2002:a02:7087:: with SMTP id f129mr42451004jac.38.1560293378434; 
 Tue, 11 Jun 2019 15:49:38 -0700 (PDT)
Received: from localhost (ip-174-149-252-64.englco.spcsdns.net.
 [174.149.252.64])
 by smtp.gmail.com with ESMTPSA id r69sm1877671itc.11.2019.06.11.15.49.35
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 15:49:37 -0700 (PDT)
Date: Tue, 11 Jun 2019 16:49:33 -0600
From: Rob Herring <robh@kernel.org>
To: Peter Robinson <pbrobinson@gmail.com>
Subject: Re: [PATCH 1/3] arm: imx6sx: udoo: Use the correct style for SPDX
 License Identifier
Message-ID: <20190611224933.GA8624@bogus>
References: <20190601070718.26971-1-pbrobinson@gmail.com>
 <20190601070718.26971-2-pbrobinson@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190601070718.26971-2-pbrobinson@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_154939_552242_7BDD65CE 
X-CRM114-Status: GOOD (  21.35  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.194 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jun 01, 2019 at 08:07:16AM +0100, Peter Robinson wrote:
> Use the SPDX License Identifier for GPL-2.0+ OR X11
> =

> Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
> ---
>  arch/arm/boot/dts/imx6sx-udoo-neo-basic.dts   | 39 +------------------
>  .../arm/boot/dts/imx6sx-udoo-neo-extended.dts | 39 +------------------
>  arch/arm/boot/dts/imx6sx-udoo-neo-full.dts    | 39 +------------------
>  arch/arm/boot/dts/imx6sx-udoo-neo.dtsi        | 39 +------------------
>  4 files changed, 4 insertions(+), 152 deletions(-)
> =

> diff --git a/arch/arm/boot/dts/imx6sx-udoo-neo-basic.dts b/arch/arm/boot/=
dts/imx6sx-udoo-neo-basic.dts
> index db0feb9b9f5d..b6fbceaf6889 100644
> --- a/arch/arm/boot/dts/imx6sx-udoo-neo-basic.dts
> +++ b/arch/arm/boot/dts/imx6sx-udoo-neo-basic.dts
> @@ -1,43 +1,6 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR X11)

This should actually be MIT, not X11. If you look at X11 SPDX =

definition, it is for a specifc X Consortium copyright and adds a no =

advertising clause on top of MIT.

>  /*
>   * Copyright (c) 2016 Andreas F=E4rber
> - *
> - * This file is dual-licensed: you can use it either under the terms
> - * of the GPL or the X11 license, at your option. Note that this dual
> - * licensing only applies to this file, and not this project as a
> - * whole.
> - *
> - *  a) This library is free software; you can redistribute it and/or
> - *     modify it under the terms of the GNU General Public License as
> - *     published by the Free Software Foundation; either version 2 of the
> - *     License, or (at your option) any later version.
> - *
> - *     This library is distributed in the hope that it will be useful,
> - *     but WITHOUT ANY WARRANTY; without even the implied warranty of
> - *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - *     GNU General Public License for more details.
> - *
> - * Or, alternatively,
> - *
> - *  b) Permission is hereby granted, free of charge, to any person
> - *     obtaining a copy of this software and associated documentation
> - *     files (the "Software"), to deal in the Software without
> - *     restriction, including without limitation the rights to use,
> - *     copy, modify, merge, publish, distribute, sublicense, and/or
> - *     sell copies of the Software, and to permit persons to whom the
> - *     Software is furnished to do so, subject to the following
> - *     conditions:
> - *
> - *     The above copyright notice and this permission notice shall be
> - *     included in all copies or substantial portions of the Software.
> - *
> - *     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
> - *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
> - *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
> - *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
> - *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
> - *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
> - *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
> - *     OTHER DEALINGS IN THE SOFTWARE.
>   */
>  =

>  /dts-v1/;
> diff --git a/arch/arm/boot/dts/imx6sx-udoo-neo-extended.dts b/arch/arm/bo=
ot/dts/imx6sx-udoo-neo-extended.dts
> index 5c7a2bb9141c..c6005cd284be 100644
> --- a/arch/arm/boot/dts/imx6sx-udoo-neo-extended.dts
> +++ b/arch/arm/boot/dts/imx6sx-udoo-neo-extended.dts
> @@ -1,43 +1,6 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR X11)
>  /*
>   * Copyright (c) 2016 Andreas F=E4rber
> - *
> - * This file is dual-licensed: you can use it either under the terms
> - * of the GPL or the X11 license, at your option. Note that this dual
> - * licensing only applies to this file, and not this project as a
> - * whole.
> - *
> - *  a) This library is free software; you can redistribute it and/or
> - *     modify it under the terms of the GNU General Public License as
> - *     published by the Free Software Foundation; either version 2 of the
> - *     License, or (at your option) any later version.
> - *
> - *     This library is distributed in the hope that it will be useful,
> - *     but WITHOUT ANY WARRANTY; without even the implied warranty of
> - *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - *     GNU General Public License for more details.
> - *
> - * Or, alternatively,
> - *
> - *  b) Permission is hereby granted, free of charge, to any person
> - *     obtaining a copy of this software and associated documentation
> - *     files (the "Software"), to deal in the Software without
> - *     restriction, including without limitation the rights to use,
> - *     copy, modify, merge, publish, distribute, sublicense, and/or
> - *     sell copies of the Software, and to permit persons to whom the
> - *     Software is furnished to do so, subject to the following
> - *     conditions:
> - *
> - *     The above copyright notice and this permission notice shall be
> - *     included in all copies or substantial portions of the Software.
> - *
> - *     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
> - *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
> - *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
> - *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
> - *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
> - *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
> - *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
> - *     OTHER DEALINGS IN THE SOFTWARE.
>   */
>  =

>  /dts-v1/;
> diff --git a/arch/arm/boot/dts/imx6sx-udoo-neo-full.dts b/arch/arm/boot/d=
ts/imx6sx-udoo-neo-full.dts
> index 13dfe2afaba5..ad8b8a663a70 100644
> --- a/arch/arm/boot/dts/imx6sx-udoo-neo-full.dts
> +++ b/arch/arm/boot/dts/imx6sx-udoo-neo-full.dts
> @@ -1,43 +1,6 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR X11)
>  /*
>   * Copyright (c) 2016 Andreas F=E4rber
> - *
> - * This file is dual-licensed: you can use it either under the terms
> - * of the GPL or the X11 license, at your option. Note that this dual
> - * licensing only applies to this file, and not this project as a
> - * whole.
> - *
> - *  a) This library is free software; you can redistribute it and/or
> - *     modify it under the terms of the GNU General Public License as
> - *     published by the Free Software Foundation; either version 2 of the
> - *     License, or (at your option) any later version.
> - *
> - *     This library is distributed in the hope that it will be useful,
> - *     but WITHOUT ANY WARRANTY; without even the implied warranty of
> - *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - *     GNU General Public License for more details.
> - *
> - * Or, alternatively,
> - *
> - *  b) Permission is hereby granted, free of charge, to any person
> - *     obtaining a copy of this software and associated documentation
> - *     files (the "Software"), to deal in the Software without
> - *     restriction, including without limitation the rights to use,
> - *     copy, modify, merge, publish, distribute, sublicense, and/or
> - *     sell copies of the Software, and to permit persons to whom the
> - *     Software is furnished to do so, subject to the following
> - *     conditions:
> - *
> - *     The above copyright notice and this permission notice shall be
> - *     included in all copies or substantial portions of the Software.
> - *
> - *     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
> - *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
> - *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
> - *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
> - *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
> - *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
> - *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
> - *     OTHER DEALINGS IN THE SOFTWARE.
>   */
>  =

>  /dts-v1/;
> diff --git a/arch/arm/boot/dts/imx6sx-udoo-neo.dtsi b/arch/arm/boot/dts/i=
mx6sx-udoo-neo.dtsi
> index 53b3eac94f0d..386707c1bfe0 100644
> --- a/arch/arm/boot/dts/imx6sx-udoo-neo.dtsi
> +++ b/arch/arm/boot/dts/imx6sx-udoo-neo.dtsi
> @@ -1,43 +1,6 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR X11)
>  /*
>   * Copyright (c) 2016 Andreas F=E4rber
> - *
> - * This file is dual-licensed: you can use it either under the terms
> - * of the GPL or the X11 license, at your option. Note that this dual
> - * licensing only applies to this file, and not this project as a
> - * whole.
> - *
> - *  a) This library is free software; you can redistribute it and/or
> - *     modify it under the terms of the GNU General Public License as
> - *     published by the Free Software Foundation; either version 2 of the
> - *     License, or (at your option) any later version.
> - *
> - *     This library is distributed in the hope that it will be useful,
> - *     but WITHOUT ANY WARRANTY; without even the implied warranty of
> - *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - *     GNU General Public License for more details.
> - *
> - * Or, alternatively,
> - *
> - *  b) Permission is hereby granted, free of charge, to any person
> - *     obtaining a copy of this software and associated documentation
> - *     files (the "Software"), to deal in the Software without
> - *     restriction, including without limitation the rights to use,
> - *     copy, modify, merge, publish, distribute, sublicense, and/or
> - *     sell copies of the Software, and to permit persons to whom the
> - *     Software is furnished to do so, subject to the following
> - *     conditions:
> - *
> - *     The above copyright notice and this permission notice shall be
> - *     included in all copies or substantial portions of the Software.
> - *
> - *     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
> - *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
> - *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
> - *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
> - *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
> - *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
> - *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
> - *     OTHER DEALINGS IN THE SOFTWARE.
>   */
>  =

>  #include "imx6sx.dtsi"
> -- =

> 2.21.0
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
