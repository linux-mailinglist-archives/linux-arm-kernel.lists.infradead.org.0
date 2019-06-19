Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C46B64BC67
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 17:07:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1/+VEIT78CXoUGx/4Ei+dNPZ5HF7Usd6DN7apqHbB88=; b=traxNpHdiTY2wH
	2WCunIJdCfrAp6Ka6+xrdzjal9rVcxRv/ed3Pi/7Pi5GwpphwZrdwzy9t7mKYeKhpTsq1RqnCAnJ1
	aYoUnKUcWl5i1dFfGVms2TvrEcXKTZ9ZUogeelpKFdJDCvcbSwUPAJDbHZQvrnTf+a5+Jkr2WyqJw
	X9jntd+dGoL/hpELQVbjA+D3uNTy0r8kHcxMU7vQ9lQOGOtnoeNdMPsUN0Q0KhP+NS/MVE9t38O8I
	+gCWh2tkgStRACbCiCsraPndIoJ4zolmRhlA35zWCiwTrhC5ygf/nJUWuW/LLF+eunAEb5XSJThqg
	ljkeS3tm/0UXisQHmTsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdcAt-0002eA-TQ; Wed, 19 Jun 2019 15:06:59 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdc9u-00027v-8X
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 15:05:59 +0000
Received: by mail-lj1-x244.google.com with SMTP id p17so1351279ljg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 08:05:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=BDvPZcVC+gwwybYP6ypnMMEtrxI72JBl/3PlooRRbfQ=;
 b=nwNBXy7ugHOIpZRcqq/rviBTBBpICuuG2sMFsTUx8q7ghVnffYjoh226yLeNczTF5Q
 QiiYiaiIc65I16YWjKfCI1sKStqQmEeYP5ZcV45bAlTGIMUkZsZn+RJXNVF4M2oHZ9DJ
 Kv97PrR2qOCaBip2yTuA05gd2YQGXd+2Xdtcdkp5/Al/FmzdmGFC+Zwg3xHcO/Fz67Vp
 8OmnowgxqSMY+JeKLQ/9d6rMl4QVb1w8OGdoW2l3JbxbmsUZAkqjy5LhLC8R9awH0MIj
 h8ijKFkzC6ZYj2MLpaebB5Jl/XaJPRrnAZL6FT89ThmOITgCtC1jdtrivJusj7h//Rbs
 /xYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=BDvPZcVC+gwwybYP6ypnMMEtrxI72JBl/3PlooRRbfQ=;
 b=MxG2iesVGnpLDilabqVERGZ+ji+uzYs4HJPBFPpCwEtRoTbXMPQLqoF5mxVqo73r/4
 tukgvt8RXsN6ZDStyRoEuljt0JCyXyfNeBxjLybjTysz+jT5dqwTP9x004dnMY65uxOo
 qjsNX6w7cbaBrWAzN/oTnRkFm1UYxiEvl8WRSsRuser9kHIRMrYomfcP8RjH3T03Lt2d
 KMSgzLVtBx0qwoZ5BLTFawyJc0y0qdhZLb73yI0i0HDCrRvJtGMl2L31qoFuCUchzP0U
 oXWeowCaGWTUi2aKMfELqIBACMzp2fT2Kuf8Hynk1qtqrmefmMxv2oG6f08ulgRA5yBp
 wmVQ==
X-Gm-Message-State: APjAAAUCR+ZrCu7TSWu+JILRERcVLi8bnM7qCATl7St10mDvuICf92z0
 TNBe2Cn2fUA+mQN/K4ZV6x/BVg==
X-Google-Smtp-Source: APXvYqwx5U2uWXAu+vwQMCy9hcnvOqeOjcjGcEeeSmsWGmC1iZtQE4bHSeFmxejgtQLupjolK6lIwQ==
X-Received: by 2002:a2e:9188:: with SMTP id f8mr7118830ljg.33.1560956756417;
 Wed, 19 Jun 2019 08:05:56 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id q1sm2736416lfc.79.2019.06.19.08.05.54
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 19 Jun 2019 08:05:54 -0700 (PDT)
Date: Wed, 19 Jun 2019 07:09:24 -0700
From: Olof Johansson <olof@lixom.net>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2] ARM: configs: Remove useless UEVENT_HELPER_PATH
Message-ID: <20190619140924.cl33iuqndoigldgi@localhost>
References: <1559636093-26005-1-git-send-email-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559636093-26005-1-git-send-email-krzk@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_080558_350575_2A59A786 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Mans Rullgard <mans@mansr.com>, linux-aspeed@lists.ozlabs.org,
 Tony Lindgren <tony@atomide.com>, Liviu Dudau <liviu.dudau@arm.com>,
 linux-kernel@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Aaro Koskinen <aaro.koskinen@iki.fi>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Russell King <linux@armlinux.org.uk>,
 Ludovic Desroches <ludovic.desroches@microchip.com>, arm@kernel.org,
 Joel Stanley <joel@jms.id.au>, Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Jason Cooper <jason@lakedaemon.net>, Arnd Bergmann <arnd@arndb.de>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>, Sascha Hauer <s.hauer@pengutronix.de>,
 Vladimir Zapolskiy <vz@mleia.com>, NXP Linux Team <linux-imx@nxp.com>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Andrew Jeffery <andrew@aj.id.au>, Dinh Nguyen <dinguyen@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sudeep Holla <sudeep.holla@arm.com>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 04, 2019 at 10:14:53AM +0200, Krzysztof Kozlowski wrote:
> Remove the CONFIG_UEVENT_HELPER_PATH because:
> 1. It is disabled since commit 1be01d4a5714 ("driver: base: Disable
>    CONFIG_UEVENT_HELPER by default") as its dependency (UEVENT_HELPER) was
>    made default to 'n',
> 2. It is not recommended (help message: "This should not be used today
>    [...] creates a high system load") and was kept only for ancient
>    userland,
> 3. Certain userland specifically requests it to be disabled (systemd
>    README: "Legacy hotplug slows down the system and confuses udev").
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> Acked-by: Geert Uytterhoeven <geert+renesas@glider.be>
> 
> ---
> 
> Changes since v2:
> 1. Remove unrelated files.
> 2. Add Geert's ack.

So your other patch added mini2440 in a follow-up patch, but this one doesn't?!

Applied with that fixup.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
