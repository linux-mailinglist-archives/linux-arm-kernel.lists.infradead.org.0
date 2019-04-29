Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22E20DC74
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 09:01:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=id5dN6zt9THxTLj9eiv4uYlTgxCglH9lWSv+c3qGNxQ=; b=rOpQ8hhiZaQtO4
	fiphGKOdtF/yKyILAByEWqMy2diXPs7ndigOWxmGGf3Kwg1to1ZJgTk5Af+gnKTqtenYOx60E2HNN
	hgZ44UowTm21siOySWXHHe2u0SVHLfMmJ1OjXkcbnggjzZWdo2KH7TQ6ETD6f6s656I9q+EdVr7nI
	83UgWb+4h3+wBQHrw0iFZ2859gut4W39enuMvwSyqXylxXATv5GU9TB9b+x1RarPwdymaMGNJVIuq
	tRtzDIcizxxL4ZBxrQDtICIAQNeAtsYb2D9qcDtJkzAln8GRaxEjcrpK7Zq6RnL6HCFIA2c8kCJQn
	z7+m85H83H0CtNIfVniw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL0IJ-0002Uw-EI; Mon, 29 Apr 2019 07:01:43 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL0Cc-0005It-DM
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 06:55:54 +0000
Received: by mail-lf1-x141.google.com with SMTP id h18so6930692lfj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 23:55:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Itypzg7jfUS2m0bdkut55783K6r9kms23kfOAhHmrZo=;
 b=a7CUGp7Ijy2wOvMx0I5N5nxzJ1rM0JGv5zI8yDPixJ2yRC/S+JQKCtTYDi0dha/4Md
 as9nawwRvUmWiMeQrW7UrYddXhDnnIOc6pdn2pmiAo/wF7Ow7aq8W5XhKb4LC83mE4HW
 L4ANcUaBvL4NCB8sUlW+obsZFbcLbaFtn4BQKMkHOR3LhVtzXbCo/y1W+0yq4/3HXqPW
 zhewyA+GlGTgGahc12zMiUrH4bKqYqYgUwxuEzQTQNG5ojYrvs8jjG7SWgJBHZXNXFs4
 aOYBx0Lx4FbzwC9eZy2cFoP9p1HivffbZnGEU7YrJfgo9FKdowVCmfcbHf5YKx3iLImI
 MSzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Itypzg7jfUS2m0bdkut55783K6r9kms23kfOAhHmrZo=;
 b=GUWduSVXHMr7rE/PuaABWZ7o9OapbRhL6AWKbMstB43PioZ3Qjh9O/kvUTu/YFDLxf
 Zh27J/o1ePEmGBQ6Lq7tkq0UCPxLKwKvBAsFuET65UAWiLmSCDQh5LX6NJTl//+fluce
 AaVQyRPWgVTyaOT1X3rflxM+kpw0qFOzoUSXAOIyGkBNzUIds00661ikjuvQKrOLW+UE
 fWMNidLWEEZqW3qJcZB/6d65GNG8WGvD4GsM5nPUOayJyWpAZ0N0/yIfgR8dI52V7gA6
 E916G/68qZitE8//ma34m053uMFXrGE4WoH6BRw0sONYqyg+YoduDNZeO253z6U+/Y2U
 8EqQ==
X-Gm-Message-State: APjAAAUn/izKnEFcc3L3xDl2s/EVwEK2vwsJXPysVZKzC5dRiZB4bL8N
 PAXAFBR2uupvZe9e+xIf73h41Q==
X-Google-Smtp-Source: APXvYqxY0m8o16v8TB+xLLFKL0O+IXTwf7rKZmb7YFTmFHToB13IDZnCVmnoKSP218wBTNckGNO0MA==
X-Received: by 2002:ac2:4a86:: with SMTP id l6mr30635614lfp.51.1556520948853; 
 Sun, 28 Apr 2019 23:55:48 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id o12sm7042529lfl.66.2019.04.28.23.55.47
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 23:55:47 -0700 (PDT)
Date: Sun, 28 Apr 2019 23:21:01 -0700
From: Olof Johansson <olof@lixom.net>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH v3] ARM: debug-ll: add default address for digicolor
Message-ID: <20190429062101.txcoy3vup4jhw6eq@localhost>
References: <20190417151348.100050-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190417151348.100050-1-arnd@arndb.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_235551_110715_604EA945 
X-CRM114-Status: GOOD (  13.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Baruch Siach <baruch@tkos.co.il>, arm@kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 17, 2019 at 05:13:27PM +0200, Arnd Bergmann wrote:
> The digicolor platform has three UARTs, but the Kconfig.debug
> file explicitly lists port zero as the one to be used for the
> console, while not providing any default values.
> 
> This can get an automated randconfig build stuck in a loop
> waiting for the user to input the number. As we already know
> the physical address, this patch provides that number as
> default, along with a reasonable default value for the virtual
> address.
> 
> Cc: Baruch Siach <baruch@tkos.co.il>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Applied, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
