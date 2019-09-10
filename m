Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3569AE97D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 13:50:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fuEx4zShyyLSysKOd8CnUZUdQkBnDClVVMPtFh5eqjw=; b=LKBaaGjPwHNpND
	Dlp7s0hnzMidk5MlUoKR1ph7l5Uzou8vKAsRXD3e8nj/hg8IwU4u7dq35QFt0aZKD5Y/D6lcY72y0
	z2YCRTvU+Dksre6hF0wlwk0OyN9Z38PGAVWPbzPDV54P6Y2/s/bJaI5rA7jfWmiR9O87+gE3flZCg
	bUqFTZf0uthCDXwMmtjmDW6+d/Zw4VidX0C14J+BMqCp9h4zpHEAA/MIy3n5rB0l/wQ+w7xghp8Ny
	y3H55C3PrTSvQcZXQqR/qjhi1tVULUesQSAxzDylt7YpPItgqOC+G7Eho9Qf3UuTtUZRy8H7Uoz8o
	/0zLX7wFJQYAElEniBzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7efL-0006Ji-80; Tue, 10 Sep 2019 11:50:35 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7efC-0006JI-1L
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 11:50:27 +0000
Received: by mail-wr1-x441.google.com with SMTP id l11so19567491wrx.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 04:50:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Mp/+xh4B3lpSZPmUYL9dk1fTpKxVKAigwQspDwbteG4=;
 b=sa7HyIV0cMMHhgL1oWqjGwgDx6yJ6vvqgaCRI6+aVF6/EOgson57KX5taONf0xwhZc
 1tj9JmDKUINzY4o7P0ZhBW9gvdwuWFZoa5FraxRlX46Y3xbGIUiXtBz8bmJl3e4YVsN2
 KaLQXi4gy1N2kMStAOhOee9ajNjA2xn2QelLNQ3G76kGH/XIyjvf8QFDakFhQ3a8oViO
 foT1pNIPDEE+6AtOWPfcLkTx06a67K0AzOG6LqpRXIbptk9eHupVpHni78cO9Y6Ff31d
 RpmzI6X7ksKaQUorQnu+Fatg5ziWPviVAjqiYPCCzHsoX1xJ0TIF0P1Qa3NhxDdHIn9T
 tZhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Mp/+xh4B3lpSZPmUYL9dk1fTpKxVKAigwQspDwbteG4=;
 b=TA+FxSAEXaUqhA16dV1BNYEfwc0hsfJcE73pkpKkJlPXCzeuMjnAKz85MdCDJ/vzfj
 n+/WtckpuibzK4SRbr4sdaze83wxFiB0uk6w7SnzthZtorzEihhTZdQvRio545bFR6AY
 9uXDH9nLOqSkCM+ONyArpmKa2kDZAxZpYYU71DpBPA+aZFf9Lsa8Qt52TJSP4POi9t7d
 +19cayYkt64RLC9UCfOvtoMKAKOwJWNTbI7kF6UBrSRhXIYYNCbs681kOvhg7ZyHtPU6
 h4tJDzMRW9HM3fntc85NLgRNi5c3pv9zGFN0IL2DhLuASMfdHUO3JQTT16auQ65u7you
 umHg==
X-Gm-Message-State: APjAAAWLDle1e85ktU3CvQAvxFg0iUSXkxy1OrGZEVvNczgLfW0HDUNP
 CR41NoeVJziCjinzmShd/QHFH2r4yzWC1X1vd8M=
X-Google-Smtp-Source: APXvYqy/r75bH4ygY8YmMgMk2X4bmFVs4CUIe5R1fGiV9fEib8ljRft33b37v8rwJrOA1FWZgNDjwW6HapTyAN886xw=
X-Received: by 2002:a05:6000:142:: with SMTP id
 r2mr2208566wrx.212.1568116224155; 
 Tue, 10 Sep 2019 04:50:24 -0700 (PDT)
MIME-Version: 1.0
References: <1566936978-28519-1-git-send-email-peng.fan@nxp.com>
 <20190906172044.B99FB20838@mail.kernel.org>
 <CAA+hA=To9B0H1z6Hh1eSZN9_rcextT_Oe-CTMmz9fC9CDNUBTQ@mail.gmail.com>
 <DB3PR0402MB3916906683B58843B459ABE1F5B60@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB3916906683B58843B459ABE1F5B60@DB3PR0402MB3916.eurprd04.prod.outlook.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Tue, 10 Sep 2019 14:50:12 +0300
Message-ID: <CAEnQRZCAWa61dj+0=iTBQOrntZ-8mk=YB_jtRV4LAEGTfwZuHQ@mail.gmail.com>
Subject: Re: [PATCH] clk: imx: lpcg: write twice when writing lpcg regs
To: Anson Huang <anson.huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_045026_103204_D1F49AD2 
X-CRM114-Status: GOOD (  16.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Dong Aisheng <dongas86@gmail.com>, Stephen Boyd <sboyd@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 10, 2019 at 1:40 PM Anson Huang <anson.huang@nxp.com> wrote:
>
>
>
> > On Sat, Sep 7, 2019 at 9:47 PM Stephen Boyd <sboyd@kernel.org> wrote:
> > >
> > > Quoting Peng Fan (2019-08-27 01:17:50)
> > > > From: Peng Fan <peng.fan@nxp.com>
> > > >
> > > > There is hardware issue that:
> > > > The output clock the LPCG cell will not turn back on as expected,
> > > > even though a read of the IPG registers in the LPCG indicates that
> > > > the clock should be enabled.
> > > >
> > > > The software workaround is to write twice to enable the LPCG clock
> > > > output.
> > > >
> > > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > >
> > > Does this need a Fixes tag?
> >
> > Not sure as it's not code logic issue but a hardware bug.
> > And 4.19 LTS still have not this driver support.
>
> Looks like there is an errata for this issue, and Ranjani just sent a patch for review internally,
>
> Back-to-back LPCG writes can be ignored by the LPCG register due to a
> HW bug. The writes need to be separated by atleast 4 cycles of the gated clock.
> The workaround is implemented as follows:
> 1. For clocks running greater than 50MHz no delay is required as the
> delay in accessing the LPCG register is sufficient.
> 2. For clocks running greater than 23MHz, a read followed by the write
> will provide the sufficient delay.
> 3. For clocks running below 23MHz, LPCG is not used.

Lets add this information in the commit message and also
enhance the comment before the double write.

Also, why can't we add a udelay after the first write and remove
the second write as having two writes for writing a value looks
very un-natural.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
