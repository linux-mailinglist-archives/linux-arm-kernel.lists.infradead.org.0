Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 215E8245C9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 03:55:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6h3k7tGre6Brb9CbQ2ANGV5ZWuf+clvbwRbePIU5vfo=; b=WgC5f3Xlelf/ny
	k9AgnHQ2j7I1LLfRkI3Xtj0+oQCT4hqHJ/z9vovdnU6wBjeCKK8tsNT5Hp/pgyBh3EVXZn88RDguj
	q609u2VfP9qopsjWEL8tYVNYWM5129DQEn6bUCy5UsqrAq1yJw5x2sZPqLidsalVKn+LVvkYig5/i
	lpWcfBhcIFVhLQtd/KzV5fYxmEuGEh7+ynMAT1feGY4JripTEpVBRnqgRf4hd249SD7IzTjMBfmtm
	+ixMyTDrrnL1PUB7hlb8XfZuQHNR7mmzv8o3SdR33stmEs43B/PDwZLA4CyD38q3pVeX53s38t+m2
	lycIt5e+dbbGiO/QV4BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hStzp-0006F6-8O; Tue, 21 May 2019 01:55:17 +0000
Received: from mail-yb1-xb42.google.com ([2607:f8b0:4864:20::b42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hStzh-0006El-Qg
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 01:55:11 +0000
Received: by mail-yb1-xb42.google.com with SMTP id n145so1863218ybg.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 18:55:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ys74d/JOciTo/knAU3Y5Ehzhs8XaBHS+rZ6fhPdVWGA=;
 b=noohq+wohQIbvXfLRcj0k3FyqkHjyz9uUAOI59JiKXVRUfwJk673fwVoXLJBXpdgIo
 KhQ5FscF/iIce2LoT9kQ370yarLg9zEyEdGr45qgm1UzPy1dFr0abQHQdGgULUh1RjJJ
 8Y0CxBmgc5vgjV9l+ilg0Unn7R7Tucag3pFIEg8kyXi5V0VtQA0xwM9qNUgMtMgUB1WY
 pMVx1mo0yvJ82C0MjAW4R83tkxBpdzoGseIQ7CD7Qa/OyD8e3CNL+JyJUQPOSEYCBhNY
 XH+LNALfm3JRrDVwxz60UbRxHEWJb/OcaoAd43YPHsdkRgCLhPI6N/fDuE0lo4pTRS7Y
 GIXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ys74d/JOciTo/knAU3Y5Ehzhs8XaBHS+rZ6fhPdVWGA=;
 b=HTMmEzTs6N1VfBr2oFp7IYOzw0Yx8gL6zFaZ3SVCcMsXf4oI7ZzoInu4eJSidgiP69
 tf1Fvr4k7nxp/K2zL08fh6aYh02BbtwnzQ3de0zWalPOY5j6CpdRxMsbn/58qmwZNlHN
 eRDcLond9Xkc4D0LmGqhCzf8s8D3rKWyKbSI6uUFoCkYwv53k0PY4Joaif8lz1uRM0My
 yjF02S5nLgL8vG3a7MFUtib57DDfXXDH7t98wtmAWL69dHFG+BW57p7AsC/jee6VuHeF
 SRPRWoXfBHD/qYZENnRRW5febepTVmiRsfXhttAFAde33+bfe4bD58ZepBdLgWVOhJYe
 l7zQ==
X-Gm-Message-State: APjAAAW8ZjwfDIZmNWR443re0Lssa0YIFceEsBLeN5un/Plrydx2cukU
 tgNxueps/1KBNfZ2JEmcPF520A==
X-Google-Smtp-Source: APXvYqwVVIFE1tqZrZvdXMkAvzt8I6OwjHK+ktvDrjCnaFV1D3evPRjUoniav8ojlBkaz1RYouqNjQ==
X-Received: by 2002:a5b:42:: with SMTP id e2mr15657768ybp.247.1558403708126;
 Mon, 20 May 2019 18:55:08 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li483-211.members.linode.com.
 [50.116.44.211])
 by smtp.gmail.com with ESMTPSA id c200sm5657630ywc.23.2019.05.20.18.55.03
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 20 May 2019 18:55:07 -0700 (PDT)
Date: Tue, 21 May 2019 09:54:59 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH V2 6/6] perf tools: Properly set the value of 'old' and
 'head' in snapshot mode
Message-ID: <20190521015459.GC6329@leoy-ThinkPad-X240s>
References: <20190514194018.23420-1-mathieu.poirier@linaro.org>
 <20190514194018.23420-7-mathieu.poirier@linaro.org>
 <20190516150005.GG12557@leoy-ThinkPad-X240s>
 <CANLsYkyTKTQJhMJ-p-_z6AvE4UfmPJSt1pdDVvwRCBOrPK+B7Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANLsYkyTKTQJhMJ-p-_z6AvE4UfmPJSt1pdDVvwRCBOrPK+B7Q@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_185509_871245_88071FE3 
X-CRM114-Status: GOOD (  17.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "Suzuki K. Poulose" <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Coresight ML <coresight@lists.linaro.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 20, 2019 at 01:53:29PM -0600, Mathieu Poirier wrote:

[...]

> > > +static bool cs_etm_buffer_has_wrapped(unsigned char *buffer,
> > > +                                   size_t buffer_size, u64 head)
> > > +{
> > > +     u64 i, watermark;
> > > +     u64 *buf = (u64 *)buffer;
> > > +     size_t buf_size = buffer_size;
> > > +
> > > +     /*
> > > +      * We want to look the very last 512 byte (chosen arbitrarily) in
> > > +      * the ring buffer.
> > > +      */
> > > +     watermark = buf_size - 512;
> > > +
> > > +     /*
> > > +      * @head is continuously increasing - if its value is equal or greater
> > > +      * than the size of the ring buffer, it has wrapped around.
> > > +      */
> > > +     if (head >= buffer_size)
> > > +             return true;
> > > +
> > > +     /*
> > > +      * The value of @head is somewhere within the size of the ring buffer.
> > > +      * This can be that there hasn't been enough data to fill the ring
> > > +      * buffer yet or the trace time was so long that @head has numerically
> > > +      * wrapped around.  To find we need to check if we have data at the very
> > > +      * end of the ring buffer.  We can reliably do this because mmap'ed
> > > +      * pages are zeroed out and there is a fresh mapping with every new
> > > +      * session.
> > > +      */
> > > +
> > > +     /* @head is less than 512 byte from the end of the ring buffer */
> > > +     if (head > watermark)
> > > +             watermark = head;
> > > +
> > > +     /*
> > > +      * Speed things up by using 64 bit transactions (see "u64 *buf" above)
> > > +      */
> > > +     watermark >>= 3;
> > > +     buf_size >>= 3;
> > > +
> > > +     /*
> > > +      * If we find trace data at the end of the ring buffer, @head has
> > > +      * been there and has numerically wrapped around at least once.
> > > +      */
> > > +     for (i = watermark; i < buf_size; i++)
> > > +             if (buf[i])
> >
> > I think here should be:
> >                 if (buf[i << 3])
> >
> 
> It would be if buf[] was a char *, but it is a u64 *.

You are right, I missed that.  Sorry for noise.

Thanks,
Leo Yan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
