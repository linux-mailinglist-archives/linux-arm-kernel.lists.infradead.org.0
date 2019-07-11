Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36979656D1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 14:26:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=voUXGLk0sj+2dLcdyA8a6vi5A27eV9Nh9VxQ54LdYBs=; b=k99Vf0n2E/fLUm
	7EY0o2EJhN5EzJm/AFZyQxWGxTseEF+jI7K3mJM1oiJwDsOHpOY4vbgX+dhKm/4Hh+FnWQp16ShSz
	z2ageLu55hoP1+YYZhX1C1HGKfHZxP3yYhRnMNSeARO7U3XPN94qAXMO1Tzl5Jjxs1mbQUHbXhgVe
	9HOCIUtGOJl/G8KTHUcD3cTxCR9lFwH8M7Z2QFcGXISzbSSHBAPMAK6ZK1TdZHaf+kZuO5aVgcAda
	WiiSUzUeTNdYtqAW+Ui2hNqId5s+H9J5VT7iJP5T+gQNHtlbiQR98dv8bN6cDLyr4IIj0qEMgTFgD
	UIUacML+ZMEwPTXh3Nag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlY9o-0005hq-G3; Thu, 11 Jul 2019 12:26:40 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlY9f-0005gR-46
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 12:26:32 +0000
Received: by mail-ed1-x543.google.com with SMTP id d4so5593654edr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 05:26:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XJ6ZMdK4LYRloh1U7sELBo1v2NVDRc/ffgJQQZCOGw8=;
 b=EW7GpK1ypNgGxWDSTMOusRhBsnHaJj84KVn4gcs69/N7Uk7dXNGESNYBPBlBX4nMAC
 +zIFWunPSKy5J7VY1Y9C0q3D/5Dc/CU40NZ4BIFDBVGzcO2Ds0YruG2wTfBlz86+Nbjo
 z+i9dBBMWPgRi02j4HcZulKmeTzn1qyNlNrKDeYqkQ/ltfDkNb4rn8zVHh1pCmvJrX6c
 ZV4n9inovdSAot9aoSc/HNDfD4WlpxSQvSXv1y/wmJ+2gNyBk3qPttWksU014jdoWi7C
 kbHMTVoNVgEEuKb67O+BqKD0Gq08mOkhEgxIMU74FLyP8mwgdNa2L1L3Yavzsw8zemZj
 T+Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XJ6ZMdK4LYRloh1U7sELBo1v2NVDRc/ffgJQQZCOGw8=;
 b=G9m6Bq07n42GyChjXCrvyWlfmYcWzfqapAmX7+3WoYdvyLb32i93trWXFyn1Q8RaLw
 uwZuglu9gyjmauwcDo0LLm6Hg6UBR0ifzDzYjst1vKXJ2Slv73hJ+H766QeQLUfno2i3
 IZ8vEKK4GQLx2JTlO+EZhdh+/l2CZuZECbfTKMbUwlImTRcw7gXi4K/DMD+DYplpJ9/v
 YzT/7M3345pvezAecqK0TFHa3lK6Xkb4fB7lHGNAdPRCJD+F4iY/M//cfvNdG2EBBlxe
 wJtbH2j5BSwYnKXFo2iu45WMYOsGEAc6eBtQ+z/ET21BvnPGoOrqdgEIzLCA3tNo7nU+
 bosQ==
X-Gm-Message-State: APjAAAVfvBaCgauc2ixnMEid2+iATZOgRfYcV3Oe2q8yGmPKo3keyABb
 MSzrIrpAiS8R8oIJJlmG46YMZnd7JVvUVgQPv6b2hv+r
X-Google-Smtp-Source: APXvYqzugM5LpeBLacryDPFYq2IwvdgIhi4YgehBu0EhyKrAkLdubbVLjwgW6a31qe/LF/V0ieTCIyUKrLyCQynpEqU=
X-Received: by 2002:a05:6402:14c4:: with SMTP id
 f4mr3155357edx.170.1562847986892; 
 Thu, 11 Jul 2019 05:26:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190708211528.12392-1-pasha.tatashin@soleen.com>
 <CACi5LpNGWhTnXyM8gB0Tn=682+08s-ppfDpX2SawfxMvue1GTQ@mail.gmail.com>
 <CA+CK2bBrwBHhD-PFO_gVnDYoFi0Su6t456WNdtBWpOe4qM+oww@mail.gmail.com>
 <2d60f302-5161-638a-76cd-d7d79e5631fe@arm.com>
 <CA+CK2bA40wQvX=KieE5Qg2Ny5ZyiDAAjAb9W7Phu2Ou_9r6bOA@mail.gmail.com>
 <f9bea5bd-370a-47b5-8ad1-a30bd43d6cca@arm.com>
 <CA+CK2bBWis8TgyOmDhVgLYrOU95Za-UhSGSB3ufsjiNDt-Zd_w@mail.gmail.com>
 <93f99d54-9fe4-a191-4877-080ad78322bb@arm.com>
In-Reply-To: <93f99d54-9fe4-a191-4877-080ad78322bb@arm.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Thu, 11 Jul 2019 08:26:16 -0400
Message-ID: <CA+CK2bCOeV=4+MZcZfScvTDZ8Not6qxEn1DKZKSwtJOvq-hotQ@mail.gmail.com>
Subject: Re: [v1 0/5] allow to reserve memory for normal kexec kernel
To: Vladimir Murzin <vladimir.murzin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_052631_170140_6AC23B56 
X-CRM114-Status: GOOD (  17.97  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sasha Levin <sashal@kernel.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, Jonathan Corbet <corbet@lwn.net>,
 kexec mailing list <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 James Morris <jmorris@namei.org>, James Morse <james.morse@arm.com>,
 Eric Biederman <ebiederm@xmission.com>, will@kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 11, 2019 at 4:12 AM Vladimir Murzin <vladimir.murzin@arm.com> wrote:
>
> Hi,
>
> On 7/10/19 4:56 PM, Pavel Tatashin wrote:
> > On Wed, Jul 10, 2019 at 11:19 AM James Morse <james.morse@arm.com> wrote:
> >>
> >> Hi Pasha,
> >>
> >> On 09/07/2019 14:07, Pavel Tatashin wrote:
> >>>>> Enabling MMU and D-Cache for relocation  would essentially require the
> >>>>> same changes in kernel. Could you please share exactly why these were
> >>>>> not accepted upstream into kexec-tools?
> >>>>
> >>>> Because '--no-checks' is a much simpler alternative.
> >>>>
> >>>> More of the discussion:
> >>>> https://lore.kernel.org/linux-arm-kernel/5599813d-f83c-d154-287a-c131c48292ca@arm.com/
> >>>>
> >>>> While you can make purgatory a fully-fledged operating system, it doesn't really need to
> >>>> do anything on arm64. Errata-workarounds alone are a reason not do start down this path.
> >>>
> >>> Thank you James. I will summaries the information gathered from the
> >>> yesterday's/today's discussion and add it to the cover letter together
> >>> with ARM64 tag. I think, the patch series makes sense for ARM64 only,
> >>> unless there are other platforms that disable caching/MMU during
> >>> relocation.
> >>
> >> I'd prefer not to reserve additional memory for regular kexec just to avoid the relocation.
> >> If the kernel's relocation work is so painful we can investigate doing it while the MMU is
> >> enabled. If you can compare regular-kexec with kexec_file_load() you eliminate the
> >> purgatory part of the work.
> >
> > Relocation time is exactly the same for regular-kexec and
> > kexec_file_load(). So, the relocation is indeed painful for our case.
> > I am working on adding MMU enabled kernel relocation.
>
> Out of curiosity, does enabling only I-cache make a difference? IIRC, it doesn't
> require setting MMU, in contrast to D-cache.

Resend:

Thank you for suggestion. I have actually experimented with enabling
caches without MMU. Did not see a difference.

Thank you,
Pasha

>
> Cheers
> Vladimir
>
> >
> > Pasha
> >
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> >
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
