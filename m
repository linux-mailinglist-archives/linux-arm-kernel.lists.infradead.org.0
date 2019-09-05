Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B62DEA9F6D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 12:18:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vouo2HOOuCf6uax5qRv0BFjEP9B6mL33CYN0D2g39FY=; b=HDcqusKKrEkLLO
	UqawXR8JA19Ny56hcy5z9DLJkEUzGmwMS/wdFYWiFsK/WezSral+IaWOdriwSchbnSMJ/QfNL9tJM
	bOAM4esvDA23ipprxaymEk1QulPwmX4tWP20Xcj7j87nz2oJ38F3YjZvwxxJEXFd9v5+S7d5ux8JK
	7pFu2d4sGiGE0m2vZQxT+a/7vPEQ1tc3ms915mNdLnMFfEAOQqt9SyBImKBdLEvnjO3t66vAOSt9r
	0EgGchCNnparPpOKj1u3ikBFvIcZjoOQA3UatJgJUCuOFXalWUrq3VPIuwQR3BSb+wRxexhQpUdGX
	g8SkthJjbe0UvRu2Q1ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5oq4-0005Yr-0C; Thu, 05 Sep 2019 10:18:04 +0000
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5opt-0005YB-Kb
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 10:17:55 +0000
Received: by mail-qt1-f196.google.com with SMTP id o12so2146430qtf.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 03:17:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RffJ7InQL31j5GA0tk88FRNmNw9DfUtPHCAY7O517yY=;
 b=s5iynrvjK3EgTppxwEBAkQBJNkWPVOjtpHdJTJyfNdh6JUeHgODYkeCCp5RmQCX27g
 oJX9xjEhjxNFr6L7bH+Hjwu+ZLR0jo65M1QJy37CHuOi4rblp37sjHPDWmTOb+G+HMNN
 rYyCpNWDy9FbOXmOsdccuvjyMauaR0TB4uFqPnjnGrWQNbYEEuMpvzvUe8vNd1piwwGP
 P8Kq+o9qYWsL4hFxIicmP4FXAci1e2Ie4cEYNf9h4w3WP4vmAjT80u+v8kTg98s15WoG
 GK1jWM/4CmKzyDYcLocVQ97tg7UWQJDwf+zh7i9+PzvfqT/d6sw8cnNS1ulamk2i3DM8
 iHpg==
X-Gm-Message-State: APjAAAXIyZ2z+wmzGhyOlrqS+cI+xdIF41tKoWBiUl0hSb/GeHYXmRbj
 P4gHp3fjLVl0GtST8UYQsVY1XGph1ugCJ3g+46k=
X-Google-Smtp-Source: APXvYqwuebU2u/F2gHA1bDb+BAE+/VJQoganY1fAoMnsD+auDbyJLIa9btOXgvoh8se4YaEzjBq01+7ONjYkz7KCiJ4=
X-Received: by 2002:ac8:342a:: with SMTP id u39mr2699225qtb.7.1567678672404;
 Thu, 05 Sep 2019 03:17:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190830220743.439670-1-lkundrak@v3.sk>
 <20190830220743.439670-17-lkundrak@v3.sk>
In-Reply-To: <20190830220743.439670-17-lkundrak@v3.sk>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 5 Sep 2019 12:17:36 +0200
Message-ID: <CAK8P3a1oqj5wXFgf+99=H4=hNrpnrwa05c+YctN64tHLvmoz5g@mail.gmail.com>
Subject: Re: [PATCH v3 16/16] ARM: dts: mmp3: Add MMP3 SoC dts file
To: Lubomir Rintel <lkundrak@v3.sk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_031753_679792_AED8CA7F 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.196 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Jason Cooper <jason@lakedaemon.net>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>, "Cc : Rob Herring" <robh+dt@kernel.org>,
 "To : Olof Johansson" <olof@lixom.net>, Thomas Gleixner <tglx@linutronix.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Aug 31, 2019 at 12:12 AM Lubomir Rintel <lkundrak@v3.sk> wrote:

> +/ {
> +       #address-cells = <1>;
> +       #size-cells = <1>;
> +
> +       aliases {
> +               serial0 = &uart1;
> +               serial1 = &uart2;
> +               serial2 = &uart3;
> +               serial3 = &uart4;
> +       };

Better move the aliases into the per-board file, not every board
would have all four uarts connected, or labeled in that particular
order.

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
