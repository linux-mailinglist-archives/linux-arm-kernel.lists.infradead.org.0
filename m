Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DEC615E07C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 17:14:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BAyMX9uySQmWznwsDVi9/Q3FhLw41j8q1HmXYMSAufs=; b=L78CEbBigB+XWc
	YT9arIyNNGxsYKKpS/TprxPgvVnsz6MhZ+pfoaW4uNOJWZGGEnz2CKJSGbKG9Qf92/DsLMdLlamc8
	V+B0V2N+wHSRrJdK04M3IpGhDM6rumClFbomlDaVRtxJCtQjZNL3c/Sg8MwtAioY23+g5aYeVHwJP
	ANWN6KRYPs+H2X8T4lGHgTdaB3UWGX9yZouC0DVnk2u/yU+8QEUGC/eDGglZWkpsYivprO+8t8B9z
	rU59NambKo+8Vis84Ib5WoZ8b1AUV+rT0wSlegmN8POxWJeIRAOnvY8v0PO5eQnx91yI9u5igC3sz
	0m2atSZG+MAhcnwIkt+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2dbP-0005eF-RF; Fri, 14 Feb 2020 16:14:03 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dMI-0003WN-O7
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 15:58:29 +0000
Received: by mail-ot1-x342.google.com with SMTP id 77so9584443oty.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Feb 2020 07:58:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7bOcfoQZl3F8fqHPhjMMAa503NpXfsD6HMvBw5tSP8s=;
 b=kX2dO2lu3E8rOEoTVvCGYM8nPGoKdlDT8ZvHPHxRs3BzVhUSkxcCw6K24Y5aTtU5si
 +Ux5zL5Msjyx4lSZ/GeC2SApmABaIF5o7Wc2sn5Qi37BFA3bS/8cI9O/dAX9zoVOw6Rk
 tP7Ie6F3omocpszOy7JJPoqv8s7Mr+IYE6Wtf30DD3zw87++2OcYkknPGZLTjz6pIeyc
 jWc2ZI6heV1WH6u0CHC2nW2yYe1YZ/yK4yHg2FP1KqVlCiLhi1MXjQlr6h4I0ICE9pM2
 8I357YnqPF2jqYz8P+jqGhFPLOfuRB8FXsCmq4Xm+moi+nt0eu0jnuhQMyhQeELq3wWP
 GUfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7bOcfoQZl3F8fqHPhjMMAa503NpXfsD6HMvBw5tSP8s=;
 b=AvQKjUDNsf18+tVtDxpuhFiGJ7Ib68s0YNlizDUpBVLf6VVuK+CEJADVTXzRCLU51J
 CHDccxeuUb4PgVmJwRpbquzIdMp4zlvuHsV6UfNxfrdQ3qu5i55+tBfS2SgcxPneL3Kd
 tfTwoGHQZNn0VzhiFsJ5XrKnwehNus8nVU05ImaVLNCsfxe3NPBat1UQrm8s5/azYskO
 C0j2fxzU60QVNwTW32QK1Lm2bFwnN4OHAN80W9r9La/xdGISgXuVt4dQFfK5Nv3n/wsX
 /4G4KJkX4xRPHemFhLfcjd5nlgx++RtranIeRO1WiXTQp9fba6uSFVOC98k/QIgmr3Y0
 YDxQ==
X-Gm-Message-State: APjAAAUPPjHASXoi+581QeH1SvwNrqepTANwvaNDYClwy7VNIA7qihMB
 NbJX0/Y6edrqz5sYwg0DOU+NTtpWdeOSdJGGqaoUJw==
X-Google-Smtp-Source: APXvYqx/d2a81Pp+Cm6kjutLv1Fu5WDfEbx7fVbqijNpFcOhTEbMgyI36CNkD4gkBX+WP0IRrYbqgpVyWl7QA1EJGT0=
X-Received: by 2002:a05:6830:13d3:: with SMTP id
 e19mr2830279otq.135.1581695904754; 
 Fri, 14 Feb 2020 07:58:24 -0800 (PST)
MIME-Version: 1.0
References: <1580215149-21492-1-git-send-email-anshuman.khandual@arm.com>
 <45ce930c-81b3-3161-ced6-34a8c8623ac8@arm.com>
In-Reply-To: <45ce930c-81b3-3161-ced6-34a8c8623ac8@arm.com>
From: Peter Maydell <peter.maydell@linaro.org>
Date: Fri, 14 Feb 2020 15:58:13 +0000
Message-ID: <CAFEAcA_yZ55rOD1x+FE9wYO8HXx9seK72ZCmnWjtDVr_95-whg@mail.gmail.com>
Subject: Re: [PATCH 0/6] Introduce ID_PFR2 and other CPU feature changes
To: Anshuman Khandual <anshuman.khandual@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_075826_874089_E59A5012 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 lkml - Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 14 Feb 2020 at 04:23, Anshuman Khandual
<anshuman.khandual@arm.com> wrote:
>
>
>
> On 01/28/2020 06:09 PM, Anshuman Khandual wrote:
> > This series is primarily motivated from an adhoc list from Mark Rutland
> > during our ID_ISAR6 discussion [1]. Besides, it also includes a patch
> > which does macro replacement for various open bits shift encodings in
> > various CPU ID registers. This series is based on linux-next 20200124.
> >
> > [1] https://patchwork.kernel.org/patch/11287805/
> >
> > Is there anything else apart from these changes which can be accommodated
> > in this series, please do let me know. Thank you.
>
> Just a gentle ping. Any updates, does this series looks okay ? Is there
> anything else related to CPU ID register feature bits, which can be added
> up here. FWIW, the series still applies on v5.6-rc1.

I just ran into some "32-bit KVM doesn't expose all the ID
registers to userspace via the ONE_REG API" issues today.
I don't know if they'd be reasonable as something to include
in this patchset or if they're unrelated.

Anyway, missing stuff I have noticed specifically:
 * MVFR2
 * ID_MMFR4
 * ID_ISAR6

More generally I would have expected all these 32-bit registers
to exist and read-as-zero for the purpose of the ONE_REG APIs,
because that's what the architecture says is supposed to happen
and it means we have compatibility and QEMU doesn't gradually
build up lots of "kernel doesn't support this yet" conditionals...
I think we get this right for 64-bit KVM, but can we do it for
32-bit as well?

thanks
-- PMM

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
