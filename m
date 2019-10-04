Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2274ECC546
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 23:54:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V++FIOhnDGQyFzNiZo1vveng4Hkib0IdCglbWQ5OHIk=; b=YgNAfOldR3KFYk
	t44uOegcMdq8EUCc9oNmzGnjYq489BmTkjtKN+T29v5CeSv1bVYY+kNot/9RhCEYEITqSzydIUtsm
	AaK4rx5QJT93CePhtU/5jTp8Koe5EWQJwSQg9zriBG9xbHr35b1VdvJk0x9LB271WyCyEeXcBIUNc
	sLyFlo69rbAfBAxIFxECgBIgMofjTCJCHKDKhQ5jZSfEvFaopnHDymUs5TBX7KoqAHDDBvfq1+fJP
	8D0H+3qAA2dhiPsnKPprqJqP69HauwxC3kgBaxdFCj/CkF/IQ0c5YvhNzpzEjxkp4VoY+GYvbTyw0
	lEAvWHiXehPMf3OxT7ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGVWy-00058O-9x; Fri, 04 Oct 2019 21:54:32 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGVWp-00057v-Jb
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 21:54:24 +0000
Received: by mail-lf1-x142.google.com with SMTP id w6so5475903lfl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 14:54:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zoPNMzdQSsaX6T9xeXeKifKMZMvmutkXru6+TSI0b7Y=;
 b=wPWEuKlFUYzqdz4qs+FuWOkgujk6xQg4W88Gbwdt69yuCS4wF7jXBJ4GRPkZgyv8Kn
 gK3sYtTACAkkDIUWPIZxxu/0w1Eg23rseLUrwOcuHfzFts5eaU2ossk8ApAjQMalVPBh
 v/j+CjSbylx2eql609qx6b5pr/aMdpGxO+GwWP5fJlJL0YOCSX+tr4e5YbT0x/k5AWzK
 SwQVCCveut9k7OqNDYdHhgBL00/dvo11ApelQlPEGNEN2wE56jYEVWfGecor/prMr+fw
 blM71t5HKQTpeN7ZQUyQfoi0MuHKD/nGja/CpKC9T8UldLJFGLerfT0g3clJhEkHa6Uq
 tB3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zoPNMzdQSsaX6T9xeXeKifKMZMvmutkXru6+TSI0b7Y=;
 b=MHk8CsIpWc+i3q1oAhG/Z/wmZIF8tR7u+BALdXKvRkfbbGb9JaEe0Y4TqTU1CEaXo+
 rGb5wG5vibLLV2CDZ1svnyWVWykh5LpA2mLw/h0p1qyX2HvDo1ij6gldvU4pytXvNwSz
 9VLkXXFJwG1Sy1+5mGamHUAuoNxL7fbQu+mH7QvNYTm/5cMEwA44yC6d+QxcczjvWX5b
 VtwUWzLiN8bijMx23UwvIa6dPWE6FCdol2IC46R4Yw1vW8IAue/K8tLhII8dYrVeelzO
 ixvkcW45IK+bRR3fBxqk37mp5oNWKjJ13YRC4wz9MjuJfjCS9YFpWlCYRuKGILV9E4Pc
 yAag==
X-Gm-Message-State: APjAAAVMrfCI/AWlk+RxoRIeE1Q5owLyqY5p5vdzciWezaZqYIjJqlyI
 jVEN8HY+MoZl5g+NhU5vGEOcCtIA1vtV9PJOpirStg==
X-Google-Smtp-Source: APXvYqws72vP4SKYhJ249ciHl03mUZyS9feS1uY1gUxq8IxgZYM6e4vR28Xp5ay5FGaGgDRYYJMV4A6rfFLyAwnEyp4=
X-Received: by 2002:a19:117:: with SMTP id 23mr10232144lfb.115.1570226062105; 
 Fri, 04 Oct 2019 14:54:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190618160105.26343-3-alpawi@amazon.com>
 <20191001154634.96165-1-alpawi@amazon.com>
In-Reply-To: <20191001154634.96165-1-alpawi@amazon.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 4 Oct 2019 23:54:10 +0200
Message-ID: <CACRpkdY7bYBytGq-AnMrRVWn=-ASz=xTA-_-5wCfsymch4qW9A@mail.gmail.com>
Subject: Re: [PATCH v2] pinctrl: armada-37xx: fix control of pins 32 and up
To: Patrick Williams <alpawi@amazon.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_145423_652075_31AC73CA 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Gregory Clement <gregory.clement@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 stable <stable@vger.kernel.org>, Patrick Williams <patrick@stwcx.xyz>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 1, 2019 at 5:49 PM Patrick Williams <alpawi@amazon.com> wrote:

> The 37xx configuration registers are only 32 bits long, so
> pins 32-35 spill over into the next register.  The calculation
> for the register address was done, but the bitmask was not, so
> any configuration to pin 32 or above resulted in a bitmask that
> overflowed and performed no action.
>
> Fix the register / offset calculation to also adjust the offset.
>
> Fixes: 5715092a458c ("pinctrl: armada-37xx: Add gpio support")
> Signed-off-by: Patrick Williams <alpawi@amazon.com>
> Acked-by: Gregory CLEMENT <gregory.clement@bootlin.com>
> Cc: <stable@vger.kernel.org>

Patch applied for fixes.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
