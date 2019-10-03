Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45812CAA1B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 19:25:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aYoOAuSv3xizR4bTJZ5Yuzibt9nRggC+l0nd3mZ7Kxg=; b=YmNdnmajwYYDYw
	FZKPtDd2BMI0wrlxKqIPt1DBUxMC5jUjr6Su6JUEmB8lS5wyAlJTfNyMu/UDx7OF9K0NjYg9hg6Hy
	Dbncp1i4QZUlXUsPNxKeoaIgo3jj+Yb5lE2AhTPvXAKp7MbMr6xHoOjQ4gVvZ+c8PZgABVFeEz3im
	vV3DbX9tLG6yXK+zKixu5HPrZQtifIOOxXI7B1mMdYtYsd9+hvW3B2Txmejr2kTJCgztPjpKQVwul
	xQ8njJMj0bH8f8d6QvpbDcc7Rq+URTmLxbOdHye8FekHgVZC32BaQmK6TqNGl3L/BuVDCyrJi3aJJ
	dl9g7O18g4/I7+adlytA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG4r2-0005ym-4y; Thu, 03 Oct 2019 17:25:28 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG4qu-0005wr-Ig
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 17:25:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1570123498;
 bh=a9oKw+G44AtlA+jaqjmu+QP/MbD7VIRvP1fzsSl1jWY=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=OyntvkDhSBd+lcSimjgQtMTdTq1liENxQsy/kKSUI7J20fZPpqx9IEMsCo0HYlxi3
 Jn1+0W1iJ3FDoWGscBI6p0EqvRG58//rTlU59JQeF2vNIeBHc+VPJ6o9Dd2TQruj0L
 /c58Xfou3eQAVdfp3l5SbiLvepV/ywnTF22Ae9VA=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.116]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1Mt75H-1i19QR0Chl-00tQ3g; Thu, 03
 Oct 2019 19:24:58 +0200
Subject: Re: [PATCH V3 0/8] ARM: Add minimal Raspberry Pi 4 support
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Matthias Brugger <mbrugger@suse.com>,
 Guillaume Gardet <Guillaume.Gardet@arm.com>,
 Adrian Hunter <adrian.hunter@intel.com>
References: <1569672435-19823-1-git-send-email-wahrenst@gmx.net>
 <3853cd8425743b4991f5d599ec1c0fbbf4232f95.camel@suse.de>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <d4774e5a-abc2-4c43-c97d-76600f74132d@gmx.net>
Date: Thu, 3 Oct 2019 19:24:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <3853cd8425743b4991f5d599ec1c0fbbf4232f95.camel@suse.de>
Content-Language: en-US
X-Provags-ID: V03:K1:EO5mxlykclguxoXaeuyqCeEMlckCcNicb6L7FgifvZX7BQ17InS
 x1sVXfhEhGV0gEY/muonIWkFUVTNi8UwkJl5T6hEBMvyUcyxEjPT55Ti1b/nJg5Vr+xUym3
 DbfYTuBWTaSfeh1d/wODuJWCpJaQBJnKkEqtgAaEAxuWN83O7Np87INnECFGrSbF0BM+5si
 FGf0QNzL6rABrSafAyO+A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:IzfPpI9X5X0=:Ggtr4z9LmId4nfOTI8CXCn
 s63aNnxYQJGhBo5Oo0cafP0eFejPqxqUZD2hM0tO1ABEdCTOy4nQmIV5WHsrwNHIpbWE05TFI
 VRQFYllilVSfjjq+MLjc5FdwsHr1Hcf3zYNIWESzuHg95S08iMFngG6dmAWIWktRtWgEn/Y79
 NgrV3Yj8P2Q937lH+22WdXaxoSsizqt5qNNr8p/fi3kW4RDK89Xrx1cnIabqk/jhkniLTxXWK
 Zwn54jDxLmGusyxQx7B9tUrqfCrjWSU5gfg36K2l9cms7qFQT9IrA4BUMaMAIYyybxbdQ+Xgu
 xh0HIHXmJvKV6zL+5BsF07ACCECrWXg+v8L99QxhWwQpQ6dvqCdaLWKnQbfST08lKyyJmzmA3
 N8n3/vBuq2qOywRP6mIrwba8jKzO0aTCAS9ObKSBzifCZujhsa8zKn+Q//eP2G6oTF2g8+v1z
 I752h3P2IvMVGdi/wl2WRjp/pYv5sK5bXJ+lEeREsfUeecsDtd9xZokN43pmWy+mf7pAfYyXt
 i8sXZCZwCGy43e9m93u6Qz1EcAlsWyABTRejT+iZhAu68yXh61DIHMQl3lw/fbcoVgY4c2lJo
 x0KlmBoQzmwFCF2Nz5yokW1PRCfWx7naYMv7dINQdJkKLjrT/H45AGtY9W5Y7CUFkS/Js1quJ
 k/oDhn1HkD+q1mJTrAkjSVwISB8jOz7hx6T4TRrUOI1tU0JOMCy82aGU64G0ZeS/Mj4crtOf9
 1H5WKh1K4HKeJB9sQM00Q6/T5EBgZmsOI88x4pu9PZ2vE8ZeQ3dS7Oo34Zetx9M7pVNr0lTng
 P8UIn1TDHfJ2fQ5wtliL7Y9Fdql1+rLTNm6zEqt0Up4IdUmx1G5Xaa2RG+qrbHipoUQdTUSE1
 10W7ISrdCDMoPQAEPg5vkPc0CJm8XhNNUcdMu219cib+PtzX5IW6BcWPsmrpwNEBTH2iIe7xR
 jfH+p17On1nG6U5RM1hWCi+g69tmZ1ZKkzdfWvlpqPYDTO6ZP2tjK0AIP6tYD9zuMjpFQZdTp
 0uhU+55jSMp2TA+NTEz6ZsH5RpVYUNN8zjuIhmysK6mfeknVxhuVN01UrHytI++wdX0XeOSCc
 4uD3XWAx+AGQsKI1tDspQziE7yBKMK9ZNPkbrC2KiQeO+mh7wCAry5aQLVDa/rvcidnIbqe2S
 cjljKYGlBYwmZ+dLcAJ72pbaabu1e5bF46Q897+UHQUMIcHkygwpB6qGoI2jNZ9NhVdBwjp2v
 kpHacT3683RYVuUX0900/hmcyNLDMMsCbtSpaDM6OeGLadzple+6waaZZL+I=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_102520_954524_B4B06539 
X-CRM114-Status: GOOD (  20.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.15.18 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org, Will Deacon <will@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nicolas,

Am 03.10.19 um 19:09 schrieb Nicolas Saenz Julienne:
> On Sat, 2019-09-28 at 14:07 +0200, Stefan Wahren wrote:
>> This series adds minimal support for the new Raspberry Pi 4, so we are able
>> to login via debug UART.
>>
>> Patch 1-2:   Fix some DT schema warnings
>> Patch 3-4:   Prepare DTS for the new SoC BMC2711
>> Patch 5-7:   Add Raspberry Pi 4 DTS support
>> Patch 8:     Update MAINTAINERS
>>
>> Unfortunately the Raspberry Pi Foundation didn't released a
>> peripheral documentation for the new SoC yet. So we only have a preliminary
>> datasheet [1] and reduced schematics [2].
>>
>> Known issues:
>> Since Linux 5.3-rc1 DMA doesn't work properly on that platform.
>> Nicolas Saenz Julienne investigates on that issue. As a temporary workaround
>> i reverted the following patch to test this series:
>>
>> 79a98672 "dma-mapping: remove dma_max_pfn"
>> 7559d612 "mmc: core: let the dma map ops handle bouncing"
> [ adding Matthias and Guillaume who first saw this ]
> [ also adding Adrian Hunter just in case ]
>
> Hi,
> we stubled upon a bug in RPi's sdhci-iproc while testing this series.
>
> It only shows-up on slow SD cards, the class 4 ones. On each SD operation we
> get the following warning:
>
> [    2.093328] mmc1: Got data interrupt 0x00000002 even though no data operation was in progress.
> [    2.102072] mmc1: sdhci: ============ SDHCI REGISTER DUMP ===========
> [    2.108603] mmc1: sdhci: Sys addr:  0x00000000 | Version:  0x00001002
> [    2.115134] mmc1: sdhci: Blk size:  0x00007200 | Blk cnt:  0x00000000
> [    2.121664] mmc1: sdhci: Argument:  0x00000000 | Trn mode: 0x00000033
> [    2.128195] mmc1: sdhci: Present:   0x1fff0000 | Host ctl: 0x00000017
> [    2.134725] mmc1: sdhci: Power:     0x0000000f | Blk gap:  0x00000080
> [    2.141255] mmc1: sdhci: Wake-up:   0x00000000 | Clock:    0x00000107
> [    2.147785] mmc1: sdhci: Timeout:   0x00000000 | Int stat: 0x00000000
> [    2.154314] mmc1: sdhci: Int enab:  0x03ff100b | Sig enab: 0x03ff100b
> [    2.160843] mmc1: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00000000
> [    2.167373] mmc1: sdhci: Caps:      0x45ee6432 | Caps_1:   0x0000a525
> [    2.173902] mmc1: sdhci: Cmd:       0x00000c1a | Max curr: 0x00080008
> [    2.180432] mmc1: sdhci: Resp[0]:   0x00000b00 | Resp[1]:  0x00edc87f
> [    2.186961] mmc1: sdhci: Resp[2]:   0x325b5900 | Resp[3]:  0x00400e00
> [    2.193490] mmc1: sdhci: Host ctl2: 0x00000001
> [    2.197992] mmc1: sdhci: ADMA Err:  0x00000000 | ADMA Ptr: 0xec040208
> [    2.204521] mmc1: sdhci: ============================================
>
> Aside from the serial console noise the RPi still boots alright. But as it's
> printing one of these per SD operation which is a lot...
>
> I've been able to reproduce this both with arm and arn64 on multiple SD cards.
> Just copying the contents of a class 4 card into a class 10 one fixes the
> issue.
>
> Any ideas?
i saw this once during testing. AFAIR there has been some changes to
sdhci in the downstream tree, maybe they was related to this issue.
>
> Regards,
> Nicolas
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
