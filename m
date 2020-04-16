Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 986581ABEDE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 13:11:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zmNXzxjkInnx28cY9jyg4jv3Xr1j7G8TuxHASG/mVXc=; b=mYjMZeaUj9v5hL
	nMos39PMhgLjuDrYBkBgu52NN8LX6qqOGL49XYRfiKlvmyDF45X82ewkfSSHxakDGV51L/2jJx7ce
	y1SRKqoRytxG5IqnPeo/YCZcv2FFF8n3WYXi+fzuB582S4EEUQCFoqFc8rnfVu4B+R1TTIgyeGPYV
	+1P1zcBKek/OrkiA4RkNilnOtXKU+hDJDEYXk355d8R6+oQXGtGHid1Xa2ZyedSUKSESoWWoNWTFY
	YZLURECrmjKXKvysi12Wuf8cCi29qxg3iWTtr+ptnkemLqfb3lfg70+qINSuoMFp+G4MQei5gQUw+
	yujQQan19KfJXgR5DuQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP2Qx-0001C4-Ir; Thu, 16 Apr 2020 11:11:51 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP2Qk-0001BW-Il
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 11:11:39 +0000
Received: by mail-wm1-x341.google.com with SMTP id r26so4415731wmh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 04:11:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rNPv0L8oZ2ZNvAhFBy+sIdUoPqgqCnfq1Lqa8UBCAVU=;
 b=n/5Ydq3YFrlj/SwcMbqob7nqCSdfpwQ2sooxAqKUqoqglVpnYPTCrA9eIP1pCHqyrY
 h04bJzJvraxcPvNsHzcl0YJamieMAcNUQXjdhtfwl0M3KjPCFf8LgkZmZI3L6Tq3Xyxj
 pVpBmFW8xV0oOoWxLrO2ridYw6m659eWw4rqjNTtUFTHsXYOeZ+KWk6S/XiTgJM/C40v
 9vEOKMnJ5Ka0X80/V4u8th8j54Taa0cPmgtMrLfWXv8fFNR8IZIHBTOPVeM5hQ1lhNbG
 4lXvh6rvmxPZdzq2B5PHXWCcgRXFZBnfl2MMkvAuOBsVzJyrlakiOBAcYbv9aAyh9Wm3
 c0ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rNPv0L8oZ2ZNvAhFBy+sIdUoPqgqCnfq1Lqa8UBCAVU=;
 b=UoTsBz4fEUKCJzhZ6eFq7moFf13P+pqN1ENBlzZrRNhXWoxnC++KSGuv2IdoV9u/ZI
 KiAGnesDlCJstDJcHdrEs3NWGreqKQRa/KZ5fsa9Izhomk2fiZ3xSWC6bsXZUllNUaGU
 lHkd6ZTabvKu2gpEk49C8QMOsd+65nvqEd0Ip+CjUcvGiJUvsh9aY0voEr2I5bfIaTDL
 W2MUa9HWlddq7aq4/mvo6NogDh6+jjIw4g5RaazGzO4zHDXdYvovcYg3twbYt+fkxrHK
 j4CFENrFReVEDpZqTN3jPZFsjinDP/UNPx/rMqqIpLSbB8HDmFAST5McWbgT/X0GsXHF
 O5JA==
X-Gm-Message-State: AGi0PuZ77jGfrw0cTl3G+R3HzGJsBu6G7KnX5QWrI5eFZFIXJrVT6qYy
 rgBpDcdIOXvJZl/8WDb6ftkPylFuQRGV5DhUKeg=
X-Google-Smtp-Source: APiQypLQ3fWux9KGt9LS7rjW4OY0UEaEFLZ7HroqDMMQtyLjSL6kfMZyd/LfqGNRxtBhzjQ4TGpdz7tF8cGRfyR32As=
X-Received: by 2002:a1c:2b05:: with SMTP id r5mr4478119wmr.16.1587035495915;
 Thu, 16 Apr 2020 04:11:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200409043851.31217-1-paweldembicki@gmail.com>
 <CACRpkdYKB0CHgOQ0DEhYoy16n3tSZ=DZ0WvL-GhAVCq0Jk8s2w@mail.gmail.com>
In-Reply-To: <CACRpkdYKB0CHgOQ0DEhYoy16n3tSZ=DZ0WvL-GhAVCq0Jk8s2w@mail.gmail.com>
From: =?UTF-8?Q?Pawe=C5=82_Dembicki?= <paweldembicki@gmail.com>
Date: Thu, 16 Apr 2020 13:10:38 +0200
Message-ID: <CAJN1Kky_Wor15GAZvHgdxusVsH+0z_k=K2H3uj28iGMwh8kDOA@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: vendor-prefixes: Add Check Point
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_041138_614803_EC0F3B5D 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [paweldembicki[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 Stephan Gerhold <stephan@gerhold.net>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Brown <broonie@kernel.org>, Sam Ravnborg <sam@ravnborg.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 16, 2020 at 12:57  Linus Walleij <linus.walleij@linaro.org> wrote:
>
> Hi Pawel,
>

Hi Linus,

> On Thu, Apr 9, 2020 at 6:39 AM Pawel Dembicki <paweldembicki@gmail.com> wrote:
>
> >    "^ceva,.*":
> >      description: Ceva, Inc.
> >    "^chipidea,.*":
> > +    description: Check Point Software Technologies Ltd.
> > +  "^checkpoint,.*":
> >      description: Chipidea, Inc
> >    "^chipone,.*":
> >      description: ChipOne
>
> This is wrong, you inserted your new vendor between the regexp
> and description for chipidea and flipped the two lines in your
> match.

I prepared v2 of my patch and it was merged into next:
https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git/commit/?h=dt/next&id=84a25ea9cfd9889acf1e1021cbd835277a1df71e

-- 
Best regards,
Pawel Dembicki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
