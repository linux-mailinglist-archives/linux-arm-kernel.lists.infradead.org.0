Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0A31AD854
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 13:54:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+BAMvDs9Yl6js7yHywqd+bFq1dmPPHZPx7e1Y3W/fow=; b=XoXeNDolET/zpG
	osjmaDLJ0EukIQBg6QpV3WpWIyRvxIwvXtZQUuIlq8JDLMbQlovT3jlgqOplLD7crFGt9f+8Z/648
	hw3ATJpcioN2XZKw1ihbynmD9GLI8zlNEbR4F66yz5ZmVW11i7rTEtqYxRZ0nPOJHrAp6sJ50+1kx
	SZvX6IzztOuFdgmgaNpe3gyQSRV8GrkmGna8S0Thcxd366FdPMCRm0K5QxScqg3TV0e8Po1XHDlGJ
	3v4TqSR34oMFcJmIcB9Cui1Pfu45rKfOpjzoGaXH3WPWOmIHP9izlThyn13XDez9mfX/rgBHyhkcl
	+8a1m/9AlHsQsfrU7KAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7IFJ-0006r3-2a; Mon, 09 Sep 2019 11:54:13 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7IFC-0006qL-Iq
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 11:54:07 +0000
Received: by mail-io1-xd43.google.com with SMTP id k13so12661204ioj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 04:54:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Q+FVrqN+TPgVuaJbEMEH4wOrjm4xLEXbmHAWOrXAKL4=;
 b=VDd8X9zcdNLDRoJOUphP05A0tGYAcRtCichkpvkySC3B2yJlXLh6eB6Q5Yc4gCuqej
 +kA5Rr4Ch0sn1C20GDNoq/Ek7yQTbRsdY6oJyCEoh7acVqLTGppu+Z6BYAKDDP7ECJFe
 JjpTzBVM8Vo922kxFrZ8NZoCvZ7Cia0mz8utakq7eHe7hsh8gdWoDJuQHNLXfcBHt6Mc
 1tQ8Ma8U+aBt9hpTILWqwmRgr9IBZsQiI3SXuh6SgTaUtQ9OrqdseupTzVS3T1FXkSiF
 FXBj55oCIcLNhCZHBPI8Q1qqYcpYmfmDpbM5GuvDoYEF4NeCXSQ43bJMtc08O9FlXe10
 MRKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Q+FVrqN+TPgVuaJbEMEH4wOrjm4xLEXbmHAWOrXAKL4=;
 b=BrSLGGz8/X9G486uW/mhBbelyR5VjRUhsU8eBi9HAYwnMHdwQx8mHDvwUk6hdx9Muh
 MbDgj9CkGHAx6d18uMTQnNANS3LXnuYFrRxaUywWafB7X3jXy6LkOxlft49p84GhYm4A
 cMx3Q0YXCdfGKXSYR975wxsZ3QGEnSqjRSBqP+oxcR8DpbY2MyvZdIHsFgmkdE4iTcRC
 LN1fF6nhygE1uxbYjhFxeZ2LkcN661ZiNCeDmAquX4OK6YJ3Fw8+cZWwsoBaipZFN5A4
 9YCrVhDYi8jS7Q8p/FZir5yyP+AsBP+w9Q9WisT4p7y88O9qp68qnfRcu9YEn/lZ+yGF
 XQLg==
X-Gm-Message-State: APjAAAWJ/isZKSsgcDYKhhJpDaBf5JfLro2ik/n4HAVZnB5EPtGG1/Pj
 ELHVZ64T5HMLMhICf6cTc3onQZfsFAT9zOOR78o=
X-Google-Smtp-Source: APXvYqyEx6LU/OST6+fUfCh4+zHDIfeEbtFGTFgt/Tb6wja+aAz6+MPQhsJFSIA+xIrZc/v9eoeTiTaJB7tXTaeJ2VI=
X-Received: by 2002:a02:3b6f:: with SMTP id i47mr546015jaf.24.1568030046006;
 Mon, 09 Sep 2019 04:54:06 -0700 (PDT)
MIME-Version: 1.0
References: <1566936978-28519-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1566936978-28519-1-git-send-email-peng.fan@nxp.com>
From: Dong Aisheng <dongas86@gmail.com>
Date: Mon, 9 Sep 2019 19:44:04 +0800
Message-ID: <CAA+hA=QeVphhsmuuM6XQhku7XVi+858nRrJ3jCneP+bRWBbNAw@mail.gmail.com>
Subject: Re: [PATCH] clk: imx: lpcg: write twice when writing lpcg regs
To: Peng Fan <peng.fan@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_045406_624383_36008011 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (dongas86[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dongas86[at]gmail.com)
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Abel Vesa <abel.vesa@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 27, 2019 at 4:19 PM Peng Fan <peng.fan@nxp.com> wrote:
>
> From: Peng Fan <peng.fan@nxp.com>
>
> There is hardware issue that:
> The output clock the LPCG cell will not turn back on as expected,
> even though a read of the IPG registers in the LPCG indicates that
> the clock should be enabled.
>
> The software workaround is to write twice to enable the LPCG clock
> output.
>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
