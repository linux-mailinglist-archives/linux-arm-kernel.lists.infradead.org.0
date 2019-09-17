Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 541C8B5199
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 17:34:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aF9SdMHoZNbRbiEX5xSZ2Ydl4l/xbG1IIXYwLEa5Nhc=; b=IJeNEslthNX1cg
	YwcPMV0mb2EyMzMnvQsh/js84UnRLHmlTsJADI9P1jnOEt9rprbG1XMo5CJ9BaVO7pYQs7iQRmEx/
	+ZIT9VtYnZS4j/JsMYPWmt0FzwomA+gYJKcQvM7FR+4dXy4T1IDRqCldpHk01IP5A7KUz9CHYHNfk
	D539QomdjF7GJrgU3WrbJc4jXybY6xa45aSyenPc0QUjU8M44frqAj/4LXc+byfpltPkVLP8Fgme8
	zi/5TYCAETTVXR4ASogaetOmQ2do38r4V+JPRTMtlJ5UrdK/K0lc9FN39DBNqIOI+jr46CN0ocPTl
	C+uW5P8uZHwR5hf/VqmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAFUO-0008NZ-M6; Tue, 17 Sep 2019 15:34:00 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAFUD-0008NC-Na
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 15:33:51 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id C0000204F7;
 Tue, 17 Sep 2019 17:33:46 +0200 (CEST)
Received: from [192.168.108.37] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 8AAC720237;
 Tue, 17 Sep 2019 17:33:46 +0200 (CEST)
To: alsa-devel@alsa-project.org
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Propagating audio properties along the audio path
Message-ID: <f7861989-8a2d-ed89-8f1f-68bad7013a34@free.fr>
Date: Tue, 17 Sep 2019 17:33:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Tue Sep 17 17:33:46 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_083349_918023_A2A89670 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
 2.3 SPOOFED_FREEMAIL       No description available.
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

Hello everyone,

Disclaimer: I've never worked in the sound/ layer, and it is possible that
some of my questions are silly or obvious.

Basically, I'm trying to implement some form of eARC(*) on an arm64 SoC.
(*) enhanced Audio Return Channel (from HDMI 2.1)

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


If I read the standard right, B is supposed to advertise which audio formats
it supports, and A is supposed to pick "the best". For the sake of argument,
let's say A picks "PCM, 48 kHz, 8 channels, 16b".

At some point, B receives audio packets, parses the Channel Status, and
determines that A is sending "PCM, 48 kHz, 8 channels, 16b". The driver
then configures the I2S link, and forwards the audio stream over I2S to
the DSP.

QUESTION_1:
How is the DSP supposed to "learn" the properties of the audio stream?
(AFAIU, they're not embedded in the data, so there must be some side-channel?)
I assume the driver of B1 is supposed to propagate the info to the driver of B2?
(Via some call-backs? By calling a function in B2?)

QUESTION_2:
Does it ever make sense for B2 to ask B1 to change the audio properties?
(Not sure if B1 is even allowed to renegotiate.)

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
