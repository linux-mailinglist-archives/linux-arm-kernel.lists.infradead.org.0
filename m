Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A53D1A324E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 12:13:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N3m0XdtRTUA+dfRg+xUK6nAONiJ8ZBlKIzSU3DYFU40=; b=nIEnINGzjooS8m
	3F8aFDmk17+QniAAVvYsRRKDJBHlQK2uDX3D2Fh4Tam5ogB6ycPsmYAwJ9eJvu8zs/pUJ7mfbZw30
	AOEdHj4N6CjVqZ1WMwAkS1/loyE5SvehSm7GWIRMWVXtNI3S7OGxnEQ0w/Ae+p+hcBvJA8j1iniS5
	RiRhpn8Q/slR+9C3jITqr2P1R5JeXWgqQIYmn2bnUMUhIpLWZdOg/DnEXrObOex40afNwGAI7/6go
	jKN+0VyhFlyxD0ekGpKlmPIua4M2FO47eBhdcDlNofcfg9MVPiWoPcLMH9C7kNsohT93KYLI4PFTy
	R0QSP3WjRIEmo8YXpwQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMUBT-0003nQ-Qe; Thu, 09 Apr 2020 10:13:19 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMUBM-0003mi-5N; Thu, 09 Apr 2020 10:13:13 +0000
Received: by mail-ot1-x343.google.com with SMTP id 88so691228otx.13;
 Thu, 09 Apr 2020 03:13:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5gCZP4VOAtxv93Dwz8G9N+IxG+FH0dYZBABiIJGbG7E=;
 b=pmVUwiuIMo0kmUMLq83grnGCpTZklP8SCBR+TQ0joTcBm9AdV7SNA755dETA8L+Pdt
 DzxF9SQnuqzRpS6Zuba4psevWLsUbUlJNwtBafNnKqn/Aotbj94l0LlSi4GT3g5DlVhB
 OKWju+K39+glkV6ifSt70XgUC7ZnddEWJhetY0iRyBxZ3y35yYzI60Ampi0S8ft6AaS1
 hqg/S/6o/4BjWjNsCF5Nrdho4hifNBodl4bRcFM8TQ6IiP3xsaBnSlFbsp1Nqp/GEFnf
 rKL+Xf7yLQV5ibq9Nv9zNwFAbzgSRGFTHpae+q2CtJf1JczXReXdtTl5M2Q33wblHM7o
 zMog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5gCZP4VOAtxv93Dwz8G9N+IxG+FH0dYZBABiIJGbG7E=;
 b=hbhtrfkp4jGKPnX3a8IJpP5g3V4nw18J8Db5KKGAECHvszskVPCNnf/p08tDG5/xcj
 c6rrcsn7Jx+h3dCmbUDAisIlhC1yrFJBy8Kdpb5Y1BbCtKzWXTwrtWAjCr8re+ZyBDC7
 viiOPAZsV21opU1jcbXz/eX3zurY7oDwx/TlfqizpGbHS+0KIwfPefEATnSPFwsNe4bx
 xcN9rJ/CMxSK9J2eG9qwyEX1jnmRdeWO9+NWcW2nXmZe52t8qp1QAc/CEwmiJBm41xs8
 no6RacQmoiaRl+FkkMUtMU9PY7qXuibspzKy4rtFcEjbTZbPp25NX2pNHrCogemEVZ20
 0Pjg==
X-Gm-Message-State: AGi0Pub2tKHo1o8FU9u56K6H+74QEEYIItXXx1UNbab4TRCK24fUeFMt
 e2EPBFHdvn66tEaohDBVkc9GsfJgQc4V0bYShnI=
X-Google-Smtp-Source: APiQypLhsQeYzwoUhGLE9gEJNuYaBxMBYdOrDBfS/DVmEFxN0Im6t1IiIy0qzEuA2Wmozs97BahlPiYaYmuzaWQ47b8=
X-Received: by 2002:a9d:798e:: with SMTP id h14mr6693794otm.88.1586427191253; 
 Thu, 09 Apr 2020 03:13:11 -0700 (PDT)
MIME-Version: 1.0
References: <1586360280-10956-5-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200408234622.GA150772@google.com>
In-Reply-To: <20200408234622.GA150772@google.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Thu, 9 Apr 2020 11:12:45 +0100
Message-ID: <CA+V-a8te28Ji5HYV-QAmd28x-ACshCkVmUUkMYu1KSt0RRdJgQ@mail.gmail.com>
Subject: Re: [PATCH v7 4/8] PCI: endpoint: Add support to handle multiple base
 for mapping outbound memory
To: Bjorn Helgaas <helgaas@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_031312_225387_A3966C97 
X-CRM114-Status: GOOD (  21.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.csengg[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Chris Paterson <Chris.Paterson2@renesas.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 linux-pci <linux-pci@vger.kernel.org>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Tom Joseph <tjoseph@cadence.com>, Rob Herring <robh+dt@kernel.org>,
 Jingoo Han <jingoohan1@gmail.com>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 LAK <linux-arm-kernel@lists.infradead.org>,
 Marek Vasut <marek.vasut+renesas@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Bjorn,

Thank you for the review.

On Thu, Apr 9, 2020 at 12:46 AM Bjorn Helgaas <helgaas@kernel.org> wrote:
>
> On Wed, Apr 08, 2020 at 04:37:56PM +0100, Lad Prabhakar wrote:
> > R-Car PCIe controller has support to map multiple memory regions for
> > mapping the outbound memory in local system also the controller limits
> > single allocation for each region (that is, once a chunk is used from the
> > region it cannot be used to allocate a new one). This features inspires to
> > add support for handling multiple memory bases in endpoint framework.
> >
> > With this patch pci_epc_mem_init() initializes address space for endpoint
> > controller which support single window and whereas __pci_epc_mem_init()
> > now accepts pointer to multiple windows supported by endpoint controller.
>
> Adding a double underscore prefix usually indicates an internal
> function that skips some checking.
>
> It doesn't seem like quite the right thing for this external interface
> that adds functionality.  Maybe the name could include something like
> "multi"?
>
Agreed. how about pci_epc_mem_multi_init() ?

> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> This needs an ack from Kishon, of course.
>
Yes waiting for Kishon to review it.

> This patch seems like it does several things that could possibly be
> split into separate patches?
>
>   - Change pci_epc_mem_init() interface to add page_size argument (the
>     only one that touches cadence & rockchip; it would be nice if this
>     were a tiny patch)
>
Can be done.

>   - Add struct pci_epc_mem_window
>
>   - Add a pci_epc_multi_mem_init() or similar, implement
>     pci_epc_mem_init() in terms of it (as you already do)
>
The above two needs to be single patch. Is that OK with you ?

Cheers,
--Prabhakar

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
