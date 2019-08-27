Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E3B19EF8F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 18:00:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aXf7fF7ZgTXkD5yQdgG2WGvEgq0Qcmmfcf1uvI4heFY=; b=Q6NY/o/lrboNtC
	V4iu+TIc2kxrKkYdKHj9zJ79eiAffCU7F4e3DlGHiHVqn+fXpvSIIhy6t3uqG80/glEgAy2w3AOnb
	Ea0mN0w9pJH5qUKmZqFT8l9pvCU+BLUh3XLBS6R87adfN4LU7htN5IWn1UOMjsSXVgQjBOW+s0733
	ys1+RTavKgFTE8ONwZmhULfgh6Ur06Ah/fAoh/6oGLKjqoijiwFFJpyN1vZRBMqJgQY/Yad2u0cJn
	DXS+6MImJpSbbfJ6UI2RWxY/XUeyEPdFXlAecIWbITzcZBOJpcIHziOU7RZtEzXI7ZsBsZhq2CNgw
	p22Dd7yplVqoOgRZmrJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2dtc-0007YB-Ve; Tue, 27 Aug 2019 16:00:37 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2dtT-0007Xk-OW; Tue, 27 Aug 2019 16:00:28 +0000
Received: by mail-ot1-f67.google.com with SMTP id b1so19165938otp.6;
 Tue, 27 Aug 2019 09:00:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=CwAy1Ps+MjuuEKpxDHokPNhG1OQvVQq/qbn73rtHDl4=;
 b=E9eMIitIupJYEZa4Z+T/PUNVP5uMpojB7gUfFKpNwQA8C68qJsDYlSCZqZprnKI/5m
 pQxMW+3xACnMrvgVUKmVRJ9NyRxIgJ7qlcD0uhJYnkp+NJJIjGwm4anQ98Q5TdyqneWa
 47PDjbvMiNxFogAxNslRGTQbIB6kc1hpVR00wn0HeLzUqdBfmYzyIETWja/fpslXx8zZ
 c5dSvxNlNUd1HGp6jvS7yxvG32g2yxiEuEiewjKzHt2wbetT5W3QT0iY3nV+rvwMAi0d
 7lpfQ1CMnnxyZvD0EpAeaOjNhsMtNnfTYRnhPYc3I15/dj+qZqaimI9Z6bi6Tw/ojH5O
 Soow==
X-Gm-Message-State: APjAAAUB9EiiabFqZCU+4ngceiCPqn8grSgVXPpOF9VD8o22fSRtGseN
 e2NqkynTyxKu/3/46BQdsA==
X-Google-Smtp-Source: APXvYqwSKzfBpjOCtUh3Bg/GdA55c3XRKq0U7eMrWbyBtx4KABdnq/2qKlzSzSMzYXuXK2SHHvO5FA==
X-Received: by 2002:a9d:170b:: with SMTP id i11mr19812279ota.60.1566921626608; 
 Tue, 27 Aug 2019 09:00:26 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id h197sm4768104oib.14.2019.08.27.09.00.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 09:00:26 -0700 (PDT)
Date: Tue, 27 Aug 2019 11:00:25 -0500
From: Rob Herring <robh@kernel.org>
To: Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH V2 03/13] dt-bindings: bcm2835-cprman: Add bcm2711 support
Message-ID: <20190827160025.GA13142@bogus>
References: <1565713248-4906-1-git-send-email-wahrenst@gmx.net>
 <1565713248-4906-4-git-send-email-wahrenst@gmx.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1565713248-4906-4-git-send-email-wahrenst@gmx.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_090027_796841_0F91F978 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
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

On Tue, 13 Aug 2019 18:20:38 +0200, Stefan Wahren wrote:
> The new BCM2711 supports an additional clock for the emmc2 block.
> So we need an additional compatible.
> 
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> Acked-by: Eric Anholt <eric@anholt.net>
> ---
>  Documentation/devicetree/bindings/clock/brcm,bcm2835-cprman.txt | 4 +++-
>  include/dt-bindings/clock/bcm2835.h                             | 2 ++
>  2 files changed, 5 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
