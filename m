Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C0315BA3D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 08:45:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P8dETZEL9a1CyDzUPrHlgIlHKDQVYq2uu4fJwcCEGeM=; b=d8N0BLHg85d1/T
	sUeTN9cPyEJIj65bXG4SjRcC8TNLl8X43zMX0A7PA477BVe587SMHc4PyFuHeaRFeSC31TFyChhQo
	Z6kciog2M7KxOjG52xHn7UZGriV8uiBmncpxWkuKSHRzjVpO+mcs6vMyAy5qxNU/I9FRbdqpGr79d
	tjs62UGrrMlpbBqQCRvDXpUOQ9VPt1S6nu4zSmBYsvWpfQ9pMOuWuoFLWwS110b+te8ktgnrvKJvm
	uNVnTm1Ve6zpGJa9WTJhZqsY1jiTDqdELq9pw2QDCRg0LJ8pxoU4yzbnialRBzRGXpMRhtpEk29dS
	siYIy3PjCZJJ1IrdOUOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j29Bv-0005WK-Hw; Thu, 13 Feb 2020 07:45:43 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j29Bn-0005Q7-0W
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 07:45:37 +0000
Received: by mail-lf1-x144.google.com with SMTP id z26so3509269lfg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 23:45:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=tccHDFw8Be0tCiwLFmvqNHBCYLNSpms3aI/0Nu1Lkcw=;
 b=biWiIy6cSpYBYseYC5rG9zg0yZrhQDMcxudJjex+4XKfDJs5X9uRsoByIs3ZPg2On5
 jo9rIt6nZQenqD3JNRPCsh+HcCyg6TQGtIvpn6dorob+z2JtRRyIsV08SbF1Ftkt+eMX
 +sSnpaCuqr43G996HOyFc+XyiKQV+fRGDUvsQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=tccHDFw8Be0tCiwLFmvqNHBCYLNSpms3aI/0Nu1Lkcw=;
 b=qpqV0bVh/BfoA3Rrqi1PKcGm66L/L82ht4aBu3xBN+Yv2fm/KLWzj3iai2mCwQ7FZ8
 CEzw9euavQlbPDtmXXPcI+9wW/sTYCrCGdIkJLmwrU7b/mhmqN9q6psp6M0sITZWh3Ur
 zVWEJzBSQbDj6j40pbEdb9Qdb3cS007n422a8ZWxgxRkVkUtVpxpCqKoOFLJS9HYv5I4
 Pq4yxtyra7GNoJKtyvHfiU3iyQaucLb7OSwG5qYXRxm0oMpVIvDzSk6B56MW/Mg3sJGJ
 Guo7nGXEFYI4EfHb0Ytg4/fDJfAHq0vKV7fKNFN7jnm1gKQV99wXEHM9EqKrUCf3gM0Z
 h11Q==
X-Gm-Message-State: APjAAAWkxrmsZqZBrf/RQckAe9QoPH05VPaHpVE3NlI8bIPaMr7yH/lL
 2GtfsDbVYf5CiDfvUbTrdCbOYQ==
X-Google-Smtp-Source: APXvYqw0quAloIVavV+0KAsCtOQX6LMqkFeiTVZoBqg/BRZSHx3nU8/X33CUk+TdrSB1k2JH4qEHWg==
X-Received: by 2002:ac2:5391:: with SMTP id g17mr6979327lfh.93.1581579930294; 
 Wed, 12 Feb 2020 23:45:30 -0800 (PST)
Received: from [172.16.11.50] ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id h7sm745141lfj.29.2020.02.12.23.45.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 12 Feb 2020 23:45:29 -0800 (PST)
Subject: Re: [Regression 5.6-rc1][Bisected b6231ea2b3c6] Powerpc 8xx doesn't
 boot anymore
To: Christophe Leroy <christophe.leroy@c-s.fr>, Li Yang <leoyang.li@nxp.com>, 
 Qiang Zhao <qiang.zhao@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <0d45fa64-51ee-0052-cb34-58c770c5b3ce@c-s.fr>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <f67f7566-24f2-9c71-36be-2e55ec436097@rasmusvillemoes.dk>
Date: Thu, 13 Feb 2020 08:45:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <0d45fa64-51ee-0052-cb34-58c770c5b3ce@c-s.fr>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_234535_994429_94D79846 
X-CRM114-Status: GOOD (  16.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Scott Wood <oss@buserror.net>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 LKML <linux-kernel@vger.kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/02/2020 15.24, Christophe Leroy wrote:
> Hi Rasmus,
> 
> Kernel 5.6-rc1 silently fails on boot.
> 
> I bisected the problem to commit b6231ea2b3c6 ("soc: fsl: qe: drop
> broken lazy call of cpm_muram_init()")
> 
> I get a bad_page_fault() for an access at address 8 in
> cpm_muram_alloc_common(), called from cpm_uart_console_setup() via
> cpm_uart_allocbuf()

Sorry about that. But I'm afraid I don't see what I could have done
differently - the patch series, including b6231ea2b3c6, has been in
-next since 20191210, both you and ppc-dev were cc'ed on the entire
series (last revision sent November 28). And I've been dogfooding the
patches on both arm- and ppc-derived boards ever since (but obviously
only for a few cpus).

> Reverting the guilty commit on top of 5.6-rc1 is not trivial.
> 
> In your commit text you explain that cpm_muram_init() is called via
> subsys_initcall. But console init is done before that, so it cannot work.

No, but neither did the code I removed seem to work - how does doing
spin_lock_init on a held spinlock, and then unlocking it, work? Is
everything-spinlock always a no-op in your configuration? And even so,
I'd think a GFP_KERNEL allocation under spin_lock_irqsave() would
trigger some splat somewhere?

Please note I'm not claiming my patch is not at fault, it clearly is, I
just want to try to understand how I could have been wrong about the
"nobody can have been relying on it" part.

> Do you have a fix for that ?

Not right now, but I'll have a look. It's true that the patch probably
doesn't revert cleanly, but it shouldn't be hard to add back those few
lines in the appropriate spot, with a big fat comment that this does
something very fishy (at least as a temporary measure if we don't find a
proper solution soonish).

Rasmus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
