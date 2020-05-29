Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F7CD1E75E4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 08:27:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hid2Pbt/HRxM+f7QbMhT+rccnU9TOVuQyL/Y97p2zTA=; b=XT+fOS0SkCxiLc
	DkKbrkIZ9MIKNY0jvGfYsmshDB6rmg5EsyQ0Ttt0XE6h3EEcIv1rJl/5plEbRzW26xCdgw4Fzb2bH
	PlNO8YipJJS1FN3bqslxzCqUvPs6mWn3zFXIfzLyL5tGXQJWKwPqdL12Q31UzJ6j0UDG1yJJ+pKaJ
	QX7SEXzUtfMMDzq0lzL4HaP+Ts2bVayF9naaa2ec/XjuxgqDQCtMOjnkvMDCn+YhLaaWOsdb2sBK1
	2iSJUDk0iDKrDJieesIsimFCukfoPbbtlXAsqTyz1SSEp4X/jl8gqeByKe0yWhj3GwDnXltrmEfBV
	4ZU2sMEhKufSkP8rpz1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeYUC-0008Qn-97; Fri, 29 May 2020 06:27:20 +0000
Received: from mail-pg1-x529.google.com ([2607:f8b0:4864:20::529])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeYU5-0008QE-P1
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 06:27:15 +0000
Received: by mail-pg1-x529.google.com with SMTP id w20so908747pga.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 23:27:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=8/ekMaS9IDMDDdO/sPjkKucuBStRVoSIxnyYCbHSwBw=;
 b=xuJ+Uuw9Ef07VpZZJck5BRrLLjK9JUuGHxlAQMLSxIjTqkhmVP7njEqLYb1QUHUbI6
 YeEoXUANw66Q1BMpHw3jD8+2VxIExgI3p03OEXFYYA5WI8lnezYaIC/HTyYi/aIF6IpF
 v/2v6nXdZ1Zuop9oOlIYtDz9JgyMLMOVhriSUoUO7iXgec7rsfGmv7p8bZjAeMeUn8cw
 dgz2ICNWSF+IQbpcF7XUQnVZWOV67wajBxaa7A/i0zH7Byx2+pEjLTMgTGHO/PU7Qq8t
 ZPSw3dfacj5WgyYRIVbn1O0AewUkjv7yJppEBRyvy2zOowjlnbwGymhMCkBBtb+tQmCH
 dYAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8/ekMaS9IDMDDdO/sPjkKucuBStRVoSIxnyYCbHSwBw=;
 b=PNjcW+Xl9OEHCxBiG2nG4cdILMLysI+MCo6aOOUDlSdfTGNw6F+BpsnJSOfMZONSAy
 lhEvtxu8yTmKCYEsfYZviJnyBLn8U79z/Qm/lkDXf8TiVtKA6f9e6g09DlOvJM2bplf3
 Fi8P7Mdx6GhDvFTjCq9zNPSQPCWbGFi2dKX+38piIHAb3XGzct+RDxXMk3TBRM5Tk4fp
 P3F/QbXx1gd7AmbTqEi6/7EqQUrVHRy7e3zEwQX6SZ8BEAHSfWGNSrvdDx2R+HLH2nUk
 Ag8TCEY+lQo2ZE1to2KV+HaMfQSJkKU7dQK40Nivri6EQauzIRcN5svJ6BzFsv4qWOAA
 BDlg==
X-Gm-Message-State: AOAM530yM6jAXcU0KoLnTa7TYhvSuoPFiQqcdxx6CYjutoKZFuB+yxAX
 Wgef6HMynPjKh6JeV87xdqqXiw==
X-Google-Smtp-Source: ABdhPJxam8QRdVRuBgKKTLUtj/XnW3H2lWM3XSsyQFA/l5gFf4bV/xqthW3fpc0DOB/QJ02i9EnAew==
X-Received: by 2002:a63:d318:: with SMTP id b24mr6284198pgg.403.1590733632609; 
 Thu, 28 May 2020 23:27:12 -0700 (PDT)
Received: from localhost ([122.172.60.59])
 by smtp.gmail.com with ESMTPSA id g27sm6532578pfr.51.2020.05.28.23.27.11
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 28 May 2020 23:27:11 -0700 (PDT)
Date: Fri, 29 May 2020 11:57:09 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Jassi Brar <jassisinghbrar@gmail.com>
Subject: Re: [RFC] dt-bindings: mailbox: add doorbell support to ARM MHU
Message-ID: <20200529062709.tjmlguu5ovhk4t7o@vireshk-i7>
References: <0a50f0cf5593baeb628dc8606c523665e5e2ae6c.1589519600.git.viresh.kumar@linaro.org>
 <20200528192005.GA494874@bogus>
 <CABb+yY3KKpDHTsTBescW_rXmqmLzJh-Ogaotk2n=nYRkfHy2cg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABb+yY3KKpDHTsTBescW_rXmqmLzJh-Ogaotk2n=nYRkfHy2cg@mail.gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_232713_881433_170E7DCF 
X-CRM114-Status: GOOD (  17.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:529 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On 29-05-20, 00:20, Jassi Brar wrote:
> The fact that all these bits are backed by one physical signal makes

I believe that within the IP itself, there must be 32 signals, just
that only one comes out of it all OR'd together. Maybe that can be
verified by writing 0x01 to it multiple times and it should generate
the interrupt only once on the first instance. i.e. writing 1 to any
big again won't raise the interrupt.

> the firmware implement its own mux-demux'ing scheme.

Similar to how the interrupt controllers do it in the kernel, they
receive a single interrupt and then go check its registers/bits to see
which peripheral raised it.

> So the choice was
> between demux and single signal at a time.

Well, the demux is on the firmware side and the kernel may not need to
worry about that, let the platform do it ?

> Had there been one signal
> per bit, the implementation would have definitely been 'efficient'.

I will say 'More efficient', it will still be 'efficient' if we
implement doorbell.

> And the first platform the driver was developed on, required message
> passing over the registers.

I think it was correctly done at that point of time. No doubt about
that.

> So now my approach is to make do with what
> we have...unless it shows in numbers.

ARM's office is closed (lock-down) and he doesn't have remote access
to the board and so was unable to do it until now.

Numbers or no numbers, I don't think there is a question here about
what is the most efficient way of doing it. Doing it in parallel (when
the hardware allows) is surely going to be more efficient. Sending a
signal, getting it processed by the firmware, doing something with it
and then sending an Ack and that being received by kernel will take
time. Why make a queue on the kernel side when we don't have to. :)

> Anyways, if it comes to that, I'd rather a separate "doorbell' driver
> than a driver working in two s/w modes.

I think that would be fine with everyone, if you are fine with that
now (based on plain logic and no numbers), maybe we can get that done
now?

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
