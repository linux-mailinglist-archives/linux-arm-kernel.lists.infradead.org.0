Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE3EC54E4B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 14:05:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QCpw6BmDXVKeAowI7xBtzhiHg74FPIOXJpL5n8WW/3Q=; b=q39yBKfUKGOLDl
	hfpg1oSMVi8IocQ33+e4ryVI5Kw+qv4iNw+On1EL951952q7kdh1qtqrIZpjPjWMyA1/xwBTygn34
	M5N1JYMU3wlCPPgwMMFvxqG9wAeR7dRmUaYnBKlcOiYIUc1131bgoPJFxs8c83gkBh8KI6hX2XtlC
	XGx3Q56pL5EJe4imtpvooA4iWdQ4VWuRqiqmzF2nAbpluFBKkLIMKvA8W1qbmkz1YbgGwL+dql4iF
	6lxRYCqxfrBa48CXBm3K5vviVjiAaw+3B5/Rst9fO1MRgGH/C7oIoCxPzTfW/Olwy0kq1EUEyibTW
	IgWxH0aI4x5wt7l3xyIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkCQ-000076-TO; Tue, 25 Jun 2019 12:05:22 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkBN-0008FH-Tj
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 12:04:19 +0000
Received: by mail-lf1-x142.google.com with SMTP id q26so12465535lfc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 05:04:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=PB1rw3vXfCT4+u25HYq0tmcjSmKl2wAOx1X83ZW82Fc=;
 b=cMG2I9XS536Nv2vwqDi2o60PZ1MtRmz3nA04GOdHRSxLQ5zcpoBL6vhJjrOosF0Yhw
 zSQJL/AquI+f/RgvlEj531QJK4QQDs7kgLNimYl2+aGvr5Y7eaYCMmd1GpYGu0HsJgv7
 1wzQ9eUuAIvAt6vOKaxJ5jv59tp4sOWHxGKb1e1B/wuxlGOJH9L17H5RbMkJ0t6lcGVd
 qRSgg5lmqZ7K+ESbIX+KSnGqXurI7Va3mQpaZrQRbwxAu1eq1JYc17v0XIhK+HBTbKpS
 TDZiLWv9nJnHES25s801sd1B8Ok5BlOabBy+c8bCKl9UYBa2/+onZ4vo6uacNhuKYarf
 chRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=PB1rw3vXfCT4+u25HYq0tmcjSmKl2wAOx1X83ZW82Fc=;
 b=sQdwzy02j2H+iCasjfFUFpPP0efK0mNZgTU+48GW+u3TGOTYqAfF7H9vIGIVe49K/7
 vypGG9DEbUGvCUh5rT5ZL52JvE5ca7kQOeykCSnPE4rpDRelMDBARoOiNc8KGkCy5mly
 yckmrhTLUo4P1HmyoOBIQwxC44SBBPAFMpSTThzx6JwpQCKUEs4ZWDonTty5zHMXIJSk
 i/+YaVHJ7eNB0ce0GcVyoy4Xu51b0zKBNohmshg+nnoU0smDteGuzMpfubrqGu5mScp3
 kng3TbgVjxLg148kcJw1YPQtC9N/ghtRU7PP4Z1rEZpaQduiCCupKEeD0R8AUYQxOaw3
 HVXw==
X-Gm-Message-State: APjAAAVsJDCX7iaxWnA4NkPszW2hjtc3W/9Cr2PxOVru7BpOKr2Bl/Lz
 joGxCaI1xxoLRGDQwBZ3YEj21w==
X-Google-Smtp-Source: APXvYqznyMG7ECDmQXbRE5Qng0WKde+8K74na+gaVs+GzsTET1KPdmXO2TFQQJnafkOd87lHqn5KPQ==
X-Received: by 2002:ac2:46ef:: with SMTP id q15mr17222127lfo.63.1561464256033; 
 Tue, 25 Jun 2019 05:04:16 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id a70sm2223137ljf.57.2019.06.25.05.04.13
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Jun 2019 05:04:14 -0700 (PDT)
Date: Tue, 25 Jun 2019 04:17:16 -0700
From: Olof Johansson <olof@lixom.net>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [GIT PULL 1/6] Broadcom devicetree changes for 5.3
Message-ID: <20190625111716.ljna7ca772orjd63@localhost>
References: <20190612025028.13118-1-f.fainelli@gmail.com>
 <20190619133538.64htegz3xepd2mu7@localhost>
 <7b1ed927-bc60-c5a1-6255-b4180776cba3@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7b1ed927-bc60-c5a1-6255-b4180776cba3@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_050417_993641_C0CB6282 
X-CRM114-Status: GOOD (  22.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org, arm@kernel.org, arnd@arndb.de,
 Kevin Hilman <khilman@kernel.org>, Eric Anholt <eric@anholt.net>,
 Lukas Wunner <lukas@wunner.de>, bcm-kernel-feedback-list@broadcom.com,
 Stefan Wahren <wahrenst@gmx.net>, Martin Sperl <kernel@martin.sperl.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jun 22, 2019 at 07:22:27PM -0700, Florian Fainelli wrote:
> 
> 
> On 6/19/2019 6:35 AM, Olof Johansson wrote:
> > On Tue, Jun 11, 2019 at 07:50:23PM -0700, Florian Fainelli wrote:
> >> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> >>
> >>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> >>
> >> are available in the Git repository at:
> >>
> >>   https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.3/devicetree
> >>
> >> for you to fetch changes up to 34b1441452e550169b4d3647a4f851d9332d4b76:
> >>
> >>   ARM: dts: BCM5301X: Fix most DTC W=1 warnings (2019-06-11 15:07:56 -0700)
> >>
> >> ----------------------------------------------------------------
> >> This pull request contain Broadcom ARM-based SoCs Device Tree changes
> >> for 5.3 please pull the following:
> >>
> >> - Lukas enables DMA support for the BCM2835 (Raspberry Pi) SPI
> >>   controller
> >>
> >> - Florian fixes a number of dtc W=1 warnings in the Broadcom DTS files
> >>   and provides a fix for devices failing to boot after the removal of
> >>   skelton.dtsi (that commit has been submitted as a separate fix)
> >>
> >> ----------------------------------------------------------------
> >> Florian Fainelli (9):
> >>       Merge tag 'tags/bcm2835-dt-next-2019-06-01' into devicetree/next
> >>       ARM: dts: bcm: Add missing device_type = "memory" property
> >>       ARM: dts: Fix BCM7445 DTC warnings
> >>       ARM: dts: Cygnus: Fix most DTC W=1 warnings
> >>       ARM: dts: bcm-mobile: Fix most DTC W=1 warnings
> >>       ARM: dts: BCM53573: Fix DTC W=1 warnings
> >>       ARM: dts: BCM63xx: Fix DTC W=1 warnings
> >>       ARM: dts: NSP: Fix the bulk of W=1 DTC warnings
> >>       ARM: dts: BCM5301X: Fix most DTC W=1 warnings
> >>
> >> Lukas Wunner (1):
> >>       ARM: bcm283x: Enable DMA support for SPI controller
> > 
> > Something went wrong here. I merged your pull request for the missing
> > device_type that had commit e8bd76dccd79 for that patch.
> > 
> > Here you have the same patch here as 0e9e8c404ec2. While git normally handles
> > this alright, in this case the warning removals changes the line above so you
> > get a merge conflict for every file and that's a lot to fix up.
> > 
> > Would you mind rebuilding this branch on top of your fixes to keep that patch
> > at the same commit?
> 
> Yes, absolutely. It looks like [GIT PULL 5/6] Broadcom soc changes for
> 5.3 has not been merged yet, is everything okay with that one?

It is merged, but arm-soc didn't have the latest contents pushed to it. We
mostly use 'soc' as the main tree, and usually I remember to push the same
contents to arm-soc but I missed last time around.

(We also switched linux-next over the last few days).


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
