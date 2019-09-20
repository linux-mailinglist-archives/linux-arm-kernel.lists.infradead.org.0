Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79685B8D0C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 10:40:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H4Bt0dFjEtUg10W18jLWvHRF0CH/Z/93fAwNxOVmWFs=; b=oGloqmyNwpDpxm
	TErRX27i4aWV7LDgOsVuMxalkWsM8D3m+R4legx8apFuSDi4582sE7KtvAlauz21rLC/S/D+350Ze
	G4TpysGoYYRNW4lyW7vIgk4LOjQyiJzr/aOn9q71VFGWEocgsoX9FnLXfdloKrnwyGImoMwWRpUi5
	WmqCdHXLRpGwDWVdGIxaIKc+WIK12jtbNpG9LJ0YHmSD+Um9ATOgsZyy33ln8QLx7k5CCvR/YgBee
	0utpDThjtC+9mCUautLPZz5FuZFbgYklYlVNBJB/AbcvxUQ0L0JhIWbe1jAqNuyQBNwPkF9AQeUA2
	ia/YvwpNIBaJOzB/fhaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBESX-0000Gx-RF; Fri, 20 Sep 2019 08:40:09 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBESL-0000Ge-4H
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 08:39:58 +0000
Received: by mail-ed1-f65.google.com with SMTP id r9so5579552edl.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Sep 2019 01:39:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WCr8CPJIbQdsDFVeXzCBJIO+AejaAKprgzLbff1WJj4=;
 b=EvdWwwe+3ktXsEtY1hvcKIoAvrvy9HLRv30DOT4qauN29NBxpmWQicFPU2goPvMQNy
 Z8uZWi9OTw4PKuZj6J0j5khY88o4/dZ/12AyJOvhLYmk7PGxMSn8jcZfO987dViDBaOH
 fJMOGKktIlq+K3Rf26pMJz7d2DW4aRMmzimB7+UhOA258mrZwKunXkDaQ7ZeiqvISbtT
 czk/Mdx3CH9NoD5jMManzeMNvwkKeM1hTM5zilRGVQZzVNpt8VkQqVeWiwItjl9iQmRA
 kLUj48oHMkU6+QxINlCxXSa/9bgrTAPMZg7kprXc006sVhvZny++2zDf26XNFiWrCLgA
 WZkA==
X-Gm-Message-State: APjAAAVH6YDBIuNNn9GHXXgxJaSgHW/PKwj1DdImc/+wKfB3llHazl0a
 oLvJz2yFlPCeQYBQL+LpboueoCJuqzc=
X-Google-Smtp-Source: APXvYqyKUib3YbH86kQ6UUMFpZJeZTy6Bwhd15TN99AKqi/1aLmdmDEBvTN7jez+vhYhVa+EBQNRTA==
X-Received: by 2002:a17:906:255b:: with SMTP id
 j27mr18184362ejb.96.1568968794441; 
 Fri, 20 Sep 2019 01:39:54 -0700 (PDT)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com.
 [209.85.221.49])
 by smtp.gmail.com with ESMTPSA id x17sm205142edl.64.2019.09.20.01.39.53
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 20 Sep 2019 01:39:53 -0700 (PDT)
Received: by mail-wr1-f49.google.com with SMTP id o18so5812118wrv.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Sep 2019 01:39:53 -0700 (PDT)
X-Received: by 2002:a5d:668d:: with SMTP id l13mr11159369wru.279.1568968793107; 
 Fri, 20 Sep 2019 01:39:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190920083237.GA11657@plaes.org>
In-Reply-To: <20190920083237.GA11657@plaes.org>
From: Chen-Yu Tsai <wens@csie.org>
Date: Fri, 20 Sep 2019 16:39:41 +0800
X-Gmail-Original-Message-ID: <CAGb2v65JrZXV9vb6pbCHfJvE3AawBxcWEpQH7C3woxnXpbN7vw@mail.gmail.com>
Message-ID: <CAGb2v65JrZXV9vb6pbCHfJvE3AawBxcWEpQH7C3woxnXpbN7vw@mail.gmail.com>
Subject: Re: [BUG] sun4i: axp209: no atomic i2c transfer handler
To: Priit Laes <plaes@plaes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_013957_179823_A77E3EA1 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Wolfram Sang <wsa@the-dreams.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-i2c@vger.kernel.org, priit.laes@paf.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 20, 2019 at 4:32 PM Priit Laes <plaes@plaes.org> wrote:
>
> Heya!
>
> I have seen following warning message for few times when shutting down the
> machine (Olinuxino Lime2-emmc) running the mainline kernel.
>
> [snip]
> WARNING: CPU: 0 PID: 1 at drivers/i2c/i2c-core.h:41 i2c_transfer+0xe8/0xf4
> No atomic I2C transfer handler for 'i2c-1'
> Modules linked in: enc28j60
> CPU: 0 PID: 1 Comm: systemd-shutdow Not tainted 5.3.0-rc8-paf+ #28
> Hardware name: Allwinner sun7i (A20) Family
> [<c010ee08>] (unwind_backtrace) from [<c010b5b8>] (show_stack+0x10/0x14)
> [<c010b5b8>] (show_stack) from [<c06bf2b4>] (dump_stack+0x88/0x9c)
> [<c06bf2b4>] (dump_stack) from [<c011e044>] (__warn+0xd4/0xf0)
> [<c011e044>] (__warn) from [<c011dbe4>] (warn_slowpath_fmt+0x48/0x6c)
> [<c011dbe4>] (warn_slowpath_fmt) from [<c051ce20>] (i2c_transfer+0xe8/0xf4)
> [<c051ce20>] (i2c_transfer) from [<c051ce78>] (i2c_transfer_buffer_flags+0x4c/0x70)
> [<c051ce78>] (i2c_transfer_buffer_flags) from [<c046c2a4>] (regmap_i2c_write+0x14/0x30)
> [<c046c2a4>] (regmap_i2c_write) from [<c0468180>] (_regmap_raw_write_impl+0x588/0x63c)
> [<c0468180>] (_regmap_raw_write_impl) from [<c0468b50>] (regmap_write+0x3c/0x5c)
> [<c0468b50>] (regmap_write) from [<c046f554>] (axp20x_power_off+0x2c/0x38)
> [<c046f554>] (axp20x_power_off) from [<c013e8a4>] (sys_reboot+0x14c/0x1e0)
> [<c013e8a4>] (sys_reboot) from [<c0101000>] (ret_fast_syscall+0x0/0x54)
> Exception stack(0xef04ffa8 to 0xef04fff0)
> ffa0:                   00427954 00000000 fee1dead 28121969 4321fedc 16814300
> ffc0: 00427954 00000000 00000000 00000058 bec15c78 00000000 bec15c10 004266f8
> ffe0: 00000058 bec15b6c b6f69d45 b6eeb746
> [/snip]
>
> The enc28j60 module is SPI, so it has nothing to do with the message.
>
> Any ideas where to look?

This looks like it's complaining that i2c-1 (i2c-mv64xxx) does not have
.master_xfer_atomic , which should be used in atomic contexts.

include/linux/i2c.h says:

   @master_xfer_atomic: same as @master_xfer. Yet, only using atomic context
     so e.g. PMICs can be accessed very late before shutdown. Optional.

ChenYu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
