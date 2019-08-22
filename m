Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6892A99594
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 15:55:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cn47LbYyoFwldeUqC1wZsz+WKMVWCg+Br977j+wIPoA=; b=IROi/sU6KBFptx
	aRwBeVF7he9sZQQLRPpDSLE6Z2YGI7IYuho2nx4eaKU6cr5fKDGeSK7tTj9Rq6Cc6XjjJn0YJQ4Dj
	z6Zs7O459sk/uNTxzEqcA/EKooa2hJ/9aCdxeOwAjmHUBj6HdQO//litIu/55Xv6evqWMuK8+6/aU
	eJFk/ivHrxBrjkolHcX/roAqmpRM3deZ+eVLW273MxgQVKeTZau5BjpMwnezzW7i96QauamYcQBHV
	0PFNVJihwt+Spjh0REKV27e+TTJtfFshlY3x2gNNF60Ha7DH52IkgFFpBAYF3IlY/leX4Rg1W7lKR
	1n23uaScf/5chFj0VUsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0nZ2-0006WN-32; Thu, 22 Aug 2019 13:55:44 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0nYq-0006Vg-Mm
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 13:55:34 +0000
Received: by mail-pf1-x441.google.com with SMTP id g2so4038469pfq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 06:55:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=pVS9WjZ8RWCSBv6JVW5/oNJDRTIjY7tJwBPEyclsS3s=;
 b=IHwJHSCrZqwuxLg+z9PPuWxBtzeGhgAcD9jbCyNf7SVvnbEYEC7sAULbMT2EfPFyng
 9Gu6yf9O1eH34wTMSQkb3aF/w9vUZKZHXAqzau1Zs48p0Q9w0ZJI90Qx/i2B92E2BH/m
 aPAxH9UWBwnGkUXLyHcpJqvRw8GzmYZGDYi07ux6OMSttTDL7fSOevIObEPBOiGEM6Cq
 G7suHv7mIKdp15Tk4i8uRrjOH5Oh3qtPH6lxCTvPOo1Ti9O4Nlhzcj1x+Luj6OEiPDFV
 2suCvr6o6JxtVothsXeejOPG1tN3DA4OWAOosJkqclGKmUrtEx/0h4IHi/gdwB5Sz17U
 ECmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=pVS9WjZ8RWCSBv6JVW5/oNJDRTIjY7tJwBPEyclsS3s=;
 b=mpWnSmA6bSjbeFuKY4tHgzAvCmRIwGqgDw6ZY50AoG846sGHQl4xISFyBjMoDeVBjQ
 +GKrACdkJkEiaqDUKpna1l7DxdnAMzuMMV/kEE0UcomswGmGjXUgckResTxI094EaYYS
 epin4krDnVa68Uv1hIPYfJ9IdBT8Huj7LJZ4vcZFC/Go0KJTxkXVCzTL91sHNXqtE9R2
 rHtr0uAAoLeGU6kBDLAz6uD3WoFYq8jCgbKrojxnMWdFHMr7ARh5e7LtRfSXfwc9v14d
 HnpnJemf/Gge5gaOqm7Sn5944702zEbyn3dLSdb98loIF80QKn/xX40jscX7iqj9u0g/
 /Now==
X-Gm-Message-State: APjAAAX/1HQDBgd3Vl3Uc+hIyjIo5A2EwoT6h+xWX5BCMibNwcC+yXEd
 CzE3KnvfRdAoQqvGIakO8Wg=
X-Google-Smtp-Source: APXvYqzUGuZQ6dNDWJuoxeDgwfknlEuPoT5poRPywocRNFuXhtyT1qaDxcSK+l4Xj7UZ6pJX7sV9IQ==
X-Received: by 2002:a17:90a:bd0b:: with SMTP id
 y11mr5304283pjr.141.1566482130453; 
 Thu, 22 Aug 2019 06:55:30 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id e13sm33247202pfl.130.2019.08.22.06.55.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 22 Aug 2019 06:55:29 -0700 (PDT)
Date: Thu, 22 Aug 2019 06:55:28 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Ivan Mikhaylov <i.mikhaylov@yadro.com>
Subject: Re: [PATCH 3/3] watchdog/aspeed: add support for dual boot
Message-ID: <20190822135528.GB8144@roeck-us.net>
References: <1f2cd155057e5ab0cdb20a9a11614bbb09bb49ad.camel@yadro.com>
 <20190821163220.GA11547@roeck-us.net>
 <a022c0590f0fbf22cc8476b5ef3f1c22746429ac.camel@yadro.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a022c0590f0fbf22cc8476b5ef3f1c22746429ac.camel@yadro.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_065532_748047_EDE499C6 
X-CRM114-Status: GOOD (  23.13  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-watchdog@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, Alexander Amelkin <a.amelkin@yadro.com>,
 linux-kernel@vger.kernel.org, Joel Stanley <joel@jms.id.au>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 12:15:20PM +0300, Ivan Mikhaylov wrote:
> On Wed, 2019-08-21 at 09:32 -0700, Guenter Roeck wrote:
> > 
> > > +	writel(WDT_CLEAR_TIMEOUT_AND_BOOT_CODE_SELECTION,
> > > +			wdt->base + WDT_CLEAR_TIMEOUT_STATUS);
> > > +	wdt->wdd.bootstatus |= WDIOF_EXTERN1;
> > 
> > The variable reflects the _boot status_. It should not change after booting.
> 
> Okay, then perhaps may we set 'status' handler for watchdog device and check 
> 'status' file? Right now 'bootstatus' and 'status' are same because there is no
> handler for 'status'.
> 

You would still have to redefine one of the status bits to mean something
driver specific. You would also still have two different flags to read
and control cs0 - to read the status, you would read an ioctl (or the
status sysfs attribute), to write it you would write into access_cs0.

I guess I must be missing something. What is the problem with using
access_cs0 for both ?

Guenter

> > > +
> > > +	return size;
> > > +}
> > > +static DEVICE_ATTR_WO(access_cs0);
> > > +
> > > +static struct attribute *bswitch_attrs[] = {
> > > +	&dev_attr_access_cs0.attr,
> > > +	NULL
> > > +};
> > > +ATTRIBUTE_GROUPS(bswitch);
> > > +
> > >  static const struct watchdog_ops aspeed_wdt_ops = {
> > >  	.start		= aspeed_wdt_start,
> > >  	.stop		= aspeed_wdt_stop,
> > > @@ -223,6 +248,9 @@ static int aspeed_wdt_probe(struct platform_device
> > > *pdev)
> > >  
> > >  	wdt->ctrl = WDT_CTRL_1MHZ_CLK;
> > >  
> > > +	if (of_property_read_bool(np, "aspeed,alt-boot"))
> > > +		wdt->wdd.groups = bswitch_groups;
> > > +
> > Why does this have to be separate to the existing evaluation of
> > aspeed,alt-boot, and why does the existing code not work ?
> > 
> > Also, is it guaranteed that this does not interfer with existing
> > support for alt-boot ?
> 
> It doesn't, it just provides for ast2400 switch to cs0 at side 1(cs1). Problem
> is that only one flash chip(side 1/cs1) is accessible on alternate boot, there
> is citation from the documentation in commit body. So if by some reason side 0
> is corrupted, need to switch into alternate boot to cs1, do the load from it,
> drop that bit to make side 0 accessible and do the flash of first side. On
> ast2500/2600 this problem is solved already, in alternate boot there both flash
> chips are present. It's additional requirement for alternate boot on ast2400, to
> make the possibility to access at all side 0 flash chip after we boot to the
> alternate side.
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
