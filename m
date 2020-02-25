Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC1B916EA74
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 16:48:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tEKTBUYs/4I/BFK2jxisTwXI/j3NKsKhwIbvXDe5Bvo=; b=tZpJ0N8h4GVBBL
	cQPPFE3Mx8VBsQeFnhrQgRwL9WhRH46/HQ9Iu6zRmbcWr348muF7EOa8w6S7cfQ3GBKfc9J1zT+qE
	E+Zfx/81Cs+zt85bjGRmeQ6S94tUq3odpIKFiFtK6y6AcrCOgrZvlYJnzPtPzgGqigutjGKQGMMaC
	MIsp3Tt+DBR47ECl82g4PalgxfrJkIZCeVZjrxcw5VVpD47ajvBI5G4uQYs5Pl5BnM5xjkgc9as0T
	iL+72u7tpeSM9TRX0aNQ1zy0SF3O2yjERsU50izJjSirPNL1jy9DBIkw3bB8Xae0r/pP+YsVZ86zc
	vhDsWHU7GW2yt0I+Voyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6cRr-0003Di-RU; Tue, 25 Feb 2020 15:48:39 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6cRe-0003DO-UY
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 15:48:30 +0000
Received: by mail-lf1-x143.google.com with SMTP id 83so10087921lfh.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 07:48:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wJpgxMXzpYahxV3eOR5lZa3e8wpI0rCX0tapALIRn68=;
 b=H2tBYEXpI5LqNDAVvlyFtYHS9YwKuPY9Xoe4UiaKypSyHl5uW0+wUDsP6cvX3L3YRU
 2g+VPO1CJsxsBE3roP/ovZdzwS/gpzyJD/4eSs9Yr+grOUZNAYry6Vzpl+g7aWBQ2B+j
 RfszI6jjRReHVJVnujjbdKuR8h9Rz2CW8mx5n4On5ntq+tYTWENf//m3NmXd5FXtmnQW
 B082YDxJ4kveSmGBaENmvZp4geqXfiDs8rFqBaq+mh6cWuugw2kyLyCu06DX1/SeqDrg
 Ffvwxgz95pguvSETFVRU6Q5xTGsZCsNSc1lafHU6tANu/ZDUAD0X2X4CnMASLMme1qEX
 k+4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wJpgxMXzpYahxV3eOR5lZa3e8wpI0rCX0tapALIRn68=;
 b=Hw0DWRdVOPZOyKnQvXhnibs7PfW1vvgJNN5wdLwEroWUJflXBpEoKQ6yfRM/rs8Tlu
 3XphrWp0uZ5PZs/UfHEuawEnB0g2mkVJPqGOv1sKJ3gPVLSU/8EmsEyqh7zTyAURmBbM
 F5OHki3w9uPndqKY/jUvuZXsUimNpFBZx36ZqZRq8lE1gskE4KgLMXn7MdJQAB7Pg956
 6e7IE4rme0fbRjIligS/+3hoNQkNz6Ly+1FE8mT5nKKnXQo8KzdnoIrxeECHsIEy3qcU
 SUyCNAeBstfzGsvLZrPGX4f8Fb30RKnscEtpCvRlr/e9s8VV4/vZnPg2X14faymaRfap
 FCcQ==
X-Gm-Message-State: APjAAAX/sd21MtSxISAwsXgr8qOMYS+ULSkH6AiDv4b4wOfyvf2WyG0Y
 BgVL56G7MhSTT+iRDGRPl0LP2hne2Ih2MIfd4IcyCQ==
X-Google-Smtp-Source: APXvYqy4mOvCXDyj7XSFn26gwn37tfh2gp60wsJ72Vo9+vwAF50M0xGjuEMYpar4fZCVYzhrv4+6Jv9hqKmDvHuBm48=
X-Received: by 2002:ac2:5328:: with SMTP id f8mr2601376lfh.47.1582645703369;
 Tue, 25 Feb 2020 07:48:23 -0800 (PST)
MIME-Version: 1.0
References: <20200224121733.2202-1-ardb@kernel.org>
In-Reply-To: <20200224121733.2202-1-ardb@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 25 Feb 2020 16:48:12 +0100
Message-ID: <CACRpkda5VFzMHE483MPj86VN7uU7w4bNibY=ZeLUHyED=JD7Cw@mail.gmail.com>
Subject: Re: [PATCH v3 0/5] ARM: decompressor: use by-VA cache maintenance for
 v7 cores
To: Ard Biesheuvel <ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_074827_007772_F42F5209 
X-CRM114-Status: GOOD (  14.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-efi <linux-efi@vger.kernel.org>, Nicolas Pitre <nico@fluxnic.net>,
 Tony Lindgren <tony@atomide.com>, Marc Zyngier <maz@kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 24, 2020 at 1:17 PM Ard Biesheuvel <ardb@kernel.org> wrote:

> While making changes to the EFI stub startup code, I noticed that we are
> still doing set/way maintenance on the caches when booting on v7 cores.
> This works today on VMs by virtue of the fact that KVM traps set/way ops
> and cleans the whole address space by VA on behalf of the guest, and on
> most v7 hardware, the set/way ops are in fact sufficient when only one
> core is running, as there usually is no system cache. But on systems
> like SynQuacer, for which 32-bit firmware is available, the current cache
> maintenance only pushes the data out to the L3 system cache, where it
> is not visible to the CPU once it turns the MMU and caches off.
>
> So instead, switch to the by-VA cache maintenance that the architecture
> requires for v7 and later (and ARM1176, as a side effect).

I took this v3 patch set for a ride on some ARMv7 and ARMv6
(hardware) boards using zImage:s so the compressed path
should be exercised:

- Ux500 (ARMv7 Cortex A9 x 2) works like a charm
- RealView PB11MPCore (ARM1176 x 4 MPCore) works like a charm

Tested-by: Linus Walleij <linus.walleij@linaro.org>

I can do more thorough tests with more boards if needed.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
