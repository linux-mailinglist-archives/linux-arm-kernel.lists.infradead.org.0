Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D9DA30951
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 09:26:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ht0BkCgwZGMv5B8hjtSnv1qxZppQN/lcStUkS5cctBg=; b=IzYTeFKED54cn4
	KkuXyAB4TZTdx0zBQslSRKRUcTX6ig1mJFYOiAgtdAsEqa/xOV7TVE3ZS7K5pELtPwSD6IiuhTFAO
	lXPmb6nM/h5kjKs+sF8SabCcNW1QtaMRp6Q2SLgOZTl9Cxyy05r2SDo5WRsPKduZPcw5TbQRlLxB8
	I2KqCb4B3GKjxvu6E05WgW6if7X2NFVeG82y1Vrnylbs7H2NdobiwKt7CIEMJyUdXZMPAGTsBZMk7
	1v+JaZke2IYy0Z8XxvP0TJjK+FkfmLqvEAfBokPrpydRlSm31mhazgQ0udgo9/HJjU4XcWSN/lihV
	UQ/06qHm78CEJQOWNXQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWbvY-0006Xi-IQ; Fri, 31 May 2019 07:26:12 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWbvQ-0006Wx-P9
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 07:26:06 +0000
Received: by mail-io1-xd41.google.com with SMTP id n5so7356194ioc.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 00:26:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HMhkc6QKxghdSk5QTco54OGClXC9USq7mw8yEKC/dZg=;
 b=rlIw17SjQk8R5gRB5MCzkRmy9anIFsuVUiXk7m/NZFMBdboDLKm3UC/EtGvlvNcdZK
 qGrwLQGq2rW4HuRgbv+9cGw863TKwsqhFQ3op+bLbVrW+KqFhhIyI3Y7hEUaUbG4Zmu+
 +Nc3l161TPzewsb6ry+g5GAJ4yqIHiWfjEm/c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HMhkc6QKxghdSk5QTco54OGClXC9USq7mw8yEKC/dZg=;
 b=nU/5XWJcb75YUbFK7/+qIjx7onThjVNymAcfdOMlKy4UmVTHELv4SpppNkl7kCSMsA
 5mw8omDp8twh8nyaq8qE5ICqkofuwnzrsYZX+L3flxCRqbHZxp43hg+n3S6PLRQt6Uo3
 +s6DWKRVnuve3nK2QD8J62UPC65ioAtye5A3lrZO/btZH5KI6HPZmajKQCghR35sktSO
 PL21W+pKy82NSPSuKY5U6hLq2aisTbL1FqtRppAun476O3kmxJ979VBhRgtUCAc0Na00
 O56vkDri/4QXvs+FiJExVVteDEg3vDbraM9x51bJe1a2OXBUYReWwbaXyJsByE3YxiX3
 f2zg==
X-Gm-Message-State: APjAAAU4FgfcexmJGNlB4riRzM4NOc7ZYjXA2eHQMGow6uhyO+2Maxso
 7262wpvi/bLb0gRrGS25QTjoSD1cqYzk8W7FPtC+cg==
X-Google-Smtp-Source: APXvYqy8YqHxgOmJ3DOFMi+1eQvArvIpx0esRPLJUvkl/uppnke9kcE464HrgsrNrktbD8QP8cudbV/NYCsIQU8jwCw=
X-Received: by 2002:a5d:9f46:: with SMTP id u6mr5396749iot.297.1559287563830; 
 Fri, 31 May 2019 00:26:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190529105615.14027-1-jagan@amarulasolutions.com>
 <20190531065806.fl4y2kex427qtysz@flea>
In-Reply-To: <20190531065806.fl4y2kex427qtysz@flea>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Fri, 31 May 2019 12:55:52 +0530
Message-ID: <CAMty3ZCfc=xh1cZrM0PST-=QNT8qFRLkjWb4B=7YtLitXo6MGw@mail.gmail.com>
Subject: Re: [PATCH v9 0/9] drm/sun4i: Allwinner A64 MIPI-DSI support
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_002604_819160_46D75542 
X-CRM114-Status: GOOD (  14.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree <devicetree@vger.kernel.org>, Ryan Pannell <ryan@osukl.com>,
 Bhushan Shah <bshah@mykolab.com>, David Airlie <airlied@linux.ie>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Chen-Yu Tsai <wens@csie.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Sergey Suloev <ssuloev@orpaltech.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 31, 2019 at 12:28 PM Maxime Ripard
<maxime.ripard@bootlin.com> wrote:
>
> Hi,
>
> On Wed, May 29, 2019 at 04:26:06PM +0530, Jagan Teki wrote:
> > This is v9 version for Allwinner A64 MIPI-DSI support
> > and here is the previous version set[1].
> >
> > This depends on dsi host controller fixes which were
> > supported in this series[2].
> >
> > All these changes are tested in Allwinner A64 with
> > 2, 4 lanes devices and whose pixel clocks are 27.5 MHz,
> > 30MHz, 55MHz and 147MHz.
>
> I wanted to apply this, but it wouldn't apply, can you send it without
> dependencies?

I can do that no problem, but [2] has dsi and dclk divider fixes that
would require A64 MIPI-DSI to work.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
