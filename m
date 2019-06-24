Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63E53504A9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 10:36:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0nrLIvs8R51MonPZCiBcnzyztZvNSSOW20JoANIYglM=; b=eb1Is2ALTAE18n
	Tj69UB/nOn9u3T57RDYRxRRi+eZZn6MyMOdhUocHxBL0OmiW2YmobJeTxg4giM4c5pFuiyFZXN9fu
	qwbv/F9mkT5aiAU1JX0VIQir/J7SPzCdVMZs4Dm0UMUoHE61ujsiNZwYDcKrv+BraiU23C1iF8Rum
	SzHIssBYB92BgQ5vU0J5UDTgje9qqDNbSpGFUSVeOllP/8GNA8rjxWJ1K84KS5DkbjAvJyngwts7w
	Doy6zZe+fiBpGP/HNaw9hK/SInI331Pa8bYEpKuQJ4UaMGUNr62ErbcF3rDbSFaAGDNQvSqO2hxqa
	JJQ4CH3MfjvsB/4R1v2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfKSr-0002B9-Td; Mon, 24 Jun 2019 08:36:37 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfKSc-00028d-Rk; Mon, 24 Jun 2019 08:36:24 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 3F6F920598;
 Mon, 24 Jun 2019 10:36:17 +0200 (CEST)
Received: from [192.168.108.49] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 28C092020F;
 Mon, 24 Jun 2019 10:36:17 +0200 (CEST)
Subject: Re: Help offering for AmLogic S905Y2 Mainline Effort
To: Daniel Laube <mail@dlaube.de>
References: <0292EC91-0CBE-4F22-8F28-BD581A157CD6@dlaube.de>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <2543a892-d7b6-f528-4df3-923edbf1dd85@free.fr>
Date: Mon, 24 Jun 2019 10:36:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <0292EC91-0CBE-4F22-8F28-BD581A157CD6@dlaube.de>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Mon Jun 24 10:36:17 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_013623_043923_D5222E4A 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Maxime Jourdan <mjourdan@baylibre.com>, linux-amlogic@lists.infradead.org,
 Kevin Hilman <khilman@baylibre.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 23/06/2019 22:42, Daniel Laube wrote:

> recently bought a cheap HDMI Stick Computer with an AmLogic Chip (S905Y2 on x96s Board) 
> because i was told that it had mainline linux support. That seems to be 
> true only partly because there are drm drivers missing for the gpu and 
> no video encoding/decoding support.
> Because i would like to get these things working in the future i would 
> like to offer my help.
> I already ripped that thing open to get access to UART to see boot progress.
> Could someone please guide me where i can help with the mainlining effort?

I suppose the first thing to do is try to get in touch with whomever
might be working on this at the moment or in the (recent) past.

Look at the MAINTAINERS file, to find "official" maintainers and reviewers.

The baylibre team seems to be handling some of the mainlining effort,
so perhaps they are in a good position to provide relevant information.

There's also a specific mailing list: linux-amlogic@lists.infradead.org

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
