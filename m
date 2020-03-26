Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4993619476F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 20:30:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zirye/eiylzjznkc+KscbQZzFfrItSCQMTo3bKnah4k=; b=L/lE1Trc2TcWHI
	5MapHaSbiwtSqjM39oSXVEG7cL9+Q1RVrV7TRMkyA9e9Nso2FyrR964zSksLlOrwuOWJc6IHt61Aq
	UHIHUa4Z8dxLNfVDE+oUFv3xHU66a3zSWeJRG1Usk0E3z8BNQhvKH1Y4AeERx6tgIICGeLDs5cRei
	1WhYU7+6oNvGouzspxhRQ2/y5VVABRFtRFSJ5lNJxJdmmakvpxRUWN4nXbWCfZacJUu7GNWyejQaU
	+J26t75Qql8AOIj3MivYa7Jk32tnB1T/fXgHa6Y+YJKOn9LWM/qZFcOqOTcmLc+qB1ehUWZCzgoXC
	k8uUk96Dei1/1OAGfyXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHYCc-0004Kx-Na; Thu, 26 Mar 2020 19:30:06 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHYCQ-0004KH-HU
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 19:29:56 +0000
Received: from mail-qv1-f43.google.com ([209.85.219.43]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MPK73-1is4rT0xQb-00PetG for <linux-arm-kernel@lists.infradead.org>; Thu,
 26 Mar 2020 20:29:50 +0100
Received: by mail-qv1-f43.google.com with SMTP id cy12so3677648qvb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 12:29:49 -0700 (PDT)
X-Gm-Message-State: ANhLgQ17TXhJ4uuaxU+xYc/HO/zsN+0XBHA7q2+9uQHYuNIjc4i6blOv
 evGWiOYDlmzEqzKKO9zGD9y0iP2z9nxFoVy1/AM=
X-Google-Smtp-Source: ADFU+vtebL0Vl/8+KSiuYPcBObBHDY1ynMOduVeQODa8V/OGL8udbgmaVv0RRinPBFQ2WFX44tqsQBOzHEYrlOMMcxk=
X-Received: by 2002:a0c:9e2f:: with SMTP id p47mr9427627qve.211.1585250988968; 
 Thu, 26 Mar 2020 12:29:48 -0700 (PDT)
MIME-Version: 1.0
References: <5e7cdaf9.1c69fb81.7b511.491d@mx.google.com>
In-Reply-To: <5e7cdaf9.1c69fb81.7b511.491d@mx.google.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 26 Mar 2020 20:29:32 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0eRw1rn3QzsO0omJHNJ8ftNFJkixBmdmUTGxenDZbZVw@mail.gmail.com>
Message-ID: <CAK8P3a0eRw1rn3QzsO0omJHNJ8ftNFJkixBmdmUTGxenDZbZVw@mail.gmail.com>
Subject: ux500 warnings, Re: soc build: 52 warnings 2 failures
 (soc/v5.6-rc6-845-ga9295ff5fc977)
To: "Olof's autobuilder" <build@lixom.net>
X-Provags-ID: V03:K1:E058gcykom1cxOGSQ/LFTR5bfYxcfIeNRKwERrxUd0NF9okwHM6
 HBiB0SFLEQODKGqfwtd7jug9uFN9OYtkGiVF14+hmjJNx7gCYqMlO+Y6t3lpGwSuEyCUEeB
 Zwz1riwwAxEE5FzPtuAJEgLwnOz0vkM8dBMmSTUg8QDtlYaoZHMvPhzxeLTONKere8kot8H
 8UFOUqVim6WYttmLKEPtQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:du1RIytw6EQ=:TNTTE5SG2lVLxvYeBwy7HS
 PEJlj5ma6kJQgNxv+dqLxV2WLjNZOo4Zak8xpHdFpkgJQhyxTzjRGIw2fqZnJTRpWvkr2L0LH
 +oB9N52rRT9opCNyp/ncOOsBNKFD+b1WbxTag12oT/3Nq2t60KTaJ9zqgWlmgw0K82PI4NZqN
 LF13WoYBcVe6I8HCb+3u+3nQsUQzFCPJbm8Y6gr5FX6mC64hrlFEYiqyp57a17dg5oLS49uHw
 n5dEGCxXMcVJUpZ+cWTXYv5zPlziJKb1YfuB0EELTnnj/QcPjf3RQPxph1l9PB92KIRVoXwqK
 oFTCYLdSeTsTpoe0jt+cUZMpvRHtZD29mCN4N29gDBr+Ux1bfhQFMIghiBAVpNe1ri8Z8IdKi
 wTwFuUaL4sBuTaNRUgcjrg+EAH/7ZkJJskGlgYZQoG7GXg5YiLqNGoYzlR761jySiV1gbuRwS
 UY742sPZhCtIKOX9ZA9xom8KlagLEVnksSEm/iElwHpjEucunwCL7xR+90V1SltusmH+B74c1
 /EVAKVKNmYuKnhxnXNlucjSjQigxAydlseVmT2IgbPzRwjvjn1N7IRE7Vz9gJ6j/R+YSPeTvL
 lePQGgtcR5ozpWR7fmUwiRhDe1O9E74KTqMameT91IOJsyv6QsRfsQpxwyOrdA51XklJO0c11
 60XWZLp4ySqWzLRSpUMqB/ZrrVtpXdGacZGZ+GSRo/rs8P8rKa0DFgIJM9w7qknc6Jl060AUM
 FSlnUOilYfxUUMVAC8WPFrNKpMt9GOKJ41FBRzcVH+n9stxhqH/3kzgmnGg0GJ0kToCgiFSJ4
 kJ5kr01RIr26nJ45sHvQAf/cDXQmazMgRvsw0ZfsYzKcMI5dVs=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_122954_869682_13CA2C49 
X-CRM114-Status: UNSURE (   7.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Olof Johansson <olof@lixom.net>, Linus Walleij <linus.walleij@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Kernel Build Reports Mailman List <kernel-build-reports@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 26, 2020 at 5:42 PM Olof's autobuilder <build@lixom.net> wrote:
>
> DTS Warnings:
>
> /build/arch/arm/boot/dts/ste-href-stuib.dtsi:203.11-208.7: Warning (avoid_default_addr_size): /soc/mcde@a0350000/dsi@a0351000/panel: Relying on default #address-cells value
> /build/arch/arm/boot/dts/ste-href-stuib.dtsi:203.11-208.7: Warning (avoid_default_addr_size): /soc/mcde@a0350000/dsi@a0351000/panel: Relying on default #size-cells value
> /build/arch/arm/boot/dts/ste-href-stuib.dtsi:205.6-16: Warning (reg_format): /soc/mcde@a0350000/dsi@a0351000/panel:reg: property has invalid length (4 bytes) (#address-cells == 2, #size-cells == 1)

These stick out to me (more below). Linus, have you seen them before?
I just merged your ux500 DT series, which may have introduced the
warnings (I have not checked older build logs yet).

      Arnd

> /build/arch/arm/boot/dts/ste-ux500-samsung-skomer.dts:374.11-387.7: Warning (avoid_default_addr_size): /soc/mcde@a0350000/dsi@a0351000/panel: Relying on default #address-cells value
> /build/arch/arm/boot/dts/ste-ux500-samsung-skomer.dts:374.11-387.7: Warning (avoid_default_addr_size): /soc/mcde@a0350000/dsi@a0351000/panel: Relying on default #size-cells value
> /build/arch/arm/boot/dts/ste-ux500-samsung-skomer.dts:377.6-16: Warning (reg_format): /soc/mcde@a0350000/dsi@a0351000/panel:reg: property has invalid length (4 bytes) (#address-cells == 2, #size-cells == 1)
> arch/arm/boot/dts/ste-hrefprev60-stuib.dtb: Warning (i2c_bus_reg): Failed prerequisite 'reg_format'
> arch/arm/boot/dts/ste-hrefprev60-stuib.dtb: Warning (pci_device_bus_num): Failed prerequisite 'reg_format'
> arch/arm/boot/dts/ste-hrefprev60-stuib.dtb: Warning (spi_bus_reg): Failed prerequisite 'reg_format'
> arch/arm/boot/dts/ste-hrefv60plus-stuib.dtb: Warning (i2c_bus_reg): Failed prerequisite 'reg_format'
> arch/arm/boot/dts/ste-hrefv60plus-stuib.dtb: Warning (pci_device_bus_num): Failed prerequisite 'reg_format'
> arch/arm/boot/dts/ste-hrefv60plus-stuib.dtb: Warning (spi_bus_reg): Failed prerequisite 'reg_format'
> arch/arm/boot/dts/ste-ux500-samsung-skomer.dtb: Warning (i2c_bus_reg): Failed prerequisite 'reg_format'
> arch/arm/boot/dts/ste-ux500-samsung-skomer.dtb: Warning (pci_device_bus_num): Failed prerequisite 'reg_format'
> arch/arm/boot/dts/ste-ux500-samsung-skomer.dtb: Warning (spi_bus_reg): Failed prerequisite 'reg_format'
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
