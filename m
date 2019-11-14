Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEFF8FC313
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 10:54:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nbnB5lmBtaCC6LMzBZXLlVTumCl0HqmFOxV80so50Hw=; b=QThJ4yHnqcMUbt
	/3lSaqCJE1k4ImA3YVZslZbV0b+r11wFcKlzV4Zsa03frPJEIybogY3xZonBAEhgAOOhm28ELnI6+
	b0J8WJv+TUZnyruhkvcY3dwHb1+WeBoQGj2sYOCRUnHxm+Cid8SR+hTSJigvWUW5AXej/nhQTVw+m
	n8MN0EbfPI7GfkCg/iyXs8hi59Cs1KU/0soJBPn21gHjZ8MKC0k2d6Rd/q9KSL72PGluPuHKaOrwm
	QVG5AXyuXjnWR1ll0CqwANs1F+bFyyEJL6X1vg7BhYmHy1/gfD4mvLo4GqeIwiil0b0woE8fPmxk/
	dYc1OU7MbfD5rcA663ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVBpZ-0006Mr-FH; Thu, 14 Nov 2019 09:54:25 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVBpN-0006M2-Oh
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 09:54:15 +0000
Received: by mail-wm1-x342.google.com with SMTP id b17so5147991wmj.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 01:54:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AqfWdpvXNKbnk6SQCD2Xa4+UtUspNLx3/TH1+jlLm1w=;
 b=H+0oyDr6CuUTCaTs5rQD6dvzR36D6B/m5VE18kkpDNFW0Rhhino33/jKIIAyFvtYyK
 TkEogUt3QS9VsTRBwhkxZOA3okEjoOb0ZUyMqnfL1jrI7bAbt6RiSgYpIilbxbwry5Cb
 rqHytD/a1TaRfHhVmYBRtQR9EV7IDuDFTqF0PYWGmpJmyb2QR7gR3l/CXtNvJLpF1cTl
 Si2P3Ea5iPF+hCaZeeqzICgipYaW5VHq28uCZmPWlwECe1AlwNSxpKYXDrnczQ4M+YP+
 Wwp+cxZeOBeWbg7/o1dmIAhk+AE3ikeKCezzWZVb9oL7B+j3V5YLFkiPxmRd5VEA+kNv
 6EYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AqfWdpvXNKbnk6SQCD2Xa4+UtUspNLx3/TH1+jlLm1w=;
 b=c1Uh/WTPwaYLrjxpL+c49O/A4IKT/OkYel/LBOhyoBbqD9Z5MPpbxZKdF8t9vj0Kj9
 fiame/VuiplsylYLyU6pQhvh/rGIwoq/yvg9a99AIFTQEqCbXBMPjvMXPQiqjWPD4VT0
 LD4Qogy7MhpzSDbBD84KrX3G8YN0/KggutLNgYP4D4VDllkYN6c2QXz2RP8wfU2NayFq
 la36rNlSLCTb6RDnUc3MVpuEbR3cuk9DHVZ4ishavJu1/freGsRL3gNFR6FG7BwI+wMO
 exDXoA5Rq5OJcA+VQyu7wl949lQh1BWwEhwCH3eO704HBjDTfwd8QA4DxR0yVEStU51a
 bQBg==
X-Gm-Message-State: APjAAAUrk+aj3+kEj/s5icgBslmO2llX05R1oum6CDxd5rsMN4arOWri
 Fnn2pJQOhjXEjvnd3mbMfuV31eP4LA/Bvnc+ISTHgA==
X-Google-Smtp-Source: APXvYqzzShECsFr1GGqXuYwAL8JrwVajeTVkGl/nzvcBn0spr0wnUyvxiArYc93lIy9cZ4qpebyev3Wpj92wJgA4HN4=
X-Received: by 2002:a1c:3d08:: with SMTP id k8mr6593147wma.119.1573725250769; 
 Thu, 14 Nov 2019 01:54:10 -0800 (PST)
MIME-Version: 1.0
References: <20191106094219.24365-1-ardb@kernel.org>
 <CACRpkdbaGd9rQqg641zZ_8-YL8yyTN8RkkVggQNb=fZ-1+NPdA@mail.gmail.com>
In-Reply-To: <CACRpkdbaGd9rQqg641zZ_8-YL8yyTN8RkkVggQNb=fZ-1+NPdA@mail.gmail.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Thu, 14 Nov 2019 09:54:02 +0000
Message-ID: <CAKv+Gu96K_Gh08KPLEV1oEca8kWS76E7PFhRSCT3aDyKYYerEA@mail.gmail.com>
Subject: Re: [PATCH 0/2] ARM/decompressor: deal with disabled CP15 barrier
 instructions
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_015413_816738_08F6BBC3 
X-CRM114-Status: GOOD (  13.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
Cc: Ard Biesheuvel <ardb@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 13 Nov 2019 at 13:58, Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Wed, Nov 6, 2019 at 10:42 AM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> > While trying to test my v4.4 backport of the firmware/hypervisor based spectre
> > v1/v2 mitigations for 32-bit ARM, I noticed that KVM/qemu failed to boot my
> > kernel while it booted fine under TCG emulation.
> >
> > As it turns out, KVM/qemu may instantiate the VCPU with support for CP15
> > barrier instructions disabled, causing them to UNDEF and crash the
> > decompressor.
> >
> > I already fixed the same issue for UEFI boot, but since v4.4 does not support
> > that, I only noticed now that this is an issue for bare metal as well.
> >
> > Cc: Russell King <rmk+kernel@armlinux.org.uk>
> > Cc: Linus Walleij <linus.walleij@linaro.org>
> > Cc: Marc Zyngier <maz@kernel.org>
>
> FWIW:
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
>

Thanks!

> Looking at patches for stable is a bit like cleaning the sink in the bathroom,
> seems OK at first but after a while you get scared by the stuff that comes
> up.
>

Well, at least I didn't need gloves :-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
