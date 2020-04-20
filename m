Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4664D1B1289
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 19:05:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vkzfv8ikowBYZ//AGXHisDmBmW5ak0ijZ7NtCTzJJOo=; b=hEqK4JsFo2NrPF
	HTG4PEqKWayuFoUb7PwUKHWMdyQ7twWC+RHcgKjpvfKSukZzb7NskVA1TtuZpJIPo7TqEDV0VD/G9
	WLsUcCpm6nheorTDAvXenr7ZsxmJ2kKUfi0mGP2aBycDzzwhcLfK0Pvsf5pSrZ/hPey1IRTagU3xI
	oyMKAyZPe1itqk0OmbFdMQZr4JNVcrWFDBtWvAVQjyhBieSNYwsfKyG3NDkhB1MSEb7zQlHiIDc+I
	tdP8DsmgFYMSt1BuJdtKTSdMqb0BX55fPHNo9FqYf0cKIMutgV2BmXewfSPjNAZnW6KC1HBldvWlP
	XZaaHHP+6ReSiNDb2EIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQZre-0002ST-SW; Mon, 20 Apr 2020 17:05:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQZrW-0002RD-Oy
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 17:05:39 +0000
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com
 [209.85.219.46])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 57D8422240
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 17:05:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587402338;
 bh=Xc6XrmLSCIcb51KsMBWF6mTM27IZYmEb7/lQXrM3bu4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=q4T1kv7HdPS1P5AZLjTSWBTvlZzn4+euSJBG9XPEJqjOF4FmZ514Wr1grHZzGoua5
 6Z5ff+J6X2CSm24a61Qi0qetLCs0LuaKfQckhEVrAzSFRhtpFfxW3wmn5ON7BcecsZ
 6dSEhbpXs3HPlIIV5+JtrFntF009WAxyXwsB7qck=
Received: by mail-qv1-f46.google.com with SMTP id v18so5051323qvx.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 10:05:38 -0700 (PDT)
X-Gm-Message-State: AGi0PuafvSEUUGV6MkmSNVZrjdwm/3+dBMSzDR7CNtsAthFs3ku5jKkl
 JfAS6EZWM18xy8JrTbNw/7IqyyqyHaiusXWe3A==
X-Google-Smtp-Source: APiQypIDWoULtjcdPMhHTwUbjhB5PgHOYuP8qk/54NpEcp5kyQVmA7he6ResPS2EXZ7aD56hadG6ccO+LfE9ccPnqZk=
X-Received: by 2002:ad4:4ae3:: with SMTP id cp3mr14899713qvb.136.1587402337413; 
 Mon, 20 Apr 2020 10:05:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200419170810.5738-1-robh@kernel.org>
 <20200419170810.5738-13-robh@kernel.org>
 <CAK8P3a2+o=DQNJ8UTJzq1ugm12RTfyaUwYx=KW6Xx6uWE2zOOw@mail.gmail.com>
In-Reply-To: <CAK8P3a2+o=DQNJ8UTJzq1ugm12RTfyaUwYx=KW6Xx6uWE2zOOw@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 20 Apr 2020 12:05:24 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKDXq9g3UsmNe1JbQuySYW0LhHpE3yR+Qowx9u3-T7eNQ@mail.gmail.com>
Message-ID: <CAL_JsqKDXq9g3UsmNe1JbQuySYW0LhHpE3yR+Qowx9u3-T7eNQ@mail.gmail.com>
Subject: Re: [PATCH 12/17] mfd: vexpress-sysreg: Support building as a module
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_100538_831296_DB74EB7F 
X-CRM114-Status: GOOD (  12.57  )
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

On Mon, Apr 20, 2020 at 10:32 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Sun, Apr 19, 2020 at 7:08 PM Rob Herring <robh@kernel.org> wrote:
> >
> > Enable building the vexpress-sysreg driver as a module.
>
> > -
> > -       /* Need the sysreg early, before any other device... */
> > -       for_each_matching_node(node, vexpress_sysreg_match)
> > -               of_platform_device_create(node, NULL, NULL);
>
> Is this safe to remove? If yes, please mention it in the changelog.

Well, yes and no (I think). This was purely to instantiate the device
early before the default DT probing would do it (as all the parents
are 'simple-bus' the default would descend to these nodes). It's fine
after patch 14 for sure, but before that I think it is changing the
initcall/probe order. So I'll stick this between patch 15 and 16.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
