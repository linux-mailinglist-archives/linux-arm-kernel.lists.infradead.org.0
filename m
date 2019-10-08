Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBF63CF4B0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 10:12:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tUh7bZrZDQp7dVVxO6hMYBD/ln6SkjZcPNjFT3XhAO4=; b=NpGSK8m7eIJMeC
	LBQwTBl/MlRTs7yPP1v3Lg/vJBtsiy9Qmt3YzPl5mpoSthBaZsiNgnw3YHLVmLN077mZ+2d9IDGvX
	2Z8J/P/FDqjoaBRdmMNzTZk5qp3hbnn4qWQDnqcR2h3uAd6dIgga8ZT9ofiMB7hCFy2nbSkb6pCy2
	rYHPQ7ISE5pKxugTDlR00Hi4tieTk+VaYbaN0O6AARF3z+Qy8bvkZ6eCUBHeT6XxMLl3NgQNAYWg7
	cEEDA6O4QkbrTCgDnf9NuSTN2MOTCZ+zl7l4gEgxSg+9fayA726iWCepBtjqoPo9vjUoekumgWCZ4
	IU5C/HmjuvoRsrGLgNQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHkbj-0004xf-9c; Tue, 08 Oct 2019 08:12:35 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHkbb-0004xH-2j
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 08:12:28 +0000
Received: by mail-wm1-x341.google.com with SMTP id 7so2087469wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 01:12:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LAJeWVek9+aLgmvdjAZsqGDmpx8khR8m/1xNdMy/LmU=;
 b=JT3mp/3TimtB5NT7a/4TB3v6kdEb4XQ+j1HLPhK4Z7O68rHiVHHpQg5uJutBtPxOBE
 sb253QTGzy6+4QAAm/9EeNQ6Pcws242VYZ3BNMm2ayjwRuBcFlxPXbVg4fCUh8e9RgSC
 0Xf0V1REjgVEziSFt0oi4YGEF9O7BYQk5nrBwQ+4DIi29amigZwVCxJVsKH7GZHngps9
 U3S426LYTo++XcY203qaa4WEUP3r9NOmQo4G4Gpowdrek6lHe0FNkGzPLdaKrhrZqbUw
 i5nXX4jbuKdqHh5y/OzjGo2tYvVrutf5Kl+BB7pIJHx7xf+gLxgQWR8CW4OOxBYPD22Y
 DpkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LAJeWVek9+aLgmvdjAZsqGDmpx8khR8m/1xNdMy/LmU=;
 b=hhpIy7MtO5XpfTx/rCa+dK/yrewPWYapaXTl9GwqAPYBRc25e/cP9HEGeXeh3hNzMP
 VKaCM94XqtT2TXROXwoP0k5IRok+1X+SoYyHVMotmId0hKbRaniO4numfyNiA7fV0NB4
 FlmMCHJ+VuK7NHhR8jr2Z/kZdulC97SWvO8kaZC2Mg4HvdkS1bJ7TLzUxLkcc2zsa1wg
 pbJZSp/Kx9KHZSjUeOJUiJBD7/WuTx2ZqYeBPTCQWIAQNfBXWVwCYcaTEZxXxBXaB0VT
 YDQjoswKM6n6p2aZC+Ur81NTVg6wph36QtU+LOPGCgLG/S3OZums3gu9LeDjpHLkHK4q
 DFpA==
X-Gm-Message-State: APjAAAWSQdH+Ow+kEKLC9+VNMlZbhvOZ4LgVklzIURdEPi3e1A/CyFAC
 +TpYMYsAyPYcE5Na/D8EK3rpWuVi51Eb1gNS0EW/VzXwPq8=
X-Google-Smtp-Source: APXvYqyXmMpR2i5h6dUUJUdvz8OO56fOXDa1KETEEXyh9EsGaf4WcoRY7ba6RnQqN/963beVyzzaJQ+7I2jPBUoWIhU=
X-Received: by 2002:a1c:a651:: with SMTP id p78mr2710705wme.53.1570522345330; 
 Tue, 08 Oct 2019 01:12:25 -0700 (PDT)
MIME-Version: 1.0
References: <20191004120430.11929-1-ard.biesheuvel@linaro.org>
In-Reply-To: <20191004120430.11929-1-ard.biesheuvel@linaro.org>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Tue, 8 Oct 2019 10:12:14 +0200
Message-ID: <CAKv+Gu9sg0kpkHWDTdSO1Gz2iCpi2uKr0STQVOWReqw0UxUM4Q@mail.gmail.com>
Subject: Re: [RFC/RFT PATCH 00/16] arm64: backport SSBS handling to
 v4.19-stable
To: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_011227_132942_A083D217 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Jeremy Linton <jeremy.linton@arm.com>, Andre Przywara <andre.przywara@arm.com>,
 Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 4 Oct 2019 at 14:04, Ard Biesheuvel <ard.biesheuvel@linaro.org> wrote:
>
> This is a fairly mechnical backport to v4.19 of the changes needed to support
> managing the SSBS state, which controls whether Speculative Store Bypass is
> permitted.
>
> I have included Jeremy's sysfs changes as well, since they are equally
> suitable for stable and made for a much cleaner backport, so it made
> little sense to handle them separately.
>
> These patches are presented for review, and are not being cc'ed to the
> -stable maintainers just yet.
>
> Cc: Will Deacon <will@kernel.org>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Marc Zyngier <maz@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> Cc: Jeremy Linton <jeremy.linton@arm.com>
> Cc: Andre Przywara <andre.przywara@arm.com>
>

If nobody has any objections, I'll send these out to -stable end of today.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
