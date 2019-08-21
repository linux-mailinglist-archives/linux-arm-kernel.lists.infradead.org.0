Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE58A981E0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 19:56:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bTI/dXkFUMsvTtQuAzoH7jfzLnUB7+nQX1/hMVaDnNI=; b=RfFsaAlJdM8kA6
	hPufkHrq5r1WcFsBB9NgBnq41YL9oQZBgVIpL8uTebtCc7JK9ofNLa0M6xZAoU6eNqrXyIzigji//
	OQSHwUfNa2Zf3dO0lGFFpfmE9WK2JqlRwXqlNr0FBmy8oIV3F75rd4Er3B6OPKEgYuIqyp/0Hu5/R
	0xhlSxLxYBiZHuxn4S5yp8Fg2+FoTIY3xzf5YXQWoS00ZnzykIIVl029oytTfyOiqihY1o0QV3vPC
	pJwyZST5s954bRrzMs5A7vPfAcxJidI5sqUZN97VikPnBBoEQRCBQieQY8TAtltVNAIcFVCnltsND
	DRIyT00EqzBFaAQWvFyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0UqM-0005yU-Bj; Wed, 21 Aug 2019 17:56:22 +0000
Received: from mail-wr1-f66.google.com ([209.85.221.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0UqD-0005y9-Dw
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 17:56:14 +0000
Received: by mail-wr1-f66.google.com with SMTP id p17so2860243wrf.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 10:56:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3QMcAbdO89j9hbCFCxKjPRn72B52n9H62i2qWyUrTKc=;
 b=WOuoGpIjXWbRWbs1YnWDLDZzCxRVMbdkNrlwj4MFNLnXowpzAH9kQ5ONdY+4rQfJJa
 gG1zx07LzXlcne3xEAXpZVtLSrZ/yM1NkC0I8qNvbATo3j3sqYY18cF+SgOzlN6en+9F
 43r9KOkdYCsiHrjwrI/47mDX3dZsbvYhjTjo/d2vRzp0yYZd56Qgd8rGPJ6YTj9Hzth/
 hSt1GSBa4aEzF8ymTi+IlnPmFwRGP5qy5M9dvNn+x2Z1qsvF9eSSuAHomsEG7FjM2Vyu
 ZTHT13zQI1P8x7FYqP9u7VW9jFXZ8qDb4KzS0Mb/7JyyMNUd8jRH7hSegat0t7me0nMB
 O8tA==
X-Gm-Message-State: APjAAAW3nsirkhBYRi+oKSmNZKCiQMbDoZdwKvwNWddj/RvmXbsh/SW3
 CdG/PKdrFAhKaNyz5/cFEfiUaA6f
X-Google-Smtp-Source: APXvYqyXIbUhXlGcLLVFLun1i20quC+8O/1XUZRT3UwzRWmduyZeM2r2J5aRsbF9VA1AfHqIAQiZ8g==
X-Received: by 2002:adf:f1cc:: with SMTP id z12mr4554250wro.125.1566410171806; 
 Wed, 21 Aug 2019 10:56:11 -0700 (PDT)
Received: from kozik-lap ([194.230.147.11])
 by smtp.googlemail.com with ESMTPSA id g12sm25434578wrv.9.2019.08.21.10.56.10
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 21 Aug 2019 10:56:11 -0700 (PDT)
Date: Wed, 21 Aug 2019 19:56:09 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH] ARM: s3c64xx: squash samsung_usb_phy.h into
 setup-usb-phy.c
Message-ID: <20190821175609.GA6768@kozik-lap>
References: <20190819155602.20843-1-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190819155602.20843-1-yamada.masahiro@socionext.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_105613_474079_7DBBCF65 
X-CRM114-Status: GOOD (  14.24  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.66 listed in wl.mailspike.net]
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
Cc: linux-samsung-soc@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 Kukjin Kim <kgene@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 20, 2019 at 12:56:02AM +0900, Masahiro Yamada wrote:
> This is only used by arch/arm/mach-s3c64xx/setup-usb-phy.c
> 
> $ git grep samsung_usb_phy_type
> include/linux/usb/samsung_usb_phy.h:enum samsung_usb_phy_type {
> $ git grep USB_PHY_TYPE_DEVICE
> arch/arm/mach-s3c64xx/setup-usb-phy.c:  if (type == USB_PHY_TYPE_DEVICE)
> arch/arm/mach-s3c64xx/setup-usb-phy.c:  if (type == USB_PHY_TYPE_DEVICE)
> include/linux/usb/samsung_usb_phy.h:    USB_PHY_TYPE_DEVICE,
> $ git grep USB_PHY_TYPE_HOST
> include/linux/usb/samsung_usb_phy.h:    USB_PHY_TYPE_HOST,
> 
> Actually, 'enum samsung_usb_phy_type' is unused; the 'type' parameter
> has 'int' type. Anyway, there is no need to declare this enum in the
> globally visible header. Squash the header.
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---
> 
>  arch/arm/mach-s3c64xx/setup-usb-phy.c        |  5 +++++
>  arch/arm/plat-samsung/include/plat/usb-phy.h |  2 --
>  include/linux/usb/samsung_usb_phy.h          | 17 -----------------
>  3 files changed, 5 insertions(+), 19 deletions(-)

Thanks, applied.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
