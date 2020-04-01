Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 273EF19A883
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 11:20:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mevZRWTnk7Udd8wkIKvUYhCriNy8Hx0Lp/qINqxamfY=; b=MIEqKSxPfKWutG
	2XdugpbTvRI1B3onpmMs5n3/fofrm/Ti3PzPmCu+NSlSbeEIIDhOb5OMctQXHdJ/tUdTu0omfnDlg
	ptnwjxwwMjm8NZneeWpSg3pCGXb1cwb0cdGRllv78FRBfcMymrfltsh+FkmvUtmF6OX+CnnhZsaps
	K7fLpK2WS63RboBloA+HJQ4x+KDj7Py06f6lUw28kvxwHMxUTbQ2aHli9UOu6Nn47rxuwg+EIGvzs
	d13uwy7rxwUMYEu2HwrJLBephPwBLLkVyspXELuIu32LKpIUb2l5vNzXRl1ic7X2nm/4R1FlVnRmZ
	U+Xrt2xVs3iaEg4Ax4dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJZXl-0000lL-SH; Wed, 01 Apr 2020 09:20:17 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJZXR-0000kh-0q
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 09:19:58 +0000
Received: by mail-ed1-f66.google.com with SMTP id i7so23837273edq.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 Apr 2020 02:19:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=oiXWCfIsx4h3K5MebDggs1yLqhBWHjw9GlgqdZt4chM=;
 b=EoGSYPCG4z3U7B7G8YIh3zO1cA7IJ4kl1BSnFhP8iwCRohmGTO/OCJoy4QMMmZHDiv
 M1ewZ2J0M+vqxh7mVPoBEvw8YQQzcCrNP2js/fKjo4/neAkrMbxlOx7OObOWX36hXYS+
 c0fJRvE94s04ZLu+aPFqpBBVb3efZII4CYR8ZfCsh4lHogBHoeY5wm+HCauH3/ZRso8c
 CmfNOqsocneKmn3PnnBrsiSKIS3BcRGVBO0+rFf0Gcb8ChXwR2C+vxvzDv8hq1wasXw9
 12R7/R2tlay0F9a4lZvHA5PBat0J1ENkJh9lA9Naqorhvs9T0BtOMTIDGP6h9ASX7sLT
 nHxQ==
X-Gm-Message-State: ANhLgQ2D2JMYjlZsqS5glWr3+1agivM0pPVH5IPg3TXYWPgf+LiIM5S9
 Q7lq+L1goEqAm7eqz/dgQ1I=
X-Google-Smtp-Source: ADFU+vtXO8qJ6/LomWoqPFo16aC2m31U0bjGq/5iuPLC69+YRJjCpnuSsVEXZGXdraHuzjQo5VWJNg==
X-Received: by 2002:a17:906:50e:: with SMTP id
 j14mr18523296eja.300.1585732794952; 
 Wed, 01 Apr 2020 02:19:54 -0700 (PDT)
Received: from kozik-lap ([194.230.155.125])
 by smtp.googlemail.com with ESMTPSA id w4sm393813ejz.44.2020.04.01.02.19.53
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 01 Apr 2020 02:19:54 -0700 (PDT)
Date: Wed, 1 Apr 2020 11:19:52 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] tty: samsung_tty: 32-bit access for TX/RX hold registers
Message-ID: <20200401091952.GA14425@kozik-lap>
References: <CGME20200401082749epcas2p2a774da515805bc3f761b6b5a8dc9e3d2@epcas2p2.samsung.com>
 <20200401082721.19431-1-hyunki00.koo@samsung.com>
 <20200401085548.GC2026666@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200401085548.GC2026666@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_021957_067002_2584463B 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
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
Cc: linux-samsung-soc@vger.kernel.org, hyunki00.koo@gmail.com,
 linux-kernel@vger.kernel.org, Kukjin Kim <kgene@kernel.org>,
 Hyunki Koo <hyunki00.koo@samsung.com>, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 01, 2020 at 10:55:48AM +0200, Greg Kroah-Hartman wrote:
> On Wed, Apr 01, 2020 at 05:27:20PM +0900, Hyunki Koo wrote:
> > -	if (np)
> > +	if (np) {
> >  		of_property_read_u32(np,
> >  			"samsung,uart-fifosize", &ourport->port.fifosize);
> >  
> > +		if (of_property_read_u32(np, "reg-io-width", &prop) == 0) {
> > +			switch (prop) {
> > +			case 1:
> > +				ourport->port.iotype = UPIO_MEM;
> > +				break;
> > +			case 4:
> > +				ourport->port.iotype = UPIO_MEM32;
> > +				break;
> > +			default:
> > +				dev_warn(&pdev->dev, "unsupported reg-io-width (%d)\n",
> > +						prop);
> > +				ret = -EINVAL;
> > +				break;
> > +			}
> > +		}
> > +	}
> > +
> 
> Does this mean that reg-io-width is now a required property for all
> samsung uarts?  Does this break older dts files?  Or should you
> fall-back to the previous operation if the attribute is not there?

Yes, it looks like silently breaking all boards.  Since
of_property_read_u32() will return errno, the warning message won't be
printed and all register reads will fail (return 0).

This looks like not tested on real HW.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
