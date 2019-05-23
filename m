Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C304128C90
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 23:44:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a21Y3SFZChhmiW+eZf4f94RhwogLfDACQ3g8Po5F8i8=; b=UUrUVBr803MCMQ
	5ntW7wdXsvAIww0VptVLa0y5FC69hZr6QROJAIscPhJ1hC9vkOWwokBrB0jXVqWZ1Sf3mrkuq2BRV
	7FQL5XBeh//unjC7syLH93I6/ixe+f4yJWbHKYV+PF8aSbPoxWwGcSeY3vA0WhzikWQBoLxkq3vSb
	R2e8jReDPemie2aLPDmxIVpzUFmmAtQQrqkt85ajNuLRqtO0QJiyPOOK+bbkCqUXykYPBVkvr7VK9
	TqcEf2bsivPSOaVwPHDfPoIHxYcZnsKJ6dBo+xs+4djRFKUELj6x/IP6ePRNDVEKljit5k5vHKSmg
	PemzoESbovYq19ucwCqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTvVI-0002vF-PW; Thu, 23 May 2019 21:44:00 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTvVA-0002tv-Ml
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 21:43:54 +0000
Received: by mail-ot1-f68.google.com with SMTP id i2so6830170otr.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 14:43:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3Hbgz3hxp/a58+ErXmRrOWz2gL6UQg1j+v6ltJTHI20=;
 b=rVFh84T+y+AJpKC1kZ6RyldPBZftPy04iakurOZsdUWKhNQRA8lSdtHLZZsdzyP+5A
 Ws+E3nIPaKDYQX7vvXJlOll5cqO1GMYziss8U2fcYLdQtSVMuAH5TG48JrGHDv8sluSA
 3v6SGDesCHQqHcYlwZ+TK/c4nUSAPcN4frAi1kf8olKm2NX9c8VfrOnTICQA3cbrAcsc
 J/Wt204tehIzoL0icFG9Koon+qnlmd/ghqk10Dr1lcYqJoIVZhB5i7u7aaiqbKagZdK0
 cdUsAbTP15OVXBtH7hQlVLlDS5HQw6IN8WMPvXI4ZAZXnY/AKReWjMG7SvnSReVgiW4T
 YyLA==
X-Gm-Message-State: APjAAAVBppH7SVMlzh+wtJ//oZzLnQ77XaExBgXYtY5xRjf5ugf4comu
 Ds+dbjUeljxTgxfO2TMknL+K9atZ5ko=
X-Google-Smtp-Source: APXvYqzZeBFRXU5wO9undQXN26jbgy3meCadfJfJIO1Doj540YUgwtHsSSr48YB3m39h5D/t2Ns1Kw==
X-Received: by 2002:a9d:6a18:: with SMTP id g24mr69557otn.192.1558647830621;
 Thu, 23 May 2019 14:43:50 -0700 (PDT)
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com.
 [209.85.167.177])
 by smtp.gmail.com with ESMTPSA id e31sm164815ote.61.2019.05.23.14.43.49
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 14:43:49 -0700 (PDT)
Received: by mail-oi1-f177.google.com with SMTP id v2so5530286oie.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 14:43:49 -0700 (PDT)
X-Received: by 2002:aca:ed57:: with SMTP id l84mr366380oih.13.1558647828917;
 Thu, 23 May 2019 14:43:48 -0700 (PDT)
MIME-Version: 1.0
References: <20180105094009.22599-1-ran.wang_1@nxp.com>
 <20180105094009.22599-4-ran.wang_1@nxp.com>
In-Reply-To: <20180105094009.22599-4-ran.wang_1@nxp.com>
From: Li Yang <leoyang.li@nxp.com>
Date: Thu, 23 May 2019 16:43:36 -0500
X-Gmail-Original-Message-ID: <CADRPPNS7iai2DwBjV0XTmxJKJ-diGzYMDg9Bfavjmai5Q=EW+g@mail.gmail.com>
Message-ID: <CADRPPNS7iai2DwBjV0XTmxJKJ-diGzYMDg9Bfavjmai5Q=EW+g@mail.gmail.com>
Subject: Re: [PATCH 4/4] xHCI: Handle dwc3 erratum on USB3 HW LPM feature.
To: Ran Wang <ran.wang_1@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_144352_742192_BDA32638 
X-CRM114-Status: GOOD (  27.19  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pku.leo[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, Felipe Balbi <balbi@kernel.org>,
 Mathias Nyman <mathias.nyman@intel.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-usb@vger.kernel.org, Will Deacon <will.deacon@arm.com>,
 Russell King <linux@armlinux.org.uk>, lkml <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 5, 2018 at 4:00 AM Ran Wang <ran.wang_1@nxp.com> wrote:
>
> Synopsys STARS ticket: 90000969472(A-010131)
>
> Description: This erratum is applicable for the USB 3.0 Super
> Speed host mode operation. When the U2 timer expires while in
> U1 mode, the USB 3.0 controller completes a U1->U2 entry operation
> lasting three mac3_clk (24 ns). If the xHCI driver issues a
> U3 request during this operation, thecontroller drops this request.
>
> Impact: The controller ignores the request when the xHCI driver
> programs the U3 entry (PORTSC.PLS = U3).
>
> Workaround:
> 1. Before initiating U3 entry, save PORTPMSC.
> 2. Disable U2 entry by programming PORTPMSC[U2 Timeout] = h'FF.
> 3. After U3 entry, re-enable the U2 timer by programming PORTPMSC
> with the value saved in Step 1.

Hi Mathias,

Could you help to review this patch?

Hi Ran,

Since this is an dwc3 related hardware issue, can it be addressed in
the dwc3 layer instead of in the common xhci layer?

>
> Signed-off-by: Ran Wang <ran.wang_1@nxp.com>
> ---
>  drivers/usb/host/xhci-hub.c  |   22 ++++++++++++++++++++++
>  drivers/usb/host/xhci-plat.c |    6 +++++-
>  drivers/usb/host/xhci.h      |    1 +
>  3 files changed, 28 insertions(+), 1 deletions(-)
>
> diff --git a/drivers/usb/host/xhci-hub.c b/drivers/usb/host/xhci-hub.c
> index f070f94..a61185e 100644
> --- a/drivers/usb/host/xhci-hub.c
> +++ b/drivers/usb/host/xhci-hub.c
> @@ -676,12 +676,34 @@ void xhci_set_link_state(struct xhci_hcd *xhci, __le32 __iomem **port_array,
>                                 int port_id, u32 link_state)
>  {
>         u32 temp;
> +       u32 portpmsc_u2_backup = 0;
> +
> +       /* Backup U2 timeout info before initiating U3 entry erratum A-010131 */
> +       if (xhci->shared_hcd->speed >= HCD_USB3 &&
> +                       link_state == USB_SS_PORT_LS_U3 &&
> +                       (xhci->quirks & XHCI_DIS_U1U2_WHEN_U3)) {
> +               portpmsc_u2_backup = readl(port_array[port_id] + PORTPMSC);
> +               portpmsc_u2_backup &= PORT_U2_TIMEOUT_MASK;
> +               temp = readl(port_array[port_id] + PORTPMSC);
> +               temp |= PORT_U2_TIMEOUT_MASK;
> +               writel(temp, port_array[port_id] + PORTPMSC);
> +       }
>
>         temp = readl(port_array[port_id]);
>         temp = xhci_port_state_to_neutral(temp);
>         temp &= ~PORT_PLS_MASK;
>         temp |= PORT_LINK_STROBE | link_state;
>         writel(temp, port_array[port_id]);
> +
> +       /* Restore U2 timeout info after U3 entry complete */
> +       if (xhci->shared_hcd->speed >= HCD_USB3 &&
> +                       link_state == USB_SS_PORT_LS_U3 &&
> +                       (xhci->quirks & XHCI_DIS_U1U2_WHEN_U3)) {
> +               temp = readl(port_array[port_id] + PORTPMSC);
> +               temp &= ~PORT_U2_TIMEOUT_MASK;
> +               temp |= portpmsc_u2_backup;
> +               writel(temp, port_array[port_id] + PORTPMSC);
> +       }
>  }
>
>  static void xhci_set_remote_wake_mask(struct xhci_hcd *xhci,
> diff --git a/drivers/usb/host/xhci-plat.c b/drivers/usb/host/xhci-plat.c
> index 1969e56..616c56e 100644
> --- a/drivers/usb/host/xhci-plat.c
> +++ b/drivers/usb/host/xhci-plat.c
> @@ -266,8 +266,12 @@ static int xhci_plat_probe(struct platform_device *pdev)
>         if (device_property_read_bool(sysdev, "usb2-lpm-disable"))
>                 xhci->quirks |= XHCI_HW_LPM_DISABLE;
>
> -       if (device_property_read_bool(sysdev, "usb3-lpm-capable"))
> +       if (device_property_read_bool(sysdev, "usb3-lpm-capable")) {
>                 xhci->quirks |= XHCI_LPM_SUPPORT;
> +               if (device_property_read_bool(sysdev,
> +                                       "snps,dis-u1u2-when-u3-quirk"))
> +                       xhci->quirks |= XHCI_DIS_U1U2_WHEN_U3;
> +       }
>
>         if (device_property_read_bool(&pdev->dev, "quirk-broken-port-ped"))
>                 xhci->quirks |= XHCI_BROKEN_PORT_PED;
> diff --git a/drivers/usb/host/xhci.h b/drivers/usb/host/xhci.h
> index b966cd8..9704779 100644
> --- a/drivers/usb/host/xhci.h
> +++ b/drivers/usb/host/xhci.h
> @@ -1835,6 +1835,7 @@ struct xhci_hcd {
>  /* Reserved. It was XHCI_U2_DISABLE_WAKE */
>  #define XHCI_ASMEDIA_MODIFY_FLOWCONTROL        (1 << 28)
>  #define XHCI_HW_LPM_DISABLE    (1 << 29)
> +#define XHCI_DIS_U1U2_WHEN_U3 (1 << 30)
>
>         unsigned int            num_active_eps;
>         unsigned int            limit_active_eps;
> --
> 1.7.1
>
> --
> To unsubscribe from this list: send the line "unsubscribe devicetree" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
