Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52234A2A05
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 00:45:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h1qPrwuegD2gpyuFIekozX17baDZzt5SBGMojih9HZ8=; b=k5UTNBKv2zpa8U
	WCpsS4bL5nBuVHUrXWtfJyFheAhPp6aVF/U1DR1Qa7xre2jMO2YyoVyHrb4aamPxUqoJDeDhGi2aO
	DnoaegKS7i7zZM062sugSKaEaSOKwuqEIbpb79nzdDW398oWmaw8YdLFnXf8rG/PfxNWUzLyo11xD
	ZJ6mr2noZkMrWGWTQtefS2slxrfemE/HsWtKpCsOgMVWIj7U7C+BsiTYc6S02KzRZg58lKWWexgcT
	/ZxHcJfcmw71sT41hsf3R4uD5CDjH295G7fB9RAWCcmjlOG57gmZSiVyVpEX39INQRS8mFTeXjxbr
	anaR1UNrjtP8DggmE+Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3TAm-0000Fy-6Z; Thu, 29 Aug 2019 22:45:44 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3TAb-0000FY-Rs
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 22:45:35 +0000
Received: by mail-ot1-f65.google.com with SMTP id 90so1185576otg.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 15:45:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Z3MZ8AyPdUYVrg2y3uydcIMZSUELqZaas3HS02wvz+I=;
 b=DEfT6C5j5wBpwfxhXJjT/QhtZxVKXyumXAx4Jw0PTbr/E/qrnGJdz6BZEGIVxSlZLc
 au1cbLYzWQyIX48AKLYDXIhVZaxIqdreF87O1A2tG8ZEEBBWP+fY1lP1RHT3yGGD3yTu
 1Yk3syR7GjHR/epV43nhp4i5MEKCM93saQcg28/EYW1wxCUi95ZnMhsRQIgSOxAKBZZ9
 DQXb3g4oBNsiRAg5WyXT1vSPL8875Z4cbZ6PtGbDlSZS0V1Z4qUyCtM+3XW8u3KUEsDh
 FKVhIskdOQBoZtJXMpWWal2mj33g2/EGleTjCKqHFH3kWbHawA/+KywEIatX/MUHfApn
 mZTA==
X-Gm-Message-State: APjAAAWh0ahO5INrn5F5sbd9MVD7YhYUe4YfcK/52BGjC1WKvJw7yV0Y
 gMMNChqTXjJwTsunWoZD5g==
X-Google-Smtp-Source: APXvYqw08hxUksZnk+Z/aXJB+kDBH9rNUQIyw+xfm7lS1bkszIUlI8PcYNTsMz6OZ0Lj4Fh9S9QXRQ==
X-Received: by 2002:a9d:5601:: with SMTP id e1mr10326552oti.370.1567118732666; 
 Thu, 29 Aug 2019 15:45:32 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 63sm1280975otr.75.2019.08.29.15.45.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 15:45:31 -0700 (PDT)
Date: Thu, 29 Aug 2019 17:45:31 -0500
From: Rob Herring <robh@kernel.org>
To: megous@megous.com
Subject: Re: [RESEND PATCH 1/5] dt-bindings: net: Add compatible for
 BCM4345C5 bluetooth device
Message-ID: <20190829224531.GA747@bogus>
References: <20190823103139.17687-1-megous@megous.com>
 <20190823103139.17687-2-megous@megous.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190823103139.17687-2-megous@megous.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_154533_902931_FCE80BBB 
X-CRM114-Status: GOOD (  10.08  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
 Ondrej Jirman <megous@megous.com>, Johan Hedberg <johan.hedberg@gmail.com>,
 netdev@vger.kernel.org, Marcel Holtmann <marcel@holtmann.org>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 linux-bluetooth@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 23 Aug 2019 12:31:35 +0200, megous@megous.com wrote:
> From: Ondrej Jirman <megous@megous.com>
> 
> This is present in the AP6526 WiFi/Bluetooth 5.0 module.
> 
> Signed-off-by: Ondrej Jirman <megous@megous.com>
> ---
>  Documentation/devicetree/bindings/net/broadcom-bluetooth.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
