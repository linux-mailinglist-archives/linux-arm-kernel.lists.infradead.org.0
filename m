Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A408C43504
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 11:57:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BIewGWnKJx/IR7GnOtFk0sSIskHYEGiOgGSnF/3El0A=; b=mSRws9Deu57u0C
	pe1j27cbWySKmj8ucO/AQ+i2LFQBSb19PlmkSreZ6jarfaSfQ4WVtgU4bIcZq7hgabEWOxceIOdXC
	BdFHmDZDEO30j/SAL0xJIzy7tN3Na55NN9C0exxvBj5r6TWggQm3lKYm5h5ptqqSi43WALgVAy/cC
	g6iRF/0/DglZpcs0UljwtgjuyH7N6t/C5nkRVy3z+ruHCGw1aoPMoFMtzl82f/XwAZUvFvGLg4iNp
	JcjzTXt+70yTRgC94zPwgiYaWPok2xXnO+W+ZV/3bQV+Y5yw2KTBuIW5d8AWm2qhZhIwCYzc0JlU9
	4l+AkZogigkBmaydGoJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbMTZ-0000Ke-J7; Thu, 13 Jun 2019 09:56:57 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbMTO-0000KH-7S
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 09:56:47 +0000
Received: by mail-qt1-x844.google.com with SMTP id s15so21767113qtk.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 02:56:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=yUTqUBqkax5PLka8rAGeJRVrCzT0V8TyFvJFo1GfWPg=;
 b=FWH+zJrP5W9h0Ud+e694o5fSDxhYnVFhew5pr91jcr3G1zi/JDQcxoFaBilGW1NI5I
 ziPGqBHzdRLWY41yY/opDPe99zxFJ4Qgo2SonC3toojHroR6VMK5rb/+lZbgxWpgFVMW
 9lAHMks/mSNFdO5NfwP8B3T/OLDTTxtH8vQLBgvRRDo1ImOr3LqooZCpacZYiI7xCF3y
 qeDa1ZeiAzxgNQH8uUot3PCo/knONG+fiYBG0uwRVRmspvkrFfKYTCigrYII57UHP33K
 7w23p+HIibNCB8f3wfyQlcJgEbTVqCxULRdUmms4Pd6fCY3A4CVT3YEZAtX3m7sXJ2S7
 jIIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=yUTqUBqkax5PLka8rAGeJRVrCzT0V8TyFvJFo1GfWPg=;
 b=Q4L8mL99R0PybnTf1oeeOYp4XXA0xPBIImOsGfDNTUtK0Swgl344ec5WZ1UrQNKrJu
 36QQQ4TrUOJK1S1MgsrI6KlSpoThqG17L/HOewQOSG3Ti96t9qkhBQIFCf3QS94TOmX7
 EpL/BiIateACISDULYdJlvjj+NG1ySfhlHOlU3wOlnQL2zICfAMHo4iMPEcrltHr1Eov
 8Xthjlno92jFlUb4n1IKoJ/mN3WLz8aRzLT97S0l8DmnSHFsi7nnw1+UgDSr2fuW77Gb
 5T454OihwThuhU+dLX3KQ3d5O/51heSoEmILoXVJ88rSMKIkwhvD1R7gfHnKPRRZr63P
 yYwQ==
X-Gm-Message-State: APjAAAVCn42kjt8kTFbsrMpFV20b78SFUNdudE/4iWk/1zZsR7dtFmkh
 5hzR1Vm472c+DmJZiNMtuej8Yg==
X-Google-Smtp-Source: APXvYqyWgqhc0JZ0USh1kD+qATL5bjIR0yQg9niUku+JiOu1hqEfFKRFoCHLaS4M6k0J1VQQlNyFlw==
X-Received: by 2002:ac8:34ce:: with SMTP id x14mr76029799qtb.33.1560419805121; 
 Thu, 13 Jun 2019 02:56:45 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li1322-146.members.linode.com.
 [45.79.223.146])
 by smtp.gmail.com with ESMTPSA id a15sm1522337qtb.43.2019.06.13.02.56.41
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 13 Jun 2019 02:56:44 -0700 (PDT)
Date: Thu, 13 Jun 2019 17:56:37 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] coresight: potential uninitialized variable in probe()
Message-ID: <20190613095637.GA5242@leoy-ThinkPad-X240s>
References: <20190613065815.GF16334@mwanda>
 <20190613074922.GB21113@leoy-ThinkPad-X240s>
 <20190613081419.GG1893@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613081419.GG1893@kadam>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_025646_332899_A87D3E41 
X-CRM114-Status: GOOD (  25.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dan,

On Thu, Jun 13, 2019 at 11:14:19AM +0300, Dan Carpenter wrote:
> On Thu, Jun 13, 2019 at 03:49:22PM +0800, Leo Yan wrote:
> > Hi Dan,
> > 
> > On Wed, Jun 12, 2019 at 11:58:15PM -0700, Dan Carpenter wrote:
> > > The "drvdata->atclk" clock is optional, but if it gets set to an error
> > > pointer then we're accidentally return an uninitialized variable instead
> > > of success.
> > 
> > You are right, thanks a lot for pointing out.
> > 
> > I'd like to initialize 'ret = 0' at the head of function, so we can
> > has the same fashion with other CoreSight drivers (e.g. replicator).
> > 
> >  static int funnel_probe(struct device *dev, struct resource *res)
> >  {
> > -	int ret;
> > +	int ret = 0;
> > 
> > If you agree, could you send a new patch for this?
> 
> Obviously that's an option I considered...  The reason I didn't go with
> that is that a common bug that I see is:
> 
> 	int ret = 0;
> 
> 	p = kmalloc();
> 	if (!p)
> 		goto free_whatever;
> 
> In my experience it's better to initialize the return as late as
> possible so that you get static checker warnings when you forget to set
> the error code.

Just want to check one thing, which static checker you are using?
I use sparse but it doesn't report this issue (I learned coccinelle
also can do this but it outputs verbose logs).

To be honest, I didn't often run static checker when committed patches,
but hope later can improve for this.

> Also I think my way is more readable.  I like to make the success path
> as explicit as possible.  I hate when people do things like:
> 
> 	if (!ret)
> 		return ret;
> 
> About 10% of the time when you see this it is a bug, but it's hard to
> tell because it's not readable like it would be if people did:
> 
> 	if (!ret)
> 		return 0;
> 
> Or sometimes you see things like:
> 
> 	if (corner_case)
> 		goto free; /* success path */
> 
> Without the "/* success path */ comment explaining why we're returning
> zero most readers will assume it's a mistake.

Thanks for sharing much knowledge; your change is okay for me.

I think the point is the good habit can avoid pitfall and traps :) [1]

Thanks,
Leo Yan

[1] https://www.amazon.com/C-Traps-Pitfalls-Andrew-Koenig/dp/0201179288

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
