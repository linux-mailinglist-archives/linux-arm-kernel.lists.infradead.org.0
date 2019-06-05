Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BB49360B6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 18:01:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cbjFfhe6nzVJi8DkLhRAgsP4bzx26ADidgR+3Sugz/0=; b=UIj48klKdsndB1
	SziM2uYesOgb+Zev3UCcKBdaIb3Xm0hXR2PUWhKBzFlzIt1y66W7NiODkUQ50yrO6RDCjqN4KCwN+
	4ugTjfUw9xUfzKCd2saykdct7XU8OI+abPnrjSilniq6vJVaf4ubGczYdLP+wLqQgByc+z65oJotj
	k410EQ5F2jB4yuPGpXehIK/0D/yg5YHLa3blNaJAGb3Q9WG5ajfMfloDR6Y1llELU5MfPY0vGr3pu
	uSeKszsDwevwND8uzGMbxip7KiyWMVQ4/fb2KD9pG+7sNErnuCSbsk26cHF2HJiNcEYQv+/0dkOFg
	T+2512W7fe7CagHrHhUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYYLN-0007U2-AF; Wed, 05 Jun 2019 16:00:53 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYYLF-0007So-7P
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 16:00:47 +0000
Received: by mail-pg1-x541.google.com with SMTP id 83so5808751pgg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 09:00:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=UKzg+DCRQdvZVV0IXkzVXeynq1ptXUJceOTdTsX6Gl4=;
 b=fp3HzWJAxjvdFoCskFMW0CsmQbIUx9erbqizUvfclUhHxGf+Erb+WctD9tdHvPc110
 JcTZ1Jrj3cEXaY3oRw+lKZAxo2afB9jZNL425d6yl/xh2Q4coGKZe1nlURSRV5tNZ6i6
 6icO1zrReJmPy7Du5sTkxfslAWn6noDKs/PrMyNUtOVkwOJpkPIQe3dijIExYyfN/ZCu
 i1wSJCUH6EXOHXB1+broOTrpsq0NDHU6pZXot1zH/+qGeGZeHWd8wJmfmHx5m8lSJFZ8
 aT+E7HnrfPIakIqleI4JD6nj+pq/wnrl7M07QdrRxCNeapcqe4RkT702f9AqOz1d2G6Y
 RanQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=UKzg+DCRQdvZVV0IXkzVXeynq1ptXUJceOTdTsX6Gl4=;
 b=GaxmKEQXJ9/lfFquV1g/nTJcz0KQcWJGNZ0D+cehlgkmMNhIrxhCnps44VKQsAJr8o
 OBKS43foRDhSB2jH946jQm/7rJT0eSMNOCQ61h27wPgvi+0p+ZDPyRXvd0rU9VGfB5ql
 letLkwLhfgKyoGEdjskEZjfzpzKGKw7O4eCzui8HLk+OpRAeXn5DBHNj/raR9JahiCR6
 30evYz8w2fTsvTupdkJ7qWyL2UwKcW68/mrTzJ7AdjYpT6z3HHGv+nNOKVvxf2wbMFhf
 PYiGVZ0APecLfai99JJLjaZ5wKvSxPn8RpN5uHEh6/plsGlIQoAaRjMaBolgq2KAQuq7
 5aoA==
X-Gm-Message-State: APjAAAXECabo///5Y6sKF0rs9UPHgYQGQcYGsND4qI6vp8DseUZ8/p97
 4QzRXm8FmGqOG7d2nD8hQA+Omw==
X-Google-Smtp-Source: APXvYqzi9Aq/IOPhUaYi+lh6Xpc7UtaCrRzBvBPL1qB9kcuXVFYBuo3Q0o7uDyHQkyOEJiRLQ5MIlA==
X-Received: by 2002:a63:5457:: with SMTP id e23mr5607600pgm.307.1559750444418; 
 Wed, 05 Jun 2019 09:00:44 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:b195:645b:2f67:9ebb])
 by smtp.googlemail.com with ESMTPSA id a12sm21837874pgq.0.2019.06.05.09.00.43
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 05 Jun 2019 09:00:43 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Atish Patra <atish.patra@wdc.com>, linux-kernel@vger.kernel.org
Subject: Re: [v3 PATCH] RISC-V: Add a PE/COFF compliant Image header.
In-Reply-To: <20190523183516.583-1-atish.patra@wdc.com>
References: <20190523183516.583-1-atish.patra@wdc.com>
Date: Wed, 05 Jun 2019 09:00:42 -0700
Message-ID: <7hef48ggyd.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_090045_319364_4C897FB2 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, Jonathan Corbet <corbet@lwn.net>,
 Albert Ou <aou@eecs.berkeley.edu>, linux-doc@vger.kernel.org,
 catalin.marinas@arm.com, Anup Patel <Anup.Patel@wdc.com>, will.deacon@arm.com,
 Zong Li <zong@andestech.com>, Atish Patra <atish.patra@wdc.com>,
 Palmer Dabbelt <palmer@sifive.com>, trini@konsulko.com,
 paul.walmsley@sifive.com, Nick Kossifidis <mick@ics.forth.gr>,
 linux-riscv@lists.infradead.org, marek.vasut@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Atish Patra <atish.patra@wdc.com> writes:

> Currently, last stage boot loaders such as U-Boot can accept only
> uImage which is an unnecessary additional step in automating boot flows.
>
> Add a PE/COFF compliant image header that boot loaders can parse and
> directly load kernel flat Image. The existing booting methods will continue
> to work as it is.
>
> Another goal of this header is to support EFI stub for RISC-V in future.
> EFI specification needs PE/COFF image header in the beginning of the kernel
> image in order to load it as an EFI application. In order to support
> EFI stub, code0 should be replaced with "MZ" magic string and res5(at
> offset 0x3c) should point to the rest of the PE/COFF header (which will
> be added during EFI support).
>
> This patch is based on ARM64 boot image header and provides an opprtunity
> to combine both ARM64 & RISC-V image headers.
>
> Tested on both QEMU and HiFive Unleashed using OpenSBI + U-Boot + Linux.
>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>

Tested booti support on HiFive Unleashed using OpenSBI + U-Boot (master
branch) + Linux.

Tested-by: Kevin Hilman <khilman@baylibre.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
