Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 453B49B86E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 00:10:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tth71wk8D3PDCzlvl4YpMXEpEDSY1M59nG9xYXFeNLM=; b=Fyx00dX7LQgNpV
	rkCDJnbjuD5/oM3pjBm1dvuh91hsznhyPxDrPUvOXOu2s3udygDXMi1fE9FPTMaXp+xD1iyIX67Ji
	Y4FnvgT7KJsI2Ddn/YxxCFtdOiqa/hzSRu0b0+VloTDNkmtNQXzUgLPxfVO4Ul6ZJCZluOiQZ447m
	hHGHfUpihv0mFcko1Kof8Kxo2/X312/Bfw8WNZKlh+hK/x4AIRziVSUqVBfZUG/EU93l161qeWaqH
	A4gQaqcZVLoAXvM0sL5AwdAwHQEBbrd/ZxTKieu5/Oa8raCBiY8E8fNiV3dVmdBXhxpNbqGjjeMeT
	PySWQF/q4BXPheHaAeAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Hl6-0008Ko-HE; Fri, 23 Aug 2019 22:10:12 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Hku-0007nq-KD
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 22:10:02 +0000
Received: by mail-pg1-x542.google.com with SMTP id n9so6514442pgc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 15:09:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=uVhXsajOF/KCvOZ+NXz04+7vR3jmhllE/wdYxY8tOKI=;
 b=Z9Cpyf2nbbjicXl9Mzx1X0g0MCXjlfihbqE8WK/zetN/vOu8UpGIZN9zdw9MN+RoJZ
 wC+JpZyN+ZGwzaYsCycz0iuz2/VEjzb339izeBbzG+z68o9P+rOJv9Wa6hNbOuWXtgz/
 FsVPUU6Uqg0HdaP8v55+TS4c/A1uLdU9Lu93o66NcqJJfpgyrR8bsCrg3ITBsRPFS378
 cr5NChTHTFSJRLSRD9/DTsipjqDixciNTgjoc52B3qTcyrKStVkbouIfdX8c+QrRuqlc
 tzgFHW6n93aorp4HOBaDwgAvd4gJ8Qx1kwOPFA1b5I7Oi41Kt0vd8IE+B6yT3EnamOIW
 5Gdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=uVhXsajOF/KCvOZ+NXz04+7vR3jmhllE/wdYxY8tOKI=;
 b=S/MEYwj4a5FYVpi63B8z0pEyeWWhQ4r8tEZBFdxnzyj+JoiZ9F4eVYB/xsXUDe1PnM
 jDik/Adew6vK9CWihSoFH9t9nR7DlK/pPnqM9H42dvpPTk1GocbqHbVn2WdaX6bIARK8
 KVnbGr4vTMDp4NevYT0IqVtpD8MEI7pCdvzNHAtPh+7K3YY/XL95TueVxaIkGzYINzDc
 l9i641UUsJKa3FJREYJBmPgnwz6kx2wFQxjwBFhdSLxtf/3mV/XGF5JPknYckhq4R7Ju
 31RHpAz4hyI/ZiZ25+fajg8DvTLiSflh30f114ULY9DOOg+GWwpPnxijqoXXfw+oa6JE
 JEyg==
X-Gm-Message-State: APjAAAWyDPUjTOCFA4LNDFoAa0MFVtdVOKXUuaxuAvZ2C5WX++maBn1s
 oAS/ffiwiqBwk9Zkvg5ld78=
X-Google-Smtp-Source: APXvYqzzM/Guz05FYOq/kgxZTfBhn2/vpiPj+XvyXIGf5JR5RdF9Y750BQvvFgKlO+zwtlHgi7cAUw==
X-Received: by 2002:a63:d315:: with SMTP id b21mr5997142pgg.326.1566598197424; 
 Fri, 23 Aug 2019 15:09:57 -0700 (PDT)
Received: from Asurada-Nvidia.nvidia.com (thunderhill.nvidia.com.
 [216.228.112.22])
 by smtp.gmail.com with ESMTPSA id t4sm4039567pfd.109.2019.08.23.15.09.56
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 23 Aug 2019 15:09:57 -0700 (PDT)
Date: Fri, 23 Aug 2019 15:11:04 -0700
From: Nicolin Chen <nicoleotsuka@gmail.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH v2 2/2] dma-contiguous: Use fallback alloc_pages for
 single pages
Message-ID: <20190823221103.GA3604@Asurada-Nvidia.nvidia.com>
References: <20190506223334.1834-1-nicoleotsuka@gmail.com>
 <20190506223334.1834-3-nicoleotsuka@gmail.com>
 <CAK7LNARacEorb38mVBw_V-Zvz-znWgBma1AP1-z_5B_xZU4ogg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK7LNARacEorb38mVBw_V-Zvz-znWgBma1AP1-z_5B_xZU4ogg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_151000_696267_F85482AC 
X-CRM114-Status: GOOD (  23.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nicoleotsuka[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Tony Lindgren <tony@atomide.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, Max Filippov <jcmvbkbc@gmail.com>,
 Christoph Hellwig <hch@lst.de>, Marek Szyprowski <m.szyprowski@samsung.com>,
 Stephen Rothwell <sfr@canb.auug.org.au>, Joerg Roedel <joro@8bytes.org>,
 Russell King <linux@armlinux.org.uk>, Thierry Reding <treding@nvidia.com>,
 linux-xtensa@linux-xtensa.org, Kees Cook <keescook@chromium.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Chris Zankel <chris@zankel.net>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 iommu@lists.linux-foundation.org, iamjoonsoo.kim@lge.com,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 23, 2019 at 09:49:46PM +0900, Masahiro Yamada wrote:
> On Tue, May 7, 2019 at 7:36 AM Nicolin Chen <nicoleotsuka@gmail.com> wrote:
> >
> > The addresses within a single page are always contiguous, so it's
> > not so necessary to always allocate one single page from CMA area.
> > Since the CMA area has a limited predefined size of space, it may
> > run out of space in heavy use cases, where there might be quite a
> > lot CMA pages being allocated for single pages.
> >
> > However, there is also a concern that a device might care where a
> > page comes from -- it might expect the page from CMA area and act
> > differently if the page doesn't.
> >
> > This patch tries to use the fallback alloc_pages path, instead of
> > one-page size allocations from the global CMA area in case that a
> > device does not have its own CMA area. This'd save resources from
> > the CMA global area for more CMA allocations, and also reduce CMA
> > fragmentations resulted from trivial allocations.
> >
> > Signed-off-by: Nicolin Chen <nicoleotsuka@gmail.com>
> 
> 
> This commit (bd2e75633c8012fc8a7431c82fda66237133bf7e)
> broke the DMA for my MMC driver in the following way:
> 
> 
> 
> 
> [    1.876755] mmc0: ADMA error
> [    1.883385] mmc0: sdhci: ============ SDHCI REGISTER DUMP ===========
> [    1.889834] mmc0: sdhci: Sys addr:  0x00000000 | Version:  0x00000002
> [    1.896284] mmc0: sdhci: Blk size:  0x00007200 | Blk cnt:  0x00000001
> [    1.902733] mmc0: sdhci: Argument:  0x00000000 | Trn mode: 0x00000013
> [    1.909182] mmc0: sdhci: Present:   0x01ff02f6 | Host ctl: 0x00000019
> [    1.915631] mmc0: sdhci: Power:     0x0000000b | Blk gap:  0x00000000
> [    1.922081] mmc0: sdhci: Wake-up:   0x00000000 | Clock:    0x0000fa07
> [    1.928530] mmc0: sdhci: Timeout:   0x0000000b | Int stat: 0x00000001
> [    1.934981] mmc0: sdhci: Int enab:  0x03ff008b | Sig enab: 0x03ff008b
> [    1.941429] mmc0: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00000001
> [    1.947880] mmc0: sdhci: Caps:      0x546ec800 | Caps_1:   0x00000000
> [    1.954329] mmc0: sdhci: Cmd:       0x0000083a | Max curr: 0x00000000
> [    1.960778] mmc0: sdhci: Resp[0]:   0x00000900 | Resp[1]:  0xffffffff
> [    1.967229] mmc0: sdhci: Resp[2]:   0x320f5903 | Resp[3]:  0x3fd05e00
> [    1.973678] mmc0: sdhci: Host ctl2: 0x00000000
> [    1.978125] mmc0: sdhci: ADMA Err:  0x00000001 | ADMA Ptr: 0x000000013965b200
> [    1.985271] mmc0: sdhci: ============================================
> [    1.991758] mmc0: error -5 whilst initialising MMC card
> [    1.991913] 43fb0000.uart: ttyS1 at MMIO 0x43fb0000 (irq = 0,
> base_baud = 768000) is a 16550A
> [    2.011011] hctosys: unable to open rtc device (rtc0)
> [    2.017694] Freeing unused kernel memory: 2368K
> [    2.027131] Run /init as init process
> Starting syslogd: OK
> Starting klogd: OK
> Initializing random number generator... [    2.074399] random: dd:
> uninitialized urandom read (512 bytes read)
> done.
> Starting network: OK
> [    2.109593] mmc0: ADMA error
> [    2.112488] mmc0: sdhci: ============ SDHCI REGISTER DUMP ===========
> [    2.118941] mmc0: sdhci: Sys addr:  0x00000000 | Version:  0x00000002
> [    2.125389] mmc0: sdhci: Blk size:  0x00007200 | Blk cnt:  0x00000001
> [    2.131840] mmc0: sdhci: Argument:  0x00000000 | Trn mode: 0x00000013
> [    2.138289] mmc0: sdhci: Present:   0x01ff02f6 | Host ctl: 0x00000019
> [    2.144738] mmc0: sdhci: Power:     0x0000000b | Blk gap:  0x00000000
> [    2.151188] mmc0: sdhci: Wake-up:   0x00000000 | Clock:    0x00004e47
> [    2.157637] mmc0: sdhci: Timeout:   0x0000000b | Int stat: 0x00000001
> [    2.164087] mmc0: sdhci: Int enab:  0x03ff008b | Sig enab: 0x03ff008b
> [    2.170536] mmc0: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00000001
> [    2.176987] mmc0: sdhci: Caps:      0x546ec800 | Caps_1:   0x00000000
> [    2.183435] mmc0: sdhci: Cmd:       0x0000083a | Max curr: 0x00000000
> [    2.189886] mmc0: sdhci: Resp[0]:   0x00000900 | Resp[1]:  0xffffffff
> [    2.196335] mmc0: sdhci: Resp[2]:   0x320f5903 | Resp[3]:  0x3fd05e00
> [    2.202784] mmc0: sdhci: Host ctl2: 0x00000000
> [    2.207232] mmc0: sdhci: ADMA Err:  0x00000001 | ADMA Ptr: 0x000000013965b200
> [    2.214379] mmc0: sdhci: ============================================
> 
> [    2.220881] mmc0: error -5 whilst initialising MMC card
> Welcome to Buildroot
> buildroot login: [    2.332786] mmc0: ADMA error
> [    2.335668] mmc0: sdhci: ============ SDHCI REGISTER DUMP ===========
> [    2.342119] mmc0: sdhci: Sys addr:  0x00000000 | Version:  0x00000002
> [    2.348568] mmc0: sdhci: Blk size:  0x00007200 | Blk cnt:  0x00000001
> [    2.355018] mmc0: sdhci: Argument:  0x00000000 | Trn mode: 0x00000013
> [    2.361468] mmc0: sdhci: Present:   0x01ff02f6 | Host ctl: 0x00000019
> [    2.367917] mmc0: sdhci: Power:     0x0000000b | Blk gap:  0x00000000
> [    2.374367] mmc0: sdhci: Wake-up:   0x00000000 | Clock:    0x0000f447
> [    2.380816] mmc0: sdhci: Timeout:   0x0000000b | Int stat: 0x00000001
> [    2.387267] mmc0: sdhci: Int enab:  0x03ff008b | Sig enab: 0x03ff008b
> [    2.393716] mmc0: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00000001
> [    2.400166] mmc0: sdhci: Caps:      0x546ec800 | Caps_1:   0x00000000
> [    2.406615] mmc0: sdhci: Cmd:       0x0000083a | Max curr: 0x00000000
> [    2.413065] mmc0: sdhci: Resp[0]:   0x00000900 | Resp[1]:  0xffffffff
> [    2.419515] mmc0: sdhci: Resp[2]:   0x320f5903 | Resp[3]:  0x3fd05e00
> [    2.425963] mmc0: sdhci: Host ctl2: 0x00000000
> [    2.430412] mmc0: sdhci: ADMA Err:  0x00000001 | ADMA Ptr: 0x000000013965b200
> [    2.437557] mmc0: sdhci: ============================================
> [    2.444031] mmc0: error -5 whilst initialising MMC card
> [    2.572203] mmc0: ADMA error
> [    2.575089] mmc0: sdhci: ============ SDHCI REGISTER DUMP ===========
> [    2.581540] mmc0: sdhci: Sys addr:  0x00000000 | Version:  0x00000002
> [    2.587989] mmc0: sdhci: Blk size:  0x00007200 | Blk cnt:  0x00000001
> [    2.594439] mmc0: sdhci: Argument:  0x00000000 | Trn mode: 0x00000013
> [    2.600889] mmc0: sdhci: Present:   0x01ef02f6 | Host ctl: 0x00000019
> [    2.607339] mmc0: sdhci: Power:     0x0000000b | Blk gap:  0x00000000
> [    2.613788] mmc0: sdhci: Wake-up:   0x00000000 | Clock:    0x0000e8c7
> [    2.620237] mmc0: sdhci: Timeout:   0x0000000b | Int stat: 0x00000001
> [    2.626686] mmc0: sdhci: Int enab:  0x03ff008b | Sig enab: 0x03ff008b
> [    2.633137] mmc0: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00000001
> [    2.639586] mmc0: sdhci: Caps:      0x546ec800 | Caps_1:   0x00000000
> [    2.646036] mmc0: sdhci: Cmd:       0x0000083a | Max curr: 0x00000000
> [    2.652485] mmc0: sdhci: Resp[0]:   0x00000900 | Resp[1]:  0xffffffff
> [    2.658936] mmc0: sdhci: Resp[2]:   0x320f5903 | Resp[3]:  0x3fd05e00
> [    2.665384] mmc0: sdhci: Host ctl2: 0x00000000
> [    2.669832] mmc0: sdhci: ADMA Err:  0x00000001 | ADMA Ptr: 0x000000013965b200
> [    2.676979] mmc0: sdhci: ============================================
> [    2.683450] mmc0: error -5 whilst initialising MMC card
> 
> CTRL-A Z for help | 115200 8N1 | NOR | Minicom 2.7.1 | VT102 | Offline
> | ttyUSB0
> 
> Reverting this commit fixed the problem.

We are having another problem with the new API and Christoph
submitted a patch at: https://lkml.org/lkml/2019/8/20/86

Would it be possible for you to test to see if it can fix?

We can revert my fallback change after all, if Christoph's
patch doesn't work for you either.

Thanks
Nicolin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
