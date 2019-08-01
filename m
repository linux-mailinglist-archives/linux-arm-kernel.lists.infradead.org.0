Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6D517E3DE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 22:21:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZP3uLmQUTy8QkBLh8gOa/n00pHMqHopXc8Bomjez6n8=; b=k9lruXFskNJjbq
	6tkfYO38kCfDAbc8jtlrieBdxbHhg86bzkHGsny1jvH+2TwYHKdQ3qLygAweHkjp8SbE+TgNJ+yDe
	w5RFAI9DvQhL/Pyu8zy0KOMTPV2kYbnZkF/YFAveIj6wq5AU7Cwo0foG9ZCS0+UYg2LZnOKBC0+2h
	sHt6THzWz9wEXtAvrbHSAAIWGKo1jScMMRHQEHG1QgLsyakkLqqQ34YC00SA1MA7+8O4yHXTkBb4E
	5j8XJLt2p6HaM5+CoQlP7L7/2l13AhVKUOs/QVT0y5Z1GHQSR8n8q03Mf95TaMtwSbeTEXatDhxjr
	7AphfZbYhCzQW32/VErg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htHZK-0007s0-SS; Thu, 01 Aug 2019 20:20:58 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htHZD-0007ra-7C
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 20:20:52 +0000
Received: by mail-io1-xd43.google.com with SMTP id m24so147270350ioo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 13:20:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iGQjbh2lidVqoXigwK1QL8uchwE5sOlytgfMxESvA8Q=;
 b=R8gv8YzhncBPOAgnqLvQVHWbsPbxjD2GVg2O1K6m1DGQgeOyNbs6Gxz+SJIbZPE4wB
 ETIqSl5exEzh79nDLxw0tXgfr/jnvQHTSUsKNy8YbX9Fasuxu48oTngH+zNRLxxcqWbo
 PToSSFBpLcJ8zJSs3TCjyOpp8FlPLJKMV5ufqPI+C9VOSSkkNCCscqVsW7HoPDqqk6Ei
 M7oF4djdJ6HQtaAwiPvzCvjIFwrqVfNtyXuKzrwGqVg1OPYV36RambRb6sG7rFGd3NGX
 gn9VJympMAngmXg4fzqc1bdA6dfSOZO/jjCMsbCh4WoEZveymRRTPZMJhLK41InF0oL5
 tuww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iGQjbh2lidVqoXigwK1QL8uchwE5sOlytgfMxESvA8Q=;
 b=pa4gHPZYD71TOm7HOqqWE6xGQRR/3XrCl0TMF9FtuTw3DoYJ9PfdRUljLSzm4XJzdd
 KvSZq2yqhBtlhamTAZ8caltKcnTWv6h+r5kpUIyJRlbyBwq0ox8iqEMzF02L1XS6upr1
 Hihie6deeZ0qQAkSaiI8+Je7Y4Eg5D8LxZPYGWJwvUc32gMZrYx5MiisZNysHSrrgpJq
 YA6Gt1jL4jSf3/SSAJ8LsvI713vNc4lgb6lf4FxMCmmo8cq5d5FioAuMwf7gQV9L5RLt
 Hh9v6WIL4uzT2C7BVRV1PmfwAYJgJzimYRZ01POMIfTLRgmQYHetBqZkZdAZs05U9TRn
 sKGg==
X-Gm-Message-State: APjAAAUdE6K/UrP+ws15KkhbsVp52kkp6YoMlELaxMwrHdh/XZe6PE8Q
 kxGQPHCrhpuW7Iqw/6X88AqLdfoiu7yktSwy0WxT9mQC
X-Google-Smtp-Source: APXvYqyqnBsmDaLhFJpkkW3mW+wkF3uXpFTMF83sh69pm9tX2XCwLz/iV8gnQUz81cjNVOOjIPym6fI+pmHcWrWgbzI=
X-Received: by 2002:a6b:2c96:: with SMTP id
 s144mr119446544ios.57.1564690849979; 
 Thu, 01 Aug 2019 13:20:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190801172323.18359-1-mathieu.poirier@linaro.org>
 <20190801172323.18359-2-mathieu.poirier@linaro.org>
 <20190801185045.GA31197@kroah.com>
In-Reply-To: <20190801185045.GA31197@kroah.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Thu, 1 Aug 2019 14:20:39 -0600
Message-ID: <CANLsYkxLoWSEaW5k_O=NeQ7BX4t3NSzrUQhJY4U4pcV_AE=izw@mail.gmail.com>
Subject: Re: [PATCH 1/1] coresight: Fix DEBUG_LOCKS_WARN_ON for uninitialized
 attribute
To: Greg KH <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_132051_269100_3089DB34 
X-CRM114-Status: GOOD (  14.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "Suzuki K. Poulose" <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 1 Aug 2019 at 12:50, Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Thu, Aug 01, 2019 at 11:23:23AM -0600, Mathieu Poirier wrote:
> > From: Suzuki K Poulose <suzuki.poulose@arm.com>
> >
> > While running the linux-next with CONFIG_DEBUG_LOCKS_ALLOC enabled,
> > I get the following splat.
> >
> >  BUG: key ffffcb5636929298 has not been registered!
> >  ------------[ cut here ]------------
> >  DEBUG_LOCKS_WARN_ON(1)
> >  WARNING: CPU: 1 PID: 53 at kernel/locking/lockdep.c:3669 lockdep_init_map+0x164/0x1f0
> >  CPU: 1 PID: 53 Comm: kworker/1:1 Tainted: G        W         5.2.0-next-20190712-00015-g00ad4634222e-dirty #603
> >  Workqueue: events amba_deferred_retry_func
> >  pstate: 60c00005 (nZCv daif +PAN +UAO)
> >  pc : lockdep_init_map+0x164/0x1f0
> >  lr : lockdep_init_map+0x164/0x1f0
> >
> >  [ trimmed ]
> >
> >  Call trace:
> >   lockdep_init_map+0x164/0x1f0
> >   __kernfs_create_file+0x9c/0x158
> >   sysfs_add_file_mode_ns+0xa8/0x1d0
> >   sysfs_add_file_to_group+0x88/0xd8
> >   etm_perf_add_symlink_sink+0xcc/0x138
> >   coresight_register+0x110/0x280
> >   tmc_probe+0x160/0x420
> >
> >  [ trimmed ]
> >
> >  ---[ end trace ab4cc669615ba1b0 ]---
> >
> > Fix this by initialising the dynamically allocated attribute properly.
> >
> > Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> > Fixes: bb8e370bdc141ddf ("coresight: perf: Add "sinks" group to PMU directory")
>
> That should be:
> Fixes: bb8e370bdc14 ("coresight: perf: Add "sinks" group to PMU directory")

Apologies - I will catch those from hereon.

>
> I can go fix it up...

Or I can, depending on if you're going to pick the patch as a fix for
5.3 or you'll wait for the 5.4 cycle.

>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
