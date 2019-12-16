Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D3AC120156
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 10:44:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0rWkT0qyJJysZczoLWwvi+i4rE6m1BqUIWbz0PKZ1TI=; b=IkS4AQvXuiNDoR
	9+DtnHsPfkxalcUI8oLnJcDJnXUzrNk/2RiqIJ9oXE9Mflc11pICNYUWIJZWv2hPnS6DGk+BhYaIC
	ssqr4Io1sjHExWDkAvLKoekhwgUR4uhbvxiHfWP1n/0MsZ39uc/7JEoT3KfIXinHgE7rPcDN1NKzA
	iVSAGi59fZ+sULrtzQnMFiDtLRiDfQI+JE26FcyQdoZJUBDz5fHCsJ+/EY3zDSoR7B7QkI4C6o/AX
	ROmaGQUVvMpPseHqZ/eB8tWu6CItMfRwalsbOaG5lemEOSTQnUl0pUt2At6irEbpnUOnqXjW/Ht7A
	Bq8D5f0hiOo8UiLg+6wA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igmvK-0008EP-Kp; Mon, 16 Dec 2019 09:44:18 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igmvB-0008Dr-LQ
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 09:44:11 +0000
Received: by mail-ua1-x944.google.com with SMTP id v19so1854389uap.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 01:44:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6cBtmKWsLcFEesk9As3Zqq5Dsa1by5Ki2QFbfWPIPMw=;
 b=vN9q0WoAlGGzmzPAUIa3Bf4RlHBveDfHPrbcYTXgQlRRfnqfpRjJqT9LcZ18SjP/pe
 Ql/SG9e4hN07gc+/JTgJYOY6E7VS4Lgn2JbB5qDtLmhUv+fJMuIq9zF41qU/liDNqaPk
 JIgzBHMjV7zV/uaqS44Yfd25jRg0WXP1MUVHWP3bzoHnLgUR8H3lrVvfTWfhetHJm987
 4sanJLDTIwBgAbBrTBxIKWdG8zJ4w4Wo+stuzOSAUk/ZaE+RD1eC4JPIQBRj8YC+aomR
 KpfEjEflO+Jxh2Sc9yAz2gagL24Ad34o+j+p55NSzs5LvwJCbDE+8H0Bh5r6FtayP452
 SrMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6cBtmKWsLcFEesk9As3Zqq5Dsa1by5Ki2QFbfWPIPMw=;
 b=MkEdKcqT9vnYr0+WSZgl9PLgfuq4X8FAk+Ji9RFHUqcZjd+b+YjW/TtAqvblMem0yv
 LkxivhUYElRy6jxteElTBNJexEf/5jDfb1stAMasWPl5afvZpo/+BJ/7tJH9mONgUc8D
 AOO4DVU9100vo87lyxq5TRSq5Kai6bYnnpA20PnuhiPaW/y3ZcyTjc7fhLv5YMgn/70t
 S/jIiBLdKOKU4y4TyBq2nKitKt4UhY8XaVQbcPEEAkAyDSo4PdihSl6XSBhwJn1XBJ70
 fsglT5D3YcNRKPClDQkfCAq2KLSRl6nNAjp6yk7ylx6rciE80FPalE3QDjeUr7sbZzzc
 9QgQ==
X-Gm-Message-State: APjAAAX4cKe8RsW9MUo2sAtWp08EWKKXJIZTodzftr7ob7DqPy1WxYKq
 0fbwxHaD7ujM2R8b/1dCMGwdE5RDdHtXJ46Y7rTnzg==
X-Google-Smtp-Source: APXvYqxZqWfu63h7+QfiSM+bLvm/MTrgs7ML2u5C04jZw3wt+JrhTqX4WzahGvEan9Ny/1cGTQCA41TLz3q5BlgZNQI=
X-Received: by 2002:ab0:32ce:: with SMTP id f14mr5283635uao.54.1576489446278; 
 Mon, 16 Dec 2019 01:44:06 -0800 (PST)
MIME-Version: 1.0
References: <20191215210503.15488-1-hamish.martin@alliedtelesis.co.nz>
 <20191215210503.15488-2-hamish.martin@alliedtelesis.co.nz>
In-Reply-To: <20191215210503.15488-2-hamish.martin@alliedtelesis.co.nz>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 16 Dec 2019 10:43:55 +0100
Message-ID: <CACRpkdZVPaUBSkoymOL9iWfa21U4s_zPLoJdcEuWeYn_DAbkVQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] pinctrl: iproc: Set irq handler based on trig type
To: Hamish Martin <hamish.martin@alliedtelesis.co.nz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_014409_728748_3209839E 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ray Jui <rjui@broadcom.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Scott Branden <sbranden@broadcom.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Dec 15, 2019 at 10:05 PM Hamish Martin
<hamish.martin@alliedtelesis.co.nz> wrote:

> Rather than always using handle_simple_irq() as the gpio_irq_chip
> handler, set a more appropriate handler based on the IRQ trigger type
> requested.
> This is important for level triggered interrupts which need to be
> masked during handling.
>
> Signed-off-by: Hamish Martin <hamish.martin@alliedtelesis.co.nz>
> ---
> v2: Alterations based on Ray Jui's review comments
> - shift setting of handler type inside spinlocked region
> - install handle_bad_irq as default handler for uninitialised interrupts

Patch applied. It just looks very good.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
