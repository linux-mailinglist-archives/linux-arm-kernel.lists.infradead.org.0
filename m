Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3DF77CE2B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 22:23:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WLNQ9WIiaq+WmgkEptJfh5b4f4kjxPJzkIjdy7mifFs=; b=nE8RbEoHGa03Lw
	S8lrlgX4N9MGaJJ/1D+zuac7unImXdwlkAY+02NRZ8HmsAlgI8sR7rNeIWw+7Q9fRrKCE0RicNZ8E
	6/Rmq5MTYHDAc01sVYgFZbAkGW+6hAhT8+apYYnQgD+b9o3/nEzJWSMkRquv1zxdz/9nbH/7DIgHf
	n7PfT3H3b4GdP+NcNTZVd2usaFzCb7ZkdOFHjFypzC1yznXtEUtMzCCGWglRFONWtJXTduGPqjGpJ
	+IKSYMI1LDlkacMtbcr3QiGjdQARkA2Csb+oRxA259rj1y+1h4HMMpjHPRnGJc3nlze+Nhj3WXs9X
	L6rj0tVdsNP7p6q9d3CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsv8e-0006am-6U; Wed, 31 Jul 2019 20:23:56 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsv8U-0006aM-AN
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 20:23:47 +0000
Received: by mail-pf1-x443.google.com with SMTP id r1so32489296pfq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 13:23:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=jg6LpuBlwiakTWn00cF7QTchO6WVnUEalrcWh+rhFhQ=;
 b=NetebDi8LWfmYil4wII+z77FnbFXJrjJqOfJE4yfRYhEVtTZLt0dex72fQtD/WEivo
 /cFJJLveBYmqagG7fk1H4+lHfg/LtNxk7WkoxkBuV4gmVerwWMAyUcLKbQBX+G2CYtjX
 Jjk9ChdMFfdGYK/808Bqq9CtgLiB2k7ZLAfYZse6R+Lqnk5J4XX1LGdiIEhNflC1nHQi
 4Iwyle5nvbsRHP6DEii6yd3f3BCQmkkoZLrc4Jo3PJbHrZLSO67TMHPDl5QeMHBijXwM
 D7PJZaL60jhLYBx325ryS5L8KKWdN+zuXjZCgGtjCxhFFdU5VlqxmK7kE55ourydCBAL
 ZBvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=jg6LpuBlwiakTWn00cF7QTchO6WVnUEalrcWh+rhFhQ=;
 b=ftRtlIwxKhLDiUl+jyWu/L/pQoxDXcZzxV23Hl4LVsuZU+BIl6gye2WLtpilu6zX9a
 iL5wvdcTuJujaK+c1DN9y2x/3RzH8vyggqV9hR1k/kdoNSyzWhXWEA/jhh2z3hkVWpS2
 7fzpso8nNfRiZCtLO6bhIpUzjMdocfLtZKmrfXn48YR5f/p88n/OSrH7mYgmRM2HyKhS
 3aspIp+XA1aIEaYnMI663HuX5LGm93782OAeXDRFiBgsDsbnU74EtMkv//DcUm6Pugyp
 8ytTQeNkA+mA+a4urdqWq/9ZF6QRcSFpIYQPKNpZjWfX+J1I6QcNeq/CieKxZn3V7vKT
 wsNA==
X-Gm-Message-State: APjAAAVIW/7hY4tLunbzd6OdDn/MD9lol1PGYdx6UoHeICmdvY7idi+4
 fdS8FHLyJGjdDBl16LJlu6Y=
X-Google-Smtp-Source: APXvYqxFP/F/KABOC41QDxnZEEDUlVlMeFDkQJOJGDPiDWt7Gv7V95ma+jPFVW4RjNICCcKISset4w==
X-Received: by 2002:aa7:8e10:: with SMTP id c16mr48041020pfr.124.1564604625848; 
 Wed, 31 Jul 2019 13:23:45 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id g2sm112378919pfq.88.2019.07.31.13.23.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 13:23:44 -0700 (PDT)
Date: Wed, 31 Jul 2019 13:23:43 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 03/14] watchdog: pnx4008_wdt: allow compile-testing
Message-ID: <20190731202343.GA14817@roeck-us.net>
References: <20190731195713.3150463-1-arnd@arndb.de>
 <20190731195713.3150463-4-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731195713.3150463-4-arnd@arndb.de>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_132346_357877_497767FB 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, linux-watchdog@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jason Cooper <jason@lakedaemon.net>,
 "David S. Miller" <davem@davemloft.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Gregory Clement <gregory.clement@bootlin.com>, linux-usb@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, Vladimir Zapolskiy <vz@mleia.com>,
 linux-gpio@vger.kernel.org, soc@kernel.org, netdev@vger.kernel.org,
 Alan Stern <stern@rowland.harvard.edu>, linux-serial@vger.kernel.org,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 09:56:45PM +0200, Arnd Bergmann wrote:
> The only thing that prevents building this driver on other
> platforms is the mach/hardware.h include, which is not actually
> used here at all, so remove the line and allow CONFIG_COMPILE_TEST.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

What is the plan for this patch ? Push through watchdog
or through your branch ?

Thanks,
Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
