Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEF89EA85D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 01:50:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zYGKmIdBW3XWY58YWsxkaBw/2+ZGAgHC+73nCe5q+vg=; b=k9ywQOLOm3zdY/
	mEHnrRuOkcDJRA5+6aZcl3lkn9bxDshrjpeuAByQ0xjPf5UxkG9UMWzaB3iFV1gKF6fBA7jIgWhxH
	iauvTrSsndgyzHq+Ilaq3pwoV91wt7u2rH7jFALq2vetFSiaYiyzso6JQIporL2nuzcZWspklOEWf
	Dxb56A/68VtlQiX8QcjGzW6x1nNV8hxSkGZZEeUeJbYqjcjQaSXP2D6umDcK85GhliigCr04ix4lg
	C4nf6TVHu2YzxTHoI9wba+Ps+IcO4LCS9+hNfRE98rUXhsSvkun+tD35NEgiyDjwO4OPKBmY1AceM
	8O1Rvs/6LsPbM+bwVNAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPyfH-0005sW-Ki; Thu, 31 Oct 2019 00:50:15 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPyf2-0005QA-H6
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 00:50:03 +0000
Received: by mail-lj1-x244.google.com with SMTP id c4so4716518lja.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 30 Oct 2019 17:49:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2ANRS5wbwl/qhMyqDjpLwYIen+6o/RnmGm7reuX+RDc=;
 b=iSsXAz2h6lI4/+bDAgo3ame/BZgVRj1aE4CRhVp1rkjDm5vlU5S7NBZHxBEgHg/wEo
 LHjrlUjzfObyMjWplPS4iUm9RjAgF5qeticJqVKdiQIoBq9hkhZrryXIwlO/lC3rF9zI
 RUGDn7MhN1RZ4aziEd7tokbiKmLKGtqN1oh1/Bkjo66ARSTwDEhXLfli2ZXzr+qUE27g
 ego3mqJPqzkvZTa4lU2SYZa52RhXEJMi+KQRYiuHajDJTdUR2yAdoa+b3h4qMUN8tIfP
 QZ6T99SeDihkZKnIxQBn1vOcNEJvsNSn6so+SKVs83W44KBmKnvrJIpsFergM970YDYy
 jX0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2ANRS5wbwl/qhMyqDjpLwYIen+6o/RnmGm7reuX+RDc=;
 b=fbfm9f3WKKJm6JXQOmllFMgYESW08kSr80QBQgowctjzWErHHxlq/jVp1dnJLE/yeK
 4RFmnhTy7J4ruLjx1KBOvxCej+wrOrBpTBi3ZLVTY7BZOgx3OZEjKRDPT4qoXrBAOsL6
 hwsw8w/8Dl2pIZ4drOjUblKChc1WFH6Z9WXrOlqqPymWqlmyLP0MSXqL4CIsJ2gbuMTb
 HkqIDgdCmO0AtHvfNRTPEyXCjom9a7rbJOx/CePf+mKIkencBHJb/Do+4OqQNgDHW12L
 Wjo5xSRjBAZKrV0N/q9PFaDOAjT56YPDe+SQTB1IsqE5RrXLWfJst7bAetyMtPk9MML7
 ax8A==
X-Gm-Message-State: APjAAAWFgnh9VcwQTvo5Q4eXkmtO/EzAyPnK++p9hgiABkIsWoRQWKQz
 Rmv5V05rDSQLWRmFjjX8CL8rAFLSrPdlK/rgLv8T/Q==
X-Google-Smtp-Source: APXvYqwM7PCCU+3fgkz+ysEB76Izdi4UnxQslU0hMR9roPFMeD2kCgFi2OfvADVGoZLpFkAT3ZECdzLcVTd/EaP9GRk=
X-Received: by 2002:a2e:90b:: with SMTP id 11mr1671387ljj.233.1572482995258;
 Wed, 30 Oct 2019 17:49:55 -0700 (PDT)
MIME-Version: 1.0
References: <20191028224909.1069-1-rentao.bupt@gmail.com>
In-Reply-To: <20191028224909.1069-1-rentao.bupt@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 31 Oct 2019 01:49:43 +0100
Message-ID: <CACRpkdbOPq4AYt9CLoganV_Ck9bYS9+_U3bggGKAukaQ=FHXkA@mail.gmail.com>
Subject: Re: [PATCH] ARM: ASPEED: update default ARCH_NR_GPIO for ARCH_ASPEED
To: rentao.bupt@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_175000_630757_67ABF60F 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Arnd Bergmann <arnd@arndb.de>, Paul Burton <paulburton@kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Andrew Jeffery <andrew@aj.id.au>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Mike Rapoport <rppt@linux.ibm.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Joel Stanley <joel@jms.id.au>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>, Tao Ren <taoren@fb.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Doug Anderson <armlinux@m.disordat.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 28, 2019 at 11:49 PM <rentao.bupt@gmail.com> wrote:

> From: Tao Ren <rentao.bupt@gmail.com>
>
> Increase the max number of GPIOs from default 512 to 1024 for ASPEED
> platforms, because Facebook Yamp (AST2500) BMC platform has total 594
> GPIO pins (232 provided by ASPEED SoC, and 362 by I/O Expanders).
>
> Signed-off-by: Tao Ren <rentao.bupt@gmail.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Please send this patch to the ARM SoC and SoC maintainers:
arm@kernel.org
soc@kernel.org

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
