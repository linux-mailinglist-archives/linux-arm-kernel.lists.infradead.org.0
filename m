Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3BC3E175A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 12:07:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mFGTdXfpheODsZir5Vlvlf/wcN9+rtwGZ6/PSh9hVRs=; b=GPpOGCW5UHOPqv
	9jJOqggMX0Cz23Kr8se5HUuuu9DZGrJPHff7ZAZu5rIiaoeiR2ZymhBUEzUs3JvRD8BSb46ATOu2D
	k5S8v1MZ5ogFzMPpwHBEzoMiUymEwOWIhaimcrxV9cXBf3Yezbo1BCul9ZMrWWME1lO/vvs1PZ9rd
	VYSHKnjDq1UtzgXG3VjisU5aV7Nse41XrxAGqaIf5ucQLCjfiLo+2pOqPUGtVqG1/92M7zOp7KaZb
	VsgB6R+Iw8NH9S3yeQ+DBQJvfjobgiXY79CN1CLbYRAi6Xtb4iKTaJ/q56XY0GwJayj2+zceZ8JJP
	0lxCb/KSfziClhqJAd6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNDXm-000272-W3; Wed, 23 Oct 2019 10:07:06 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNDXc-00023v-Ax
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 10:06:57 +0000
Received: by mail-ed1-f68.google.com with SMTP id b72so6337620edf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 03:06:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=EBRXEMc7lMsrJ/hp7p+9t6+SuvDqUDCqV0bNi5LwlYI=;
 b=WoTNacAcNkxdzc/u9hYh869tpUSMCz/+Owq29wTyMiC47oZNPMcuv9uBESlwakUcw2
 M3a6oBTSdC48yPR+LtsLaZANvioA/PwwTin59Dh6Ez054QhfXiiY+npjcgh6yJYiDtM9
 IPXgIc7Tk6VRqJ1W9tc9jfIqGLrNbtesm5jhUqiWAYf22UxQq9mOvZuSUnNZvYs8mJIV
 rAuPqF80j/pHdVM3QZIZ/DFay3bt2j/lB0tLiCaIGKpiK4N3Cy2lXY5oWYgXLjcvoXyP
 Ljh7ydvBHkK+C16GWFYvulBmhOcshquqiyxS+kXt45T0/9N7ccbDNE7z5jWF7yiqpm4a
 E5hw==
X-Gm-Message-State: APjAAAVC68OAnwwE4aEGrDq4QPVAxEza+CLTKTN2JgcHtLE5Jc6Nu5LM
 QilcxJt/mJB+W/clK/OV9XI=
X-Google-Smtp-Source: APXvYqzmUyleea+kaoxwbwCps1piJlDZMPDxMUqgQmotfwkU5RMpq6RZ19BwwBOBQG+256tr0IQnzQ==
X-Received: by 2002:a50:ab10:: with SMTP id s16mr35925216edc.118.1571825214725; 
 Wed, 23 Oct 2019 03:06:54 -0700 (PDT)
Received: from pi3 ([194.230.155.217])
 by smtp.googlemail.com with ESMTPSA id a26sm831024edm.45.2019.10.23.03.06.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 03:06:53 -0700 (PDT)
Date: Wed, 23 Oct 2019 12:06:51 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 03/36] usb: gadget: s3c: use platform resources
Message-ID: <20191023100651.GA10630@pi3>
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
 <20191010203043.1241612-3-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010203043.1241612-3-arnd@arndb.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_030656_378546_E18C6834 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
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
Cc: Felipe Balbi <balbi@kernel.org>, linux-samsung-soc@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linus.walleij@linaro.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 Kukjin Kim <kgene@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 10:29:47PM +0200, Arnd Bergmann wrote:
> The resources are correctly initialized, so just use them
> instead of relying on hardcoded data from platform headers.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/usb/gadget/udc/s3c2410_udc.c          | 31 +++++++------------
>  drivers/usb/gadget/udc/s3c2410_udc.h          |  1 +
>  .../usb/gadget/udc/s3c2410_udc_regs.h         |  0
>  3 files changed, 12 insertions(+), 20 deletions(-)
>  rename arch/arm/plat-samsung/include/plat/regs-udc.h => drivers/usb/gadget/udc/s3c2410_udc_regs.h (100%)

Acked-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
