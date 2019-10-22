Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80D35E0C1E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 21:01:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=akIYNEbdnvuoeGp4JJ2oKWt/cy5Fgi1Q3ZrGKVHlTTI=; b=pUl8AcB5GgRnlp
	jc84oWUWO+FjXq6H9dKm2dMbGyW1pbLohwnn25lTlba8aarO4KmdMe6fgTgqHLz0DyhU2ENdvA20U
	dBdqvyeInEbPZwcd/KW0UIdO/1wravaGs/NroxukjavaR4MeTIBbKmxQK9xeTJveg55zfrnt4vq1s
	G/j9x/CdjyGY4+zMdekm0tD5rViCi3upLf9vsHUVyrJwkXNjHRqU7XnmOuclqcljZfGCABFgLrt0U
	8zScdwLPI3RN5Rh1XXIDNAXaoknhpzRRZTjKxFIg2IeXHeHadqb/OPPYH5ce1UOAzWFNRdgyHDHhH
	KRoLtGmQ9RUVJreeRDLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMzPQ-0008WK-SY; Tue, 22 Oct 2019 19:01:32 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMzPG-0008VP-2k
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 19:01:23 +0000
Received: by mail-io1-xd41.google.com with SMTP id t18so17658626iog.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 12:01:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VfxSHYvmdEv1sm79e3HTi1RwgAIgEe7zqfMJ263x0xg=;
 b=m6gaYXo+SBJ6yxQUD50EHP8m/o2zWCUkcm4zfRYWPqsxcCaBtfI4gR70AjPI0kgvRn
 oCBJaeHHmvWwyrNPxa4K3iZBQtYc/YciryW1xokRbVbPel4OAQ7wD3RdVFT+QbqAs+F5
 PNNim372/STeko7kwHy7AUVu0XinaDph2biqSG7OFr66mu66wVP9slSSX6L8361YyVbX
 OToJI9/0WCGDmYz1T7ylnPlyUNEkU0JcnkGqSYmNelV95xkG9izQyosIY7Lsb5CeSKKA
 +/XTgAK8JkkRzYT4SgeRBxN3/f6/fF8O8r7Gz0ca473uHMql5bZDE40m1U3Nq0GX1mEe
 Pi3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VfxSHYvmdEv1sm79e3HTi1RwgAIgEe7zqfMJ263x0xg=;
 b=T7PCiPACS1kHE/m0y8v4Yq9A50NlXkMx5Y/H2ss+jgAV6u7SqjqD/L8EqzMDDDd656
 xuyhzofX5pbPRwNm6Gy9auxv2R8qI4yFq7KR+nTnQJMrNCft+zmZsRp9Z4TbD6qs8bLy
 sIaa4MH8oUfXCd/VljAIJsxXJ9gwvLSJGknI0R8QAStX2Trb/RVRqEnn9jUPhC5gjEOx
 ba4MpHUlOjhw/jHpw64/l3w/m4x3BUQjCvG3T6KYgEb7zicx1qAwe5W+hUuP5YnRCQN0
 U8BfQl74BFhyb5wyIxP95a1j5ti+fEKqcybszUhEPxii6VnU8YVilJG6t3liIrV4WIcI
 oVow==
X-Gm-Message-State: APjAAAXbiRK15k1BbOzOmNCaLZ5pdWVmCB5E7soynWMcd6r6avmuCEJb
 TugxsRCnYglUF/5MY2q/TjbkeoSrGD4gIBYP4eO86g==
X-Google-Smtp-Source: APXvYqzQASMPJfj+YZm2OBbuJQoz80q16/O9naj7kf1/88RbHylyV8nyZmARfqkPQXvQ0Q9vaSY+MetI2GXnLHntuLQ=
X-Received: by 2002:a02:c519:: with SMTP id s25mr5378905jam.3.1571770880220;
 Tue, 22 Oct 2019 12:01:20 -0700 (PDT)
MIME-Version: 1.0
References: <20191007220540.30690-1-aford173@gmail.com>
 <20191022162223.GU5610@atomide.com>
In-Reply-To: <20191022162223.GU5610@atomide.com>
From: Adam Ford <aford173@gmail.com>
Date: Tue, 22 Oct 2019 14:01:08 -0500
Message-ID: <CAHCN7xLy975mxX+cm56PMx-TKODEZjYPfMHb=byspKxYXXq7OA@mail.gmail.com>
Subject: Re: [PATCH 1/2] configs: ARM: omap2plus: Enable OMAP3_THERMAL
To: Tony Lindgren <tony@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_120122_159439_5E8B421B 
X-CRM114-Status: GOOD (  24.71  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 "H. Nikolaus Schaller" <hns@goldelico.com>,
 Russell King <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
 Linux-OMAP <linux-omap@vger.kernel.org>, Adam Ford <adam.ford@logicpd.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 22, 2019 at 11:22 AM Tony Lindgren <tony@atomide.com> wrote:
>
> Hi,
>
> * Adam Ford <aford173@gmail.com> [191007 15:06]:
> > The some in the OMAP3 family have a bandgap thermal sensor, but
> > omap2plus has it disabled.
> >
> > This patch enables the OMAP3_THERMAL by default like the rest of
> > the OMAP family.
>
> Looks like this breaks off mode during idle for omap3, and that's
> probably why it never got enabled. The difference in power
> consumption during idle is about 7mW vs 32mW for the SoC as
> measured from torpedo shunt for main_battery_som.
>
> I think the right fix might be simply to add handling for
> CPU_CLUSTER_PM_ENTER to the related thermal driver to disable
> it during idle like we have for gpio-omap.c for example.

I am not sure I know where to start on fixing that issue.  Would you
entertain enabling the driver if we set the device tree to 'disabled'
by default?  This way if people want to to use it, it can be enabled
on a per-device option.  Once the power stuff gets resolved, we might
be able to enable it by default.  For people who are planning on using
the DM3730 @ 1GHz in high temp environments, I am not sure they'll
care about low power.

I'll try to look into it when I have time, but I was hoping a
compromise might be a reasonable work-around.

adam
>
> Regards,
>
> Tony
>
> >
> > Signed-off-by: Adam Ford <aford173@gmail.com>
> >
> > diff --git a/arch/arm/configs/omap2plus_defconfig b/arch/arm/configs/omap2plus_defconfig
> > index 8f1c2b6f9e56..7e14a8c8bb29 100644
> > --- a/arch/arm/configs/omap2plus_defconfig
> > +++ b/arch/arm/configs/omap2plus_defconfig
> > @@ -292,6 +292,7 @@ CONFIG_THERMAL_GOV_FAIR_SHARE=y
> >  CONFIG_THERMAL_GOV_USER_SPACE=y
> >  CONFIG_CPU_THERMAL=y
> >  CONFIG_TI_THERMAL=y
> > +CONFIG_OMAP3_THERMAL=y
> >  CONFIG_OMAP4_THERMAL=y
> >  CONFIG_OMAP5_THERMAL=y
> >  CONFIG_DRA752_THERMAL=y
> > --
> > 2.17.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
