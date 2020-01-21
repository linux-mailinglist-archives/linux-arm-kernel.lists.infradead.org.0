Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 738B014470B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 23:11:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A6W1bGZQFqJ0fPntpHkhZb8tsxVXDvyRBY+gejDiHTk=; b=mGr4PI1fhSXtaH
	cIo/0WMCyARve7Gp3Pu4fAs9/MkIDhYokJBub0qLOnLL4Chu13RZ9Wv7JzO00eHC+J0xSVYbtZ0iq
	Zo00fXtuH0WiIEKn8ZYVVwwzZAsyhDDOioVfvs693T+DxE43JrJDMatnS5/g2JtYIBAXNGQ5I3REH
	vjbIg4UlvB+UO4qbEbMh0kiEJfW9c4d826Np75kEcYAW40xBS3PN72e8EjtBxsAbVPQ+j9MWJtcVK
	/nLVp8QUB5bm6KtJIT/0sa4HBkcdtcLpzVBOOxwp2FAQRGirO5+M35Vg+mmztyZvSRjvJcPWEChTt
	PgYr1UyH5ZjAwuE9h6Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu1kM-0002OD-AQ; Tue, 21 Jan 2020 22:11:42 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu1kA-0002Mm-Sc; Tue, 21 Jan 2020 22:11:33 +0000
Received: by mail-ed1-x543.google.com with SMTP id r21so4706883edq.0;
 Tue, 21 Jan 2020 14:11:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=x52RfIzWuhptiT6HtlO6I538NLkJPevuS3cIwYyZteg=;
 b=s/rSw8mvL48WPMh/ngVylCpVlto/w/+l5lPClTNQgf8CDydp9BA5lDSfeI1kWU6uHG
 +nNcYIO7Ec+B/37EzZnnAzaHWk8rXhIIWEpJrS4SBTW+VSPxVwoC0T2MgqNgkhyLq9ur
 sXrxGR+rzlid5R924smwd9wb1o3y6PWF9nRCkdfDNO47lnYRCW+iMnf2QUZ7KLXiiF4g
 ACFETfI7/6ZW/XcM55v/bWCZeS+noIhIpfUWyiWFshrbcEgv0qRlAoW+yD8F67NyYHGE
 IsCiVkI+FbIHz5detETS+LDAYI+hWa5kFOUTYXZysK3vuocEt4A27ojjizGTd8MpNjX0
 JUjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=x52RfIzWuhptiT6HtlO6I538NLkJPevuS3cIwYyZteg=;
 b=C0egbXCEkGilsM9fuTZFhVqLFjI2owj1AOGBsptozWMIn0HKytBU8L+YuTJiZBLZhA
 VsvbsnwVXXk5N/IM+yj7zLc/cNNNlKRa3wkEvjt/PaTk37TVFfol2/UgzMg+3Jn9p6AS
 /SFDRCducDWrn+7dG9E8W7dg5e6TrG4LUh17C0+2bzyYbPoAleHO/pHefdqP0d+tImsA
 +1Lk8biLcj/3A+2iemfwvN2PMMHto6Y8cT7CpE5E8dj2+KtvyyRkPLcMXT6yWIMB9YeP
 srTLgifGIRsPT83CESnEYsPXLd+8NYuUf6MuiIbtAMeiPCX36xEjE/cneCOtvGj+BjOX
 Vhvw==
X-Gm-Message-State: APjAAAWy+Zbbl3CESaKT7onvRjYaV5hyb2MFwc2jMoW2yFpsL+sHEhOg
 FZK+Xa2bGfkkzBABdBxCSWX4ImpfAtSXaeps7tQ=
X-Google-Smtp-Source: APXvYqy2Lvp66HQg3tF0U4y7uCLYIvj+NbcFeMsCn8O5mdlF4fZ8zrHwSodtdIlnVzrkNoyj9B2fqN0+7Jg90Y1Co7s=
X-Received: by 2002:a05:6402:221c:: with SMTP id
 cq28mr342907edb.110.1579644686374; 
 Tue, 21 Jan 2020 14:11:26 -0800 (PST)
MIME-Version: 1.0
References: <20200121103413.1337-1-geert+renesas@glider.be>
 <20200121103722.1781-1-geert+renesas@glider.be>
 <20200121103722.1781-12-geert+renesas@glider.be>
In-Reply-To: <20200121103722.1781-12-geert+renesas@glider.be>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 21 Jan 2020 23:11:15 +0100
Message-ID: <CAFBinCD=LTAT-HQ+wSSmLQux+W5Y6vBju6RQDwf_1t1FhZoXgw@mail.gmail.com>
Subject: Re: [PATCH 12/20] ARM: meson: Drop unneeded select of COMMON_CLK
To: Geert Uytterhoeven <geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_141130_950450_9F421659 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org,
 Olof Johansson <olof@lixom.net>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 21, 2020 at 12:47 PM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:
>
> Support for Amlogic Meson SoCs depends on ARCH_MULTI_V7, and thus on
> ARCH_MULTIPLATFORM.
> As the latter selects COMMON_CLK, there is no need for ARCH_MESON to
> select COMMON_CLK.
>
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
Acked-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

> Cc: Kevin Hilman <khilman@baylibre.com>
> Cc: linux-amlogic@lists.infradead.org
I assume that Kevin should take this through the linux-amlogic tree
(instead of someone else applying the whole series directly to the
arm-soc tree)?


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
