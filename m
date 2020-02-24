Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1108016B28D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 22:33:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hQ1qDxs9zi1WO5AopIfNbGFKnVtMUmi5zW+rh5WvLmY=; b=ZXWzOo81PcSO1R
	h91n2FZNt1zuuPgfDiBFdw9nVzPGEHOydfjejhxGxy20UgNjqRm6vRzpt/XY+XQ5nZtLcUiXXroIm
	OhMQ2VI9Eo1g52A1iJcNAUis+9Sjxe5Y0buQYs+zo1SYDidUG/07n7ZNxvRPvCLYzq1O7hdSjPEKK
	XfsiiKpEQ9Xg5qh6a/A/l3mFbTd4eR5hfXYRMFGbyDU0CM7OG8KOPgO410Xp0da4oOIOBgWh+bJmW
	z3VY+1tWHzjMgzkG3e6JGUSfMEj8FBDis6KJz9CFiiTJfAyAXdZTjhHbc4mSyN85H+/6Eri1Y7Qmk
	O79EPghsBpeV6c9MFqtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6LM8-0003rO-EJ; Mon, 24 Feb 2020 21:33:36 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6LLy-0003qd-PS
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 21:33:28 +0000
Received: by mail-qk1-x742.google.com with SMTP id b5so2937419qkh.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 13:33:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aa5Qf9pQ0k9qShhuWKSofog+nYL3D3DoTQ19Ih73G1o=;
 b=pb3kOEqHYHaRf65oifH6+Qx0lDkW7a60pnLPYV2ukWEIdqGsityLSoaKoSB7U/dR+i
 LFFBjFQxloBDdoEVyTlPaLLCijlErj0fLhkpf0YnmP9s1CWO+egbml3KSr3wbmSiTZsZ
 78pKnGDoOn6sY6zLFtgL5liJc37VeOn4ryfrgAzT9APn4JB127yZ9LdY16MgZmv6HcMP
 r4qwFo6xJn8TUfWVdnoRcdI7SPyYwiArshzw3FRl1CN61LqKf77enhTMJuwN3b37tAOq
 Vgk/x4jwl2UFwQVVbIL2L5t/1eYh4pt6mlxSsGLH+RKibI1Rt61ciMocnEpPMpmSuBV+
 mZzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aa5Qf9pQ0k9qShhuWKSofog+nYL3D3DoTQ19Ih73G1o=;
 b=kwAKLg7l+cX6trM265l6UEtiEjsJVnJkD1q8y0GBuE9h/n+SkxQ6LS/NMAhk46L6CS
 rdtDJORl6f7IzmzwOpJq6VfaTtYQKJEYutLhFttKecW0noIAukiKHZ7XoEnxcau56RxU
 JfCxHrO/NWNjgK34o7grg8XuURZssKWjlsAybSyIzLZN+icJG2Moy0lQLYke+c64NWCo
 FFuAd7wWPXDzRdjRMl2bac+D17Yn/hASTN5bLWz0cYC5UDOk3UKLyaPO9NV86I/L31FR
 W1FZvhK070Zu1UetSBh3vcY32pDtJ3O67THtq6V4vRGFxnMYVN8bRIx04wUTWiKKsTLj
 M+AQ==
X-Gm-Message-State: APjAAAUauIrjaLnQPbE7b3Kj/Zr7QTzR3UvMG5qO8UN2xgf43aD5koyk
 tzde8jErUikn15IUiVYBMhgWnTZxp7x4YveCs64=
X-Google-Smtp-Source: APXvYqycuSdcWXYyvFD0nZUrzQi+k4VGQugWbiYf7nZ1009R04WC3jif75TEuUqxHxIy7QvokAUEWiHMHBo0P4ayTa0=
X-Received: by 2002:a05:620a:7eb:: with SMTP id
 k11mr49850351qkk.486.1582580004626; 
 Mon, 24 Feb 2020 13:33:24 -0800 (PST)
MIME-Version: 1.0
References: <1582565548-20627-1-git-send-email-igor.opaniuk@gmail.com>
In-Reply-To: <1582565548-20627-1-git-send-email-igor.opaniuk@gmail.com>
From: Oleksandr Suvorov <cryosay@gmail.com>
Date: Mon, 24 Feb 2020 23:33:12 +0200
Message-ID: <CAGgjyvFFiiTp9p6Fjvhjpo6SPj47yLTGoM-RU3Y3pbp+RGfMsA@mail.gmail.com>
Subject: Re: [PATCH v1 1/5] arm: dts: imx6: toradex: use
 SPDX-License-Identifier
To: Igor Opaniuk <igor.opaniuk@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_133326_834390_A5B8C8FA 
X-CRM114-Status: GOOD (  22.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cryosay[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Igor Opaniuk <igor.opaniuk@toradex.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Stefan Agner <stefan.agner@toradex.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 24, 2020 at 7:32 PM Igor Opaniuk <igor.opaniuk@gmail.com> wrote:
>
> From: Igor Opaniuk <igor.opaniuk@toradex.com>
>
> 1. Replace boiler plate licenses texts with the SPDX license
> identifiers in Toradex iMX6-based SoM device trees.
> 2. As X11 is identical to the MIT License, but with an extra sentence
> that prohibits using the copyright holders' names for advertising or
> promotional purposes without written permission, use MIT license instead
> of X11 ('s/X11/MIT/g').
>
> Signed-off-by: Igor Opaniuk <igor.opaniuk@toradex.com>

Reviewed-by: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>

> ---
>
>  arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts  | 40 ++-------------------------
>  arch/arm/boot/dts/imx6q-apalis-eval.dts       | 40 ++-------------------------
>  arch/arm/boot/dts/imx6q-apalis-ixora-v1.1.dts | 40 ++-------------------------
>  arch/arm/boot/dts/imx6q-apalis-ixora.dts      | 40 ++-------------------------
>  arch/arm/boot/dts/imx6qdl-apalis.dtsi         | 40 ++-------------------------
>  arch/arm/boot/dts/imx6qdl-colibri.dtsi        | 40 ++-------------------------
>  6 files changed, 12 insertions(+), 228 deletions(-)
>
> diff --git a/arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts b/arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts
> index cd07562..aad47b9 100644
> --- a/arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts
> +++ b/arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts
> @@ -1,44 +1,8 @@
> +// SPDX-License-Identifier: GPL-2.0 OR MIT
>  /*
> - * Copyright 2014-2016 Toradex AG
> + * Copyright 2014-2020 Toradex AG
>   * Copyright 2012 Freescale Semiconductor, Inc.
>   * Copyright 2011 Linaro Ltd.
> - *
> - * This file is dual-licensed: you can use it either under the terms
> - * of the GPL or the X11 license, at your option. Note that this dual
> - * licensing only applies to this file, and not this project as a
> - * whole.
> - *
> - *  a) This file is free software; you can redistribute it and/or
> - *     modify it under the terms of the GNU General Public License
> - *     version 2 as published by the Free Software Foundation.
> - *
> - *     This file is distributed in the hope that it will be useful,
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
>
>  /dts-v1/;
> diff --git a/arch/arm/boot/dts/imx6q-apalis-eval.dts b/arch/arm/boot/dts/imx6q-apalis-eval.dts
> index 4665e15..e14e9d4 100644
> --- a/arch/arm/boot/dts/imx6q-apalis-eval.dts
> +++ b/arch/arm/boot/dts/imx6q-apalis-eval.dts
> @@ -1,44 +1,8 @@
> +// SPDX-License-Identifier: GPL-2.0 OR MIT
>  /*
> - * Copyright 2014-2017 Toradex AG
> + * Copyright 2014-2020 Toradex AG
>   * Copyright 2012 Freescale Semiconductor, Inc.
>   * Copyright 2011 Linaro Ltd.
> - *
> - * This file is dual-licensed: you can use it either under the terms
> - * of the GPL or the X11 license, at your option. Note that this dual
> - * licensing only applies to this file, and not this project as a
> - * whole.
> - *
> - *  a) This file is free software; you can redistribute it and/or
> - *     modify it under the terms of the GNU General Public License
> - *     version 2 as published by the Free Software Foundation.
> - *
> - *     This file is distributed in the hope that it will be useful,
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
>
>  /dts-v1/;
> diff --git a/arch/arm/boot/dts/imx6q-apalis-ixora-v1.1.dts b/arch/arm/boot/dts/imx6q-apalis-ixora-v1.1.dts
> index a3fa04a..bad1deb 100644
> --- a/arch/arm/boot/dts/imx6q-apalis-ixora-v1.1.dts
> +++ b/arch/arm/boot/dts/imx6q-apalis-ixora-v1.1.dts
> @@ -1,44 +1,8 @@
> +// SPDX-License-Identifier: GPL-2.0 OR MIT
>  /*
> - * Copyright 2014-2017 Toradex AG
> + * Copyright 2014-2020 Toradex AG
>   * Copyright 2012 Freescale Semiconductor, Inc.
>   * Copyright 2011 Linaro Ltd.
> - *
> - * This file is dual-licensed: you can use it either under the terms
> - * of the GPL or the X11 license, at your option. Note that this dual
> - * licensing only applies to this file, and not this project as a
> - * whole.
> - *
> - *  a) This file is free software; you can redistribute it and/or
> - *     modify it under the terms of the GNU General Public License
> - *     version 2 as published by the Free Software Foundation.
> - *
> - *     This file is distributed in the hope that it will be useful,
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
>
>  /dts-v1/;
> diff --git a/arch/arm/boot/dts/imx6q-apalis-ixora.dts b/arch/arm/boot/dts/imx6q-apalis-ixora.dts
> index 5ba49d0..8b700d2 100644
> --- a/arch/arm/boot/dts/imx6q-apalis-ixora.dts
> +++ b/arch/arm/boot/dts/imx6q-apalis-ixora.dts
> @@ -1,44 +1,8 @@
> +// SPDX-License-Identifier: GPL-2.0 OR MIT
>  /*
> - * Copyright 2014-2017 Toradex AG
> + * Copyright 2014-2020 Toradex AG
>   * Copyright 2012 Freescale Semiconductor, Inc.
>   * Copyright 2011 Linaro Ltd.
> - *
> - * This file is dual-licensed: you can use it either under the terms
> - * of the GPL or the X11 license, at your option. Note that this dual
> - * licensing only applies to this file, and not this project as a
> - * whole.
> - *
> - *  a) This file is free software; you can redistribute it and/or
> - *     modify it under the terms of the GNU General Public License
> - *     version 2 as published by the Free Software Foundation.
> - *
> - *     This file is distributed in the hope that it will be useful,
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
>
>  /dts-v1/;
> diff --git a/arch/arm/boot/dts/imx6qdl-apalis.dtsi b/arch/arm/boot/dts/imx6qdl-apalis.dtsi
> index 1b5bc6b..95aa731 100644
> --- a/arch/arm/boot/dts/imx6qdl-apalis.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-apalis.dtsi
> @@ -1,44 +1,8 @@
> +// SPDX-License-Identifier: GPL-2.0 OR MIT
>  /*
> - * Copyright 2014-2017 Toradex AG
> + * Copyright 2014-2020 Toradex AG
>   * Copyright 2012 Freescale Semiconductor, Inc.
>   * Copyright 2011 Linaro Ltd.
> - *
> - * This file is dual-licensed: you can use it either under the terms
> - * of the GPL or the X11 license, at your option. Note that this dual
> - * licensing only applies to this file, and not this project as a
> - * whole.
> - *
> - *  a) This file is free software; you can redistribute it and/or
> - *     modify it under the terms of the GNU General Public License
> - *     version 2 as published by the Free Software Foundation.
> - *
> - *     This file is distributed in the hope that it will be useful,
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
>
>  #include <dt-bindings/gpio/gpio.h>
> diff --git a/arch/arm/boot/dts/imx6qdl-colibri.dtsi b/arch/arm/boot/dts/imx6qdl-colibri.dtsi
> index d03dff2..b0ac187 100644
> --- a/arch/arm/boot/dts/imx6qdl-colibri.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-colibri.dtsi
> @@ -1,44 +1,8 @@
> +// SPDX-License-Identifier: GPL-2.0 OR MIT
>  /*
> - * Copyright 2014-2016 Toradex AG
> + * Copyright 2014-2020 Toradex AG
>   * Copyright 2012 Freescale Semiconductor, Inc.
>   * Copyright 2011 Linaro Ltd.
> - *
> - * This file is dual-licensed: you can use it either under the terms
> - * of the GPL or the X11 license, at your option. Note that this dual
> - * licensing only applies to this file, and not this project as a
> - * whole.
> - *
> - *  a) This file is free software; you can redistribute it and/or
> - *     modify it under the terms of the GNU General Public License
> - *     version 2 as published by the Free Software Foundation.
> - *
> - *     This file is distributed in the hope that it will be useful,
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
>
>  #include <dt-bindings/gpio/gpio.h>
> --
> 2.7.4
>


-- 
Best regards

Oleksandr Suvorov
cryosay@gmail.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
