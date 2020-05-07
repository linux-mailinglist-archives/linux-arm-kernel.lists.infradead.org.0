Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F181C9DE5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 23:49:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RxWzDhDw6lpzUnB9dsQiq3omhyxXSkjmlbe2eO7lF+U=; b=ojuWSVjsJJSJU+
	9MnaQdreWduhDB7YBitzEkUN41oiuW0jE5Ar41fwQ2BCtezCIi99OcJAA89SMuDUPMB53KmOUouLt
	7V+YgkSvoW6Z6CqUPywXRRbYq6q8QtlBcrUriM9kly+WGBc8t8LDhap+rMcV1L9VPBoXcxPv6WP31
	1vUvvz2xgf2fCFeGuFxthRZ8AKs/QE5AikR2/8yEveAJemx5NbXAI4EuRH3i/8uSjFr2xWjL44fJh
	/rAJvRs17shG8m/nAUJHvCXhuh/dBG5O7KtXll6JmSQO77dLY35noP7zvGzGnFlTWyQ2xxYYgWBnX
	UuM4tiMt24i99Xfeuxug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWoOO-0003zq-TI; Thu, 07 May 2020 21:49:20 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWoO6-0003rP-UD; Thu, 07 May 2020 21:49:05 +0000
Received: by mail-oi1-f193.google.com with SMTP id c12so5609451oic.1;
 Thu, 07 May 2020 14:49:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=E+pFlkiHBg6jfWtAOY9Q6oDR0NcYcDN9gR56ePg57Lw=;
 b=rSK7SibMWPuezq9tvROmZaFiWWDFr3bSYdoNFlARw1L9IG7xcdiCHJgJwvBMTwli9f
 iV2gp51FCVREZIQNCT11yebfmlIFWftXyDAtzrFCnSrlkZALlCqL71TITeqwKSYm+RCF
 Ux0HuN77VJZmGfuRgvyvLcWzQ2Xoo9D0rASsxWzzRZdt2H98xnCrrJD0T4eRS69A1O5o
 Afwo30OlxAMK7ZZ5htc/w8J9HZCehvrK9mW1eDOBl2ls/9UgMdzJg5gBCf7MIeWE2q9o
 BMAB72rgQYl3EADISid+st9cNbxzCV0eOHEtZKNghlnnncCQnHHpCkwz6sVah8M3Efhk
 AwIg==
X-Gm-Message-State: AGi0PuYcaHbr/+H5g9I/ai1yVLhEFpZCRI5wAawwsAdpyrCWzzFmrJaH
 +wVA6LR5tcQoluuVGUJdpw==
X-Google-Smtp-Source: APiQypIayKJpxvDexGfbRNvCnUfO7rkllRn/IREbyBex8nzmd8858FJDRmdqI9CIiLxCQubNsW8bZQ==
X-Received: by 2002:aca:4951:: with SMTP id w78mr8756772oia.99.1588888141372; 
 Thu, 07 May 2020 14:49:01 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id f9sm1671435ote.30.2020.05.07.14.49.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 May 2020 14:49:00 -0700 (PDT)
Received: (nullmailer pid 632 invoked by uid 1000);
 Thu, 07 May 2020 21:48:59 -0000
Date: Thu, 7 May 2020 16:48:59 -0500
From: Rob Herring <robh@kernel.org>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v8 2/4] firmware: raspberrypi: Introduce vl805 init routine
Message-ID: <20200507214859.GA562@bogus>
References: <20200505161318.26200-1-nsaenzjulienne@suse.de>
 <20200505161318.26200-3-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505161318.26200-3-nsaenzjulienne@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_144903_976454_F07E77CE 
X-CRM114-Status: GOOD (  14.11  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org, f.fainelli@gmail.com,
 Scott Branden <sbranden@broadcom.com>, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, tim.gover@raspberrypi.org, helgaas@kernel.org,
 wahrenst@gmx.net, Ray Jui <rjui@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue,  5 May 2020 18:13:15 +0200, Nicolas Saenz Julienne wrote:
> The Raspberry Pi 4 gets its USB functionality from VL805, a PCIe chip
> that implements xHCI. After a PCI reset, VL805's firmware may either be
> loaded directly from an EEPROM or, if not present, by the SoC's
> co-processor, VideoCore. RPi4's VideoCore OS contains both the non public
> firmware load logic and the VL805 firmware blob. The function this patch
> introduces triggers the aforementioned process.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> 
> ---
> 
> Change since v7:
> - Use usleep_delay()
> - Add comment about PCI errors
> - Don't wait on error
> - Typos
> 
> Change since v6:
> - Add test to avoid loading the firmware when not needed
> - Since we have it around, print VL805's firmware version, it'll make
> debugging easier in the future
> - Correct typos
> - Add a clearer view of HW topology in patch description
> 
> Changes since v4:
> - Inline function definition when RASPBERRYPI_FIRMWARE is not defined
> 
> Changes since v1:
> - Move include into .c file and add forward declaration to .h
> 
>  drivers/firmware/raspberrypi.c             | 61 ++++++++++++++++++++++
>  include/soc/bcm2835/raspberrypi-firmware.h |  7 +++
>  2 files changed, 68 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
