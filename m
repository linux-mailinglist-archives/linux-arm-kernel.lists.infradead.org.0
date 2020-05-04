Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38FEE1C406D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 18:49:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bIrh1LMQE4Wj8Ep0SKl+eJl0rN1jwIgxD27fOAfmZnc=; b=uU3cVFqIgPAbyc
	RQUb1dyQyTtfWdV/5SjOZX4iqBndtkZ7F+Q17BTTf/8IQqAn9XmUGjh9QOVcOjxKxuNtAWXd7drBQ
	+9xWcLqamQBcFayVq9AhdIWx0HfGQhSMac5YaDNnH7TCCjQgfNIzB7fTnE3j/R+iVZnu2azS08Uqb
	NF34xkJlNMaxtWUAojwnXiBqjrseTP+f7Iz6sRbuXo9yrMRRuyg9KKCgS35/aCXbj5Ydy62roVyKo
	/GRk6NqZfslZvP+yEwTHk/7XnuzFFjZmoYNsslNC48obKuNZf+4vOw1eTuqvEXrg/ZiuhqrMLEYwr
	5A8Sk5w/w9wjNAaHDBbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVeHk-0002tq-MP; Mon, 04 May 2020 16:49:40 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVeHd-0002sB-Ex
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 16:49:34 +0000
Received: by mail-pg1-x544.google.com with SMTP id a4so70833pgc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 09:49:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=N98hzrvavUDmiZvqjRc8Y+NamEOGTTXQ9QYdiVbRQUI=;
 b=VwTnWyDAqzkDtnfnRgQ+QgRKkew37qUbEFsl/e0olaTckk9POdNzFiORuokPHsU7cr
 4+b3dqe/qJU/NBud1lZT3+CcNb91dNtjmBBneGSvFIy/k04EuQlHwdi0+/LGIoyrHg8C
 VA9O9YNxP+kpn0ADakess8vbaTVtsneJ6CJNw1Xvy1DyjCv2xrFuQZQfKTn/u/q6QcjQ
 QYTMpzlCno59ssPhfcoOU6vB/zaxSGVsF44ZuZeu8OonrkIW7BAyCkWUyqynEdE5oqtQ
 tQD+7mlEdV048vuEWVlWORiIte+CqOOQcv9ssYtGSS3UUOnqPIlwdUP5lotDLCuiOe/j
 E3qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=N98hzrvavUDmiZvqjRc8Y+NamEOGTTXQ9QYdiVbRQUI=;
 b=Nut+deyjH5Mg8QGC5I4C/4U1fBsY+MRoILRZ5xnOZErqj5DPl5Max0CC3foLy1fsQt
 ce16RN4x2oesK9zclpxVFX0ZfD3Sl+7rnUfpOmXoP8jCAlxbREdYR08Lgxc5aU98M44C
 V1fDXu16uI0O/6u3Kth40yyJEI7ojw4Vbe4eu8Ibk9m58qzIoP2Dn+yz9Hk7gjLWyxQn
 4bFbNEMSvxA/sB4R+oKwyKcU+iJqPZgmKQADLDyXzS+A8RceDBPkQnobRZhzjYiRzRuS
 6jkfuelDQ5o9k58GSIlW/suheWkJpha+jbhuoMQSTTx+9O5wIPoDli4vareGXfLvzb5P
 wBuQ==
X-Gm-Message-State: AGi0PubCeg8EjhD9PhlKDVaCDs2yFEjWHYg1Eawg+3BO9PXjWpNwzhtZ
 4AFmonzDrNYArpON2zguYYBeZA==
X-Google-Smtp-Source: APiQypJ0UtE+FqSr0S/8CiLbts6PMUhrSDn8+4Okd3e/IXqVStp2R/N4PLwqQWR32HncAgCP22VImQ==
X-Received: by 2002:a62:6341:: with SMTP id x62mr19109043pfb.289.1588610972562; 
 Mon, 04 May 2020 09:49:32 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id t20sm11014pjo.13.2020.05.04.09.49.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2020 09:49:31 -0700 (PDT)
Date: Mon, 4 May 2020 10:49:30 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Stephen Boyd <swboyd@chromium.org>
Subject: Re: [PATCH v2 1/2] coresight: Include required headers in C files
Message-ID: <20200504164930.GA755@xps15>
References: <20200428181010.170568-1-swboyd@chromium.org>
 <20200428181010.170568-2-swboyd@chromium.org>
 <20200429180818.GA3062@xps15>
 <158818506575.117437.11635372928426076937@swboyd.mtv.corp.google.com>
 <CANLsYkzkq=EuKx_=W2jv2TeWpM3P=Pd9NYS18VfG9KCey=2--g@mail.gmail.com>
 <158852907765.11125.7786353455300506998@swboyd.mtv.corp.google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158852907765.11125.7786353455300506998@swboyd.mtv.corp.google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_094933_503455_C7B9397C 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mike Leach <mike.leach@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Douglas Anderson <dianders@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, May 03, 2020 at 11:04:37AM -0700, Stephen Boyd wrote:
> Quoting Mathieu Poirier (2020-04-29 12:24:42)
> > 
> > >
> > > So please remove slab.h from the two files (but not the other one) when
> > > applying. Thanks.
> > 
> > You got it.
> 
> I looked in next but coresight-cti-platform.c is missing slab.h even
> though I included it in my patch. There's a bare kcalloc() call in that
> file, so slab.h is required.

I know what happened.  The above comment mentions removing slab.h in two and
leaving the "other" one in place.  But looking at the original file only
coresight-cti-platform.c and coresight-cti-sysfs.c had an slab.h.

I have made the correction.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
