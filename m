Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69545182E15
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 11:45:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=36dWLrlesE/kPSWE5SuEknGDiv11And5JcLl6jYjX2o=; b=B6inGXdpiovPfW
	ahrSnPiDXoR7QT6410WYgEdbheBcgshnml6CZ2jtnKadvcDL9i121vdzpWsyt0wH+SuJfa7MCtkXE
	EWcP+FS7gSSMq9VnQ12uf4fKKT4WsiU92o/62D6ookz9Ej9C1eGhK+7weXhBySzHie90ytMC/dNy2
	MlwrF38p0eMVyC4IuHE5Wfdpg8ksry738z991emXdBum/Lwn3/AH4WI0WxZFkpCeNkpMmfo0WTVld
	0JTDo3gX5zuhrGn6NULFBvMMGJSYKj6hHaw4u0F72tROk4wRERy8kZb5evmAe0phTasE8HtWH70zt
	fmitDxVfdR7C0hgNQQfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCLKr-00079a-B6; Thu, 12 Mar 2020 10:45:05 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCLKc-00078k-Cb
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 10:44:51 +0000
Received: by mail-vs1-xe41.google.com with SMTP id x82so3325575vsc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Mar 2020 03:44:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/hsaG6j90s66b5sAhcEsQTY0J6YR55tJXb5H+vXmq9o=;
 b=BDl6Tah1NgNqpJiG8G3CoDYR87HmHLI8xvK8q2kHUqM97kM38Kbl8lKdPiqJyXtojq
 icwj3qLGQWigurDYhIh0KN4bz9wwIQRkyvCBsdJAFirg41OT+I97DTnbYyFxSTeCeCSO
 MpA11ZmGDCF7Zw2hwDOi90PKeLezH5+npfVwNOnfFOrcsmpBJKj60+JoB7FuNekCCkDk
 oi5UMYTExgop+4c7iTeLXM+MpjwiPw2ZWSaP7SZHg2AHyrKxkfuj9B24Ruyu5B9TLsyo
 Tjajj24+NKBaODEvMCnsL6cU67ag2CIGJluubOaHBItFWdvbcrktOnfOB4lzKx/Utg8k
 YqyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/hsaG6j90s66b5sAhcEsQTY0J6YR55tJXb5H+vXmq9o=;
 b=E9YyXMyQ6Nw5M4/nbQ8GeAytt+tW4ZVYcnyIkcsLlq+16TqJfy/IMJD20UaCm/l7ZH
 e4NnYVRODTZ+JLmO512UVRYOUElHtNJ4z0LyZcm3MmkMMymxNN9D/xrEl6kiG7yGPzCU
 QjTkbWm1fN+O/ZACOh62BXC64D4JfX94rTNyq9k2BsHEleZVhfBXEF1Kmwc91qkk877V
 XElS1Iar3vcIJQGCHdpokJsuAkywYBYIOIno1GzSoinhYKeS8iGag7Qm3PVsVrfxrVVh
 8EJ5WZWJx/D8GdCqtw+iWNA/n2vtAfoBYvBVgVopGGaQJ2+/RRZN1FKvP7oBb+6gmP7U
 lLsw==
X-Gm-Message-State: ANhLgQ0cv5k9heejSGqlOCftbQYD1oLtfQ2B9KMNxnzw0kvx7hrCSh4E
 jlPI9WVInf/wZOf8RnrzGY9TKk2R9F6TT3BSftCK/A==
X-Google-Smtp-Source: ADFU+vuszdscU3XdZ57aAT25416d0k5sPcfl0mAi5hLjgkEZHNfu0Lp82aNKZ+W0OfmUblZbN51k2qpZO8MHLGW1V6A=
X-Received: by 2002:a67:cb84:: with SMTP id h4mr4854919vsl.85.1584009889300;
 Thu, 12 Mar 2020 03:44:49 -0700 (PDT)
MIME-Version: 1.0
References: <1583377666-13378-1-git-send-email-christianshewitt@gmail.com>
In-Reply-To: <1583377666-13378-1-git-send-email-christianshewitt@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 12 Mar 2020 11:44:37 +0100
Message-ID: <CACRpkdZgeA-qgWckwAH2_6nqqwkbxfTa0so55mbKJoC1q1O38A@mail.gmail.com>
Subject: Re: [PATCH v2] pinctrl: meson: add tsin pinctrl for meson gxbb/gxl/gxm
To: Christian Hewitt <christianshewitt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_034450_491400_E690BAF7 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
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
Cc: Kevin Hilman <khilman@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Otto Meier <gf435@gmx.net>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Igor Vavro <afl2001@gmail.com>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 5, 2020 at 4:08 AM Christian Hewitt
<christianshewitt@gmail.com> wrote:

> From: Igor Vavro <afl2001@gmail.com>
>
> Add the tsin pinctrl definitions needed for integrated DVB hardware
> support on Meson GXBB/GXL/GXM boards.
>
> changes in v2
> - fix ordering and numbering of uart_c ping flagged by Otto in [1]
>
> [1] http://lists.infradead.org/pipermail/linux-amlogic/2020-March/015906.html
>
> Signed-off-by: Igor Vavro <afl2001@gmail.com>
> [updated commit message]
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>

Patch applied with Neil's review tag.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
