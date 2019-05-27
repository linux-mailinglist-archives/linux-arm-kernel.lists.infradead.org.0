Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F63A2AE4B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 07:54:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g8MUWExtSSLsh57PEwjAvt1edJ3MnGRbwSLigjXF8JQ=; b=FWZO0JXe26PG7R
	8oF7rkztrd3rn6TkXS5PkgUrsPoC1iW3VR//ODPGUe9XSuwIeElNGxdTdKx7NmFLciOG94DO+7lyw
	mTHAEajX+i/KAqaAf0n6nl5zhLClpZkGLSsHbDTl5c+sUG7T/B8OykCffM7odoVBs6FNO6YnGkfYq
	E+p22+7XoMqm1aOfhDHOKmyxkEL9HO/bTmxOr10MsP5Mtg8lec6YuxxgrMyVX2w1VoNM/oF9ji8WL
	dG254W7wPqrtsktMQ8DepSLo8YmIlZFQr4iKYCZAspQpRgjZECcqeRldnN64ykstFbb5ssRfG0qkc
	EKeyElzpqOdm8n7Eot8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV8a7-0001sT-Ci; Mon, 27 May 2019 05:53:59 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV8a0-0001rc-5v
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 05:53:53 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id DFAB180D4;
 Mon, 27 May 2019 05:54:05 +0000 (UTC)
Date: Sun, 26 May 2019 22:53:43 -0700
From: Tony Lindgren <tony@atomide.com>
To: Sebastian Reichel <sre@kernel.org>
Subject: Re: 5.2-rc1 on droid4: spi crash
Message-ID: <20190527055343.GG5447@atomide.com>
References: <20190523090926.GA9106@amd>
 <20190523093325.6si5jpvrvyktpax6@earth.universe>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523093325.6si5jpvrvyktpax6@earth.universe>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_225352_258868_0F0572F2 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mpartap@gmx.net, merlijn@wizzup.org,
 kernel list <linux-kernel@vger.kernel.org>, linux-spi@vger.kernel.org,
 nekit1000@gmail.com, Noralf =?utf-8?Q?Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Mark Brown <broonie@kernel.org>, Pavel Machek <pavel@ucw.cz>,
 linux-omap@vger.kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

* Sebastian Reichel <sre@kernel.org> [190523 09:33]:
> Hi,
> 
> On Thu, May 23, 2019 at 11:09:26AM +0200, Pavel Machek wrote:
> > This was greeting me overnight... I don't yet know how reproducible it
> > is, it happened once so far.
> 
> Please pipe the stacktrace into ./scripts/decode_stacktrace.sh
> to get a readable stacktrace, otherwise this is pretty much useless.
> FWIW the only SPI device in the Droid 4 is the PMIC.

I've seen this too, and looks like reverting commit c9ba7a16d0f1
("spi: Release spi_res after finalizing message") fixes it based
several days of testing.

Noralf and Mark, any ideas what needs to be fixed here?

Below is the stacktrace I see without c9ba7a16d0f1 reverted,
not sure how to reproduce but it seems to happen within about
one to two days of uptime.

Regards,

Tony

8< -----------------
Unable to handle kernel NULL pointer dereference at virtual address 00000008
pgd = 829f0a5b
[00000008] *pgd=00000000
Internal error: Oops: 80000005 [#1] SMP ARM
...
CPU: 0 PID: 71 Comm: spi0 Tainted: G        W         5.2.0-rc1+ #5983
Hardware name: Generic OMAP4 (Flattened Device Tree)
PC is at 0x8
LR is at spi_res_release+0x54/0x80
pc : [<00000008>]    lr : [<c06faa48>]    psr: 20000113
sp : ed6e3e88  ip : ed6e3eb0  fp : ed6e3eac
r10: c0b9eca8  r9 : 00000100  r8 : 00000200
r7 : ed65bc00  r6 : ed6e5d3c  r5 : ed6e5d0c  r4 : c0d05254
r3 : 00000008  r2 : c0d05264  r1 : ed6e5d0c  r0 : ed65bc00
Flags: nzCv  IRQs on  FIQs on  Mode SVC_32  ISA ARM  Segment none
Control: 10c5387d  Table: abf3c04a  DAC: 00000051
Process spi0 (pid: 71, stack limit = 0x0ef66f65)
Stack: (0xed6e3e88 to 0xed6e4000)
3e80:                   ed6e5cd0 ed6e5d0c ed65bc00 c0daf080 00000000 ed510410
3ea0: ed6e3eec ed6e3eb0 c06fd8c4 c06faa00 ed65b800 00000000 ed65ba20 ed65bee0
3ec0: ed6e3eec ed65bc00 ed6e5cd0 ed6e5d0c 00000000 ed510410 ed510410 00000001
3ee0: ed6e3f2c ed6e3ef0 c06fdcd4 c06fd560 00000004 c0170948 ed6e3f20 ed65bdfc
3f00: ffffe000 ed65be68 ed65be44 ffffe000 c0dc7734 ed65be48 c0166f88 00000000
3f20: ed6e3f3c ed6e3f30 c06fe10c c06fd9a4 ed6e3f74 ed6e3f40 c0166f54 c06fe0f8
3f40: ed6e3f74 6eb8f9ff c0166780 00000000 ed3bccc0 ed659c00 ed6e2000 ed65be44
3f60: c0166eac ed115c44 ed6e3fac ed6e3f78 c0166e58 c0166eb8 ed3bccdc ed3bccdc
3f80: ed6e3fac ed659c00 c0166cf8 00000000 00000000 00000000 00000000 00000000
3fa0: 00000000 ed6e3fb0 c01010e8 c0166d04 00000000 00000000 00000000 00000000
3fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
3fe0: 00000000 00000000 00000000 00000000 00000013 00000000 00000000 00000000
Backtrace:
[<c06fa9f4>] (spi_res_release) from [<c06fd8c4>] (spi_transfer_one_message+0x370/0x444)
 r9:ed510410 r8:00000000 r7:c0daf080 r6:ed65bc00 r5:ed6e5d0c r4:ed6e5cd0
[<c06fd554>] (spi_transfer_one_message) from [<c06fdcd4>] (__spi_pump_messages+0x33c/0x754)
 r10:00000001 r9:ed510410 r8:ed510410 r7:00000000 r6:ed6e5d0c r5:ed6e5cd0
 r4:ed65bc00
[<c06fd998>] (__spi_pump_messages) from [<c06fe10c>] (spi_pump_messages+0x20/0x24)
 r10:00000000 r9:c0166f88 r8:ed65be48 r7:c0dc7734 r6:ffffe000 r5:ed65be44
 r4:ed65be68
[<c06fe0ec>] (spi_pump_messages) from [<c0166f54>] (kthread_worker_fn+0xa8/0x268)
[<c0166eac>] (kthread_worker_fn) from [<c0166e58>] (kthread+0x160/0x178)
 r10:ed115c44 r9:c0166eac r8:ed65be44 r7:ed6e2000 r6:ed659c00 r5:ed3bccc0
 r4:00000000
[<c0166cf8>] (kthread) from [<c01010e8>] (ret_from_fork+0x14/0x2c)
Exception stack(0xed6e3fb0 to 0xed6e3ff8)
3fa0:                                     00000000 00000000 00000000 00000000
3fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
3fe0: 00000000 00000000 00000000 00000000 00000013 00000000
 r10:00000000 r9:00000000 r8:00000000 r7:00000000 r6:00000000 r5:c0166cf8
 r4:ed659c00
Code: bad PC value
---[ end trace a8011e9722dfda5e ]---

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
