Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF2541F716E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 02:34:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/qaX3eaXZT5z5DvWPAK3D2dzui0QmRhhlak5sKz9WXc=; b=l/TSlANA3MXun+
	LlrCy6scs5MxRu8mDs/kUqv4R184FZ1ag9juhAH7xMlc9ksYV+PHqCiRy+NGtPYsSpqHTfvjA5ZIB
	p1SeExoEKJTg/9oEPc57xXb/An9Wai+jBtxp5dvs7FfPnQbXAqYTSynNz6VByWzcdrTA5b8GEdcVM
	+O+VBc9yCHBSnLT+n43crn+mWerdDvvNR+0I0lo6u1DEJZLg8Qa8EH+5NDCHWUCXAJd/+9N0fMfRc
	2oPkcF6jNc/iZULHmlgPj6H5h5aQQuW2T3G6EweQ+IcEW4U2wGdu5xRLBmmBYfqQdvMaLwv9yCrtV
	el37K+RUsohY0kaa/YjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjXeb-0002RZ-NE; Fri, 12 Jun 2020 00:34:41 +0000
Received: from mail-io1-xd2e.google.com ([2607:f8b0:4864:20::d2e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjXeT-0002R0-1N
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 00:34:34 +0000
Received: by mail-io1-xd2e.google.com with SMTP id t9so8444792ioj.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jun 2020 17:34:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zqAXLZX8TTyfYw2OboHQenLiZ8rdFnWo4aB6MdUN6iU=;
 b=F61cC8UcxjV48CcghdFLkde51ipu99aJTlc097t1fSE8p9YHX9CB8jpC64s1W+ps4V
 HT8GjqcHyIvGaiHE7H6rjSxWNZyQdKqJnBQHearjAtI4yogdfPzQjsAVE/kMULDQtb/G
 4NV9gcn47T2J70hJoC+em/Dv9VqPmCP7EFjTFGuvI14wziI298U9Rw+W17Zx1Oyp7UeK
 NcfhlKKRYeoDSnNfiJDFdQf/H2FbqB8F69bZRNU5GW02RlXd7Dckj4KdYBc1udCHUXLt
 1duD8AY3vBNRKGoyEryJOgGoLtpWYSb32p24H+FwUP6SjsdmM0msoxg7tZz31di2J5Ud
 tppQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zqAXLZX8TTyfYw2OboHQenLiZ8rdFnWo4aB6MdUN6iU=;
 b=BcjsVvMd4RKX6qzjuveqy3ESEM9jm11RHhamUICUgJ5/t8NIH27fpNYB1s6udEpHcQ
 DHwrfDUN4BCazyQzf4gwnFnDeiYKtJOs4sKqh19rWSKxPGRPi7TcybslFMCPVgMRJaQD
 DLxF34njPoz30EHuakcBqz+RLLHXb3QjcZwdos1EWDd5OmoaNEfczW+fMch9FNLPEKD3
 EU9Kg/yDLvxi1em+g5QIRspildBR18v9I28ydbT9kkFfUzw253RAkUmaEEQJmbse+Vpq
 5qp7sKO8GXJBMinO3nhijCR4xCTrJevTYdBt8qAA32kve2pjEylJZc7G/7VcxxzFkLk4
 Ar8g==
X-Gm-Message-State: AOAM530tidad/mL8dG64UnCqwyRz10ux2BFg5Fl9gXzDYyi+tKJ/Wlmo
 Q8OkaMSFg9Yn67uuwzr/kRHYGty3xMjOigZneiao3jFu
X-Google-Smtp-Source: ABdhPJxnE06UePPNmfs3VQ+1tcmElRjZgtBMF5m6+O2osNGMQK9HxZMo05YiqzSr/fTz95+5ChTNvLuenG4Fv4EN0WU=
X-Received: by 2002:a6b:b515:: with SMTP id e21mr11198076iof.53.1591922071349; 
 Thu, 11 Jun 2020 17:34:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200529040758.kneg2j4n3gxh2rfv@vireshk-i7>
 <20200603180435.GB23722@bogus>
 <CABb+yY0cW1GZHVmwEr19JRdJTmsAxw9uq83QV_aq-tdPJO5_Fg@mail.gmail.com>
 <20200604092052.GD8814@bogus>
 <CABb+yY27Ngb0C-onkU2qyt=uKgG4iVrcv8hGkC+anypQbTRA1w@mail.gmail.com>
 <20200605045645.GD12397@bogus>
 <CABb+yY2YZ99NjHYNi0=KLGFDsVUeJmqiJD3E25Chwk-THJV4iw@mail.gmail.com>
 <20200605085830.GA32372@bogus>
 <CABb+yY2TR7tuMx6u8yah6mO2GwZ5SWYOO80EQRL-i=ybgn=Wog@mail.gmail.com>
 <20200610093334.yznxl2esv5ht27ns@vireshk-i7> <20200611100027.GB18781@bogus>
In-Reply-To: <20200611100027.GB18781@bogus>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Thu, 11 Jun 2020 19:34:20 -0500
Message-ID: <CABb+yY1OwVB+uk+0w+D-4Xy46iYn8tPZYBZ0qjrzQFLA6SaTvw@mail.gmail.com>
Subject: Re: [RFC] dt-bindings: mailbox: add doorbell support to ARM MHU
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_173433_079493_6EC40F7F 
X-CRM114-Status: GOOD (  15.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d2e listed in]
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
Cc: Rob Herring <robh@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Devicetree List <devicetree@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 11, 2020 at 5:00 AM Sudeep Holla <sudeep.holla@arm.com> wrote:

> >
> > > Interesting logs !  The time taken to complete _successful_ requests
> > > are arguably better in bad_trace ... there are many <10usec responses
> > > in bad_trace, while the fastest response in good_trace is  53usec.
> >
> > Indeed this is interesting. It may be worth looking (separately) into
> > why don't we see those 3 us long requests anymore, or maybe they were
> > just not there in the logs.
> >
>
> As I mentioned in another thread that non-dvfs requests may be prioritised
> lower when there are parallel request to the remote. The so called bad
> trace doesn't have such scenario with single channel and all requests
> from OS being serialised. The good trace has 2 channels and requests to
> remote happen in parallel and hence it is fair to see slightly higher
> latencies for lower priority requests.
>
In the first post in this thread, Viresh lamented that mailbox
introduces "a few ms" delay in the scheduler path.
Your own tests show that is certainly not the case -- average is the
same as proposed virtual channels 50-100us, the best case is 3us vs
53us for virtual channels.

-#define SCMI_MAX_POLL_TO_NS (100 * NSEC_PER_USEC)
+#define SCMI_MAX_POLL_TO_NS (30 * 1000 * NSEC_PER_USEC)

The above simple fix (not a hack or workaround) avoids the need of
virtual channels' implementation, as per tests you conducted.

It might have been silly to not implement virtual channels originally,
but it would be just as silly now to implement if we can reuse the
code.
So I welcome new tests.

thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
