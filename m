Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A2B113A3C1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 10:26:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yIE28flX0FEV2Oud5JgCeOnvUceIYzfufOqPjdi5uMM=; b=K2cVr4b8Ib/pYm
	OwXbKm22kiaIfg0HE/ZDD10E89HMq4MnYmnjCZDSgdWgc/bzWhYVO+Q25oKdq20us6uHUkzdAoxk0
	LLDZ2BawkOkatx647g2a8XI7Ac6/4NDIRtIcONvjXe8f3rZTD9oveQ0zh26YoJoy9uhqFmetLMB3i
	N3hyjemE9klsk4oeuweUeWMBUNT5ZoGHixOhQXwfXjZv2TogAkaA947QtD+hmgAwAelugDYnC/ksP
	boLgCoyle9So7eXiFGaAPP8wCLS6LAGI1EJhWFFVxgh+Xdd26MghEKs/BFSSP8bGxWhelF5o1/Owz
	ZcysCAWlFvVjMptjzksQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irIT1-0000wP-6c; Tue, 14 Jan 2020 09:26:31 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irISp-0000vD-VR
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 09:26:24 +0000
Received: by mail-pg1-x542.google.com with SMTP id k25so6117099pgt.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 01:26:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=a0thWxtcKc9YM15dZdbAE3AeXYoB4GtLK4BXGH2HS3E=;
 b=iWUptrz+rNTUSdgrIRAaDyg1wkGN/How5iOmIQtXnA+jPIGeiZhPadCACKCjLh+UdI
 WxKjQKzxmjkL6/Zsy1BwmOlbmo4VXPq1rBW0+LJROYG/YnXFIbWvCL72qMUHf9a3X5g5
 NaIpJsuBc3rBj9hI3Gdn5Eof6SoTsve7Zv0BOg0SU7TUfnjlnj0hp2aGWNE4nBQkvwrO
 qzlU+6xoeum4A6lXhFclsUDbm+OWMbVr9V/mEgZUFWxy5i5tXt5R4w6IHKOjyHIsCFND
 Jjvapz5RwQSE7KEphcEHhWiWpuM9fL6x3AHSMX1uERdIKh8NPjnNXhEKIbC5j5qBDU8x
 ZUVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=a0thWxtcKc9YM15dZdbAE3AeXYoB4GtLK4BXGH2HS3E=;
 b=A6aM3QZa9NkCyF05XslwWks5GP+xdcMEXeErUJZJCdmrWdHBe6BXaR7kcZkEQtRUqy
 Me5C0WiWqxl9BtzYQ3taKuKuVYuHaWin1KO8Agc43s3w951dD7+0w01IQzP4TwAhL/p5
 NLGolIPw0GLh91uVaobcANlIQBM98Kig3aGAsCKLgvrERIvrjM/NvHLxhF8woMHNxSjf
 4UPn543THrJ5ECSjwjCoToTgk/6Wd8Y/LN3vKtFVyjasP+d6Mz123LamhW8yx7WZRzMi
 c6EXmqrHMuP5WOh3JKQFeZT3nLR1WAFRt3sFvzTeZlNPccmo7OVIckGeMs3ur2f8e2xq
 Ke6Q==
X-Gm-Message-State: APjAAAXMRmPl5YctT1Q6GJlaS+vcJdaNULWVhXXpEmEXl/uSnPntsOMR
 vd1M532kRgNh3ifmh06m4zdkRQ==
X-Google-Smtp-Source: APXvYqxQobfYo6GwcAO4bk/IVTqj/Zk0rz3y1sjNS0OlQ8+mVGPrXLr/Ip2uSae9HdvrhPxLlMbgtg==
X-Received: by 2002:a62:8202:: with SMTP id w2mr24834647pfd.100.1578993979012; 
 Tue, 14 Jan 2020 01:26:19 -0800 (PST)
Received: from localhost ([122.172.140.51])
 by smtp.gmail.com with ESMTPSA id 200sm17798271pfz.121.2020.01.14.01.26.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 Jan 2020 01:26:18 -0800 (PST)
Date: Tue, 14 Jan 2020 14:56:15 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH V2] firmware: arm_scmi: Make scmi core independent of
 transport type
Message-ID: <20200114092615.nvj6mkwkplub5ul7@vireshk-i7>
References: <3f5567ec928e20963d729350e6d674c4acb0c7a0.1578648530.git.viresh.kumar@linaro.org>
 <CAK8P3a1MLyP4ooyEDiBF1fE0BJGocgDmO1f5Qrvn_W5eqahz8g@mail.gmail.com>
 <20200113064156.lt3xxpzygattz3he@vireshk-i7>
 <CAK8P3a2u6s4MAM_9bOqSt5NwVc4XrXs9W36tp-7rWWTXx0+pRg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a2u6s4MAM_9bOqSt5NwVc4XrXs9W36tp-7rWWTXx0+pRg@mail.gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_012620_016687_DEDFD8DF 
X-CRM114-Status: GOOD (  20.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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
Cc: peng.fan@nxp.com, Jassi Brar <jassisinghbrar@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 cristian.marussi@arm.com, Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13-01-20, 12:36, Arnd Bergmann wrote:
> On Mon, Jan 13, 2020 at 7:42 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
> > On 10-01-20, 12:15, Arnd Bergmann wrote:
> > > On Fri, Jan 10, 2020 at 10:43 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
> > >
> > > Simply dropping the __iomem isn't much better, now you get other
> > > type mismatches.
> >
> > Right. So what exactly do you suggest I should do now? Drop __iomem
> > from the structure's payload field but keep all local variables and
> > function arguments with __iomem ?
> 
> > > > +struct scmi_chan_info {
> > > > +       void *payload;
> > > > +       struct device *dev;
> > > > +       struct scmi_handle *handle;
> > > > +       void *transport_info;
> > > > +};
> > >
> > > Maybe you can wrap the scmi_chan_info inside of another
> > > structure that contains  the payload pointer, and use container_of
> > > to convert between them?
> >
> > We don't need to convert between the two of them, isn't it ? Are you
> > referring some other field here ?
> 
> > > It's not obvious which parts of the structure should be shared and
> > > which are transport specific.
> >
> > All transport specific information is kept in the transport specific
> > structure which is saved here in the transport_info field. Is there
> > something else that isn't clear ?
> 
> To answer all three, what I meant is that the payload pointer appears
> to be transport specific and

I am not sure if I understood the below statement properly. Is there
something missing from it ?

> should not be part of the common
> structure if there is generic way to access it.

The scmi protocol requires a block of shared memory which is
represented by struct scmi_shared_mem, and payload is this memory
block itself. This block of memory is accessed throughout driver.c
file using ioread/write commands. If payload is transport specific, so
will be those accesses, isn't it ? Are you suggesting to move all this
to mailbox.c (the transport specific file) instead ? I am sorry, but I
am not able to understand how exactly you want me to reorder code here
:(

@Sudeep: I had a question for you though. Looks like we are doing
ioremap() of this payload for every channel's tx/rx, why ? Why is the
same memory area mapped that way ? Can we just map the area once for
scmi block ?

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
