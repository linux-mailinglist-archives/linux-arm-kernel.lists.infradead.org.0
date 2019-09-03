Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 253C3A6AFC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 16:15:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l5SCScTh8Gm8TT0pahgrRLQLllwqxex7zq5ot1D68UY=; b=E4c1LsQqe/wNQ2
	htfBEELiPBfjtSqSqdD3eZFTLSNCNm5P9LPHY15o79ykAWsMgXFcMm5EWDPoP+AiXkhjybYZ0cgGQ
	0R6r5wsDLD6NpKnyYp1GfBzJrxjVKcKFdRzKM5/ImnD3m7Rhs9JzH4iiBcbmTmB6JB4D+P/AGit6G
	/kVgUBFnivXxyhW0DDBQuUCo19OHuI9Cq2L7OUa0jpOlP+yWkRZJZIJaO1OacE3EvR1NoYd90wbbi
	DST0yxIsngbiohbGYTYlBYBnuLWybhzpZl03Q5+uxCtMzqVlDMHNFGVp7Bcae6F+QxnzV8PpQSHTQ
	+n0zB5ae1L6Dhg7ekjXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i59a8-0006hw-2c; Tue, 03 Sep 2019 14:14:52 +0000
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i59Zw-0006hG-Q5
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 14:14:42 +0000
Received: by mail-qt1-f196.google.com with SMTP id j15so20029893qtl.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 07:14:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uZuxXXMlAYNSgtrDo0fBJSBMOeWiN9xN97X6WAr23F4=;
 b=jcCKtA6nz7kXAg3V00sWU/5BGKyEZ9VtunIhdHQyNpyNha+ZWkglW2dnpacvMnUu+o
 EbHN+AEWqvzulpobTAKz8d4FDNbEDNkP0XnXuRYVNErkd0CiEXAyYE0TEmcuROM4Sb0P
 JZuXVpMP4zdeV5HxuWSQfv1hfslztRuf8qoXWUvxj7uhejx57fEOdU14XsMnkVUO/MBD
 eLV6grt9IDyXMI7Gpen3263FzvQ4Er8cAqfnfFWjDZPeXv2F35hYpEK4Q7vp0vqdssOR
 I2HdXdUdaqfCzszv60gqErwqiPRM3G1wGtHy8BZmuRsu73pKzaJCcMp9795IxauYAJjM
 XfEQ==
X-Gm-Message-State: APjAAAVSYJUjFUuEFDGiE3BGBgjiBZw9jkewn1zD42IEz5ZHhlHALmun
 wrkHQSMAXzEjMPnlHtNJ62pOLPfcMdd7P3rurvY=
X-Google-Smtp-Source: APXvYqxelYH9THh93iIcl3wa1OLv6f7pgPHKDWhhtXYhUd64qKHC4ZPdbqr0L0BjKsY8IVk5YfziXZyPIgVPl1f7ccw=
X-Received: by 2002:ac8:32ec:: with SMTP id a41mr3105234qtb.18.1567520079928; 
 Tue, 03 Sep 2019 07:14:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190825202642.GA18853@piout.net>
In-Reply-To: <20190825202642.GA18853@piout.net>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 3 Sep 2019 16:14:23 +0200
Message-ID: <CAK8P3a02iEsnCc2chJzAs-z=1DQ=P7=WaA1q4EkOCUNxAwwALw@mail.gmail.com>
Subject: Re: [GIT PULL] ARM: at91: DT for 5.4
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_071440_841594_57A75D4E 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.196 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.196 listed in wl.mailspike.net]
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>, SoC Team <soc@kernel.org>,
 arm-soc <arm@kernel.org>, Olof Johansson <olof@lixom.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Aug 25, 2019 at 10:26 PM Alexandre Belloni
<alexandre.belloni@bootlin.com> wrote:
>
>
> ----------------------------------------------------------------
> AT91 DT for 5.4
>
>  - style cleanup for at91sam9x5 based boards
>  - avoid colliding node and property names
>
Pulled into arm/dt, thanks!

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
