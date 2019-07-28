Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F02287824C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 01:15:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EDxDfYH75dvFfkRjxUC68yKFBxmfwF980v6yKvpQU44=; b=JKQcX7RINuB2Yw
	AimVEr+BCVtMvGMO9bgtNS32MegzBIiB8T0+xz666oBmsOAo6BMNhY9YUkZRV+1PSAGc+tyF3GQpO
	4iTbWB6rnk1jpPk57PUA9av601QEzgr5NQIQrN4DoGxy6U46/Ts+r7NnRJypoaLqwJlJySqVSYuOr
	lvU1s+n3ZVyFWmbZ+LvIXK0zt6mYYBQQozVcgC8wZIakzC0zMLtpWXPDJC5SIX0A14SUF3+yZUJbq
	DUnvtZOeFv/lJttxaBk1ThlTOBw+sv8C/U2Tje6Wli0z5t385blyooPH3Y++ZHfV20dx8gGnF7JF6
	DGtOzt+tPozr2wt4qTtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrsNk-0006LR-Nv; Sun, 28 Jul 2019 23:15:13 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrsNR-0006Ke-BH
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 23:14:54 +0000
Received: by mail-lj1-x241.google.com with SMTP id z28so2443674ljn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Jul 2019 16:14:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uqbaLb+DoYfmkQkeju/D4dfpefzvGhqE/NA7IyXYHDs=;
 b=mecH4VhtykhjOehOVm7m8Pa5YP6LbhZHxuLFQA2XocGjWKuVwaUD5JKujEe9aVixYW
 cawoMpzpCuo6PsH/Y5+Y7tXwV3d7SoDRDfjjcoukQScCk9CzzHAMPo1pS4yrzvyXmqyJ
 2yMjXxSUUQvzemHru0Os3ufWRvyApCPQMYjePIqEYdIr8dqIpeHbncxd/W99X2KbFg2j
 jbwANzOROhAvP10F0iLcxqbviHMgDbZ6aAMO7bHOLzMbrE+YgCLY6qUQqtoboNujm0Gj
 U73hnvjkMlVYKlUDbpdLF67Z+MpbkHJo3vfCQ+e8YPRfhiYgmC3LZ5+TDpH4eiTfU3zX
 7Iyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uqbaLb+DoYfmkQkeju/D4dfpefzvGhqE/NA7IyXYHDs=;
 b=to21PGOgKfmdYV6HXiSLvkHHNZDG1RtSGUOQ64GM913aPv+V/aJc2/C1mNdiwlPdQn
 61reW6w3lLfyma+2f1qKW/UCp0zBkaee9gIqahiUMimXi3EKUELyBzXnzZh4AX+pCMAt
 zYuCFM1P0ivEsB5IpAYqF3yIRwnX2t1ZMm6Xp1EAnfIZDvzWFL3tHg9MmTEGMI4kTNDN
 PksHCniIPidTuH6vhvxObVj8d1QlhzGhl8MTfAsUIcQvjqcnCOMBnDi7Y5PY/WGDOz+3
 d1JKDOJAHMnc84ETkBpVcdko5mVboCwLvh98NeW9oL/OF+x9OEXuT5cMIwivNLrQsKfF
 XQKQ==
X-Gm-Message-State: APjAAAVu0jDUv4oobLVkFNbqmDUKZn1Db+43ub1hKr3NZdEA4s4M0aoQ
 TFG736u6HokCC04pZgmVTHS/c/RR5LRQhyapkutDO9Vj
X-Google-Smtp-Source: APXvYqxZn/ye7KzmbCXTelv16sXPVMTT2jnKOOv6eVhlkoDzFB17aRJoEaL7U1kzdaeMP7q7K+fcGcM99btdobKE65w=
X-Received: by 2002:a2e:9593:: with SMTP id w19mr8822011ljh.69.1564355688739; 
 Sun, 28 Jul 2019 16:14:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190711041942.23202-1-andrew@aj.id.au>
In-Reply-To: <20190711041942.23202-1-andrew@aj.id.au>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 29 Jul 2019 01:14:37 +0200
Message-ID: <CACRpkdb4pEdPHbo=3+fJXe9WG8K7A2_xVMtKWCJCfEawDO5wBw@mail.gmail.com>
Subject: Re: [PATCH 0/6] pinctrl: aspeed: Add AST2600 pinmux support
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_161453_451588_3D25E2E8 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-aspeed@lists.ozlabs.org, ryanchen.aspeed@gmail.com,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 11, 2019 at 6:19 AM Andrew Jeffery <andrew@aj.id.au> wrote:

> This series adds pinmux support for the AST2600. Some more rework was required
> on top of the previous cleanup series, but this rework was focussed on
> supporting features of the AST2600 pinmux rather than fixing issues with the
> existing infrastructure for the ASPEED drivers. Due to the dependences it's
> based on top of pinctrl/devel, so should avoid any more SPDX issues.
>
> ASPEED have been testing the patches on hardware, so even for an initial pass
> there's some confidence in the implementation.

I'm unsure if I need to wait for the DT bindings to be fixed on this
series?

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
