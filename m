Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 842621129EF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 12:15:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3RTf3nYXWjudcYkZDjdaTGsgvZHjt/8v53rmkChV6Po=; b=rN1mC36uVJR7DW
	UX9Xcq+P+uvcIQ/UQJoZzx3NjkErVd97UX2iRUYV2eYRrHrrQg8pbwsxHYXY0SK3Ith6dMU+9Vbcq
	BmzoFvC+M3xHmePZaC5S6mD62aj1EZoJbRUtuB8x8YEgy3nAxBBPbNQC0fkvdabE4L6679x19Nh77
	m+A3DIXInX5byMw7ulJl1WT1NHX56hfZABhdWZNCaxzGX5mfBjRYvxVKostqlSESqRrQECdTP3bNZ
	WfEyYXhtnD+TNLWeapuTEr8cRMCA3YDXVkObgLa4V5bnOdHOZYowL+35StEJsBGmvTCqjF7UnXQuC
	c+LTNSrrG8PP3y4ZXUNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icSck-0007MF-91; Wed, 04 Dec 2019 11:15:14 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icScd-0006oo-4y; Wed, 04 Dec 2019 11:15:08 +0000
Received: by mail-wm1-x341.google.com with SMTP id q9so5503008wmj.5;
 Wed, 04 Dec 2019 03:15:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=2dg6vYHfAbIqQs6f5OPzsG4hCTh98ASxjLOtIlWmuN0=;
 b=P4sD8VSBvEo/WuxXT8f9IirLBaAtn9OraQFi6Joeh+nDUHthz6cFe5EGmDQxOxlgN6
 hzKAihoiESWzuWXShRYM5rHaN5U4qGNX4Dg5EB7KyLpxD5GXKqqT96C+uIPC2bnhgb7u
 aNbCL3Tet+7znL2i+gHVlT6iHScZsBei3/f1kDVr9y87pAxtJHJzbdz0ffuXPQJqweAw
 tgPiuUgIqYS8meiNjNR2NJ6pNVD4izxOkkyxYgxavJOaMseqfIY+YmIGJobgQxCJ79Bd
 TQnO133jTMNkw0FNMkMdzjnVe6BewUPs6L0Dfo5HVJomC5Cau3Qp0+Ou5UIiBkK4s6KG
 v7DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=2dg6vYHfAbIqQs6f5OPzsG4hCTh98ASxjLOtIlWmuN0=;
 b=CIOoqhogTL6/DaXeAiMbpNjfqWoDP2xg0dn2BhNpnAsXY6jddznFygc7765YW+Oxjz
 UUttbrPEXE19oZoMz3HoKGAwW2v/VP0p/kV7q7M03KxeNNU+OH+hjjncpYxH+ZRAPjqc
 puoC7gUpRR1FyKSCMSX684g0NgI1RN3EP/AYPb6upX8V8YSAGkQQLEBIKqF2XmYbmPsa
 Lsw0D1io7Op1AYFFynn2JuQgivENJ4aZvT0WJw7cQTbr2qH4rGz2gwxXQ+1Ivy+NLz/g
 NW6s5HBDqRhDnTVkiHFjEnQ4wf+kwns0Y+zzHiADguxoRvvuSOD+NBqhsdZqx+4CeMCq
 w/9A==
X-Gm-Message-State: APjAAAV/+XiQXHvWJ02ZqPhn/w5xIQpHktBDU1jRBMQtzZwVNWftBC0H
 eoYA3TgqSVbQi+0tSzzB5JcZtmaR
X-Google-Smtp-Source: APXvYqzOQO1BXYauV3dqygDR71lpWAVKeeqa8hbZDXpG6lQ5lajku0y+th3P4REmruVE3e0qRdIk0g==
X-Received: by 2002:a1c:9dd1:: with SMTP id g200mr6342874wme.90.1575458105168; 
 Wed, 04 Dec 2019 03:15:05 -0800 (PST)
Received: from [192.168.2.41] ([46.227.18.67])
 by smtp.gmail.com with ESMTPSA id a6sm5380859wmb.1.2019.12.04.03.15.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 04 Dec 2019 03:15:04 -0800 (PST)
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>
From: Richard Genoud <richard.genoud@gmail.com>
Subject: fastmap WARN_ON() after ubiupdatevol
Message-ID: <7a4adbc9-2cf0-e80b-8d0c-c351bc64bd35@gmail.com>
Date: Wed, 4 Dec 2019 12:14:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_031507_226468_9276A128 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.genoud[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-mtd <linux-mtd@lists.infradead.org>,
 Linux Kernel <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi !

I've seen that fastmap issues a warning after updating an ubifs volume :
ubi0: default fastmap pool size: 95
ubi0: default fastmap WL pool size: 47
ubi0: attaching mtd3
------------[ cut here ]------------
WARNING: CPU: 0 PID: 1 at drivers/mtd/ubi/fastmap.c:781 ubi_attach_fastmap+0xadc/0xc30
Modules linked in:
CPU: 0 PID: 1 Comm: swapper Not tainted 5.4.1-00048-g23479ee4c63a #1
Hardware name: Atmel AT91SAM9
Backtrace: 
[<c000e484>] (dump_backtrace) from [<c000e884>] (show_stack+0x20/0x24)
 r6:00000000 r5:c066d88c r4:00000000 r3:c4bfd525
[<c000e864>] (show_stack) from [<c04b99dc>] (dump_stack+0x20/0x28)
[<c04b99bc>] (dump_stack) from [<c0018d04>] (__warn+0xdc/0x104)
[<c0018c28>] (__warn) from [<c0018da0>] (warn_slowpath_fmt+0x74/0x80)
 r10:00000000 r8:0000030d r7:c066d88c r6:c0332144 r5:00000009 r4:00000000
[<c0018d30>] (warn_slowpath_fmt) from [<c0332144>] (ubi_attach_fastmap+0xadc/0xc30)
 r8:c71fd000 r7:c78b7d98 r6:00000000 r5:c71dcf00 r4:000007a9
[<c0331668>] (ubi_attach_fastmap) from [<c033293c>] (ubi_scan_fastmap+0x668/0x85c)
 r10:b1c9b7aa r9:00000000 r8:c71ff600 r7:00000000 r6:c8afe000 r5:b1c9b7aa
 r4:c71fd000
[<c03322d4>] (ubi_scan_fastmap) from [<c032e1f8>] (ubi_attach+0xe0/0x2a4)
 r10:00000014 r9:c71fd040 r8:00000040 r7:c71dce80 r6:c71dcf00 r5:00000000
 r4:c71fd000
[<c032e118>] (ubi_attach) from [<c03218fc>] (ubi_attach_mtd_dev+0x68c/0xb28)
 r8:c7b85000 r7:00000000 r6:c71fd000 r5:fffff800 r4:00000840 r3:00000002
[<c0321270>] (ubi_attach_mtd_dev) from [<c06fec50>] (ubi_init+0x148/0x1e8)
 r10:c07c53e4 r9:00000000 r8:c07c53e0 r7:00000000 r6:c07c53e4 r5:c7b85000
 r4:00000000
[<c06feb08>] (ubi_init) from [<c000aafc>] (do_one_initcall+0x7c/0x1e0)
 r10:c0711834 r8:00000077 r7:00000000 r6:c073258c r5:00000007 r4:c06feb08
[<c000aa80>] (do_one_initcall) from [<c06da114>] (kernel_init_freeable+0x128/0x1fc)
 r7:c7eebcc0 r6:c073258c r5:00000007 r4:00000020
[<c06d9fec>] (kernel_init_freeable) from [<c04d17d4>] (kernel_init+0x18/0x100)
 r10:00000000 r8:00000000 r7:00000000 r6:00000000 r5:c04d17bc r4:00000000
[<c04d17bc>] (kernel_init) from [<c00090e0>] (ret_from_fork+0x14/0x34)
Exception stack(0xc78b7fb0 to 0xc78b7ff8)
7fa0:                                     00000000 00000000 00000000 00000000
7fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
7fe0: 00000000 00000000 00000000 00000000 00000013 00000000
 r4:00000000 r3:60000053
---[ end trace b00dfb7213ba31a7 ]---
ubi0 error: ubi_scan_fastmap: Attach by fastmap failed, doing a full scan!
random: fast init done
ubi0: scanning is finished
ubi0: attached mtd3 (name "ubi", size 245 MiB)
ubi0: PEB size: 131072 bytes (128 KiB), LEB size: 126976 bytes
ubi0: min./max. I/O unit sizes: 2048/2048, sub-page size 2048
ubi0: VID header offset: 2048 (aligned 2048), data offset: 4096
ubi0: good PEBs: 1964, bad PEBs: 0, corrupted PEBs: 0
ubi0: user volume: 3, internal volumes: 1, max. volumes count: 128
ubi0: max/mean erase counter: 26/12, WL threshold: 4096, image sequence number: 1761477484
ubi0: available PEBs: 0, total reserved PEBs: 1964, PEBs reserved for bad PEB handling: 40

The corresponding code is :
	/*
	 * If fastmap is leaking PEBs (must not happen), raise a
	 * fat warning and fall back to scanning mode.
	 * We do this here because in ubi_wl_init() it's too late
	 * and we cannot fall back to scanning.
	 */
	if (WARN_ON(count_fastmap_pebs(ai) != ubi->peb_count -
		    ai->bad_peb_count - fm->used_blocks))
		goto fail_bad;

I added some debug and found that, when everything is ok, I have :
ubi_attach_fastmap: count_fastmap_pebs(ai)=1963 ubi->peb_count=1964 ai->bad_peb_count=0 fm->used_blocks=1
But when the warning rises, I have:
ubi_attach_fastmap: count_fastmap_pebs(ai)=1954 ubi->peb_count=1964 ai->bad_peb_count=0 fm->used_blocks=1
It can also be:
ubi_attach_fastmap: count_fastmap_pebs(ai)=1962 ubi->peb_count=1964 ai->bad_peb_count=0 fm->used_blocks=1
ubi_attach_fastmap: count_fastmap_pebs(ai)=1960 ubi->peb_count=1964 ai->bad_peb_count=0 fm->used_blocks=1

After a reboot, all is back to normal.

Kernel is 5.4.1, mtd-utils are 1.5.1 (yes, it's quite old)

The nand layout is :
0x000000000000-0x000010000000 : "all"
0x000000000000-0x000000020000 : "dtb"
0x000000020000-0x000000a00000 : "kernel"
0x000000a00000-0x00000ff80000 : "ubi"
0x00000ff80000-0x000010000000 : "bbt"
page size : 2KiB
subpage size : 2KiB
PEB size: 128KiB
ubi0_0 : 537 LEBs
ubi0_1 : 537 LEBs
ubi0_2 : 844 LEBs
40 PEBs reserved for bad blocks
4 PEB for UBI overhead
2 PEB for fastmap

The ubifs image is created with :
mkfs.ubifs -d dummy/ -e 0x1f000 -c 537 -m 0x800 -x lzo -o toto.ubifs
and updated with:
ubiupdatevol /dev/ubi0_0 toto.ubifs

It seems to happen only when toto.ubifs is quite big (in my case : 57520128
bytes (453 LEBs))

(I can provide the toto.ubifs if needed)

Regards,
Richard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
