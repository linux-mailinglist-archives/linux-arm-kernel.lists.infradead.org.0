Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC61FB6A8
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 22:31:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LJbOGi8aCRPderhWJUC6HglD14H1IxXMpt4TynKflIE=; b=k4GfFFD3gHzNG/
	+/IxQCOV7Vp+o9bC3D48LeGQ0mIs8vmThxr0KjEbuQaVZ9Mifr/4sVezHiOlCvGkRz0oS3oCV1d7r
	wT4/Yymo7QEaEifOvMIz0aYdmDkt8F8aUboniboV6lZINllxtUzml9bo5h8xLQ/lFha8uwz4hdyhV
	IhspnRR7sUxZntQzFhmNVWxvWA96+BSqO425fElJQH5r+g5oTlYw8ho3AtkH/nnfQ1ZiOeijwmbg7
	G+Ff/PnLtN2mXcW3FY0eZGjdXnqOqhWo1Km3gDpevxGnVR7w0B23CvRM5fn1/a9S1Nx6XO6LBidBT
	qMC7Fhu4QP8j5LeIwu8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKqSQ-0004AH-TH; Sun, 28 Apr 2019 20:31:30 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKqIu-0002LP-Eb
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 20:21:50 +0000
Received: by mail-lf1-x144.google.com with SMTP id o16so6340547lfl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 13:21:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=1QT1sK+ANF5OG/PefqUzMYvBnb84fl+mwlYnScnPHm8=;
 b=QGX4h6SdMKi8crwz1Cm20GvR6BYGAhmkuis0Z6KM9Q283K6/Mg/WWro7uoEt+kMid8
 Z13A0leNzkuTmkmgxuqD6e/9rzi6rdqhl1FtuoV7oYxoWn+VZhchNQbQOBkE1777l0Op
 jgINLab3OCW5aXv7fol2+LZgF7ThXruNK0RMUI02+iLCju5vAS5tFMjRLwWU7z8Los5g
 nzwodRVJ3vE+SgrQXXk8MeUueu0g/DcMXmLc6gIKdo/Q50xEyrNolYKkghXOzk0U+/CN
 O8ZQh2MBEZDNVzzz+Jiv3fkEVi1aQN4P067/vNovarmcTuk1/dFzfifxNUUGlT9bj16n
 GlCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1QT1sK+ANF5OG/PefqUzMYvBnb84fl+mwlYnScnPHm8=;
 b=sgfJlvIDBosfOx2trGESax1dLoyA6gT5HrfV04p8sm3HbQL6NkNqeMR4YtcrA7beld
 DIIQVq7dx1qy0d3e10CY3uI7XRkuoVqUFG0AEPQHgYt2ykvzru+snfg+oWExzhZu4AMG
 NG1ZFYKEnZWPGj8meiF/g850phJ20OiAktgB+J1Bw33S0RlhBmMA6GmLj0RuE9xC0dRT
 vbO6gXpNEE/1+Xo6N0jK6JlG1c53K/CEt4OoqgZuHKqE2Kz3APsjBoyu8pQ5KKMzF4hQ
 3RWzu8iHecijRKnEpy0ZoP4fS94LyYaWh0YMNHgviK2x3OVPUWIrm1HP7o6DRqSq+5W7
 OMhg==
X-Gm-Message-State: APjAAAUJ1CEasOLuDkZlVDaIzUHRaBQ1Di2SkyPzvm/+DCIv9TZey8Yz
 mI7Jr0pZNi3mZyk0idsQXY1pFg==
X-Google-Smtp-Source: APXvYqwnbEjOKlwCNKl7E6dXgVKxR/CBq94EMoVDAvx7iWMWVRhhOw1Rcq2bTmtmdvahCETBTTgr7A==
X-Received: by 2002:ac2:50d5:: with SMTP id h21mr5312226lfm.44.1556482898800; 
 Sun, 28 Apr 2019 13:21:38 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id d22sm6937783lfm.57.2019.04.28.13.21.37
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 13:21:37 -0700 (PDT)
Date: Sun, 28 Apr 2019 12:57:53 -0700
From: Olof Johansson <olof@lixom.net>
To: Matthias Brugger <matthias.bgg@gmail.com>
Subject: Re: [GIT PULL] dts64 updates for v5.2
Message-ID: <20190428195753.fxfhpkcckeajjut3@localhost>
References: <5ea296e5-92bd-5790-c075-cf4bcb74d88c@gmail.com>
 <47e01204-41b6-ba89-cbbb-3f684e3a7dff@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <47e01204-41b6-ba89-cbbb-3f684e3a7dff@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_132140_910574_B268F20E 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
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
Cc: Ryder Lee <ryder.lee@mediatek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Seiya Wang <seiya.wang@mediatek.com>, Yunfei Dong <yunfei.dong@mediatek.com>,
 Erin Lo <erin.lo@mediatek.com>, Fabien Parent <fparent@baylibre.com>,
 arm-soc <arm@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Zhiyong Tao <zhiyong.tao@mediatek.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 24, 2019 at 09:55:46AM +0200, Matthias Brugger wrote:
> 
> 
> On 23/04/2019 18:12, Matthias Brugger wrote:
> > Hi Anrd and Olof,
> > 
> > you can find below the pull request for mediatek related dts64.
> > 
> > Please have a look :)
> 
> Unfortunately the pull request has a minor merge conflict with the serial/tty
> tree [1]. Is there any action needed from my side?

Nah, that's fine. Thanks for the heads up.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
