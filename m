Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97A04C2184
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 15:11:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hWfkqm/Z+pBncY4Q1VRHqLVSuxLC6bT4FdOb+8aNlX0=; b=r5SvlFPPOTugL9
	cO7uuNNo7zRvO25FOrpp1XaqEZJg6UXNOuYZ/ngYYImB3RNi5IqUE84uGnD0FypjokFBNiSfQm+hs
	u8Z4Ue4fA6Uej86o9WP7aFs7voiMmEP06ZbrYvAGNfuNjsxRrXsba2wXMfWC0rFDW3CAhd4YMa7T5
	/dNAx5SODr9BQY6wBTSJdgGmtlAK2OdJK/Wv6SLyOp+8RvLZZZoZMeE4e6XuczsHKLMXahHddCsEs
	XE5DOCWuUcBatgpmNMNQG+YFj/gEpzsS+EuDsLtYCQIY8cGY8qMAzguZHfRsiWiWFXJvrbN5fDYFV
	o3CV00HimIlVS9nEcBbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEvSp-0005jx-57; Mon, 30 Sep 2019 13:11:43 +0000
Received: from mail-qk1-f194.google.com ([209.85.222.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEvSg-0005j8-Bm
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 13:11:35 +0000
Received: by mail-qk1-f194.google.com with SMTP id z67so7630475qkb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 06:11:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yvTBruD6zaxn4sjv75YBQD/wvJnGfoapWmbizXNwOe4=;
 b=m7y+6KyesSkJKxyclDhkAoTsCsFznzBiUS2fGHfR4RxlnPFM3vJB75hs2txCtVb35d
 a5cZog6VKNoU6PsZEWyOidF0oquFcHe8jy9pY1vFuUa+TqmA2iWesAYuZ5oCanO3wwNc
 KHv1nONNL7wYfKhJZx7YiD+omgXfS7SbimaDz1x6TxdcqunTkbR6R+tMJb84JLEUluo2
 kgk75mH5W7XXecDgwIYZYAIHdgaraMmadJxskfOnxEroYduMoFGYA2YWA/ljPivkBkEK
 hBQUXCxhk0cpiRWQj4o3tzOt7hsQ/QtJM3/g+HeQt+qwoOQ0xi/UTCIm2eSlZkcnxZ85
 AVKQ==
X-Gm-Message-State: APjAAAUFCgrWK7/13dJDZsUv2GaP6Pf0N7+MNGIXTVP1F0YN3mWLE7cu
 Qok2YiJyfbdMYpv4a5SXT2xKL5/nyvpPT8T8ZD4=
X-Google-Smtp-Source: APXvYqxTTAYfkhCHkzMgXzRRscqOu03R0zgUehRs/wbuLHGGTGki2kNYI5vG0oUjtCDGe/Os6ctHOkQ9bUK6AsOCYAI=
X-Received: by 2002:ae9:ef8c:: with SMTP id
 d134mr18891406qkg.286.1569849091986; 
 Mon, 30 Sep 2019 06:11:31 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1569831228.git.Jose.Abreu@synopsys.com>
 <8879f74a8cc5dffdb14d553c321d64c63ea9fe2d.1569831229.git.Jose.Abreu@synopsys.com>
In-Reply-To: <8879f74a8cc5dffdb14d553c321d64c63ea9fe2d.1569831229.git.Jose.Abreu@synopsys.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 30 Sep 2019 15:11:15 +0200
Message-ID: <CAK8P3a0Fzvy=PGDKf-K_xSCpuboSJTVY5voYMFJTNhWHkTw-DA@mail.gmail.com>
Subject: Re: [PATCH v2 net 9/9] net: stmmac: xgmac: Fix RSS writing wrong keys
To: Jose Abreu <Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_061134_399806_0633BC99 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.194 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
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
Cc: Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Networking <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-stm32@st-md-mailman.stormreply.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 30, 2019 at 10:19 AM Jose Abreu <Jose.Abreu@synopsys.com> wrote:
>
> Commit b6b6cc9acd7b, changed the call to dwxgmac2_rss_write_reg()
> passing it the variable cfg->key[i].
>
> As key is an u8 but we write 32 bits at a time we need to cast it into
> an u32 so that the correct key values are written. Notice that the for
> loop already takes this into account so we don't try to write past the
> keys size.

Right, sorry about my mistake.

> Fixes: b6b6cc9acd7b ("net: stmmac: selftest: avoid large stack usage")
> Signed-off-by: Jose Abreu <Jose.Abreu@synopsys.com>

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
