Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0675015FDE1
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Feb 2020 10:36:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2XqSWPLdggJM/vUxBC8/V3xWHCtATk/xpV673lvwacw=; b=XDXYUNUq6OL6W9
	cZedAlX+Fhs+uNmCrcPiTH9Psb8WO0cMaAvaxGqfVC9npzdpUNKCv81G5QHU7o/Xh7Y5w4p56sUJ1
	dZQMLxXdXQvCK3+5L/hlF3rdxvX8Zxl17wcW2fAei2jnXs+Vugp/mumJzr6E5Zd3JK0ffNEqkgPw/
	QP8eZTIT7Yz2lkGchkgAd0IL1h3Yvs1HJi13YN8SwK4pK2VHGDtmvfDk3tmfJf3GYOV5WylCyd4VQ
	MpB0EQiS4LyGQYageLNmMWGlLJV/Zybhuw27MOSaEhfI9Ixm6/JCexAznJbgQMP7XDSo5od7GP2Yt
	WZJOBu7kbszicSu5kigA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2ts2-0004tb-IJ; Sat, 15 Feb 2020 09:36:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2trv-0004sr-Qt
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Feb 2020 09:36:13 +0000
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 61C982187F
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 15 Feb 2020 09:36:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581759369;
 bh=77s9AGSrmY2uC8X9ep4myTtJnVg00ZN9jRlXRrvaG24=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Mi+fxFzOStybH7IZFKMtjZzjbSIBOjpfdq2tb6eMs8UuBtHBJwoIPxf8vdHZ1K6rr
 p1flvGcPJEWDD4IMJkCwhx7Sy29KcSXUmob68SxAQBRmCZ1EEbR+KeYPSdXZ9azGuV
 2/DN98d9DJB5yZaImb4DGEzimhXItaYUffAP4pCk=
Received: by mail-wr1-f47.google.com with SMTP id u6so13845597wrt.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 15 Feb 2020 01:36:09 -0800 (PST)
X-Gm-Message-State: APjAAAX+p++aa0V2Z4qSVsDXiLkG5p0D6EMFadtrPTilBjTuDWwpEHHJ
 j2P2WuZAmIftVQD0CAi6DP8ivFAZ3oDDixI0tTN6kA==
X-Google-Smtp-Source: APXvYqw5avri6PHrQnPJzEOMuwzoacfNoEZg+aBei77RX1trdP5kEvDNrXlc6432RC92Le6+sSr5u6yyI2X7WwTCSek=
X-Received: by 2002:adf:8564:: with SMTP id 91mr9603108wrh.252.1581759367635; 
 Sat, 15 Feb 2020 01:36:07 -0800 (PST)
MIME-Version: 1.0
References: <20170821192907.8695-3-ard.biesheuvel@linaro.org>
 <1581728065-5862-1-git-send-email-alan.mikhak@sifive.com>
In-Reply-To: <1581728065-5862-1-git-send-email-alan.mikhak@sifive.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Sat, 15 Feb 2020 10:35:56 +0100
X-Gmail-Original-Message-ID: <CAKv+Gu9W0v9owp85hkAatwCvu-y9z4BZxvbKf92N-s_nnD910Q@mail.gmail.com>
Message-ID: <CAKv+Gu9W0v9owp85hkAatwCvu-y9z4BZxvbKf92N-s_nnD910Q@mail.gmail.com>
Subject: Re: [PATCH 2/3] pci: designware: add separate driver for the MSI part
 of the RC
To: Alan Mikhak <alan.mikhak@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200215_013611_897625_E50BF1F2 
X-CRM114-Status: GOOD (  16.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Marc Zyngier <maz@kernel.org>, Joao Pinto <Joao.Pinto@synopsys.com>,
 Graeme Gregory <graeme.gregory@linaro.org>, Jingoo Han <jingoohan1@gmail.com>,
 linux-pci <linux-pci@vger.kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Leif Lindholm <leif@nuviainc.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

(updated some email addresses in cc, including my own)

On Sat, 15 Feb 2020 at 01:54, Alan Mikhak <alan.mikhak@sifive.com> wrote:
>
> Hi..
>
> What is the right approach for adding MSI support for the generic
> Linux PCI host driver?
>
> I came across this patch which seems to address a similar
> situation. It seems to have been dropped in v3 of the patchset
> with the explanation "drop MSI patch [for now], since it
> turns out we may not need it".
>
> [PATCH 2/3] pci: designware: add separate driver for the MSI part of the RC
> https://lore.kernel.org/linux-pci/20170821192907.8695-3-ard.biesheuvel@linaro.org/
>
> [PATCH v2 2/3] pci: designware: add separate driver for the MSI part of the RC
> https://lore.kernel.org/linux-pci/20170824184321.19432-3-ard.biesheuvel@linaro.org/
>
> [PATCH v3 0/2] pci: add support for firmware initialized designware RCs
> https://lore.kernel.org/linux-pci/20170828180437.2646-1-ard.biesheuvel@linaro.org/
>

For the platform in question, it turned out that we could use the MSI
block of the core's GIC interrupt controller directly, which is a much
better solution.

In general, turning MSIs into wired interrupts is not a great idea,
since the whole point of MSIs is that they are sufficiently similar to
other DMA transactions to ensure that the interrupt won't arrive
before the related memory transactions have completed.

If your interrupt controller does not have this capability, then yes,
you are stuck with this little widget that decodes an inbound write to
a magic address and turns it into a wired interrupt.

I'll leave it up to the Synopsys folks to comment on whether this
feature is generic enough to describe it like this, but if so, I think
it still makes sense to model it this way rather than fold it into the
RC driver and description.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
