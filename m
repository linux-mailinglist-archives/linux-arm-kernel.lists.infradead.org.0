Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25E3AD029C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 23:03:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=73rzfo1Oh+gs8p2qvjkhdLT9bDmJEBgtoLk8EeX4NZI=; b=Y0J02+3q5lGv/T
	6KyOgwjzFch7YQfBJY/psq6qtT6YHY0B1f79VlF1d8iclUZGeIg96k1LtT5JU1cuZiOdwDnApOTdR
	WaaQjC18RFZUZFyhGiMxveJqvVX2/Q2U4mT3aggaFMslqBUJzSN/EVlqY/8SrmNc+oBpYjsZUwdIQ
	0Ofyo1NU1GM3qrJfC4aHuZ62Zuds5u2xOViwx031fUYS4CzpCVS1PVnWwiYcOtWoeX4p6K4csJK05
	lL8MOSB5NGrZazqbVkmq7tEe8deuXmw4lxOfnk9bQpUVHz50bBMlF8vlMyxJCxV34rJv8T+4tHMOn
	7OFzZ2xuBtjA98RYjHmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHwe0-0002tp-9Y; Tue, 08 Oct 2019 21:03:44 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHwdt-0002tT-BT
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 21:03:38 +0000
Received: by mail-wm1-x343.google.com with SMTP id y135so3220646wmc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 14:03:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DwbSuCVPgdnfuc55S5QoU+HrLN1Lslk6AXfdZ8RTC9E=;
 b=m9awFJInBde/MGOYE/MIqKtZr254xTohNiS2+mSSIvOf6QYazbZsauAFzC+R96cNZU
 FHRiK1EV+xl1Hf80/ZxOlgvL99n8j2vUPooWgdBZ+3gK+yKTOdm0CB5EwID5jz4eLTob
 VkMsVAtLV/+wAPhEhd/juT7Ng5r3FCrE48RVOVo+JNH/JCp2LiebjcvBhdz77+TsaU1F
 PloVThIxID6gSWpY3zv14vLM4agKPnOcpN7k6vPoTABaeNYNbzqFKghgUc0lGZ2wUgE6
 ysZCu4KDi+SrkKL0/QlOBJ3TjI1f/bdvfaEPurvezpqQNCbjzXX62+pezZk9JXkzjSxH
 lRjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DwbSuCVPgdnfuc55S5QoU+HrLN1Lslk6AXfdZ8RTC9E=;
 b=PbPmBHb9pYf1UQJXRJMHEYGGncNDVuJcoLyPc7EczqYkd6prbYMlLXSuozxwDcuAev
 ttW8lD9V4fy9FljNML8kstZvSQPhgNXCd58zvqCDVlAkgJBT8RodhK4fjJwnI8VT4DuV
 nyAfm6ezalEJSVrkN2635JViRCBlZRkpDeHPi9a71Vg7peq3LPQS1x0M1frA9xdQazE6
 D2R2+gUDCWeC7VFLNNciuVRYrdmQ2I1Vg9E8s9jDNcJ/zKv9Fww+KPCEpOQjzdZOj9dH
 5XmmeMQHe9vM789Pzi7+0UUnZHNwOTIy8Jn7ekLVoNLc/MswwdNKQ3BNYXCK6fE7OxrK
 B9qA==
X-Gm-Message-State: APjAAAVAdO2lt07w8rhw0fQS70rhq2l7Ub5JZdupx4Lm3EBMSvWAsHiw
 kV/gkuOCtVVUJ+DeSNubM/nqhWKklD+LFbf3v1RHPg==
X-Google-Smtp-Source: APXvYqztuQvm09D/e/iuK2cvpYO1uTjf4jBe0A/iujbXm8RUQJnLMWOcFU+QjXddgGnDARg3HVbK57y4JBwp9f8cYNE=
X-Received: by 2002:a1c:a651:: with SMTP id p78mr72278wme.53.1570568615342;
 Tue, 08 Oct 2019 14:03:35 -0700 (PDT)
MIME-Version: 1.0
References: <20191007201452.208067-1-samitolvanen@google.com>
 <CAKwvOdmaMaO-Gpv2x0CWG+CRUCNKbNWJij97Jr0LaRaZXjAiTA@mail.gmail.com>
 <CABCJKufxncBPOx6==57asbMF_On=g1sZAv+w6RnqHJFSwOSeTw@mail.gmail.com>
 <CAKwvOd=k5iE8L5xbxwYDF=hSftqUXDdpgKYBDBa35XOkAx3d0w@mail.gmail.com>
 <CABCJKucPcqSS=8dP-6hOwGpKUYxOk8Q_Av83O0A2A85JKznypQ@mail.gmail.com>
 <c0f0eb7e-9e46-10cc-1277-b37fcd48d0be@arm.com>
In-Reply-To: <c0f0eb7e-9e46-10cc-1277-b37fcd48d0be@arm.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Tue, 8 Oct 2019 23:03:24 +0200
Message-ID: <CAKv+Gu82ERZjaEH265+RNVjtQSk51ekHONniDZg-4vWy1VHkuQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: lse: fix LSE atomics with LLVM's integrated
 assembler
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_140337_403977_A856F965 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kees Cook <keescook@chromium.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Sami Tolvanen <samitolvanen@google.com>, Andrew Murray <andrew.murray@arm.com>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 8 Oct 2019 at 18:19, Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 08/10/2019 16:22, Sami Tolvanen wrote:
> > On Mon, Oct 7, 2019 at 2:46 PM 'Nick Desaulniers' via Clang Built
> > Linux <clang-built-linux@googlegroups.com> wrote:
> >> I'm worried that one of these might lower to LSE atomics without
> >> ALTERNATIVE guards by blanketing all C code with `-march=armv8-a+lse`.
> >
> > True, that's a valid concern. I think adding the directive to each
> > assembly block is the way forward then, assuming the maintainers are
> > fine with that.
>
> It's definitely a valid concern in principle, but in practice note that
> lse.h ends up included in ~99% of C files, so the extension is enabled
> more or less everywhere already.
>

lse.h currently does

__asm__(".arch_extension        lse");

which instructs the assembler to permit the use of LSE opcodes, but it
does not instruct the compiler to emit them, so this is not quite the
same thing.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
