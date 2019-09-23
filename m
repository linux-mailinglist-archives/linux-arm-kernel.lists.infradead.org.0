Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B33BB269
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 12:47:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tq/2b3kjy5vD/WXGgAfT6rxH3oop6JYnythUX1F3w4s=; b=VHRDxaAoKR+++S
	tHVdQM4gLHXUZoJHMmTjRR+hvk2HPzgQ68XxJSVcAZ4L5yZelRIZt3u8NXO8JeeThbE+xNZlY5DNW
	GvMfYD6ALdpkI2MhTxDapXhEuH9NIGRxBqh/5N7ZB6Xvd8G7KT+fu4DXFPPGgAlwHAECrBpFdCvVv
	m2QXW7NBCWyx37/Nga3XhGy82x0jx5J2EZKqq7gIYUgDyWRgPxr1eBusrIM9Hkc1z5DtMmxb9HSOR
	EJjbXgD0OFWUU1GdZwGxO2MqwEfu+0L5geoFkFnR5BWZD4mCK4nizl4clBm9YOMy1PLALwcAKWTDf
	f8TacSKiEwHInlErnCrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCLsg-0000ik-1I; Mon, 23 Sep 2019 10:47:46 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCLsY-0000i4-St
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 10:47:40 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 279971FF3E;
 Mon, 23 Sep 2019 12:47:34 +0200 (CEST)
Received: from [192.168.108.37] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 891ED1FF27;
 Mon, 23 Sep 2019 12:47:33 +0200 (CEST)
Subject: Re: Propagating audio properties along the audio path
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
To: alsa-devel@alsa-project.org
References: <f7861989-8a2d-ed89-8f1f-68bad7013a34@free.fr>
 <d67b68b9-49c0-6f78-4649-27b3b437a65f@free.fr>
Message-ID: <878168cb-07e0-cdfd-37e9-9b9fb229155b@free.fr>
Date: Mon, 23 Sep 2019 12:47:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <d67b68b9-49c0-6f78-4649-27b3b437a65f@free.fr>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Mon Sep 23 12:47:34 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_034739_073219_E1E046F4 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
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
Cc: Takashi Iwai <tiwai@suse.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Jaroslav Kysela <perex@perex.cz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20/09/2019 11:50, Marc Gonzalez wrote:

> One more concern popped up: if the audio stream changes mid-capture
> (for example, a different TV program uses different audio settings),
> then I would detect this in the eARC receiver, but it's not clear
> (to me) how to propagate the info to the DSP...
> 
> I'm not even sure when the HW params actually get applied...
> Is it for SNDRV_PCM_IOCTL_PREPARE? SNDRV_PCM_IOCTL_START?

I enabled debug logs in the sound layer:
echo "file sound/* +fpm" > /sys/kernel/debug/dynamic_debug/control

and sprinkled dump_stack() in several driver callbacks.

When I run 'tinycap /tmp/earc.wav -t 10 -r 44100 -b 32'
I see the open/SyS_openat call and the capture ioctl call
which together generate calls to
1) dpcm_fe_dai_open
2) dpcm_fe_dai_hw_params
3) dpcm_fe_dai_prepare
4) dpcm_fe_dai_trigger

But everything looks "synchronous", as in "reaction to user-space commands".
I don't see how "asynchronous" events are dealt with, such as the stream
params changing while a capture is active?

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
