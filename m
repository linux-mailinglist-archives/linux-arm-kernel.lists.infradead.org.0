Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3105D81749
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 12:44:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lr51ltLEl6ddKr537+4cKhdQBpsK6URus1Wc6qXlqBs=; b=hsITbO/BPSQ7t0
	OPxwCVoRM5301FoMuBkgMR5q8Sqp5qtGxTV+iDcJ6HWRnIlvGQG3ck+8Ylkdr2NaSgcQHGs/IElA+
	XjUsBXe25Onl3ACKlZwvJbDnBAwZGCBtYKkbkQxJxjUezUKLvg60L1pX/vcfe1TQERlxMP8FcRRWa
	4Qf2k2i7iQVLqIadqIxlIxJkiFQruZV/U2ZgBjoBTCxiesaUSLWv3Tnqye7oUQ3iDr3WeiAq0ZqOl
	uHOsXnjgh6SVeb9ZxKu+8k8Y9wT7ylBn2ot45lGa+/MVSZH1SM42im3+w70q0QVUTYjryoF1Oc8bB
	px6fI0EH13WElNRiL0wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huaSu-0007ko-PB; Mon, 05 Aug 2019 10:43:45 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huaSH-0007kR-3a
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 10:43:06 +0000
Received: by mail-lf1-x144.google.com with SMTP id b29so50306956lfq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 03:43:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FNuA6/9fhDtZ2LA/XhT5TM5n9GcO4T42zHctSuCq+QE=;
 b=ZqKWS/7PAIhTkrjtw+GzHRAkD9966ILvMv4i8DSD/p0C0m6oeCBA5UKCB22elJeNfJ
 zWiKm8UHSaQlH8pUZ3AZbvyx4ZBqw6BkeYLgJireYNPJmj0q2uqDnTzJCp/jQxiaax89
 XCh32PWzJhWMXrG0JnXQJjWeNR65juG44BK9cUuZ2gKq8V14CF8zLoJyE3HcYK+XMi2Q
 DQtRf+3O3nR21FO5G/p3IrM7QSNRG15P4rv6CZEdT3mTViEGqgzNB+Lz65tM2cCIbL/b
 Mdp/TrttDV5dSNyEqTNV3L8pbAvkos2UKTsF8pX+/GaSCsnWP0IqyW1tDstJWH/iA/sw
 MBQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FNuA6/9fhDtZ2LA/XhT5TM5n9GcO4T42zHctSuCq+QE=;
 b=rJkcv/PA1HTehKYBGKMvbB908219BPkWzcZqwgtqpvqXlkSOeeUHOlkXCYz3okyedo
 begdxkW5675irWu0MWXUv9PbrEp2abN4TKe20+G7TY1jUhGZY1MFlrZjiwBkQKwWYmCG
 Gii5ph0cSeM+psKQZXIxxEqQ+69xC1kyfYW9R7gP2w2UxUVCFSyeOgT1MzLctDByhoBk
 ykMxHnhsh0U5f2rKoVGgJyn7TnfboLdBaFbkr2Lz9bCIpPexJ7N7CHd9Ogqutd4kWRx9
 OQhYKvU75kL6UcteewlhnPwWKgk7u6yvelpgwusTDppXxBCNdorhRbdWV7Y5K+F6PB4H
 qR2w==
X-Gm-Message-State: APjAAAWfmtz1cp4K+J4VaAKPRutmsW4Vf+LK5Uwb0QA1d+xjaFdsiymX
 VEA+CKohiReCq7HJvtemMNyAG+Y3XYhNgceCNq17rQ==
X-Google-Smtp-Source: APXvYqzUEX+wRaUh5h+0CMDXrhYbMXJyYq5FgUc0gxHkybrHmYXBX420COs0UI1eqAlKWrcY6dDdA4a4Mno7k+9cWAE=
X-Received: by 2002:ac2:4c07:: with SMTP id t7mr1415879lfq.152.1565001783694; 
 Mon, 05 Aug 2019 03:43:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190711041942.23202-1-andrew@aj.id.au>
In-Reply-To: <20190711041942.23202-1-andrew@aj.id.au>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 5 Aug 2019 12:42:52 +0200
Message-ID: <CACRpkdac+yqO9BEJ67UMD=uQVfMzE=s9oHqaSOB20-OboBMVVw@mail.gmail.com>
Subject: Re: [PATCH 0/6] pinctrl: aspeed: Add AST2600 pinmux support
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_034305_157271_70255A81 
X-CRM114-Status: UNSURE (   6.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, johnny_huang@aspeedtech.com,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, ryanchen.aspeed@gmail.com,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I applied this series now!

Thanks Andrew.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
