Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FEE91962F9
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 02:54:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ZfhPrfCcL4so7IjH39R8KcZqiIZhPr+s7AupDZm+5s=; b=gR7FyXJnueAC/0
	Hiipo8SMif5vIActEBMWsuwck2tu5AQw5mk5NlibsjTMaWfAhz/D5H2m34ix2XKiBdKmFYFV4wL3v
	iLyjrB+TqhSd40rOiZayTHbt3ZFtMFptylCjONJKxZY8SxWKxg0ongf2+98q3SRZ6+LflR+HxAOA/
	VG2HksTWE4iNSCMdp7ztv/o6QJBS4XpIbm5ogxVEeZl8o1aBaNoJASLb1xWSOoa3H48JeINWcmEbU
	PPmTL0/2PAgpZiVFs2OVJ+qRjJmq/s7zCvEFTYb9swrWkxWwGd5leugS1JXnG0aVFtImeoIF/G5Zt
	zIOPaIEUoAUVR7PzkIkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jI0fn-0006MM-8v; Sat, 28 Mar 2020 01:54:07 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jI0fe-0006Lw-IN
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Mar 2020 01:53:59 +0000
Received: by mail-ed1-x543.google.com with SMTP id u59so13637220edc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 18:53:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Pi7H1Ajr6bMiyo1A76OQeaQ+kStGGuPp2rRUkY34J+0=;
 b=dKsVu3U9Skfh/V4Y98tY+UkG1iu89G7w6W9xFiKgbBH3J2WA0eww4U645YJSvJwPjc
 ijE+oCEEyaDqLAUTNvpl+CO1dW4pFL1bYPy3A5qOdn4UNK9IApTJ5s9fR/IUROkb0y1C
 vpNG3Up050LqakRSWF5PSrR89lwpt1o2QSRr1x7tqY2o/kK6WkdhDW249USC2hj15dAB
 ebft4/PvcrtmvNJImcuq1mOnLT25mo6D2VOaHf3Yrli2brGv8kX4733/eXFEh4Jjdg8m
 zNq2hVAAYdSUOw05O5ZeAtVcPPWK7Xio5WdMHXTwmjEKmf2AUvtcjjcyPk19lFMEHuVp
 WgKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Pi7H1Ajr6bMiyo1A76OQeaQ+kStGGuPp2rRUkY34J+0=;
 b=fhQMmevaYFUWSfAQ65yw3chkPDkJ1YOwLLDh5btZO2JX9aQDoCI827IZ/sIX2rjj0n
 waNtg+APp8sMk5YsJ+x+OHCBxMsz3KHU/9SKetTWOWK9WspVJwGipEBu2yioO8kic6Ag
 pQxR/GBaYv85jNpzfunYpPsV282Zpk+VFtuCSGV6e/5jgROyFnymDEopir9DRPhMstyb
 DR/Hsg+r6msJgkqaZxBBZVzPeiDAVcQ+KjUrZcyw31r3bfLwbzyT/lu6nOYdXB1cg9sl
 lztndf5UfH3f/Ju5KInkG1r2UGuBmBlWNLB/H+K28ktK/Pe8oDOWGbc41Nd2j5+ARFWz
 im7Q==
X-Gm-Message-State: ANhLgQ0kt1PLZqWYhFSWaL7bvmFuSo8YDvRfA9qKGvV7j79T6F9VeqPA
 QUKMVX/X+lT0ThpvHLK1gnu8BRU2w5m7nbkcnoE=
X-Google-Smtp-Source: ADFU+vsvILa3PT8XxzuSZHQ/kr7rcKC6H72nvPxy3U9RYV/qYBFlLjgvVfwmeqbbemT53KphYXqjasieKh843Fbf4d0=
X-Received: by 2002:aa7:dcc9:: with SMTP id w9mr1925720edu.145.1585360434676; 
 Fri, 27 Mar 2020 18:53:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200323225254.12759-1-grygorii.strashko@ti.com>
 <20200326.200136.1601946994817303021.davem@davemloft.net>
In-Reply-To: <20200326.200136.1601946994817303021.davem@davemloft.net>
From: Vladimir Oltean <olteanv@gmail.com>
Date: Sat, 28 Mar 2020 03:53:43 +0200
Message-ID: <CA+h21hr8G24ddEgAbU_TfoNAe0fqUJ0_Uyp54Gxn5cvPrM6u9g@mail.gmail.com>
Subject: Re: [PATCH net-next v6 00/11] net: ethernet: ti: add networking
 support for k3 am65x/j721e soc
To: David Miller <davem@davemloft.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_185358_634601_C48A1310 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [olteanv[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rob Herring <robh@kernel.org>, Grygorii Strashko <grygorii.strashko@ti.com>,
 devicetree@vger.kernel.org, t-kristo@ti.com, nsekhar@ti.com,
 lkml <linux-kernel@vger.kernel.org>, kishon@ti.com, peter.ujfalusi@ti.com,
 Murali Karicheri <m-karicheri2@ti.com>, netdev <netdev@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>, rogerq@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi David,

On Fri, 27 Mar 2020 at 05:02, David Miller <davem@davemloft.net> wrote:
>
> From: Grygorii Strashko <grygorii.strashko@ti.com>
> Date: Tue, 24 Mar 2020 00:52:43 +0200
>
> > This v6 series adds basic networking support support TI K3 AM654x/J721E SoC which
> > have integrated Gigabit Ethernet MAC (Media Access Controller) into device MCU
> > domain and named MCU_CPSW0 (CPSW2G NUSS).
>  ...
>
> Series applied, thank you.

The build is now broken on net-next:

arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi:303.23-309.6: ERROR
(phandle_references):
/interconnect@100000/interconnect@28380000/ethernet@46000000/ethernet-ports/port@1:
Reference to non-existent node
or label "mcu_conf"

  also defined at
arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts:471.13-474.3
arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi:303.23-309.6: ERROR
(phandle_references):
/interconnect@100000/interconnect@28380000/ethernet@46000000/ethernet-ports/port@1:
Reference to non-existent node
or label "phy_gmii_sel"

  also defined at
arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts:471.13-474.3

As Grygorii said:

Patches 1-6 are intended for netdev, Patches 7-11 are intended for K3 Platform
tree and provided here for testing purposes.

Regards,
-Vladimir

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
