Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BC82166B82
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 01:21:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DAizzo7NE4+tHQJfXSkj/VA4YbxWEMTbYpQDijDFp50=; b=ARCp67RsNywPs/
	v7MK5qa+fIE8+pTFtpsgw4ng5pB+8H9/uwB/IjCKKfSC3AT6UKbgV3Er3Szi9nD0oHt2jYZlR9yHz
	J3niTxayImqOznjXWTJdlPNfwEKpf9tzSjy9LzIXDjFf8MhJzo7vnhkn6Rbg+rJQfaa0j00dmWPKl
	/czB6deizbJKKOxc3K5AqV/yhF9MfqyDhYzvd7X8whMvv3drItTQ0inwo49M8ZsdWdMMwVBWQo9F4
	mQcTmJO2T7tEDdX4Fn2znXkOZ0hJ7zILFa3NsVLRmYGFQFz9+qI1WD2Pk8zlwgbaBnLxdDLaGeurJ
	a0yAs/KPeif6vux97CXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4w4A-0002zF-Ap; Fri, 21 Feb 2020 00:21:14 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4w41-0002yA-0b
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 00:21:06 +0000
Received: by mail-pf1-x443.google.com with SMTP id j9so251833pfa.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 16:21:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=a4/ljhrEhbsVqKPnJ2k+YSVwNBU/denU+0a+fK/lh98=;
 b=EVv11Zk8AYB9hS7c/Lkhd52HNoMejxxMg8MSwFwHJcv1rgn10PAhKhBkvQKJZ9BaG4
 NskY5M0YE8o7EDmxnYtEItF+4qEF9oy85BAypdcQLsWCfoUN5s6/K5sf4UBUKmZFHt21
 sPDTaDsivhrGrdnpq+r/7LFFJ6iUnNpEAJYJXg8Ee0SInqr6LR18ucHGaTIv12TSpOY7
 T3kbv9FZQGel1oR9RlWLR13Zh+N6dF1UN7NKb9P1kVE3+7PHhjs68qRSxLFcCG6rbc83
 bG7S9Xx0Y70mXDOROUbqjhVu+2fpCEoIw+v7N18ETcmTnwuHDxcgjGu+SiaRh2I9/UOe
 84zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=a4/ljhrEhbsVqKPnJ2k+YSVwNBU/denU+0a+fK/lh98=;
 b=AsqokEbVyVqapn+oO8NlvK31hbaCZX2dZX/E3FwxRCvrNtuTaCs6OucSdNcWVTdLSr
 a9mlFHDYP6ZL/hvKj19QGOkQ322RwC8LcqDZ2wYl2I5yrBomEYE0gp94wmcqzxd/Wn/b
 XM5VAAKwmJSiiBjko5EdWAsY2ukwDzEZA+9sU46PogfZAgTYTKhc/hkrLGhxuRuEdAnz
 OHCV6GTGVv2BMnQ1qEbDTM29pOf+W4fJHAUjLXowSGsZBrCbJGhqE3VsKiDxxfi30Yao
 fDtWfNrE2lyEPz84iVBdR4U6JfMc6OxiXfAbeEQ5G5SBg5wNBmEtg2lWqPhpbsDilUVh
 iJbA==
X-Gm-Message-State: APjAAAWgyFQRz4OwieX6osQY0U5aZNgCVuDwxZnnbrJ6Cnlj7ST13/PM
 +43Ex3S8/hzBFRpQa++zkS8=
X-Google-Smtp-Source: APXvYqyjiF/VG6y/NeQCdPXrhpSws4JsxzMcf4IkrfSRa3KYM7f7ExChm9MNA6NOGinrsiWkqQIdvQ==
X-Received: by 2002:a63:3e05:: with SMTP id l5mr35763336pga.293.1582244463971; 
 Thu, 20 Feb 2020 16:21:03 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91 ([2620:10d:c090:500::6:8f30])
 by smtp.gmail.com with ESMTPSA id t11sm541459pjo.21.2020.02.20.16.21.02
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 20 Feb 2020 16:21:03 -0800 (PST)
Date: Thu, 20 Feb 2020 16:20:59 -0800
From: Tao Ren <rentao.bupt@gmail.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Subject: Re: [PATCH 2/2] usb: gadget: aspeed: fixup usb1 device descriptor at
 init time
Message-ID: <20200221002059.GB7815@taoren-ubuntu-R90MNF91>
References: <20200218235600.6763-1-rentao.bupt@gmail.com>
 <20200218235600.6763-3-rentao.bupt@gmail.com>
 <55e77bcb37ec780094b8d226f89bd5557e30d913.camel@kernel.crashing.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <55e77bcb37ec780094b8d226f89bd5557e30d913.camel@kernel.crashing.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_162105_060937_9B436637 
X-CRM114-Status: GOOD (  23.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
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

On Thu, Feb 20, 2020 at 12:39:45PM +1100, Benjamin Herrenschmidt wrote:
> On Tue, 2020-02-18 at 15:56 -0800, rentao.bupt@gmail.com wrote:
> > From: Tao Ren <rentao.bupt@gmail.com>
> > 
> > This patch moves fixup-usb1-device-descriptor logic from get_descriptor
> > handler to "ast_vhub_fixup_dev_desc" function so the device descriptor
> > is only patched once (at vhub init time).
> 
> I don't like this either. We should make ast_vhub_dev_desc and patch a
> copy here too. I know today there's only one instance of the vhub in a
> given SoC but that might not always be the case.

Sure. I will introduce per-hub descripor instances in patch v2.


Cheers,

Tao
> 
> > Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
> > ---
> >  drivers/usb/gadget/udc/aspeed-vhub/hub.c | 20 +++++++++-----------
> >  1 file changed, 9 insertions(+), 11 deletions(-)
> > 
> > diff --git a/drivers/usb/gadget/udc/aspeed-vhub/hub.c b/drivers/usb/gadget/udc/aspeed-vhub/hub.c
> > index 4e3ef83283a6..b8bf54b12adc 100644
> > --- a/drivers/usb/gadget/udc/aspeed-vhub/hub.c
> > +++ b/drivers/usb/gadget/udc/aspeed-vhub/hub.c
> > @@ -76,13 +76,6 @@ static struct usb_device_descriptor ast_vhub_dev_desc = {
> >  	.bNumConfigurations	= 1,
> >  };
> >  
> > -/* Patches to the above when forcing USB1 mode */
> > -static void ast_vhub_patch_dev_desc_usb1(struct usb_device_descriptor *desc)
> > -{
> > -	desc->bcdUSB = cpu_to_le16(0x0100);
> > -	desc->bDeviceProtocol = 0;
> > -}
> > -
> >  /*
> >   * Configuration descriptor: same comments as above
> >   * regarding handling USB1 mode.
> > @@ -316,10 +309,6 @@ static int ast_vhub_rep_desc(struct ast_vhub_ep *ep,
> >  	if (len > dsize)
> >  		len = dsize;
> >  
> > -	/* Patch it if forcing USB1 */
> > -	if (desc_type == USB_DT_DEVICE && ep->vhub->force_usb1)
> > -		ast_vhub_patch_dev_desc_usb1(ep->buf);
> > -
> >  	/* Shoot it from the EP buffer */
> >  	return ast_vhub_reply(ep, NULL, len);
> >  }
> > @@ -878,6 +867,15 @@ static void ast_vhub_fixup_dev_desc(struct ast_vhub *vhub)
> >  		if (of_str[id])
> >  			ast_vhub_str_array[i].s = of_str[id];
> >  	}
> > +
> > +	/*
> > +	 * Update USB Release Number and Protocol code if vhub is running
> > +	 * at USB 1.x speed.
> > +	 */
> > +	if (vhub->force_usb1) {
> > +		ast_vhub_dev_desc.bcdUSB = cpu_to_le16(0x0100);
> > +		ast_vhub_dev_desc.bDeviceProtocol = 0;
> > +	}
> >  }
> >  
> >  void ast_vhub_init_hub(struct ast_vhub *vhub)
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
