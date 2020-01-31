Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EFEF14E7B0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 04:51:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=58FDg5X7rWJrJh1iMNtEDzjxXK5/oxBvsfYFsB6onpQ=; b=cJg2KLs3g0nSwV
	ShBVBVpp2LsaxdfLqbiOWP+RIza2LBS1qNAEhLnqm/QZO8blG9vjxOsXxTLAk/GcvwRI8Ulb6Ml0G
	19S+LS7GRlEscNefULAeQVLxhTo79J57eZl5TT1/JAexORW8qoLcusCRdhecGzuzI3vkBylsAA3mN
	uqgvU2OKwv0IyZc1NH8l+ehOLJfgf5kiWs/Nra+1ON1HyY8NIFzVzk2VFTN5N5cteEu50c+ayD9/J
	I7kr42/VGG30q7ibp16v/YrHgVj7Rbq8tmV6Qguy0rBUPpp2EihpNsWpxC1qkJ6XL1CNcf1KmdCRk
	pomNvsTjg7WpnXedE7iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixNKj-0000nQ-F9; Fri, 31 Jan 2020 03:51:05 +0000
Received: from mail-qv1-xf42.google.com ([2607:f8b0:4864:20::f42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixNKZ-0000mn-5x
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 03:50:56 +0000
Received: by mail-qv1-xf42.google.com with SMTP id dp13so2642544qvb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Jan 2020 19:50:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0qN3Jkm0gYZlUyqGL/F8dUFk1CCAdKyLSK3r0nvN4n8=;
 b=GYYbWnUtwQfO5NhXtoQtIOdpWRGTqanmx2NMdisJ1Z2OvB0MzWym2ShOC6myDnEJE1
 dvf4wf71MxNTXwrOVoFu1AtrlBGXp59tArsHlmyrgjHgcrMEaEpzBSibJd7c5j+YPxik
 EFCoStio0vZ7iijEfs0lqybwFeQfRBLKKRTwg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0qN3Jkm0gYZlUyqGL/F8dUFk1CCAdKyLSK3r0nvN4n8=;
 b=eOjLSv8ACxPCc8owbIGfInm1hUQllix/EaRHp73c1ErLQp/qDXkEx4BuAbPtj2vFyY
 H2jKe0icO5JtPZDSBfpB4I/Fd1lyC7ELOW35Q3ZMOMx+eRfweDMEGY/ICrYfnmObU7Ed
 D9jL+E1b+Yi6Pd3NSS1m7fRSPyhG2xmZRhyfEcpesGf1ivjVf+bSHcuxKrCV3DXgFmxT
 hGV/8kq2lVDBYuEszkyj/a/iLTfJYZF3xZKOYNzHh8Abd/44YPZM1JA7ILrQkC4wMHQO
 dbJeJB3eF1pMPiNx0pUzbM+Qa/mGGCFaF3niCZYfhKNwecMeKngtHgbSspoEKjprmxZ2
 nrVA==
X-Gm-Message-State: APjAAAUu0JvNZWAxfcIxEmgF0SfIBXfyg+hGgXQPC/p9XJ6wgzj4+4Ed
 rhsO4WJlsGermXgI1hBjpUZDQMM6mXszqdiugf4FLQ==
X-Google-Smtp-Source: APXvYqyo59audwyvjFpWO/NH0xjByce/dQsgM3qWBJcPATVAQYtk57nF5V6qfy6+FT/0tlxy9i+ozRkhjKpBUXydl/8=
X-Received: by 2002:a0c:ed32:: with SMTP id u18mr8534021qvq.2.1580442653512;
 Thu, 30 Jan 2020 19:50:53 -0800 (PST)
MIME-Version: 1.0
References: <20200121103413.1337-1-geert+renesas@glider.be>
 <20200121103722.1781-1-geert+renesas@glider.be>
 <20200121103722.1781-4-geert+renesas@glider.be>
 <78f934a3-ec7a-479e-9f63-4df7c4428ae5@www.fastmail.com>
In-Reply-To: <78f934a3-ec7a-479e-9f63-4df7c4428ae5@www.fastmail.com>
From: Joel Stanley <joel@jms.id.au>
Date: Fri, 31 Jan 2020 03:50:42 +0000
Message-ID: <CACPK8XfUG08CmxK7_V=PGp1SBO2UE6CSyKPSi9Hiwz2td4Lq1w@mail.gmail.com>
Subject: Re: [PATCH 04/20] ARM: aspeed: Drop unneeded select of HAVE_SMP
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_195055_223083_5D511092 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [joel.stan[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann <arnd@arndb.de>,
 Kevin Hilman <khilman@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Olof Johansson <olof@lixom.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 28 Jan 2020 at 01:05, Andrew Jeffery <andrew@aj.id.au> wrote:
>
>
>
> On Tue, 21 Jan 2020, at 21:07, Geert Uytterhoeven wrote:
> > Support for the 6th generation Aspeed SoCs depends on ARCH_MULTI_V7.
> > As the latter selects HAVE_SMP, there is no need for MACH_ASPEED_G6 to
> > select HAVE_SMP.
> >
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > Cc: Joel Stanley <joel@jms.id.au>
> > Cc: Andrew Jeffery <andrew@aj.id.au>
>
> Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

Acked-by: Joel Stanley <joel@jms.id.au>

Geert, did you intend for these to be picked up by Arnd and Olof?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
