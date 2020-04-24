Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 706311B714F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 11:57:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d4NmY95CFLZ1jaUXlM6rhHX47QxYvIPoFa6O5Xqwbyc=; b=gS30jYE+SpV0b3
	ngUzv1eTPHwa8NDFvzKr5mjIbUe9/9zJ2afo+A3y5X4dKeARMNNUMY7Ed3flmF+V0nmnQHznaldjS
	Sk+MKkXVEyJLEZyXwa91bPTj6AatWUljAwwZlqantngRqQG7cBSpU9vvH+6q/YAc1gPfKYhjuplpz
	6NcMbrP7fO8r5b3NLvZEWeCU5z0Z7J9ro/XuCNuOBr6Ksq49yH1FpyPXxO6uJ4CjuFyzf/MsNwZQ6
	fdndAx2jKF+J68ElJ9aBnuSS60s5cvTfCH6lrP7wFgIl6AVpbk9SYwQzaHtoBE4zYPhLJ8Y9kbf8V
	HKLgztHcJVYXe+vdTNFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRv4p-000105-3o; Fri, 24 Apr 2020 09:56:55 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRv4e-0000zk-T1
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 09:56:46 +0000
Received: by mail-pf1-x442.google.com with SMTP id d184so4570282pfd.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Apr 2020 02:56:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8g1Qeu2PJu2OXoQ3lMahtFGRconFZq/a+DVsXd6HwAs=;
 b=EDPb40iEk4xe3gjopzZRdm0PXV3UNcBpXaXQwvVkK6Gks2ubrPWTqneru4oMuXdOQ+
 m7wy7cLJ3DarRKECjTxse5/OCNU8WhkX9FzcjaAsbkcSJjgUqg9VujC2sVwjqPSN3tyA
 /ANiw4DBFT5aOy0Bku0574L44kTcWhA4BioScPGRYTP/Z9SKqeC8o8RzXN5EK6K83lym
 Xh7XjAfAxREZFaFXIbMziFSjKK1KTPY3/8ZZrPvK3zwGMd59OGKyaH/uAmT1ctyVznxb
 l1TOx83AIqjULTw+Oxi1uQKjo5n/eRoROEUseVnCN2ta84Kd6xXTNnPJLShRiFASMzbl
 azdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8g1Qeu2PJu2OXoQ3lMahtFGRconFZq/a+DVsXd6HwAs=;
 b=XwmchfI8bDKnfWmZbf039Yy8pbICJD2ACGoXJVZZLVXzvbK87NPIgjXqpFUusUjSDA
 VSL573n8gP9jSNiIH4kh/5t6cwqecAoZL/dTVUUVsIKeqhOIJSIsPq94CW/UFjJqQYlp
 53VQHHUWuZcjFIUYQNDxrEl9I4j7gjoaatBwBhmIudt2nyYb0kAq93h3BvM1iRclQd67
 P4a/8Bnaao9DF4j64cNdhwUGRJaSMPT5rJ3+gIs1dTepEPU7E8EJ+7Qm89vUdob/e8Na
 nNeGPzAwDPOR2qR6YTpCR9i42FvMuIabvmI4IS+rqwsSExhmdUeqjDuxZOsNAi/2CufM
 yEYg==
X-Gm-Message-State: AGi0PuYiEriZrx3A71arDlhnBU76xIi3xunIjqmUSoh7L7grpCShflnY
 B91jVVXyVuwadsDMSkcu4ezxjWl4L72l9MF1mmw=
X-Google-Smtp-Source: APiQypJoSVO02AhLEULSq00w+T9tSO+dGfUkCB9MaeL3fJM2YBvorpMGA+TqH8RN4vRqzgEpcjgVuiAnEW+pfufBUxc=
X-Received: by 2002:a63:1d4:: with SMTP id 203mr8109776pgb.74.1587722204197;
 Fri, 24 Apr 2020 02:56:44 -0700 (PDT)
MIME-Version: 1.0
References: <20200424031617.24033-1-calvin.johnson@oss.nxp.com>
 <20200424031617.24033-3-calvin.johnson@oss.nxp.com>
In-Reply-To: <20200424031617.24033-3-calvin.johnson@oss.nxp.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 24 Apr 2020 12:56:37 +0300
Message-ID: <CAHp75Vftq3OEEC5DfW8CgV4yQKZ3doD-r6khXxgn0oOmrLnLkA@mail.gmail.com>
Subject: Re: [net-next PATCH v1 2/2] phylink: introduce
 phylink_fwnode_phy_connect()
To: Calvin Johnson <calvin.johnson@oss.nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_025644_940022_A944FF49 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew Lunn <andrew@lunn.ch>, Cristi Sovaiala <cristian.sovaiala@nxp.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, Florian Fainelli <f.fainelli@gmail.com>,
 "Rajesh V . Bikkina" <rajesh.bikkina@nxp.com>,
 Pankaj Bansal <pankaj.bansal@nxp.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Diana Madalina Craciun <diana.craciun@nxp.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Florin Laurentiu Chiculita <florinlaurentiu.chiculita@nxp.com>,
 Madalin Bucur <madalin.bucur@oss.nxp.com>,
 Makarand Pawagi <makarand.pawagi@nxp.com>, Varun Sethi <V.Sethi@nxp.com>,
 Marcin Wojtas <mw@semihalf.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>, netdev <netdev@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jeremy Linton <jeremy.linton@arm.com>, linux.cj@gmail.com,
 "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 24, 2020 at 6:17 AM Calvin Johnson
<calvin.johnson@oss.nxp.com> wrote:
>
> Define phylink_fwnode_phy_connect() to connect phy specified by
> a fwnode to a phylink instance. This function will handle both
> DT and ACPI nodes.

>  #include <linux/spinlock.h>
>  #include <linux/timer.h>
>  #include <linux/workqueue.h>
> +#include <linux/acpi.h>

Looks like broken order.

> +       if (is_of_node(fwnode)) {
> +       } else if (is_acpi_node(fwnode)) {
> +       }

I'm wondering if there is an API that allows you to drop all this
stuff. In property provider agnostic code we really don't want to see
this.

> +       if (!phy_dev)
> +               return -ENODEV;

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
