Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B7E51C97C2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 19:29:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YiPVaflHwi3kYBhfUxk1y0OrkV1hOCM/3OS7ysVwpDI=; b=JwlMZYTjItOf80
	IXrPW4ApA7am8cN/H2zHW77KN6UDAL2/VsweHjJ97dxxDQ+WksXO0fbNboMfsFm2fQf8xDp83ZXJ3
	5cfHYwd1JA4U9nsqA0Io7Xs4YacgSosqWYxLGkbEtPNrdBt+VOBBUK0YKIElFIUnzX/Ii75MqPiMj
	2ucMk/LRRbrJhcJAPWhhaJk9YZpS4QVBT1orehMrT8oipXUaRu1staRLrnI0ZYr4Euw2lmUojh9bL
	FarKrhlFqB45CTwNKVkvvmF3fcqqBpgrEMiapMsOkENPQrKYnxDo5I7adeIc6WYd364WgqX5MDAYn
	AwRWjBbq9QUdna8K4/bA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWkKY-0000oz-IZ; Thu, 07 May 2020 17:29:06 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWkJM-0008Nk-Ef
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 17:27:59 +0000
Received: by mail-pg1-x543.google.com with SMTP id n11so2788153pgl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 10:27:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sI6MW+ENUHkNJh2ieEfqb2bnhAZ3RCNTWxJcYdnJPQ0=;
 b=fw6712JF9/XP6LQunEFLYb0L3Hu5ZvOjiwZaYjUOYARWSTU6cUpPwT1mREY73Q0lcz
 Ux/KeXELOEUHJXhu+fQdD2m+PvZLEgLRXD9LHp5MtiJP9eimFksIXjI/cy3nfvc3vo6c
 EnHUBiCI3w93ddm9j9zO6dnfk9CkchHGY/+2IAZNTQoXNwBPgeZyh71Spr8dvDJIyw/+
 UbXKl1uzTrdWUsPYYMIzS4tnSCKePPqGcXUK7g5HcX9zheTZs6yjaODjo8LMj7+RYfuG
 Z0ayJgokLlO3FWlitIERjSFHHzD510h8OGBamTktyIiycyrQAc/XdIxYy0AJQpUE4o6R
 lJSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sI6MW+ENUHkNJh2ieEfqb2bnhAZ3RCNTWxJcYdnJPQ0=;
 b=I4Soxy2muOVYuV8cNClryW82W/3odw6ldkj/mFDbQVtZdjfsSgAF52a5JjkdHQZE7V
 kPz1D4BsgQd5wKEnuv4ibhdDiEsGjjHw5cQPp1ot+Eb0xExKinFKR951ZL2kYd9DRiUN
 5xoNHhwj2QGpqwk0aaK7gyyCJGZ2WUGcAu6bVkWOGj8jeuPsClO/2eQWZtlWZNb2k11u
 ShAFlZLWjo7xeJ4nEUU7hP62dIBMq5gZwQ6JCGMIsp9T01iZUsIZba6a6LaYvzE/hzS2
 oSfiBa2ha2H/H9L6xdccrCPaVk0m/TbjROvQOxDf/vUg71bNwm3WiQMgL1CABdR2Isdw
 qHeg==
X-Gm-Message-State: AGi0PuaqEAvh8JTXEBZJIXXM/SGLKYZFPLvdzx1AW8fdx8YZY+W96PSR
 Hgucr8gZSFQi6G6NxjfnVx/sI1OuwOfrbGnZRek=
X-Google-Smtp-Source: APiQypI7YgiQ9vvHBaf8ZcHCNpabxiuE+6U2dZsbLwFTkafu86kfC64HTxUYw0xpEU0ELMf7TkAsxj3N30X42MNPPSc=
X-Received: by 2002:aa7:8f26:: with SMTP id y6mr15059528pfr.36.1588872471304; 
 Thu, 07 May 2020 10:27:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200505132905.10276-1-calvin.johnson@oss.nxp.com>
 <20200505132905.10276-5-calvin.johnson@oss.nxp.com>
 <67e263cf-5cd7-98d1-56ff-ebd9ac2265b6@arm.com>
In-Reply-To: <67e263cf-5cd7-98d1-56ff-ebd9ac2265b6@arm.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 7 May 2020 20:27:44 +0300
Message-ID: <CAHp75Vew8Fh6HEoOACk+J9KCpw+AE2t2+oFnXteK1eShopfYAA@mail.gmail.com>
Subject: Re: [net-next PATCH v3 4/5] net: phy: Introduce fwnode_get_phy_id()
To: Jeremy Linton <jeremy.linton@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_102752_586695_F40387FC 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 "Rafael J . Wysocki" <rafael@kernel.org>,
 Cristi Sovaiala <cristian.sovaiala@nxp.com>,
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
 Laurentiu Tudor <laurentiu.tudor@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Calvin Johnson <calvin.johnson@oss.nxp.com>, linux.cj@gmail.com,
 netdev <netdev@vger.kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 7, 2020 at 4:26 PM Jeremy Linton <jeremy.linton@arm.com> wrote:
> On 5/5/20 8:29 AM, Calvin Johnson wrote:

> > +             if (sscanf(cp, "ethernet-phy-id%4x.%4x",
> > +                        &upper, &lower) == 2) {
> > +                     *phy_id = ((upper & 0xFFFF) << 16) | (lower & 0xFFFF);
> > +                     return 0;
> > +             }

> Isn't the ACPI _CID() conceptually similar to the DT compatible
> property?

Where?

> It even appears to be getting used in a similar way to
> identify particular phy drivers in this case.

_CID() is a string. It can't be used as pure number.

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
