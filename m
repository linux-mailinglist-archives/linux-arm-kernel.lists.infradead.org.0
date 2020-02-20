Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A35681669AF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 22:15:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cBKWa4BBe0KQ02bHeTzoxuY0E2eq/lHf/iMuu8joqw8=; b=PurfxvAUptr8Qv
	ADK+fgBbMeTLT4Ti7BVMzfChegCdrtQlyH+JiIJC882yVq2BtCK+3TZpigpjQVx/kokRjb/pnRLo0
	kGQ9KqjpNNkumwnt/icr3i6nmBJaH4RJzgfda86h76uLu+Xq4rE1PutYoqS/pnGbjYGxxWLlIA1hu
	Sj5D7ZG0Z0QqynfhEe9TPrlTsxgm3Wxh4j8qCwiCY2N/wZD2xA65nIDnmw8CfyIjEE6bg0sJ4hfkK
	eeBCHf/Hfkf4jO9dbaSKH5Kfr71HQB6D3+NfJFaa+nc3EPS6zi8KZmwLF4RzSAlgPbN9Byant5pVb
	7rc5gHm/3WXABoGP3GBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4tAS-0004gy-Pi; Thu, 20 Feb 2020 21:15:32 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4tAE-0004fH-T6; Thu, 20 Feb 2020 21:15:20 +0000
Received: by mail-ed1-x543.google.com with SMTP id m13so35421740edb.6;
 Thu, 20 Feb 2020 13:15:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=E0r8UtKklC8vn0exQFm1xc2bM7Px85fwUILOFwxpfXc=;
 b=Zk+cdZTJrrQGLS4LPCXUuDR4TnwujssZT/tflyRWzR4m5EuB74oGIb4XNsW8ZpTcV6
 0bMOKocFAC5Aws/uPZuTdgEtDPOjoyukKgAGlNmDCD977jXJDA419hAYFYPI1NXVuJQo
 h430UdKqeKyZxLWCK4GO4NKiUkni6qDd7foBhauhsIrn9EgNs9smHTIWE+gilQ/16aAA
 qfn6Hasa8dA4DT4sDD1+nxpUPc7G2OPFgzjY066Dx0k/Rav91/e4+SBstXos/38maA95
 wnZg7wriDejBaAEUGOUJBhPWdWDn0GFAE47f0mBxFDKwa5X6dxLRje0PnLK0qSHVgZ26
 oMsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=E0r8UtKklC8vn0exQFm1xc2bM7Px85fwUILOFwxpfXc=;
 b=DktQ0ADLk0yIomADJM/oBKZ+oz3KyvjicwJJLh4XSSqZjUYOJFHaQsybXc4lkHrTRI
 tmVXj8Jy6rcFLQ7cOOBySk4w/KG7HzdAphzPnDJfTR31bs5dY1TaARPp4Xz+UEIOZ8sH
 Z2AkA+p6MWhKosIgQZhNvMo/e220p1qzhd3k6KFmRNZLivvbb3oezX9JVythWQ5MqOrP
 ZuuRYK+4oU7HUqHCHaJmKh/yoxgCGO+cq6m1k+eDOswaEhVKqSyDiRI0YkOeQjAhQkRv
 iXYH1gKqQsLAybhYupWd9KxAUckEjM7YRhKotRwqZV8cG7aMDUBbu4tOofvgadX2rd5K
 xJQw==
X-Gm-Message-State: APjAAAU/1t2juVZ0GjUawswdu/etU/73TjFVKu+VawIcdNajzy5roLms
 tLz34mV8j/tCZKdjfAUXepAGNGKZidiYUR5jMe4=
X-Google-Smtp-Source: APXvYqwXYPTGE8gx5kvAp7lnVSFQVA+NMeL3QVC6+h/cuRK/8EgB3ahTv0Vbyn5nmgxN9HxsBKLSAoZv7ayNwuuXxTA=
X-Received: by 2002:a05:6402:2037:: with SMTP id
 ay23mr29262250edb.146.1582233317366; 
 Thu, 20 Feb 2020 13:15:17 -0800 (PST)
MIME-Version: 1.0
References: <20200216173446.1823-1-linux.amoon@gmail.com>
 <20200216173446.1823-4-linux.amoon@gmail.com>
 <1jmu9hzlo2.fsf@starbuckisacylon.baylibre.com>
 <CANAwSgSaQgU=H3h0S9deT11HA8z9R=Fhy5Kawii9tSBxKf2Wgw@mail.gmail.com>
In-Reply-To: <CANAwSgSaQgU=H3h0S9deT11HA8z9R=Fhy5Kawii9tSBxKf2Wgw@mail.gmail.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Thu, 20 Feb 2020 22:15:06 +0100
Message-ID: <CAFBinCCSosE1XfwbKZOR9G+DVYg8zFcKShmTNWUhh1e8W0VoAQ@mail.gmail.com>
Subject: Re: [PATCHv1 3/3] clk: meson: g12a: set cpu clock divider flags too
 CLK_IS_CRITICAL
To: Anand Moon <linux.amoon@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_131518_935988_47B7477C 
X-CRM114-Status: GOOD (  14.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Neil Armstrong <narmstrong@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Linux Kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-amlogic@lists.infradead.org,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anand,

On Mon, Feb 17, 2020 at 2:30 PM Anand Moon <linux.amoon@gmail.com> wrote:
[...]
> > > @@ -681,7 +682,7 @@ static struct clk_regmap g12b_cpub_clk = {
> > >                       &g12a_sys_pll.hw
> > >               },
> > >               .num_parents = 2,
> > > -             .flags = CLK_SET_RATE_PARENT,
> > > +             .flags = CLK_SET_RATE_PARENT | CLK_IS_CRITICAL,
> >
> > Why not. Neil what do you think of this ?
> > If nothing is claiming this clock and enabling it then I suppose it
> > could make sense.
> >
> I would like core developers to handle this.
> Sorry for the noise.
can you please resend this patch with only the change to g12b_cpub_clk?
I have no G12B board myself so it would be great if you could take care of this!


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
