Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D34986357E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 14:18:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sJhrtpEE4rhIQiIKf9+mujAhoKn/YrtKLixKf3OIvPg=; b=kawLoQyNk57Hb+
	6g3YtKj1NamIQdlQpOecDMdmJrEAOTUC7HvKex96fFiCo7FAY8TAsgPGpOHMJSh6qfQvsBWPDbWk5
	9I3U8HQonXqlAXPSQDc+pJESxrGDtHuvcnrT4EHxYmIsn8J4HgZNZR2xfZbo1TnPBf0ghK7NRmLoY
	zS8fSL84wqDW6iueszjD6c2TCR9tJ42ju5JYFA4x6YPb6xmrKUwGV//RPKCFg46zSHWIB0tK9T+e1
	NGj7mQw4w8g4lLLzgvrVWnf0buaQ+pACSIlN6hBKS3PFiJV/TZ4PF3HW1q/fVTwmRUjIS+NwZspPN
	7ZI4aRVU06+ZN/lItyCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkp4i-0003bm-DA; Tue, 09 Jul 2019 12:18:24 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkp4W-0003bL-3R
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 12:18:13 +0000
Received: by mail-lj1-x243.google.com with SMTP id m8so9854794lji.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 05:18:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TYUZq7v6hg9F7A7hhMPEbsURdusM+toQNt32J9GD77k=;
 b=f4xWJs1rkxhdZh6VKdTdoooCK03zPhYeu+utI5sLkxuMNNpq6JFZhCp6qlUvf2anbR
 bnD9Q16qqv4Dm6uP/sjy7HzUwVXVlXoVh5/xKv+25+7zR0BYqnxeW8uOzgshPKsIQvOF
 Mjtc5D/3WIRJy38LPeT9tu8iyOvc7OBDwEMukvnU3H2/czGHc8iId4gxHDRSwFZCU+2h
 KsDrxHQju99B34OL34vf21WFKzZ3D2AjR6FZXoyTwPxt4rFfTHvu3HA3oinCcy3Rvbhj
 vjfLPUH/gcYvmOpCnAmdNLX3i+9t7aI0sJJdllF/IqXMETEQhgSlmnvmWjKANEgCW2Xa
 r3rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TYUZq7v6hg9F7A7hhMPEbsURdusM+toQNt32J9GD77k=;
 b=jVqHEwJURRzLgW23wvgsnAFI+2ftJLrjf1RcN9wGzuBZ40GrsYZcK3PRSiwYh4Qa2i
 /ncE8NaHM0pqMnsF74rXMnobD5P2cJDnaMLyo/QX3n0rVr+kjrlsXIGopdsEBtDt3mn1
 lragddqD6P+tsQO/7REf3pg1x1ySkgFgOr6SHuMnswEcA/ElcLUKitpKJ/ToOdC3cfIH
 v5OTYXs+56X44NhElOhP4kHocenAcyB84bWYdf4DI8bpxvN3EFqBwR26qaaHAwRjbjSb
 rnAXc0TKZRpEibnJwlKYs897ofUzapHcf4y5TfeQN0vd1My6RZD304avmlRNoil2M/qb
 BRqg==
X-Gm-Message-State: APjAAAU03Sot49RKgwwXbHQoJut1XwDN38RR8Ox0hzNXLi05zgJmcNHk
 9wz4iknPau5Ik/Tp5G32HTOWviS3gx9cVbG2w+l2Qw==
X-Google-Smtp-Source: APXvYqy1qu2+l+YL5DOsxvjmzznPXi+BVdOsWmKyCR6/5tRMWSNFkxo+m/lnuvORd/QmhWM+XBF+DRoi2gMuPj5dv8E=
X-Received: by 2002:a2e:9593:: with SMTP id w19mr10559143ljh.69.1562674690149; 
 Tue, 09 Jul 2019 05:18:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190708203049.3484750-1-arnd@arndb.de>
In-Reply-To: <20190708203049.3484750-1-arnd@arndb.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 9 Jul 2019 14:17:58 +0200
Message-ID: <CACRpkdZO6to2UsJ64FCYi3aOC79PEb9pxOBABBkgcmR_d82dYg@mail.gmail.com>
Subject: Re: [PATCH] ARM: mtd-xip: work around clang/llvm bug
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_051812_208373_D7ED8DE4 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: clang-built-linux@googlegroups.com, Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 8, 2019 at 10:31 PM Arnd Bergmann <arnd@arndb.de> wrote:

> -#define xip_iprefetch()        do { asm volatile (".rep 8; nop; .endr"); } while (0)
> +#define xip_iprefetch()        do {                                            \
> +        asm volatile ("nop; nop; nop; nop; nop; nop; nop; nop;");      \
> +} while (0)                                                            \

This is certainly an OK fix since we use a row of inline nop at
other places.

However after Russell explained the other nops I didn't understand I located
these in boot/compressed/head.S as this in __start:

                .rept   7
                __nop
                .endr
#ifndef CONFIG_THUMB2_KERNEL
                mov     r0, r0
#else

And certainly this gets compiled, right?

So does .rept/.endr work better than .rep/.endr, is it simply mis-spelled?

I.e. s/.rep/.rept/g
?

In that case we should explain in the commit that .rep doesn't work
but .rept does.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
