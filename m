Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BDC910D6D6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 15:20:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xLAarbKJlKRTf0+Bq3fwasbk6ftxuOi6/GJ2R+2CV2s=; b=h8EYx33Nh2PFYR
	qOIn3xmoYAZ0Qa9Sx73HQU7yu6rpT9Z6VzP2VjMeBEWHtX5CMuXXNJ4A4OpZk7n4NjkPzWv8uk8J5
	zK9lpSVTlDhCpfTRVRO/saoP4Aw92jwnuadfHXqhoJ32ny/YoMFixNAWcYTgdjZqficm+OCFTCCx7
	Lx7zjXY4IR5QeUke8pCg5G5bhj579MJfLYRc9/iaz9K8mXyJgLbA+Cm80XNXr3NO8jU7CxmUzxqvO
	1JFRITlB3Q7kDNttJlE6c6ZjD521mTYDDYmPP+h8VWhpWhkcK2ANbaIA0P8/7t+yD2UByoXdhR4Fb
	kAMWXXiDTS0+TAC++KkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iah8b-0002ec-1S; Fri, 29 Nov 2019 14:20:49 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iah8Q-0002dc-KK
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 14:20:40 +0000
Received: from mail-qt1-f181.google.com ([209.85.160.181]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MLR5h-1iJROj0FX9-00IVNN for <linux-arm-kernel@lists.infradead.org>; Fri,
 29 Nov 2019 15:20:34 +0100
Received: by mail-qt1-f181.google.com with SMTP id z22so11767558qto.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 Nov 2019 06:20:33 -0800 (PST)
X-Gm-Message-State: APjAAAVpM4UjcoY/vt+RobmPeSEzVr6KxIG3pfB/ELITqYcZwIrhLm8s
 IvD6uDLbCOzmD9FM9irP0B/jW/FD6gGkKjSUtRw=
X-Google-Smtp-Source: APXvYqzuj1g3/GU3W0Lff3sjm4Lv42/6ORZFJ6s5TNnb+zf08goAKPnWFeOteSaiZYTfp9N207PDOibr4xIs9S0H9Os=
X-Received: by 2002:ac8:27ab:: with SMTP id w40mr923393qtw.18.1575037232961;
 Fri, 29 Nov 2019 06:20:32 -0800 (PST)
MIME-Version: 1.0
References: <20191120144109.25321-1-alexandre.torgue@st.com>
 <20191120144109.25321-6-alexandre.torgue@st.com>
In-Reply-To: <20191120144109.25321-6-alexandre.torgue@st.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 29 Nov 2019 15:20:17 +0100
X-Gmail-Original-Message-ID: <CAK8P3a2Bg9KwfEqEE3_NUHxVv=svFGuj--Tnq-w-xFg63cfqAA@mail.gmail.com>
Message-ID: <CAK8P3a2Bg9KwfEqEE3_NUHxVv=svFGuj--Tnq-w-xFg63cfqAA@mail.gmail.com>
Subject: Re: [PATCH 5/6] ARM: dts: stm32: Adapt STM32MP157 DK boards to stm32
 DT diversity
To: Alexandre Torgue <alexandre.torgue@st.com>
X-Provags-ID: V03:K1:cNu9h8ZfgEoB+gBTZ0ErZh0SNFWZ2TmlfwGPktp1boZKPuCZPiw
 ZyAb/j5+xHJ001MVcVPPmdUMIa0SoY17Ca7qjLtNuT9dfz6bhsKoZNwDaRqYHtkLtaQMLNC
 06AuKDOFctwTfXz/CZ56+AKAwvlQAN9MG97+vD1SDLaYhOe9+Jwk21ukvVHsg2EWdsNCNlQ
 WU+4Jab0QslCKNNG3ZQAA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:N7FkGG8NjPQ=:tEr1CKpxf4V/tLkNllkRhC
 Ef2OGxZKGtfL2oNJMoGn1x/LfYA7K8y5KlXQLvFIPGRtea//FLF6F1WOb200aK7nKKmScxVef
 fFnWJXL0k8qZYXtNz1if34lvHoYVgQ5eRC1uET6T0fwJ5Qg/GEXGYutE0F2l6jSka0kHc0GBO
 rhGXtUfQ0Rqb0CxwJx+AeBBbDbMDrDFNW0r5Q/7cd0CnuqJyWzNlJx87uThmbEAoYr0K+1suu
 LvyFRdBgP29k69eMwQBCHlD7EjQfmUnpqYgGdPS78jZQcSs+BaQAKyZpnH5hcg3mBLg0ioIH5
 NQMMA/O6t86ZNZ0BrD9ywOj/dCjNiu9IC36ooCzXwVm6vQlGUd6HNEVWJGHt8VV5KG03GZZaz
 ThHVBonHYuclpgwn6yuT2vyryzPES6MmppksRPA6xhlOw2t06qvF1eQGn7HxOXrfWIuTowa3w
 p137aEOqtixSJ2LK38GrzMwotU1VtkZt0uifR1d003d5Qx4velnorfbeVYShBXOUBZi86P/Zt
 8bE8C2V2NQz+gkgFZbQkrnJjOB0+fW0UmUeo9hmmJ+Vz6Tvd9tYZwWDHcdRrhrF3YQXuw2ML0
 sVj3trVKyA8XRFy1A0ER+IMKBT+PX9+woj3/Fi5/xB4B423SSVNLw+Wof9uous7iY8Y5Rh4hu
 NZJVueiDL/qU7dHE+7Dl9uvvr4IlKdlaFhrrPMl9F2o3kgU/IvJ6/3LF0xbyad/EztYUH8RMb
 qKp+bp1X2vVMwM6cCgzSfu36JKIHojGPRlcPalOapxJzwUYhLg8W7O3/XwTJGwb+sf9gjJE0W
 Gx+O08vjxXnlrx8fEwiqcSizaz3re10H+pLdx7yux/Yzp6YfY/YMIeMENTRwYJv52QAIto2h1
 sUwPZlzZQpKfnQXaEe/A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_062038_965243_8A51B589 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 20, 2019 at 3:41 PM Alexandre Torgue
<alexandre.torgue@st.com> wrote:
>
> To handle STM32MP15 SOCs diversity, some updates have to been done.
> This commit mainly adapt dk1 board to include the correct package and the
> correct SOC version. A new file has been created to factorize common parts.
>
> Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>
>
> diff --git a/arch/arm/boot/dts/stm32mp157a-dk1.dts b/arch/arm/boot/dts/stm32mp157a-dk1.dts
> index 3f869bd67082..1292ac3b6890 100644
> --- a/arch/arm/boot/dts/stm32mp157a-dk1.dts
> +++ b/arch/arm/boot/dts/stm32mp157a-dk1.dts
>         model = "STMicroelectronics STM32MP157A-DK1 Discovery Board";
>         compatible = "st,stm32mp157a-dk1", "st,stm32mp157";
> -
> -       aliases {
> -               ethernet0 = &ethernet0;
> -               serial0 = &uart4;
> -       };
> -
> -       chosen {
> -               stdout-path = "serial0:115200n8";
> -       };
> -

As a rule, I would leave aliases and chosen nodes in the .dts file and not
move them into a shared .dtsi, since they tend to be board specific.

(even if that may not be the case in this particular file)

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
