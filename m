Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AE06D7221
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 11:23:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1x5DRb9w5sBZBwple9/r9PD0pVU+J4VA2Teb3NQpaXM=; b=qHvwDWDxxyMr3z
	7ErBzXGqFknC0TG9ylJzl1eV9rK6AZmTmpbE0OVaySiVyF0GeXfgM1daCAXcoM198F4GBx6qx2Ll1
	dJgJkdOyQ/NM4xda550qTAVERcHq0EPe5IYMRYg2K6tQPcIchOMObl3BPLY05XcW2n1zZvWcC/m4X
	Uukr0dq9jNlUEQzQzJfsumb49Qp0nmarG2cI9zv3Qq76JWXU+QdLreSx9sbiUe/JVwojZR1S6XMx3
	QITFsaOTJ03G73nrrbDiEKQqKpQSLc5c47wNJrrGBW8H9QJZx86qnf8P7IF6tohG40fFhcuUP2GWA
	6n9KmQ2zYvAi3q6vlxWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKJ2r-0003UO-8F; Tue, 15 Oct 2019 09:23:09 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKJ2O-0003FA-Ke
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 09:22:42 +0000
Received: by mail-wr1-x441.google.com with SMTP id n14so22865416wrw.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 02:22:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=2je19/jggqbWGMcPX5ioTjzRrP7lElzkm+gR+CMtb1s=;
 b=t6ymZoFbHyXWn7joBIpKhc1/Fk7hGoXzMT7H0wq4ZeHllCiAji04Xri2PLIyIEe0K4
 aV6Hd+5tLEJuEjhpZeMxPh8uWPYl5fmPcVXoNvUvMWxnL3HIDs5SQsJOka8gOtVcgJyu
 bTpCLu48QLSl0y06glXhzj3r6eN+YadDUz6uElqozVW/mfDvsLeeRm/I9qRi/tkmMXAO
 9WF1Cuo7ga1gWqH2yhmo/ZMPYfPMdTUcgNEOM5+x7JLI7uA72NdHfzZDfWEzN5Aohpz7
 2Uy6krH2/5nS8XW+mUcWCpiOi7ozFkAK89bTklLmSPjCTPV7snMkcD/xR1vclSk1E6hX
 /MhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=2je19/jggqbWGMcPX5ioTjzRrP7lElzkm+gR+CMtb1s=;
 b=uSzCVgLT8H4YsnjsIDIwJ2tTWWtyS+KgeVb5KRUoev4zgRlD3wyqtgfCLOcTDUSrnL
 8obIVZIRYuDfsb3F0OC2ipNud4wk1xDj4Ex+WqXq9oVQh20a3MTAnlpmdMK3XIsqnUVZ
 nw++/MXRbZGG9j/TLeFEtweD5hymHFrOrWV9Y7bU+WaM89JdC8HOwKgPbQdi/Y42tI50
 lZvtfvkzKmYsGUnXqXW+s7g/b1GzOY0Obbvvg0Fi1q1MbvySmDdHOhLr41E6d4qR/h8i
 jBoK0kDCveQU5T9iIPgnjEQOsW5QRrQ1+6SwPmKxvLpD1z1e7lO/OtMbkrgNR4lR+38J
 XRQw==
X-Gm-Message-State: APjAAAXcJ3uFGbPoJTz/3uUgwTJOPHAcE7CvLxGaT+yCEqg580nPPg6w
 f8VglKbeo1Ml9yieP+rdBi1t9g==
X-Google-Smtp-Source: APXvYqwtTGnp6OslciBY1LUwBRbdzvF4fDuwq90HSlfX12UVnZt+lZAJaFSOB1eOJV7AXXat0IRRuA==
X-Received: by 2002:a05:6000:1283:: with SMTP id
 f3mr27844709wrx.370.1571131357654; 
 Tue, 15 Oct 2019 02:22:37 -0700 (PDT)
Received: from [74.125.133.108] ([149.199.62.130])
 by smtp.gmail.com with ESMTPSA id z6sm19523901wro.16.2019.10.15.02.22.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 15 Oct 2019 02:22:36 -0700 (PDT)
Subject: Re: [PATCH] serial: core: Use cons->index for preferred console
 registration
To: Geert Uytterhoeven <geert@linux-m68k.org>,
 Michal Simek <michal.simek@xilinx.com>
References: <4a877f1c7189a7c45b59a6ebfc3de607e8758949.1567434470.git.michal.simek@xilinx.com>
 <CAMuHMdWY2VsY-CyAxSvpm1XYicAWqU7NORSQofQ+T195DwyLUg@mail.gmail.com>
From: Michal Simek <monstr@monstr.eu>
Message-ID: <7284590f-2b74-1b47-2d61-783ad8d5f46f@monstr.eu>
Date: Tue, 15 Oct 2019 11:22:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAMuHMdWY2VsY-CyAxSvpm1XYicAWqU7NORSQofQ+T195DwyLUg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_022240_884442_B8ED1E9B 
X-CRM114-Status: GOOD (  20.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Jiri Slaby <jslaby@suse.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Geert,

On 15. 10. 19 11:19, Geert Uytterhoeven wrote:
> Hi Michal,
> 
> On Mon, Sep 2, 2019 at 4:29 PM Michal Simek <michal.simek@xilinx.com> wrote:
>> The reason for this patch is xilinx_uartps driver which create one dynamic
>> instance per IP with unique major and minor combinations. drv->nr is in
>> this case all the time setup to 1. That means that uport->line is all the
>> time setup to 0 and drv->tty_driver->name_base is doing shift in name to
>> for example ttyPS3.
>>
>> register_console() is looping over console_cmdline array and looking for
>> proper name/index combination which is in our case ttyPS/3.
>> That's why every instance of driver needs to be registered with proper
>> combination of name/number (ttyPS/3). Using uport->line is doing
>> registration with ttyPS/0 which is wrong that's why proper console index
>> should be used which is in cons->index field.
>>
>> Also it is visible that recording console should be done based on
>> information about console not about the port but in most cases numbers are
>> the same and xilinx_uartps is only one exception now.
>>
>> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> 
> This is now commit 91daae03188e0dd1 ("serial: core: Use cons->index
> for preferred console registration") in tty-next.
> 
> This has been bisected to break the serial console on (at least)
> r8a7791/koelsch and r8a7795/h3-salvator-xs.
> 
> The line "printk: console [ttySC0] enabled" is no longer printed.
> The system continues booting without any serial console output, and the
> login prompt never appears on the serial console.
> 
> Reverting this commit fixes the issue.

Sorry for trouble with this patch. Can you please point me to dts files
for these boards and also what's the value you have in uport->line and
uport->cons->index?

Thanks,
Michal


-- 
Michal Simek, Ing. (M.Eng), OpenPGP -> KeyID: FE3D1F91
w: www.monstr.eu p: +42-0-721842854
Maintainer of Linux kernel - Xilinx Microblaze
Maintainer of Linux kernel - Xilinx Zynq ARM and ZynqMP ARM64 SoCs
U-Boot custodian - Xilinx Microblaze/Zynq/ZynqMP/Versal SoCs


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
