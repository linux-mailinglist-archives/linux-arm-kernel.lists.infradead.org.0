Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B95A2EDA93
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 09:27:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tsZ06l5pmDT0U25Ly85ma58KdWhei0/T1ccLTZTW1gg=; b=dgG+p4QgOL01NL
	U+Xn36s953BdOLaRMxNCiiKJol8zD7sj8WMq+AgRCtVQSDrtT7OogAZeioc9Fymm7E1GULyP/vWjg
	UhzELXmWur5H0ugxPJU4gr6qxXhOruc1B4rgmfQ5e+3C4y1Hut1MQHFL1bHRrtrr3PbvuRWKJJ8DI
	aMdj9EBNhM5r6ebo8eEBlGjuk6GScWbsfuc2vsH7qyCs7yqEa5FmF36KtmxTExnyo0pHFQCdOoq6J
	GK4qHKpSJw3jDOs1ZdTGKQxFLXfInvV6Oj6LhJOPnnp1piunB9jltJOILbDfbJqV55+OvGGJhNVDA
	wYLYmHvj2dDzkyHBxwPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRXhy-0002bn-Q6; Mon, 04 Nov 2019 08:27:30 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRXhq-0002bL-S7
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 08:27:24 +0000
Received: by mail-il1-x144.google.com with SMTP id n18so6999689ilt.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 00:27:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=HX4pBaoGeNQiQ+yt/czMAU0I4DAG8i9or/oZi9FPxrA=;
 b=W9kqiDQ9H6TBYA6EcpFgXwkd1ww7ZKsT2zyowkzPMfKN4YVvECqYHFNqcisKcs65Kk
 q5u5OPB/FgY9l1YV1ZSKIUBi3rPU9yIYTDQuCkSZbGymlKTuB2FEviFyZWugv98foIPI
 3x9QkmCNURX4PfLY/HJ1CUUuYZvmQxH5YuPrJ9Aqe/SqFCYweQn84SL9R17UI5R8f5Lx
 1w41qnyT3bMi/5NVlEwuLKRFhng03Ho7Hv1RrClIIepNa6dFYP5ePuUS3Fdc4rhOzmrE
 6944AZzIB5M88aKEDACrSUhxtzbdFw6bf7eVXi0c13JkVKXTQJaWqDZde9NYVcjvsI4t
 69Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=HX4pBaoGeNQiQ+yt/czMAU0I4DAG8i9or/oZi9FPxrA=;
 b=LTFQhNjwYA92U04hKdAcDWzQn6rKU88Q9JCk62hIQCGTi2H2SuhGev6+rmEGgDg1eP
 Kvrs1ymy+uKsIZ0ZQwguao6daS9BQ6aaSx4aKlVD6UdOrfOAUfjwEpTNUaEnZIM9B0Wm
 KWh/Sa/+lfNGE+ufza7TeQzOg5OQ/n6kx9qFgyKv3uVmVSXtT9hnHXrd3Mm0jDmRe9ym
 A60CvAADruuMB8nh/AhFNgS0HMWLn4r5VWEJBgPE6ysIFJb6dRXAHmaLDlrRQci5i0VY
 hpRBOMABMVqZrM60hgr4/BVWKOn2LZf0W6Hoor+tZGZsF/2fhN7hbWJ1pK0iNUYCDEg5
 W66Q==
X-Gm-Message-State: APjAAAXpbXjTpcAcYElYhcwXtRjti51vvlGBGKA/9OdXvY74LWwxk5u+
 iPZ5CxryQher7H3QjnqRp6kwN9N2i6Pu0IhvinA=
X-Google-Smtp-Source: APXvYqyuDJikbS+1zmxs0fj3VNP0HAfX0NYxrm42A9cOVaQnPX48CUpkmsJ+WiHDhDI/Wl8EF5mvTyRVDLJGe7oNJhI=
X-Received: by 2002:a92:b00f:: with SMTP id x15mr26048913ilh.280.1572856041383; 
 Mon, 04 Nov 2019 00:27:21 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad5:4348:0:0:0:0:0 with HTTP;
 Mon, 4 Nov 2019 00:27:20 -0800 (PST)
In-Reply-To: <s5himo0cbmm.wl-tiwai@suse.de>
References: <CAOzgRdYSaaF6OkXGME2=fn1dfTbpyt_GqEs=10oXH=V6SudfyA@mail.gmail.com>
 <s5himo0cbmm.wl-tiwai@suse.de>
From: youling 257 <youling257@gmail.com>
Date: Mon, 4 Nov 2019 16:27:20 +0800
Message-ID: <CAOzgRdYTa-nAa7QV6c2aZs910BACg91vAjcjw4V-Oy8KCZVmmQ@mail.gmail.com>
Subject: Re: ALSA: pcm: use dma_can_mmap() to check if a device supports
 dma_mmap_*
To: Takashi Iwai <tiwai@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_002722_935767_B069EAA8 
X-CRM114-Status: GOOD (  12.46  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (youling257[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (youling257[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-xtensa@linux-xtensa.org, Michal Simek <monstr@monstr.eu>,
 Vladimir Murzin <vladimir.murzin@arm.com>, linux-parisc@vger.kernel.org,
 linux-sh@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
 Helge Deller <deller@gmx.de>, x86@kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-m68k@lists.linux-m68k.org, gregkh@google.com,
 linuxppc-dev@lists.ozlabs.org, hch@lst.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This driver https://android.googlesource.com/kernel/common/+/refs/heads/android-mainline/drivers/usb/gadget/function/f_audio_source.c

2019-11-04 16:02 GMT+08:00, Takashi Iwai <tiwai@suse.de>:

> Exactly which driver is hit?  The code path is via hw_support_mmap()
> and it's currently:
>
> static bool hw_support_mmap(struct snd_pcm_substream *substream)
> {
> 	if (!(substream->runtime->hw.info & SNDRV_PCM_INFO_MMAP))
> 		return false;
>
> 	if (substream->ops->mmap ||
> 	    substream->dma_buffer.dev.type != SNDRV_DMA_TYPE_DEV)
> 		return true;
>
> 	return dma_can_mmap(substream->dma_buffer.dev.dev);
> }
>
> so at least the driver has already set the SNDRV_DMA_TYPE_DEV
> explicitly (it's non-zero) and some device object, but the device
> object was invalid for dma_can_mmap() call.
>
> This smells more like a driver-side issue, not in the core side.
>
>
> thanks,
>
> Takashi
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
