Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07060A7474
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 22:15:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MoGe0kPdok/PWZpkkih3ilumHl2NfGSJwe5krA/PYNs=; b=L4tRRdiYWb4DPy
	qqq2dLagEsGR5Se8M2+6M5g91MMFwr+OJ5d2RnXhCQbWZJ8WaJmZdVGqG5Dzc794wp/K9tEMR0FFr
	cGrN/vg5ApqvXF9sVXc3PxtgIgVV5QiaFUwSErb6p7ncbD/0t7ZQ22Pq5egS8VJyAMbF43Vycpiap
	hJr6/zFldqSamQH5+WqbnmdbeVQMUYfJg/0zkKC/f3QZ6dpb6VqcVCcfNOyKVe6AAYewUQI9s3AT5
	ky37hWqc6rB+ZzPwqAJheYvJlsEA+ZW1YE3Mo4Nibq6Na4YlxWrVuSFQ0WvtJjU77CzEUtVc7AUgw
	8j3UGlef2FEEEtxQGrPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5FD2-0001us-UT; Tue, 03 Sep 2019 20:15:25 +0000
Received: from mail-qk1-f177.google.com ([209.85.222.177])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5FCp-0001tv-T2; Tue, 03 Sep 2019 20:15:13 +0000
Received: by mail-qk1-f177.google.com with SMTP id g17so17332032qkk.8;
 Tue, 03 Sep 2019 13:15:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oaNvwZL5YWaZG/bKwEBZ9df2QhrOhw+SgmbPyzVBVL8=;
 b=JswL5V404ZRkp03BlqWXRc9Z9DxYyFv5SksXcyfibCbKz82XYR5IfnMUNEU2wfDM7r
 B8H6mxWN3KivpKHCOaTbMtCet02NbJYn4peJ4oVqxVc1fH8dFhqFpPg0oTNj/AGWjWdQ
 kZ6tnucY56+96wT+h1ATmdHFlxiZIDpN108gJ5uroDyvSwgQ38ckmvl5ahEoAaoQu9sy
 yePAXYsySfHWqegwnj6L5j0kbBsDbbcC6g8HJWd7l71KsQZo4X9sHyMlbgZWJRZxiyqf
 EZ+mI/NEX1HItmqfAN0p+8Ra1dkZ/AdErBlzRBH/D6yrZk+2NqsACZG+LavYDJNPKSND
 0SzQ==
X-Gm-Message-State: APjAAAXlRbNcBd5DpwQcvRLMFYCYsAitx7glYM2L0qsxeOV5ZubvrosZ
 FI9MwsJxDrPUKA++EXzdgTeXbLIcqVI7S2sELRc=
X-Google-Smtp-Source: APXvYqxM7sRnulkSBKxqdLGbx8zLwCOeaEfdX83mRD+lX+1y6+zjV7gnoa7SRBHw3aZc0JoNh+EeO+CZlpalO11uo/E=
X-Received: by 2002:a37:4b0d:: with SMTP id y13mr35325133qka.3.1567541706918; 
 Tue, 03 Sep 2019 13:15:06 -0700 (PDT)
MIME-Version: 1.0
References: <7h7e77cwv5.fsf@baylibre.com>
In-Reply-To: <7h7e77cwv5.fsf@baylibre.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 3 Sep 2019 22:14:50 +0200
Message-ID: <CAK8P3a054FDucEHMz1H+oK0SwTDgH1NWv6nUK-fCTGSVXT7WcQ@mail.gmail.com>
Subject: Re: [GIT PULL] soc: amlogic: driver updates for v5.4
To: Kevin Hilman <khilman@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_131511_950046_39DB00EE 
X-CRM114-Status: UNSURE (   6.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.177 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.177 listed in wl.mailspike.net]
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
Cc: "open list:ARM/Amlogic Meson SoC support"
 <linux-amlogic@lists.infradead.org>, SoC Team <soc@kernel.org>,
 arm-soc <arm@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 12:09 AM Kevin Hilman <khilman@baylibre.com> wrote:
> ----------------------------------------------------------------
> soc: amlogic: driver updates for v5.4
>
> Highlights
> - clk-measure: support new S905X3 and A311D SoCs
> - socinfo: support new S905X3 and A311D SoCs

Pulled into arm/drivers, thanks!

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
