Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B92B47D4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 09:03:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=plRT4wcCawGqjuDmqrt9qJfXDv8BVwXEVs60W8NnLJc=; b=eH485oftuUjIXu
	qzfdPS5hv5DQvheSWmaHxnY6hjC+pG2LxSHoRnRzod/NZUbv9xeYHJXd3762fWZCev2ili1SoyclT
	VsOVquB1tLz9Sb0JqrtfjEm4kWvE2PuIFTt9i1CC4XTNOLhvZZHFiynu17tbKjfPwhEhQpg8KTBgZ
	XTfWz3IKcFCBaFUa7Kb+xrJ90bRTrssZODEt/IB6vp8gWiBg8Gfw8nmdNBsDtxxQjHhVrTtYzzcNV
	RUXDlKr+3LHMCPDqGttvJbsq4iZ24+12NhF29buvmX/fefCtuCk0mJ5Ryw0e09gfR9ADTfredN1wd
	itwyhT7qzu0GEsvRuytw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA7W2-0005WC-I6; Tue, 17 Sep 2019 07:03:10 +0000
Received: from mail-qk1-f195.google.com ([209.85.222.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA7V3-0005Un-AN
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 07:02:35 +0000
Received: by mail-qk1-f195.google.com with SMTP id z67so2761409qkb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Sep 2019 00:02:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=niI5rGV7hd+/rStnFxoqE7zna/O+5A1gNRAdX+dkuEI=;
 b=YyTv0UTH4yCmtAae6lzTmiN+ZbRNw0htjQkjUfnR3QQjd6gjmp2OuJ/ux2uKyTNfwj
 2TZjDMeFTu+ognm1xa99jpwa5V1RR4zMOCvBQuGi+2RnmgCodVjKLFsxeier4lHFBy2Q
 Q0kuCUpQvH7QzQ7CVyveQC7JxlNem5rgdpxXK1/KkseTeh2bAMHdS6HZRxRHd5Lqsh6d
 v+xHQajTR5oIo8amHwqyRnqA3htvAJAPUzYkuk52UL0IdVsjIvIxf1n2kvXwAVIziFJj
 8FhPHW/xlSa25HhJu9iXS27OIbwI7iRC224Wbf4Dbo+8nYs36cEcdwYxrK6CfkxCeuEu
 /oUw==
X-Gm-Message-State: APjAAAVFCsff+k6YzjB3yIk2Hk0wgQUcWD/auIGlYfr0eBikEFg9H8Rn
 Aj6FBr6qm1mw6eeQ55q4yVez3VEKj0Z8riKBjKk=
X-Google-Smtp-Source: APXvYqwCpAgxstZacTY/C5r2SVq4FmEMh41CnGtMqiYcBLMuHpx2Hx4DwiKBP/dMIra8V6/8QLulZJQtupnAIk7+CkI=
X-Received: by 2002:ae9:f503:: with SMTP id o3mr2143255qkg.3.1568703721534;
 Tue, 17 Sep 2019 00:02:01 -0700 (PDT)
MIME-Version: 1.0
References: <20170130110512.6943-1-thierry.reding@gmail.com>
 <20190914152544.GA17499@roeck-us.net>
 <CAK8P3a3G_9EeK-Xp7ZeA0EN7WNzrL7AxoQcNZ8z-oe5NsTYW6g@mail.gmail.com>
 <056ccf5c-6c6c-090b-6ca1-ab666021db48@roeck-us.net>
 <20190916134920.GA18267@ulmo>
 <20190916154336.GA6628@roeck-us.net> <20190916155031.GE7488@ulmo>
 <CAK8P3a1EZi5apOm90B6YW2GzFXsirz5wk-D66daR20oj_TLXNg@mail.gmail.com>
 <20190916202809.GA42800@mithrandir>
In-Reply-To: <20190916202809.GA42800@mithrandir>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 17 Sep 2019 09:01:45 +0200
Message-ID: <CAK8P3a2y9OYL-pm38rcGvgzvjgErCUC1ckjVXhd3mb=YEXiD_g@mail.gmail.com>
Subject: Re: [PATCH 0/6] ARM, arm64: Remove arm_pm_restart()
To: Thierry Reding <thierry.reding@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_000215_070972_3F0EAA9B 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.195 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 16, 2019 at 10:28 PM Thierry Reding
<thierry.reding@gmail.com> wrote:
>
> All of the patches beyond the 6 in this set rely on the system reset and
> power "framework". I don't think there was broad concensus on that idea
> yet.

Ok, I see.

> If you think it's worth another try I'm happy to send the patches
> out again.

Maybe do that after we pull the first set into arm-soc then. If
we can reach consensus, I can merge them as a follow-up,
either through the soc tree as a new subsystem or through
the asm-generic tree as cross-architecture work.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
