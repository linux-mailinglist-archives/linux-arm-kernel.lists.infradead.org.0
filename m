Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 731431DEC90
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 17:55:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MvM/qgVuJEQ8YLFgtTMZFjESmgLbSTAoQFdgTISNp+U=; b=ILkerLjAEq3pQM
	Pw+oFtRyKf6fTTM/lJuZ0QotigVsS2IRtEQYHLzOpo2VI2nMW6Hr3fXRiY2oVj30KVlberqjusW1k
	tXKdEP9JfIqqZns0tVwNnrWH4jHP+egEZ/RK2U1d1kNvZUgxWSM7rlIpuWP1id27Csqejc1WQMn6d
	fJKRPbl98f9iDYmfEeL2FZgySLFzrt/abG6dGpmBJxPgBNtyOrBlBFuGJCbvGCbpzSCT6MtUeA1tc
	0Ek3smuCgJLeIobcVtk6SJVPG2Ofzrs6NpDyRYujr3Hy12EwQaIBbEocqd94n5UemNp30h7B7tBSz
	OtkMeBObvdaoiNhdAUKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcA12-0002Aa-Eb; Fri, 22 May 2020 15:55:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcA0O-0001xO-De
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 15:54:41 +0000
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com
 [209.85.167.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7599A20663
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 15:54:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590162879;
 bh=wGRZvt3Z+867keqt3QAT0Chc0raT1nG9Wgs/nGQRLbY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=n/tqVDm2zEEQ4mU7pMZXNvqNl/+Y8L81dHXFkDfcoI4SgD9+fXk86fQkSXltNzcNk
 B+hEJas5BrQkR05xveBENPvtkW8Vgasbvs5S7fZw37eVL4MaZRqM3KXMXDZ7hqr4Vy
 n9WATdimBm1rfvbvcAe1tYeVUt6edphAX4TkYLsg=
Received: by mail-oi1-f176.google.com with SMTP id d191so9655082oib.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 08:54:39 -0700 (PDT)
X-Gm-Message-State: AOAM532IHRzeJ4QhApFCBuqdu9Ri8T1HHNRjJhfkqrPU7qra7In9x7il
 R9CTa+cJ4mvqSI7fTGJzz7Ak0AoMxywlrOmcCQ==
X-Google-Smtp-Source: ABdhPJzQ8I+vECFyhVYyk2x4i27BUXmDXS2vlHoGkAessFkDVhzp1YCya/jmMWgspVusAE/rNHggVAYEsM+awFHIX9U=
X-Received: by 2002:a05:6808:7cb:: with SMTP id
 f11mr3196684oij.152.1590162878837; 
 Fri, 22 May 2020 08:54:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200522033631.32574-1-kishon@ti.com>
 <20200522033631.32574-4-kishon@ti.com>
In-Reply-To: <20200522033631.32574-4-kishon@ti.com>
From: Rob Herring <robh@kernel.org>
Date: Fri, 22 May 2020 09:54:27 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJjXUUgTbSAi83w4Eie-sVTrkLLMGh_PRQsd8k2vuua4Q@mail.gmail.com>
Message-ID: <CAL_JsqJjXUUgTbSAi83w4Eie-sVTrkLLMGh_PRQsd8k2vuua4Q@mail.gmail.com>
Subject: Re: [PATCH v5 03/14] PCI: cadence: Convert all r/w accessors to
 perform only 32-bit accesses
To: Kishon Vijay Abraham I <kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_085440_513959_3E46C1A9 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, PCI <linux-pci@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tom Joseph <tjoseph@cadence.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-omap <linux-omap@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 21, 2020 at 9:37 PM Kishon Vijay Abraham I <kishon@ti.com> wrote:
>
> Certain platforms like TI's J721E using Cadence PCIe IP can perform only
> 32-bit accesses for reading or writing to Cadence registers. Convert all
> read and write accesses to 32-bit in Cadence PCIe driver in preparation
> for adding PCIe support in TI's J721E SoC.

Looking more closely I don't think cdns_pcie_ep_assert_intx is okay
with this and never can be given the PCI_COMMAND and PCI_STATUS
registers are in the same word (IIRC, that's the main reason 32-bit
config space accesses are broken). So this isn't going to work at
least for EP accesses. And maybe you need a custom .raise_irq() hook
to minimize any problems (such as making the RMW atomic at least from
the endpoint's perspective).

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
