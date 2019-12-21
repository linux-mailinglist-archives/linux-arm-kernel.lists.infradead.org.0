Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D9C01286CA
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Dec 2019 04:34:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ZJ6sKDqQBWVo8d8ow8tTjzD41ow1kh2/OYquQnd9dU=; b=cmHlvI+zow81Tu
	SuKOHZc9PuPe1FycTMAuORvYOg5zV2pW9dO4JuDyo2zzRFyVenJF0uxKWx/suqeKyLmMXLSwOko5l
	GziiAB/tJpM1M+UtvqhhMTuIzdbwTnCQ8RJaduHSHGDTQI2qE8xbq7hbGqcnrklJCMf6lLBWCJ34s
	dgJAwlhx2LMpcq75pD+SEXRGClJ8g5rR3XKUVYTgYsZylVHhN92Xu3ol/dnDHsjCBWOXRZiFjqIme
	u46Ka/QQ3Jvpz7u9pUjxkREFUXSr8ComMAHi8LP/wKzVj3ZsRkZ03R3yKlgS3za8e4LUI90L2Z9qs
	3PpB9Eo8ZVUWqB9KUnRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiVWn-000248-IN; Sat, 21 Dec 2019 03:34:05 +0000
Received: from mail-pj1-f43.google.com ([209.85.216.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiVWc-00023m-D7
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Dec 2019 03:33:56 +0000
Received: by mail-pj1-f43.google.com with SMTP id s7so4985449pjc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Dec 2019 19:33:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=qws5CPAqhRojzAUcrHBR8H02fGpbwP80vs8gUidxd7s=;
 b=Dtc0PzJe6hpu46PUKpI77mNG07dA0sNYjtXGTOM2z1mfOu2QNiAaxlcF6u3eFANbVI
 EucmnWkOQOLpJ79EoeIrsWQ7iPN5Cbl/fyw+3sXwvEINRFEWwt3cwE4F3MOdxTonZrDw
 M4fgLuHhXBGaG3pLPSQ/MQUg64Kt0/2hR151K/tWXzAFchkL61qizsFMTP5o6CkTJwVW
 tcZXWCUoDJZ1zemlr5VqnsbGkXlHTDpC6R7HNsIdAzn3vtrlWzps0WTgZdOWNW6eexnF
 EQunxlgoYoansOdYx5n9IY18f9UzOpkf3+qkEfSgl15HoC4QseDsxKIT4+WRLC3AFgaK
 y9XQ==
X-Gm-Message-State: APjAAAXJkwWTgeKHbOMtSXHAnoFDgWuCgFjkF4m9+9jv/TyM7Bbaa/q6
 Cwz1EgWKGFlp2JPONmbExbXDzaKpeTQ=
X-Google-Smtp-Source: APXvYqzZlF24+xsN6j1ycd0XjSY2W7T0RxoK2ed19xbwru+npY82Ufy5bwCaFjT6a5EFUGGA4PpybA==
X-Received: by 2002:a17:902:6b:: with SMTP id
 98mr19452157pla.128.1576899232105; 
 Fri, 20 Dec 2019 19:33:52 -0800 (PST)
Received: from [192.168.1.34] ([121.99.248.170])
 by smtp.gmail.com with ESMTPSA id y26sm14403183pfe.65.2019.12.20.19.33.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 20 Dec 2019 19:33:50 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: Re: iMX6/UART imprecise external abort
From: Andre Renaud <arenaud@designa-electronics.com>
In-Reply-To: <CAEj2-1PyhkhEJ1+uRWio4vYxGuFOuR9mpZOdxmDDjGt_Az+3uA@mail.gmail.com>
Date: Sat, 21 Dec 2019 16:33:46 +1300
Message-Id: <FD3C2267-A9B8-45BB-B027-C85DB5E60829@designa-electronics.com>
References: <CAEj2-1PyhkhEJ1+uRWio4vYxGuFOuR9mpZOdxmDDjGt_Az+3uA@mail.gmail.com>
To: "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
X-Mailer: Apple Mail (2.3608.40.2.2.4)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_193354_442427_D795CC5F 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.43 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.43 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Andy Duan <fugang.duan@nxp.com>, s.hauer@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>,
 =?utf-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> On 3/12/2019, at 9:40 AM, Andre Renaud <arenaud@designa-electronics.com> wrote:
> I am working with an iMX6Q system that is exhibiting a crash when
> using the serial ports.
> We have /dev/ttymxc2 configured as an RS485 UART, and are seeing an
> 'imprecise external abort' after some time of use (panic listed
> below).

Following up on this. After various attempts to replicate it on different boards, we found that after enabling the SER_RS485_RX_DURING_TX flag, the issue went away. This in turn led us to discover that the issue we were seeing is the same one discussed in this prior discussion: https://www.spinics.net/lists/arm-kernel/msg564268.html

We took the patch there, modified it to suite our kernel, and have confirmed that this resolves the issue.

Can anyone comment on whether that patch, or some variant on it, should be forward ported to the latest kernel? It has a slightly odd timeout in there, with no error return value, but apart from that it does resolve out issue.

Regards,
Andre
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
