Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D3C6B8E0B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 11:51:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=46jEvnVfFCOt8xHrmPam0WEm1K28d/Yg/RcFSUg/mCs=; b=AeahGc872KpmFv
	7XWrtEZVyE7NsdSwDa3Gixm+QSw16dRHqpSGEKVnJpykpdlm0MnwV/U/TDm1WDFPt2WMXxpNN6n3G
	Xk5teExsYzsUDvjsWYEuybleZLYJQ/qCXfc4l2ENxnYtieGMqp1+A3rPXCjHBmDNb+9U50JYGcfWt
	rWS93Q9Xh2uBBe0reNY0uOEy6IO+OOvYYeU14BjhANyo8Wb1pDtqeqhgDxJ+/7PqVmzIKHwE47eSd
	UUpsmsefCjjYrFXn26NqmWXNOcU0o+AKoz7USsQtbuYYkXT/nQPGnDpKFAA6prD23maUT+3hNGrQv
	FjjEVjutJziG16XR8U2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBFZA-0001Hm-0n; Fri, 20 Sep 2019 09:51:04 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBFYy-0001GH-RS
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 09:50:54 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id ECD44206C4;
 Fri, 20 Sep 2019 11:50:47 +0200 (CEST)
Received: from [192.168.108.37] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id A703720140;
 Fri, 20 Sep 2019 11:50:47 +0200 (CEST)
Subject: Re: Propagating audio properties along the audio path
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
To: alsa-devel@alsa-project.org
References: <f7861989-8a2d-ed89-8f1f-68bad7013a34@free.fr>
Message-ID: <d67b68b9-49c0-6f78-4649-27b3b437a65f@free.fr>
Date: Fri, 20 Sep 2019 11:50:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <f7861989-8a2d-ed89-8f1f-68bad7013a34@free.fr>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Fri Sep 20 11:50:47 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_025053_187373_B7EBE67A 
X-CRM114-Status: GOOD (  17.47  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Takashi Iwai <tiwai@suse.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Jaroslav Kysela <perex@perex.cz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 17/09/2019 17:33, Marc Gonzalez wrote:

> Disclaimer: I've never worked in the sound/ layer, and it is possible that
> some of my questions are silly or obvious.
> 
> Basically, I'm trying to implement some form of eARC(*) on an arm64 SoC.
> (*) enhanced Audio Return Channel (from HDMI 2.1)
> 
> The setup looks like this:
> 
> A = Some kind of audio source, typically a TV or game console
> B = The arm64 SoC, equipped with some nice speakers
> 
>    HDMI
> A ------> B
> 
> If we look inside B, we actually have
> B1 = an eARC receiver (input = HDMI, output = I2S)
> B2 = an audio DSP (input = I2S, output = speakers)
> 
>     I2S        ?
> B1 -----> B2 -----> speakers
> 
> 
> If I read the standard right, B is supposed to advertise which audio formats
> it supports, and A is supposed to pick "the best". For the sake of argument,
> let's say A picks "PCM, 48 kHz, 8 channels, 16b".
> 
> At some point, B receives audio packets, parses the Channel Status, and
> determines that A is sending "PCM, 48 kHz, 8 channels, 16b". The driver
> then configures the I2S link, and forwards the audio stream over I2S to
> the DSP.
> 
> QUESTION_1:
> How is the DSP supposed to "learn" the properties of the audio stream?
> (AFAIU, they're not embedded in the data, so there must be some side-channel?)
> I assume the driver of B1 is supposed to propagate the info to the driver of B2?
> (Via some call-backs? By calling a function in B2?)
> 
> QUESTION_2:
> Does it ever make sense for B2 to ask B1 to change the audio properties?
> (Not sure if B1 is even allowed to renegotiate.)

I think it boils down to the "Dynamic PCM" abstraction?

	https://www.kernel.org/doc/html/latest/sound/soc/dpcm.html


The downstream driver (7500 lines) is tough to ingest for a noob.

	https://source.codeaurora.org/quic/la/kernel/msm-4.4/tree/sound/soc/msm/msm8998.c?h=LE.UM.1.3.r3.25

I'll keep chipping at whatever docs I can find.


One more concern popped up: if the audio stream changes mid-capture
(for example, a different TV program uses different audio settings),
then I would detect this in the eARC receiver, but it's not clear
(to me) how to propagate the info to the DSP...

I'm not even sure when the HW params actually get applied...
Is it for SNDRV_PCM_IOCTL_PREPARE? SNDRV_PCM_IOCTL_START?

I couldn't find much documentation for the IOCTLs in the kernel:

$ git grep SNDRV_PCM_IOCTL  Documentation/
Documentation/sound/designs/tracepoints.rst:value to these parameters, then execute ioctl(2) with SNDRV_PCM_IOCTL_HW_REFINE
Documentation/sound/designs/tracepoints.rst:or SNDRV_PCM_IOCTL_HW_PARAMS. The former is used just for refining available
Documentation/sound/designs/tracepoints.rst:        SNDRV_PCM_IOCTL_HW_REFINE only. Applications can select which
Documentation/sound/designs/tracepoints.rst:        SNDRV_PCM_IOCTL_HW_PARAMS, this mask is ignored and all of parameters
Documentation/sound/designs/tracepoints.rst:        SNDRV_PCM_IOCTL_HW_REFINE to retrieve this flag, then decide candidates
Documentation/sound/designs/tracepoints.rst:        of parameters and execute ioctl(2) with SNDRV_PCM_IOCTL_HW_PARAMS to


Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
