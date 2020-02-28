Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCDD0172EBC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 03:17:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wgmq3bGCa/f2+RhuQPEmNG1PXF7tNYTteqgFHqCklA0=; b=Vcc+XqjkiCZpZU
	TfVxuvu3FpRRi5iRiOHcxDAp9Ozs8daeGoz0qlp6b+aT1Gl54dOUmyDtECrbHTw3Gv3oYv3P6eeot
	rfou9BBxbiOymaRFOxS27P3DFwG773F7Hw/OAVybS1Ege9mFNaPyEI3eNJXUxtyc3MNxZ3srLrDU+
	+afrPZadhimfs+PiQwvPLk9KzMQo793LAbzIDsUN6AvQQ1DuhGiUnPOqBQtrhAmqYfu+Toq36qlIx
	s0u7t5dOFXoLmKZUhJoZIj+5o9jwhbbaBDfHbYqEBDOs20yCRHgxU/QO0OxxB3woSKaem0ovm9H/i
	DozPEV3UAuOpfJPbRKUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7VDd-0000fB-Cp; Fri, 28 Feb 2020 02:17:37 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7VDU-0000eg-JM
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 02:17:30 +0000
Received: by mail-pg1-x541.google.com with SMTP id 6so689681pgk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 18:17:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=2EGIDOcwSkQzmyztRJT0eD0yvIAqM5S1zi6e6PNVyBE=;
 b=hxyIrW6h6Ksa8bvLFVo5YgU+CvO5X/olU27A6pYYW76LeZfR4jZ8f8GVTuclvQdm35
 7Xivx1a7iFUjwdrTMQD+wjxC9C8mg/36mvjEzV69PG7apCteWxANtJfQmjescKO4nzb4
 +GIjeyT9KxhNLjNOAmEPh7PIWiuDeD/Sgu8a/8B49qQLPHhdse0LWldQ4B3+kNuozhDl
 LNVwypVwSM2iN89h1gz8E2KXgEBxQCRfnV+D7wv1tta50ly6Pwepl8eN8n7ZkV5Tzfd+
 FsNfc6qDHLBk7OH2XsYWwvyJ5634BgdBxfLMMcTH8GBjeViZpmiZX601BMpnDEHWOGfm
 GGRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=2EGIDOcwSkQzmyztRJT0eD0yvIAqM5S1zi6e6PNVyBE=;
 b=Yn40tUEIfg6j1ujTFIp2Ptkhu6E+iS+uvu5rUkHjjebcf2q/Wdo7CaKlsiVyYTtKfK
 zjYmTtTLmL+d8rf8GuiZE6DSyZx+xcUvV5UdmSzr/9+Twg1bNsz5TryDmYwCWHnDc/8x
 Tl7PkB7pSuQjzX65cTwXUxgZCcF6X2ir7udUqgaPFZLIDbm3T3cmKpgp+uWzqhMx+FZt
 /M/+W2lh9AEmZPSIAa8b3Fvd1Jm+n/gVwyIy037jI6Zwa2sSGDLKtCIEEsEsS9Lp89QC
 UH90xEYjg3N38gAAoXECGTFJ3ZPznwf/637K4e/StMLWoK9SKyrQflvH7UWzmk2prF1p
 1iyw==
X-Gm-Message-State: APjAAAWJGHEB6f3WHeKNxhPdc3XWB8TGBYE4sC/w9nbNKJMj5GSXZ2+e
 vDnevIpifEaeUmoim8PlAyc=
X-Google-Smtp-Source: APXvYqyUgHXDdMtyN5qf7cF9j3WUfPh16bn//Fez+Zv6OmxeEF/n0f8zXq5msQ21fZp6elwSchs83Q==
X-Received: by 2002:a63:6ec7:: with SMTP id j190mr2177647pgc.356.1582856247969; 
 Thu, 27 Feb 2020 18:17:27 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91 ([2620:10d:c090:500::4:d8f5])
 by smtp.gmail.com with ESMTPSA id h185sm8824175pfg.135.2020.02.27.18.17.26
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 27 Feb 2020 18:17:27 -0800 (PST)
Date: Thu, 27 Feb 2020 18:17:19 -0800
From: Tao Ren <rentao.bupt@gmail.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v4 7/7] dt-bindings: usb: add documentation for aspeed
 usb-vhub
Message-ID: <20200228021718.GA10827@taoren-ubuntu-R90MNF91>
References: <20200226230346.672-1-rentao.bupt@gmail.com>
 <20200226230346.672-8-rentao.bupt@gmail.com>
 <20200227165504.GA26955@bogus>
 <20200227224250.GC29420@taoren-ubuntu-R90MNF91>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200227224250.GC29420@taoren-ubuntu-R90MNF91>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_181728_664525_D34470D0 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, openbmc@lists.ozlabs.org,
 linux-usb@vger.kernel.org, taoren@fb.com, linux-kernel@vger.kernel.org,
 Stephen Boyd <swboyd@chromium.org>, Joel Stanley <joel@jms.id.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Colin Ian King <colin.king@canonical.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On Thu, Feb 27, 2020 at 02:42:51PM -0800, Tao Ren wrote:
> > My bot found errors running 'make dt_binding_check' on your patch:
> > 
> > Documentation/devicetree/bindings/display/simple-framebuffer.example.dts:21.16-37.11: Warning (chosen_node_is_root): /example-0/chosen: chosen node must be at root node
> > /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/usb/aspeed,usb-vhub.example.dt.yaml: usb-vhub@1e6a0000: 'aspeed,vhub-downstream-ports' is a required property
> > /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/usb/aspeed,usb-vhub.example.dt.yaml: usb-vhub@1e6a0000: 'aspeed,vhub-generic-endpoints' is a required property
> > 
> > See https://patchwork.ozlabs.org/patch/1245388
> > Please check and re-submit.
> 
> I ran "make dt_binding_check" in my local environment and don't see the
> failures. The 2 properties are introduced in this patch set and I add
> the properties in aspeed-g4/5/6 dtsi files (patch #4, #5 and #6): am I
> missing something?

I think I missed "libyaml-dev" package. I've reproduced the error in my
environment and added the 2 required properties in patch v6.


Cheers,

Tao

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
