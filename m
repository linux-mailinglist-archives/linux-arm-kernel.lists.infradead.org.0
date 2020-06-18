Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E01BA1FEDAB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 10:32:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3LT5sgFE8F9UIGpLufTD43UGT/YbH0HJQEJxAOFfNXk=; b=QrYhTzZiFKZx5R
	svkehoYXUuSXbCWsysRh4sKD7WAAjgyB6HnggwEMKrvh5TlQiTwS9PLrFAJF/5P+5qOEUD8aR6mm/
	9/JlEE8lHfYUTOU/f2IMuG9lKHN78scYhaegO1CqebBVXQVnuHHg9fXP9zclgC56NtlETlLNMQirx
	whydPrK7Rn7Sskkiq5guYCm1XkuWEIjEi2QvFI1iKkh5HupO2XZeef2rdUdvKJPym6YJoxqHR1u/0
	rvjXAw7V/Il3Li+H4RBciFqM1e+Sj2LgJy9p+/wxA6UszrVppaQB3xScGVEtwA4yqAX9pgkbovGnR
	iHvIVewD92cPe+x2qUOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlpy4-00078X-FG; Thu, 18 Jun 2020 08:32:16 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlpxl-000769-D2
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 08:32:00 +0000
Received: by mail-pf1-x441.google.com with SMTP id h185so2472169pfg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 01:31:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TpvBCNreMFHRCyXrfUPmBsfCUSsV/gLfu8O/s2ZlKTU=;
 b=Dd6GBRSKoTGsMfDWEuAIZly6qDPrieU28huK4UIoNXSzpKVB+tCm9k3ysgnloilyBO
 8rbDDlSjrhiGXCTO6k/GIGAzQ2dLAiygTxBIwyyTgeUOZb4L3wao7e4pOA+zCXPk04ig
 jnQSYj00CCJyBDF/OURcKq99tCPNdSjjgHaUAGfutbM8rv3H7aR5289SSZHxZukipygE
 uPashPZUcMYLiEirvirhWvRdF8wY17Q7pM/UcT7g8IBxNCSe5S+iWp4y0U6reRFcSEiI
 8p5OCJjFDyaS03+aUqkczrKDutKxPnLuRwGh0LO+h8pGu0nnvtVxBTQ1WW7PEkYwLawu
 MqmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TpvBCNreMFHRCyXrfUPmBsfCUSsV/gLfu8O/s2ZlKTU=;
 b=FG5vLINp9f8+uEuwQbjE0eJMfXkNtQmsJ3bKl2lU6HJB7Nsr10g31gUXLOl73snDuR
 Mnt3YfUWtjVy35cpAwk32d+724VBr84YUhIT2SeL4HAt/DUxzs5TP/VVFPAn1Knn1JyB
 XeFIKDMGKdpLRehgMjY/3sxc58fXR35WMWdZ3foIJlsF1x4+5JlUCnwZ8GHb5Vgb1N1O
 /gnQm/j7s+pUhjMtsIkp1zX/yzqU20LvPMfEkoDW7a8jwub+STQ9iQRXN3UL5PtMp6EE
 J3lXQyFQ7jQodTdS8zdboncECu/yPuD4uFprbG5OPIR/iWDzO4DEjg54I8itxynjB5tA
 pOIg==
X-Gm-Message-State: AOAM530CEDu9DQoUeL7TiJlTFDkJ/6vjM+/xVM+Z6kQPCiq7q1u7+0Ac
 2sgNI3oivmpg09N2T/SPg5hNQv3OAwU7POJMNDE=
X-Google-Smtp-Source: ABdhPJzIogL9zJwyMTDVa9GrEwtZfyEuOcY8rzHq2ppylVuZVw695VzA+I2FTmRHzOjsQTa8VeIuXwTbhhu2Was/fgw=
X-Received: by 2002:a63:f042:: with SMTP id s2mr2425063pgj.4.1592469116343;
 Thu, 18 Jun 2020 01:31:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200617224813.23853-1-Sergey.Semin@baikalelectronics.ru>
 <CAHp75VfPEdxN1UeKJ+gCWpgJymK7YzQs1Lznq1aBfoRNBiMHbQ@mail.gmail.com>
In-Reply-To: <CAHp75VfPEdxN1UeKJ+gCWpgJymK7YzQs1Lznq1aBfoRNBiMHbQ@mail.gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 18 Jun 2020 11:31:44 +0300
Message-ID: <CAHp75VdD+=L4OQkwVDx2aLKRssW-qBQL2nsF48J=dCntU8N7Ng@mail.gmail.com>
Subject: Re: [PATCH RESEND v6 0/3] serial: 8250_dw: Fix ref clock usage
To: Serge Semin <Sergey.Semin@baikalelectronics.ru>,
 Tony Lindgren <tony@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_013157_450229_A2CF272F 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Maxime Ripard <mripard@kernel.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Vadim Vlasov <V.Vlasov@baikalelectronics.ru>,
 Maxim Kaurkin <Maxim.Kaurkin@baikalelectronics.ru>,
 Ramil Zaripov <Ramil.Zaripov@baikalelectronics.ru>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>, Serge Semin <fancer.lancer@gmail.com>,
 Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>,
 Alexey Kolotnikov <Alexey.Kolotnikov@baikalelectronics.ru>,
 Arnd Bergmann <arnd@arndb.de>,
 Pavel Parkhomenko <Pavel.Parkhomenko@baikalelectronics.ru>,
 Ekaterina Skachko <Ekaterina.Skachko@baikalelectronics.ru>,
 Jiri Slaby <jslaby@suse.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Will Deacon <will@kernel.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 18, 2020 at 11:17 AM Andy Shevchenko
<andy.shevchenko@gmail.com> wrote:
> On Thu, Jun 18, 2020 at 1:52 AM Serge Semin
> <Sergey.Semin@baikalelectronics.ru> wrote:

> I'm wondering how this will collaborate with runtime PM.

Forgot to mention the WIP repository [1] for runtime PM rework  (it
doesn't mean my comment against patch 3 is not valid). Tony and I are
working on it, you actually may be interested as well.

[1]: https://gitlab.com/andy-shev/next

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
