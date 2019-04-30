Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 595EA100F9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 22:37:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hyoq285S+3cTiqYDU1JmPxqCWU4s7xjnYPtgaP2itLQ=; b=btcwJJzd1H5RC3
	5AiAs2Q23rk45JapmGnaTaycqaffbFR1QqOaqAoQ2gaqF8blovFB7b81XCdquODPXUIZV7s3ZZyJs
	Qju+gy5OY8gE9046/2kJylBNMcXAywu2nRcq06oYSLT75wRdtM+9EKDMntJnmoDf/GboR3LtOZvlZ
	YCoLkzu0lAPPVUda2GAaw0UL2MTKUZ8wijN0l9fETQnFlxoBoTt+RX0RN0/xKZ8QAEGwgeW+J7mSy
	S1en6mLUMd2WmK4sdjKGb2IzsDUkh8nNzGE+FYfj0AC80+ZGJQoNOqbehdNnzLlgBBogWatBGfDTj
	8z4LFzyqL7RlBtiBwBTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLZVZ-0006hb-FB; Tue, 30 Apr 2019 20:37:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLZVS-0006h8-1Z
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 20:37:39 +0000
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com
 [209.85.160.178])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4AF4A2080C
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Apr 2019 20:37:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556656657;
 bh=ZEkaWl3bqlpN5zzBHSyjdUuA6td/ImB+VcUu5ceXrrg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=D0l93wFAe+/YN05cfhvTTgYM2RMcBCdm1owCHx5HUWwwPu3jqbGwSdgpwwQg/sRS2
 bigpXK1w2fl6yGiGYF6RN3GzyJhfpfNjJVx2I32Fz06iXjnzMgKLm6V/Og61HScmDf
 g7Za+xaTyAU2Tcrxm1vsdglqnMepM1F9Las23Yqs=
Received: by mail-qt1-f178.google.com with SMTP id y49so12219054qta.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Apr 2019 13:37:37 -0700 (PDT)
X-Gm-Message-State: APjAAAUh1TqBKuJ82+rnY4qc3S4RjnoV/eukD1oRRY6abKyZHGfLgAa5
 W223KwbrfWtr3Uuopxz3XvvZebhT/uFVsRn4FA==
X-Google-Smtp-Source: APXvYqwhJElVj2x60tjUvvUMfvJRbF5otvzYyJ38emJ6ljN0SKbxGhiYJUKEaTnMuzrXbrepMqwwQHnR0axvr0viC3c=
X-Received: by 2002:ac8:610f:: with SMTP id a15mr47505444qtm.257.1556656656572; 
 Tue, 30 Apr 2019 13:37:36 -0700 (PDT)
MIME-Version: 1.0
References: <1555426699-5340-1-git-send-email-fabien.dessenne@st.com>
 <1555426699-5340-3-git-send-email-fabien.dessenne@st.com>
 <20190430004051.GA7391@bogus>
 <ff424530-6e7b-cec9-910f-1897d60de2a1@st.com>
In-Reply-To: <ff424530-6e7b-cec9-910f-1897d60de2a1@st.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 30 Apr 2019 15:37:25 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJjMy43Juhse_PwRqjwjG2swkiJsQgagZWAb53an9B-6Q@mail.gmail.com>
Message-ID: <CAL_JsqJjMy43Juhse_PwRqjwjG2swkiJsQgagZWAb53an9B-6Q@mail.gmail.com>
Subject: Re: [PATCH v2 2/8] dt-bindings: remoteproc: add bindings for stm32
 remote processor driver
To: Fabien DESSENNE <fabien.dessenne@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_133738_123176_BC69C4F4 
X-CRM114-Status: GOOD (  26.97  )
X-Spam-Score: -5.3 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ohad Ben-Cohen <ohad@wizery.com>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 Loic PALLARDY <loic.pallardy@st.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Arnaud POULIQUEN <arnaud.pouliquen@st.com>,
 "linux-remoteproc@vger.kernel.org" <linux-remoteproc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Ludovic BARRE <ludovic.barre@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Benjamin GAIGNARD <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 9:15 AM Fabien DESSENNE <fabien.dessenne@st.com> wrote:
>
> Hi Rob,
>
>
> On 30/04/2019 2:40 AM, Rob Herring wrote:
> > On Tue, Apr 16, 2019 at 04:58:13PM +0200, Fabien Dessenne wrote:
> >> Add the device tree bindings document for the stm32 remoteproc devices.
> >>
> >> Signed-off-by: Fabien Dessenne <fabien.dessenne@st.com>
> >> ---
> >>   .../devicetree/bindings/remoteproc/stm32-rproc.txt | 64 ++++++++++++++++++++++
> >>   1 file changed, 64 insertions(+)
> >>   create mode 100644 Documentation/devicetree/bindings/remoteproc/stm32-rproc.txt
> >>
> >> diff --git a/Documentation/devicetree/bindings/remoteproc/stm32-rproc.txt b/Documentation/devicetree/bindings/remoteproc/stm32-rproc.txt
> >> new file mode 100644
> >> index 0000000..430132c
> >> --- /dev/null
> >> +++ b/Documentation/devicetree/bindings/remoteproc/stm32-rproc.txt
> >> @@ -0,0 +1,64 @@
> >> +STMicroelectronics STM32 Remoteproc
> >> +-----------------------------------
> >> +This document defines the binding for the remoteproc component that loads and
> >> +boots firmwares on the ST32MP family chipset.
> >> +
> >> +Required properties:
> >> +- compatible:       Must be "st,stm32mp1-m4"
> >> +- reg:              Address ranges of the remote processor dedicated memories.
> >> +            The parent node should provide an appropriate ranges property
> >> +            for properly translating these into bus addresses.
> > dma-ranges, but that's independent of 'reg'.
> >
> > It needs to list how many reg regions and what they are.
>
> The "reg" property needs to be removed since it is not used by the
> driver : the "memory-region" property (defined below) provides with all
> the needed memory information.

I'm not sure that's the right direction. reserved-memory nodes
generally should be in the range of system memory (i.e. what /memory
nodes define).

> Unfortunately, when I remove this "reg" property from the DeviceTree, I
> have this warning when building (W=123) the DTB:
>
>   "Warning (avoid_unnecessary_addr_size): /mlahb: unnecessary
> #address-cells/#size-cells without "ranges" or child "reg" property"
>
> IMHO, there is something wrong in the dtc script which seems to ignore
> the "dma-ranges" property that needs to have #address-cells/#size-cells
> defined. Just like "ranges".

Perhaps.

>
> The quick patch below (add check for "dma-ranges" ) in
> scripts/dtc/checks.c solves this issue.
>
> static void check_avoid_unnecessary_addr_size(struct check *c, struct
> dt_info *dti,
>                            struct node *node)
> {
> ...
>      if (get_property(node, "ranges") || get_property(node,
> "dma-ranges") || !node->children)
>          return;
> ...
>
> Can you confirm that I can remove the "reg" property and ignore the warning?

That should cause another warning because the 'simple-bus' checks
expect to have nodes with addresses as 'simple-bus' means MMIO bus.
That may have been the check which was broken for a while and I just
fixed not too long ago.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
