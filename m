Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 596A5A57DF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 15:40:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Subject:From:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=27CLeOwTqfoPnyCXB20pxaVspPxeI6yr/B3VJBY+EB4=; b=nshLtzKuZD416Q2/xYm45jQUNo
	l2JxZXyPSLEVNYCO1lHQ/cxaJoAlCjKC/+qDx9iKdOwV8pGCiRbLvIIamrcEEjCZolDg96xs3MD0F
	9iU4nLZpxXuaVG8Qtkla+2BqyS4BYH7WLfBX/eVOkdL78rNJBSY8Ju1T33SstGAQgdtJhNxWiTfT1
	rDO0W9LaVgLiwbHwzXx+2ZSawCUq6y+IOvhY07fyAsqOS21WJj4bzGN1qCIILjZ5gGOtvmH9KKXSE
	r8FHK6hLTUP8+GecCHeoCdVhPDBH5Ap+GpXPeNdXXGTrBKifJ/Tby5bDoRypY8847exe41rzLPK2k
	czYKdIhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4mZU-000472-A6; Mon, 02 Sep 2019 13:40:40 +0000
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4mXo-0001HT-42; Mon, 02 Sep 2019 13:38:57 +0000
Received: by mail-wr1-f65.google.com with SMTP id h7so12732511wrt.13;
 Mon, 02 Sep 2019 06:38:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:subject:references
 :in-reply-to:cc:cc:to;
 bh=nPRUA5yZXmPWTokSGym1lKZ6GQZy5ySBbJLcfcoglsY=;
 b=tmqLY7A5LMbjXfaNjgcKApjaQkPVEwPbvRqy8nGUubfJJrz5lKm5g4l+ux1jfipIlp
 lmED/l1KTUkaAE/HlQaglYBAr9Sh/+JkOxn4Gkcq6xcRs9zDTdDNswk4a/jzNZkKr777
 q/pJXHNl7TshXW5UK/7UgEDV65gbvXP2NQMad3yxCBIaZlXWxB7ccaDz47/tvm2jdGT4
 e94qKmZormA+DMnMzwAUc1/acm7obq29xnaNgsj3o8dd2PRdVZRnrvVmEeny/lSpMUF3
 gBKmDuiUqR4Rjixq9CPAdLHaRK8/cKqViDj48fX9NEJf2XZ6nXeYj0kskRX/jSUhwk8U
 YG9w==
X-Gm-Message-State: APjAAAVrq/sJkksYkVTdsEWTunI2uiYq4p8t3AWX14waixaHpycGgDwD
 0LtWEHMp1MpcO884Qeohcw==
X-Google-Smtp-Source: APXvYqyvbrMPmMiV5b3gWdHNFD445UozayaIuP3ud47MYHnGtI4Z0dvVWaAlPFhYplcTUpqc5ajKFA==
X-Received: by 2002:adf:ff8e:: with SMTP id j14mr35307186wrr.141.1567431534372; 
 Mon, 02 Sep 2019 06:38:54 -0700 (PDT)
Received: from localhost ([212.187.182.166])
 by smtp.gmail.com with ESMTPSA id t203sm15258248wmf.42.2019.09.02.06.38.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Sep 2019 06:38:53 -0700 (PDT)
Message-ID: <5d6d1b6d.1c69fb81.a78b7.2ccb@mx.google.com>
Date: Mon, 02 Sep 2019 14:38:53 +0100
From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH next v11 03/11] dt-bindings: usb: add binding for USB GPIO
 based connection detection driver
References: <1567070558-29417-1-git-send-email-chunfeng.yun@mediatek.com>
 <1567070558-29417-4-git-send-email-chunfeng.yun@mediatek.com>
In-Reply-To: <1567070558-29417-4-git-send-email-chunfeng.yun@mediatek.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_063856_302536_4494DEB4 
X-CRM114-Status: GOOD (  12.88  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: , Mark Rutland <mark.rutland@arm.com>, Hans de Goede <hdegoede@redhat.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Badhri Jagan Sridharan <badhri@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Biju Das <biju.das@bp.renesas.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Min Guo <min.guo@mediatek.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Nagarjuna Kristam <nkristam@nvidia.com>,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>, devicetree@vger.kernel.org,
 Li Jun <jun.li@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 29 Aug 2019 17:22:30 +0800, Chunfeng Yun wrote:
> It's used to support dual role switch via GPIO when use Type-B
> receptacle, typically the USB ID pin is connected to an input
> GPIO, and also used to enable/disable device when the USB Vbus
> pin is connected to an input GPIO.
> 
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> v11 changes:
>  1. add Reviewed-by Linus
>  2. change compatible as "gpio-usb-b-connector", and remove label
>     in example suggested by Rob
> 
> v9~v10 no changes
> 
> v8 changes:
>  1. rename the title
>  2. change the compatible as "linux,usb-conn-gpio" instead of
>     "linux,typeb-conn-gpio"
> 
> v7 changes:
>  1. add description for device only mode
> 
> v6 changes:
>  1. remove status and port nodes in example
>  2. make vbus-supply as optional property
> 
> v5 changes:
>  1. treat type-B connector as child device of USB controller's, but not
>     as a separate virtual device, suggested by Rob
>  2. put connector's port node under connector node, suggested by Rob
> 
> v4 no changes
> 
> v3 changes:
>  1. treat type-B connector as a virtual device, but not child device of
>     USB controller's
> 
> v2 changes:
>   1. new patch to make binding clear suggested by Hans
> ---
>  .../devicetree/bindings/usb/usb-conn-gpio.txt | 30 +++++++++++++++++++
>  1 file changed, 30 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/usb/usb-conn-gpio.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
