Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB9FB155F78
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 21:20:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:Message-ID:From:MIME-Version:Date:
	References:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2tcaClPpL4Ogt8J6huLZKHBh+uIOFYQsYrUJ46ewp8E=; b=tIuAYDyWD2UpCc8o57mybOiwX
	EpwhKpLhlJuGfi66Ppa9oqjbU+GSjdTBiS7Fvh1C2W+qAHMPynE4T0ANxjuTmEf7mthiZzn5GE3ut
	q+XIo0vu0oSXJsKjybFeFWC7n/Rl4u6+C+nX1RVXiiH6gMKzMeSFuXvZihcncfdVmjBtC6ThhBa2X
	kgpsAk/lClCiz3Dcaq+GWA7K6STYKVPUUYnTnd//0PiG3Cjkg3A6dMipfAnc3PolxOW81+Ch02FTr
	7Diz4JqLz98mbn7U3LSKWbYdd5PDrQJvx4OzVoIoRdDxMJF8GEPDDgdbxMSK064BWorAHpLffCmFq
	PpSHU2Bwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0A7I-000351-DV; Fri, 07 Feb 2020 20:20:44 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0A7B-00034Y-NJ
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 20:20:39 +0000
Received: by mail-wr1-x443.google.com with SMTP id w15so409732wru.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Feb 2020 12:20:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:subject:references:date:mime-version
 :content-transfer-encoding:from:message-id:in-reply-to:user-agent;
 bh=wOintdNO5qmOQ/OOnHt/kUReZvUtbEkfFW92H/d8TMo=;
 b=ObDpC7Ogck2QbVYZ7PNQnaoBTb4cpsU4RQTQ4MzfV3USG+n8srm53o8QoE/Sq/vyGq
 P6iRSEjEenKBcSxMwAYMEpcbR9JZCXToogVFpdkAwRy2+U9xRp6Grpqxg914YkNJIAsc
 XMdo0IlhHcMbuoeOp5GblyB0s+nDTkCEi5wi/0RQ4Bx0J1xxSS5EGfbh1xI/Qcoe1Sms
 XjbJCvyXlf4fVnvbpk8pKcc+VQb697p4X9u2blYP3Kp8jN+gOhnjpx01ELYva+IuhRLI
 UygL5YqyB5ILWOFwZaXNbY8eX8P8innyAXyUoU9Lbt7P7dZb9Qi4b+jfBH/qDr66AVrh
 CLvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:subject:references:date:mime-version
 :content-transfer-encoding:from:message-id:in-reply-to:user-agent;
 bh=wOintdNO5qmOQ/OOnHt/kUReZvUtbEkfFW92H/d8TMo=;
 b=CzeUCWR7MFi+tBJaOfuy9zQG5Vx2q/44l9iB9msZj4E1NGzYjOFnOxKPM9Dz3cXJuU
 y+iAsCmIbHH9SuUE4JDYPimmxPpXS+14JNn+45/4nwTqqGUESY8N33L9k0lq2W6bQevG
 C5ovPWbXnsE06qoTgVohIoeDN26T57nI3s2dMmMoV30BkGYugxuehVmxwuO+GZt7D8u8
 28KE1TFXYhNJu6LmxA8xLH8fJD4C9HJY058HZI+LgCPcmnZfxvkh/MGFESohWdNM/rek
 MaFfPpsf4KPwOgM0AIaOVAj3jFD+CZGZwjGIpQ9Lw5G7PTRmHPl/rQ5seVF1xYOws7P+
 ++fA==
X-Gm-Message-State: APjAAAVgoe0OPYRvO7gwK8pUK+w87Cgco79xoFUgNeTIx508QPwf50XQ
 E/OAPqpZpbhtSl0myaaM+57bB//KF9U=
X-Google-Smtp-Source: APXvYqyPa8jUTVKZIjoy2uatt/mdJ6UFxZPgw1fK+xL52XaA3AtSDz1XeDU21jzpebkL/WCI6NgBIw==
X-Received: by 2002:a5d:4b88:: with SMTP id b8mr712899wrt.343.1581106835759;
 Fri, 07 Feb 2020 12:20:35 -0800 (PST)
Received: from supervisor.net28 ([46.53.250.234])
 by smtp.gmail.com with ESMTPSA id r6sm4843020wrq.92.2020.02.07.12.20.34
 (version=TLS1 cipher=AES128-SHA bits=128/128);
 Fri, 07 Feb 2020 12:20:34 -0800 (PST)
To: "Merlijn Wajer" <merlijn@wizzup.org>, "Tony Lindgren" <tony@atomide.com>
Subject: Re: Nokia N900 on 5.4 and 5.5
References: <79b91017-b52a-8aff-4b9c-913ae655f7bf@wizzup.org>
 <185CD173-C13C-4D56-B3DE-9A8D7784963C@goldelico.com>
 <20200207163623.GA64767@atomide.com>
 <da14d6bb-f241-2dd4-8e94-886217a40ed7@wizzup.org>
 <20200207165344.GB64767@atomide.com> <20200207170149.GC64767@atomide.com>
Date: Fri, 07 Feb 2020 23:20:33 +0300
MIME-Version: 1.0
From: "Arthur D." <spinal.by@gmail.com>
Message-ID: <op.0fmv4jevhxa7s4@supervisor.net28>
In-Reply-To: <20200207170149.GC64767@atomide.com>
User-Agent: Opera Mail/12.16 (Linux)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_122037_761007_EFD8C043 
X-CRM114-Status: GOOD (  12.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [spinal.by[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>,
 Kees Cook <keescook@chromium.org>, Nicolas Pitre <nico@fluxnic.net>,
 "H. Nikolaus Schaller" <hns@goldelico.com>,
 Aaro Koskinen <aaro.koskinen@iki.fi>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 linux-omap <linux-omap@vger.kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"; DelSp="yes"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi.

I was able to build linux-5.5 and run it on N900 with no problems.
Even WiFi works, mmc0 is in place too. It seems you're doing something
wrong.

Were you able to build linux-5.1 with your scripts and run it on the
phone? I mean the pure linux-5.1 without configs and changes done
in https://github.com/maemo-leste/n9xx-linux.

BTW, I didn't find STACKPROTECTOR_PER_TASK option to be enabled in
omap2plus_defconfig.

--
Best regards, Spinal

> * Tony Lindgren <tony@atomide.com> [200207 16:54]:
>> * Merlijn Wajer <merlijn@wizzup.org> [200207 16:47]:
>> > On 07/02/2020 17:36, Tony Lindgren wrote:
>> > >
>> > > Looks like there's a regression in general for appended dtb booting  
>> that
>> > > was caused by commit 9f671e58159a ("security: Create "kernel  
>> hardening"
>> > > config area"). With that change we now get STACKPROTECTOR_PER_TASK
>> > > selected by default with Kconfig.
>> > >
>> > > Merlijn, care to try to disable STACKPROTECTOR_PER_TASK in your
>> > > .config to see if that helps?
>> >
>> > Yes, this makes the kernel boot.
>>
>> OK good to hear. My guess is that having STACKPROTECTOR_PER_TASK
>> selected causes changes to include/generated/asm-offsets.h that
>> appended dtb booting does not like. But let's see what others
>> think.
>
> I don't think this is an issue of CONFIG_STACKPROTECTOR + CONFIG_SMP
> booted on UP machine as it only happens with appended dtb it seems.
>
> Regards,
>
> Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
