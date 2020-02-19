Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D46AB164FA0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 21:12:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=um4gfS0w5VqW628/7b2HgN7da6XGljm2zSJc05od/h8=; b=smFaXgzywtnwyO
	43ZqerhtMSZopIP/avUiRHwk1WHtDmM+8Eu+sh/tTwLFPP6g08FrXT5MGKj4j7/Atfs/EO26JxNuI
	EtbRPKyoV0j6BZ4SNlALaLtXPRPkh6G02jg3omz+TBRhr8+CxeoaTBknilx7c9r86qSyJHG64fYkL
	xjfIzcBIlfcSJe59yjYRH2/M0xm0m4Q2du+zjHVTMuswbYZ5AfOgFbpQw7uLK9hnXxMgnQXUUvLM9
	V4Es6egM5TXTDkbq4hghN+v3XHF+4XQ1iOLbCGEiJ4ivotZaL80g8ehFxdDoRcZhR+/2yfXKEZF28
	RyIVEuZj32LFoQJ36U+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4ViG-0002Wj-Mp; Wed, 19 Feb 2020 20:12:52 +0000
Received: from mail-vk1-f194.google.com ([209.85.221.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Vi5-0002O6-Ft
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 20:12:42 +0000
Received: by mail-vk1-f194.google.com with SMTP id c129so512244vkh.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 12:12:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=42MaK4n6+CrelpQTjPFZO9NB2S0O1OTsWCtSJ9pIv6o=;
 b=KZjz6JeV1vFYXt8q0wyrdwBhXZ/8rzg3LVXGgnEjLp0yccOlrd9L+Ok9CSnmEDAScF
 5DXgdCokxyl/DepQSJRvQZcSN+CE8Kcr0SWpEfzBMCL7WlKU8JPwmUJCsE2rI7Vb7lKV
 bgQULZyhEbb7MwpvmgaQHsqZa8CaNOAvokqUXRgGKlW538y3zdoMMZdFUy60Yhv2WJdn
 xOhNioYtaDA8ydHmJeTzDTHNO8vInpQ9cb9Ph5Mu9jvt5hFURbjsN43FQ7NZbkVfeBb2
 LHRWZWKArxzLHQPRZfP/szxqEcv4AqpjRJQcw8TGu10OvO3/JnOO2GhuCUA9yjJvEBPV
 ehWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=42MaK4n6+CrelpQTjPFZO9NB2S0O1OTsWCtSJ9pIv6o=;
 b=lGmNAGjPVH7sOqo2dH4z0sUVysQ7PWUMAarrCjb+oswl+1rP8NRWThZ49I/+7WZyVK
 zdE7QEvpVWs6wy5B+cwYbRZmxO2MLPfcPEyoFX9T2kvmGNr9gwN25/Jc9Z9+Sx9X36jz
 sM6zXadbaVrT2ij8ijBvbry6eaOH9YTTr6r5LP6g9F2EB25mSzUy6I9+L5bvNKlUwXLP
 6/a5747uJcSbOjPbuCTl1U0L/hfv0W2dSVQow1EI/DMUB5weTg/LmglYX6QE8bQGFB6+
 u2qnFL5rbGBRvn+/7zL9xHVgv1j9ui1D/jCtM3vVsg+igbmt0xeaeT0pCuD9zCMF2Z3V
 jE8g==
X-Gm-Message-State: APjAAAWHH/CJGKu5ZH/Tj1Ucc6Id04VtXF7dMhiULzXBK3MnfwfgrV6e
 5DrQd20vRY6NOvDZ1DHL7p+rUvOBPJsrY7m+12gNdQ==
X-Google-Smtp-Source: APXvYqyTw52gSQ4jw8pztzOwndZ0sk6pyQFwXTfytaf2zPfg719bU3sRcZ3Xjk3tkUfVqd3npa2/1rrBf+K/+C8JeGQ=
X-Received: by 2002:a1f:4541:: with SMTP id s62mr12216061vka.59.1582143153200; 
 Wed, 19 Feb 2020 12:12:33 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200219000817.195049-1-samitolvanen@google.com>
 <0386ecad-f3d6-f1dc-90da-7f05b2793839@arm.com>
In-Reply-To: <0386ecad-f3d6-f1dc-90da-7f05b2793839@arm.com>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Wed, 19 Feb 2020 12:12:21 -0800
Message-ID: <CABCJKudAYATQSVLHbM4873Yr2EYufrBWQ7Pmv+L97uHhBQUe4w@mail.gmail.com>
Subject: Re: [PATCH v8 00/12] add support for Clang's Shadow Call Stack
To: James Morse <james.morse@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_121241_532238_3621A475 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.194 listed in list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.194 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, Marc Zyngier <maz@kernel.org>,
 Jann Horn <jannh@google.com>, Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 19, 2020 at 10:38 AM James Morse <james.morse@arm.com> wrote:
> This looks like reserving x18 is causing Clang to not-inline the __kern_hyp_va() calls,
> losing the vitally important section information. (I can see why the compiler thinks this
> is fair)

Thanks for catching this. This doesn't appear to be caused by
reserving x18, it looks like SCS itself is causing clang to avoid
inlining these. If I add __noscs to __kern_hyp_va(), clang inlines the
function again. __always_inline also works, as you pointed out.

> Is this a known, er, thing, with clang-9?

I can reproduce this with ToT clang as well.

> I suspect repainting all KVM's 'inline' with __always_inline will fix it. (yuck!) I'll try
> tomorrow.

I think switching to __always_inline is the correct solution here.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
