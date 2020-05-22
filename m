Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E74141DDB90
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 02:04:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M+SPBC34ISs4g+/rFBtJLo9HXGHEoNkai5zHJ29Dw5M=; b=cxKjBipd4S6cBs
	CjuKofXZ+QD2OtbLp6Ahev0n0cfToQqoGTwnHfX/vQm/XmSwK8jc10Kir/O8wjzKFcPLfzSaWllK+
	doWl5k4jYwhgiXWTJBSMpKPpTQ9q9RpcZIZoTpg+E+/gLKN5BLZmohq2bqIELPQZrEgQXGWoUbElh
	twJGhtgP2BuJIcS1G8HcDM7ovUoQW2Hsb9IlnMHUOiPKm5LfmDPW+Py1BwU/9mBpRxscTCObvabA2
	DgbEUTxHZRaKhEuGUW+rT+u89yiEHaV2lX+frKHpNj+P2baBhmyoXbieefh5Dqr+WQyymJY9ZvF3e
	kCgXzURCPPsfbr2Dwf8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbvAK-00028S-3E; Fri, 22 May 2020 00:03:56 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbvAA-000285-PU
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 00:03:48 +0000
Received: by mail-pj1-x1041.google.com with SMTP id k7so4145039pjs.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 17:03:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=aimWUItgOf1Mo4eNsHUlIg6Ef9QsJNRTVwtUqNdOH6M=;
 b=ZG5OHkrzAxL75jV4jI9yyW41kOusvleLyaT+i8cXJZTdBo4cdW390NE0CHkuK+u3LO
 fDKPFO2iZtkgAZiMCfDuY55LTfhIfRiRndLQAueqXhmcGEf39qGrCQ7t6E3ey/8iHkPB
 u5b+B3Q/Qh9sjOAdFaqtjj5BmQm0OHNyWS1fCXnBZyGLeI4SJTkHHpHryB0jNrdpeTZr
 o4T05BzrOHJeIyRDsXnJFDkfj/elgR+viOPFpX5fYs5ciwuhRwT+YsNaZGDIDqQ+npYl
 dOA87DruowRnaDWivlA5TMnS2E9Zh3f3ipIFxpt7oCHj/kR6a56Fdex4r241Zevm+UmH
 ABRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=aimWUItgOf1Mo4eNsHUlIg6Ef9QsJNRTVwtUqNdOH6M=;
 b=Zpy/q1KbuihFk/V0GYqjhjatVqv1qiq/p4xDNqjEUzWvus0neZkhORs/MBMGBO/KHO
 y5V+wW9uE8iQMJ/BhsF3/Hh1/amT425Hi64Xm0aR0G716rbbP1aa0vnygf0N1QGdUAKB
 IOIuD2jffaYsYTQUz4nADLjO5K2pMF/nRbmy3kmbNyIFHdZBN1eAJxV3OhsbJUuaWzl9
 46YoluCS9e/vLPemxxJNUhuI3vY7sPIT5QDssZ9ULm+kliWyhtCaRbGvQIpqyC2cLij6
 xVbcpIIKwLxsFkQ0xYcft4M8D1BAJrTY7hGyiGLBtbfLoGpKG8L+6IEatZGD0jIKu+8T
 u3IQ==
X-Gm-Message-State: AOAM532AZmVWfJ/1UzbR1S8FB3lYY9E9Iu6jp8rmNY1+nTs86smXbxze
 NUphPp6BieXChQDneYmKboyzCw==
X-Google-Smtp-Source: ABdhPJymXguid2RaAquptSVy3PCyyF4zQrru0krE8vDzueEdGjOYVT72JC4TiSto94bPhX23JXSexQ==
X-Received: by 2002:a17:90b:10f:: with SMTP id
 p15mr1059980pjz.99.1590105825570; 
 Thu, 21 May 2020 17:03:45 -0700 (PDT)
Received: from yoga (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id o11sm5259985pfd.195.2020.05.21.17.03.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 May 2020 17:03:44 -0700 (PDT)
Date: Thu, 21 May 2020 17:03:42 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH v2 0/4] TI K3 DSP remoteproc driver for C66x DSPs
Message-ID: <20200522000342.GG11847@yoga>
References: <20200521001006.2725-1-s-anna@ti.com>
 <5f84465e-8f63-51b4-4758-59c85d3ad597@ti.com>
 <20200521190141.GN408178@builder.lan>
 <20200521222334.GA11366@xps15>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200521222334.GA11366@xps15>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_170346_890165_6D6ECAAB 
X-CRM114-Status: GOOD (  22.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Lokesh Vutla <lokeshvutla@ti.com>,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Suman Anna <s-anna@ti.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu 21 May 15:23 PDT 2020, Mathieu Poirier wrote:

> Gents,
> 
> On Thu, May 21, 2020 at 12:01:41PM -0700, Bjorn Andersson wrote:
> > On Thu 21 May 11:59 PDT 2020, Suman Anna wrote:
> > 
> > > Hi Bjorn,
> > > 
> > > On 5/20/20 7:10 PM, Suman Anna wrote:
> > > > Hi All,
> > > > 
> > > > The following is v2 of the K3 DSP remoteproc driver supporting the C66x DSPs
> > > > on the TI K3 J721E SoCs. The patches are based on the latest commit on the
> > > > rproc-next branch, 7dcef3988eed ("remoteproc: Fix an error code in
> > > > devm_rproc_alloc()").
> > > 
> > > I realized I also had the R5F patches on my branch, so the third patch won't
> > > apply cleanly (conflict on Makefile). Let me know if you want a new revision
> > > posted for you to pick up the series.
> > > 
> > 
> > That should be fine, thanks for the heads up!
> > 
> > Will give Mathieu a day or two to take a look as well.
> 
> I don't see having the time to review this set before the middle/end of next
> week.  I also understand we are crunched by time if we want to get this in
> for the upcoming merge window.
> 
> If memory serves me well there wasn't anything controversial about this work.
> Under normal circumstances I'd give it a final look but I trust Suman to have
> carried out what we agreed on.
> 
> Bjorn - if you are happy with this set then go ahead and queue it.
> 

Thanks Mathieu.

I looked through the patches again and saw that we're still waiting for
a ack on the dt binding, so I guess I need to hold off on this a little
bit longer.

Regards,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
