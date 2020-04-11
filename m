Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80AFD1A4E8F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Apr 2020 09:34:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=in4Wtr5cY583eEA7u2Tlzoq98VYiXt2uN/WWedff4h0=; b=QSUuVkCXC+MFNK
	UytcmBZwc2ffbzdggqhWvG7nNOIi469SL0CV8ClHZuGInWXIDiz39JvF0j33jB50fZOtefAmPfW52
	tak5y4SXFhu4Mt5Yx3MUAk0tiM0lz82p4VIxbF8xYSEureq/LWhON6eVuvZ4Qo6QePHUVlaNzhb9f
	6ewiKI2vfnsEr2/4C43QCnI2Pkv7abnqiMqYfeMtlvtKVHIxgIvB3nRGC3Yae5VpOsNBnBtyMgbRF
	BswnaF1UZghTCa08UQYL43uhpTAiC5MPjiGbrskDl6ZkeyNYRADjH95DcwAFwXz4cFO0+J89ZuHAv
	WXY9pmlfsJGBVOsqO4/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNAee-0002aF-Hz; Sat, 11 Apr 2020 07:34:16 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNAeX-0002Zj-F8
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Apr 2020 07:34:10 +0000
Received: by mail-ot1-x341.google.com with SMTP id 103so3992637otv.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 11 Apr 2020 00:34:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vqkq+tfhW8sM0fKfjRkqpvBmR846mOQRNokFVoJ4Ogg=;
 b=ArQfiR1ksIv5Drbppk5N1ycmnyrXlWoZJhWOyf5NkwIBq6p9LgifSjDkJa9hhfxXct
 hIo1G3Vdvxwp0JJ+5uqlrhdSjpauJ0ORVADY6ZbtUJGRk5qxuOsuCZc6Lv97dc09+6cv
 wEcYrtrp50TpOp7SLpWIdzrBEWm8kMF5wwh3fGYA9MfRXkJXzJhXe3oofVqycq/wqHuH
 JtrxA+KsHSJ+uo+Z28kuH03sLArtE5VdK2RSgA57+3pqPh2NiQnuOEQj51TPTeo6b78Y
 BvcaTeGHHUojbCVOwK7HsquNNOXVCnSFqGliI8TaqLAgu6VOSZmkkui9GCqcPpCr1N5c
 r0BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vqkq+tfhW8sM0fKfjRkqpvBmR846mOQRNokFVoJ4Ogg=;
 b=fBG9cLDqpRDVuQ0J7+7qIRoVZX02nShFQDAZ2weZByYxzmTXIYaQXIWYfM54J6m5n0
 CD15LzVKAR6YDIh9T/THa20IFUOTGaXlf59PPPMU5mBbM76vMYpvjza+dMaIf7aPP1aE
 d4gVf/yoK2mVKi71PY8KsMURF/6GQ/WZPPCOuQVuiR66Sn7Txf6MfFTm5dFvWF7NsaDD
 nw4jhKiGjIhcJosRgki6PVd77OW+GojY8giXFsH5q3hV0FOJ3vHSIqZdE8Pgmgn6Tqh6
 brWzP1Jr3bARTSltW1CpjRfNcaIas07JnlvMbqyLKy8xG4+c73dD/iszSYi2BCTWDZOM
 ZWoQ==
X-Gm-Message-State: AGi0PuaFgfGIsWIlk1ecYFATjBr7mXLiyLMqJP8qUQ2+FMuys/uriqjb
 W/XNqBJ5CC71raLZsW/cX7bBqyvleG2dCK474PU=
X-Google-Smtp-Source: APiQypJ5nKoVwnXg+7PaF5uV1DcYPyDtvvEaUQ2zeKHJcCZAWdQq8paRtYmqX6XmPzUodCf2c4oe870CUBVCi9sv+fs=
X-Received: by 2002:a9d:629a:: with SMTP id x26mr6338392otk.201.1586590447608; 
 Sat, 11 Apr 2020 00:34:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200225073731.465270-1-avagin@gmail.com>
 <1c1ab662-5475-9d8b-038b-8411b060202a@arm.com>
In-Reply-To: <1c1ab662-5475-9d8b-038b-8411b060202a@arm.com>
From: Andrei Vagin <avagin@gmail.com>
Date: Sat, 11 Apr 2020 00:33:56 -0700
Message-ID: <CANaxB-xUYOrVnfLPRYVBiASzCH89sZkD6vTdy8EFjT16ZJhLfg@mail.gmail.com>
Subject: Re: [PATCH v2 0/6] arm64: add the time namespace support
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_003409_505891_B9E54EB9 
X-CRM114-Status: GOOD (  22.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [avagin[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Thomas Gleixner <tglx@linutronix.de>, LKML <linux-kernel@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org, Dmitry Safonov <dima@arista.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 9, 2020 at 6:23 AM Vincenzo Frascino
<vincenzo.frascino@arm.com> wrote:
>
> Hi Andrei,
>
> On 2/25/20 7:37 AM, Andrei Vagin wrote:
> > Allocate the time namespace page among VVAR pages and add the logic
> > to handle faults on VVAR properly.
> >
> > If a task belongs to a time namespace then the VVAR page which contains
> > the system wide VDSO data is replaced with a namespace specific page
> > which has the same layout as the VVAR page. That page has vdso_data->seq
> > set to 1 to enforce the slow path and vdso_data->clock_mode set to
> > VCLOCK_TIMENS to enforce the time namespace handling path.
> >
> > The extra check in the case that vdso_data->seq is odd, e.g. a concurrent
> > update of the VDSO data is in progress, is not really affecting regular
> > tasks which are not part of a time namespace as the task is spin waiting
> > for the update to finish and vdso_data->seq to become even again.
> >
> > If a time namespace task hits that code path, it invokes the corresponding
> > time getter function which retrieves the real VVAR page, reads host time
> > and then adds the offset for the requested clock which is stored in the
> > special VVAR page.
> >
> > v2: Code cleanups suggested by Vincenzo.
> >
>
> Sorry for the delay, I completed this morning the review of your patches and I
> do not have anymore comments on them. Thank you for making the effort and
> bringing the time namespace support to arm64.

Thank you for the review of these patches.

>
> I have though a question on something I encountered during the testing of the
> patches: I noticed that all the tests related to CLOCK_BOOTTIME_ALARM fail on
> arm64 (please find the results below the scissors). Is this expected?

static int alarm_clock_get_timespec(clockid_t which_clock, struct
timespec64 *tp)
{
        struct alarm_base *base = &alarm_bases[clock2alarm(which_clock)];

        if (!alarmtimer_get_rtcdev())
                return -EINVAL;

It is probably that you get EINVAL from here ^^^. I will send a
separate patch to handle this case in tests properly.

Thanks,
Andrei

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
