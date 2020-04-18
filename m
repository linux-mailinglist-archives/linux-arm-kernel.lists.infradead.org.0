Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 975A21AEC35
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 13:50:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FLU/FC5jR4jwP95HGgGhe2SRuPJhQK8vYTCfEke50HM=; b=T5Hk8FhL0cq3xy
	Wy2z55l4XXvojhjRs3AbMrOon0r3v2FFdFsC4AQ7fmCHc6R9ngPHUcAK/wO964+fxrtx3uaMRDZcr
	sYowe0PFutIUlKptD7uxFhzIScYPyB/ApRv7AbW2WhoPcUpSBouGwvFSE/8sGWw4P9ZwtswSh2DFd
	tv+RFpsWRbDSrLipTXtqeptwxEZfnIPs7hqeovysYZk5YxtFve9FzdipYMMBIRx5RsK8v5ToWa89k
	TIy2jXsgfwKObu305VVDoxBIBYa1QheflcPxE9PidwD2C7z32q/8vZeFW+9Ah+l5Pb0ekuqQP57kR
	loxdinS5xarv/3btvgLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPlzM-0001hz-MN; Sat, 18 Apr 2020 11:50:24 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPlzC-0001hB-4y
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Apr 2020 11:50:15 +0000
Received: by mail-pl1-x644.google.com with SMTP id t16so2007589plo.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 18 Apr 2020 04:50:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=t7x7mBwrdcLmRy6gPmeEMqwM6KZwtRU6wkHvtNG3wbI=;
 b=hmOH2DpHd1SfJlKqiFdUWs194K8KRA5mpQC4X9k8B65vQ4bXkkg+EdenNvq6sJlY5b
 Eiy+aGf0qRrlIvt2Z7HvQGTHRbvs2PnX0PDlZkabnjq9x5x1RREqo+KI0Tp73Hhq42/E
 S1KjcyrBl7bsakS5IMYNxIqmMYqtRPmP2H3j1SQvjKtgoKs8mxxrV9krT0wem4SYPQud
 eQfJWVMi5XN8f6dqiRTbMH9PL4w/xJqPjEWjFqK0PzYv3YC8xBafNeLkZ5lvNGXbfzsk
 TUuUgcO66eaGRpUawwnYisRZsjGNjNjj46b8mStEQ++T7faJjrgtuiSaEhY72j7mLC0j
 ueiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=t7x7mBwrdcLmRy6gPmeEMqwM6KZwtRU6wkHvtNG3wbI=;
 b=lPViqXVFgapRiNIf1BIep8hNTdPLCinV4dNJoPk7GD5xN57TkQXGJa3+XCshgqWsmv
 DYvLVnGEQ9Gi/cuHTs1f519bx/Kkr4iX6JN+AZKcGfiedeRBKA9fr7A9sUMzRkgy49bt
 BOj/dv8vbfsOa+52jfVmDoIC2iJ5SRqyb7EmU5oUWdqdYwBwgu5z/PwMRDBfzzdVDYlR
 p5NU2vSU+a4ZF7L/DMVMHUEhlr1Gg28ZgqYAolvpApZzNjYSyZuCwHjG5E/arpGCLuNn
 Q/RgAJ/UVTGyQQWFQm9WITPSMEJLW5ZVR4vrRbIz6rRQeV7hfWpa2XrJTvyz+p9DpFgY
 52nw==
X-Gm-Message-State: AGi0PuYcTLCbR/ukRd+XyOePeaVOUGEIc7nEd8OyE+02u1zorcO9QA1r
 MczChF/ebS1NfLsYcYBAZTTu/8yQHVNmUdGaLRA=
X-Google-Smtp-Source: APiQypJdq43iw4xUV6/QLxSn3B02VE0FPKDXOYpe5P9bsGiPVvtIa8M7lNnDiJjUc63A5Q3mWUbB2+Tuy2ri4POIkx8=
X-Received: by 2002:a17:902:9306:: with SMTP id
 bc6mr7866551plb.255.1587210612583; 
 Sat, 18 Apr 2020 04:50:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200418105432.11233-1-calvin.johnson@oss.nxp.com>
 <20200418105432.11233-2-calvin.johnson@oss.nxp.com>
 <20200418114116.GU25745@shell.armlinux.org.uk>
In-Reply-To: <20200418114116.GU25745@shell.armlinux.org.uk>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sat, 18 Apr 2020 14:50:01 +0300
Message-ID: <CAHp75VenEkAQ5OWtj90ij3KXTM4ZQg28Q9b_TCBwGnyC6YQKSg@mail.gmail.com>
Subject: Re: [RFC net-next PATCH v2 1/2] net/fsl: add ACPI support for mdio bus
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_045014_202798_1F71E924 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Varun Sethi <V.Sethi@nxp.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "Rajesh V . Bikkina" <rajesh.bikkina@nxp.com>,
 Madalin Bucur <madalin.bucur@oss.nxp.com>, netdev <netdev@vger.kernel.org>,
 Pankaj Bansal <pankaj.bansal@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Calvin Johnson <calvin.johnson@oss.nxp.com>, Marcin Wojtas <mw@semihalf.com>,
 Diana Madalina Craciun <diana.craciun@nxp.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Makarand Pawagi <makarand.pawagi@nxp.com>,
 Cristi Sovaiala <cristian.sovaiala@nxp.com>,
 Jeremy Linton <jeremy.linton@arm.com>, linux.cj@gmail.com,
 Ioana Ciornei <ioana.ciornei@nxp.com>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>,
 "David S. Miller" <davem@davemloft.net>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Florin Laurentiu Chiculita <florinlaurentiu.chiculita@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Apr 18, 2020 at 2:41 PM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
> On Sat, Apr 18, 2020 at 04:24:31PM +0530, Calvin Johnson wrote:

> You seem to be duplicating the OF implementation in a private driver,
> converting it to fwnode.  This is not how we develop the Linux kernel.
> We fix subsystem problems by fixing the subsystems, not by throwing
> what should be subsystem code into private drivers.

I didn't dive into the details, but I feel same way.

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
