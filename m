Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28EBEBCA2D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 16:26:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WJOjzIPL6DDo9TVtKMf7BzN1oYE3rTixtbqrYwMa3/Q=; b=QtTEASAYrFcn0H
	LDRM4n+r07+AfcOAhMcDnMDOZa8L0xfNHVpR5TU0he6eKfwtqPcZf3AsR5HyHd8J06rcGgbL/77Pu
	iSvpFeD7dot7Rzsx2EL0cdkLOVbDRa3JOPF/A7IfW0w2oTYbeRqA3cE6CDodcroUKw0MYdB5oWqgU
	Gj78qOjyZD69rNmt6532plaXRAgmBz7cxICUAxrncpqclYWVNlMsoA0VmzHMjy3xZEg/KX8KBiX5E
	k6Z/u6Wb26JNWHH7d0t/3K+FjTKmiGwOoyrNF4Hty7oVKvipFKZ5opUcrZ1Fr8s+ivH8HCK0u2O6j
	7d+jRxzYuEagBZ9HhMKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iClmC-0008Um-K0; Tue, 24 Sep 2019 14:26:48 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iClls-0008UR-Sl
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 14:26:30 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 42DBB20B97;
 Tue, 24 Sep 2019 16:26:22 +0200 (CEST)
Received: from [192.168.108.37] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id C139820B53;
 Tue, 24 Sep 2019 16:26:20 +0200 (CEST)
Subject: Re: [alsa-devel] Propagating audio properties along the audio path
To: Charles Keepax <ckeepax@opensource.cirrus.com>
References: <f7861989-8a2d-ed89-8f1f-68bad7013a34@free.fr>
 <d67b68b9-49c0-6f78-4649-27b3b437a65f@free.fr>
 <878168cb-07e0-cdfd-37e9-9b9fb229155b@free.fr>
 <20190924135219.GQ10204@ediswmail.ad.cirrus.com>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <0a1bd89e-c6b7-d9ce-dac2-fa324e42b31d@free.fr>
Date: Tue, 24 Sep 2019 16:26:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190924135219.GQ10204@ediswmail.ad.cirrus.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Tue Sep 24 16:26:22 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_072629_077833_7055156A 
X-CRM114-Status: GOOD (  13.63  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: alsa-devel@alsa-project.org, Mark Brown <broonie@kernel.org>,
 Takashi Iwai <tiwai@suse.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Liam Girdwood <lgirdwood@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 24/09/2019 15:52, Charles Keepax wrote:

> In general the ALSA framework doesn't really allow for stream
> params to change whilst the stream is active. Doing so is
> also normally very hard for the types of hardware usually
> involved. For example changing the clocks on a running I2S bus,
> very difficult to get both ends to pick up those changes at
> exactly the correct sample. Some newer buses like soundwire
> have more support for things like this were the ends of the
> link can synchronise changes but even there that is normally
> used for adding/removing streams from the bus, not reconfiguring
> a running stream.

This jives with what "filt3r" wrote on #alsa-soc

"at one point we were just closing the stream (somehow) if we detected
a change in e.g. sample-rate, so the user-space application would fail
on snd_pcm_readi()"

	snd_pcm_stop(p_spdif->capture_stream, SNDRV_PCM_STATE_DISCONNECTED);

> In your case above I would imagine the system would probably be
> setup where the DSP handles the conversion between the params
> requested from the receiver and those requested by user-space.
> One of the intentions of DPCM was to allow the backend
> (DSP-receiver here) to have different params to the frontend
> (DSP-userspace here). Although as you note you still probably
> need to add something to propagate those changes to the DSP. What
> form does the physical link between the receiver and the DSP
> take?

The setup looks like this:

A = Some kind of audio source, typically a TV or game console
B = The arm64 SoC, equipped with some nice speakers

   HDMI
A ------> B

If we look inside B, we actually have
B1 = an eARC receiver (input = HDMI, output = I2S)
B2 = an audio DSP (input = I2S, output = speakers)

    I2S        ?
B1 -----> B2 -----> speakers

To answer your question, B1 and B2 are connected via I2S.

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
