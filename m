Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0A411EF15A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 08:31:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HDmSlS1Uq3HNChFdFbuCn4TrVRDrla42nm2qdVczsFk=; b=fXTSfEsS/HTOgk
	Nx8CKCl3XW/ZdwqImFtLKERqa0pyLKAFR11QmXFaLcZ/RJ3JRGQyHUcnFhxmbVjIWRSf4EGdWaiE9
	7S873h98j/1nnvBh8HBttksQ2flK1ILmztbsduPwaAOvGIJAO+ukbFkLeSPaiQG/opGxd7f5qUUFJ
	0EZmtxRznIln12AWhaqkebRW8opHu2BlH9O9ge6lgA9844ZbfA11pUkBe03gYF3cW78NjxLy7Bo29
	jMzkH/ydI7fgm67qKLCjlLfiRLU6L6dPInPdGXBNSnhxlnAfaKcT0JIkcOqXvg5KgJP7HuQTQBVz0
	+M871tNFpm//+l9sUDlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh5so-0001UI-Ho; Fri, 05 Jun 2020 06:31:14 +0000
Received: from mail-io1-xd2a.google.com ([2607:f8b0:4864:20::d2a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh5sh-0001Tb-62
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 06:31:08 +0000
Received: by mail-io1-xd2a.google.com with SMTP id j8so9060214iog.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jun 2020 23:31:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AwDhq08cjD5JqZTeO0Y9UdSU2XkQsUbpJ8EXCL/HMHE=;
 b=hIrhYQ/Ib+LMc/lM8TkkboBA43CJMvk8zLm4ZNrhrhhPe44AThnqI1MtOmXnBLUo6b
 W91iiSy/AvYKOUOfr5GNwDxO1RwGoglhDLE+fWDlIP53CSNTE0YwTQxk+1wK2sTtzLR8
 Krxss4eKSQo8FWkgEAaXX8heaJnqfCIJNY7rVT2Wt9GpTGcz5L5Q4yMgkHr84bdLs8gu
 gNOz6oy6QOtm6JuIVM2hBvCf6+8hrK2mNd2SMrY74C24UAzF9z85HCwp4pb7r+/rmyUW
 1XDRD+nIE8Ik1NuLKByDtAHKujMdUKMsNwylY39JqoW5nGa6gkn8lylg5AeirjcRmRAw
 QjJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AwDhq08cjD5JqZTeO0Y9UdSU2XkQsUbpJ8EXCL/HMHE=;
 b=eqDjnwhGjq2X0rfocer4QhG3p+fJwpIjBvhTTqPa+RVoj60rDsbV8YQkwIF482qsQM
 3Lr70bfKe7w14hjc5K6JoBFHUPexlg8PrplmpcxjnZw3utzZPQzXWQZkNmaesv16d8V3
 02wzG3O3AJUfEG2dsO/ERZShWlZEsgvUZ9R9PmduB8S2UXbN8mv/m0KVmZU7OgtKF3j+
 VrDxxR3zwq+inqipKjSsQJN9cvfK5hoKJmI3in0rXFbcHIrLp2SXUuEW22gyX++tmiKR
 +NmjblCwMOeNs7+UhsO648lcISWwnHyWEOxtUlLpmYwCk9iwVq5yJzBQgVVd+GhtrQFz
 2F0Q==
X-Gm-Message-State: AOAM532kuUtvsJxzVuDG3isdLGJlRWmlRLyt9FRjoCZW6dBVVqOSYyxs
 dAUmCp2fjs3IYQGuhQgJEDLpPJ60RpjWNAcyAlE=
X-Google-Smtp-Source: ABdhPJwfxG2xuH353FOlKdoATjIRdV+1mkAMbDgGbPrRb2tsKonvfuPWxT4EOWzLvMycv3HDOoS7PqnFNKbNhrJLhKI=
X-Received: by 2002:a5d:8958:: with SMTP id b24mr7266854iot.53.1591338665743; 
 Thu, 04 Jun 2020 23:31:05 -0700 (PDT)
MIME-Version: 1.0
References: <0a50f0cf5593baeb628dc8606c523665e5e2ae6c.1589519600.git.viresh.kumar@linaro.org>
 <20200528192005.GA494874@bogus> <20200529040758.kneg2j4n3gxh2rfv@vireshk-i7>
 <20200603180435.GB23722@bogus>
 <CABb+yY0cW1GZHVmwEr19JRdJTmsAxw9uq83QV_aq-tdPJO5_Fg@mail.gmail.com>
 <20200604092052.GD8814@bogus>
 <CABb+yY27Ngb0C-onkU2qyt=uKgG4iVrcv8hGkC+anypQbTRA1w@mail.gmail.com>
 <20200605045645.GD12397@bogus>
In-Reply-To: <20200605045645.GD12397@bogus>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Fri, 5 Jun 2020 01:30:54 -0500
Message-ID: <CABb+yY2YZ99NjHYNi0=KLGFDsVUeJmqiJD3E25Chwk-THJV4iw@mail.gmail.com>
Subject: Re: [RFC] dt-bindings: mailbox: add doorbell support to ARM MHU
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_233107_242344_958509E6 
X-CRM114-Status: GOOD (  15.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d2a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jassisinghbrar[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Thu, Jun 4, 2020 at 11:56 PM Sudeep Holla <sudeep.holla@arm.com> wrote:

>
> > >>     bash-1526  [000]  1149.472553: scmi_xfer_begin:      transfer_id=1538 msg_id=6 protocol_id=21 seq=0 poll=0
> > >>      <idle>-0     [001]  1149.472733: scmi_xfer_begin:      transfer_id=1539 msg_id=7 protocol_id=19 seq=1 poll=1
> > >
> > Here another request is started before the first is finished.
>
> Ah, the prints are when the client requested. It is not when the mailbox
> started it. So this just indicates the beginning of the transfer from the
> client.
>
There maybe condition on a sensor read to finish within 1ms, but there
is no condition for the read to _start_ at this very moment (usually
there are sleeps in the path to sensor requests).

> > If you want this to work you have to serialise access to the single
> > physical channel and/or run the remote firmware in asynchronous mode -
> > that is, the firmware ack the bit as soon as it sees and starts
> > working in the background, so that we return in ~3usec always, while
> > the data returns whenever it is ready.
>
> Yes it does that for few requests like DVFS while it uses synchronous
> mode for few others. While ideally I agree everything in asynchronous
> most is better, I don't know there may be reasons for such design.
>
The reason is that, if the firmware works asynchronously, every call
would return in ~3usec and you won't think you need virtual channels.

You have shared only 'bad' log without serialising access. Please
share log after serialising access to the channel and the 'good' log
with virtual channels.  That should put the topic to rest.

thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
