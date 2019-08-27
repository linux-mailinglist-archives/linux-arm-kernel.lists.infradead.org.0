Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A994C9EF96
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 18:00:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fUU1aRQQhwoRhGoy4s2mqzWAnEuzcKe2rqM2dyIMDAY=; b=QpezGlXXl2vn9m
	AaW4Uk+3XrIFg9kEMJ6CFav5mdObzR/krdJo7I77qNMLqbB3LLbe19oPJugiXTg4GjUj4C7FPJaoe
	QQzuBEnzp+lFctXSxhw/y4S7UvlnjSvI5zVfbSKfbY4lssaVj6OzOQlIWZBBUF41wnhIzQ/M/bs6W
	HNLKUb/uJBqlQpW+jlxAevgT/QF9VkZOPTNwgBqrMDnwxON3NG/quVmB81C2E3wKK0v5MK1dsMYFa
	fkLFSBPyc2tgjhDgRU3W8pQbisiaRo6EUyDz4VpouslHV2DsfuQjOQR4mtq0lUZqgyOk1RxoSUsZz
	E8C+gJ6kUg7wirRIlLLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2dtv-0007mp-LI; Tue, 27 Aug 2019 16:00:55 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2dtf-0007ij-W7; Tue, 27 Aug 2019 16:00:41 +0000
Received: by mail-oi1-f194.google.com with SMTP id g128so15390774oib.1;
 Tue, 27 Aug 2019 09:00:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=D6+OaZ1K2BkxJDOEN54v4VflGey5EU83b3NbO+bgnw4=;
 b=Ye5qB7ASk/EtJB56M3+na+H8dQWsNfLAO9uIJliEA4dKPTcPGhq2JU1LXqGAqtZlE+
 7lAUZE4iMDHx4COnM0uf5rnJrSNnNkC0aTj7Z00h7eAXKUnBUr92LkSIki1fg4E7tExv
 8orJd5+1GWkYLl+9uk7QgxD/C4h4zTfLxy7TQ4dtXgyd02PgKpempVUD9fQxChZr0zE9
 8OVK4Zo+esSukuRe/jzlAFPQwXSpwqnBZ1uRP+MEpHwkvUYNvrDLQ6jDE7xurR5B9WOG
 w9fG3vwX8OJ4sorV9AeTUR94qH0KcgZ2DLggSBl0i6IS4PtzT2tm0D+GLEVCdlBI0VfG
 Qz4g==
X-Gm-Message-State: APjAAAVYDCtzegTnaMPLwTu3C/oPI5gHK4AB1GhtJ0BMBDQJsw+XQT3N
 0/yxTI+ov+8B5U3E/2+0og==
X-Google-Smtp-Source: APXvYqzqysW8b9Vv/AGQrCdVBMtCuN+0jOLgEwEm5B32z9YhyzC8FzlR7LdSUXlhdBuSwDViFOa0Ig==
X-Received: by 2002:aca:4b83:: with SMTP id y125mr16540421oia.25.1566921638739; 
 Tue, 27 Aug 2019 09:00:38 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id y62sm5552699otb.69.2019.08.27.09.00.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 09:00:38 -0700 (PDT)
Date: Tue, 27 Aug 2019 11:00:37 -0500
From: Rob Herring <robh@kernel.org>
To: Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH V2 07/13] dt-bindings: i2c: bcm2835: Add brcm,bcm2711
 compatible
Message-ID: <20190827160037.GA13627@bogus>
References: <1565713248-4906-1-git-send-email-wahrenst@gmx.net>
 <1565713248-4906-8-git-send-email-wahrenst@gmx.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1565713248-4906-8-git-send-email-wahrenst@gmx.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_090040_312771_583AFC21 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>, Wolfram Sang <wsa@the-dreams.de>,
 Ray Jui <rjui@broadcom.com>, Stefan Wahren <wahrenst@gmx.net>,
 Eric Anholt <eric@anholt.net>, bcm-kernel-feedback-list@broadcom.com,
 linux-i2c@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 13 Aug 2019 18:20:42 +0200, Stefan Wahren wrote:
> Add a new compatible for the BCM2711, which hasn't the clock stretch bug.
> 
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> ---
>  Documentation/devicetree/bindings/i2c/brcm,bcm2835-i2c.txt | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
