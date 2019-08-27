Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E53CE9F623
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 00:27:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2eOOOpXw9JTa1MXIgR+hgIM4nedDRKqsTw6DjfnF3ms=; b=p0a4UHJA59V41r
	Uj02MRNIq0lRuglkfP6o7ft5PcbWjFB5EICId17eAZYInYNyU68SZy2oszU8FRGjH5tds3pLk4Ytc
	WHuBfDn7xNSc6MiSe2jxP1aBXUzPvCiSfU/86G/yLedceF1PT5TUJZhOO7fKYpUZE05oohLs8seQe
	6SZh4nQKJG9r0ThA/GSujkOQ1pdxQ3YIBpQxa38dSeBc9fLC3E9GgpixidTbCUH5nKMo+jDzA1rjr
	+zy/4QqeICFgglWxsqZ6weg4w50k7K0KGFc4a9e1wD5vr5ZSmBQAtoF9MnaEWj8mb0M5sOPqLHvDa
	SqxKzbU6KqeF7KXUsHWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2jvy-0002Pn-4C; Tue, 27 Aug 2019 22:27:26 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2jvj-0002PK-92; Tue, 27 Aug 2019 22:27:12 +0000
Received: by mail-ot1-f65.google.com with SMTP id c7so805993otp.1;
 Tue, 27 Aug 2019 15:27:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=dMNimwoZsVMLe9Sk4wjDaxpLxr9vjTQQotZn0Qr8nVg=;
 b=D++d9GX6GzkFir1X6m1qadQjYMC6S8sOoS+mZUXYtpmM3BXxAmBsEGBODvDxXmCSaz
 yKBMcPahkP8BhSmQirYide/r1dRTapSVsH3fvVN5ikZ+IgNJ0OrLOy++z5f2KiWnhMt2
 gaB6TtqcgKOKurOGdzGDeCi5kbS2kV5akzUQ/53jbX6Zmpm7qNK2rISEgHs6laAu09R3
 QJulK9CWi+182KEUZJ33pVAdkMGPVeph42anrinyKWrpclB4qpYEMzEpX+hZoR3hV0th
 4NeY1I7FEWZJT1Lg+Z75BuZZ7zIMokI9TZ9ci4Yx+NKhnTAQvYRQzT/BNK/W51+fH4ku
 ZL/Q==
X-Gm-Message-State: APjAAAXtM7t19eBbvSKibf1RCjzId01jx0I0ZVwpyOnk5nByOVW41O4D
 oPZj1pZ4O/R+HNC8bDz0XQ==
X-Google-Smtp-Source: APXvYqzGdl3LOWdnYrdN3SHrblxgBCUvgxV6hMc2a8l49mT3oFhMzIqow6a25sDO9wSvXTpCi98GFQ==
X-Received: by 2002:a9d:7f92:: with SMTP id t18mr778557otp.323.1566944830570; 
 Tue, 27 Aug 2019 15:27:10 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id z9sm172631oid.39.2019.08.27.15.27.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 15:27:10 -0700 (PDT)
Date: Tue, 27 Aug 2019 17:27:09 -0500
From: Rob Herring <robh@kernel.org>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: Re: [RESEND PATCH v2 1/2] dt-bindings: usb: mtk-xhci: add an
 optional xhci_ck clock
Message-ID: <20190827222709.GA20468@bogus>
References: <1566542425-20082-1-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566542425-20082-1-git-send-email-chunfeng.yun@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_152711_311993_C9E1F3D4 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Mathias Nyman <mathias.nyman@intel.com>,
 Ian Campbell <ijc+devicetree@hellion.org.uk>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 23 Aug 2019 14:40:24 +0800, Chunfeng Yun wrote:
> Add a new optional clock xhci_ck
> 
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> ---
> v2 changes:
>   1. add the new clock at the end, suggested by Rob
> ---
>  Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.txt | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
