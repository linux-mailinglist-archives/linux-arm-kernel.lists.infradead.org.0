Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0F4D1EE77F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 17:16:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FueWCfz7PZgmgaL/GtsOsHpg9qMumkCVvq6aSY+tWtE=; b=KTHQ2Y512XZiWU
	g+6n5C2X7yFM1A26CxqliiDmbmolsLrdbl4yfbhWPskvg/cOzlhvwBX2my+aIO4U0f9IKUjGcp6gh
	2KdHxt8I2COYw0ijLML1nj+QIjFM/jj4WZDbV6vZo/dmv8QjFASBH30t+ESa9QRMRdezm1jlgEHT2
	3KeHbiDPN2PUvkDAGhPrUi73oQhxqr3cfc/6tLOCVoBAq5zJXB4E/yijYgwDzNKGA9PG2oVc7grNt
	bwqqxYcNmb8c2Kklc2r3QSqjbWy+tGvToLTMKesHks6DKpJf/IkTsWWwaXnckmks/YIxE26WVKpyA
	2LhK8sOmdGvg6N7FUfLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgrbL-0006QK-U4; Thu, 04 Jun 2020 15:16:15 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgrbE-0006Pr-C5
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 15:16:09 +0000
Received: by mail-il1-x144.google.com with SMTP id d1so6398682ila.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jun 2020 08:16:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gW26R0vM23ZVhp5EkFY+DM5yLwT6rLNr2QwfDIqp1n4=;
 b=RYwVgd+j9KPLF9NUSd1qBwfZ4icLAyg/dwmp8FX8QiRKJOlt3STT8RbzrYK175CCHQ
 RSh9pZ/FYM1fqgCJ1nFMUNEbZsI/fpTXwtYbnVuWJ7dL68R4s+V29exjTMUIug1EZ5LR
 m8kfEfy/jMtegOUVpyIsUV3v+wM3Fq4AqXr3i/Y+vFrVwNnZ7Td3BRGAPOc3OsVQ/erD
 A+KPrB9zEEaALS7697QcUj4pL0O77wTpn4CCqwTutj7KXBPSQ1Zp6ZNS2qCGDBUHRKe9
 GYUnnQl7+oKUgSaHmx/sLoCPZ2dsMxM2AnrgXwTSByUS4z7EMlD82O6FaMu/lP7d+RAY
 wsDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gW26R0vM23ZVhp5EkFY+DM5yLwT6rLNr2QwfDIqp1n4=;
 b=rwlRlGAnYPMR0yuVaEr5ihc3gefHizDMOY9/AiWL38WNE4qaokqdDhPWlmD0b4Erg7
 SWRJBehvmVFwMFiV7sNsBoxOuUEpqmjOiZmga3JbKlaE89EaT7nMREGN0fWoUQ54B8FL
 CTPc8dhk5wF5/5n86SX4laJdYSHOgH5X+4OvgOYurx2vzkq3zbfSOzbIIEbkq2C8tTfD
 GEytEDFkWdKT4AzeVtB8o/WxiMLvuQ8SMOoItI56MtGc4r9scqHEYHQu9PsVDI9/yPyS
 1NMiEI0h4lLm2gC1iWPjF1OpfkWqr7Kfpcn8TiD4jftDezoE/wpXlK5tQYmAgx2z2bOa
 pnQg==
X-Gm-Message-State: AOAM533n+DwQ2LGjv1ddIeZwgkDYg5RyNaN30RtZ4NeSW+cNTcnqAVvP
 6jkn9CqRC40O8s1ArH9hussdLl0kfLue40sio2o=
X-Google-Smtp-Source: ABdhPJxGc4aao4tyLTwDiA0mZ3IqY3wcj+6JqBiEaQXtb+7pstTH5tHQsDwP26lBnnXFiCS73vjzHbplDTkM0oy8WKY=
X-Received: by 2002:a05:6e02:1242:: with SMTP id
 j2mr4343170ilq.303.1591283767234; 
 Thu, 04 Jun 2020 08:16:07 -0700 (PDT)
MIME-Version: 1.0
References: <0a50f0cf5593baeb628dc8606c523665e5e2ae6c.1589519600.git.viresh.kumar@linaro.org>
 <20200528192005.GA494874@bogus> <20200529040758.kneg2j4n3gxh2rfv@vireshk-i7>
 <20200603180435.GB23722@bogus>
 <CABb+yY0cW1GZHVmwEr19JRdJTmsAxw9uq83QV_aq-tdPJO5_Fg@mail.gmail.com>
 <20200604092052.GD8814@bogus>
In-Reply-To: <20200604092052.GD8814@bogus>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Thu, 4 Jun 2020 10:15:55 -0500
Message-ID: <CABb+yY27Ngb0C-onkU2qyt=uKgG4iVrcv8hGkC+anypQbTRA1w@mail.gmail.com>
Subject: Re: [RFC] dt-bindings: mailbox: add doorbell support to ARM MHU
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_081608_414838_8FA8BF5D 
X-CRM114-Status: GOOD (  23.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
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

On Thu, Jun 4, 2020 at 4:20 AM Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Wed, Jun 03, 2020 at 01:32:42PM -0500, Jassi Brar wrote:
> > On Wed, Jun 3, 2020 at 1:04 PM Sudeep Holla <sudeep.holla@arm.com> wrote:
> > >
> > > On Fri, May 29, 2020 at 09:37:58AM +0530, Viresh Kumar wrote:
> > > > On 28-05-20, 13:20, Rob Herring wrote:
> > > > > Whether Linux
> > > > > requires serializing mailbox accesses is a separate issue. On that side,
> > > > > it seems silly to not allow driving the h/w in the most efficient way
> > > > > possible.
> > > >
> > > > That's exactly what we are trying to say. The hardware allows us to
> > > > write all 32 bits in parallel, without any hardware issues, why
> > > > shouldn't we do that ? The delay (which Sudeep will find out, he is
> > > > facing issues with hardware access because of lockdown right now)
> > >
> > > OK, I was able to access the setup today. I couldn't reach a point
> > > where I can do measurements as the system just became unusable with
> > > one physical channel instead of 2 virtual channels as in my patches.
> > >
> > > My test was simple. Switch to schedutil and read sensors periodically
> > > via sysfs.
> > >
> > >  arm-scmi firmware:scmi: message for 1 is not expected!
> > >
> > This sounds like you are not serialising requests on a shared channel.
> > Can you please also share the patch?
>
> OK, I did try with a small patch initially and then realised we must hit
> issue with mainline as is. Tried and the behaviour is exact same. All
> I did is removed my patches and use bit[0] as the signal. It doesn't
> matter as writes to the register are now serialised. Oh, the above
> message comes when OS times out in advance while firmware continues to
> process the old request and respond.
>
> The trace I sent gives much better view of what's going on.
>
BTW, you didn't even share 'good' vs 'bad' log for me to actually see
if the api lacks.

Let us look closely ...

 >>    bash-1019  [005]  1149.452340: scmi_xfer_begin:
transfer_id=1537 msg_id=7 protocol_id=19 seq=0 poll=1
 >>    bash-1019  [005]  1149.452407: scmi_xfer_end:
transfer_id=1537 msg_id=7 protocol_id=19 seq=0 status=0
>
This round trip took  67usecs.  (log shows some at even 3usecs)
That includes mailbox api overhead, memcpy and the time taken by
remote to respond.
So the api is definitely capable of much faster transfers than you require.

>>     bash-1526  [000]  1149.472553: scmi_xfer_begin:      transfer_id=1538 msg_id=6 protocol_id=21 seq=0 poll=0
>>      <idle>-0     [001]  1149.472733: scmi_xfer_begin:      transfer_id=1539 msg_id=7 protocol_id=19 seq=1 poll=1
>
Here another request is started before the first is finished.
If you want this to work you have to serialise access to the single
physical channel and/or run the remote firmware in asynchronous mode -
that is, the firmware ack the bit as soon as it sees and starts
working in the background, so that we return in ~3usec always, while
the data returns whenever it is ready.  Again, I don't have the code
or the 'good' run log to compare.

PS: I feel it is probably less effort for me to simply let the patch
through, than use my reiki powers to imagine how your test code and
firmware looks like.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
