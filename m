Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7F75EDB31
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 10:03:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Subject:To:From:Message-ID:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=caBhPcZuGcb26UfABdVkmZUodmpjNPougmI8IlBKlos=; b=bhFLB4byMvP24m
	yGGhy58DxeVoZxlO8VrZpRbK6XIBRwnB0a2+syvnV0rnMwwfFqriEN3xFDArjPrENOvHI5bR1cZs+
	uyVS3Jq2j5AOF4dUCYm0/QlFXMIEJooEb8eIWYPl5qG93vh6f9eQIhC2LBtwazjPgGvqHHM3NX4ng
	YyluoOyGRGrvo9tGTwZMs92QY0Um+swo+2geJ9erz5Etmuj0HaesqoBO0iyHgLdSOJBhghK7z20TR
	3hFpz9Ds8Z0nV2aZQnLvQsWmWs2aobnGW0ePyj9110XzM4t1eNXCO/m4x+3LIW+aqIVPuGWxYuW/i
	oJGx8O04wNCzLLB8GdJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRYH6-0000cr-J7; Mon, 04 Nov 2019 09:03:48 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRYGx-0000bi-En
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 09:03:41 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id E0C8AB4CD;
 Mon,  4 Nov 2019 09:03:36 +0000 (UTC)
Date: Mon, 04 Nov 2019 10:03:34 +0100
Message-ID: <s5hbltsc8t5.wl-tiwai@suse.de>
From: Takashi Iwai <tiwai@suse.de>
To: Greg Kroah-Hartman <gregkh@google.com>
Subject: Re: ALSA: pcm: use dma_can_mmap() to check if a device supports
 dma_mmap_*
In-Reply-To: <19c3f0ca-9b21-0c5e-894d-976594f38a86@google.com>
References: <CAOzgRdYSaaF6OkXGME2=fn1dfTbpyt_GqEs=10oXH=V6SudfyA@mail.gmail.com>
 <s5himo0cbmm.wl-tiwai@suse.de>
 <CAOzgRdYTa-nAa7QV6c2aZs910BACg91vAjcjw4V-Oy8KCZVmmQ@mail.gmail.com>
 <60ee349a-1fe7-46f0-5161-1dcfcb6fbee9@google.com>
 <19c3f0ca-9b21-0c5e-894d-976594f38a86@google.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI/1.14.6 (Maruoka)
 FLIM/1.14.9 (=?UTF-8?B?R29qxY0=?=) APEL/10.8 Emacs/25.3
 (x86_64-suse-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI 1.14.6 - "Maruoka")
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_010339_642603_C9FB78AC 
X-CRM114-Status: GOOD (  18.01  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-xtensa@linux-xtensa.org, youling 257 <youling257@gmail.com>,
 Vladimir Murzin <vladimir.murzin@arm.com>, linux-parisc@vger.kernel.org,
 linux-sh@vger.kernel.org, Takashi Iwai <tiwai@suse.de>,
 Robin Murphy <robin.murphy@arm.com>, Helge Deller <deller@gmx.de>,
 x86@kernel.org, Michal Simek <monstr@monstr.eu>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-m68k@lists.linux-m68k.org, linuxppc-dev@lists.ozlabs.org, hch@lst.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 04 Nov 2019 09:49:43 +0100,
Greg Kroah-Hartman wrote:
> 
> On 11/4/19 9:32 AM, Greg Kroah-Hartman wrote:
> > On 11/4/19 9:27 AM, youling 257 wrote:
> >  > This driver
> > 
> https://android.googlesource.com/kernel/common/+/refs/heads/android-mainline/drivers/usb/gadget/function/f_audio_source.c 
> 
> >
> >  >
> >
> > The driver is broken and needs to be fixed.  Please feel free to submit
> > patches to AOSP to do so as you can trigger this easily.
> 
> Hm, maybe the driver isn't broken...

It is :)

> snd_pcm_lib_preallocate_pages_for_all() is called with
> SNDRV_DMA_TYPE_DEV set, so that should be fine,

That's the cause.  It passes NULL to the device object, which is
incorrect in anyway.  I guess this used to work casually just because
x86 accepts the NULL device object as if an ISA device.

> and the only other
> buffer I can see allocate here is with a call to
> snd_pcm_lib_alloc_vmalloc_buffer() which _should_ be ok, right?

If the driver allocates the buffer via vmalloc (and the snd_* helper),
it shouldn't do preallocate in that way.  That is, the correct fix
would  be simply to drop snd_pcm_lib_preallocate_pages_for_all() call
from the driver code.

Also, a quick skimming showed that the driver needs to set
snd_pcm_lib_get_vmalloc_page to the snd_pcm_ops.page ops.

> I don't see any buffers coming off the stack here, unless the gadget
> controller is the one creating them?

That's the code before actually allocating the buffer itself.  It
checks the availability of mmap support on the architecture, and the
helper code assumed a proper device object passed there via the
preallocation helper.


thanks,

Takashi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
