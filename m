Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AB50108E88
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 14:10:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G28xYDSN2vMV+GNSbu3sJUfrv6tvQ2/MvJjFuuJSWpI=; b=bos6qHMrSMdtbP
	6Ce4qt+PFDWsWVZhK7mQnzuZAfwv4S2HY8gccAGa8h7Oci1AaolKVC8/e1QQTYUDhMwtc+o5ajWRz
	Pb3yCr0PRD18WLpv6oOfMBGefWhbEUpJZ6VTyIEhu0cEsoENGb4GINLLJbpahuFMhAKjOEYm+q+4t
	BfVwu2XJ+XFiF/atKp+A1Q32CfyYzaO37+PboGZqFneiG0xtGPjs5uOqBePPu8PUiEUy8PF/nBku7
	1/vo2rxPpUY8USJWEK67NDIr/pQExG5lMyiolepLnY0zZTIsW57V3Qp6zmJEajS8wuNiyEvC9QmHx
	PAIFkOrte3H46xxP2DRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZE8O-000159-TQ; Mon, 25 Nov 2019 13:10:32 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZE8F-00014G-FE
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 13:10:24 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id C272920C1C;
 Mon, 25 Nov 2019 14:10:21 +0100 (CET)
Received: from [192.168.108.51] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id ABD03206AB;
 Mon, 25 Nov 2019 14:10:21 +0100 (CET)
Subject: Re: [PATCH v1] clk: Add devm_clk_{prepare,enable,prepare_enable}
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <1d7a1b3b-e9bf-1d80-609d-a9c0c932b15a@free.fr>
 <34e32662-c909-9eb3-e561-3274ad0bf3cc@free.fr>
 <20191125125530.GP25745@shell.armlinux.org.uk>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <c7414301-da0d-cd4d-237d-34277f5ee1d2@free.fr>
Date: Mon, 25 Nov 2019 14:10:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191125125530.GP25745@shell.armlinux.org.uk>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Mon Nov 25 14:10:21 2019 +0100 (CET)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_051023_655841_8C418712 
X-CRM114-Status: GOOD (  13.57  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 25/11/2019 13:55, Russell King - ARM Linux admin wrote:

> It's also worth reading https://lore.kernel.org/patchwork/patch/755667/
> and considering whether you really are using the clk_prepare() and
> clk_enable() APIs correctly.  Wanting these devm functions suggests
> you aren't...

In that older thread, you wrote:

> If you take the view that trying to keep clocks disabled is a good way
> to save power, then you'd have the clk_prepare() or maybe
> clk_prepare_enable() in your run-time PM resume handler, or maybe even
> deeper in the driver... the original design goal of the clk API was to
> allow power saving and clock control.
> 
> With that in mind, getting and enabling the clock together in the
> probe function didn't make sense.
> 
> I feel that aspect has been somewhat lost, and people now regard much
> of the clk API as a bit of a probe-time nuisance.

In the few drivers I've written, I call clk_prepare_enable() at probe.

And since clk_prepare_enable() is the only non-devm function in probe,
I need either a remove function, or an explicit registration step.

You seem to be saying I'm using the clk API in the wrong way?

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
