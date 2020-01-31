Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 542FC14EF51
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 16:15:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rxObKde5eszfRXCldd7FXaHpEfjmFZHIXZ5ylHFlHIE=; b=VPnzxITQ9qdjEJ
	k2iydGkHv8g9fYj1Mf0ytKCeZh4jjf/DIvCJZso/LU8RWZW/RbfYr9VIX0MtXvcvlgp7sqI2joB3t
	qq3HI4UfCTdIfIEKAl4doAiDy2Fui8Kyq70g1fTvtFB+1DMCUr2yqOVz0enBdE9HZzZxPbskgAqN+
	/AtjXMl0/2NapiBvso8Y3+CqYJyauY00osOxT2vEiLId+ZLtiUxkSkQzRfQvVBcWMdEeii8/JONrE
	WUd6UcSrmE1UKQuRWHlEbeLQDco5UjEd4ZN7NBK/cZHFG4tnlfaaUC3nNSTjnvoSpqCJg1XOlNV4+
	0gIHZONb4Z7Q7wypg06g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixY1G-0003VC-Fy; Fri, 31 Jan 2020 15:15:42 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixY17-0003UY-0O
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 15:15:34 +0000
Received: by mail-yw1-xc41.google.com with SMTP id f204so3961065ywc.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 Jan 2020 07:15:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solid-run-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dKqqlpA+EkYjXixe2TS2xK7+DyD3uNKJKEB0gcN7Kss=;
 b=zM91B1671UUjUt7B4XhWH0jKv4TzeL2OGkjsxZr6YetTM6KnFw900Ukel/cRquX0U6
 /s2JfZpPbKUq/hyBOchczdnZP5oy6LHCnqrOZHmBiurBK22nhFbHBa0kNR9a7mmo7Ooy
 uXyyJl8Sw6q2bVInAbUXGqW1AXzLWuOuP7wcwOH0a406Qljft7LX0O9wfukjwAudPtZP
 NXoNfOkGncX1sLCF6A2cABmwx2anxLMJJj+k5cQQtCy9BdKCV+MVJFeKCh5ER4Mc2zJz
 wa+9WuxuAWSoLKZimoK3BKKytP0yZHM7LdE34XG08cOSXqyxkEWSXLPQyK9sCOJc/9ct
 zBrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dKqqlpA+EkYjXixe2TS2xK7+DyD3uNKJKEB0gcN7Kss=;
 b=BftUjpbXZLY4r3m7vtF4HdMLnawQSRLcCgJjb/OnhLM9rDB+sikSowdvQiQGJEueL+
 nTSET0IQurqtBBrkB4VrQtxEdBVeYde5k09fwOXJpgrihAxT/Z/3AZzb6aCLecJH05gW
 7YSrGjj0GmuoGlMKaOHKaC8ntg+me9QN4CbPss3tLOaGAoMtZ+ck8jIL1hIQ6cynijae
 NcGFUPFZVxEIZn/v2PEC2eTsNdQlZKocqlxz9hY1SeWNXv4dYg6/UkN7qYonWt3J9Vhc
 8v138wQ0o7F3K97bs38MBsZKjtoXvu3HGQU+ciBvaSv4cpVqOfkdmyoFzJb79AnmWi9L
 k4rQ==
X-Gm-Message-State: APjAAAVpAu2LkaTM0tjxvIBX6hkb5ng6ksi/blu8ZWrBRmpG9y2AL+Cy
 Ip5259JsOa3+DLurCnap+xO3GgOGvKe4LtjnDJogdQ==
X-Google-Smtp-Source: APXvYqwsAGpGy6tic5rDdkc84xGCO6z1ubMWeOs7PNuXCUuhqHHO+HdXDIU+E2oTbdCyqF+X9ln5AxdumM3moQc/u34=
X-Received: by 2002:a25:e790:: with SMTP id e138mr822292ybh.120.1580483731154; 
 Fri, 31 Jan 2020 07:15:31 -0800 (PST)
MIME-Version: 1.0
References: <20200128110916.GA491@e121166-lin.cambridge.arm.com>
 <DB8PR04MB7164DDF48480956F05886DABEB070@DB8PR04MB7164.eurprd04.prod.outlook.com>
 <12531d6c569c7e14dffe8e288d9f4a0b@kernel.org>
 <CAKv+Gu8uaJBmy5wDgk=uzcmC4vkEyOjW=JRvhpjfsdh-HcOCLg@mail.gmail.com>
 <CABdtJHsu9R9g4mn25=9EW3jkCMhnej_rfkiRzo3OCX4cv4hpUQ@mail.gmail.com>
 <0680c2ce-cff0-d163-6bd9-1eb39be06eee@arm.com>
 <CABdtJHuLZeNd9bQZ-cmQi00WnObYPvM=BdWNw4EMpOFHjRd70w@mail.gmail.com>
 <b136adc4-be48-82df-0592-97b4ba11dd79@arm.com> <20200131142906.GG9639@lunn.ch>
 <20200131144737.GA4948@willie-the-truck> <20200131150929.GB13902@lunn.ch>
In-Reply-To: <20200131150929.GB13902@lunn.ch>
From: Jon Nettleton <jon@solid-run.com>
Date: Fri, 31 Jan 2020 16:14:55 +0100
Message-ID: <CABdtJHs5zdS=unviHX3=Gsbf=q9ooS0sYMUAbtvaZT0D0ORNkw@mail.gmail.com>
Subject: Re: [EXT] Re: [PATCH] bus: fsl-mc: Add ACPI support for fsl-mc
To: Andrew Lunn <andrew@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_071533_098060_3CA29112 
X-CRM114-Status: GOOD (  16.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Calvin Johnson <calvin.johnson@nxp.com>, stuyoder@gmail.com,
 nleeder@codeaurora.org, Hanjun Guo <guohanjun@huawei.com>,
 Cristi Sovaiala <cristian.sovaiala@nxp.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, Will Deacon <will@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Marc Zyngier <maz@kernel.org>,
 Pankaj Bansal <pankaj.bansal@nxp.com>, Russell King <linux@armlinux.org.uk>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Len Brown <lenb@kernel.org>, Jason Cooper <jason@lakedaemon.net>,
 Andy Wang <Andy.Wang@arm.com>, Makarand Pawagi <makarand.pawagi@nxp.com>,
 Varun Sethi <V.Sethi@nxp.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>, Paul Yang <Paul.Yang@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 "<netdev@vger.kernel.org>" <netdev@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 31, 2020 at 4:09 PM Andrew Lunn <andrew@lunn.ch> wrote:
>
> > Devicetree to the rescue!
>
> Yes, exactly. We have good, standardised descriptions for most of this
> in device tree. And phylink can handle SFP and SFP+. Nobody has worked
> on QSFP yet, since phylink has mostly been pushed by the embedded
> world and 40G is not yet popular in the embedded world.
>
> > Entertaining the use of ACPI without any firmware abstraction for this
> > hardware really feels like a square peg / round hole situation, so I'm
> > assuming somebody's telling you that you need it "FOAR ENTAPRYZE". Who
> > is it and can you tell them to bog off?
>
> The issues here is that SFPs are appearing in more and more server
> systems, replacing plain old copper Ethernet. If the boxes use off the
> shelf Mellanox or Intel PCIe cards, it is not an issue. But silicon
> vendors are integrating this into the SoC in the ARM way of doing
> things, memory mapped, spread over a number of controllers, not a
> single PCIe device.
>
> Maybe we need hybrid systems. Plain, old, simple, boring things like
> CPUs, serial ports, SATA, PCIe busses are described in ACPI. Complex
> interesting things are in DT. The hard thing is the interface between
> the two. DT having a phandle to an ACPI object, e.g a GPIO, interrupt
> or an i2c bus.
>
>    Andrew

Just as a review reference, I have found an old attempted
implementation documented here.
https://github.com/CumulusNetworks/apd-tools/wiki

-Jon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
