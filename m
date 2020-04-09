Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A93121A3234
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 12:05:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qCIY8yyEVaDp9N86Gt5YZ128n1TH9EoCcMB8VALQVs8=; b=pPWy2WtA7ZVuAY
	SLeMjVlTA/ltJZWqU+4CvVHUNaoCKcqFibGyafKMyXSurvHTKBDHPRNQH23wDI40CxOjgISQ1Fg4o
	lBcP6YeMR6wy+7YJd8xbiqRh5RaooWZ+Ig1jd+boMBNiD4UM4+J6R/Am9UknMN5GlJvTxKE740C87
	RaHaplcCblKtGEvCIaFYVwluLKkdKGRXjTNbr/UoGiPg1l8tIBORJiyeMkYnkdQ+4EWPzgH8qYtdL
	3FiRVnF3ktLV31Zn+ZiE0uIomGhw3QFLPRvpsapnTpRehU6zWaH5K4EIq2jkWb5ZpmFDEbTaUzUyU
	T5i38pSwUrjGGpuYzI2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMU3q-0008Tl-8D; Thu, 09 Apr 2020 10:05:26 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMU3j-0008T6-SP; Thu, 09 Apr 2020 10:05:21 +0000
Received: by mail-ot1-x344.google.com with SMTP id v2so9922192oto.2;
 Thu, 09 Apr 2020 03:05:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=339j4MaqRyQUqdJT33toZfwVsRBRNf1r0tP9u8tA6/k=;
 b=E1dFeILKHlqqZAzfS0yB6UoHzzwrLRtZ8X8WHp+c1guK812Ac3v1D8MqHQms5kdfj0
 3yyMWYgtrOyTvMYdbGk7LG3bqCNXBbKmyVByy1WkLVRcyRNNHIKtAC/Ff/Ffrx0Eyxwg
 34jnSSD42/QryQnaEchzDT17xTYgVRNKJotdWuyJBww1ox8bXhVVLeVPnmnemwEUjJ19
 /vNgWYmIKQfliHgiboJ5yKJveN5HoiD5xnCDzFwefHb0Kx4WaqeSCvuqR7IYEwoGbmfa
 xnjM1LOH0HynOtlqdJOWztV53gpIugfHYz9hYfqAXd12Wk/G21Z6fXwZK3+8Fm31/kRz
 KE2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=339j4MaqRyQUqdJT33toZfwVsRBRNf1r0tP9u8tA6/k=;
 b=bZtgSLYZwH5bnrWi00wCBYz7N11knSFn2pOX6dDM+ExOLB94DKJh/cSBczRBIHDtgg
 gfrVuYj1w7xnP6OrUdaq7c/1VKPumj3E1Nn4bwuTgqJRuJX3BHX6p7mSMOTbPs1RLOPQ
 XkFAnEQuXR3XnpUSHf91oaM4YFGWisPxlF4TiLSGTLj6Eh/BKdtVyeGqyy7VkDcUW3Y2
 X/nxaPTRvIDoUm1aoUhJTG+HR/ioNd8YD6Vn79Cum1pE73LsdgjUAB3w1fX1hW3xnK1z
 hdalKl8pX5O9ZB+yfwdbBjC4DyEiVGuvGSTXeGuxsy+z/o5lMcOfF5n5eKDZVA4D70XI
 MZxA==
X-Gm-Message-State: AGi0PuYaJ1Afc/Kn+uPWxr/E5ZZvKtV9wD7fc5SMmebMvqUvfexgnx9W
 h8nmlR85SPNdg0SVkIK6K8JUbaQORSaPKgJXXLY=
X-Google-Smtp-Source: APiQypI1ZTh7a2IVl4I8tXE41Mc3lGPBZY4nosM1GN+H5r+AL5nH4NCX6DGIGvQhFATTRXa0MRQAoqev/aam1hCwyf0=
X-Received: by 2002:a9d:ef6:: with SMTP id 109mr2955843otj.43.1586426718309;
 Thu, 09 Apr 2020 03:05:18 -0700 (PDT)
MIME-Version: 1.0
References: <1586360280-10956-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1586360280-10956-8-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <e3f5fa77-f78e-edbf-9efc-53b5ea620460@cogentembedded.com>
In-Reply-To: <e3f5fa77-f78e-edbf-9efc-53b5ea620460@cogentembedded.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Thu, 9 Apr 2020 11:04:52 +0100
Message-ID: <CA+V-a8s1E_kq_GENBTw3zGxKSPFnVKNY-ta9+c8W8nV4JFyEEw@mail.gmail.com>
Subject: Re: [PATCH v7 7/8] PCI: Add Renesas R8A774C0 device ID
To: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>,
 Bjorn Helgaas <bhelgaas@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_030519_943049_1B488609 
X-CRM114-Status: GOOD (  15.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.csengg[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Chris Paterson <Chris.Paterson2@renesas.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 linux-pci <linux-pci@vger.kernel.org>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Tom Joseph <tjoseph@cadence.com>, Rob Herring <robh+dt@kernel.org>,
 LAK <linux-arm-kernel@lists.infradead.org>, Jingoo Han <jingoohan1@gmail.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, LKML <linux-kernel@vger.kernel.org>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sergei and Bjorn,

On Thu, Apr 9, 2020 at 10:36 AM Sergei Shtylyov
<sergei.shtylyov@cogentembedded.com> wrote:
>
> Hello!
>
> On 08.04.2020 18:37, Lad Prabhakar wrote:
>
> > Add R8A774C0 device ID so that this can be used by
> > pci_endpoint_test driver.
> >
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> > ---
> >   include/linux/pci_ids.h | 1 +
> >   1 file changed, 1 insertion(+)
> >
> > diff --git a/include/linux/pci_ids.h b/include/linux/pci_ids.h
> > index 1dfc4e1dcb94..9e957c18abeb 100644
> > --- a/include/linux/pci_ids.h
> > +++ b/include/linux/pci_ids.h
> > @@ -2460,6 +2460,7 @@
> >   #define PCI_DEVICE_ID_RENESAS_SH7763        0x0004
> >   #define PCI_DEVICE_ID_RENESAS_SH7785        0x0007
> >   #define PCI_DEVICE_ID_RENESAS_SH7786        0x0010
> > +#define PCI_DEVICE_ID_RENESAS_R8A774C0       0x002d
>
>     We don't add the device IDs in this file, unless used in several places.
> Is it?
>
My bad I should have checked it before making this change actually it
was suggested in my previous version of the series but anyway atm this
was planned to be  used only in pci_endpoint_test driver, so in that
case Ill drop this patch.

Cheers,
--Prabhakar

> [...]
>
> MBR, Sergei

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
