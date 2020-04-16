Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F6E41ABF1C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 13:27:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+GJGn4n+ephToooGKnFP9jfxvfPL1qejkpzjR4cPDaw=; b=r4+4lebDeEpTdN
	DAAKm2fQW5Lm/RAGzq4SzwYJK4vRTlg8JSZDg7Eei4ZM4mkX6pBdDXY3AwDuOI7OY8EWKsqq2Vvid
	P427Sx6MCxTxqwtrXlc1VjlC0v//lzL+8kWIzvoHPNrH1f3aIETTSiXWKDzkzFXyGnlQ2Lv0nYCl7
	RJBoyZS9wtJtCvw4iF1iRsYbd3tKUrvVLXv7Trryy4jsKT18tDm0HmrsMHx3EyQNsR4DkbYO6Ub5Y
	/iJm59qXfE/o0gh0jpGSmY/37kHSM2c3gGqE9gIaHAZwEXWbgJ9FCCkZFbGKZfFqOhTww7Qd+Em41
	0+IA7KVq8wyLrpwP7vRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP2fj-0003OE-Uj; Thu, 16 Apr 2020 11:27:07 +0000
Received: from mail-vk1-xa33.google.com ([2607:f8b0:4864:20::a33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP2fY-0003MQ-Cy
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 11:26:58 +0000
Received: by mail-vk1-xa33.google.com with SMTP id g129so1775083vkh.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 04:26:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XNpefsuCct6B4uZId4JS7PFlnG0t9azfDKQ0UhJ7Rz0=;
 b=oH33bDG29P2eFR0uj2731SAQsoJ8sGIizT62wdYvS1qnjl/GmqpEBWuoqQWb8wLvLc
 ByMlPaCKTWfabQtKILa6EoWp7X5glWTBhBfEgtOxg8kEtIvDu8Cxk6biWGBkSq9pyZyf
 nIHN8AJRMMPgDhN/FEm5LmVmBsHyM8cgx9F5rYpMBdhteTMXryXoY5gMTxUPyAFxAh2i
 /m3xjxAX19as/PK5ZnwujffpkmxY04XNlfWfqeVSnsvNIbo0m1d4VMgrf3/DIcGeotq0
 HGcbO/Vtp/yZB9ROiEoH92UlPQ0ZT1YbOSd3AaHxJ7eVFN5hTrpn3qPF0k96HWdD9XEL
 FcAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XNpefsuCct6B4uZId4JS7PFlnG0t9azfDKQ0UhJ7Rz0=;
 b=p0Y4sVDW+pxYqYEs9a3YGxs4yMTpcUlKBk4sESUlk6yeGrcD8948wE/XcQ2qMHEpm7
 ggdH7wGNRRdU09xre5JXQBjrtnR2A3MQFVlGySBSAdabxRyZJWO+FGYGo4QPdV+Rs6pV
 jGNoNxrl/WyH4zkiCXWci8vLa1tZTH7b0JNXFkPZGidDD7wptGQH1rxmGfqgUG138Owq
 BIXld2mHMZdjKex4a3zOcKOaR8vC3M6oP3bdZqUCdN6vuYkVOTN28UAdn298huDNvQ8U
 SOs47JPqv3aXwFxmR8/TIy+sEo57qXi/IWSvGRGO4cK9OaQsRlklrrqwKgoAWgIhHHxQ
 gnFg==
X-Gm-Message-State: AGi0Pubhi+nYbxrNljpP0Vk1p7QbQTUGAT7wKT3CkFkJypCB6Bh/QuJz
 8FjYnkJwEGwVHpWvLt2zN9Hx4PKlGXQkiJfQ62sZDQ==
X-Google-Smtp-Source: APiQypLcGn1fYqboLHcVfdnv/Lsv2p38zPGyTmjdkGNZzgb4SpztrL44PvzB1YPeh3KkNt/RYmmsPbYBqy7xc+E+v1c=
X-Received: by 2002:a1f:d084:: with SMTP id h126mr21651387vkg.25.1587036414671; 
 Thu, 16 Apr 2020 04:26:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200410213043.1091851-1-martin.blumenstingl@googlemail.com>
 <CAPDyKFpsTTUaTLy--DvOr0oAB71cTBdH1pfTV63LtcKOKOsnDw@mail.gmail.com>
 <CAFBinCAhfgEdT383x61mh9E0y3-3MLA-fUmZj-4C-_VUdGWtGQ@mail.gmail.com>
In-Reply-To: <CAFBinCAhfgEdT383x61mh9E0y3-3MLA-fUmZj-4C-_VUdGWtGQ@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 16 Apr 2020 13:26:18 +0200
Message-ID: <CAPDyKFrj6jdHe8OSvtuT7=QdreZ1YzMt=791ABSZfos8yux71A@mail.gmail.com>
Subject: Re: [PATCH 1/1] mmc: meson-mx-sdio: Set MMC_CAP_WAIT_WHILE_BUSY
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_042656_444706_9D510618 
X-CRM114-Status: GOOD (  33.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a33 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 15 Apr 2020 at 23:24, Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:
>
> Hi Ulf,
>
> thank you very much for taking the time to look into this!
>
> On Wed, Apr 15, 2020 at 2:57 PM Ulf Hansson <ulf.hansson@linaro.org> wrote:
> [...]
> > Thanks for sending this! I assume it's a regression and caused by one
> > of my patches that went in for 5.7. Probably this one:
> > 0d84c3e6a5b2 mmc: core: Convert to mmc_poll_for_busy() for erase/trim/discard
> indeed, I only observed this with 5.7-rc1-ish, before everything was
> working fine
>
> > Now, even if enabling MMC_CAP_WAIT_WHILE_BUSY seems like the correct
> > thing to do, I suggest we really try understand why it works, so we
> > don't overlook some other issue that needs to be fixed.
> great, that's why I'm seeking for help!
>
> > Would you be willing to try a few debug patches, according to the below?
> sure
> while reading your suggestions I went back to the vendor driver and
> observed that they don't implement card_busy for this controller
> Thus I added the following line to meson_mx_mmc_card_busy for all of
> your tests to see what the controller sees in terms of our card busy
> implementation:
>   dev_info(mmc_dev(host->mmc), "%s read IRQC = 0x%08x\n",
>                  __func__, irqc);
>
> > First, can you double check so the original polling with CMD13 is
> > still okay, by trying the below minor change. The intent is to force
> > polling with CMD13 for the erase/discard operation.
> I have tried this one and it seems to work around the problem (before
> I reverted my change and dropped MMC_CAP_WAIT_WHILE_BUSY from
> mmc->caps)
> also I did not see meson_mx_mmc_card_busy being invoked (not even
> once, but I don't know if that's expected)

For eMMC it should be used quite frequently, as CMD6 is sent quite
often, during initialization for example (see mmc_switch() and
__mmc_switch()).

For SD cards, it's being used for erase/trim/discard and while
changing to UHS-I speed modes (1.8V I/O voltage, see
mmc_set_uhs_voltage(). The latter also requires your host driver to
implement the ->start_signal_voltage_switch() host ops, which isn't
the case (yet!?)

For SDIO cards it's being used in-between requests to make sure the
SDIO card is ready for the next command (see __mmc_start_request())

>
> [...]
> > Second, if the above works, it looks like the polling with
> > ->card_busy() isn't really working for meson-mx-sdio.c, together with
> > erase/discard. To narrow down that problem, I suggest to try with a
> > longer erase/discard timeout in a retry fashion, while using
> > ->card_busy(). Along the lines of the below:
> I have tried this one as well (before I reverted the earlier CMD13
> patch) and with MMC_CAP_WAIT_WHILE_BUSY unset in mmc->caps
> This doesn't seem to work around the issue - kernel log extract attached.
> Also I'm seeing that the the current meson_mx_mmc_card_busy
> implementation returns that the card is busy.
> example: 0x1f001f10 & 0x3c00 = 0x1c00. the busy logic in the driver
> is: !!0x1c00 = 1
>
> My conclusion is:
> - meson_mx_mmc_card_busy is not working and should be removed (because
> I don't know how to make it work). it probably never worked but we
> didn't notice until a recent change

I see.

Depending on what your driver plans to support for the future, see
above, you may need to come back to this in future.

> - set MMC_CAP_WAIT_WHILE_BUSY as per my initial patch
> - use Fixes: ed80a13bb4c4c9 ("mmc: meson-mx-sdio: Add a driver for the
> Amlogic Meson8 and Meson8b SoCs")
>
> Does this make sense?

Yes, I think so.

> Also please let me know if you want me to try something else

I would also suggest adding a patch that removes the ->card_busy() ops
from the meson driver - and that should probably also carry the same
fixes tag as above. Just to make sure the callback doesn't get used in
some other circumstances, when going forward.

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
