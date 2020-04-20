Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 165381B12DE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 19:23:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nlQ3wlor36N0I8Xrq2+aj+yKEbg1fWLVi4ZieoQeHqY=; b=Ev8y5TBOmlVBVM
	1g+tLltC+hufuqbXKL3SGqjiBkdBM+Cjly6qhunmAzyrHvtDFTnqeBNmDaQ7X+Z8teWFT51H6mz4n
	zacOoID9OoeRJMq5YuVD/WSaddIF66EoN+wEskxBDzWApegsNr/sobVi+5IbKz5I9xQsuPfq0p2/U
	JWTAlbUmDRXPc+u47TDdKCSoNRncNvfipOtxoLQT28okZIbGYyC3O9KyaQd45jg6ahtXLr9GkIq5k
	XuymrjHRCvgNKr7Cx7awJMgB5dwqLVORmT+k743xxatXJbVo3JDSzNDgZCVtrZetzVviKnZpsC4cY
	0X6Van0Pp9WCww4PK6Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQa8x-0006li-Sf; Mon, 20 Apr 2020 17:23:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQa8m-0006kl-A6
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 17:23:29 +0000
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
 [209.85.222.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D902D22202
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 17:23:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587403408;
 bh=DI88VDkhxPMO6/QoP8n3nDMfyH/KSc6tfIYnzyvZA3s=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=hyWvtLRgiePoSeeex+Bb0oNGDEr/+GWFjj6GUYtr7BFD2UVirZuigzXyDW9SFaXBx
 l5vnIZk27By5VsPIhtFfCHr3gk9BPg3TiHit35oCv0L60a4AMN7BSgJDjkmFYloNpd
 Y2Da5T+cyrqfTEbf9N3O4dmccS5T+3OGdBm5yuWA=
Received: by mail-qk1-f173.google.com with SMTP id j4so11461520qkc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 10:23:27 -0700 (PDT)
X-Gm-Message-State: AGi0Publjh9uTCu4SgkaseDwDc7nmir7b884SdbZGtfBa/RZa9sLTPGD
 r1zPHaocY54v42zfJvzuhhGQ3h97v4RLcR9LhQ==
X-Google-Smtp-Source: APiQypKHdn+KVCIskUEoQxaMBsi+u+k4KDRvBbLImg2XBjqZjn3n0++TU7x+18KzMjSkNRtotrBw2UAfk+eYU9mXBpw=
X-Received: by 2002:a37:61cd:: with SMTP id
 v196mr17255124qkb.393.1587403406913; 
 Mon, 20 Apr 2020 10:23:26 -0700 (PDT)
MIME-Version: 1.0
References: <20200419170810.5738-1-robh@kernel.org>
 <20200419170810.5738-5-robh@kernel.org>
 <CAK8P3a2BZLti5pLrru8s-45Yz54SA0JZbyjvYEstSDJZfnzEmA@mail.gmail.com>
In-Reply-To: <CAK8P3a2BZLti5pLrru8s-45Yz54SA0JZbyjvYEstSDJZfnzEmA@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 20 Apr 2020 12:23:13 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+Hk_WuK=c+eHi1Kz3EPzm=zOw2ctETXEySPH1WgAGjug@mail.gmail.com>
Message-ID: <CAL_Jsq+Hk_WuK=c+eHi1Kz3EPzm=zOw2ctETXEySPH1WgAGjug@mail.gmail.com>
Subject: Re: [PATCH 04/17] power/reset: vexpress: Support building as a module
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_102328_369879_42F0723F 
X-CRM114-Status: GOOD (  16.12  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Will Deacon <will@kernel.org>, Linux PM list <linux-pm@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Liviu Dudau <liviu.dudau@arm.com>, Sebastian Reichel <sre@kernel.org>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 20, 2020 at 10:24 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Sun, Apr 19, 2020 at 7:08 PM Rob Herring <robh@kernel.org> wrote:
> >
> > Enable building the VExpress power-off/reset driver as a module.
>
> Your change allows loading and unloading the driver, but actually
> unloading is a bug with the current implementation, as there is no
> 'release' handler to undo the _vexpress_register_restart_handler()
> function.

And also to save and restore pm_power_off...

> It should not be hard to add a release handler, or you could just
> mark the function as non-unloadable by only having a module_init()
> but no module_exit() function.
>
> I suppose if you do the latter, there should also be a suppress_bind_attrs
> flag in the device_driver. This is a preexisting bug.

I may just drop this patch. I wrote it and then realized I don't need
it as PSCI can be used instead.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
