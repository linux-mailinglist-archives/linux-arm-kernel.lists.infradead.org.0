Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F9DA1B5F8D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 17:39:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eSVEQQfKMh3fLC7/Q9RVmkCpwXskcuOZWLSyGUu7ZH4=; b=Q9FO1C7keCpkbk
	mYfJZc1VEcQ5+CKRyc8s/yFIabOOq2lxDnDheIW9xSRs9dQe7OKVqtfepCO0zX0FyJpOM9/uLUch6
	5A9tXXa+p823NzqtLyLbHTKAb7whUf9Q66+ankPNrvPTpKDWAmsVDgQLuYwkK5W34G80tKfOIuFcG
	6dxeF7wgQGwU28k2yCP0tNP5WjTsFQ/IVHBU2VWbwFqRGauEsNHDFXUSfNCRbQ5xc5lN4aNikJnJL
	a+N7CGDE6U2t/HxIRR1xSafVze3IY15PKe0HyROp1nRKYjNIkPkDv0UQ9CoT7K6BvoBIHJ3hCYhq4
	CiUA6FcOP4tAhwqhVaIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRdwT-00036C-BS; Thu, 23 Apr 2020 15:39:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRdwI-000350-Ih
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 15:38:59 +0000
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com
 [209.85.222.171])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1287021556
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Apr 2020 15:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587656338;
 bh=Wyu9njrWlhbl7xf7oU5Wt4MW02zQKWUfKmPdIYJCS0w=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=xRMSLfCbE0Vw3xMU4fnO//Q4cZSfE5hkCFSOe6ZvHH6D9J/nOp0Ug94nN5MBnfqcs
 gblM2xujaaLkfOQpowbZvxT6qkM+Sp3vWTewAnDGPs22E3VIcloVFrBuPpU0S1d8eT
 uNrIBWpIEAHt8kYTypKjK0wjr7y/WLH+LsZgg87o=
Received: by mail-qk1-f171.google.com with SMTP id s63so6833319qke.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Apr 2020 08:38:58 -0700 (PDT)
X-Gm-Message-State: AGi0Puboh6RIr08daVrKuX3VoFYDBPptsdr+at+Bk079yIpcxluHMrGW
 Lll6Jr1HpFuP1bse4Ygm/nGV4hsv1eW1FKGX9A==
X-Google-Smtp-Source: APiQypK3p49qKpfBlVKXdtl+eplKi5bsSct+10rTJ7VfvZd7h2kFVzE91169u5oa40cUZAZqg4c5h3ql6gSKT2CIpyk=
X-Received: by 2002:a37:cc1:: with SMTP id 184mr4344618qkm.254.1587656337201; 
 Thu, 23 Apr 2020 08:38:57 -0700 (PDT)
MIME-Version: 1.0
References: <20200419170810.5738-1-robh@kernel.org>
 <20200419170810.5738-7-robh@kernel.org>
 <20200422205202.GF25585@bogus>
In-Reply-To: <20200422205202.GF25585@bogus>
From: Rob Herring <robh@kernel.org>
Date: Thu, 23 Apr 2020 10:38:45 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKO0KkYEq59t5+BECkK6uOHEkbW2ra6SeNDT9afiMhmSg@mail.gmail.com>
Message-ID: <CAL_JsqKO0KkYEq59t5+BECkK6uOHEkbW2ra6SeNDT9afiMhmSg@mail.gmail.com>
Subject: Re: [PATCH 06/17] clk: versatile: Only enable SP810 on 32-bit by
 default
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_083858_642057_3CF54C8A 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, "open list:THERMAL" <linux-pm@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>, Liviu Dudau <liviu.dudau@arm.com>,
 Sebastian Reichel <sre@kernel.org>, Will Deacon <will@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-clk <linux-clk@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 22, 2020 at 3:52 PM Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Sun, Apr 19, 2020 at 12:07:59PM -0500, Rob Herring wrote:
> > While 64-bit Arm reference platforms have SP810 for clocks for SP804
> > timers, they are not needed since the arch timers are used instead.
> >
>
> Shouldn't we disable selection of SP804 for arm64 at the same time ?

SP804 is already not selected for VEXPRESS. Only RPi and HiSilicon
enable it on arm64. Though it makes me wonder why they require it as
they should have arch timer too.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
