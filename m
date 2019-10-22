Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F9BBE088B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 18:18:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0SL3mz6SyDVQwfY1gSmBhndcwSuwMKU5Wcr+QwRVzSw=; b=aJ8Qivy8bzdTse
	4L9F36Z7FXiPCu/WymlchTiPjQxFoQTd4i2n0fVIuqABxy6AZGf1K9mm8jJkbBqvEvczYo1xbqwfv
	x6tRX37hH7CYw+IFEDP3nGXvxNps5SnXwj2tnmJWuMd/MUqzXPfk/gmVgk2jTfhjEr7UC37AXEwao
	QkhnWtVlq2MO5yCr97t6nAQO2eFKGg/qxWFq5R4JpJLZo0Kb+PgI5rBVEiaAAz7W57IcHLLZtguAN
	LjP1FjRIt8tIla4UfI54QauLcWjCLEVdbYURijc4Cl83rtd59rnmLI7insi17VcqQlzJQRb8qmVwA
	iLSzjWQL27yZFUbU9TPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMwr9-0003sb-Q7; Tue, 22 Oct 2019 16:17:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMwqy-0003s9-1B
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 16:17:49 +0000
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
 [209.85.160.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7F3F72084B
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 16:17:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571761067;
 bh=Gg/K4AWcAIZMUhsjSl+x6is8fvGE9nG7djqvjYD1rN0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=FYsfHdPH1H18SJQUEaduUxml14PNKkhavCDSweG6QCDb9TlXsb7Agl9nu02nSKkcM
 q7juO5StFsUg3HAtdqL2wqpuH49QpTNz0y9QxwvTdmqGKecqebUaLLlcaHzzyXmXXC
 X5MsEjaTR41kYPyXJ7i1YPagvmmiBzhdqxHKputQ=
Received: by mail-qt1-f182.google.com with SMTP id c21so27564291qtj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 09:17:47 -0700 (PDT)
X-Gm-Message-State: APjAAAVKaSWk3sovxLHUt7vFNaqKkTlCSo/F/OlAnjtPVwmEWw56JBv9
 pcLTfWVAPADAwK+rC8boFWCHRVH/TII2Rl2kAw==
X-Google-Smtp-Source: APXvYqwH0FQlbk2Qa04L/g3dKMJcwcPDR5Z3VqCtTDPrkq+GCUtoxYZ7KMCUXfKG7g9gqSoNyfVwPl9v1l7yqdmzqVU=
X-Received: by 2002:ac8:4508:: with SMTP id q8mr4292602qtn.110.1571761066718; 
 Tue, 22 Oct 2019 09:17:46 -0700 (PDT)
MIME-Version: 1.0
References: <b47ec7088aa4b07458519ab151de92df552a9302.1570101510.git.amit.kucheria@linaro.org>
 <20191003115154.6f2jgj3dnqsved2y@gilmour>
 <CAHLCerNoLyQ-e70=1VMPO_J_amA+-2vtHwfoUabo4dhUWj-H0A@mail.gmail.com>
 <20191007100535.6gp6b3h6ueyeln3b@gilmour>
 <CAP245DXT=HL+m-LqoC25EBnOaPmF1pUW0fEZp6EZB-MdgOJoWw@mail.gmail.com>
 <20191007104835.v6iqpoolqtajryik@gilmour>
In-Reply-To: <20191007104835.v6iqpoolqtajryik@gilmour>
From: Rob Herring <robh@kernel.org>
Date: Tue, 22 Oct 2019 11:17:35 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLVkikYVpjs1m+QqsOK2CfSm9+LfZWXbWEoszeSt3RGaA@mail.gmail.com>
Message-ID: <CAL_JsqLVkikYVpjs1m+QqsOK2CfSm9+LfZWXbWEoszeSt3RGaA@mail.gmail.com>
Subject: Re: [PATCH] media: dt-bindings: media: Fixup Allwinner A10 CSI binding
To: Maxime Ripard <mripard@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_091748_120329_3D48AF49 
X-CRM114-Status: GOOD (  18.99  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Amit Kucheria <amit.kucheria@linaro.org>, Chen-Yu Tsai <wens@csie.org>,
 lakml <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 7, 2019 at 5:48 AM Maxime Ripard <mripard@kernel.org> wrote:
>
> On Mon, Oct 07, 2019 at 03:45:29PM +0530, Amit Kucheria wrote:
> > On Mon, Oct 7, 2019 at 3:35 PM Maxime Ripard <mripard@kernel.org> wrote:
> > >
> > > On Sat, Oct 05, 2019 at 04:15:57PM +0530, Amit Kucheria wrote:
> > > > On Thu, Oct 3, 2019 at 5:22 PM Maxime Ripard <mripard@kernel.org> wrote:
> > > > >
> > > > > Hi,
> > > > >
> > > > > On Thu, Oct 03, 2019 at 04:52:24PM +0530, Amit Kucheria wrote:
> > > > > > This new binding fails dt_binding_check due to a typo. Fix it up.
> > > > > >
> > > > > > linux.git/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml: $id: path/filename 'arm/allwinner,sun4i-a10-csi.yaml' doesn't match actual filename
> > > > > > linux.git/Documentation/devicetree/bindings/Makefile:12: recipe for target 'Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.example.dts' failed
> > > > > > make[2]: *** [Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.example.dts] Error 1
> > > > > > make[2]: *** Waiting for unfinished jobs....
> > > > > > linux.git/Makefile:1284: recipe for target 'dt_binding_check' failed
> > > > > > make[1]: *** [dt_binding_check] Error 2
> > > > > >
> > > > > > Fixes: c5e8f4ccd7750 ("media: dt-bindings: media: Add Allwinner A10 CSI binding")
> > > > > > Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
> > > > >
> > > > > Thanks for your patch.
> > > > >
> > > > > It has already been submitted though:
> > > > > https://lore.kernel.org/linux-arm-kernel/1568808060-17516-1-git-send-email-pragnesh.patel@sifive.com/
> > > > >
> > > > > I'm not sure why it hasn't been applied yet though :/
> > > >
> > > > Perhaps a Fixes tag will allow more attention to it?
> > >
> > > I've added a fixes tag and merged it through the sunxi tree.
> > >
> > > Sorry for the time it took, and thanks for sending that fix!
> >
> > Will it get merged for -rc2?
>
> -rc2 was released yesterday, so we're a bit late for that, but it's
>  going to be in next tomorrow.

Is this going to Linus anytime soon? It is affecting anyone submitting
bindings against current -rc's.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
