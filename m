Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61332159F26
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 03:38:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LymFQ5ma7KimvSxDNMz/gBM7til9vKGejJSIUxcR4qk=; b=m07C0Igr7sLwy1
	TeXj2/qrt7dQ2Na1EHBNOQbmqQqldUHkNv1ARTeDCcZtu8jzMYi3TruWkx9tViHEDJSg6q1YGLvVS
	teDNwQTLuL6h0l2JdeffFcj/N+fAJ/1mkNoGgHHXx5l4cBrQqLuC73Xc4xG00Ea2fiT2lGs1K0/6h
	YJCtodIdJX+JyQ7DdFuCXfJwjuJHnpFyb/FOMQ4d2iaq6/sfbweD57UV3Fz/9QO+61qFcc/ceaZd8
	fMjclOO7A5IAwGXgEJvGBNJMKriVEWeavRmCaD5wZTCB0RcZ2ovNh4y9b5YcV3kJkhHlOBdDLo//U
	efunyCLcpNLXAeCsVDOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1hue-0004gf-1c; Wed, 12 Feb 2020 02:38:04 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1huW-0004fx-HX
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 02:37:58 +0000
Received: by mail-pj1-x1043.google.com with SMTP id q39so210611pjc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Feb 2020 18:37:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=vv3NHPZnBve5XiluETZotYu+d3bqwg0qJCx+3uhyaM4=;
 b=LqDTnVdwykUbgj17vRiSu0wFe6uQuLuoNTYxnt1hV1zA7zQJZ3Bu1dEQt4RI34I1TS
 Or2/lgMlxpcFQzXW463ugd85BrgR6lgMSKBiGhOmWpfD0H1f7PcEbVJhflRk3lwMfWo3
 x6wskEcFMMckElySxG0JLuRGy9KCJ0rFQPawyC295ueBCdHjobHOguzNBOOR7WlBwRaR
 OY5syFDOcpl+E49w1qaBDG105le2WjLWE+eQ6YJg8AubgePkguj0UTz+MB/RBxroaW0n
 lx2EFjfL5QjrX69I8wUKWAO2/nYbY5A1X27OhsVEa2/65vOy8MgC2ffxYouJxHKW6a/V
 4QZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=vv3NHPZnBve5XiluETZotYu+d3bqwg0qJCx+3uhyaM4=;
 b=hyE0YluP7XBHeRQJ3TjJJ1P8rBSWQcHhPACTQWiIW2UG8300Sbzkd0bYqBA2/lR/nV
 rkHuUu7N0tVqQR0ko7boD05pxQ7KA60bpF83tr554W8SutaIO+Rxiv1Y1b13nNvs3qFX
 0lJWq3hADe2y402z1io0DXbzSfjiEqnwTU+mpC1hsrEin8gPV91omzuq1Fh1Dlh2e9hG
 FM5lOa7IuwtE2sibsEGWi2cEn66vZZ71562PgXU4y7xeVvDux5CoTtg42guDc5wJx8me
 MamjPPyhC4QT3WrgPGS7ehiKiuS0H5z5sIHkopcPKdzfYDHMu1VHvwPLOYKJ1B9fXTix
 nnNA==
X-Gm-Message-State: APjAAAUhomvWTcHnz1g9yHjjXOz7WlNR+c6sXFaEjwpiz8+36qWngkkL
 HGg4MK5LmMvWEgp74ur95ac=
X-Google-Smtp-Source: APXvYqyuDguANzB58wFOK/4Z7FCp2UtZ0LngNySWG7JX3V31NtSorTHf3Kf9HvxxX7mtQN6BVwdbmw==
X-Received: by 2002:a17:90a:c388:: with SMTP id
 h8mr6993554pjt.83.1581475075299; 
 Tue, 11 Feb 2020 18:37:55 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91 ([2620:10d:c090:200::80a4])
 by smtp.gmail.com with ESMTPSA id d15sm5740978pgn.6.2020.02.11.18.37.53
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 11 Feb 2020 18:37:54 -0800 (PST)
Date: Tue, 11 Feb 2020 18:37:47 -0800
From: Tao Ren <rentao.bupt@gmail.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Subject: Re: [PATCH 1/3] usb: gadget: aspeed: read vhub config from
 of_device_id
Message-ID: <20200212023746.GA9834@taoren-ubuntu-R90MNF91>
References: <20200131222157.20849-1-rentao.bupt@gmail.com>
 <20200131222157.20849-2-rentao.bupt@gmail.com>
 <CACPK8Xe0b+zVNqf8v5YXOLkzqDeb4JHqec-bqFpaVFGTwHThhA@mail.gmail.com>
 <386e905fb705266efcac0c1b3a10053889c7fead.camel@kernel.crashing.org>
 <20200210190744.GA5346@taoren-ubuntu-R90MNF91>
 <746b08aabf7ea976a382ad2ca30fa10a095e7ed8.camel@kernel.crashing.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <746b08aabf7ea976a382ad2ca30fa10a095e7ed8.camel@kernel.crashing.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_183756_606307_B8AF4386 
X-CRM114-Status: GOOD (  18.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Felipe Balbi <balbi@kernel.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 devicetree <devicetree@vger.kernel.org>, Andrew Jeffery <andrew@aj.id.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>, linux-usb@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 Joel Stanley <joel@jms.id.au>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Colin Ian King <colin.king@canonical.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 11, 2020 at 09:50:42AM +0100, Benjamin Herrenschmidt wrote:
> On Mon, 2020-02-10 at 11:07 -0800, Tao Ren wrote:
> > > > This looks generally okay. We should wait for Ben's ack before
> > > > applying.
> > > 
> > > Shouldn't we instead have DT fields indicating those values ?
> > 
> > May I ask why we prefer adding dt fields (such as "aspeed,vhub-max-ports"
> > and "aspeed,vhub-max-endpoints") instead of assigning these values based
> > on aspeed family? For example, is it to allow users to set a smaller
> > number of ports/endpoints?
> 
> It's not a strong drive but it makes it more convenient to add support
> to newer revisions if the only differences are those numbers.

Got it. Thanks for the clarify. Will send out v2 patches after more
testing.

> > 
> > > Also we should add a DT representation for the various ID/strings of
> > > the hub itself so manufacturers can customize them.
> > 
> > Sure. I will add DT nodes for vendor/product/device IDs/strings. As it's
> > not directly related to ast2600-support, shall I handle it in a separate
> > patch? Or I can include the patch in this patch series?
> 
> Separate. Thanks !

Will take care of the change once this patch series is accepted.


Cheers,

Tao
> 
> Cheers,
> Ben.
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
