Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05D78C049E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 13:50:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=od1D+KpAR4hJGe4CxloQLYsjaJvb5ft16pT3xnmRhdw=; b=Qm4DlQiCrezo1+
	TYzB3ylC656DzmY9oi373jdzNwtsKINKvVWMUUq0XVeFk6TmPZMrpqPLz0y0K+ASylSNVG5ofWbhG
	N/tQ+0/GeXswORwkAF9QVOKMMSTGZ3XEEwuTWS1qkPhMyxRhN2WreZuhYsd6T9dC/HGvzp4KnawuX
	NZCA3y9t0i+Jnbtr9ZGCF7h4a0bK8dqJKpBRyfcAh8QC8ONs+YLiFR1fVxLYB8zZ7r1++KJUAQTxj
	ftq3Kslo/prEH/cNLdl7jT4q28+sRNoDqNtpH7vBpSxRPXiYK0k6iWyMBDJ8BOmUV7LxexaNRSuyx
	vjGgd15VqaE8RNsgz7vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDolt-0006Pj-VI; Fri, 27 Sep 2019 11:50:49 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDoll-0006Ou-Tp
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 11:50:43 +0000
Received: by mail-lf1-x142.google.com with SMTP id x80so1709403lff.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Sep 2019 04:50:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jtkPzUdh0BjwnTFcU6cDEv31BuC4wG3MpqjO9vOb5nc=;
 b=dHkG+HnC9dM6qd1tsawE2B77CGjpChpBeEsSBUvLKNrVXpX+osBDmU/jLYHZPm1B/P
 2dyDxSkFmTP8ieUdkcZKpDi2kNeo10lBoWrXT9wdZ615R12K9KGFf6J/OrMdVyWQEX/z
 wYgpsuDlMp9FCPoF7j0EiuKNEMBtaw/LYAUt7RIkCAlVR/MANI5zfMMqmxqGDQcnXtAL
 2OY3vl+bQvPLR8uEP6OVKQm7w0g52y6Li38Svuxw5AE7QBLcb9eP1aPHP9bXfcFj5qG3
 0/jxw0iG4icNXkyuWt9atKmkl1Z8zGcUZmaUcKj8BAHOSFFYokiX4pBiyg/QJksov5nt
 4GIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jtkPzUdh0BjwnTFcU6cDEv31BuC4wG3MpqjO9vOb5nc=;
 b=UXdL7o1f8+GRfgFGPMiP2GYDOHUX5aSu2JYWlAGxvPVoluSK1wt7z2MAVuzT/PhCIF
 lQ9H/wT+1fQDiZ7UxAjRfF+g++ae8gabSNGnOUcqpZ6upWnHONhOq9Bapcot9lE7I1Nx
 aIfx6ES4XucPZE1LJLEnyYaJjNOrptmsqkEzbB9QJoYoqLS2X6RgGefTEItUNoUO2Xn4
 vb+wE+CRmQrkpEvuKhMkEzXunsl1RbzT4UbmC5VqiNDXwWjQHoviiivw3J0EfNAvl+6Q
 BIL1K2AGUlYjFx2ibAlw7Ghdrv8QrVoFPSJ0iU0GcR6a4+mHOmQj80c1yWVoRUOFnqb1
 zYdw==
X-Gm-Message-State: APjAAAU2LynRGEQqx77gU3vzTdpq58TSypeseu6vNBquPdULsHeW/Wfk
 JdSWWaN94U2J2DlXCyxUpOx+nvq6DLRiDOsi8NxuoQ==
X-Google-Smtp-Source: APXvYqyF/AMU9HIQoJBR4mgMcIh/XR7QQxXA0oPACvNrMQJcYHLmYcQQw76chmDwmpMjtdY1kzoSIQzHJDEllWzZAzI=
X-Received: by 2002:a19:48c3:: with SMTP id v186mr2493316lfa.141.1569585039656; 
 Fri, 27 Sep 2019 04:50:39 -0700 (PDT)
MIME-Version: 1.0
References: <1569439337-10482-1-git-send-email-hongweiz@ami.com>
 <1569439337-10482-3-git-send-email-hongweiz@ami.com>
In-Reply-To: <1569439337-10482-3-git-send-email-hongweiz@ami.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 27 Sep 2019 13:50:28 +0200
Message-ID: <CACRpkdY4RsqAOykyS-9GEFvF--3bmf=UjzADx8U18z=gTHBb4g@mail.gmail.com>
Subject: Re: [v2, 2/2] gpio: dts: aspeed: Add SGPIO driver
To: Hongwei Zhang <hongweiz@ami.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_045041_993610_6BC2B951 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Andrew Jeffery <andrew@aj.id.au>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Mike Rapoport <rppt@linux.ibm.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Doug Anderson <armlinux@m.disordat.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 25, 2019 at 9:22 PM Hongwei Zhang <hongweiz@ami.com> wrote:

> Add SGPIO driver support for Aspeed AST2500 SoC.
>
> Signed-off-by: Hongwei Zhang <hongweiz@ami.com>

I sent a separate patch to fix this up the way I want it with the file
named gpio-aspeed-sgpio.c and CONFIG_GPIO_ASPEED_SGPIO.

I don't want to mix up the namespaces of something Aspeed-generic
with the namespace of the GPIO subsystem. SGPIO is the name
of a specific Aspeed component.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
