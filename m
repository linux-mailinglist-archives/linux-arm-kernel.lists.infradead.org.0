Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 947C81DC1A7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 23:54:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/L504Cul3mY27iMh/SvSnHhpXPxTl05BY4IpCFXplIw=; b=RF/GnMmgROwreH
	fsFnbRFpf2yryWzDbPxL4jEC3Hwsfw0z65h4MXPx16+V0QMipW4mseIFOq9CeTgjpqpi9+Co2hsfW
	jIQQ1IOV1PLPKrykhauUPsS5/+M51kh3mQcRxql25u7xh+aBTUs7nLljCvsjjt0n/HeAj66Vek3X2
	smEIa2yA5HiuQ7Ug1yPFD3FdqL2X9Ew6f8fbjfP//6fHyt9EnVbvDS11mBN3avXd3qtu7aOOc2w93
	W7EVOwc1w6qxLWpaDbpar7F9azfHPBt7tyxQomJ9hVktZdYFRhBf/e2LbvQy5hZzDOrab5rLo5t1q
	uObD2rCEUSZwU9PABYJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbWfo-0004Un-G4; Wed, 20 May 2020 21:54:48 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbWfe-0004Tw-E9
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 21:54:40 +0000
Received: from mail-qv1-f47.google.com ([209.85.219.47]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1M8hMt-1jffOi48bR-004lOT for <linux-arm-kernel@lists.infradead.org>; Wed,
 20 May 2020 23:54:34 +0200
Received: by mail-qv1-f47.google.com with SMTP id v15so2141213qvr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 14:54:33 -0700 (PDT)
X-Gm-Message-State: AOAM5337mARfs97Yi6atQUT6R1nXnhEEFKHBJJeNlXfcRAIwWbP9gbqY
 1E/YNGB+/srWnRpt/Q1NsJT6qMoq2gPqA6PQkzg=
X-Google-Smtp-Source: ABdhPJxhlqBF6F6xcths8T69XvlyK8bJ9zrIzMxBBqdK7jmppg8Ks49xtrdIsFA0/8gwq5p9lAz9h8OG/cU+A8ZjutQ=
X-Received: by 2002:a05:6214:905:: with SMTP id
 dj5mr7068725qvb.222.1590011672567; 
 Wed, 20 May 2020 14:54:32 -0700 (PDT)
MIME-Version: 1.0
References: <20200518091222.27467-1-sudeep.holla@arm.com>
 <158999823818.135150.13263761266508812198.b4-ty@kernel.org>
In-Reply-To: <158999823818.135150.13263761266508812198.b4-ty@kernel.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 20 May 2020 23:54:16 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0bx2eOFSqM7ihNkJBWU_KKSh0vGJZZdvpkH=1nppingw@mail.gmail.com>
Message-ID: <CAK8P3a0bx2eOFSqM7ihNkJBWU_KKSh0vGJZZdvpkH=1nppingw@mail.gmail.com>
Subject: Re: [PATCH v4 0/7] firmware: smccc: Add basic SMCCC v1.2 +
 ARCH_SOC_ID support
To: Will Deacon <will@kernel.org>
X-Provags-ID: V03:K1:I6mMiVe/qTqNwXb2LlSjL7bBYOY3Rfi+h1bBT7La9V3MFG0u7bW
 ViBMYceHpl2UJqo3ANJ7+PBZ8ZCmuwMv2jGYIJmPz4ffXU1w4aZ63BWWmvnSomDmQ4DbKrl
 A+g//bQrqGBrGW4WZ9wShnTJnQfaN4jO/4HsUb/fy45d3HpQn4kKmyZk5uq+sG1HMaCpdpd
 MfoLiYBNZPJglr+lLgEXw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Wg1WjCuVkN4=:qWwcvSZux1I8yYSAFs693l
 OHFNTWNFZajeEdEAvmFHyR6qW1BPJu2BVY1VLp7PjG73bIK9jOE0P7WMucOXI2uXiJcj7XBqe
 SySMHKuFAiLUn/8GUIA91C8WRzSvwjLGtStmLjoyybT6ayElWWzLHnQTqjTXqxZ70Q/woUnyX
 Vu8k3W/KhNlwnxVcyMZ6EvVLI7IEsfutB8FvNJvHpjEHH88Gx1FhSXM+J5HcD39jKAgQ37FrR
 hsV2LWM+X2ioWH/AtfTf1xLmdgPjeyyiVFvl2N8ll74tWogJgoLwEpUXinS1oIs0ccsJgmaqV
 RGMfkJWA4heycbBonBBkjC3dOsNkpVSIVWUAcJoLFSAS/YStQIftSV20vPy7U5T6yTL7Xanb5
 Ti1qxFenHWnyW0w6fXw+J03kiwvD39f4fjeDkAhfYVUWtChLLBodQvxP3Z8VczW9dCz3x4ZUR
 RSrKj9DgYAfzmfwy3jmxMKkWmSyLabYo0Gdg8tpD9LrTUI1BtsmjiNIGATGz6LtxJS6lcyJ1c
 plz1paDe+pxbHGe0x2+gPqLhN4/9H/NQAk8msZwcWndEhp6IX7heBOy3aIloahlYq92SF8Edf
 mevZ0IzEz4mt1BuX19hmOFJfIe7hWLIKuS3y8qXJ2k3NjqUWFfEtY9G2Ef9K5QcGo9xpNuo+6
 V8Dr6nj0e22MFOxhs9rHVx0Apu/h/oZNRzcZLaKzfc+epxSNjKHzsDaipNdiMIE0O7TYZ7YPd
 ufqlNYhl7It/8BoXQdnT8lKV/wQ4s+Zmd9Yg9COiugAw2Eda5CAbFL7OHm7aOWJXdWxm3H+FT
 0012E7tJDIX3Jtr/gPozXqVIEEt9Dz/wz93geBI0hrTwDf6A8U=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_145438_771828_B7E8A5AB 
X-CRM114-Status: GOOD (  16.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.72.192.74 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Steven Price <steven.price@arm.com>, harb@amperecomputing.com,
 Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 11:29 PM Will Deacon <will@kernel.org> wrote:
>
> On Mon, 18 May 2020 10:12:15 +0100, Sudeep Holla wrote:
> > This patch series adds support for SMCCCv1.2 ARCH_SOC_ID.
> > This doesn't add other changes added in SMCCC v1.2 yet. They will
> > follow these soon along with its first user SPCI/PSA-FF.
> >
> > This is tested using upstream TF-A + the patch[3] fixing the original
> > implementation there.
> >
> > [...]
>
> Applied to arm64 (for-next/smccc), thanks!
>
> [1/7] firmware: smccc: Add HAVE_ARM_SMCCC_DISCOVERY to identify SMCCC v1.1 and above
>       https://git.kernel.org/arm64/c/e5bfb21d98b6
> [2/7] firmware: smccc: Update link to latest SMCCC specification
>       https://git.kernel.org/arm64/c/15c704ab6244
> [3/7] firmware: smccc: Add the definition for SMCCCv1.2 version/error codes
>       https://git.kernel.org/arm64/c/0441bfe7f00a
> [4/7] firmware: smccc: Drop smccc_version enum and use ARM_SMCCC_VERSION_1_x instead
>       https://git.kernel.org/arm64/c/ad5a57dfe434
> [5/7] firmware: smccc: Refactor SMCCC specific bits into separate file
>       https://git.kernel.org/arm64/c/f2ae97062a48
> [6/7] firmware: smccc: Add function to fetch SMCCC version
>       https://git.kernel.org/arm64/c/a4fb17465182
> [7/7] firmware: smccc: Add ARCH_SOC_ID support
>       https://git.kernel.org/arm64/c/ce6488f0ce09
>
> Arnd -- Sudeep's reply to you about the sysfs groups seemed reasonable to me,
> but please shout if you'd rather I dropped this in order to pursue an
> alternative approach.

I missed the reply earlier, thanks for pointing me to it again.

I'm not entirely convinced, but don't revert it for now because of that,
I assume we can find a solution.

However, please have a look at the build failure report for patch 5
and fix it if you can see what went wrong.

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
