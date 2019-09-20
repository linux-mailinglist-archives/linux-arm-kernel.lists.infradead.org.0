Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75754B8D13
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 10:41:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kIrPtvkEbg1NksiJO5PrCkt/AeLTKL/bpHfSwT2Ps44=; b=e0fRdzVRrtzJBM
	oSgH6eZHRs2YfWWssdgIrIr3x975dJJhcq0TLU4CGd+LVSmirfiZtMpf9JBctqqfcpaJKA74kAtMD
	J4xaCecMxIE89nLvvNjKUVWYXyT8wYdPPe4/ThkFjSyg7b9dJ2vjfmfn++bk2zvjIExGbps+d50+6
	OVGjTjyQIMn80cXfbbOqwi1kpAav9Xn2Y4oTxuNjFkw3aeNiptAs5DI7RD6dK8URQrra13QOXvKCd
	6PH/Zw9TEYmzt2vyCdQJHKItPyOpUatlhDA1StnJwfzfmQg4WY1hsts+qN5fh0KxlHzzvh8lCI/HS
	qTS+ExYmZFiC0eh9PwTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBEU1-0001o1-M3; Fri, 20 Sep 2019 08:41:41 +0000
Received: from plaes.org ([188.166.43.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBETq-0001nN-OF
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 08:41:32 +0000
Received: from plaes.org (localhost [127.0.0.1])
 by plaes.org (Postfix) with ESMTPSA id 4ED0A401A2;
 Fri, 20 Sep 2019 08:32:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=plaes.org; s=mail;
 t=1568968358; bh=B88eQXvMcqPCljBCgykzFFLBC6ki+6QWIgs8CmMzNSc=;
 h=Date:From:To:Cc:Subject:From;
 b=hP5K+LGolyuLvkyMObHkPDJI+3SO5aqs2BkePcyR3N8tnNSGB3eem7s8Ay08w9saL
 2vdVZbGw9haNc1RLljjA7cyr5LjLxYLZHPgK3IvhnNQgvjByHZqpy4OKjHro5lC5FE
 ydiX6NoQqtkd97+MqM8DPBPabL2+0lBAL3sFYO3qWa4VnLsLYRigwi400a/IAFLfJL
 EPzWkE2zEUi4vJ6B8LviMqM2oMwWVVYGiwMlTvC+Fehc1aHUHCVGqY+yn4MXM3IZT9
 PBF3avKVDYYgVmEcNNgEGVGvpI5m/4gMCupSoKyE4BhuObRcLr42AKaDwklSPoLoYf
 37EmmfpP3SBcw==
Date: Fri, 20 Sep 2019 08:32:37 +0000
From: Priit Laes <plaes@plaes.org>
To: mripard@kernel.org, wens@csie.org
Subject: [BUG] sun4i: axp209: no atomic i2c transfer handler
Message-ID: <20190920083237.GA11657@plaes.org>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_014130_928239_496E1764 
X-CRM114-Status: UNSURE (   5.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, priit.laes@paf.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Heya!

I have seen following warning message for few times when shutting down the
machine (Olinuxino Lime2-emmc) running the mainline kernel.

[snip]
WARNING: CPU: 0 PID: 1 at drivers/i2c/i2c-core.h:41 i2c_transfer+0xe8/0xf4
No atomic I2C transfer handler for 'i2c-1'
Modules linked in: enc28j60
CPU: 0 PID: 1 Comm: systemd-shutdow Not tainted 5.3.0-rc8-paf+ #28
Hardware name: Allwinner sun7i (A20) Family
[<c010ee08>] (unwind_backtrace) from [<c010b5b8>] (show_stack+0x10/0x14)
[<c010b5b8>] (show_stack) from [<c06bf2b4>] (dump_stack+0x88/0x9c)
[<c06bf2b4>] (dump_stack) from [<c011e044>] (__warn+0xd4/0xf0)
[<c011e044>] (__warn) from [<c011dbe4>] (warn_slowpath_fmt+0x48/0x6c)
[<c011dbe4>] (warn_slowpath_fmt) from [<c051ce20>] (i2c_transfer+0xe8/0xf4)
[<c051ce20>] (i2c_transfer) from [<c051ce78>] (i2c_transfer_buffer_flags+0x=
4c/0x70)
[<c051ce78>] (i2c_transfer_buffer_flags) from [<c046c2a4>] (regmap_i2c_writ=
e+0x14/0x30)
[<c046c2a4>] (regmap_i2c_write) from [<c0468180>] (_regmap_raw_write_impl+0=
x588/0x63c)
[<c0468180>] (_regmap_raw_write_impl) from [<c0468b50>] (regmap_write+0x3c/=
0x5c)
[<c0468b50>] (regmap_write) from [<c046f554>] (axp20x_power_off+0x2c/0x38)
[<c046f554>] (axp20x_power_off) from [<c013e8a4>] (sys_reboot+0x14c/0x1e0)
[<c013e8a4>] (sys_reboot) from [<c0101000>] (ret_fast_syscall+0x0/0x54)
Exception stack(0xef04ffa8 to 0xef04fff0)
ffa0:                   00427954 00000000 fee1dead 28121969 4321fedc 168143=
00
ffc0: 00427954 00000000 00000000 00000058 bec15c78 00000000 bec15c10 004266=
f8
ffe0: 00000058 bec15b6c b6f69d45 b6eeb746
[/snip]

The enc28j60 module is SPI, so it has nothing to do with the message.

Any ideas where to look?

P=E4ikest,
Priit :)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
