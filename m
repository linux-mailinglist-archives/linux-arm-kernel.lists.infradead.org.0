Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 343C818658C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 08:22:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r27hWcoOLsQiRASlCw6TpmunJL3pm2SyBWayVbB2HaQ=; b=WGX4ltRPuHyNqM
	GEFWUjcyesHaka6RDrkQ3lXG1fi+Qk8MDQVJ9ZtBA0L73sxHaJFPAdm5qURzTtenQY63IEhGs3eG/
	8uEbNsWy2/PQ79KZIIyKuA1J6A+2rtivtuZmKUJpu81KUZTRXE8MVLqYRo7hp05uwlKcZijCmN9pO
	sAGZXMtUd6A4mXE4wQL2ZWd/SZyxSTFm2mB2xZPNBqiLHSvJ/553+UCC9VMoxe/Ibc+MS6eznD3k2
	KHp9hiT4h6ruPTU0sbd3cBvXnbAu3/k1E4sqqFxAFeyox7ITej9Nr81nqMhZWt4EAzOT6b4/fu5rB
	Hye6tGrQn+pheQjhbSww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDk4i-0003i9-0q; Mon, 16 Mar 2020 07:22:12 +0000
Received: from mail-lf1-f65.google.com ([209.85.167.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDk4Y-0003h5-VO
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 07:22:04 +0000
Received: by mail-lf1-f65.google.com with SMTP id j11so13077428lfg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Mar 2020 00:22:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=I7aBKCm8kI2F7Jl47saMU25REPiGQ5/LzV7PSFh0a9E=;
 b=IxaiDcD7aPMkW1MGvxPMYVjHcNxTabD2Fo0mh5DfsPi/xXNn+8+P0Vk/pdMwgMvv9w
 vqpKbGWJEAtqg1RqfzSRCxoHJbvSzzMvZpGDkfpWWj+PB6SbEfZXzdPjqXmDIVPG6OZZ
 B55AXdUWDGqNnxy13GhGVnZtWyShKocUh9M71u/gjep6Qklf5OfhFXyS8lJIhRT7YLbn
 oFILDm6hVY/2UzsarEqYeCurOQKo0676c1OQzIWkeQZy9pgmTGRc+7H1AD+QCJA9Iwjx
 jcjBuoWDYi0zhBGRsIWqtTaXmyeMvPu3eQZIH853PoXvbQfJLu+k45XLtlXC2SjhV4sa
 M8HQ==
X-Gm-Message-State: ANhLgQ1JQ8ozWYMtMw0RSIazFNya3U/K5Lw6K/2rYZgIqO9s+GyWT+2e
 dgYAgwF65PmNTS9HfTphxOo=
X-Google-Smtp-Source: ADFU+vvfXaI0eA6zxF80cwGW+BpzLifqbMXqRzCrqipFgyDI9intGbzRrLSOburBVMZ/TzFxex69dw==
X-Received: by 2002:a19:6f44:: with SMTP id n4mr16199861lfk.59.1584343320572; 
 Mon, 16 Mar 2020 00:22:00 -0700 (PDT)
Received: from xi.terra (c-12aae455.07-184-6d6c6d4.bbcust.telenor.se.
 [85.228.170.18])
 by smtp.gmail.com with ESMTPSA id a10sm14618994ljb.23.2020.03.16.00.21.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Mar 2020 00:21:59 -0700 (PDT)
Received: from johan by xi.terra with local (Exim 4.92.3)
 (envelope-from <johan@kernel.org>)
 id 1jDk4F-0002Bi-58; Mon, 16 Mar 2020 08:21:43 +0100
Date: Mon, 16 Mar 2020 08:21:43 +0100
From: Johan Hovold <johan@kernel.org>
To: Sasha Levin <sashal@kernel.org>
Subject: Re: [PATCH AUTOSEL 5.5 05/41] ARM: dts: imx6dl-colibri-eval-v3: fix
 sram compatible properties
Message-ID: <20200316072143.GT14211@localhost>
References: <20200316023319.749-1-sashal@kernel.org>
 <20200316023319.749-5-sashal@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200316023319.749-5-sashal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_002203_009804_0708B2AE 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jhovold[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.65 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Johan Hovold <johan@kernel.org>,
 Oleksandr Suvorov <oleksandr.suvorov@toradex.com>,
 Sanchayan Maity <maitysanchayan@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Mar 15, 2020 at 10:32:43PM -0400, Sasha Levin wrote:
> From: Johan Hovold <johan@kernel.org>
> 
> [ Upstream commit bcbf53a0dab50980867476994f6079c1ec5bb3a3 ]
> 
> The sram-node compatible properties have mistakingly combined the
> model-specific string with the generic "mtd-ram" string.
> 
> Note that neither "cy7c1019dv33-10zsxi, mtd-ram" or
> "cy7c1019dv33-10zsxi" are used by any in-kernel driver and they are
> not present in any binding.
> 
> The physmap driver will however bind to platform devices that specify
> "mtd-ram".
> 
> Fixes: fc48e76489fd ("ARM: dts: imx6: Add support for Toradex Colibri iMX6 module")
> Cc: Sanchayan Maity <maitysanchayan@gmail.com>
> Cc: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Signed-off-by: Johan Hovold <johan@kernel.org>
> Reviewed-by: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
> Signed-off-by: Shawn Guo <shawnguo@kernel.org>
> Signed-off-by: Sasha Levin <sashal@kernel.org>

Greg has already dropped this one from the stable queues once on my
request, so please do not add it back.

Johan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
