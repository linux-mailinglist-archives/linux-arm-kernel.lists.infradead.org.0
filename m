Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E8FB172DF1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 02:05:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vPjlxkYmCkQYSFhYurXYZOP6hLE0w2zH12GK1n4MNVQ=; b=qUICMj9oMO2kok
	dpFGgC97fb11I81MVA7CfcRuSkzAnE7t9lqCfA/qN1k4W+QZTclIqEoq32egI6TvTZxsSdR2GIO+K
	JfN11+V6PoeW+DulmFlb+Ag/bwbfDqMqdvw9zUKjwT24XMaL3dl1qy4o9MLKjHD9XixaSvALU71XT
	i8ecIeWHpzAkjcKcK0MF//QkqzqEK26zlP3exN/74QSgiDeX89bBzzZM59IBvLhfKE1HOVn8qEHMw
	TuQ01c1oAUqOmJntq6sPfUzeI+OM3spqb22eiL/20krKHD2AujNKmeVi2pFFDPqZRFIXtk2/PUoeb
	HS8oaZf955o3X5YScwNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7U5y-0001n9-Mo; Fri, 28 Feb 2020 01:05:38 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7U5p-0001mo-KL
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 01:05:30 +0000
Received: by mail-pg1-x544.google.com with SMTP id d9so597930pgu.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 17:05:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=vYKIHHhVn7nSPH52/lrlIOtB7hqwWnXUydbXUcnZWnI=;
 b=QFlUCv7nCT2v8zoOhV2qa4uo6mlR9+Nsq7/xVvJLjsHIYBg9P4ixu6A7b7qhQfX8Qe
 vM2r2IJLVY9WzSAiDaGRlFnxtMv0848tL6yTTWdVjghb2Xv7E37AEUDJvaVREmp1BNIY
 940Ae6Ut8CrQrOp26oJlS2RyZXS+vfTFD/yZ9tb3CLTw9R9hPaFCY9Tmvvtv3wtrpMv2
 wsbFKm7PATc4wfRkkFxv4OB6EejtTBAuwkvi2tchL/GS8lh0brgPhwBQKAmHXetqk/pd
 Fczf/Ob3g8Rk03buXNFyaS8jPj0aEMjWjAAnatVfiDQsw3OFVl9MCsiJrbJCHh/etzdq
 Iy8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=vYKIHHhVn7nSPH52/lrlIOtB7hqwWnXUydbXUcnZWnI=;
 b=K6P3or2QyvusaZJprGTa+gpaiIEmaykMZe5lklPYYY3kuaC2nh3PlfAOM5i7mfOGku
 hbE8k6tlBnBRMQYRdXVjxxkHgR3kbj2P7XKucgcZ/MRRgOEXkCkI2Ma574n9B7uy3e0S
 HXPVb0vRwQiG7dRrEjcUMzg40B8EL1pU1z+UfCFf6U0iU0vorwymB2dM1aiD8AZSnPJn
 cLffmFrB3RyggR0cW3MTrGnBPkr6uCi/rxMXT6KZmg1Nqd5HnJAcpLNBsXIDzX0hMG4K
 Kh8+uIid1ZgPrNgulPEtrRfWjSIa2NSuq0a2ZKKJ5VsL+9CWB6VJoJkfiNoOfVHUqgKp
 5e4Q==
X-Gm-Message-State: APjAAAVq3AcpPC1JjvLgW11ibTLlQQaagHmIryt+jJGRHkm3AgKlhzAy
 VQS9cmZHMiqZe9J6NrdPbAs=
X-Google-Smtp-Source: APXvYqyTntILByeXSll2nrJCqdigFZSVhDQGQyd6dWT/1lZozrCoBY86BHFMbLTiHaa612sjWifBGQ==
X-Received: by 2002:a62:3343:: with SMTP id z64mr1754059pfz.150.1582851928639; 
 Thu, 27 Feb 2020 17:05:28 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91 ([2620:10d:c090:500::4:d8f5])
 by smtp.gmail.com with ESMTPSA id 136sm7975604pgh.26.2020.02.27.17.05.27
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 27 Feb 2020 17:05:28 -0800 (PST)
Date: Thu, 27 Feb 2020 17:05:20 -0800
From: Tao Ren <rentao.bupt@gmail.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Subject: Re: [PATCH v5 7/7] dt-bindings: usb: add documentation for aspeed
 usb-vhub
Message-ID: <20200228010444.GA19910@taoren-ubuntu-R90MNF91>
References: <20200227230507.8682-1-rentao.bupt@gmail.com>
 <20200227230507.8682-8-rentao.bupt@gmail.com>
 <3150424b9e9f5856c747a0fbf44647919f49209d.camel@kernel.crashing.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3150424b9e9f5856c747a0fbf44647919f49209d.camel@kernel.crashing.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_170529_694808_82FDD3A5 
X-CRM114-Status: GOOD (  15.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-aspeed@lists.ozlabs.org, devicetree@vger.kernel.org,
 Andrew Jeffery <andrew@aj.id.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, openbmc@lists.ozlabs.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 Stephen Boyd <swboyd@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 Joel Stanley <joel@jms.id.au>, taoren@fb.com,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Colin Ian King <colin.king@canonical.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 28, 2020 at 10:30:02AM +1100, Benjamin Herrenschmidt wrote:
> On Thu, 2020-02-27 at 15:05 -0800, rentao.bupt@gmail.com wrote:
> 
>  .../...
> 
> You haven't fixed the problem spotted by Rob which is that the example
> is now out of sync, it's missing the required properties.

Ahhh, now I know where my problem is..
Let me see why I cannot reproduce the error on my side; otherwise I may
create more noise in my next patch set (customize device IDs/strings)..

> Also long run I think best is going to have a child node per downstream
> port, so we create a matching linux struct device. This will make it
> easier to deal with the other device-controller in the ast2600 which is
> basically one of these without a vhub above it.

Maybe a dumb question: what would be the proper place to parse the child
node/properties when they are added? For example, in some usb_gadget_ops
callback?


Cheers,

Tao

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
