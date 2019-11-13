Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B945EFB1FA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 14:59:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pbbO2EU95k2EgQGtwYKS9d9HKK3Okbj5A738HEy1TB4=; b=m6exqrO+5twt/C
	l1nrGYJAoRhl/yWCSRrEa3oxeNGjlhp+7LY5kQbZ5FwrsVUhBJBeFUS7jE9OQ9EMvX2CZQ7+9iwWg
	EizFbAFt50rY+k1e9z1Ljb5ipC76SoR3ZduzfiYx7ouXB5n2/fzL9tmxqHiUdn7CgPto5WY5RUOaQ
	jUF3vMsxYa7z0vOzUeNEP49CwzjYsXOPQFGeTenbyjeoyIOkKBiyPpwC3IHPVJnyoDp5Nmyy3PR57
	pQeJHTjWBCgKf7M3R35agcwZPtne7+qDcaHuw6//HMzK//cBsNMsbvpSoH9iEYkoKNusQvOI/exhn
	EVXqVRegNWApw7fqMVPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUtAo-0001HK-RK; Wed, 13 Nov 2019 13:59:06 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUtAh-0001Gh-4k
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 13:59:00 +0000
Received: by mail-lj1-x244.google.com with SMTP id p18so2686177ljc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 05:58:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mDz8SQIolIvp4fsC/Ls3IfroDUxwxVD3E6d2i7yYivA=;
 b=MYnsOZ5MxIhjvt7QT2jmQ843DOihEiFNVZrXqQhNU/E006yR1hv8L9C9SSNUSdj7oN
 i/4tVC70ye0Be9WWk4aPE6x2jfB7QZweAQAXHSN5MQlwaEXakpOQRsuMZW5Pn/YIGIfS
 j58TFrgnSXk7vm9TEtckHdsdRa2z/QHdYVpXYt0q4usGpH9OixMvDg6Ta7Qq+/FFgouh
 tCjIG3qWJt5Xarx1EeoXSSy82QcifwT2OYVApQPwQCboZIMYa8XrUsa9fX1AlQUeXq+3
 /UHbOEsPGz31jES93o4j4S6Av4dOV96MkBt8ryIoLLEO1RXXC4ZFuxJ/QUYQly+4aQrw
 geFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mDz8SQIolIvp4fsC/Ls3IfroDUxwxVD3E6d2i7yYivA=;
 b=nsvtR6W7csmmqLBKzNsRYUlmH80qE5cvDZ2gGo8jKmMjOgRYglG9+1CF+Z1d2qXs9X
 JgINh07FvM1Cl+luIea4WnMInYoBnMNtRwo2NInMORAxApGvS+2NUmCah8dO0gAOgvYU
 cRLoj0zQhpgQj6oLRnZRQ7LQUasehYFesWn1qczQdaJmCO1K7X1fGw4tbh87alQCa07+
 gz8CJj2jIn+Kz6O59y4bspvIJXYRUA2T3lvGiSGUnpdIO9MDuCB2lHFFyJsIVfZAKxAS
 8UtzFSaCwWDTXLg9YRWVzVg6AW9FvaBNJJITDM704jbfe22bjPiHcIbx+cnvCJebiXEF
 wJdQ==
X-Gm-Message-State: APjAAAVdNsEs4tY8o2261/0J6vjIFCZ9ss9I0engap5UQTPr/Sx8j1b3
 OPxgqXlqTyjSPDRlmggxgvPtBf9km67a7D8Tqx1Dqg==
X-Google-Smtp-Source: APXvYqzF1BSFJY3Qx3JtIlEseN2+DweCA8WTiWBZPQJJnuxJD+ikcZUxx8+/ugJAtn6vjfcjRMpAUItsRaQcnyqTJ0Y=
X-Received: by 2002:a2e:9a12:: with SMTP id o18mr2760543lji.191.1573653529386; 
 Wed, 13 Nov 2019 05:58:49 -0800 (PST)
MIME-Version: 1.0
References: <20191106094219.24365-1-ardb@kernel.org>
In-Reply-To: <20191106094219.24365-1-ardb@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 13 Nov 2019 14:58:38 +0100
Message-ID: <CACRpkdbaGd9rQqg641zZ_8-YL8yyTN8RkkVggQNb=fZ-1+NPdA@mail.gmail.com>
Subject: Re: [PATCH 0/2] ARM/decompressor: deal with disabled CP15 barrier
 instructions
To: Ard Biesheuvel <ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_055859_196973_5D9C9AE7 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 6, 2019 at 10:42 AM Ard Biesheuvel <ardb@kernel.org> wrote:

> While trying to test my v4.4 backport of the firmware/hypervisor based spectre
> v1/v2 mitigations for 32-bit ARM, I noticed that KVM/qemu failed to boot my
> kernel while it booted fine under TCG emulation.
>
> As it turns out, KVM/qemu may instantiate the VCPU with support for CP15
> barrier instructions disabled, causing them to UNDEF and crash the
> decompressor.
>
> I already fixed the same issue for UEFI boot, but since v4.4 does not support
> that, I only noticed now that this is an issue for bare metal as well.
>
> Cc: Russell King <rmk+kernel@armlinux.org.uk>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Marc Zyngier <maz@kernel.org>

FWIW:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Looking at patches for stable is a bit like cleaning the sink in the bathroom,
seems OK at first but after a while you get scared by the stuff that comes
up.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
