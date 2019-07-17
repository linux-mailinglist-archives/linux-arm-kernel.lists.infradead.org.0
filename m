Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 121BF6B539
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 05:58:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xq8xKCCRv4wfg7irZ9m5xojK9Fr5//fOuxWJehw3RwY=; b=kZfYJRgXTftbtZ
	QWipHs3mRw7KZPOOwcxdZG79YpBeayqp4Ms/glr/KbeV24gXP+jsyQB+vQjUVl/LkH08uxJ098Fl7
	q8yRimdAYEXbbHxenvx39MPUdSLXnxTQlaA9ECytRQmAScIM/7OaQvRsz++0c8TlB9cwyTz+4s2XT
	5T+ZgE2FKcTKhCr23xx0pLj5LI1kfqJPdLXttXLMO7bJ9I/8oxz+3uIDhpoxzaeEes8TmURwjF1O2
	TKax0m4sbH60ZHYghGmYeN0qTIXoUMZUrSsxHyyMcCF6hKDxPn++x44oAk/HrkXP4cbTFq8RYY7jP
	U6XKO74CsHrsWULVm/UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnb5L-0006uS-Ro; Wed, 17 Jul 2019 03:58:31 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnb57-0006td-Ku
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 03:58:19 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id CFD5721F1;
 Tue, 16 Jul 2019 23:58:16 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Tue, 16 Jul 2019 23:58:16 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=7Kdhi4X59fRaX9BlrrSVCJVURd/WfMF
 FykQ50ZgZyNs=; b=DhsuuKExeeTQFKi0vfZAjumQFLgV8B2f7odFp/bnfPE03M/
 6ZtJRE4TYCdrPEztEzQtcrBwfWixCOJO/20E3kEhYzg/xIeMFnwI93X98zqH6DRm
 pbWVkUK85zkzLAR2lL0inZ0Q1WcODlhrfvPEPJzsa4UUNLwfBqHSu40se5KFD5qv
 vkB0DYhuprc8RwKmTTUFz7eyM4FKBwcrZS2uBo2L6jFAAmEtNIyj26Yz0hmHuM2S
 qfCdKPVLAB7hu2s9B1guhDP8ZCBlQeCDy0KXPw5L9zQFBEOPf+//F6qmWws69AEF
 eo17oubYBHvjuX+H71vhhx/xF9iUYvnVnAS8Xrw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=7Kdhi4
 X59fRaX9BlrrSVCJVURd/WfMFFykQ50ZgZyNs=; b=HTsZBQ5Q15RDtChXdnGRqb
 cndQnVjFvbB6k4zmY0r6J/Y/EKh2FkdZ30MEkNTd/rNdnd1HsTYPBj8U+Ux+Kyl2
 Dt2rLSwbVBMntmHyi3iKknjIN0wM9LPC+2M04qEdBihkS/v1QjP5/JKFz+5Ah3uf
 YqQLFu/EvyCIWKmYzhCGttLEDBiI/UtxecX6axrKdcPybuXf+XDA80YfxBLAkS/v
 9tT7xX/q3N1Upmil2XLO9ahkbbO+PIg4SPA4zQ5RzEzlnjdB9Ob9i7CUCrzstCYv
 165p0YgmCNzVPZg4wNedNnnWZrwYEKHWZiRAe2J5hJDhnSOFFoPST0eUn5DL9r6A
 ==
X-ME-Sender: <xms:1ZwuXdaosgMfe3B7l1BaktbXWTBMtpPl-ra3tud9soZqbx5xJPySDA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddriedugdejkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucffohhmrg
 hinhepuggvvhhitggvthhrvggvrdhorhhgpdifrhhithhinhhgqdhstghhvghmrgdrmhgu
 necurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuve
 hluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:1ZwuXYocL_GqGv4FsoyjivAOobFVhK3V4Nq1xrys8zftqMlS8744IA>
 <xmx:1ZwuXa8PlsEroWBqpGp2zqbpWQxC618TdllQoYPKltAu4PB02qcfPA>
 <xmx:1ZwuXf_wToUY0t73T0YeuGwKfGKsik7sYkW8ojuCnVuA6xA4E_y91Q>
 <xmx:2JwuXfl34humbqJzGQtb2LlJj8wND-q3vC7QOD0iCyO3Y4nUcPGWgw>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 5AAA3E00CC; Tue, 16 Jul 2019 23:58:13 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-731-g19d3b16-fmstable-20190627v1
Mime-Version: 1.0
Message-Id: <e7b472a8-73ae-4f39-a3e4-9e2d9dbcd01e@www.fastmail.com>
In-Reply-To: <CAL_JsqKMo_uv4Ur-D4NaUXk94hGJeRt5fg+0998dDjJCTgumGg@mail.gmail.com>
References: <20190712033214.24713-1-andrew@aj.id.au>
 <20190712033214.24713-2-andrew@aj.id.au>
 <CAL_JsqLkOtsAxj9NvNB=EEkH00k-dtNedNY042uuntSmcjhDhA@mail.gmail.com>
 <3fe55ea9-b949-48a0-9eab-90ad3bc1ee2a@www.fastmail.com>
 <CAL_JsqKMo_uv4Ur-D4NaUXk94hGJeRt5fg+0998dDjJCTgumGg@mail.gmail.com>
Date: Wed, 17 Jul 2019 13:27:59 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Rob Herring" <robh+dt@kernel.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: mmc: Document Aspeed SD controller
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_205817_827880_ED8386C0 
X-CRM114-Status: GOOD (  25.59  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.229 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>, linux-aspeed@lists.ozlabs.org,
 Ryan Chen <ryanchen.aspeed@gmail.com>, linux-mmc <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Joel Stanley <joel@jms.id.au>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Wed, 17 Jul 2019, at 00:27, Rob Herring wrote:
> On Mon, Jul 15, 2019 at 6:36 PM Andrew Jeffery <andrew@aj.id.au> wrote:
> >
> >
> >
> > On Tue, 16 Jul 2019, at 07:47, Rob Herring wrote:
> > > On Thu, Jul 11, 2019 at 9:32 PM Andrew Jeffery <andrew@aj.id.au> wrote:
> > > >
> > > > The ASPEED SD/SDIO/eMMC controller exposes two slots implementing the
> > > > SDIO Host Specification v2.00, with 1 or 4 bit data buses, or an 8 bit
> > > > data bus if only a single slot is enabled.
> > > >
> > > > Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> > > > ---
> > > > In v2:
> > > >
> > > > * Rename to aspeed,sdhci.yaml
> > > > * Rename sd-controller compatible
> > > > * Add `maxItems: 1` for reg properties
> > > > * Move sdhci subnode description to patternProperties
> > > > * Drop sdhci compatible requirement
> > > > * #address-cells and #size-cells are required
> > > > * Prevent additional properties
> > > > * Implement explicit ranges in example
> > > > * Remove slot property
> > > >
> > > >  .../devicetree/bindings/mmc/aspeed,sdhci.yaml | 90 +++++++++++++++++++
> > > >  1 file changed, 90 insertions(+)
> > > >  create mode 100644 Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml b/Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml
> > > > new file mode 100644
> > > > index 000000000000..67a691c3348c
> > > > --- /dev/null
> > > > +++ b/Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml
> > > > @@ -0,0 +1,90 @@
> > > > +# SPDX-License-Identifier: GPL-2.0-or-later
> > > > +%YAML 1.2
> > > > +---
> > > > +$id: http://devicetree.org/schemas/mmc/aspeed,sdhci.yaml#
> > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > +
> > > > +title: ASPEED SD/SDIO/eMMC Controller
> > > > +
> > > > +maintainers:
> > > > +  - Andrew Jeffery <andrew@aj.id.au>
> > > > +  - Ryan Chen <ryanchen.aspeed@gmail.com>
> > > > +
> > > > +description: |+
> > > > +  The ASPEED SD/SDIO/eMMC controller exposes two slots implementing the SDIO
> > > > +  Host Specification v2.00, with 1 or 4 bit data buses, or an 8 bit data bus if
> > > > +  only a single slot is enabled.
> > > > +
> > > > +  The two slots are supported by a common configuration area. As the SDHCIs for
> > > > +  the slots are dependent on the common configuration area, they are described
> > > > +  as child nodes.
> > > > +
> > > > +properties:
> > > > +  compatible:
> > > > +    enum: [ aspeed,ast2400-sd-controller, aspeed,ast2500-sd-controller ]
> > >
> > > This is actually a list of 4 strings. Please reformat to 1 per line.
> >
> > On reflection that's obvious, but also a somewhat subtle interaction with the
> > preference for no quotes (the obvious caveat being "except where required").
> 
> It wasn't something I'd run into before. I'm working on a check, but
> unfortunately we can only check for quotes not needed and can't check
> for missing quotes.
> 
> > Thanks for pointing it out.
> >
> > I have been running `make dt_binding_check` and `make dtbs_check` over
> > these, looks like I need to up my game a bit though. Do you do additional things
> > in your workflow?
> 
> That should have thrown the warnings. If you aren't seeing those, do
> you have dtschema package installed (see
> Documentation/devicetree/writing-schema.md)?

I do have it installed, but as mentioned previously there's a fair few
warnings emitted currently by the Aspeed devicetrees, so it might have
got lost in the noise. I've started to clean that up, though probably need
some direction there too.

Separately I'm currently trying to track down an issue where I get errors
on the Aspeed dts cpu nodes about failing to match the riscv CPU
compatibles, it seems dt-validate isn't finding the ARM CPU compatible
strings. It feels more annoying to track down that I'd like.

> Or it could be erroring
> out on something else first. There's a few breakages that I'm trying
> to fix.

Okay. I'll keep an eye on the dt-schema repo.

Cheers,

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
