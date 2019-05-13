Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 816A61BC32
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 19:48:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fgIpGQ6Un44ps0XsSKzycB+phjgQwikNTnSkjWtlXLQ=; b=YdVUOOLEyeJXL3
	WuOyCv0Zm5VOlnd/zeaUvzC/X1EDPYzdFroyFyhrX+wHFCCo61X2vka/civViKMguZzh1301TUCMZ
	GcTOII4XoWez66Kmpc3J1IRoiUYLQKcpyjRRtt8b7rVeF77a64M5qb1wQ1ut9nUZBNUaGqzDoQnWz
	pgPU5Gvs2ErM+mnzfJkuoV/WXM0GsFAKlXivxFI6xpywt9nDjwLv58Nf9rJ4IGeiobyvILQJfXmN2
	3nDi5ywnUruNVxabmnfXTGn4zXzYyi8koy9WEL60HynB67oTPdZ8XBQkSbQstAm5Ji4pujOi1/9gW
	lCMVhvAb/ZBAOMwhs/wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQF3y-0006Rn-DF; Mon, 13 May 2019 17:48:34 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQF3m-0006QP-S6
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 17:48:27 +0000
Received: by mail-ot1-f67.google.com with SMTP id r10so11864856otd.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 10:48:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=gkHpJzWFAksIMv+VI682dKhDhr4Fbw0OiglBoy3hzNs=;
 b=Imu3BR9McKHdRYY7axtsFAlRDInldupfH8DCpculmFxB6urEFlsaVPkv7AZsN6tHwq
 3rKKEJHnt4lOtr4TltmBazXXgIJQgyfYLmsenH6lo4VTFKv8mjlIi8VFQGNZhVMRkI7k
 hyna5pT9IC7pToXZrpKufJ/+iqWwsvd0Y9LXc1/rVwxbScXLkPOOAsIvS9aDoL9CyL6Y
 43ch2yLZKheEhxMOAIp+Ru+btIi0JLh1cfELSqTdh/D6O8lQyHLnE7s1qxySIINXXr7n
 5pZ46qgxYWFIBBOSlYHN5VEgAaCYsui+MlgHOU7C6G3p7Mh6AUQBCzx9Y67tntVJ/Qs/
 hZQg==
X-Gm-Message-State: APjAAAUG64qt9we4czecOn9ThXEqHbKfOYLRFbN5M6a+XeSQwmJx6tTO
 Bdl6wjcRI+0QiR+1OBEDmw==
X-Google-Smtp-Source: APXvYqyDNm+2TRXIedzOkppCtpoGAVu0Y//bfN1IBeyWcv0SwaLYFxVbDIaB5w/V3N+DpWu8gG67sA==
X-Received: by 2002:a05:6830:164e:: with SMTP id
 h14mr17428711otr.321.1557769701976; 
 Mon, 13 May 2019 10:48:21 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id e9sm6164134otf.48.2019.05.13.10.48.20
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 May 2019 10:48:20 -0700 (PDT)
Date: Mon, 13 May 2019 12:48:20 -0500
From: Rob Herring <robh@kernel.org>
To: Claudiu.Beznea@microchip.com
Subject: Re: [PATCH v3 3/4] dt-bindings: clk: at91: add bindings for
 SAM9X60's  slow clock controller
Message-ID: <20190513174820.GA16840@bogus>
References: <1557487388-32098-1-git-send-email-claudiu.beznea@microchip.com>
 <1557487388-32098-4-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557487388-32098-4-git-send-email-claudiu.beznea@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_104826_261004_182154E1 
X-CRM114-Status: GOOD (  12.86  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 alexandre.belloni@bootlin.com, sboyd@kernel.org, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, Claudiu.Beznea@microchip.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 10 May 2019 11:23:35 +0000, <Claudiu.Beznea@microchip.com> wrote:
> From: Claudiu Beznea <claudiu.beznea@microchip.com>
> 
> Add bindings for SAM9X60's slow clock controller.
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> ---
> 
> Hi Rob,
> 
> I didn't added your Reviewed-by tag to this version since I changed
> the driver with regards to clock-cells DT binding (and I though you
> may want to comment on this).
> 
> Thank you,
> Claudiu Beznea
> 
>  Documentation/devicetree/bindings/clock/at91-clock.txt | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
