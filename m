Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 871621742A6
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Feb 2020 00:04:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GnjRiyzaG7Qw+mYHe4wjliRYmGvVIVuCnOYwDA8BQAI=; b=ZheGFhWocHzo+Y
	Dbf3bWd6F8PyR946EZA73LjMUQiO4Owqvw8aY8oOpQeUGbzu5lCXh0D3gWXCZuDFq6pC9jZGlUiDC
	oxNNuCaLnG43rutf20+kFl2TQDwZZdrBrKEtiUGdBAQ7Dto2glsCei2y+jOMaZdfJ9aGTFMDsPfmQ
	mYws6tOSbpEF9Nlftjtn9YwROzR+eAbHkm8Zb0Pgc2fSGG757Jh5/O9MvF262nn3OqA3LI3oDSBCC
	3E2XTDs7RNlM+ATF2zj3Y7eSl+Nm2+rJYwcxJu/u1WmpkurF7AxY0NBj69LGL/Oy//C3wo6pZY/Y+
	/pmV5or7G+rce6fYe0LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7ogE-0007P5-EU; Fri, 28 Feb 2020 23:04:26 +0000
Received: from mail-io1-xd2d.google.com ([2607:f8b0:4864:20::d2d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7og2-0007OC-Nb
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 23:04:16 +0000
Received: by mail-io1-xd2d.google.com with SMTP id z8so5359651ioh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 15:04:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cQ+2Pdo45kYJX4JsmwNIM+Nx5baWpWMGHajxnLK5ZDs=;
 b=ELQ4kFs6JU0+RPYzGlzR4BRUdylOO2JBduiuRepI82OoqacvsMaXSd0TzY9HzPVIde
 xCTIog8Aus+w1AkOzfluBBVSmavoyVWYx8GxiEV9VX/kLj19mmLyG5N5BcqctXlYv64j
 4eHmzOxWRwvoZjugXHfoR+MojQOfx02d38RVU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cQ+2Pdo45kYJX4JsmwNIM+Nx5baWpWMGHajxnLK5ZDs=;
 b=AumHqwiodBa9mI8VFuuQJsquZvGcpbKHgcgej0EG1gLqCvoiPVAaUQjTgAox+qYYya
 it+qqs++ek9dKwsODpDrFtcy8c862UbNfPp6LZULMFPpSyvD8JjEGjjY4TDyOpN3LWpy
 Md7a8eZir8/rV3MFmdFwJmj1jUtMG3yoAyavzJ53Y7nhbTa/26+78xXI/IT/WdURmqYI
 MiqhqZbk7jkNlr88FTuiNPFz+6rB7AYdb6nYuaj+kd3fJgm8ZJlrk96KLmNV9cHesZMz
 WnhH9dSsxH8q9cU9+TpJNTa/BemHjGexBGsVmSdZdFm33xqOS5kTcgKAxUKwDQkc8dmo
 4MZw==
X-Gm-Message-State: APjAAAX9HhqoZ5H89mWh3EBuBHHqTs/8XS71kMmahrEu1myZuTMPsJvM
 swT2S1XChD6HyWHx2mNhHQs5jRDr3+b20kpWSYQotw==
X-Google-Smtp-Source: APXvYqxCvdaiNj9AsdAycV4CmQ3WoFjrIzic5+2Rwr8DzsIj8UEgVJ7rumXoxn9krme0/0PWkvmXTsVZXC64Wp73pCQ=
X-Received: by 2002:a6b:3742:: with SMTP id e63mr5388713ioa.303.1582931053745; 
 Fri, 28 Feb 2020 15:04:13 -0800 (PST)
MIME-Version: 1.0
References: <CAHrpVsXay=8q6a9Vee3wnLVAKHdd_c5+miHbvz+1uqJAEoRZ0A@mail.gmail.com>
 <8f82edf2-7313-eb4c-f68e-ff18f7a5e919@suse.cz>
 <20200227174838.GI3281767@arrakis.emea.arm.com>
 <CAHrpVsXuTEQR7GG6pS4AVjU=ABvmpec7wx3trZuoHz1yf97SVw@mail.gmail.com>
 <13501c8a45e8fd8d98d727f036e96c54faa8425a.camel@suse.de>
 <CAHrpVsUctu3_V_vqruzP0c6SpcRzWE-5Us7OHEFXHU5hQv5MBQ@mail.gmail.com>
 <f0b19db7-96d0-a94b-d313-0112f6cbbdba@arm.com>
In-Reply-To: <f0b19db7-96d0-a94b-d313-0112f6cbbdba@arm.com>
From: Jonathan Richardson <jonathan.richardson@broadcom.com>
Date: Fri, 28 Feb 2020 15:04:02 -0800
Message-ID: <CAHrpVsUGQ31yd_h8AEPzaecHMvjt+5cqDWmPs1qTaL=NeuFwYA@mail.gmail.com>
Subject: Re: cma can't activate area on arm64
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_150414_769950_22432B39 
X-CRM114-Status: UNSURE (   7.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d2d listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-mm@kvack.org, Catalin Marinas <catalin.marinas@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Vlastimil Babka <vbabka@suse.cz>, akpm@linux-foundation.org,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> [    0.000000] efi:  SMBIOS=0x85c90000  SMBIOS 3.0=0x85a20000  ACPI
> 2.0=0x85d50000  MEMATTR=0x8945e118  MEMRESERVE=0x85f85018
> [    0.000000] crashkernel reserved: 0x00000000e0000000 -
> 0x0000000100000000 (512 MB)
> [    0.000000] cma: Reserved 1024 MiB at 0x00000000a0000000
> ...
> [    0.000000] Zone ranges:
> [    0.000000]   DMA      [mem 0x0000000080000000-0x00000000bfffffff]
> [    0.000000]   DMA32    [mem 0x00000000c0000000-0x00000000ffffffff]
>
> Well there's your problem - both zones are only nominally 1GB to begin
> with, and both have stuff in them before we even get to placing CMA. To
> be honest, even without ZONE_DMA that looks pretty tight.
>
> Robin.

OK I see. I don't get the zone range debugs with my working vs generic
defconfig. I'm not sure why. We have quite a bit reserved memory. I
understand better what's happening now, thank you.

Jon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
