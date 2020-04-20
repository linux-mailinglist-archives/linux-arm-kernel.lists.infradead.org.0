Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 388091B1004
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 17:27:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ktIubW/71L/TGOInZ4YFP1EEoghrN9s2MDIlKHr//Ms=; b=Jt32n1g9q/grTw
	wCw/ptWtG1sLi5uKYbwF/yvfGYZ9a7JPsQo5QRmcbag21kkHh00N87WpGKDNOzi9HpGi5PGNNSJQr
	FCUosFzsitmVsIuXZUFiHWvfb/YqgVJ19NL3Qznx/LHeLUEmZbL306O37Vfq7aPFGXV32NijPpd6Q
	8BcH7VPEtAL15cjUhsnDnpWPSoI1TMboRV5xEvIzStewc0Uhi+N+5ip/fVwfHrEoyRSHC6YJXZ+ky
	ihXzDIfDZt+sXUWwaZRSSV7OP+dOtVt8GosoH8JMaEExCTpdVDxyHD3CAkCX4lKt8XUCgkXa9CtE6
	fqXXTZgNh75fo6A593Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQYKP-0004Dc-LX; Mon, 20 Apr 2020 15:27:21 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQYKC-0004Cj-N2
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 15:27:10 +0000
Received: from mail-qv1-f54.google.com ([209.85.219.54]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MuDHR-1j5IRj373F-00uZ1Z for <linux-arm-kernel@lists.infradead.org>; Mon,
 20 Apr 2020 17:27:06 +0200
Received: by mail-qv1-f54.google.com with SMTP id w18so4416892qvs.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 08:27:06 -0700 (PDT)
X-Gm-Message-State: AGi0PuYUjtPiZtvoZFt3rEiCIWtivc3YmAwr9It6OxRdD6TSZS1gRc/m
 6fBCexTgOS5lEyeepjcYbZUrOmNZIFBMXeP1zw0=
X-Google-Smtp-Source: APiQypJY4e69j8jIL+s5vF/j7gio8ULkDsO83cBqoR8Hjix4uZ83n4bPAVVPQRfqjcQFYTucLdXeHPEnt3VU5UPRKHo=
X-Received: by 2002:ad4:4d50:: with SMTP id m16mr14104121qvm.222.1587396425446; 
 Mon, 20 Apr 2020 08:27:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200419170810.5738-1-robh@kernel.org>
 <20200419170810.5738-8-robh@kernel.org>
In-Reply-To: <20200419170810.5738-8-robh@kernel.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 20 Apr 2020 17:26:49 +0200
X-Gmail-Original-Message-ID: <CAK8P3a18FP9NtJrsJdFZkMMM9ToFGiCJdLZRXkPuHSLUO+Zniw@mail.gmail.com>
Message-ID: <CAK8P3a18FP9NtJrsJdFZkMMM9ToFGiCJdLZRXkPuHSLUO+Zniw@mail.gmail.com>
Subject: Re: [PATCH 07/17] clk: vexpress-osc: Use the devres clock API variants
To: Rob Herring <robh@kernel.org>
X-Provags-ID: V03:K1:QnrXGPWKrYL0Epd2LRdN+II7Pn5dfv6qe9AXe8XQG8p1B3SksBy
 aCVxuLUEMpJVF8X77iw4U9QksWGMhKFb6ulXfqjnyN0Y485eJW9IOTYwRGthr4p9XkFLIAX
 nOKjv31DEUjvTlrD/Xq8sjx77OgM04/maY5rXTRebJ1peZSsM1t5WELKZrmVC4cNiWQ3lhZ
 km0PRQNfSPA5RVw/LVe8g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:vsj/4stga6w=:agzN0euTF+BUFW5H+hqk8j
 5SqEK/tB6iGNiNRl+5Imd1OF5dPDhsMt9RHSyE3l3hRDIfEaxgdIoMQOrWDyX3Ym4aXwB5Ek8
 kQxXEnloDQ/cnVPm29RT1TzjxrEzXnxQSqUcBzDExNVjbmZpWLZfNSashX9UiZaJZq7OJYTex
 nkT02VcJEQ+pATtJeSYCgmJfHQ1UvDr/HNI9HRhga4hzvJDNGJrnpzhFCNXnoV0J8grYrFnrB
 BMFeI/CO5cZidRsv3XMdJ3ENK2WKpOjPHvFM6LtC9K7rNudq61aZkMlujiSzQ7gzsQT0huz96
 lQDwSVIMu8ZMfopnaBG6BNr70JU2n2wKqwkn6JH3xq71/aXx9WgN9kAcAOpKfs3PQkYwWuwD1
 iPcEvWAkcV4F1DZGyw323GfHmQwPRapKXpcPn/i34KNFhMwQLLuUMGEl9GrB14khEhUk7is5u
 AJofd00+xRCrzg35Qp0kSUXYbY5rbj/8scPcyrZam6pYQtzDFPKR8J6ReWcdTjh8ujyDrdj9c
 922y0TDM0UY6XgcGid2aQRlyMFOdYwvLgBDrPFbTWhquROZZiDdFuGNai/DkVF3igS+fTUXmy
 4kpi5DiNPZe9/m1z/o6J3q8k2hRMBWz9tz3nEXk2BuE/V17qf5+LtRYYpfZ6wJVD9/pfl0s8h
 QAz4Xj76Dz3p+55gHuUEVtDWyy/5agqXOn0mW0c27vk9mrpRVj8zDrBnVPfDxofam35/hB1MY
 lrN+OuvNlvTz8n+SQ1askulLhZfOitbouokORuq31/HeWgbLgmtSIRw9e3OLFeOP3USQoHw+0
 2ScauIdvp6gJuAagcyVCuJAXnizXKFxwmeXmkvPNNGWik/e7TA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_082709_041862_5D05641E 
X-CRM114-Status: GOOD (  10.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

On Sun, Apr 19, 2020 at 7:08 PM Rob Herring <robh@kernel.org> wrote:
>
> In preparation to enable the vexpress-osc clock driver as a module,
> convert the driver to use the managed devres clock API variants. With
> this, a driver .remove() hook is not needed.
>
> Cc: Liviu Dudau <liviu.dudau@arm.com>
> Cc: Sudeep Holla <sudeep.holla@arm.com>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: linux-clk@vger.kernel.org
> Signed-off-by: Rob Herring <robh@kernel.org>

Acked-by: Arnd Bergmann <arnd@arndb.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
