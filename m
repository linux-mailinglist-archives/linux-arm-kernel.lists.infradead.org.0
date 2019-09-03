Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 722D1A6874
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 14:19:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i6NoZ4LHRTFmiwI4QPv4wLup5zqukomWpWhu3z01pK8=; b=lWbZJCZfSGQy5e
	WsHMlqKBa9EJ42YfgipuuyvFbbYlyFptcsQrzhZePWwbEnx+RpjcLSAcetx9rFu0YJ9QIkTxb9kNT
	3PRsnGD2vwTPvM+vcSulFbpux4tZnu2+EeJDyg3rcPnqIs6d3GfXB8I5VSA9WM8jeefLejqyM9cd2
	A45KgDAkhemvOWnD/vo2GPx+zrvT/Qh0QInILG48bpt1CmpoEKoUR/rOfCRpznecncuB7XLMZsSK/
	tVdW6owpN1e9SuDcstLw9Uwk8WIRPi8FVSp9h+SQjfmj8IvL+11CZEzixnsuBS9lCCI0Pn3zm6N+1
	+hp85gmx/O+hR753OCSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i57md-0004m0-Kw; Tue, 03 Sep 2019 12:19:39 +0000
Received: from mail-qt1-f193.google.com ([209.85.160.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i57mT-0004le-2w
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 12:19:30 +0000
Received: by mail-qt1-f193.google.com with SMTP id l22so7327576qtp.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 05:19:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=R/DJSIYh3EZbUDsekqE/ejrRQcrXwQMXahelu/bLINw=;
 b=idCwMdV8J8dMjrThS2XjF97Jexu5P/IgxHLYZ4UnmeBMpsxlcicVmsOXyqlzeCSqMG
 co37x7wVDKb9mE2s+jYxy0rknYpk2cQLKa7b0O6uHT0KD+22z3bWspWHT5WgywoFc7Sa
 feXboZsUM9gOec15L86siz2uTJABBph4dbZnAt8G+X7ifJ6WP6Zdf4s1sa1zUzqscAQI
 eSAkt80y4ZJk7t/KcErLitX4rch99rlBJUatQKgJBSXysHQx89DhDmp224Ge9PTiYYR7
 kB0+meeP2eKiqVOfk0MijMkK+Lz7qSV4V4ImFn8b50iD4Y9TaWfA5N9bcXtEK81WMM57
 aI/w==
X-Gm-Message-State: APjAAAWradr78taLJ+wsHEkWPF6CsG9EggFKvIeZ/hH+CE/Tj66Uudyl
 Sqdzv5ySiHNwT3B1jpcaNsqlbsj0es2sUZbdJGv1Tg==
X-Google-Smtp-Source: APXvYqxUj37k1++cYore/URYWpEsEnW1S2Ofa5QY6WaKXK8xM6pwsheHaibNOfPqghaplWoJUOSoL1+Ar/OVPAZ9i7U=
X-Received: by 2002:a05:6214:80a:: with SMTP id
 df10mr4999512qvb.93.1567513167699; 
 Tue, 03 Sep 2019 05:19:27 -0700 (PDT)
MIME-Version: 1.0
References: <CACPK8Xc1aSp5fXL3cEzC9SJsCXG2JwsSPpQrW3a09dkvhCyHHA@mail.gmail.com>
In-Reply-To: <CACPK8Xc1aSp5fXL3cEzC9SJsCXG2JwsSPpQrW3a09dkvhCyHHA@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 3 Sep 2019 14:19:11 +0200
Message-ID: <CAK8P3a10eKP6cJUw-SHam1zBMZe-FOhVcBn01TT_VVFYHrUA-w@mail.gmail.com>
Subject: Re: [GIT PULL] ARM: aspeed: arch changes for 5.4
To: Joel Stanley <joel@jms.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_051929_131259_A4B7756F 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.193 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Andrew Jeffery <andrew@aj.id.au>, SoC Team <soc@kernel.org>,
 arm <arm@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Aug 25, 2019 at 4:10 PM Joel Stanley <joel@jms.id.au> wrote:
>
> Hello ARM Maintainers,
>
> Here's my first mach-aspeed pull request. We finally had to add some
> code here to support SMP on the shiny new ASPEED AST2600.
>
> The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:
>
>   Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)
>
> are available in the Git repository at:
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/joel/aspeed.git \
>     tags/aspeed-5.4-arch
>

Pulled into arm/soc branch, after changing Olof's patchwork wrapper script
to ignore the '\' character at the line break.

Thanks

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
