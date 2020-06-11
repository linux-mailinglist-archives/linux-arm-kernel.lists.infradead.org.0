Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC9631F6024
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 04:46:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P37wc+n+1u4p1/9U1Pio7AbVZy/20uAkRpRj3wmUIbo=; b=h9A60k9jpo+NC5
	+j0P9af5z8AW8v4Ak3WqXZrSM1UhH84wYUh4m5hTr2H1TzqJjeg8sUSTXPdT7CGAehiCmkm/ovi8p
	b1eWip2+iAdprksAYPI7kmINbyQlFk2XeLQLCgJXfTRhsUKuaq8/EWr2slja//Wf2WVUnm+E0LBv4
	vDNW3QJStt3/5vYm3ZplHnt4NcMzqZHE09NwFCayyL1IlfVOg3J1JaR4IIXq/eNgC8ZSQiO4CELMK
	NO5/skc/HRncOnWlT6tRle/f36JqVWr/4oNgtkNEaIFdPDTzYzk7oA2TDM0RlC8jXhCAUL4vCQbMr
	KW+hJxSoP4pAVLDjhWgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjDEO-0004W9-VV; Thu, 11 Jun 2020 02:46:16 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjDEG-0004Ub-4Y
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 02:46:09 +0000
Received: by mail-io1-xd43.google.com with SMTP id t9so4640812ioj.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 19:46:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TSwJBC/C70DEZoNyejL2OpF4sigG1AZYU4LYk1z1c98=;
 b=HaJM9Pnicj9K5t9hjHcLMjrmSXZx+f60pqIst9ZZ7NETX/VkKX+lCnABIjKvubjUBh
 RtIYsrIGk/FPaNDwfTwSWs68E+KSoErzQOUVqW0VSi5tD7KWX60JKyYAlS9jwwDPAFt+
 RGJ2VNagqRm/ZbkdTIB6tDi0crdI5qG3Dnqyku1tlSrquhGStkL/qUf8atvGn935oq0j
 crkn5/0M2ECHGjdn3JbSQlKUARmVH06OtCHdPPzlu5+3wCWqwkcy+2f7Lz+ScPLvgzro
 en78CqevdvD7s1cMMuwVskUB9N6vmaTxNY7WI/K8zZwb3iRq7ERjFB6PK9TQYI0smzTb
 PZaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TSwJBC/C70DEZoNyejL2OpF4sigG1AZYU4LYk1z1c98=;
 b=W0cAXMlPW6geibozNEbUwr91hKH2n8XnL5WXSvswMVI3DbG0ciw/Wvcvwy5DOtKzDE
 yQvKdFZEU0TObq4RPYqXlyhB08S8qR1vz9g9ue9OzUQMNs2jclLoIYVO4I9fxE/LKdvQ
 DGYDQjDcUzw7YfIXd2EXBLKjtoNhIrRrGmFEvWD/U78CPBzix41gsMH2cnzUKEhxUuXh
 DhykrBhOfe3e6pu/FMHi+pHqe7bk2NB+iOdTtuSPx52pWtH0mtPbGsDxG3tEgmIz+Si7
 0drAFiMGJ1NLIhLqfDSVz/qKmDqZiAVJpiRKzaDz532LxSdQpAGgdOQrIqQl/8iwmzRS
 w93A==
X-Gm-Message-State: AOAM530692DrvWac+djjHbjVm+z86+7TtC3i9An03rPcIEWq7fbMJi+s
 71VXMdgKyZ+K5ErEGa/CteS+ah9W3/YNUGQlMpM=
X-Google-Smtp-Source: ABdhPJwuvQRH49+8qam8fSfIwe6/k8jde63sbEvj1L03wYyIFilyVejglcq1r9XLL+dhvNe+0uXq6DtRjvsISkxNUXU=
X-Received: by 2002:a02:998b:: with SMTP id a11mr1194145jal.117.1591843566867; 
 Wed, 10 Jun 2020 19:46:06 -0700 (PDT)
MIME-Version: 1.0
References: <20200607193023.52344-1-jassisinghbrar@gmail.com>
 <20200610082315.GB2689@bogus>
 <CABb+yY1T03YLwiFvBykxsAHQ9Kpu=r1nRTuaP3Emf5dP=Upm0g@mail.gmail.com>
 <20200610155629.GA7357@bogus>
In-Reply-To: <20200610155629.GA7357@bogus>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Wed, 10 Jun 2020 21:45:55 -0500
Message-ID: <CABb+yY0pQYD7DTf=MNpVPB7F2PESiWyTYj=ftRHDPkKMOobRVQ@mail.gmail.com>
Subject: Re: [PATCH] firmware: arm_scmi: fix timeout value for send_message
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_194608_194293_5CDD46E1 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jassisinghbrar[at]gmail.com]
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
Cc: Rob Herring <robh@kernel.org>, "arnd@arndb.de" <arnd@arndb.de>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 10, 2020 at 10:56 AM Sudeep Holla <sudeep.holla@arm.com> wrote:

[I admit you can write bigger posts than me, so I am not going to
write a passionate response to each of your paragraphs.
Let's keep it to the point.]

> > > >       if (xfer->hdr.poll_completion) {
> > > > -             ktime_t stop = ktime_add_ns(ktime_get(), SCMI_MAX_POLL_TO_NS);
> > > > +             ktime_t stop = ktime_add_ns(ktime_get(), 500 * 1000 * NSEC_PER_USEC);
> > > >
> > >
> > > This is unacceptable delay for schedutil fast_switch. So no for this one.
> > >
> > Increasing timeout does not increase latency.
>
> Agreed, but worst case you may be stuck here for 500ms which is not
> acceptable.
>
Not acceptable to who, you or the kernel? :)    Now that you said you
are fixing the scmi's fast_switch implementation.

Even though I don't think 500ms would ruin our lives, but ok, I will
make it 30ms - same as you did in the 'else' block. And drop the other
change.

Thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
