Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 946EBD0968
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 10:17:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+VBWie5Ia5VPTUKgTzH+hcXnhVbXMK/MLPQzVjjeoVg=; b=MSRqQhqaym0Pjv
	4HrywvmT+xOOqJaXR796AiNwEXNS+3M3Ake2Sui5zhlLJd8gy3LYaZmBOWt1Y7QW+/RpDq+DIE4MC
	aQvhdWIl/Rotseo93o7g+pmbG84GkHGnWGKrdf55rKHGuZz8j+S2FKuyqsioIvjJciQyEV/U863jQ
	4GpI+ir+5vEBHsVkaaZ+ojLP6Hv6k7sLNbr4MKcx8vCVa02UNYtGlR7gY9Vy8O7QnltiQAQ4NZx9g
	cZLMVHHWmdSXxlFcLXKEuueq0YaQDxG0iTgj0qcy78o3hutrTkDEFzwBCEVh3B1uaRUjJSftCSyZx
	URIr69OgK+zLjMn0EnHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI7A6-0006MI-1W; Wed, 09 Oct 2019 08:17:34 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI79y-0006Lz-Lz
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 08:17:27 +0000
Received: by mail-wm1-x342.google.com with SMTP id v17so1423464wml.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 01:17:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DrMVnrzn3+u79252XdcGLAzKToAZt3nyGYegK0vJhik=;
 b=y8Zgp6LEz/kNThe/rhWBYfXVy5Mv1tq5f2gvRQqHiSglOxQ41iOMGW8J9VoK6j9ZOc
 cppNw5aQ6UzApaevRQPOdavNQtAbahw4DXV+2td7nkKpe3JqTar6U2VKHy5ad4anudCH
 A4G6urORYLjst9s9qQkn9m1xL2C2gXRa9DsJszSAtfay88+zkO6PJgaL0+TlMnUr6MRX
 QNNoteP1FfGlmmX9dnk7MsW8RcYZ+e5hjeBnrqB9SfiKtLdIfW05oOoIa2f8PuKPWiHM
 kD+bgdKHUE6ohaqygWB6iSus7Gqlr7U2ChVtnKzNQFZccFHOG4FECeXXEMBgVqkl7RsM
 +l4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DrMVnrzn3+u79252XdcGLAzKToAZt3nyGYegK0vJhik=;
 b=srWRWyUE9PVEVb78JRhDXuYadNRzv4T89f+0b/NxToOAim57rL/Y98P/sTqDIkMyvm
 UuQC3PgYFzsgdjGf/mvv7nH3PN++359IoB6I2Elgy83wIN+/8GONzcY+i3KgO19MU4Js
 HBQ2z5JudUiNF4onUoUotOuVyuXwQzHo5cJ77pSHiEJvrHLTRdG3wlyZhO/eBWDNYs+Y
 A3oGY83akApq6KnrLOMRrWt5kywIYJX5RsNwvJ5MoYpjdeRHHCs6GgMrHKy+AjU8xmA8
 LKpAXE61nw+uKDVSsQ5dr09rQtcGLgJaXLYTJysA3p+5z1oqX5VossxrWrLZLhdWq+wv
 +0DQ==
X-Gm-Message-State: APjAAAWHBwefuJvL31WpC+90+Isw8MLG3JqENuZTZdIs9xJBVAO1zmZ3
 D2fOy++okObiYNbGc/alblJBdQmroKFxIGfX8g8tgA==
X-Google-Smtp-Source: APXvYqwR/fyWhVugqsvHQCRzkO9pQZmrY4GFCJqImVp02eh/4BQCz+w3KuDBOm45Tun6AsbjiM2T2yIrM3mJ9O4eeoY=
X-Received: by 2002:a7b:cb54:: with SMTP id v20mr1488828wmj.119.1570609045190; 
 Wed, 09 Oct 2019 01:17:25 -0700 (PDT)
MIME-Version: 1.0
References: <20191008153930.15386-1-ard.biesheuvel@linaro.org>
 <20191009080422.GA3881278@kroah.com>
In-Reply-To: <20191009080422.GA3881278@kroah.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Wed, 9 Oct 2019 10:17:12 +0200
Message-ID: <CAKv+Gu-t9Dzn-LqZKXVUFjsC14RNz3qz1E1sFunC73ji9QGHXQ@mail.gmail.com>
Subject: Re: [PATCH for-stable-v4.19 00/16] arm64 spec mitigation backports
To: Greg KH <greg@kroah.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_011726_720368_A0480205 
X-CRM114-Status: GOOD (  13.16  )
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
 Catalin Marinas <catalin.marinas@arm.com>, stable <stable@vger.kernel.org>,
 Andre Przywara <andre.przywara@arm.com>, Jeremy Linton <jeremy.linton@arm.com>,
 Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 9 Oct 2019 at 10:04, Greg KH <greg@kroah.com> wrote:
>
> On Tue, Oct 08, 2019 at 05:39:14PM +0200, Ard Biesheuvel wrote:
> > This is a backport to v4.19 of the arm64 patches that exists in mainline
> > to support CPUs that implement the SSBS capability, which gives the OS
> > and user space control over whether Speculative Store Bypass is
> > permitted in certain contexts. This gives a substantial performance
> > boost on hardware that implements it.
> >
> > At the same time, this series backports arm64 support for reporting
> > of vulnerabilities via syfs. This is covered by the same series since
> > it produces a much cleaner backport, where none of the patches required
> > any changes beyond some manual mangling of the context to make them apply.
> >
> > Build tested using a fair number of randconfig builds. Boot tested
> > under KVM and on ThunderX2.
>
> All now queued up, thanks.
>

Thanks Greg.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
