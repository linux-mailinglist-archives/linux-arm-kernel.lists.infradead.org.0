Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A16AEF8A2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 10:26:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F7+uhYXdrQv6EL1Zs2fdmfHcZM+Le+1ZBey75mRbEII=; b=JEMd99i2bEu5B/
	5vSLkNRWNmFmbNYEQqUGTznWSHHj3S7bDhcFocko4xkyt6/a8Bw2m0EVN8BvwHgsG2MUloe9iD5tV
	RURzUqoiNbij7rLwBiwe/Y6RBfkrko7vghBZalw0asHCJPxRyK0ujSw2LQiRrXhoj0nP7wuw+43GT
	dkQE5g8ijt554mgPMqRTn9F2V0udIGPjUnVJlWgODgjs6CFlz/Nmas8acuH38AuOWcNrpYI9s7i+l
	IZx5PWArFJvA0ghUTMB5dtHNEaaMsscbLWk+ka/xNbHT7Fd7QTgvnw9voiqg83g0hGutem2UhS/tJ
	pjMY5Hk/uKT3461EKpgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRv66-0001Ph-K8; Tue, 05 Nov 2019 09:25:58 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRv5x-0001PN-Kz
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 09:25:50 +0000
Received: by mail-lj1-x244.google.com with SMTP id l20so2282134lje.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 01:25:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=k8LC5hoQOSSC3SYIdMqveplyFLeeSr89WqnCil+AS+E=;
 b=w76q11BCIBe59Mmf6DY+f8/pscc+d0jjzVhnZMY2wavCZw1hfWfQa59gIGMkWkfX6V
 7Ju/8lwlgbw0zEfv7/Ja2CpBuZFIOq0svpp2ozaca1Iz6wL78qT8mYqfF/9Qau+dyPm5
 Vigtyj0ZMX5wYJTnBycUg8mYx598+Q5CpionMfqiLFIK5zlxtsNvBAjutiG048/snHzl
 oyHV2lK33ABHUBfJERNid6lTsuPdYvt0Tslq2d9GWtEVKuEQxe9g4VQ1Y7HLya8XXx0N
 JI4Ybxidp502FZeLUgAQ9FUI/wAfDbfYXg2/YPGTV1DwHrJfKklLod01tnE2WbpHQm9D
 MpeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=k8LC5hoQOSSC3SYIdMqveplyFLeeSr89WqnCil+AS+E=;
 b=hrguqpZicbrlUFSKSXnExcyHtlmiwZDNIRvDp28acCuNlmPHD/0nAQGC170unot8iu
 kgVxDiZte2XNGXXF9s7Q4VKShAEh51r02zl1o78vbgiXKst1UGLoPT0TILOHh/fO4Em+
 ZJ40W+UebuHGTALCz5O5sZs5t2IJ+MwMqI2EAfxZQlL2GSAf7QChcTwFjKHjBaFR6B1J
 HLVdTD07cMuZ1FYijrx2kEHUKAdHyk0GCTYKsSs+xu0lGHW6CRlArS5zQTj1Yafrq+2W
 UUJNqrMWr0eSNelLN/mcbNdE7AGx2iICABe+6v3NGiPpeZPGBHZ81Hq1HmHCXZsqDZcP
 cbCQ==
X-Gm-Message-State: APjAAAU+hvFY63EElcVNu01vexfoIWgVs4htknINMGXG5pR6dmw1LJ2Z
 NBYi/jgSciPt5BxfX2nAzAkHwASIfMMkpBilN7XFUw==
X-Google-Smtp-Source: APXvYqzOSHsg62Fj4vlheyb1uz8LbSqHiWIcvvFBmqGNwblm2et9MzcOhrpktjoIYMoo2tnFaHHN7BmRLDAaoZ8KOCU=
X-Received: by 2002:a2e:161b:: with SMTP id w27mr22351639ljd.183.1572945947937; 
 Tue, 05 Nov 2019 01:25:47 -0800 (PST)
MIME-Version: 1.0
References: <20191018154052.1276506-1-arnd@arndb.de>
 <20191018154201.1276638-25-arnd@arndb.de>
In-Reply-To: <20191018154201.1276638-25-arnd@arndb.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 5 Nov 2019 10:25:36 +0100
Message-ID: <CACRpkdbsJn6axZC2_gHq8JCo2bE2Ra=+cavGeR6qpsASnEW9yQ@mail.gmail.com>
Subject: Re: [PATCH 25/46] ARM: pxa: mainstone-wm97xx: use gpio lookup table
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_012549_694673_BFE03961 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Haojian Zhuang <haojian.zhuang@gmail.com>, Marek Vasut <marek.vasut@gmail.com>,
 Daniel Mack <daniel@zonque.org>, Linux Input <linux-input@vger.kernel.org>,
 Robert Jarzmik <robert.jarzmik@free.fr>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 5:42 PM Arnd Bergmann <arnd@arndb.de> wrote:

> This driver hardcodes gpio numbers without a header file.
> Use lookup tables instead.
>
> Cc: Marek Vasut <marek.vasut@gmail.com>
> Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>
> Cc: linux-input@vger.kernel.org
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
