Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 932C82B61C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 15:16:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UXiqWxcl/8A/kDLhaJAZ2EzdEqMnIc+PzAjhfEdQ8gU=; b=Oc/fPxkNz8uQnfsP5QwYBeA22
	oIK4zbJp6RXKUtfBb5gTkghSO0V6GDWXw9W2Xvenn7g4cHbQBxnq2UG3nAcPsOK3u8cyb32Bb/Ab/
	u21WSLhwxJWkTQ3MiwcRLbqqoRZiJIleI0GO/M0chjtv33zaTm3pI9rPhN0jfDv/K/QgmR2C+m7Nc
	38jq45p+gNKkgYSKoYaOkufQm4R1DbgVgS8bSc7vOCbMBTznLYEfxMCnE+LsJ97ig2TSl8FlMq1xi
	BhRQAohn9bU9SNF93oc7dLES5EQC7t5GQQLrbJB+SP08AItJ4f8DEeZM3SwyTPSImc4lpQ+hMaiKq
	1T/xG+Sew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVFUG-0008Iz-6v; Mon, 27 May 2019 13:16:24 +0000
Received: from webmail.smtp.domeneshop.no ([2a01:5b40:0:2700::1]
 helo=webmail-smtp.domeneshop.no)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVFU7-0008Gl-Lp
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 13:16:17 +0000
Received: from webmail12.domeneshop.no ([2a01:5b40:0:2702::1]:58856)
 by webmail-smtp.domeneshop.no with esmtp (Exim 4.80)
 (envelope-from <notro@tronnes.org>)
 id 1hVFU0-0000qt-8g; Mon, 27 May 2019 15:16:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=tronnes.org;
 s=ds201810; 
 h=Message-ID:References:In-Reply-To:Subject:Cc:To:From:Date:Content-Transfer-Encoding:Content-Type:MIME-Version;
 bh=STeVJYuzzC0vgEmbhzepGm0OXOHVmeFu4vSmMZlFZlc=; 
 b=oAHVaPZzRR1QLGVekAncfI5tmxdQiTAgKTFU/ZMdw9QcluflTLCtNLeboTUavW/9r2X9MGGbwnHAIHt2bqCxh8j4xSY3TTyUW2xM44O3Eq5WsqmIhjH3kQ/wo4zuc2aurtUp4f38wOEYJxODNJbkTrbLCV0KWW5rHz5MGuCFt9VnIy0m1DC7rHIHtk9P4Rph7HLydueHUJJJZT/ttQ0L97TaurXj+eYP4UpJTdbAH5CAUAWlBEEd12a2pCRFcxHSNO5reHCgZ84om7v9zp7i56VzLltT1eQP540T0P0JE225/hO3IqzMTTWHTzcQR3n5orE1d/YkZnDep2SDFE6m4g==;
Received: from localhost ([::1]:34422 helo=webmail.domeneshop.no)
 by webmail12.domeneshop.no with esmtpa (Exim 4.84_2)
 (envelope-from <notro@tronnes.org>)
 id 1hVFTz-0002ai-L0; Mon, 27 May 2019 15:16:07 +0200
MIME-Version: 1.0
Date: Mon, 27 May 2019 15:16:07 +0200
From: =?UTF-8?Q?Noralf_Tr=C3=B8nnes?= <notro@tronnes.org>
To: Tony Lindgren <tony@atomide.com>
Subject: Re: 5.2-rc1 on droid4: spi crash
In-Reply-To: <20190527055343.GG5447@atomide.com>
References: <20190523090926.GA9106@amd>
 <20190523093325.6si5jpvrvyktpax6@earth.universe>
 <20190527055343.GG5447@atomide.com>
Message-ID: <c741aa5b9d366b231b5c40899b1ef814@webmail.domeneshop.no>
X-Sender: notro@tronnes.org
User-Agent: Domeneshop Webmail/1.1.12
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_061615_887524_2EFF230A 
X-CRM114-Status: GOOD (  12.34  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:5b40:0:2700:0:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mpartap@gmx.net, merlijn@wizzup.org, linux-spi@vger.kernel.org,
 Sebastian Reichel <sre@kernel.org>, kernel list <linux-kernel@vger.kernel.org>,
 nekit1000@gmail.com,
 =?UTF-8?Q?No?= =?UTF-8?Q?ralf_Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Mark Brown <broonie@kernel.org>, Pavel Machek <pavel@ucw.cz>,
 linux-omap@vger.kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



Den 2019-05-27 07:53, skrev Tony Lindgren:
> Hi,
> 
> * Sebastian Reichel <sre@kernel.org> [190523 09:33]:
>> Hi,
>> 
>> On Thu, May 23, 2019 at 11:09:26AM +0200, Pavel Machek wrote:
>> > This was greeting me overnight... I don't yet know how reproducible it
>> > is, it happened once so far.
>> 
>> Please pipe the stacktrace into ./scripts/decode_stacktrace.sh
>> to get a readable stacktrace, otherwise this is pretty much useless.
>> FWIW the only SPI device in the Droid 4 is the PMIC.
> 
> I've seen this too, and looks like reverting commit c9ba7a16d0f1
> ("spi: Release spi_res after finalizing message") fixes it based
> several days of testing.
> 
> Noralf and Mark, any ideas what needs to be fixed here?

Mark has a revert in his for-5.2 branch:
spi: Fix Raspberry Pi breakage
https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git/commit/?h=for-5.2&id=0ed56252c9567351344cb7b5cff6140e1bcec943

I don't know when or if he has sent a pull request.
Sorry about the breakage.

Noralf.

> 
> Below is the stacktrace I see without c9ba7a16d0f1 reverted,
> not sure how to reproduce but it seems to happen within about
> one to two days of uptime.
> 
> Regards,
> 
> Tony
> 
> 8< -----------------
> Unable to handle kernel NULL pointer dereference at virtual address 
> 00000008
> pgd = 829f0a5b
> [00000008] *pgd=00000000
> Internal error: Oops: 80000005 [#1] SMP ARM
> ...
> CPU: 0 PID: 71 Comm: spi0 Tainted: G        W         5.2.0-rc1+ #5983
> Hardware name: Generic OMAP4 (Flattened Device Tree)
> PC is at 0x8
> LR is at spi_res_release+0x54/0x80
> pc : [<00000008>]    lr : [<c06faa48>]    psr: 20000113
> sp : ed6e3e88  ip : ed6e3eb0  fp : ed6e3eac
> r10: c0b9eca8  r9 : 00000100  r8 : 00000200
> r7 : ed65bc00  r6 : ed6e5d3c  r5 : ed6e5d0c  r4 : c0d05254
> r3 : 00000008  r2 : c0d05264  r1 : ed6e5d0c  r0 : ed65bc00
> Flags: nzCv  IRQs on  FIQs on  Mode SVC_32  ISA ARM  Segment none
> Control: 10c5387d  Table: abf3c04a  DAC: 00000051
> Process spi0 (pid: 71, stack limit = 0x0ef66f65)
> Stack: (0xed6e3e88 to 0xed6e4000)
> 3e80:                   ed6e5cd0 ed6e5d0c ed65bc00 c0daf080 00000000 
> ed510410
> 3ea0: ed6e3eec ed6e3eb0 c06fd8c4 c06faa00 ed65b800 00000000 ed65ba20 
> ed65bee0
> 3ec0: ed6e3eec ed65bc00 ed6e5cd0 ed6e5d0c 00000000 ed510410 ed510410 
> 00000001
> 3ee0: ed6e3f2c ed6e3ef0 c06fdcd4 c06fd560 00000004 c0170948 ed6e3f20 
> ed65bdfc
> 3f00: ffffe000 ed65be68 ed65be44 ffffe000 c0dc7734 ed65be48 c0166f88 
> 00000000
> 3f20: ed6e3f3c ed6e3f30 c06fe10c c06fd9a4 ed6e3f74 ed6e3f40 c0166f54 
> c06fe0f8
> 3f40: ed6e3f74 6eb8f9ff c0166780 00000000 ed3bccc0 ed659c00 ed6e2000 
> ed65be44
> 3f60: c0166eac ed115c44 ed6e3fac ed6e3f78 c0166e58 c0166eb8 ed3bccdc 
> ed3bccdc
> 3f80: ed6e3fac ed659c00 c0166cf8 00000000 00000000 00000000 00000000 
> 00000000
> 3fa0: 00000000 ed6e3fb0 c01010e8 c0166d04 00000000 00000000 00000000 
> 00000000
> 3fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 
> 00000000
> 3fe0: 00000000 00000000 00000000 00000000 00000013 00000000 00000000 
> 00000000
> Backtrace:
> [<c06fa9f4>] (spi_res_release) from [<c06fd8c4>]
> (spi_transfer_one_message+0x370/0x444)
>  r9:ed510410 r8:00000000 r7:c0daf080 r6:ed65bc00 r5:ed6e5d0c 
> r4:ed6e5cd0
> [<c06fd554>] (spi_transfer_one_message) from [<c06fdcd4>]
> (__spi_pump_messages+0x33c/0x754)
>  r10:00000001 r9:ed510410 r8:ed510410 r7:00000000 r6:ed6e5d0c 
> r5:ed6e5cd0
>  r4:ed65bc00
> [<c06fd998>] (__spi_pump_messages) from [<c06fe10c>]
> (spi_pump_messages+0x20/0x24)
>  r10:00000000 r9:c0166f88 r8:ed65be48 r7:c0dc7734 r6:ffffe000 
> r5:ed65be44
>  r4:ed65be68
> [<c06fe0ec>] (spi_pump_messages) from [<c0166f54>]
> (kthread_worker_fn+0xa8/0x268)
> [<c0166eac>] (kthread_worker_fn) from [<c0166e58>] 
> (kthread+0x160/0x178)
>  r10:ed115c44 r9:c0166eac r8:ed65be44 r7:ed6e2000 r6:ed659c00 
> r5:ed3bccc0
>  r4:00000000
> [<c0166cf8>] (kthread) from [<c01010e8>] (ret_from_fork+0x14/0x2c)
> Exception stack(0xed6e3fb0 to 0xed6e3ff8)
> 3fa0:                                     00000000 00000000 00000000 
> 00000000
> 3fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 
> 00000000
> 3fe0: 00000000 00000000 00000000 00000000 00000013 00000000
>  r10:00000000 r9:00000000 r8:00000000 r7:00000000 r6:00000000 
> r5:c0166cf8
>  r4:ed659c00
> Code: bad PC value
> ---[ end trace a8011e9722dfda5e ]---

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
