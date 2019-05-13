Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F9C81B9CC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 17:21:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cek9tmOKw9Jb6lxg/8nThC5cndEGYqXcNpvZBBwND80=; b=DTlG6cNQHL57eP
	SPpARuQNQdbrrc0nwulGzzVKdSVI+zG+HcmmtEcsuSrirWG+8VlsGFsljHBlv8YAh2NkzD5Uywrs+
	VCsdtK2j0bLSYDX4nrfpSEjrfqcOGE8JGjoNvY2W7hUqe96hKOFXQUbvUaqClxwEog7AV/QMAmD0Z
	P7UX6QAfqVaik+Iqnhd2xQM1qpkT+Sy3fXLwKBcyjBs4FQRvpMFIujpPiO0xNqQ+GQcUKmsu2eO1q
	C1LyeCeylULDbMsj+Y+aD6eTyprsxdpAH6KEQEGxDgyM93+c0JmXSlhYNDw9mZtjk9139sSjEovoE
	SqcOFIbBjNBJ8fGrAWUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQClL-00016s-0K; Mon, 13 May 2019 15:21:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQClD-00016O-8Z
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 15:21:04 +0000
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
 [209.85.160.174])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D16E221537
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 15:21:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557760863;
 bh=SYgBc1HBac/X+vUHcByqrS9pPjJfIUqdOtc9N7yxPdk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=jRkigaEcwIHxg0BisI/v8xkHnLJtivkb6bvrdiTatmnpJHuU+p6Zl7I+BzFwxM1rq
 fDzNBhBoJbAwnm3H/mN1ePxFYS7NNR3OEGVHSWDKMgX/+pZ/4PYBax42tp+CK8btCQ
 +Yjb4x6/GgedTznMSnXpEIDLuo381sZO7T8U26Zw=
Received: by mail-qt1-f174.google.com with SMTP id a17so13911841qth.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 08:21:02 -0700 (PDT)
X-Gm-Message-State: APjAAAV53/ZW6RjYtXSXpCF89qfgVT7sztwuMHONi2pYjnxVvJgCJjAm
 UfwZe5iV4Iz8D3m4JJXDkyCBf2lCEdFkGM/JsA==
X-Google-Smtp-Source: APXvYqzX2L5FoRWF0zW2HYeRpIyyhRcBgYtEPjBnonNXCdUdc3d0qH4FJ9S/BaZ6kGLKiYPsCDVif2zcxQZTRnvQNiU=
X-Received: by 2002:a0c:9066:: with SMTP id o93mr23169009qvo.246.1557760862035; 
 Mon, 13 May 2019 08:21:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190424052004.6270-1-vidyas@nvidia.com>
 <20190424052004.6270-11-vidyas@nvidia.com>
 <20190426154306.GA16455@bogus>
 <504abd8f-9eb3-1089-953c-a6372c34b346@nvidia.com>
In-Reply-To: <504abd8f-9eb3-1089-953c-a6372c34b346@nvidia.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 13 May 2019 10:20:50 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLEw+HAeqd2TD33cSVBjwDUNMb5amk2wGsW9m_4Z6CucQ@mail.gmail.com>
Message-ID: <CAL_JsqLEw+HAeqd2TD33cSVBjwDUNMb5amk2wGsW9m_4Z6CucQ@mail.gmail.com>
Subject: Re: [PATCH V5 10/16] dt-bindings: PCI: tegra: Add device tree support
 for T194
To: Vidya Sagar <vidyas@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_082103_336789_8434B348 
X-CRM114-Status: GOOD (  19.22  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Mikko Perttunen <mperttunen@nvidia.com>,
 Manikanta Maddireddy <mmaddireddy@nvidia.com>, linux-pci@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 kthota@nvidia.com, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Jingoo Han <jingoohan1@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Jon Hunter <jonathanh@nvidia.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 7, 2019 at 4:20 AM Vidya Sagar <vidyas@nvidia.com> wrote:
>
> On 4/26/2019 9:13 PM, Rob Herring wrote:
> > On Wed, Apr 24, 2019 at 10:49:58AM +0530, Vidya Sagar wrote:
> >> Add support for Tegra194 PCIe controllers. These controllers are based
> >> on Synopsys DesignWare core IP.
> >>
> >> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> >> ---

> >> +- nvidia,bpmp: Must contain a phandle to BPMP controller node.
> >> +- nvidia,controller-id : Controller specific ID
> >> +    0: C0
> >> +    1: C1
> >> +    2: C2
> >> +    3: C3
> >> +    4: C4
> >> +    5: C5
> >
> > We don't normal put device indexes into DT. Why do you need this.
> > Perhaps for accessing the BPMP? If so, make nvidia,bpmp a phandle+cell.
> BPMP needs to know the controller number to enable it hence it needs to be
> passed to BPMP. Just for accessing BPMP, I already added 'nvidia,bpmp' property.

Then make nvidia,bpmp take the phandle and this number.


> >> +- nvidia,disable-aspm-states: Controls advertisement of ASPM states
> >> +    bit-0 to '1': Disables advertisement of ASPM-L0s
> >> +    bit-1 to '1': Disables advertisement of ASPM-L1. This also disables
> >> +                   advertisement of ASPM-L1.1 and ASPM-L1.2
> >> +    bit-2 to '1': Disables advertisement of ASPM-L1.1
> >> +    bit-3 to '1': Disables advertisement of ASPM-L1.2
> >
> > Can't this cover what 'supports-clkreq' does?
> Well, they are related partially. i.e. if a platform doesn't have 'supports-clkreq' set,
> then, by definition, it can't advertise support for ASPM L1.1 and L1.2 states. But, ASPM-L0s
> and ASPM-L1 states don't depend on 'supports-clkreq' property.
> Having this property gives more granularity as to support for which particular ASPM state
> shouldn't be advertised by the root port.

Okay, then it should be a common property then.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
