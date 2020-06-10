Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 328DF1F5136
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 11:34:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R74YJSuXdd8PZRcF0ZhOmggGCqOQFxp0TdG6XOHwt8s=; b=SPN9zxU+j11sha
	xkCGefkXRbG+NVMB9ANiXHqqvV5kI11xyXuWBe607kRKj3zVlrlO2YmfmW7spXxU0Vn0johPBMuMI
	gyqCcAHLo6zV84T48y9IoIodBAMYg8SxmTKKKiT8Xvm+jJaHLCOz4qWN3L2K3JfeOA+Rg3rEBgW+g
	NWwSmVzV5HtmEZv5VFPKip7FmKPsPUwhaBwcMJTUyO0ZNtJ43vdbXbjNzy8APY7ek/fJATTaJWW1N
	W9cor3oHE5i+Tqatc60rXYZBLPynhNDbQzA7GEWTMxdpdZ2IvKp5zr9yrp/1hVBWQcJixIBqbRA2v
	RSsTwLwEsf4ssamrrpmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jix7D-0002MZ-VK; Wed, 10 Jun 2020 09:33:47 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jix74-0002MB-J9
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 09:33:39 +0000
Received: by mail-pg1-x543.google.com with SMTP id 185so735472pgb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 02:33:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=gDnPaCqGGqbwLUgYXT8RQfx+Yi25CTYpPlgWUh+k1DU=;
 b=XtXvu6K1Uz1YjnpXdERt17M6pBkHDYVwHCy9UaMX6WqDUssPF9INUCclHDNNTCEEaZ
 q4hxviUAlk/YkgC8d4X/EwOfwz635nxrXQW4fBPO0PnzM/9fvI7uDjp7TxKWdvKpPRWt
 tf8FyeFeGTuNMIGxlY0t9umSLy84CNOoRvsoCYdYuU9yjO/H9dpOBO18GL63fSWEU9io
 yX77jxrbWQBzjzT9xMXfRNkrzO2IEXoibRVYJORPvN3liQu8veOBPWuX1FVuqd8BuFpS
 CYYafNkhZEc6/9ZonezXmUYWQiFzMm/As8rBg36aeU8BsKjdUtbQnDRwe6FOJLu+MlQ8
 7BbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=gDnPaCqGGqbwLUgYXT8RQfx+Yi25CTYpPlgWUh+k1DU=;
 b=cwMCXIrUvp9tGBQQT6ezZQHUeCqP/2SXUeBvLKnjZ7r/V7LGjZEX5buTRKchcZlhqY
 irXKHgHct018hOwk6pFQLTeae8czaz8tbc9W8Pps9eo/Sh8Hy3JZQFNrWnKiXZAcVJ5O
 xzd/m0ICmBAWF5YSxebA86YI6yBPqCJDYdB6RJslSUr3tTktNym5kpNWGxYqjbrDJQkM
 cc5i4ykS8AuSvxp2rK0Q2T6qeobGbblKVZLbWsCFyn9E07y3LFR6dPqzC4etTB34qlxF
 lqET1i4CXjKJghVcSkBISf3DXDeFd43tlU4e9n0KNaSznfw+kJhswePyLur9mwiMtrx1
 inww==
X-Gm-Message-State: AOAM5320FkLlnEPHe1nBfWO/nwt+UbhSK947XlagXrnPL0ESQJGFP2Ir
 ET6+uvOsXnWamSOAw1XuMGheeA==
X-Google-Smtp-Source: ABdhPJyzL85kYroXLj9+vmzfJphNT9Bonj9nRBKzkkm5g4L1YoB1Va6xm3HiIlJ7CjmADnx7RrAx1g==
X-Received: by 2002:a62:8106:: with SMTP id t6mr1985814pfd.103.1591781617417; 
 Wed, 10 Jun 2020 02:33:37 -0700 (PDT)
Received: from localhost ([122.172.62.209])
 by smtp.gmail.com with ESMTPSA id w73sm12759725pfd.113.2020.06.10.02.33.35
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 10 Jun 2020 02:33:36 -0700 (PDT)
Date: Wed, 10 Jun 2020 15:03:34 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Jassi Brar <jassisinghbrar@gmail.com>
Subject: Re: [RFC] dt-bindings: mailbox: add doorbell support to ARM MHU
Message-ID: <20200610093334.yznxl2esv5ht27ns@vireshk-i7>
References: <20200528192005.GA494874@bogus>
 <20200529040758.kneg2j4n3gxh2rfv@vireshk-i7>
 <20200603180435.GB23722@bogus>
 <CABb+yY0cW1GZHVmwEr19JRdJTmsAxw9uq83QV_aq-tdPJO5_Fg@mail.gmail.com>
 <20200604092052.GD8814@bogus>
 <CABb+yY27Ngb0C-onkU2qyt=uKgG4iVrcv8hGkC+anypQbTRA1w@mail.gmail.com>
 <20200605045645.GD12397@bogus>
 <CABb+yY2YZ99NjHYNi0=KLGFDsVUeJmqiJD3E25Chwk-THJV4iw@mail.gmail.com>
 <20200605085830.GA32372@bogus>
 <CABb+yY2TR7tuMx6u8yah6mO2GwZ5SWYOO80EQRL-i=ybgn=Wog@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABb+yY2TR7tuMx6u8yah6mO2GwZ5SWYOO80EQRL-i=ybgn=Wog@mail.gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_023338_635810_EBEEA856 
X-CRM114-Status: GOOD (  24.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rob Herring <robh@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Devicetree List <devicetree@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05-06-20, 10:42, Jassi Brar wrote:
> Since origin upto scmi_xfer, there can be many forms of sleep like
> schedule/mutexlock etc.... think of some userspace triggering sensor
> or dvfs operation. Linux does not provide real-time guarantees. Even
> if remote (scmi) firmware guarantee RT response, it makes sense to
> timeout a response only after the _request is on the bus_  and not
> when you submit a request to the api (unless you serialise it).
> IOW, start the timeout from  mbox_client.tx_prepare()  when the
> message actually gets on the bus.

There are multiple purposes of the timeout IMO:

- Returning early if the other side is dead/hung, in such a case the
  timeout can be put when the request is put on the bus as we don't
  care of the time it takes to complete the request until the time the
  request can be fulfilled. This can be a example of i2c/spi memory
  read.

- Ensuring maximum time in which the request needs to be serviced.
  There may be hard requirements, like in case for DVFS from
  scheduler's hot path (which is essential for better working of the
  overall system). And for such a case the timeout is placed at the
  right place IMO, i.e. right after a request is submitted to mailbox.

And some more points I wanted to share..

- I am not sure I understood the *serializing* part you guys were
  talking about. I believe mailbox framework is already serializing
  the requests it is receiving on a single channel with a spin lock,
  right ? Why does the client need to serialize them as well? Is that
  for avoiding timeouts ?

- For me, and Sudeep as well IIUC, the bigger problem isn't that
  timeouts are happening and requests are failing (and so changing the
  timeout to a bigger value isn't going to fix anything), but the
  problem is that it is taking too long (because of the queue of
  requests on a channel) for a request to finish after being
  submitted. Scheduler doesn't care of the underneath logistics for
  example, all it cares for is the time it takes to change the
  frequency of a CPU. If you can do it fast enough in a guaranteed
  manner, then you can use fast switching, otherwise not.

- The hardware can very well support the case today where this can be
  done in parallel and (almost) in a guaranteed time-frame. While the
  software wants to add a limit to that and so wants to serialize
  requests.

- As many people have already suggested it (like me, Sudeep, Rob,
  maybe Bjorn as well), it seems silly to not allow driving the h/w in
  the most efficient way possible (and allow fast cpu switching in
  this case).
 
> Interesting logs !  The time taken to complete _successful_ requests
> are arguably better in bad_trace ... there are many <10usec responses
> in bad_trace, while the fastest response in good_trace is  53usec.

Indeed this is interesting. It may be worth looking (separately) into
why don't we see those 3 us long requests anymore, or maybe they were
just not there in the logs.

> And the requests that 'fail/timeout' are purely the result of not
> serialising them or checkout for timeout at wrong place as explained
> above.

We can't allow for the requests to go on for ever in some cases, while
in other cases it may be absolutely fine.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
