Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBB789EC9A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 17:28:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dZtb1+gjMfP2cG6Cd3vvTZAIZFUYcatb7PRRrauCEmM=; b=Imf/qwUrf6badC
	k5XVJLGBrjnZPk1ponN9Iu0oij2LLFdFzykmH8bbfromLNnxdcWXaWq4rhWywzX30bHNVb+SjY7YR
	2sn6QkREkWjl+V5nYAJ6I20qkXOzPLRswXPDY15pX4hQgJiaukIxpHcCAHe/QMAswqXEcuICI9EMM
	K/BZ/hiCQsy7n0XIxiFnz9zVicGBwkQAExzxZt17uyBOsQUxXPMXPi2h7ECRR9SFPpMsiNnHOLIWm
	gEuUvVXVdEXLmEL3li6PL9Rca7aR2UJjq+g2tCNylwabNgxfSP7PyHeb1VDCa5sqJX51Hq7SJWhf+
	Gn9bCTJiYsXPBGdZRl8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2dO6-0002gL-0W; Tue, 27 Aug 2019 15:28:02 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2dNS-0002J0-6a
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 15:27:23 +0000
Received: by mail-oi1-f195.google.com with SMTP id h21so15262883oie.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 08:27:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5a2qkMONKijUeeWaRhR2tzwZA4N/jTBHB+gjYWsBgqk=;
 b=jdOaVwf+4TvZNEjasEufxJWXs0i2zRK3d1mHzAmTcgBrnImQ/vEwmRpqjSOgD06dUo
 eguqagcY9gi1656RaCKnpONQmXOmXxWFm8tCE0raW+FlKyKlyNqBbMt3B8XV+1enQKDs
 2hw+CE5LE6fCVyjZ0htriqrnjI+3QUIzwC8MBMpE39SlouX4WotsLU/puxbOmxt5BfjX
 JaAvbfvKaIFzMtSft3LdKsOscCV+glw3CgfazhO8CX22ZPxMyELbEqr84UT/jvDV70kJ
 1AUyD/nvUQiQ6qghFES4tBGNjRo15JCgZlMvH2UcMzAyzJhlpK3a6bv9lENZVLAEQXRo
 m/pw==
X-Gm-Message-State: APjAAAVEKX6GDo3fR4SNBXXAlCudfyJZxouJNEMsfI9xcqKBz7umBPQX
 sg37o4VSYoB33WAmRt8FSg==
X-Google-Smtp-Source: APXvYqz++OPbvepRcKtjgMn+dNQGml3FmGpPuBLHTxhzF0nrXokDGXGy1WXvHQuOxkbhOS6VRJHraQ==
X-Received: by 2002:aca:c449:: with SMTP id u70mr16884592oif.5.1566919641033; 
 Tue, 27 Aug 2019 08:27:21 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id w10sm5367778otm.68.2019.08.27.08.27.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 08:27:20 -0700 (PDT)
Date: Tue, 27 Aug 2019 10:27:19 -0500
From: Rob Herring <robh@kernel.org>
To: Yangtao Li <tiny.windzz@gmail.com>
Subject: Re: [PATCH v5 17/18] dt-bindings: thermal: add binding document for
 r40 thermal controller
Message-ID: <20190827152719.GA26972@bogus>
References: <20190810052829.6032-1-tiny.windzz@gmail.com>
 <20190810052829.6032-18-tiny.windzz@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190810052829.6032-18-tiny.windzz@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_082722_270745_62E4A91A 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 maxime.ripard@bootlin.com, gregkh@linuxfoundation.org,
 daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org, edubezval@gmail.com,
 Yangtao Li <tiny.windzz@gmail.com>, wens@csie.org, robh+dt@kernel.org,
 Jonathan.Cameron@huawei.com, mchehab+samsung@kernel.org, rui.zhang@intel.com,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 10 Aug 2019 05:28:28 +0000, Yangtao Li wrote:
> This patch adds binding document for allwinner r40 thermal controller.
> 
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> ---
>  Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
