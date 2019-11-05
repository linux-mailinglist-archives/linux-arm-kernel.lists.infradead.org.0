Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D8A6EF2F7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 02:45:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZrjL2oyK3eFfE6qfTnJsrwq9BZzj+koVw0RB4W1ujCI=; b=TjqEYHf+mSa65r
	VWd46lTLm//KeMP5InkHrZfwqSZ/OY5pVJpqijLW4+d1tw666Akp68Ma4kuxnAsIU/SEI/54+f6c8
	EuRXIjqRc3aXnxsmMQB1p43eBDWbI8EOtg8xGvQDCLWj3RHB6S7YsI+QA+jph4Z6v6335FE/mIF3i
	R0r/dZgZSZviSA7AGeR++Qk/uZnyvN/t52qghvGGLnkB0T7mGkk9sWG6+RXe4nm1t7ktgHHA8lRDM
	djVw6wY1twG1+AKx0sT5Q4Iy0GNf3wgdkK/c1xcT4x12r6jmBTCvJNcoOIhk+N0BMSO29/uN5N+6N
	9kQph9sfasFM98bYngoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRnuE-0004t4-K0; Tue, 05 Nov 2019 01:45:14 +0000
Received: from conssluserg-05.nifty.com ([210.131.2.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRnu6-00042k-Cl
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 01:45:08 +0000
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com
 [209.85.222.46]) (authenticated)
 by conssluserg-05.nifty.com with ESMTP id xA51io01026316
 for <linux-arm-kernel@lists.infradead.org>; Tue, 5 Nov 2019 10:44:51 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com xA51io01026316
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1572918291;
 bh=US7HnlfbUATMZewUXcHUmKQ8vx87uqsdcAQJeWxPmP8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=sqK+qum0s/ofCdio6VkD6ITJtwUT7fjxl1ZAhXzvq4PcS3Imp5mJO5moUHJ0njMw6
 2cDWiWKm5mQf6pO1Y5LyzrUIscWWiO+D5JbBITc3ApVvi37LdY4t8iUkt5mC8Z6upN
 31AmvCcO3U5b9uk7NIAtYSAtunMDnmGyM6AljC6eHyn5gCS3GESYovlu0syXuNAFHI
 lJVhMjZ2X/mnyO7Y9clvM8f+3iKNNrJirc0Z29vM34Sp/RbkWj1ww2YzY57byMe+Yi
 +SZFUaiqOaHHuHhtTzPXS8DVzWfDQSSMsq/0mMa5DP1/+TfoOfK9gEdqhCpMEsT1Eo
 gvqqH3NaN3V6A==
X-Nifty-SrcIP: [209.85.222.46]
Received: by mail-ua1-f46.google.com with SMTP id i31so4163129uae.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 17:44:51 -0800 (PST)
X-Gm-Message-State: APjAAAXHlU3WU5Y0Aw8l1yWMdAALf9j+SxDVwUSH8bmYT5baqxPFuK2F
 EtQX6aYIGFhnjEuMiFYb5cMTTVX1sYy4AJv2+4E=
X-Google-Smtp-Source: APXvYqyAJwLfrsdrDuFC5DkDPl6kKaEgQE1dM2uxxz+hFwYzm6LlI63Y2XVEPHBoyeEM8Nncmazv6eanPEcWgTNMMWA=
X-Received: by 2002:a9f:3e81:: with SMTP id x1mr13534695uai.121.1572918290038; 
 Mon, 04 Nov 2019 17:44:50 -0800 (PST)
MIME-Version: 1.0
References: <20191101061411.16988-1-yamada.masahiro@socionext.com>
 <20191101061411.16988-2-yamada.masahiro@socionext.com>
 <CAL_JsqJbmFd5wZ0RCP2baqv-bjWwzaJ+hLqtGeYjK5LPJ54dXA@mail.gmail.com>
In-Reply-To: <CAL_JsqJbmFd5wZ0RCP2baqv-bjWwzaJ+hLqtGeYjK5LPJ54dXA@mail.gmail.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Tue, 5 Nov 2019 10:44:13 +0900
X-Gmail-Original-Message-ID: <CAK7LNAThTaHpCWgGyx=qh6v7CsL6DAWfvE1g_jsNcGe-K5e_gA@mail.gmail.com>
Message-ID: <CAK7LNAThTaHpCWgGyx=qh6v7CsL6DAWfvE1g_jsNcGe-K5e_gA@mail.gmail.com>
Subject: Re: [PATCH 1/3] libfdt: add SPDX-License-Identifier to libfdt wrappers
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_174506_766575_C10672E0 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.90 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: DTML <devicetree@vger.kernel.org>, David Daney <david.daney@cavium.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 David Gibson <david@gibson.dropbear.id.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,
(+CC: David Daney)

On Mon, Nov 4, 2019 at 11:00 PM Rob Herring <robh+dt@kernel.org> wrote:
>
> On Fri, Nov 1, 2019 at 1:19 AM Masahiro Yamada
> <yamada.masahiro@socionext.com> wrote:
> >
> > These are kernel source code even though they are just two-line wrappers.
> >
> > Files without explicit license information fall back to GPL-2.0-only,
> > which is the project default.
>
> That is true and these are kernel only files, but given they are just
> a wrapper around the .c files, maybe they should have the same
> license?


I just thought it at first
but this wraps two files, with different license.

include/linux/libfdt_env.h:  GPLv2 only
scripts/dtc/libfdt/fdt*.c :  GPLv2+ or BSD-2-Clause


Looking at the include/linux/libfdt_env.h,
I thought GPLv2 only would be preferred for
the kernel-specific code.

If you prefer to align with scripts/dtc/libfdt/fdt*.c
I can change it, but I would also respect
the opinion from David Daney, the author of the
following commit:


commit ab25383983fb8d7786696f5371e75e79c3e9a405
Author: David Daney <david.daney@cavium.com>
Date:   Thu Jul 5 18:12:38 2012 +0200

    of/lib: Allow scripts/dtc/libfdt to be used from kernel code



-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
