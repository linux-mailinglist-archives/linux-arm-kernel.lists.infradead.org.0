Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E37559F0B5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 18:50:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ze7VaTSjiRoErJ7vV/ZZxYoUMi21nYN9kqfse2ZlP8A=; b=AnvbQR0LUTGoM+
	JAjlhEOYeNGPXwhYkghuAtNoLlDMTEqnjsXX/TGxHnHDhiTmDqsyfU5hoWI7B6f16xd/kXETyo8jP
	rNaij3wy8Aw61qCHsS/Gn9KfzPU/I2j0kCOM3auOoNipmf25k7wxO9XmceoeBOjLSSeVU/eLe3prT
	F4Lx3OgYE09l0Y6zHQsi3z94cvwXIL3BAb0vaeH4UqJmRlFB4zQho91WFPAgaWkcbG+0peIioLJT6
	C7z2Wwhkbn4tllOD1RHDmKu0MNb/j1V3SMnDPD5fFJSmU5jamU6XgsqzH+ny6EKSPsSyGjNsUJCKb
	+dq6wJMe/JttzSe2uc/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2efl-0003rx-4Y; Tue, 27 Aug 2019 16:50:21 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2efJ-0002YH-Ut
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 16:49:55 +0000
Received: by mail-oi1-f195.google.com with SMTP id k22so15476184oiw.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 09:49:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7MPppvQzuTQRt9BznXwjvzO0Ebod4s5AerzRU45JZms=;
 b=XHc9ki5LQ5OFRA5ZWjSpe1VTX1Yj1xFby0pUlXoV2PcE+HrOtZAtf50v9pKfbFx8VZ
 Ua+rV1t4efGH7aAu1cNzOph0D18z7k2Q+etOVcfiJoXCVJQ6SzPi/j5ir03INryUz0uQ
 eG/WUE0b7G9DbQNd+oqqqpYP1ZtAzROwJvAvsOYPGh9mk86+Kkpt9mIz/Q3CqYk5pVa2
 XNBmMldmsyaN88M5XryL2H2WgflboD/41vhvVbt94KVpMjxJ2Z9IyKqFK062yQUkFeUI
 ehe3dZkpDDA/eaDBgCUqyAxpMy0H0Z8hbW0F7qK5MfEgb+s/SRwlQ5Kmpx6um63Al1/z
 1JWw==
X-Gm-Message-State: APjAAAWchCtKHl7H0C8WaGDXTO8zUBQbfrU9MTfW2dYgpJ7600rG6Sxu
 WDdueWDhDWnVhVwzgr4vb2kZDCo=
X-Google-Smtp-Source: APXvYqxdvM5S16bwNgKtmD/8gpKaMVejRbwknzUDZRxkGiPYP4MSJdQYjH2zGFN+sh6d3qXNd4ffoQ==
X-Received: by 2002:aca:ec87:: with SMTP id k129mr16354304oih.80.1566924593136; 
 Tue, 27 Aug 2019 09:49:53 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id f21sm5435626otq.7.2019.08.27.09.49.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 09:49:52 -0700 (PDT)
Date: Tue, 27 Aug 2019 11:49:52 -0500
From: Rob Herring <robh@kernel.org>
To: Joel Stanley <joel@jms.id.au>
Subject: Re: [PATCH v2 1/2] dt-bindings: watchdog: Add ast2600 compatible
Message-ID: <20190827164952.GA24417@bogus>
References: <20190819051738.17370-1-joel@jms.id.au>
 <20190819051738.17370-2-joel@jms.id.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190819051738.17370-2-joel@jms.id.au>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_094954_066682_9597C3B5 
X-CRM114-Status: GOOD (  10.16  )
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
Cc: devicetree@vger.kernel.org, Ryan Chen <ryan_chen@aspeedtech.com>,
 linux-watchdog@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, linux-arm-kernel@lists.infradead.org,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 19 Aug 2019 14:47:37 +0930, Joel Stanley wrote:
> This adds a compatible for the ast2600, a new ASPEED SoC.
> 
> Signed-off-by: Joel Stanley <joel@jms.id.au>
> Reviewed-by: Andrew Jeffery <andrew@aj.id.au>
> ---
> v2:
>  - Add Andrew's r-b
> ---
>  Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
