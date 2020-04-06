Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A79AC19F300
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 11:54:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0M9KY1FM/ffX/+/Gc8wZxIvJLPeNwODRK07sf6jEdWw=; b=DGYMrViYhDT/5R
	bcsQS5IsrjPFMw8k3UVJvIBHcboAQrTyAdPGYZJy/AuqrrBT3I35NkB+oopwLakQG0YlxSZRGR/ou
	Wl2uEk3TEbnWzvHz6OkmouZoqiPfT4nXTbfR9ysSim+qZAt6RcxK3/Sv/3dS6gTxCMJXDdDQT6SSs
	W8jLYigxVPJjUzTNt0SSOfqBTYYLPzhCXsk38axUowpZze99er+yy0VEHaUDEGaSKJVnoP91OIlD+
	oN20gNuvIQ0SsJLIhF8HZjeSRDA+/XfGISrvia8H6llQh+p/IlZr11jb3EA+t9ttYBhSTI2miEOZb
	LjfRXd5T6iDK52P4S4Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLOSN-00023O-Kz; Mon, 06 Apr 2020 09:54:15 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLOSE-00022R-6R
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 09:54:07 +0000
Received: by mail-ed1-f66.google.com with SMTP id cf14so18396173edb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 02:54:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=eXU3+fS3XAuOGK+yRmNEiF3QUpBoPFYpiOk6EA2d73M=;
 b=dh2doa2YFjlhnsvmyxPVgT9upMqS4YwZWvY0S1jzkU2iZsfcB7GK54blhlk6fV2HqL
 RliahiLwEH5aDf3xfM7ubHG+xHzUFKu5DB6qbdpLLPZhCPEyU0obpBC5zjKJS+C6sAby
 /IWo6iDxN6NoOuH+v9HApC6tuhTa6j6AgWTn5I0EUIIAnPSuj7Vu6NUIhN+gWP1Y3Lex
 n2ZdL9NDu8oZgfs2tooaB2Le4AVIaVsOh6PXPGWq01C/5ak0ereQMflz2BR+VieIvkJt
 YGKX4d9py14Yz28CWo4B9P8uO2MNIx1HIM8lLr82rnlRMk8GOAdXrLrpR61MHoNVCo5O
 1deg==
X-Gm-Message-State: AGi0PuZB5hBOA5a6Edm9XDhlBd/BxhaOvbWC295HWv3yrztWjd7TG8N7
 I6UO9AWNjhnHJAOSq46rG904YRG9
X-Google-Smtp-Source: APiQypLwepchYmPhiWzn8mb3ybM6Te3z/xGQa8TofYqmH3OjWlJ7E/iHo/IuZQK17kfXiH2YPsukPA==
X-Received: by 2002:a17:906:3788:: with SMTP id
 n8mr20728327ejc.306.1586166839488; 
 Mon, 06 Apr 2020 02:53:59 -0700 (PDT)
Received: from kozik-lap ([194.230.155.125])
 by smtp.googlemail.com with ESMTPSA id l14sm2851321ejc.0.2020.04.06.02.53.58
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 06 Apr 2020 02:53:58 -0700 (PDT)
Date: Mon, 6 Apr 2020 11:53:56 +0200
From: 'Krzysztof Kozlowski' <krzk@kernel.org>
To: Hyunki Koo <hyunki00.koo@samsung.com>
Subject: Re: [PATCH v4] tty: samsung_tty: 32-bit access for TX/RX hold
 registers
Message-ID: <20200406095356.GA13565@kozik-lap>
References: <20200401082721.19431-1-hyunki00.koo@samsung.com>
 <CGME20200403111520epcas2p42ef81138693ffaaa281499c7a24e0e48@epcas2p4.samsung.com>
 <20200403111511.10598-1-hyunki00.koo@samsung.com>
 <20200403133457.GA7561@kozik-lap>
 <000101d60b92$eb97c050$c2c740f0$@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <000101d60b92$eb97c050$c2c740f0$@samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_025406_237551_FD1C6FED 
X-CRM114-Status: GOOD (  17.42  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
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
Cc: linux-samsung-soc@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, 'Kukjin Kim' <kgene@kernel.org>,
 linux-serial@vger.kernel.org, 'Jiri Slaby' <jslaby@suse.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 06, 2020 at 06:41:09AM +0900, Hyunki Koo wrote:
> > 
> > I got more thoughts... where is the binding for it? It looked like standard
> > DT property but it is not described in device tree spec.
> > 
> > Also, where is the user (DTS) with it? I expect such changes go with the
> > user itself... otherwise, next cleanup it will go away.
> > 
> > Best regards,
> > Krzysztof
> 
> Do you think this kind of change is needed?

You mean the user of this binding (DTS)? It is not required because with
binding comes ABI stability. However it would be both appreciated and
useful because it would clearly note that this feature is used.

The feature brings additional complexity and +1 function call for each
simple register access. Therefore sometime in the future, one could see
it is not being used and start cleaning it up. Cleaning up usually
involves looking for users, then making binding deprecated and finally
removing the feature.

The collaboration between the Samsung LSI and upstream is quite
limited... And it basically does not exist between the Samsung mobile
division and upstream. This means that when we reorganize the
code, deprecate features/drivers or certain Exynos chips (e.g. 4212 and
4415 in the past) we look for users of them and if none are found - bye
bye feature.

The solution is either to participate (but this is difficult for
mentioned Samsung divisions because of internal policies) or just add
the user of such feature (e.g. DTS for evalkit).

> Do I have to make as a series patches with previous patch?

The DT binding you posted looks good. It should go as first patch in this
series.

Best regards,
Krzysztof



> 
> diff --git a/Documentation/devicetree/bindings/serial/samsung_uart.yaml b/Documentation/devicetree/bindings/serial/samsung_uart.yaml
> index 9d2ce347875b..a57b1233c691 100644
> --- a/Documentation/devicetree/bindings/serial/samsung_uart.yaml
> +++ b/Documentation/devicetree/bindings/serial/samsung_uart.yaml
> @@ -29,6 +29,14 @@ properties:
>    reg:
>      maxItems: 1
>  
> +  reg-io-width:
> +    description: |
> +      The size (in bytes) of the IO accesses that should be performed
> +      on the device.
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - enum: [ 1, 4 ]
> +
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
