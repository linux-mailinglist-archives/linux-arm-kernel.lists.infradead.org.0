Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6772EA93B0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 22:27:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HWrzqLdmSwVuAOd9FFWkwV520xgdmMVw+vynm5aDuik=; b=LiWVLFjUXX7V2L
	vq9S2XGrYEuyViSH8/VaQ95vFvTLaWxp1CEjNQyyIMRjgR9xPawsgzPaqaE509DeE5Llf78g/sy5U
	0YxP2mGXGTizHpROTriM8nNvF9bMucgJDXAgUAvUcogdUusg3bZaQBW/sA9yOf0cYal0ZDNQ6DXw9
	G9NRYomTWIE1oCb2aMPJrjULWDBcy//sKFecBfJRt1m4a2IAai9jC/Q2NDJFfZ67xsn3xkBh7FZU/
	K6n9Yxi4Wap+oFrPEYKxSolpXpvYS3G7mtxnXmn0P4PNDOcJubpDoq5XvRwx5hHgIKAsdmUUhUdGc
	oo9kDQJkYZEJhrIw12tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5brx-0005qc-BZ; Wed, 04 Sep 2019 20:27:09 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5bro-0005qF-CU
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 20:27:01 +0000
Received: by mail-pf1-x444.google.com with SMTP id b13so7394332pfo.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 13:26:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=gHXopKFHzfE49twF88UvtmDlbMN38YDZW1AoH7082oE=;
 b=DLUsWH99wenvPEpVvVSfF1d0qo3YVU2SKaU3twQDF4nwTd/7vJuMNynkyGX3R6VOse
 SqIGJx0ao5UDaFQ6u8d4ybCAMVVZ2n0wH3v0tY2XkqWJGQeZ88YWs+8sexlyUHS9n4yx
 t5FdYBhkD3lP1E7k+nc75Ex0NDzJZOplSjl6q9N9j9vQw/7jadVr9gXaNx7ff4cGoRf1
 icrBkr3XgeQVMoU3SIm+i96fdWRSHRwOrGxip2CjAELbyoAm1wZM+E7YMSpkZ8PYwNoe
 loRuEBKLEPVRn2BBWmx7mSyTi0uwGCrbIU91woKz9C8RpojEkGNN01LdP+ieI/H1QVxW
 RpBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=gHXopKFHzfE49twF88UvtmDlbMN38YDZW1AoH7082oE=;
 b=qigIUUVJ9tbN3MW9NvJ5C0oZ+Or7mtaZVBcimEHzYMiaaTmPcNgA2TQCdFPc2OmmvI
 wkpLHLrx8J690xXX8ZtTKN/YId9eUJiKXZJmHiCl1iuPHUQwlKkS9TBAeYAG4KtvZlN+
 hcCHRUz69lXiKyzamBLWqJI2EOU5FG4v1kwMR8ujMTUSXAkogD/PAC9aPzbU8uvnADG/
 MppO3MeUCeHmSu7f7b3pZ6ZhsepnnwCFR8b9/alQoP9lXi3VK7d+OsLIXEoyfUHBj9Te
 mACbjjBp4uTNZI92K6WeIXLxITZeJlI90U6IK9J+75Y2PeWwW3jitwKqQHDKtBGyIvEI
 tLow==
X-Gm-Message-State: APjAAAVwriyEap+JuQhvLf0pdVFqYh2rlBWxQbIIrD3LluZ6YPsPR/Nb
 i2ICEfYPjahv5KBo0J2A3bP/7w==
X-Google-Smtp-Source: APXvYqxFPUmP/jYPMT2DzWP/8rdwbetVerpvv8p9rtrq4YREH6sU5CzRKastQRxLomV0nVAQjILaYw==
X-Received: by 2002:a62:1955:: with SMTP id 82mr32346422pfz.256.1567628819360; 
 Wed, 04 Sep 2019 13:26:59 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id y194sm660594pfg.186.2019.09.04.13.26.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Sep 2019 13:26:58 -0700 (PDT)
Date: Wed, 4 Sep 2019 13:26:56 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH 1/1] soc: qcom: geni: Provide parameter error checking
Message-ID: <20190904202656.GB580@tuxbook-pro>
References: <20190903135052.13827-1-lee.jones@linaro.org>
 <20190904031922.GC574@tuxbook-pro> <20190904084554.GF26880@dell>
 <20190904182732.GE574@tuxbook-pro> <20190904200130.GT26880@dell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190904200130.GT26880@dell>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_132700_427280_3CB0DF6E 
X-CRM114-Status: GOOD (  23.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-msm@vger.kernel.org, agross@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 04 Sep 13:01 PDT 2019, Lee Jones wrote:

> On Wed, 04 Sep 2019, Bjorn Andersson wrote:
> 
> > On Wed 04 Sep 01:45 PDT 2019, Lee Jones wrote:
> > 
> > > On Tue, 03 Sep 2019, Bjorn Andersson wrote:
> > > 
> > > > On Tue 03 Sep 06:50 PDT 2019, Lee Jones wrote:
[..]
> > > With this simple parameter checking patch, the SE falls back to using
> > > FIFO mode to transmit data and continues to work flawlessly.  IMHO
> > > this should be applied in the first instance, as it fixes a real (null
> > > dereference) bug which currently resides in the Mainline kernel.
> > > 
> > 
> > Per the current driver design the wrapper device is the parent of the
> > SE, I should have seen that 8bc529b25354 was the beginning of a game of
> > whac-a-mole circumventing this design. Sorry for not spotting this
> > earlier.
> 
> Right, but that doesn't mean that the current driver design is
> correct.  ACPI, which is in theory a description of the hardware
> doesn't seem to think so.  It looks more like we do this in Linux as a
> convenience function to link the devices.  Instead this 'parent' seems
> to be represented as a very small register space at the end of the SE
> banks.
> 

There's a larger register window containing one block of common
registers followed by register blocks for each serial engine.

I don't know if we will need more of the common registers in the future,
but for now you at least have the requirement that in order to operate
the SEs you need to clock the wrapper. So the current DT model
represents the hardware and the power/clocking topology.

The fact that you managed to boot the system with just ignoring all
clocks is a surprise to me.

> > But if this is the one whack left to get the thing to boot then I think
> > we should merge it.
> 
> Amazing, thank you!
> 
> Do you know how we go about getting this merged?  We only potentially
> have 0.5 weeks (1.5 weeks if there is an -rc8 [doubtful]), so we need
> to move fast.  Would you be prepared to send it to Linus for -fixes?
> I'd do it myself, but this is a little out of my remit.
> 

The "offending" commit was picked up mid June and no one noticed that it
doesn't work until this week?

Let's slap a Cc: stable@ on it and get it into v5.4-rc1 and it will show
up in v5.3.1.

Regards,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
