Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEA331B7144
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 11:54:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EozkJKxa/53lHwmhcI5/LnLdxTC7xRsDsVcRjfcBWws=; b=hKO9oocgtibppx
	ZCKSehLvz9Ay1ZutkaGdiSEHIOFmljOXFTv26d0VP60wucOjlzMgkmlZsI9nIK8tEYikLLx/6pS2y
	+VqFvB9TFlIKE4aAg6SLJWXozP8ZGHBZd+p0FDXXebCZO0vw+8WjMdfEjT7x44GShCEftcKE+WABD
	kAif3TeJPyCB/wONOdXecPXD7pHJ7DBnL3z+hP5a0PD1WXXCGE/fth+pmGU9ephCDTWZ0pSTuDTqQ
	qW2bkNDQH7rIpenkfAD3gqxDv0zTuzENyp/U6jBq5BjT8Szypw31rWXo5dVZ/6/DTJoZSVLBn/7z+
	iTm1K84+aNDStRM1jNpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRv2h-0006W3-8N; Fri, 24 Apr 2020 09:54:43 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRv2Y-0006VY-Tc
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 09:54:36 +0000
Received: by mail-pg1-x541.google.com with SMTP id j7so4385899pgj.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Apr 2020 02:54:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iVvYIfEqTyiL0cJpR1ziiocvVVbqCRYQEWmIpkQdSo4=;
 b=lNQg7yUM1uHwNZH9rRi6aMycHtL1Wrb5aNMA14RGDMtHDItmAykWFl25jb742vRfhF
 EToY+8xjZ3SGMPWKCWL/d0VBa26J8XWpkzgQ2YkpiobCnlFhsf2wFQJfRWFTEdJIxt+L
 tOALbRk1YJkPUconj59UScO5akAZO43/Rude99MbOaxAFladi7T3HCeVxwu3QVLyjXqW
 wuD6ASN6ByFkw5EXnKYCxq9ZKthzLmzdzmc/1QrG44xetQ7KbXWUL2MiCOgM0eeXCdQ6
 h4gYVDa3Ae5GfEJ5C1n9XwkuAvet6QEQfXGzAbAZ1naPIg45QtWPruZmvjAgTlJestom
 OZwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iVvYIfEqTyiL0cJpR1ziiocvVVbqCRYQEWmIpkQdSo4=;
 b=N/nIc+u8YidruGhi041F5ninwlsqnDmvY150CU266lfbuv1pBDz3dIkX/psPMPWdIk
 R7lESXN6JYzp7Zd9yeIz6n/mo9dm/vW80EKb43EK76QEQDqAKhxqpEJ8zVdOlwoUCdII
 WbT3J7mr/5fDmGqXwZo36puiGiPOkhQ18A4uBXaRj4d2Fv9JYNlfL5CBG25oLlgWj5zN
 +gb0dYo+Uq5bwY7jS4N9ifgtrPybwUESpVgj8Tu18nN1H9Su07OG9IHyaXyTfrGEHuEt
 7EObiv8qOFk3aK4H48uDcSbxZ1jn1dlZNeDiI2Xf/ZSlJc5rwfKNIv6l33PT2ciYSfC7
 iS9A==
X-Gm-Message-State: AGi0PuZrWXf/nLbhLLr16w13ZAcC3eJ0D0+h/l9aqIIFv+x+4E372NJG
 by0rZI0L1tabb96BaoJrAyLg2wkp6l3XqFK8wCg=
X-Google-Smtp-Source: APiQypLTdtY2h3+c0DJDMGPfzEIOPk2dta0lyKEsWgoM7Y++nWond/ddP3DuM+fDmLggdLnM2ad9czHqSI0wS3/NnOw=
X-Received: by 2002:aa7:8f26:: with SMTP id y6mr8944170pfr.36.1587722073914;
 Fri, 24 Apr 2020 02:54:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200424031617.24033-1-calvin.johnson@oss.nxp.com>
 <20200424031617.24033-2-calvin.johnson@oss.nxp.com>
 <b583f6fb-e6fe-3320-41c6-e019a4e10388@gmail.com>
 <20200424092651.GA4501@lsv03152.swis.in-blr01.nxp.com>
In-Reply-To: <20200424092651.GA4501@lsv03152.swis.in-blr01.nxp.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 24 Apr 2020 12:54:26 +0300
Message-ID: <CAHp75VdxFjzs2uj7ZYNmwt9DC386gMNahi3A_MYV4wE3kbtq=g@mail.gmail.com>
Subject: Re: [net-next PATCH v1 1/2] device property: Introduce
 fwnode_phy_find_device()
To: Calvin Johnson <calvin.johnson@oss.nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_025434_978672_68D4873B 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Cristi Sovaiala <cristian.sovaiala@nxp.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, Florian Fainelli <f.fainelli@gmail.com>,
 "Rajesh V . Bikkina" <rajesh.bikkina@nxp.com>,
 Pankaj Bansal <pankaj.bansal@nxp.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Diana Madalina Craciun <diana.craciun@nxp.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Florin Laurentiu Chiculita <florinlaurentiu.chiculita@nxp.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Madalin Bucur <madalin.bucur@oss.nxp.com>,
 Makarand Pawagi <makarand.pawagi@nxp.com>, Varun Sethi <V.Sethi@nxp.com>,
 Thomas Gleixner <tglx@linutronix.de>, Marcin Wojtas <mw@semihalf.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>, netdev <netdev@vger.kernel.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jeremy Linton <jeremy.linton@arm.com>, linux.cj@gmail.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 24, 2020 at 12:27 PM Calvin Johnson
<calvin.johnson@oss.nxp.com> wrote:
> On Thu, Apr 23, 2020 at 08:45:03PM -0700, Florian Fainelli wrote:
> > On 4/23/2020 8:16 PM, Calvin Johnson wrote:

> > If you forget to update the MAINTAINERS file, or do not place this code
> > under drivers/net/phy/* or drivers/of/of_mdio.c then this is going to
> > completely escape the sight of the PHYLIB/PHYLINK maintainers...
>
> Did you mean the following change?

I don't think this is an appreciated option.
Second one was to locate this code under drivers/net, which may be
better. And perhaps other not basic (to the properties) stuff should
be also moved to respective subsystems.

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
