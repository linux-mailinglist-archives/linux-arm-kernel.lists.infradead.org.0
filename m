Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0119CEDA42
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 09:03:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Subject:To:From:Message-ID:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uCr4xY6UFFGzRDBoYjHpxBmY513myle/9orsU1pzKqM=; b=XqjeH1PtKEsqjB
	9vFHDEBJB5jWfi9fNHEOdOKZdjnZRN7zYYSPhQyJoGhnSP/a5Lb6rJIT9TNRE/96bTlj2ZfU7hYME
	8JfVax7EzbF1cE4oOSTMDvKr1DwSeV0Xg9huK4IBhkwvfyqSQ1sfGURTh+1AL/+hyXgRtsXldkT09
	O6kLMpc7Q6JI9mpDU4SAslH57DnL9q+z3TIHw8VnRllPwFYTh9UxA0cOS5HgYh2/gkO/9FljYhRaz
	4muMkK0bY2Ps9Zq9RFp0mcDgYkKg5hn1kTaAmmPY8QlSEbq7hvsVh9ABhHsRt7MTpimfzRKLAQAYz
	PUDr17fEpy1NJsUyK9yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRXKD-0006d4-7U; Mon, 04 Nov 2019 08:02:57 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRXK4-0006br-3M
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 08:02:49 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 80E71AD0B;
 Mon,  4 Nov 2019 08:02:42 +0000 (UTC)
Date: Mon, 04 Nov 2019 09:02:41 +0100
Message-ID: <s5himo0cbmm.wl-tiwai@suse.de>
From: Takashi Iwai <tiwai@suse.de>
To: youling 257 <youling257@gmail.com>
Subject: Re: ALSA: pcm: use dma_can_mmap() to check if a device supports
 dma_mmap_*
In-Reply-To: <CAOzgRdYSaaF6OkXGME2=fn1dfTbpyt_GqEs=10oXH=V6SudfyA@mail.gmail.com>
References: <CAOzgRdYSaaF6OkXGME2=fn1dfTbpyt_GqEs=10oXH=V6SudfyA@mail.gmail.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI/1.14.6 (Maruoka)
 FLIM/1.14.9 (=?UTF-8?B?R29qxY0=?=) APEL/10.8 Emacs/25.3
 (x86_64-suse-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI 1.14.6 - "Maruoka")
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_000248_434175_401280E6 
X-CRM114-Status: GOOD (  13.78  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-xtensa@linux-xtensa.org, Michal Simek <monstr@monstr.eu>,
 Vladimir Murzin <vladimir.murzin@arm.com>, linux-parisc@vger.kernel.org,
 linux-sh@vger.kernel.org, Takashi Iwai <tiwai@suse.de>,
 Robin Murphy <robin.murphy@arm.com>, Helge Deller <deller@gmx.de>,
 x86@kernel.org, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-m68k@lists.linux-m68k.org, gregkh@google.com,
 linuxppc-dev@lists.ozlabs.org, hch@lst.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 04 Nov 2019 08:06:37 +0100,
youling 257 wrote:
> 
> This patch cause oops on android mainline kernel about gadget audio_source.
> Androidx86 run on android mainline kernel.
> 
> [ 385.104963] android_work: sent uevent USB_STATE=CONNECTED
> [ 385.109006] android_work: sent uevent USB_STATE=DISCONNECTED
> [ 385.182024] android_work: sent uevent USB_STATE=CONNECTED
> [ 385.184737] configfs-gadget gadget: high-speed config #1: b
> [ 385.184921] android_work: sent uevent USB_STATE=CONFIGURED
> [ 385.285268] BUG: kernel NULL pointer dereference, address: 0000000000000220
> [ 385.285339] #PF: supervisor read access in kernel mode
> [ 385.285374] #PF: error_code(0x0000) - not-present page
> [ 385.285436] PGD 80000000791e6067 P4D 80000000791e6067 PUD 0
> [ 385.285473] Oops: 0000 [#1] PREEMPT SMP PTI
> [ 385.285509] CPU: 0 PID: 5780 Comm: Binder:1383_5 Tainted: G O
> 5.4.0-rc6-android-x86_64+ #1
> [ 385.285571] Hardware name: Insyde ONDA Tablet/ONDA Tablet, BIOS
> ONDA.D890HBBNR0A 03/11/2015
> [ 385.285639] RIP: 0010:dma_can_mmap+0x5/0x30
> [ 385.285675] Code: 74 11 e9 ae 98 b2 00 48 8b 05 9f 40 94 01 48 85 c0
> 75 e3 31 c0 c3 66 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 0f 1f 44
> 00 00 <48> 8b 87 20 02 00 00 48 85 c0 74 09 48 83 78 10 00 0f 95 c0 c3
> 48
> [ 385.285762] RSP: 0018:ffffb39443b63b78 EFLAGS: 00010246
> [ 385.285797] RAX: 0000000000000001 RBX: ffffa28b91756600 RCX: 0000000000000040
> [ 385.285857] RDX: ffffffffb62b2a00 RSI: 0000000000000000 RDI: 0000000000000000
> [ 385.285917] RBP: ffffa28bac69f800 R08: ffffffffb63141b0 R09: ffffa28bf9a34a88
> [ 385.285952] R10: ffffffffb62b2be0 R11: ffffffffb62b2bd0 R12: 0000000000000008
> [ 385.286013] R13: 0000000000000000 R14: ffffa28bacd736a8 R15: ffffa28bacd736c8
> [ 385.286076] FS: 0000000000000000(0000) GS:ffffa28bfb600000(0063)
> knlGS:00000000f5d81970
> [ 385.286110] CS: 0010 DS: 002b ES: 002b CR0: 0000000080050033
> [ 385.286171] CR2: 0000000000000220 CR3: 000000007b2f6000 CR4: 00000000001006f0
> [ 385.286232] Call Trace:
> [ 385.286275] snd_pcm_hw_constraints_complete+0x3e/0x1f0
> [ 385.286314] snd_pcm_open_substream+0x94/0x140
> [ 385.286377] snd_pcm_open+0xf0/0x240
> [ 385.286416] ? wake_up_q+0x60/0x60
> [ 385.286460] snd_pcm_playback_open+0x3d/0x60
> [ 385.286533] chrdev_open+0xa2/0x1c0
> [ 385.286574] ? cdev_put.part.0+0x20/0x20
> [ 385.286615] do_dentry_open+0x13a/0x380
> [ 385.286686] path_openat+0x588/0x15d0
> [ 385.286728] do_filp_open+0x91/0x100
> [ 385.286769] ? __check_object_size+0x136/0x147
> [ 385.286840] do_sys_open+0x184/0x280
> [ 385.286880] ? handle_mm_fault+0xd7/0x1c0
> [ 385.286920] do_fast_syscall_32+0x8e/0x250
> [ 385.286992] entry_SYSENTER_compat+0x7c/0x8e
> 
> [ 385.287302] CR2: 0000000000000220
> [ 385.287391] ---[ end trace 73ffcefcbbe2b9a0 ]---

Exactly which driver is hit?  The code path is via hw_support_mmap()
and it's currently:

static bool hw_support_mmap(struct snd_pcm_substream *substream)
{
	if (!(substream->runtime->hw.info & SNDRV_PCM_INFO_MMAP))
		return false;

	if (substream->ops->mmap ||
	    substream->dma_buffer.dev.type != SNDRV_DMA_TYPE_DEV)
		return true;

	return dma_can_mmap(substream->dma_buffer.dev.dev);
}

so at least the driver has already set the SNDRV_DMA_TYPE_DEV
explicitly (it's non-zero) and some device object, but the device
object was invalid for dma_can_mmap() call.

This smells more like a driver-side issue, not in the core side.


thanks,

Takashi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
