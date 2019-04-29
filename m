Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDB3DDC5A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 08:56:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vknMwnSfasxMPmtjbIqqHD1NQybRrx3OYRNwiI22nDU=; b=oJr7CXcv1Zsa9I
	Qx8T3Kcd8zlrwETfeGm2zK+atinEwzZqFzj3DIRSPUB4qv0JpRyV+w7FIvYB7K5WBWconyy5RkcRr
	8LpeaTls9PPoYgpQlYmR32dg5ZPzRyknJNGl7r/GPGPRSjRL6lxsrZ2xVg6vzG45kqKKxKCBb8ajl
	sEJ/xLd8WZ6CdmAWLNG3YG55YS/oTRnZM59V0BMH/Rg9CuGyLvtiT+Qz6dt4/9Z2PtKMTwsJCuqAB
	2eYqmyE3XsgUv/+SblnEuo5jHA3pOK2FBglbLSmNUH+Fb/mo5CDEz2gKWaU1gJE/z439aSoGwQ6gv
	eJ2yv/nSh6+6p/7eRe3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL0DC-0005v2-4Y; Mon, 29 Apr 2019 06:56:26 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL0CC-0004w0-2w
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 06:55:25 +0000
Received: by mail-lj1-x243.google.com with SMTP id k8so8291235lja.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 23:55:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=z8D8MI3gegViugIwpZ2280JffkSqWg4ZFxzK/9RxXBo=;
 b=LUbBeObv/gR4XZfXo7oDu/YHe62TWZjhYvw4+JtLknzqp2Lp8hRkwlrRsrhl7Sl1C/
 q2RDtVC14PQvbgr5MBU56llQED/puyU0vk8UPj58UHtIuwGdkA7TUhIptVv4qZz8S0Pl
 Nl2D5I+nmEdXNhleozyao19ZDG4Lj9x7T1UTKK38d3kxAk+3xgQjP+MSiQUHyx1STE7X
 hZuGjAEd5UQenzMBve5zZbPdf8KldseCYP1ojLUexW+6JGKazgTLbD2hNWaBpxOo2bK6
 CM6qPU3HIAWihf7fQxKGPC5kmgfYMGJG8EG2y2rozPNAWijgrVZ5e8RHRlD2SZDnUe2S
 352g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=z8D8MI3gegViugIwpZ2280JffkSqWg4ZFxzK/9RxXBo=;
 b=lM6wAsBvZ2/ES9xKeIHJXUmUH9W9/AFUCQ0qOqubtvMwv4P6/Z8i22U0jWiZmKUJqn
 5exGRX2Qfp1rSysApo0XWTPGlc55ecXOqcjs3fpWb5GuyZx9LuU6jL1A5gLwq0bLP7HY
 mYqqk1ZUh8XRAcepBq8ZI0+Up1RPS2BeaQx6iuWobwCQs9lWvpjN6WHKbQ21NzvWLuVU
 4G4knlLj6krZMimR6ghyBNQ+6yH6s7y+9OSDOsCmUFcXJLveGvssJZPWhKMYds3Ajf7A
 hzEika9dPY4BYFCswggG4J7S/FiAkWF6OcZbvRLjsABAJ8Bi8PqC3T77p5F94enwU82Q
 9N8w==
X-Gm-Message-State: APjAAAXNTHTXJRWVITVinhkR1e0DbiPVcysmqC7JhB01Mjlb9HSJ32Ea
 M3bLl0EObqvsP6MO6nVuYQ0m0Q==
X-Google-Smtp-Source: APXvYqzYDLI6ZocQr+ZHvYXqPxeBPieMJMXCwRHAFBSqi0F7nqaoFBfUepWKJs6MF7wntspUgF7n9A==
X-Received: by 2002:a2e:99d2:: with SMTP id l18mr17299658ljj.27.1556520922194; 
 Sun, 28 Apr 2019 23:55:22 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id k4sm3609685lja.18.2019.04.28.23.55.20
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 23:55:20 -0700 (PDT)
Date: Sun, 28 Apr 2019 23:05:22 -0700
From: Olof Johansson <olof@lixom.net>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [GIT PULL 3/3] ARM: samsung: Changes for v5.2
Message-ID: <20190429060522.ijfpvz3c2bxa5xwi@localhost>
References: <20190414154805.10188-1-krzk@kernel.org>
 <20190414154805.10188-3-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190414154805.10188-3-krzk@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_235524_147754_F5D06B7F 
X-CRM114-Status: GOOD (  14.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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
Cc: linux-samsung-soc@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org, arm@kernel.org, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 14, 2019 at 05:48:05PM +0200, Krzysztof Kozlowski wrote:
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-soc-5.2
> 
> for you to fetch changes up to 7676e667c841375b41d9438b559756141aa93d0e:
> 
>   ARM: s3c64xx: Tidy up handling of regulator GPIO lookups (2019-04-14 12:53:03 +0200)
> 
> ----------------------------------------------------------------
> Samsung mach/soc changes for v5.2
> 
> 1. Cleanup in mach code.
> 2. Add necessary fixes for Suspend to RAM on Exynos5422 boards (tested
>    with Odroid XU3/XU4/HC1 family).  Finally this brings a working S2R
>    on these Odroid boards (still other drivers might have some issues
>    but mach code seems to be finished).
> 3. Require MCPM for Exynos542x boards because otherwise not all of cores
>    will come online.
> 4. GPIO regulator cleanup on S3C6410 Craig.

Merged, thanks.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
