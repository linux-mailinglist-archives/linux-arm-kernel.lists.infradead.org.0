Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69EAC9DF0A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 09:48:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tuMx1LFkQ0CV1UEww8kHORQBsBci3qcxkkaWkMz5WTk=; b=QB7cbvLErqpM89
	iIthqwQjqqk4ot1ZPbbtE5pzuWHY56zZd38ZAZrNY5FeDtjR5oEo6j/qTsNPTkwhXUDip9MGumzSQ
	nvRqd2PA8Z3hTIvbOsAxiuiG4z/po/ge3IhL1b+YcW+lAUQbPiCSWYq/HmhnEFkas7H7B71JzYcXK
	gdJZC+IJ5sKrwcy5CvYamiy6zJoBNIoeWJ21GYNmr7ttOfzlOrT8qtZjnL2KwCmOXQwrV2wa3hYTj
	RyHY3otgxgjYWwWW9rsC9D3iZQx6EMt3JvGcLCG5Tt90XKcC6ea8pZ3hFnMrq/NBDhuXMzyV2jlCf
	Wp9xeGwSZQNegtquuctA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2WDe-0007vj-Jw; Tue, 27 Aug 2019 07:48:46 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2WDJ-0007tc-5f
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 07:48:26 +0000
Received: by mail-lf1-x141.google.com with SMTP id x3so14386584lfn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 00:48:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aveC+J0Emg70L/B1CFCLvjS1bg6ZD6IQEoHlPzidU2A=;
 b=bW88/I9JXEKxT3chuNfwZrt8FeUG3zWSuZesoGgtpHpXTLtbJOFd/DU/mBh+W6VzSs
 by9Ao2XxYZ9uGyUmg0K8e53M3Yjs7NJ83vm5SaDncrWKNB9TqgHG22+Q0en4/i9wwH3x
 6PpT4b05IFeJWKYyyD2rVraNSspG3sv0/ZZfijfhd1RNco5hpGRnKqV5+N5yrdg25YgJ
 Bnb0WDlUcF0y5leW8CpioPlFc+sB5i6orfMKIUJ0/2PPla7H9UoWPpMlMW+SfRtEoKFo
 Xcj+RfMC7SQIPLPXDMkc8/XM8x18LlxuVRuYvC7023xhmnsoFHKXM6T9rABZhapzB5P0
 T3bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aveC+J0Emg70L/B1CFCLvjS1bg6ZD6IQEoHlPzidU2A=;
 b=OFWCWzdqgq6GiBu2Gr/1T1+cKSXoGogylhKqDB0XWV15JIsa4xMaf86Q9BsPsimaxq
 XLYGlRbFBdMCFFSKIv/pI/JIDHgXb9GQRs315O09HA4K1IGLDkDnL8cdoP4LYZS/AxiA
 o+myzUdNjTQjT2goUog0+hGxBPjrz9LcTg0T6PoZYApY4R1XvPjaxUrBnaNWxeQs8WhY
 i3BwHjtyt41hz9+DNWIXO+fCA1xsre0jwLPNgx58TsvIXBkz7wriKiOZSACFLuKUheCf
 2TRH8/IUl0BhOMD9l8FdZhKK3PrxAXoum2OKiN5aen/8oVz2QuZm/IEyrVGuPQwvWanV
 83bg==
X-Gm-Message-State: APjAAAX1swt5ZgTkibU7e7fY0lCD3ED5rpN9FIBjHUshORwsgmlbPpyh
 s/yLnzcbRhUAudhQUtb8L/raNjU3YeCB08UHSl7VNA==
X-Google-Smtp-Source: APXvYqy92ggM9A9QQ39Z/XAAwL5t1r1hkGmphw6DxMCCSZvgAh3WXo6lhfeAobnylDIIR5NiUXp+qWcOMrVSnuSl9Uc=
X-Received: by 2002:ac2:59d0:: with SMTP id x16mr14124035lfn.60.1566892103825; 
 Tue, 27 Aug 2019 00:48:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190805101607.29811-1-miquel.raynal@bootlin.com>
 <20190805101607.29811-2-miquel.raynal@bootlin.com>
In-Reply-To: <20190805101607.29811-2-miquel.raynal@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 27 Aug 2019 09:48:12 +0200
Message-ID: <CACRpkdbHvCUF1zkMUEcQJPmb=V8VudhU-JN+M0fRZ0tyA28Htw@mail.gmail.com>
Subject: Re: [PATCH 1/3] pinctrl: mvebu: Add CP110 missing pin functionality
To: Miquel Raynal <miquel.raynal@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_004825_216444_F938C633 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Yan Markman <ymarkman@marvell.com>,
 Antoine Tenart <antoine.tenart@bootlin.com>,
 Grzegorz Jaszczyk <jaz@semihalf.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Konstantin Porotchkin <kostap@marvell.com>,
 Stefan Chulski <stefanc@marvell.com>, Marcin Wojtas <mw@semihalf.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 5, 2019 at 12:16 PM Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> From: Konstantin Porotchkin <kostap@marvell.com>
>
> Add missing definition for function 0xe on CP-110 MPP-62.
> The pin function is Data Strobe for SDIO interface.
>
> Signed-off-by: Konstantin Porotchkin <kostap@marvell.com>
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
