Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF3511C9DF5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 23:53:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/SwxT6g67pkZmJAcXIGSZOqZFlxknmgkfc78kWPrk3U=; b=J8NjXH6rFQ+xu1
	oIZF25ibQRPDMEKrDhiioMhrifmY5xKEUZFXxBcmGWqTmZprVWUu8djMEdailroSDK2cbl6j8w/G8
	d4EBMrhKljKD/xT4Oux5CEZK1HECiQSr9s+JyxdOplefJBqo1HH70p7/LMKmsImydNPYUePswoxyo
	yFKWUMXk60+sAXFNHi94iWnx47UIleQAKOcjhl7Y+pbJImR0+6eUSlXCJ6oHEfjh3+BVinC7COaKV
	IzW8GPskH8KDIDSi4pjqn9coHwUVivPi9dxt1gkUT1czlAXw9Yt38EhJuI7KVjygImhRJFJdAAlZX
	lo+FTFYnnPfBqYaDzc1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWoS5-0008Ol-EX; Thu, 07 May 2020 21:53:09 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWoRv-0008Mt-4p; Thu, 07 May 2020 21:53:00 +0000
Received: by mail-ot1-f66.google.com with SMTP id t3so5891399otp.3;
 Thu, 07 May 2020 14:52:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=CU/jhaPmhAqWWMxE+0ciw1zj8C+7RdKkmDqSPqeUli8=;
 b=TQHAXsPQhcIN+paw+GUD2uHwjZtWJunkwHMW8eGk+BtZl/LStqdhlLL+ZI61oAUkem
 X+X24Wgm1/5kiK0+GF+Jo4LqmRDJ/rYuh7jsf8WLKn5irmmDcSxVGcOb7SOdIKC4KwBI
 MU8PQW4ZvwuBUCDoBOrVYeA8i55KupvwI5D0z1ajThQeHyFxVdnmrjanL9lSI8OEGtXX
 GFai/vwgOhlrlrmAh4IQJf+GwWnYPxkoEL4hDg8ZO00YbAntuYp4nWUcbNwbsdTZDJEj
 hG+PBvTDbZwLxFfcUhS0bA6cCRnUCn5BVsLqteJG3ZXxBKr0d6qETlr1w9i6A2kl3wx5
 rtlg==
X-Gm-Message-State: AGi0PubDGbAjparbny0H6e+7VApBo6EzhkNvdW0nP3B4+lmvM+k1EiD6
 rwKjtgSxBG9fAtFJu9F3aw==
X-Google-Smtp-Source: APiQypI1zeZzisqllNqDsttAgfTLEwQGuSYUTjKm2oOFsg8op6zupqbBMYh9erodVZ5cDOxXvTFLIw==
X-Received: by 2002:a9d:592:: with SMTP id 18mr11812118otd.337.1588888378253; 
 Thu, 07 May 2020 14:52:58 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id w62sm1680584oia.32.2020.05.07.14.52.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 May 2020 14:52:57 -0700 (PDT)
Received: (nullmailer pid 8285 invoked by uid 1000);
 Thu, 07 May 2020 21:52:56 -0000
Date: Thu, 7 May 2020 16:52:56 -0500
From: Rob Herring <robh@kernel.org>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v8 4/4] USB: pci-quirks: Add Raspberry Pi 4 quirk
Message-ID: <20200507215256.GA8228@bogus>
References: <20200505161318.26200-1-nsaenzjulienne@suse.de>
 <20200505161318.26200-5-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505161318.26200-5-nsaenzjulienne@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_145259_184050_FD070BC1 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Mathias Nyman <mathias.nyman@intel.com>, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 tim.gover@raspberrypi.org, helgaas@kernel.org, wahrenst@gmx.net,
 linux-pci@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue,  5 May 2020 18:13:17 +0200, Nicolas Saenz Julienne wrote:
> On the Raspberry Pi 4, after a PCI reset, VL805's firmware may either be
> loaded directly from an EEPROM or, if not present, by the SoC's
> VideoCore. Inform VideoCore that VL805 was just reset.
> 
> Also, as this creates a dependency between USB_PCI and VideoCore's
> firmware interface, and since USB_PCI can't be set as a module neither
> this can. Reflect that on the firmware interface Kconfg.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> ---
> 
> Changes since v5:
>  - Fix Kconfig issue with allmodconfig
> 
> Changes since v4:
>  - Do not split up error message
> 
> Changes since v3:
>  - Add more complete error message
> 
> Changes since v1:
>  - Make RASPBERRYPI_FIRMWARE dependent on this quirk to make sure it
>    gets compiled when needed.
> 
>  drivers/firmware/Kconfig      |  3 ++-
>  drivers/usb/host/pci-quirks.c | 16 ++++++++++++++++
>  2 files changed, 18 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
