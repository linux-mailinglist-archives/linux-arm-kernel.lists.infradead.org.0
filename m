Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4986B1053AA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 14:56:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=83SE8xQJRGokaXKtefNrqYh0L5K49KlIY+H57cWHbNg=; b=eHj13N2WJbrETn
	TVbrdOUjBEyD67g8sp2/26RkciQVAV4yXhEXdwEZ/bfFNz40myxH6S2iR165M0bvGw18GUVdpxX6y
	IU6uWYPJbzyvDM4R/foqV1HFP2pLqhMNC22tYIMFsXsZ/c+zGvKyRjnIIZUwSkqUT18U9y8cZUdHp
	Nqum1YE6ER/ORL8aV1pf5kPpBhdSoh2FuDw6orSV3srp5lGFhx0btqUI5kJZ2eJQxPKcn/XFTAvtE
	2tvFh+rQ27GuPkCqwshjUO7vWRjO5q+c9Fg3OhvqfJ+npKXTMAY08x2tYUrvD2v98TDriy0Cx8Roh
	6E5O8fLuAJgACinzvc2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXmwO-0003ER-E1; Thu, 21 Nov 2019 13:56:12 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXmwG-0003E2-1J
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 13:56:05 +0000
Received: by mail-lj1-x244.google.com with SMTP id n5so3298878ljc.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 05:56:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mwVumWvJHo4zvWxGZJD9YSWEBNd/DEDoZWc1zGQkww4=;
 b=PROaNuWrUKfIWxlt+j8KnAB87S9sEPRRC6XBWLZRSlLDbSCwpFFGXYtL+n3UhxkSnb
 zltboWUsjHwVXDG8sa1sM8NgJaHgZF4KeCpIkdAaZyRqZqCaHl+rYRUm3D8RS5A/EnCl
 Q75Zxx34KXOEIEj224cI+oGu1NFCGs7vdCaqpWbgqyBMpoIU0Aj/VrIffmL6710odHKO
 gULu3ssd8wX29tDvOdwwoYjcU1hc1jN7CkusvCk3jWPw22fId0+TqKLIYq975QXn+C2a
 qYZgtmLDvAJ/JMwbYbfP/gEoCc7fbYXQ3sWQZXg3offSocrRzpuPbKzNbGwTNdfiIcNQ
 +jFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mwVumWvJHo4zvWxGZJD9YSWEBNd/DEDoZWc1zGQkww4=;
 b=CyhLQBLiHdisb0R+k2Sl+ZMWKtflMIR530OiCsh3R5H3Pms5Wa8HUXkU6tztg83rNY
 6tqkqvnQm1L9tRAxFyYE/kNdoH5q3tdklkTjnHr6UZi+xtkfkUNnRsrY2+D8SypLYRs5
 VimT4oyGJsFQ9HCg7OWKiSriIkSM/s2mXVEL7Nmj9/Y44Y0gH/dpmWrkjkQbs6eZsE57
 R3vWuNYzWKj6OvpoZCtslZwIH+izNht+ADkOqb3DFXCTzYY7sqzte9Wih53tQKs6OF/Q
 NaoRhGJ0YDbs7ZXzmt2CZt2Dw9CoY6aHs0iBya83EnbDnSROHkL7Rs/M/9NkjRzrAmuU
 zwvg==
X-Gm-Message-State: APjAAAV83F6r5A4ElAiQBGlaykLYDdrGnjvqFuH4BXYbfCl8qlOTjXrT
 WT+qkStOY3OciinuQnaUAZwrS/+WKGfRtJIJUJFJAQ==
X-Google-Smtp-Source: APXvYqxK0E9D55XX4sJlFFn/xkAOM+O9uzYS51IiYbmsrxiwLu/M4n5FQGZais+eCToXwuxAaBgFfC8+x3EE7MMm9YU=
X-Received: by 2002:a2e:9784:: with SMTP id y4mr7671826lji.77.1574344562426;
 Thu, 21 Nov 2019 05:56:02 -0800 (PST)
MIME-Version: 1.0
References: <20191115155752.2562-1-gregory.clement@bootlin.com>
In-Reply-To: <20191115155752.2562-1-gregory.clement@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 21 Nov 2019 14:55:51 +0100
Message-ID: <CACRpkda5m-h_v_aNGb5gAOH7-HSd5c+Oxdij=H3UwQG9-FusaQ@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: armada-37xx: Fix irq mask access in
 armada_37xx_irq_set_type()
To: Gregory CLEMENT <gregory.clement@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_055604_090199_AC39F2CF 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 stable <stable@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 15, 2019 at 4:58 PM Gregory CLEMENT
<gregory.clement@bootlin.com> wrote:

> As explained in the following commit a9a1a4833613 ("pinctrl:
> armada-37xx: Fix gpio interrupt setup") the armada_37xx_irq_set_type()
> function can be called before the initialization of the mask field.
>
> That means that we can't use this field in this function and need to
> workaround it using hwirq.
>
> Fixes: 30ac0d3b0702 ("pinctrl: armada-37xx: Add edge both type gpio irq support")
> Cc: stable@vger.kernel.org
> Reported-by: Russell King <rmk+kernel@armlinux.org.uk>
> Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>

Patch applied.

I do not have time to send any more fixes pull requests at this
point, so this will go into v5.5 in the merge window with everything
else, and then to stable from there.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
