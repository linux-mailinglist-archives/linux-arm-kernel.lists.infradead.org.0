Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5F281EFCD5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 17:43:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TteEKlz6qvW+UOKm1ej3w5p4ypLXtXp0kIqBdGRUPW8=; b=CuutzEHP9H9Kwn
	2gWJnSU/vSC3tW4uJJH2bpyaVdEw39TcvkttNqPBkcAVuqCLIdb9oABJmcNmWqtznQArOZFMaXZYI
	gseReAcW8jSuyp9pebHXOOzBHtTDCgRInzcHgLWJ1QySuFjVA0ClxZDxJhjivl53orAq5yt2jTnnh
	cyL2GNjqLaiF3+Bwg3Men1ZXnTR4UwrDpRSsV8AQZHjaaMAaaxJ8fVTQCPBD1iXpYTd3mpkCvbvF4
	UBakFzl9oidbC/Sdq7Tur5wyrtlG7TWoQgQDPP6jrdlyQ5K/ctdvukv/lqlkhkkrw2WNaK3FxO7H6
	mdKtbTB0gUC26NTKNESA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhEV3-0002tP-Oe; Fri, 05 Jun 2020 15:43:17 +0000
Received: from mail-il1-x130.google.com ([2607:f8b0:4864:20::130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhEUs-0002t2-RU
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 15:43:09 +0000
Received: by mail-il1-x130.google.com with SMTP id e11so4913489ilr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jun 2020 08:43:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=G2GB2U7+brpU97z7quDVcgXAtK4rM5dz6gG/Wy3Olog=;
 b=HkFNdaGSceLzbEKT8WldzvKrDeIBzoGGsKRPbyGQrKzhnWdYN2yeXulRIa/JJ8HUEr
 CFoSm/iRg7jQHZ2V/ngd+jE8nj9KOUxe5CNBw9JUkE1fHNfxD069FCGB4RfVCjEvNsWh
 PjSOLaP/dRj/yR6/NBAERl/1/3eo/0/lJw0A0OWZtSbdUB70ZfDMpbuT6zn7FIpi/B5Y
 lg1IaEvHJJ8TIW2pLpfA1H2ACK2cPLfo2Qg1f6e02cs88tId5vsuQ48t3JoACPMTtfVt
 64GxYPEisVuelP9nLvlZm2OafdGRadzYJ0Ndr+YJ/8WFcKHvGkXOMCW8tELOnijN5WhA
 dY5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=G2GB2U7+brpU97z7quDVcgXAtK4rM5dz6gG/Wy3Olog=;
 b=lSOnt+FzjtCMKYO4JL2Lb9OeVh84WI79LDY/GWPaN6gqfRqasJmlQeNlNWmVJtUqdz
 sGAAs4tGqmmxO5by0eXQe1nSO5sG7N8QCUEIIKe/hGykBAGJibRAah0O1YOy6HoBHPzQ
 gqneaxmLPEV65+s7i7svlJbNw1hAZnl4+rRXEZoUcAKFRBQpTKNWj3NUDV7+PGFDhBq7
 0YPbSVBpqUhKGuzqwbtBEn6utoC97kTNvISWbWeXEakSxoAI5CATjx+DftHloHG5a0mA
 qWMc3VwVZ2Y4nryFtMshpNma3x5IFjlv5iALTCj+Ggubm2FO0P44/8Wn48aG0Ui0YwiS
 jnIA==
X-Gm-Message-State: AOAM5306khSZBS1SynOAmOF55nL4ixx2j9cd5DTWGZvNSaUADXveE5g7
 g9L5NE3tgEkwRKhkzMolZbg7sIW6h89Yh5Kjlfw=
X-Google-Smtp-Source: ABdhPJzJW5O3DzxX9JUEp0Fq7vO1ZexlwSsEZ5rkVUXSutg5q4mvTIgBUytu0r9dtgLLVLmvp7RCv3/Wi3VyOKOvz8I=
X-Received: by 2002:a92:5e52:: with SMTP id s79mr8217845ilb.33.1591371785844; 
 Fri, 05 Jun 2020 08:43:05 -0700 (PDT)
MIME-Version: 1.0
References: <0a50f0cf5593baeb628dc8606c523665e5e2ae6c.1589519600.git.viresh.kumar@linaro.org>
 <20200528192005.GA494874@bogus> <20200529040758.kneg2j4n3gxh2rfv@vireshk-i7>
 <20200603180435.GB23722@bogus>
 <CABb+yY0cW1GZHVmwEr19JRdJTmsAxw9uq83QV_aq-tdPJO5_Fg@mail.gmail.com>
 <20200604092052.GD8814@bogus>
 <CABb+yY27Ngb0C-onkU2qyt=uKgG4iVrcv8hGkC+anypQbTRA1w@mail.gmail.com>
 <20200605045645.GD12397@bogus>
 <CABb+yY2YZ99NjHYNi0=KLGFDsVUeJmqiJD3E25Chwk-THJV4iw@mail.gmail.com>
 <20200605085830.GA32372@bogus>
In-Reply-To: <20200605085830.GA32372@bogus>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Fri, 5 Jun 2020 10:42:54 -0500
Message-ID: <CABb+yY2TR7tuMx6u8yah6mO2GwZ5SWYOO80EQRL-i=ybgn=Wog@mail.gmail.com>
Subject: Re: [RFC] dt-bindings: mailbox: add doorbell support to ARM MHU
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_084308_569391_EC2E5B2C 
X-CRM114-Status: GOOD (  19.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:130 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jassisinghbrar[at]gmail.com]
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

On Fri, Jun 5, 2020 at 3:58 AM Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> > > > >>     bash-1526  [000]  1149.472553: scmi_xfer_begin:      transfer_id=1538 msg_id=6 protocol_id=21 seq=0 poll=0
> > > > >>      <idle>-0     [001]  1149.472733: scmi_xfer_begin:      transfer_id=1539 msg_id=7 protocol_id=19 seq=1 poll=1
> > > > >
> > > > Here another request is started before the first is finished.
> > >
> > > Ah, the prints are when the client requested. It is not when the mailbox
> > > started it. So this just indicates the beginning of the transfer from the
> > > client.
> > >
> > There maybe condition on a sensor read to finish within 1ms, but there
> > is no condition for the read to _start_ at this very moment (usually
> > there are sleeps in the path to sensor requests).
> >
>
> Again I wasn't clear. The trace logs are at the point just before calling
> mbox_send_messages. So any delay in sensor drivers won't get include. It
> is after the point sensor driver request to read the value and before we
> send the request via mailbox.
>
No, you were clear, I wasn't. Let me try again.

Since origin upto scmi_xfer, there can be many forms of sleep like
schedule/mutexlock etc.... think of some userspace triggering sensor
or dvfs operation. Linux does not provide real-time guarantees. Even
if remote (scmi) firmware guarantee RT response, it makes sense to
timeout a response only after the _request is on the bus_  and not
when you submit a request to the api (unless you serialise it).
IOW, start the timeout from  mbox_client.tx_prepare()  when the
message actually gets on the bus.


> > You have shared only 'bad' log without serialising access. Please
> > share log after serialising access to the channel and the 'good' log
> > with virtual channels.  That should put the topic to rest.
> >
>
> I didn't realise that, sorry for missing that earlier. Attached both
> now, thanks for asking.
>
Interesting logs !  The time taken to complete _successful_ requests
are arguably better in bad_trace ... there are many <10usec responses
in bad_trace, while the fastest response in good_trace is  53usec.
And the requests that 'fail/timeout' are purely the result of not
serialising them or checkout for timeout at wrong place as explained
above.

thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
