Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0A5414A2B1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 12:12:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F5NdlpYDm5vWUAZOj8TWClblngbk/NpqcXSg18T/PwA=; b=qFv164nsq1m74J
	7+NXmEXm6HSHM5/bdPV4Ekj3WVZQHvfgXU0b7Vd0/t6ulHH+DkjjW8fwbnkKAc1vgjl7beqGK2VuD
	qHJxY0eQmFFKqy50fR/7ipdSq4yFF4rg7SDJixqtmlrmD3WYbhuEmGUvk3rn020mLDqwOsOA7qddh
	Po22dHGbddcOBNWXA1hKBSnO0H34OBV2J0B940lvwtCfL3PcTlOFFAHFa8flazpec2JRc89p1e083
	8BK9/Xt5ffN7oQ6r78Z0rC+TcObmN2njzQysCMXW1zMrqXFD5TpjTIyWlMRcGkQWNIgE/4SDCgAwx
	KItv4T6kBzmqMXyDpRqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw2JW-0000XE-NM; Mon, 27 Jan 2020 11:12:18 +0000
Received: from mail-lj1-f195.google.com ([209.85.208.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw2Iz-0000Eh-96
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 11:11:47 +0000
Received: by mail-lj1-f195.google.com with SMTP id o11so10199742ljc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Jan 2020 03:11:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=0rZPGktF2ABAmRfi1HI1eeGD5Kif6zMVt4/e43jHA6U=;
 b=W1bMJB/Yx8hh1REBlxfNCtR8uKTHi1JzmtU2MZ5WqdMvjEaoN48jCOzdy6BZWJZLRe
 8yhyvNLJcRTakkcP58BHD9X2ethrXxeXZV1E1JzW8FPnUNcKKcDOva4vPaUFMhM3KNje
 DAL8QcC77kTnPml7K9I4wd5/2rBhLHEJm6e1FMeoGWpDmgtdbD/73nW21eAQPLmDyg5R
 YbLWpyMel4U1yrU6qftrgcqKYtU83d+mNqgdHIbIRvH8mN6M/GtXS7xzbByAHd6/WV6b
 /v1087BZZeh1aK7gVVTiCmx9hrfXFznbxiVuubacHBZTddNHx9YniCoC++POJdl2DtyY
 wrzQ==
X-Gm-Message-State: APjAAAVT2vHB+7HUUnFBhwmvLxIVRMXiSeLdQumXj/FmxlfiQ5nsTRKH
 2A2W7jwaXdoFpFAv8KoNVFOqIDsC
X-Google-Smtp-Source: APXvYqwgWvkTL1IKXo000lnYqYpXBg2xCDKYF89b3jcQxtCQVDjbbED/2bKHBBe0Tx24hb03q4kTfw==
X-Received: by 2002:a2e:7311:: with SMTP id o17mr10016012ljc.197.1580123502746; 
 Mon, 27 Jan 2020 03:11:42 -0800 (PST)
Received: from xi.terra (c-14b8e655.07-184-6d6c6d4.bbcust.telenor.se.
 [85.230.184.20])
 by smtp.gmail.com with ESMTPSA id a11sm7907961lfb.34.2020.01.27.03.11.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jan 2020 03:11:41 -0800 (PST)
Received: from johan by xi.terra with local (Exim 4.92.3)
 (envelope-from <johan@kernel.org>)
 id 1iw2Ix-0003X2-QL; Mon, 27 Jan 2020 12:11:43 +0100
Date: Mon, 27 Jan 2020 12:11:43 +0100
From: Johan Hovold <johan@kernel.org>
To: Michal Simek <michal.simek@xilinx.com>
Subject: Re: [PATCH][next][V2] i2c: xiic: fix indentation issue
Message-ID: <20200127111143.GM8375@localhost>
References: <20200127102303.44133-1-colin.king@canonical.com>
 <2dd84ab2-a7a3-fdd8-6bd6-07f1b3d5cd00@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2dd84ab2-a7a3-fdd8-6bd6-07f1b3d5cd00@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_031145_375314_44256BF5 
X-CRM114-Status: GOOD (  15.89  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.195 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jhovold[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Colin King <colin.king@canonical.com>, kernel-janitors@vger.kernel.org,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 27, 2020 at 12:03:02PM +0100, Michal Simek wrote:
> On 27. 01. 20 11:23, Colin King wrote:
> > From: Colin Ian King <colin.king@canonical.com>
> > 
> > There is a statement that is indented one level too deeply, remove
> > the extraneous tab.
> > 
> > Signed-off-by: Colin Ian King <colin.king@canonical.com>
> > ---
> > V2: fix type in commit message
> > ---
> >  drivers/i2c/busses/i2c-xiic.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/i2c/busses/i2c-xiic.c b/drivers/i2c/busses/i2c-xiic.c
> > index b17d30c9ab40..90c1c362394d 100644
> > --- a/drivers/i2c/busses/i2c-xiic.c
> > +++ b/drivers/i2c/busses/i2c-xiic.c
> > @@ -261,7 +261,7 @@ static int xiic_clear_rx_fifo(struct xiic_i2c *i2c)
> >  		xiic_getreg8(i2c, XIIC_DRR_REG_OFFSET);
> >  		if (time_after(jiffies, timeout)) {
> >  			dev_err(i2c->dev, "Failed to clear rx fifo\n");
> > -				return -ETIMEDOUT;
> > +			return -ETIMEDOUT;
> >  		}
> >  	}
> >  
> > 
> 
> As was suggested by Peter you should also add Fixes: <sha1> ("patch
> subject")

Please stop this silliness. This is not a bug fix and does not need a
Fixes tag.

Johan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
