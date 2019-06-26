Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE285563CD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 09:55:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FsSfFCLGiXDkb07ErCi3kD3m7YWj37T/gsOkdyVKXh4=; b=V2l5EY/pXb1gRy
	P7FR6Zfehir0Tfq/a7te2FWAgayS/X4P5z0zfH89Spa3oNYD2HUOL8rNtPZbq1URXlhql1CmOLz15
	buuiR8b/f8o4KaT2haK8Q3zF4WaW1EBLtfKIlHTVmSMCfjYo2cnnc2v5I74tSxw3g4PO9gRGNOMDn
	/3lzsPpsNibdwRswAtL3AQZEVaVJpl/4QaqSQLa6YciPpDFmAYEsjqJQwMI3PGQofpTFElgQbgwqJ
	VfyoFx3D4Dr6Yx8NVeD8sdzp976YMhCZIUsjZnRYMPbsGaTiLdmszpEaGPIrO3EjfoJ0oi4zg9I+Z
	03XbXKzcPrEOmWBxyPzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg2lz-0005m4-4U; Wed, 26 Jun 2019 07:55:19 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg2lj-00052y-W5
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 07:55:05 +0000
Received: by mail-lf1-x142.google.com with SMTP id a25so908105lfg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 00:55:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uxdb5wlFiHBkF0SzBr5FCoS6f7qiRJDmJ1nDITQi0Dw=;
 b=m4n+hEZBjSl7z0DhNNkX163BSsqoZWM4Vv+1gORRGXGEyJ7mgvy8Zc8GCjHlf4UKZz
 SzMf+PwcnfQVBQlF5KWvIDwyzUIxJ7y8dF0ZlSMbLEux5PVwVzK4/wbX9p4C8vgQ/cLs
 OUbHAOtvtatcVcy7T1n4ClVtN3VfJxaFeTz9bcmjm4NswEVlKTTEOdLN3B2cSJv7ML0f
 dvtb1Yp4GYrbdmAvQMxiXVkk1qnZ3vPnuwsJuJsMmiLyQuiZlld8WbxJpyxD51HVUsuJ
 2K7Yy6aTQwOkloLhCUNTijNxeAkHbkDQA7u5SUW/B8m94CyiFyIogZRFeit4jthgmS/Y
 vi8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uxdb5wlFiHBkF0SzBr5FCoS6f7qiRJDmJ1nDITQi0Dw=;
 b=dMWWob+GJR0XqeE/SxV9gOUvIYM8cNW4fQeQuhMS41/PzBjKbc6L5gCbhX/6tm8ng6
 IJIeeRuC6XKoC3zQ0FlCjXYeYZMou4DEOACwZ0+UdXPiLe7oQkjLRiJY/63kskxp6Qo0
 NFvMNfC35q9g1wD/K1reYDUfq/eorC7sz0N2B0JURHGWMwFA2o4ST6rRpRmPEVRnGsWQ
 YcZDDLrdKcvhsv+sSD3GDqcd6Lu5d0NzNg5VzO7YQcSODFpw+ZJ2H3JV1btgyCT+9dS1
 smynxcR1Vn58910RSbp8e0LAIfoV31XWRLnRTLMYqQZxUGyY/kA0Mg6eeI7rmprESI52
 A0eQ==
X-Gm-Message-State: APjAAAVi7bwEVxbI4qnXiglJA+J3LAfhJODFj+LqZN/LNthKkMPuKmiu
 6HxcytKdO8lTqXBLea1RZPBCgxzkSTJkdhc8hN8Grw==
X-Google-Smtp-Source: APXvYqzo+qALg1dJHN8BZKGNryj1b2QPxrO2/Ylr70oC8XJ11Le0Cn/eflBCqD0MzHpKgDWXJ6rrs+q++1xhp5JnKPs=
X-Received: by 2002:ac2:50c4:: with SMTP id h4mr1916988lfm.61.1561535701468;
 Wed, 26 Jun 2019 00:55:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190626071430.28556-1-andrew@aj.id.au>
In-Reply-To: <20190626071430.28556-1-andrew@aj.id.au>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 26 Jun 2019 09:54:50 +0200
Message-ID: <CACRpkdboxjMmeb8feffyG5JJ7fGPR6hqC8sc+XV5We3TC__LXg@mail.gmail.com>
Subject: Re: [PATCH 0/8] pinctrl: aspeed: Preparation for AST2600
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_005504_046323_0FD951ED 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 <devicetree@vger.kernel.org>, Ryan Chen <ryan_chen@aspeedtech.com>,
 linux-aspeed@lists.ozlabs.org, OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 9:15 AM Andrew Jeffery <andrew@aj.id.au> wrote:

> The ASPEED AST2600 is in the pipeline, and we have enough information to start
> preparing to upstream support for it. This series lays some ground work;
> splitting the bindings and dicing the implementation up a little further to
> facilitate differences between the 2600 and previous SoC generations.

All looks good to me, but Rob should have a glance at the DT bindings
and YAML syntax before I proceed to apply them.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
