Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AFF71B5190
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 02:55:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RkikpoxOqtvOP+r0A+qmG2PIbm/z94VDy59oOIQoVm4=; b=EyMkXgcoqtZagb
	F8S9adhpYQFstUqrv2VZNjWHnID3S3z44PEtLM6im/nRlKkWAmOAvBiDaQ8STulpBCMaSIQt5r1uc
	IxLVHu46dhczevEIb9xfmtiKe5QMNtvi0OEc2hKHt03dXdDhn+Q7NEhwBFNYI3wKqcs+uAq/f9bGF
	betzwRt7J+PXRTkABO9AxFrSasD3XmXqeDGaeCTkD76ojMFCaWvqRVctElpaZlzKb5TeaJvfZQSKf
	bcaaDqm6JjyGZv8xIDqF6duDdsSWyQ78i/1kgKTsuu2yHhBqp1C49WXNgal0WX6AYtDT7lomJm3Sg
	tCeSHbis27sOIvBx9dsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRQ8m-0004Bd-88; Thu, 23 Apr 2020 00:54:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRQ8P-00042d-IS
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 00:54:39 +0000
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
 [209.85.160.171])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2D8A620857
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Apr 2020 00:54:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587603269;
 bh=EdeAQ2EdBIQEUfUEWY+K0rWxiAbfj3atcOU3hxgWKyQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=U6eIpZ4dnkMiG9rnK5P7Ne5VcVRJzLtgh6wGjJ421bhNj3OJyq6TyzpmwccXDczX8
 GZm6rDL3BmglFyz3Ru8xJp4K1LbRYEpPLDdT4rYXMFF1MalxjWggEkrG4/otS1kk9V
 6Yu2Mt/XZpKjosxzTyls8cNSfzU74NEVM4xcS3Rc=
Received: by mail-qt1-f171.google.com with SMTP id z90so3494449qtd.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Apr 2020 17:54:29 -0700 (PDT)
X-Gm-Message-State: AGi0PuZ/ZX3pxBrWHVjNEKF1WCpqXU0ufEF9YbztJprlvqlxqohdMpVQ
 dv7Dd/zyFrgi994ZxSUUt4AR3Ahsb4n4A+/TvQ==
X-Google-Smtp-Source: APiQypLM57Lkh8iAgNUZnacihwoOR74d09qQ7Q5sY/K/hAUmznUbIS0nhBAnRSBkMJUqszGyIlIZBbd7gRjPBC5mzIc=
X-Received: by 2002:ac8:47cb:: with SMTP id d11mr496433qtr.136.1587603268256; 
 Wed, 22 Apr 2020 17:54:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200419170810.5738-1-robh@kernel.org>
 <20200419170810.5738-16-robh@kernel.org>
 <158754906803.132238.5380277174069330915@swboyd.mtv.corp.google.com>
In-Reply-To: <158754906803.132238.5380277174069330915@swboyd.mtv.corp.google.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 22 Apr 2020 19:54:16 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJb7x+gcsxstvdRkUD75=cJ7DsASmhCJKdoQJ62rBHvXw@mail.gmail.com>
Message-ID: <CAL_JsqJb7x+gcsxstvdRkUD75=cJ7DsASmhCJKdoQJ62rBHvXw@mail.gmail.com>
Subject: Re: [PATCH 15/17] vexpress: Move site master init to vexpress-config
 bus
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_175433_657359_2758B07F 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>, Liviu Dudau <liviu.dudau@arm.com>,
 Sebastian Reichel <sre@kernel.org>, Will Deacon <will@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 Lee Jones <lee.jones@linaro.org>, linux-clk <linux-clk@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 22, 2020 at 4:51 AM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Is the subject supposed to say 'set master' vs. 'site master'?

Humm, maybe 'master site' instead.

>
> Quoting Rob Herring (2020-04-19 10:08:08)
> > There's only a single caller of vexpress_config_set_master() from
> > vexpress-sysreg.c. Let's just make the registers needed available to
> > vexpress-config and move all the code there. The registers needed aren't
> > used anywhere else either. With this, we can get rid of the private API
> > between these 2 drivers.
> >
> > Cc: Liviu Dudau <liviu.dudau@arm.com>
> > Cc: Sudeep Holla <sudeep.holla@arm.com>
> > Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > Cc: Linus Walleij <linus.walleij@linaro.org>
> > Cc: Lee Jones <lee.jones@linaro.org>
> > Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Signed-off-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
