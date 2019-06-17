Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC11348174
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 14:02:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TTynRjT+1jYfRULqHdHWy1lBKx6zoo4tVuoCfufA/qE=; b=FQbiMlhf1OoU+K
	kOa2vKSZKibe75qOfSGxqhpMejltpEzEJYuJEh0zelvVU8UOIkUGV3gy7ALdrXnhy7ZwoiTDi6DiN
	u74xYK5ZRiuZ5s5spUGunfdHBjuvu7OvPMYkP1qOC9P/BC0ZOwk4/ysvVcvOcpgLuJJp3HK9zQRAo
	tVRY1p5KHfBrRM3+7MKBLxN+I1a2pt7x7Jb1o0gaz+wAcZayqc/OCql/LJEZFvPGqTPEaz4Pj6dFr
	C1ECXe9t/KocK7WRhvTiY3YLfXz6R2tlQh9mt/6BSxNWKyF3qv9KKYWUAANyJb3SmFZ9r4nKImRvj
	THfBeHaKdC9BaLMKbFgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcqKl-0003KB-MC; Mon, 17 Jun 2019 12:01:59 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcqJf-0002m6-S0
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 12:00:53 +0000
Received: by mail-lj1-x241.google.com with SMTP id k18so8967766ljc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 05:00:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=/4EVEgl+d9IAA6s9s2TyM1gIRSoJRqPoVDCIFRTbu78=;
 b=V3NslvGXYtPstb6cR7cI/7KvbhwlAyfZCL0XVFFiJEzqkBstGj0r/qIZy4T25I9M8q
 JFt9PDkYXDksNP0gzDm3rOZ7tA1JtO1N/TeLbQlNLh045eexqJdnMryTs2pX9iAbcbq+
 z3LkZZdYgPobPuJT6fXK9PDtqGenYyfza2k+t0zNPWB4HzCXiii3XtseN73Y+uoJZXrM
 8S4ayQ6wuWedxgLq7nVm/zVwlRREKxosSnrUwtkcozFrV/RFeKofnkXpjBn4AKqGioLy
 EENss3lKzEsrg+mO01+7YSWAg9HCKkAy8z3xAU1/8W+NpE6X2rUBvaq6zp36wJpYk7RF
 X74w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/4EVEgl+d9IAA6s9s2TyM1gIRSoJRqPoVDCIFRTbu78=;
 b=K2fBKRU964dNY8CR5J3pUojbYaDrccyYLdvRLYt5xvIIGtUvmwwFSNswYY4/7W3bBO
 X1uQpiOUUBnw2qQ3+DVvbiFe6CeOnaQplya/yt/GRv63Jtm1FIBXS029Xqv3felQpfZg
 oOQi4DZUZ1aOR8LKw7IBOS4BZbXKgBaU3OgbjTLky35nCh5qxe2fd//YYatzndDdzpBD
 RywXTiRpek2lZFxNAAh+ecB//18akPdZQb920KCgmFK4cDjz3Owe22ZRa1xrwLY9bfxS
 nr7iql3I1HcGeSiYWcu0VfQ13n7uutTE0Z7LGDw2gyM0KRiN/b+DAAv6ARKQADTmYvwr
 5GOQ==
X-Gm-Message-State: APjAAAVE7waXWmp7bWoukq4stT61CaEH3zg2Srs8B1NizrbHrwrYVpcN
 QB58HLN7IsYCr6rAoiN1c/dkPQ==
X-Google-Smtp-Source: APXvYqzuPx51tnyeSykGoFxsmtaV7c9ny2FNFyxPBpLCPtgJqNBbTgwYFEMJuuwdI9q3Xzi9ilaOCg==
X-Received: by 2002:a2e:6545:: with SMTP id z66mr60107089ljb.146.1560772849565; 
 Mon, 17 Jun 2019 05:00:49 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id j7sm2327947lji.27.2019.06.17.05.00.48
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 17 Jun 2019 05:00:48 -0700 (PDT)
Date: Mon, 17 Jun 2019 04:45:50 -0700
From: Olof Johansson <olof@lixom.net>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [RESEND PATCH 0/2] memory: move jedec_ddr_data.c and jedec_ddr.h
 to drivers/memory/
Message-ID: <20190617114550.77fikzakfxl4vqkc@localhost>
References: <20190603081233.17394-1-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190603081233.17394-1-yamada.masahiro@socionext.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_050051_947637_C14EA229 
X-CRM114-Status: GOOD (  14.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Santosh Shilimkar <ssantosh@kernel.org>, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 03, 2019 at 05:12:31PM +0900, Masahiro Yamada wrote:
> 
> I believe this is a nice clean-up of directory path.
> 
> include/memory/ has existed just for containing one header,
> and it is gone now.
> 
> There is no sub-system that takes care of drivers/memory/.
> I sent this series some time ago, but I did not get any feedback.
> 
> I am resending it to ARM-SOC ML.
> I hope Arnd or Olof will take a look at this.
> 
> 
> 
> Masahiro Yamada (2):
>   memory: move jedec_ddr_data.c from lib/ to drivers/memory/
>   memory: move jedec_ddr.h from include/memory to drivers/memory/
> 
>  drivers/memory/Kconfig                   | 8 ++++++++
>  drivers/memory/Makefile                  | 1 +
>  drivers/memory/emif.c                    | 3 ++-
>  {include => drivers}/memory/jedec_ddr.h  | 6 +++---
>  {lib => drivers/memory}/jedec_ddr_data.c | 5 +++--
>  drivers/memory/of_memory.c               | 3 ++-
>  lib/Kconfig                              | 8 --------
>  lib/Makefile                             | 2 --
>  8 files changed, 19 insertions(+), 17 deletions(-)
>  rename {include => drivers}/memory/jedec_ddr.h (97%)
>  rename {lib => drivers/memory}/jedec_ddr_data.c (98%)

Applied to drivers branch for 5.3. Thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
