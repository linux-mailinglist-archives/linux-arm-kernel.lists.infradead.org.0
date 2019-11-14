Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30B78FBFD9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 06:51:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PAJEAooaUpMNNq44bsRtFwcJTDteBjpcSCisAhpiMNQ=; b=knNHquE/gYMFI5
	PieHk7gyLt6Kvrn1v8+SzZ6wz6JQyKSYYNvHdNZq8aNpsqzNJKCx56eYP8JaMwpsp3J5d9v8VpRHF
	wQzve6RO969atftRYZUJFplB8MPF/K5gZzMRgAf39OonLus4APVOSLAizHcngJNquXJCQHrOlps5I
	ctuT2txAN6OPRCkRlRVGCSu7+wJ8WYK5uOxJScKTaOgH4waeNBfQ1pVQsSQ+azcueQQjwUIROabAa
	0jEhUqpAfFZ1K0G61meo16GaQfrBTUbcSkND1bzX3M/VRtnARIv6AI7o1HoxY0zsA2Azi5o+JFzSj
	gaKnKiZ5QgAZfAj/x1gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV825-0008IU-59; Thu, 14 Nov 2019 05:51:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV81w-0008Hz-6t
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 05:50:57 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C280F206DA;
 Thu, 14 Nov 2019 05:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573710654;
 bh=4A75EbHYfhyoJ0lhDbgLRn70lmtQcL0MNpem0+VHKtk=;
 h=In-Reply-To:References:Cc:To:From:Subject:Date:From;
 b=1n08guEVhPb8UK6CAVnBSbKcdr1bhzFAIYzVKmdZyTwg3cLFLt/y/po33Fzs3Z23j
 yU5A9GSYX5vYnxlWu6QZ9iRnSMh+HDgucz/akSpMXc4HslM/XwnjgTN5+GeY37Hl5d
 db1fLr78Pu6s7rG92jverAQAFSl9D1Y5Dz/cIgDU=
MIME-Version: 1.0
In-Reply-To: <20191114053404.GA8459@mani>
References: <20191026110253.18426-1-manivannan.sadhasivam@linaro.org>
 <20191113222116.E5E9B206E3@mail.kernel.org> <20191114053404.GA8459@mani>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v6 0/7] Add Bitmain BM1880 clock driver
User-Agent: alot/0.8.1
Date: Wed, 13 Nov 2019 21:50:53 -0800
Message-Id: <20191114055054.C280F206DA@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_215056_275410_92304FFC 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, darren.tsao@bitmain.com, robh+dt@kernel.org,
 haitao.suo@bitmain.com, fisher.cheng@bitmain.com, alec.lin@bitmain.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Manivannan Sadhasivam (2019-11-13 21:34:04)
> On Wed, Nov 13, 2019 at 02:21:15PM -0800, Stephen Boyd wrote:
> > Quoting Manivannan Sadhasivam (2019-10-26 04:02:46)
> > > Hello,
> > > 
> > > This patchset adds common clock driver for Bitmain BM1880 SoC clock
> > > controller. The clock controller consists of gate, divider, mux
> > > and pll clocks with different compositions. Hence, the driver uses
> > > composite clock structure in place where multiple clocking units are
> > > combined together.
> > > 
> > > This patchset also removes UART fixed clock and sources clocks from clock
> > > controller for Sophon Edge board where the driver has been validated.
> > > 
> > 
> > Are you waiting for review here? I see some kbuild reports so I assumed
> > you would fix and resend.
> 
> I'll fix it but I was expecting some review from you so that I can send the
> next revision incorporating all comments.
> 

Ok. I'm glad I broke the silence then.

Can you please resend without any dts changes? Those don't go through
clk tree. I think otherwise the patches look OK, although I was hoping
you could register clks by using the new way of specifying parents. Is
that possible?


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
