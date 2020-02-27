Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1F0F172BA2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 23:43:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ne59MxPUhNKHfG12Hie6kuUegF9BlFsZsm51SKnQrPI=; b=DhxvuArcqdAvIc
	fcpzSUYrVYIfAaGTdnvVLkLNj88DMoGehjmS1K9ocxv2XiauIn+kX/NlBtYiWDnnho+D3vkqKjnPZ
	LS3sliXhxDyA47tyD4QjG4rOVYGyZss4dEcNJyRwLOrR70w2MZEkaadQcAPXC4a/yku/Sp2kuo3bB
	TA5Sox5Xhv0Mzy7X+ONEQMf2FJzw9/ocrQxADHjkn5LSh9Qkm0+T41uEwU+A86sV1FzFhGy/BvEph
	UlKzkQL+KmwPhTAu6ccEs3mjAeNHWuTTbP3grcnzZYevDgFzGoTxz7m4P4pTJew8HipizQnIe4IHI
	jEx7254ghwYrK2otgoHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Rs0-0007rZ-5V; Thu, 27 Feb 2020 22:43:04 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Rrr-0007qz-Px
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 22:42:57 +0000
Received: by mail-pg1-x542.google.com with SMTP id b1so421655pgm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 14:42:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=eC6XULGo71DkkbKYMEVa3CebZbR3YIk7hU1LZdfvH4Y=;
 b=qn+7NLiaVpezukxBzFBwfG+epP+sfl+YlsORRJxCCoojrQj/h+YkBxM3i6YDE0AQJs
 P7T7DFMTB9R1RXIaeliDZ/dyWhM6CuLv2kO/sytHwO7bES5aZttcq2BrppClH47OLbih
 8glkk1PmO0wSymairAZIAQPbdboYTf0jc9+6madbyvW0p84zWN/JxZ4udBJCDn6mRfqt
 jd9n5MmIClzXAQ9CHp/v1tEiTBrPm4tZ7i/cyZuEmoDelTi8Iz9b5FAUMOXDPMbqEEX7
 ODi3nQW4+kEH1AhkrhqS4TXIZWBBmPcmnkuQblEIuHdpsioRqGi/GZZCFJdDdpOtidJT
 pm8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=eC6XULGo71DkkbKYMEVa3CebZbR3YIk7hU1LZdfvH4Y=;
 b=Sbk/Xc5xcZ9WkYjOCOGFNiaTCIIXSGJmwlmJ1k6zKttbt/d0jGuUp+Pxy5jzmFI0vq
 jO730xqMx2J769Cft74RLpFZNzBLNXeogh4We2f54p/OLQe7/whwBW86LVzm2R+eBVx1
 KL2V7P5H13NDlu4cYxLCsoQjvq70WGI+EFBa/MMFlpPFmMb6PaZkvBX/H3sS3A0AFJmR
 AqPrkq2lE981XqnVUOzu9sk+uCQErLrX8KSGY0Y7mAUnr0JoJQ3eK/Y28zFWIlTEq78x
 XxHpzduCdGSxce23Z1OFh4wtWSLb/3qryAwFr3Rl6WlIKoT/8vwrMokvmJOi759Uf7HH
 jLbw==
X-Gm-Message-State: APjAAAUui/g0K3AkklIYheiJX+mxCwDuO4RLhYdOY/cl+M1hIGujc9e3
 gOdhRNRcUuACRzs0MUsK2LQ=
X-Google-Smtp-Source: APXvYqzGTM6O1kzlusq2+UBm7XJw4SAY63lpqMM/UumlDNsXPcBi96eO1OrkgnLHxCGovebuWsNzJg==
X-Received: by 2002:a63:990a:: with SMTP id d10mr1562744pge.63.1582843374849; 
 Thu, 27 Feb 2020 14:42:54 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91 ([2620:10d:c090:500::4:d8f5])
 by smtp.gmail.com with ESMTPSA id a22sm8278610pfk.108.2020.02.27.14.42.53
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 27 Feb 2020 14:42:54 -0800 (PST)
Date: Thu, 27 Feb 2020 14:42:51 -0800
From: Tao Ren <rentao.bupt@gmail.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v4 7/7] dt-bindings: usb: add documentation for aspeed
 usb-vhub
Message-ID: <20200227224250.GC29420@taoren-ubuntu-R90MNF91>
References: <20200226230346.672-1-rentao.bupt@gmail.com>
 <20200226230346.672-8-rentao.bupt@gmail.com>
 <20200227165504.GA26955@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200227165504.GA26955@bogus>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_144255_866822_2AE96805 
X-CRM114-Status: GOOD (  17.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

On Thu, Feb 27, 2020 at 10:55:04AM -0600, Rob Herring wrote:
> On Wed, 26 Feb 2020 15:03:46 -0800, rentao.bupt@gmail.com wrote:
> > From: Tao Ren <rentao.bupt@gmail.com>
> > 
> > Add device tree binding documentation for aspeed usb-vhub driver.
> > 
> > Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
> > ---
> >  No change in v2/v3/v4:
> >    - the patch is added to the patch series since v4.
> > 
> >  .../bindings/usb/aspeed,usb-vhub.yaml         | 71 +++++++++++++++++++
> >  1 file changed, 71 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/usb/aspeed,usb-vhub.yaml
> > 
> 
> My bot found errors running 'make dt_binding_check' on your patch:
> 
> Documentation/devicetree/bindings/display/simple-framebuffer.example.dts:21.16-37.11: Warning (chosen_node_is_root): /example-0/chosen: chosen node must be at root node
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/usb/aspeed,usb-vhub.example.dt.yaml: usb-vhub@1e6a0000: 'aspeed,vhub-downstream-ports' is a required property
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/usb/aspeed,usb-vhub.example.dt.yaml: usb-vhub@1e6a0000: 'aspeed,vhub-generic-endpoints' is a required property
> 
> See https://patchwork.ozlabs.org/patch/1245388
> Please check and re-submit.

I ran "make dt_binding_check" in my local environment and don't see the
failures. The 2 properties are introduced in this patch set and I add
the properties in aspeed-g4/5/6 dtsi files (patch #4, #5 and #6): am I
missing something?

Sorry I forgot to add you when including the dt-binding document to the
series v4: will add you and all dt binding maintainers in v5 soon.


Cheers,

Tao

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
