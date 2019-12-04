Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40EFA112FCC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 17:16:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=izfO/i7P9giU7mgYj3PlknwdjdiDavXMlGePeQ4RtvQ=; b=J7na/tk+F4zZgk
	jhYzXpNTCWo3OC3wRTuu4vhdrDkU6MFxTN65lqQ75f55rLnxTcBYp05WPOfWmBA5EAtfPYTEn7eok
	eUu4oiWa0/5XX28DLNoZ0Wp8QwXfil5ZaiyR+dPrXdQZc9XiaC/t0ZefKAjHbu3KBneukhAv7ZZ9q
	N1Ba/jVObxeGjrSGxH2SXvlycrn76nanht7wE1/h1aqkNHcMacy8gnfKqBMKkjsfP5YjBSjolSovX
	0sf+JgPYh7oSYVBmvKOrCwzfGZTNB/XP+2hwj09CePiKuTNEDbyvLCos3I2qVuy4M+C1ZGLXgVWOj
	j67JGcytDU649eWvlYsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icXKh-00065x-HK; Wed, 04 Dec 2019 16:16:55 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icXKY-00065P-67
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 16:16:47 +0000
Received: by mail-pl1-x643.google.com with SMTP id q16so3347408plr.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 08:16:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=pqU4igCndeG4UoCDSucNu4GwL3x2y+vfWi/Ebs1wzZc=;
 b=J6wW9rQZNctPpcpaRobDFMExB93/ZEkzhTam2T23ewBpNq8vpq3su7cM3xksiLZRNj
 VWPwta8xYcL1/FVMAdHrrQqm0c6LIyIsxgxue6Nal0v0DU7ls9RPDkIGRGiUemkCZKbz
 42pJxBUytOxLa7bu52MpYJG4PcBntgRTHizCN1Yh/q1pnqXc3Uqc2I+E/MoFiC7fxL5k
 wFc3uc1nXh85UFVB2mLGjIjtD49oKFf/fDu/OREA03+FCqWDtXvfnkLlcT93j4BX7+rC
 hAV9eg9itNtdgLH1AOehHAfFNPjXTPeR9v8kLgmX3SQ0aTeAkM/nMKIeKGQ8GydaR7cm
 lu5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=pqU4igCndeG4UoCDSucNu4GwL3x2y+vfWi/Ebs1wzZc=;
 b=Q5DYch3tCNkSZWurSB4imIiSHdQl+//0bg0ina/dSYL+oezH+huub4oicl+maq9JdU
 XDa0LT9HWhibe8UQV8joWMlYQz109ZkSzbJzM2H7CjgeVRoiHHGwkDv7arDhPxb0W15K
 DC5HATnVbYhYl9nO66b3f67irPTq+OiQhDY0F3ceEk3MIIYmKWM9ddtusDROAA9iBu0Q
 ex6v1Zb73d2kyRGrzFbrZQw3E7oBZN2C+KT2FKbqe98JgJSJgxGZXkUYEG5plVfjT3M+
 BWwJHLrjYEV1XE4ELrNzbTTH0tm9rGoysIjcXfCe1L6FSqtcouujNA36skufYbp3Z1T4
 INYQ==
X-Gm-Message-State: APjAAAWaZDCDTvjf0SJzFfULW6EqqaWqErz2jwPnh7fiHbVpdGyS6XDi
 yazJSA7r65WjHJ8TY3sGEXI=
X-Google-Smtp-Source: APXvYqwdytT3wxqOWmWAUSezJYS9o3F9w3oCV/vG1Nqu53f+3nOnX41jUHMdU6TBi2uG6y1+LpWSnw==
X-Received: by 2002:a17:90b:3011:: with SMTP id
 hg17mr4116854pjb.90.1575476205426; 
 Wed, 04 Dec 2019 08:16:45 -0800 (PST)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id x186sm8346024pfx.105.2019.12.04.08.16.42
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 04 Dec 2019 08:16:43 -0800 (PST)
Date: Wed, 4 Dec 2019 08:16:41 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v7 16/25] arm: Add support for generic vDSO (causing crash)
Message-ID: <20191204161641.GA28130@roeck-us.net>
References: <20190621095252.32307-1-vincenzo.frascino@arm.com>
 <20190621095252.32307-17-vincenzo.frascino@arm.com>
 <20191204135159.GA7210@roeck-us.net>
 <6cdf4734-4065-09c1-8623-1bf523b38c1b@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6cdf4734-4065-09c1-8623-1bf523b38c1b@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_081646_252943_F9A90B88 
X-CRM114-Status: GOOD (  18.10  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: linux-arch@vger.kernel.org, Shuah Khan <shuah@kernel.org>,
 Shijith Thotton <sthotton@marvell.com>,
 Andre Przywara <andre.przywara@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Huw Davies <huw@codeweavers.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 linux-mips@vger.kernel.org, Dmitry Safonov <0x7f454c46@gmail.com>,
 Paul Burton <paul.burton@mips.com>, linux-kselftest@vger.kernel.org,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Russell King <linux@armlinux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 Mark Salyzyn <salyzyn@android.com>, Peter Collingbourne <pcc@google.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 04, 2019 at 01:58:25PM +0000, Vincenzo Frascino wrote:
> Hi Guenter,
> 
> On 12/4/19 1:51 PM, Guenter Roeck wrote:
> > On Fri, Jun 21, 2019 at 10:52:43AM +0100, Vincenzo Frascino wrote:
> >> The arm vDSO library requires some adaptations to use to take advantage
> >> of the newly introduced generic vDSO library.
> >>
> >> Introduce the following changes:
> >>  - Modification vdso.c to be compliant with the common vdso datapage
> >>  - Use of lib/vdso for gettimeofday
> >>  - Implementation of elf note
> >>
> >> Cc: Russell King <linux@armlinux.org.uk>
> >> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> > 
> > This patch causes a crash with qemu's mcimx6ul-evk emulation while running
> > imx_v6_v7_defconfig.
> > 
> 
> Thank you for reporting this. Could you please provide some details on how I can
> reproduce the scenario you are describing?
> 
- Build imx_v6_v7_defconfig
- Get root file system or initrd, for example from
  https://github.com/groeck/linux-build-test/tree/master/rootfs/arm
- Run image. Example, with initrd:
	qemu-system-arm -M mcimx6ul-evk -kernel arch/arm/boot/zImage \
		-no-reboot -initrd rootfs-armv7a.cpio \
		-m 256 -display none -serial null \
		--append 'rdinit=/sbin/init earlycon=ec_imx6q,mmio,0x21e8000,115200n8 console=ttymxc1,115200'
		-dtb arch/arm/boot/dts/imx6ul-14x14-evk.dtb \
		-nographic -monitor null -serial stdio

qemu has to be v3.1 or later to support the machine.

Hope this helps,
Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
