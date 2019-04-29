Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2BB2DC8C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 09:03:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+luo3wkZleSf47Wx6Y6eMbrVQJ/+2unCBliXx4fweRs=; b=Bg063PEHj2PEPx
	PDk/JeZ1z6Nl+Hri7anQG/lImv9HO9TM/FwpdbriXudp3yqh4k9iqqQqLWwRaFm5wdbkxy9tvNQlS
	LzE0u2cHRN4dfGyTP/gnkjlNkzEraC0xE6pre/yY6h/x1nngeLAT9A5NHBpJy5R51Gt3NyWJevcZm
	+k1bnkhcW6uG26RyqUJbOL+5sg6ltBr+FVA7T8JO0wr9YxuNKkGFHNz1ZYLUY63gPhy0eSeVfXIAt
	CaAVQzSIxAlHXPuTyM6lUNxiRi+hdq7E3/iD/NkIYJ8myeo4fszFFkfw1fqEvR3R4kqeS07igY5f1
	zny6ip+x/No26ji1cpUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL0KI-0005A5-3n; Mon, 29 Apr 2019 07:03:46 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL0Cn-0005Z1-EZ
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 06:56:12 +0000
Received: by mail-lf1-x143.google.com with SMTP id k18so6928835lfj.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 23:56:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=tEqn3gRq2iO0WysQSnGCYtPoRZRfZMB5vNk6Yq3+80w=;
 b=BGxG3j68eApzoCjluXLFyQAi5/m++6x/05Ydcsv+UJ5iTN1+2LZ0oLNxPrBUIk0az1
 3UYX3lytlc6hwoTY4SIGmMf96JrI9SZw1nptdPxqyoPJh25q0bdfa1dux/mCqtD5L+iL
 G2uH8A5AGT9i7Q0F2xCldADXEo/j4Raq5mZQeREzkASQuo/uU8LveIjFSWCMmNkB6mjE
 +qcw6YEBf2FcHQaRCv6RQL8kTdXrhEdTzUFA4g+Sq87mQZEKpDJM6nsvZn9huqx33XSk
 lPu/fIdvLeAihmdGnsEoHi+3ynQOYr4PstL7u7NFGTFbjNdmFqAE9i5bUCx9BB1iqCYe
 haVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=tEqn3gRq2iO0WysQSnGCYtPoRZRfZMB5vNk6Yq3+80w=;
 b=neFK7yW7/12OJWSE7/NJsTzNjrSCZAwUSZR5W9S5dk7siLI25CViTbXk4kNfBNve7N
 jjQgaui6gSuXFzGu+yildtDVZAMuz2D544h2yk9KVCIbvCXf2Qzc27Zb4m71LO5NAlCs
 tw/ydwVVE4arDSPRUt6IpKy265WyXUe0pMuvOdvIFnb+fNhz5QVb8wxryJKI44JOaAGH
 Qnx2r27vc6zmaL7b2R/NHzGdGrcoYrw53BoDoBILFx3K5BbqHVq+90Y1rUz6uRVn7MMr
 rKhqRBgD8uAFL8z42rHWveTpyCm7DstUKlj5uYjBuelqNs4wstQNC9mP1uHItk+UEYXY
 av8Q==
X-Gm-Message-State: APjAAAV6f/IfpCjbPx5DKnX3T1jV8FC8yx1YcPns9dPkI1BPzCXKw1Kz
 Tv8tSI3FZ3VCJAGylp/M8yUxL2dhyKwP1Q==
X-Google-Smtp-Source: APXvYqyONLz+ydzq1gx8gj0kiLL8dzPC3QxRWmG34/CqoH+UtHcoGz8en1hNvHGNII55RpeOByukFw==
X-Received: by 2002:ac2:5582:: with SMTP id v2mr6583575lfg.19.1556520959851;
 Sun, 28 Apr 2019 23:55:59 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id f25sm7181226lfc.46.2019.04.28.23.55.58
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 23:55:58 -0700 (PDT)
Date: Sun, 28 Apr 2019 23:34:19 -0700
From: Olof Johansson <olof@lixom.net>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [GIT PULL 2/9] soc/tegra: Changes for v5.2-rc1
Message-ID: <20190429063419.b2tihej6inebdpu3@localhost>
References: <20190418150721.8828-1-thierry.reding@gmail.com>
 <20190418150721.8828-2-thierry.reding@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190418150721.8828-2-thierry.reding@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_235601_863677_EFDE6006 
X-CRM114-Status: GOOD (  14.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-tegra@vger.kernel.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 18, 2019 at 05:07:13PM +0200, Thierry Reding wrote:
> Hi ARM SoC maintainers,
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.2-soc
> 
> for you to fetch changes up to 6ac2a01de1700c1b6d889f02f61c4c9602573a8d:
> 
>   soc/tegra: pmc: Move powergate initialisation to probe (2019-04-17 10:32:33 +0200)
> 
> Note that this pulls in a stable branch from Philipp for the core
> acquire/release protocol changes to the reset framework.
> 
> Thanks,
> Thierry
> 
> ----------------------------------------------------------------
> soc/tegra: Changes for v5.2-rc1
> 
> Besides a couple of fixes to better cope with deferred probing, this set
> of patches also implements the acquire/release protocol for resets used
> during powergate operations. This is necessary to allow these resets to
> be temporarily shared with other devices that may also need to control
> these resets.

Merged, thanks.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
