Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B7CEDAD1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 09:50:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HhxzwJts0SU4MehbWHiQZsdK+Bb5b+odS4zER8F59Bo=; b=m+oRPluYdcatkyj5ptg/x5XiF
	V1T77H9WzNcG9PlujxGOV3+3BOdo7oKSlWHcB80hRS8X1HgaJTyr2fMhCoaEL/9iLPnNNztUPDQmf
	inZiHDH/MjC/PsjAByHpLTVSryEFDhtLh+e3LBO2KkSqQKUX50+kOtphlqJfsNPRj+cYqJ192NH//
	0NhJfS7j6es7OLhLpZRvxGkaA+rpQlc1pH8zO3Bwwa9OECkpxicGxdjTmY0+6WfinyRqhrinP917k
	yCtvp+Qx2g1sIw49pHyPhE3t2tTPqGtA8ZK8GDFnvDZJ56Yu2ynqEga6Iqb7bJRFRTlYVZUF3kN/c
	Ly5/DVkCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRY3l-000309-2k; Mon, 04 Nov 2019 08:50:01 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRY3X-0002xw-ER
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 08:49:52 +0000
Received: by mail-wm1-x342.google.com with SMTP id 11so15664200wmk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 00:49:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=AZd8DxR702MwoAlKE7sREzCDnCS7TFuUgJFAdqqjsLA=;
 b=h92Y4u9I19V2o1s+5lGhO17NSFYSHZk9QgvM5mDhCb3p4Vr39mQBIAAeC5nqfpsi7E
 4Bu32H/W8VKvnuNSVHaBWMXpaykRQBdpqblyb005vmpwKAd2pPajeArxEgBntM3nBLKj
 CddUtibvOMTxVJx2KNlPjR3XoBIJe+NH2U3j4K0JJelFf1HEtWdgk3iyAHOejVVD2gf+
 RJwDT9t3Hb7iL4cAFs4mdD4rEQqzd1PD/0A6AYCrvWEvFCYF3aqv09lC/5EFGKCN59wI
 T1KGPDXOWiB478W6LZxF6RvwiHkYgYy1j3yOyQ1KqccT28HwFd28G/rbXCZe5nN7BE4U
 VQdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=AZd8DxR702MwoAlKE7sREzCDnCS7TFuUgJFAdqqjsLA=;
 b=a/AQ4Ad5UTiF3XOfUPuA4g1K2KajvMbvA6095kEtujLjzoxBIz0e4fWs/TRYAgSHfN
 e8d/E9besIcuiokyImymigderidd0sZA07OkD2qYXOLHlhEWBz00dbz4paz/Rf7z873S
 XK+3EQT+CYsoSWYkpxNK0iHwqd6MSdgdtDbyOBW+pTKIHpYhf3mD46j2iRMZ5wcV6jH+
 2e9A6SSQvjQUaXlXjDnsPpfiPV/H/r1UZeO7phY9b53U6MyAo0PFQcwlUFqRmh88yE3a
 8V0OAWm0u46c6hZMxFfgzkh9++QW02zY3VrEPuweZgDoBf1xlXNiEhhTxtR/A2nP5NzM
 EWKQ==
X-Gm-Message-State: APjAAAWSijm7W59Wfijtq9BjWC/48aIkyUePsL42U7t6WsCtDjmPHjz8
 hTdvCkN/rt3if2U8QKAJ8LdvvA==
X-Google-Smtp-Source: APXvYqzYY3HzDkh794xMS1oJwQdQFMlMRYGSpRhna8XwoC1msLOBd9EdnxKhwo914zrovZJbmWsmAw==
X-Received: by 2002:a05:600c:2383:: with SMTP id
 m3mr18810088wma.166.1572857385472; 
 Mon, 04 Nov 2019 00:49:45 -0800 (PST)
Received: from [192.168.86.166] (83-86-89-107.cable.dynamic.v4.ziggo.nl.
 [83.86.89.107])
 by smtp.gmail.com with ESMTPSA id o187sm15137370wmo.20.2019.11.04.00.49.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 04 Nov 2019 00:49:44 -0800 (PST)
Subject: Re: ALSA: pcm: use dma_can_mmap() to check if a device supports
 dma_mmap_*
From: Greg Kroah-Hartman <gregkh@google.com>
To: youling 257 <youling257@gmail.com>, Takashi Iwai <tiwai@suse.de>
References: <CAOzgRdYSaaF6OkXGME2=fn1dfTbpyt_GqEs=10oXH=V6SudfyA@mail.gmail.com>
 <s5himo0cbmm.wl-tiwai@suse.de>
 <CAOzgRdYTa-nAa7QV6c2aZs910BACg91vAjcjw4V-Oy8KCZVmmQ@mail.gmail.com>
 <60ee349a-1fe7-46f0-5161-1dcfcb6fbee9@google.com>
Message-ID: <19c3f0ca-9b21-0c5e-894d-976594f38a86@google.com>
Date: Mon, 4 Nov 2019 09:49:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <60ee349a-1fe7-46f0-5161-1dcfcb6fbee9@google.com>
Content-Language: en-US-large
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_004947_524678_ECCDA27A 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
 linux-sh@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
 Helge Deller <deller@gmx.de>, x86@kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-m68k@lists.linux-m68k.org, linuxppc-dev@lists.ozlabs.org, hch@lst.de,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/4/19 9:32 AM, Greg Kroah-Hartman wrote:
 > On 11/4/19 9:27 AM, youling 257 wrote:
 >  > This driver
 > 
https://android.googlesource.com/kernel/common/+/refs/heads/android-mainline/drivers/usb/gadget/function/f_audio_source.c 

 >
 >  >
 >
 > The driver is broken and needs to be fixed.  Please feel free to submit
 > patches to AOSP to do so as you can trigger this easily.

Hm, maybe the driver isn't broken...

snd_pcm_lib_preallocate_pages_for_all() is called with
SNDRV_DMA_TYPE_DEV set, so that should be fine, and the only other
buffer I can see allocate here is with a call to
snd_pcm_lib_alloc_vmalloc_buffer() which _should_ be ok, right?

I don't see any buffers coming off the stack here, unless the gadget
controller is the one creating them?

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
