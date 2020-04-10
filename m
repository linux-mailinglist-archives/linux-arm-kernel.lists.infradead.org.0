Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA3891A456B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 12:55:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iXlnBBA3oRjLRwXXU4MEOFoNtpGTaghMWn6LD84O17s=; b=tIorrRECBVZmbs
	5mfg8jcwCJ14aSrWrerrDO9eIudX9pJi4J8gs+5/GOL/3ew3Ct5h9/YethlNUZ8UFHhHPaRoM/9OD
	MNmOGiXGhJrN/ASr1WGQRvGFagdoUh4qC0oGeTyumjfgjr2UqLkJNcIJy38FIS+M18BaOs81xfZcy
	7tgNM4SIQ3GSiDq/uapR0B5OCBX7ppcZNTLzXUO8Nw6cR/LNdf/dJy1K+8OuAt6OS/4usXYMrnsli
	fbaLE4luzDPpbKvxnWNommHZyY0XkuyFoPgAc/9NbcyBhO34+r1XbRN/O4GPu3QYtoeyXx1uAcE17
	XtOX8mt8gipvffthIaog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMrK6-0000bV-5m; Fri, 10 Apr 2020 10:55:46 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMrJz-0000bA-1H
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 10:55:40 +0000
Received: by mail-pg1-x541.google.com with SMTP id c5so848008pgi.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Apr 2020 03:55:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aIcnFNlKwbhEUKuern25WOvqQEVVsTXqGIr0A8WwShs=;
 b=OHsTaGa0WQ0YKhuVGOQ6pPcIKYKJQmtrS2+T8Szuyi16vomvG6C+YQ0O3IlqEnYEuY
 vu9zRhcCwSVWKFUOlCa+2e9JI8Q6x940HHClWPfwkcZnMF5hnXZKbD0oS6/aaG+TnVYc
 pRBFg5mAzqvql2AcdtPhjL9lMpMJ9J2zqmyzybRd0MWTbak6q6rP9UheTARiDh2qHMmB
 OQLbxh7glsMqwXOzDPqJ8GoCU7fjGbJFO+iSiVuKbM6+M63B4ffbioe7km4BzU/PYU9j
 hGP5CFwcd6r6oL55/u1/wjFFN6GAWEnYsAY8JBGSBgVtGEPYEMk727gMMDVvVW+2vJC+
 YoRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aIcnFNlKwbhEUKuern25WOvqQEVVsTXqGIr0A8WwShs=;
 b=H+bACMyG5Vv/stO0QPaanSOroBmYwEDJTFDPtW0yrkVoeABWhgdx4ivPNssfKflj1q
 VV0WlUBOVy2trP0Yue6i5Qql9YDxKOoSdYoQ/WUV1KYNTucgxOFSEAcEukUxqJJp+Ad5
 xORzFjRcZgiAmblJ4U9RgqdEMPd1G3TtFU2qPXgJSsrYt/bPb1DRtli8XmFp3aHBDmNg
 zoFw9JXK43zq4QR4LHXsTsHUYJS59xoNBAan2WhGzoyijIU+bFE7iV+ioCk/Fnu4wEr1
 W9JuGn4A1QC8hgQ/NWv6dkpTahdCjdXHPfcOQPzWS5ulG5wITLRr7Gkxt6AjZEJFbVL8
 Gjqw==
X-Gm-Message-State: AGi0PuYZy/ILTic5sHizce+LdKJuCvU7JcjyRs27HUMJisgdpPp06VWg
 CZndKPqE1O3m4kK+8uKw9saCqZc+nfbrqX6PCBA=
X-Google-Smtp-Source: APiQypJjTjt8JGmxlFWTs2L3oU8ewPIPy4jYOmNiUW8hyrSurIcnqOta9nx1FhHqib1d/JIBljwPbBXFfHF5+tGhjZg=
X-Received: by 2002:aa7:958f:: with SMTP id z15mr4357812pfj.130.1586516137980; 
 Fri, 10 Apr 2020 03:55:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200409151125.32677-1-aishwaryarj100@gmail.com>
 <20200409155936.GV3628@piout.net>
In-Reply-To: <20200409155936.GV3628@piout.net>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 10 Apr 2020 13:55:26 +0300
Message-ID: <CAHp75VcLLjjc5T+Qq8du4QgnQ-rtzFLh=5Jt-DPjigb+QUWOSg@mail.gmail.com>
Subject: Re: [PATCH] iio: adc: at91-adc: Use devm_platform_ioremap_resource
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_035539_074751_E49D7109 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Kefeng Wang <wangkefeng.wang@huawei.com>, Lars-Peter Clausen <lars@metafoo.de>,
 linux-iio <linux-iio@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Allison Randal <allison@lohutok.net>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 Thomas Gleixner <tglx@linutronix.de>, Aishwarya R <aishwaryarj100@gmail.com>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 9, 2020 at 7:00 PM Alexandre Belloni
<alexandre.belloni@bootlin.com> wrote:
> On 09/04/2020 20:41:23+0530, Aishwarya R wrote:
> > Use the helper function that wraps the calls to
> > platform_get_resource() and devm_ioremap_resource()
> > together.

> Please elaborate the actual value of doing that.

Please, elaborate actual value of not doing that.

Yes, I know that you are p* off of these changes, but why you not
going further and forbid all clean ups we are doing in the code?

To the point. Above change is reducing code base and showing the new
comers modern APIs to use.

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
