Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 328FD1E43D0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 15:35:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rVrREkeWZDO1Qpe1I71w+U+8ZIZD9soaYWJLgkGp620=; b=UKR7mYjhkwS5kz
	2xG0phIeKko4K5hXCjGkfjeLkr7Ii98LDknzxN4vhLAFXVNhvtQ2HitY/ic0IigugHreEBjUNl7pq
	Mtp2o4S9oCsyWGvi/8ukg0UbcDxA+DVdYmEr9KhDOD/TpR87uG0xaPWLiGNmQv8XY0+ktMiwSeRwj
	1iS02OP908/63lEUUZRlbLo1aGy2iUKLbyngziePs9HQ60aU8ToJMhQBpgYhY9nbSZ6pxCoxEARRK
	b1BjpuH3wZJV8FaTEleA0r30UCu4NenPZc95CbG0H/L9ho3w8ghC0G56TcQc5+xy6NmAX5Gorp3gD
	BYOmMMY1ClzsHML6rs4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdwDM-0006Wb-0B; Wed, 27 May 2020 13:35:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdwD2-0006WG-Vn
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 13:35:06 +0000
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com
 [209.85.210.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 94999207CB
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 13:35:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590586504;
 bh=mBj7AQBx2aIZkAAiVPcVr9KjcJ03e937pAXxxuyxCLE=;
 h=References:In-Reply-To:From:Date:Subject:List-Id:To:Cc:From;
 b=vFYBAznv8HQ9LLXZtC1UaFtL6uwBq7V2oOi3f+BbFfV2GOqly/tITV3Ythtl6EWlq
 A8DFWC/af5qxdtDu+a4NXFxnXcB0BiPwtgbI7KawofVc9dfOWYgWVLxQp4OHKeJZ6A
 GZZuyErSDwkUJ3whWkNZfJHscHuFT4B7lQB5Vues=
Received: by mail-ot1-f48.google.com with SMTP id a68so19128350otb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 06:35:04 -0700 (PDT)
X-Gm-Message-State: AOAM532jPCNwbAEb9j3UmA3pBLCkwWuHy1WFyCGLqNCiNTpHev32r5+i
 5mkYT7q7ZZHjhYExcvJ4y0r1NOjMV9DybTHNZQ==
X-Google-Smtp-Source: ABdhPJzQRIa0z6e6jsvEc+6+DgV77ohgCNq/ANcPcuBIbd493j+oCA93ox0HsgW2DhflWdqGTEQT2OhFj8stag+LDaQ=
X-Received: by 2002:a9d:51ca:: with SMTP id d10mr4641075oth.129.1590586503935; 
 Wed, 27 May 2020 06:35:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200527112608.3886105-1-anders.roxell@linaro.org>
In-Reply-To: <20200527112608.3886105-1-anders.roxell@linaro.org>
From: Rob Herring <robh@kernel.org>
Date: Wed, 27 May 2020 07:34:52 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKDfcX1YUTmkMbMNfPHnW5YcB7FaAmvrb42wgmsdfTqng@mail.gmail.com>
Message-ID: <CAL_JsqKDfcX1YUTmkMbMNfPHnW5YcB7FaAmvrb42wgmsdfTqng@mail.gmail.com>
Subject: Re: [PATCH 0/5] vexpress: modularize power reset driver
To: Anders Roxell <anders.roxell@linaro.org>, SoC Team <soc@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_063505_046256_486F245B 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 5:26 AM Anders Roxell <anders.roxell@linaro.org> wrote:
>
> Hi,
>
> This patchset contains a bugfixe, a cleanup and fixes allmodconfig build breakages
> on arm and arm64. Also making the vexpress power reset driver a module.
>
> Cheers,
> Anders
>
> Anders Roxell (5):
>   power: vexpress: add suppress_bind_attrs to true
>   power: vexpress: cleanup: use builtin_platform_driver
>   Revert "ARM: vexpress: Don't select VEXPRESS_CONFIG"
>   power: reset: vexpress: fix build issue
>   power: vexpress: make the reset driver a module

IMO, patches 3 and 4 should be applied to fix the kconfig issues.
Making the driver a module can be addressed separately.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
