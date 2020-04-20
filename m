Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E87341B0FF3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 17:25:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h7CDg+Vuyp1Kb+3hz62LSMgGqDYNXxoUFDItDlhUjcw=; b=HUxVkYKVZNwIbl
	z935F3M85PLeZw9+sb7puWD+UWoKRs+Y2M8REo5z0M4TlGPn9fB3YsVlXJpuP7AWgkBz7R6eKwPXI
	l9sMGTLLNqSzcPmnMqYgWMhzKBX/wTFlM/5Lg3VhxRM4bh4TRzWcx/IcQbdIFW296bnSFCaQf4FjO
	FijgsYyczbFsyqhVCdzj78J4YuYeRvsjC2Ti6aEC9WkXyT7cFQYXk7Mua9Kn8FuLObmSgXowu2sJp
	a0NJAztZltoTwdlMmGGMEfQK+YdFMHsOj5P7T/q2zPMO/IpN9UkvN08XLm/tH6aGOEBhzNDF/koyU
	6ql99zR8XDh5v9kH2H0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQYI5-0000PL-2t; Mon, 20 Apr 2020 15:24:57 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQYHQ-0008Sx-38
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 15:24:17 +0000
Received: from mail-qk1-f178.google.com ([209.85.222.178]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MXpM2-1jjFtC1SP6-00Y6KG for <linux-arm-kernel@lists.infradead.org>; Mon,
 20 Apr 2020 17:24:14 +0200
Received: by mail-qk1-f178.google.com with SMTP id 20so10929203qkl.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 08:24:14 -0700 (PDT)
X-Gm-Message-State: AGi0PuZ34YhPvWGvyj7+yoE38g9G0QXLtdBDg2gSzyR/+++4UY1DNgwL
 YsVT1feF7RLCG6v9Gtr3TcY7NQ/8W5rIPL31e6Y=
X-Google-Smtp-Source: APiQypJV6xCjJW3pYFBvIcq7CTKExcpEBGxZ7QSKktdgf68SWm1bP3Q+o1tJP+dpWf2jPXgW39nU0qV/m1IkXlbgPko=
X-Received: by 2002:a37:851:: with SMTP id 78mr16828527qki.352.1587396253107; 
 Mon, 20 Apr 2020 08:24:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200419170810.5738-1-robh@kernel.org>
 <20200419170810.5738-5-robh@kernel.org>
In-Reply-To: <20200419170810.5738-5-robh@kernel.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 20 Apr 2020 17:23:56 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2BZLti5pLrru8s-45Yz54SA0JZbyjvYEstSDJZfnzEmA@mail.gmail.com>
Message-ID: <CAK8P3a2BZLti5pLrru8s-45Yz54SA0JZbyjvYEstSDJZfnzEmA@mail.gmail.com>
Subject: Re: [PATCH 04/17] power/reset: vexpress: Support building as a module
To: Rob Herring <robh@kernel.org>
X-Provags-ID: V03:K1:EfoKpTMtW1LlEo5DjAuv2clUGipMT2BKVT0IIuoQijaBcf0f4+d
 gZL2NJlukrfTzrcaMHm9L+GAjvA4yZhZVqwk7UDkcd2v3W9qgSeu9a8VUg2/A73p4TbDDBo
 YRytUw9j1cn4uidgfXQqTgKLcDzEiayWbRQe3nGRQQspnlK5JIU0CjAedt6ZliQ9jDZuOmY
 1BEVVgC7Yb+n24+ejhnJQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Y7l7/OJaEcs=:7RRkDlvpFt+ZlgT8tSx3yu
 OOD6it2jb16iJv3tUcwwIzLqxn4i/RO5BkZ8XxJrwXFOpvLi/q7iLOrDGW+AAtS2m1nADSibW
 eAvcQAIsUmIAANVEaM+8bXh8z4RNtEZa/EsRz9ViMfQ4IVBWJzKnlLqsmXs4+J156lgM6U6e5
 BacbXw4wC2mQDIYvbojkJ3TO+t6A7hXCNXobDQxKdLZpbGG+EBdWpeiWHX8eRx4Rx8evBfSKe
 LGYuE1cGklVznPZleZ1RMAcA/F4hUhJ8zDnOSrc9JjHtuixMDB1iSegHQmDktyo13MiFgbHEd
 ijw9zy/r2ArOFAcS944LdGmanS3yEU2bs8o9Mz3XeJC9o0/HFQF4hnBsgYvqsMLsrK8AQBN7V
 wCr82tY8/zBALdV42gRQGw9yq++vHo4zSt8S341u88rVLodZeWEWWpTWkGUWIjhIfmgTk+z2P
 RVXnYwj3zVIsnIwb1VwvRS/vdjqs0rDAG+3Yn0Ac58eevZ7i8g6p06uByJ1zfql1RB6bBxTvo
 fgFYsbVXIxLvkAuC4/eaktjc0gcktJ6U8vF9qtNAJzMODCJGX/BgPkC078y2sC6p1vM9J+4ep
 Pzkb7GjNOroX7Wg/IhARtLBF61i3L+BeaC/lyndniRvAK/7vtDO1KwBUiONakl4zKB8nR1kB7
 gg5UT15/9q3GIBoFTJKdE4iZBmx0Tbor5MjrdgMSfhu9+Jr+FnMeBFeY0VIvKCyssM1JLLVM8
 3IKbmsN0uPZ0CgmU6n6A3lG5e+72RHCOT8HzdMlzw0wECz8ULModcv5IbOzoUdHA3oxWn6IPD
 6uxPa8GZUNV11CJEy8Dt9SQNJZJBRPOW66Pl3my7KrXf5+To0k=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_082416_435040_4C5CA5FD 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
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
> Enable building the VExpress power-off/reset driver as a module.

Your change allows loading and unloading the driver, but actually
unloading is a bug with the current implementation, as there is no
'release' handler to undo the _vexpress_register_restart_handler()
function.

It should not be hard to add a release handler, or you could just
mark the function as non-unloadable by only having a module_init()
but no module_exit() function.

I suppose if you do the latter, there should also be a suppress_bind_attrs
flag in the device_driver. This is a preexisting bug.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
