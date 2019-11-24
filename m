Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F23A0108272
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 Nov 2019 08:31:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TADDlNk/ZeC6AnyP28hx4EOit8l5CUCJ7ROsn/VXGi0=; b=bqO2ZlSWRIhIjd79Ahq4gjqXo5
	4HKlTxy3hfReLEtzGZoHXA69oImFLCZ3wfUZX6CNrUNjcwVxtnIC8wnKVYb1pwqzqodSkbldB4teg
	drXjw4cGAkL708LT6A5qmpnQgZnMLrxuRuKpwP0KicrRmHVjRXe9v2kLGUU+yuftBIkaq9Ze6nYaB
	SQZO6xeSqGcGTMZtSouOb35faWErjhvRvcWrU9BNEjiZUKf5eaMJF1vOVeTUn+fzrwfZpXUAqnZmk
	MRKzKDQpYjGORP2re8+QV/kQjtUDuT9sCyCazjb3GJ66tlVx1mn+YniWq3+qGQLCeD1IzYj8gROFd
	qsJ9Kv3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYmMd-0007Qo-BG; Sun, 24 Nov 2019 07:31:23 +0000
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYmMU-0007Q6-V5
 for linux-arm-kernel@lists.infradead.org; Sun, 24 Nov 2019 07:31:17 +0000
Received: from tarshish (unknown [10.0.8.3])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.tkos.co.il (Postfix) with ESMTPS id F3685440778;
 Sun, 24 Nov 2019 09:31:06 +0200 (IST)
References: <7BB0B44E-A78D-4DDF-962E-5C8130B6F31A@voleatech.de>
User-agent: mu4e 1.2.0; emacs 26.1
From: Baruch Siach <baruch@tkos.co.il>
To: Sven Auhagen <sven.auhagen@voleatech.de>
Subject: Re: CP110 Comphy Issue
In-reply-to: <7BB0B44E-A78D-4DDF-962E-5C8130B6F31A@voleatech.de>
Date: Sun, 24 Nov 2019 09:31:06 +0200
Message-ID: <874kythgsl.fsf@tarshish>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191123_233115_223219_9FEB7C8F 
X-CRM114-Status: GOOD (  13.38  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: linux-arm-kernel@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sven, Miquel,

On Sun, Nov 24 2019, Sven Auhagen wrote:
> I am testing Kernel 5.4 RC8 with the new CP110 comphy initialization
> and it does not work for our custom board on CP 1 PCIE0.
>
> It hangs on phy up indefinitely during boot.
>
> CP0 PCIE0 works fine.
>
> I am using:
> +&cp1_pcie0 {
> +              pinctrl-names = "default";
> +              pinctrl-0 = <&cp0_pci1_reset_pins>;
> +              num-lanes = <1>;
> +              //num-viewport = <8>;
> +              reset-gpios = <&cp0_gpio2 1 GPIO_ACTIVE_LOW>;
> +              //rx-disable-gpio = <&cp0_gpio2 20 GPIO_ACTIVE_LOW>;
> +              phys = <&cp1_comphy0 0>;
> +              phy-names = "cp1-pcie0-x1-phy";
> +              status = "okay";
> +};
>
> And this one works
>
> +&cp0_pcie0 {
> +              pinctrl-names = "default";
> +              pinctrl-0 = <&cp0_pci0_reset_pins>;
> +              num-lanes = <1>;
> +              //num-viewport = <8>;
> +              reset-gpios = <&cp0_gpio2 0 GPIO_ACTIVE_LOW>;
> +              //rx-disable-gpio = <&cp0_gpio2 19 GPIO_ACTIVE_LOW>;
> +              phys = <&cp0_comphy0 0>;
> +              phy-names = "cp0-pcie0-x1-phy";
> +              status = "okay";
> +};
> +
>
> I am using u-boot 2019.04 and ATF 2.1.
> PCIe is initialized by U-Boot.
>
> I was using a ported version of the comphy code from the marvell linux
> github before which did not have this problem.
>
> Let me know if I can debug anything here on my end.

One important bit of missing information is that the board is based on
Armada 8040.

baruch

--
     http://baruch.siach.name/blog/                  ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.52.368.4656, http://www.tkos.co.il -

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
