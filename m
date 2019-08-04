Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C764A80B14
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  4 Aug 2019 15:14:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ojO2PunuCmIu8vSXiGTk2l7S8zmLKShBCkb815yMP0A=; b=oT+YnSh2VvsHrq
	/93+LoLjIBjxUUkXZ+aLg+fT8ems2zyohaxrIbIOkEOBl7T3AUi9FRqDIBjJETOTrNXD3L4QSOkLh
	NZkrGLhwgABXaMFRhTIu1x8lROg/qPrwHp8jLBKTV9WcW2epA6pdmBJVtDvzKf1fWzEIorGrZii6G
	iVK0b8pChX174juh4M6v2AqZZa3qHuAWdtTgm3Ty9hQshjk4+hC7Ql5owEqQBbJt7ibbQ+1z5qcWi
	3m13Y6oJfpCLMVPGIU5TeQKOKD1c/xparuFzaBZARaFcA8XjPsuUjqo4KcXZ4iGZs8saGJ01nrTaQ
	u6qJBbyBBdUx76HQQRbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huGKu-00020N-H9; Sun, 04 Aug 2019 13:14:08 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huGKn-0001zz-LB
 for linux-arm-kernel@lists.infradead.org; Sun, 04 Aug 2019 13:14:03 +0000
Received: by mail-io1-xd42.google.com with SMTP id e20so29019397iob.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 04 Aug 2019 06:13:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=saSzK0dvs8XEQEZsxQgLsa/jfT6Yv+ibyJWmYYiklBA=;
 b=geWo14fYYllSOneTLqBErKdiK7ERvlPHlGjC5CNhd6ZItZ3k1kvp9ngEW3u2vRPtJ3
 WGw0T6+kiq/5R5+EMVVd1z4wufIgBazGDkBBA3TOHEQrzefWR7V26gGXLbBDiXbLUueA
 xHPNBnHwqsR4XMpW8becJW8W2U34CjdumRkC5/4zZRbR6VPk7TwTcsliTW2arblMWQpP
 AeWTGZ6xByGTSp9lyPlnzC1ox/S0C10Si50FsY0bzU9oPHTsfLP69X5D/AFyqgyv4UW9
 WLSWa41/Mrfk17ceIOF0nJA7gO0g3OwPCteypTAx8Ns+1a+AXWAWUeviQD+HCLewGQxX
 D3rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=saSzK0dvs8XEQEZsxQgLsa/jfT6Yv+ibyJWmYYiklBA=;
 b=CH5isRVkS+UW+pTMS7NOGZeYWz4x0AKEMI9ARE7sbvkLPIeehUQeCye4aYBvDoHM+E
 z0vrrKJPbVujcDzAAj5jUAPDqAqsPHkWeyGCv2Vy/hBRtLgK/7t8+uVy1XqFYrVTEKRn
 FhR/D52/ItCloPaUnKUTo7TFq0kYtTS9iUSRPHGxGoop8oL8PwJa34Al19yfL+8+QhB5
 7Dm9DL5zX5INO1dBEPBV0M7j1XspVhD5rO/Wi+XNTKZbekdb2kt/dOvNNDvQZF7tte2i
 8ufYD37/0YP4w9flhTQbLFKVyfPsiZ0fl12VvsqL55GrY3fIoXgYmhSBCS+gW/14x8TT
 8BPA==
X-Gm-Message-State: APjAAAVi3CLLUmKeRHBdsvBn2rsmQH4hfAzxWNzw46ov6D8N4tNf7p71
 OCMNJRvCfgffDPRrMki1uK2CUYNCfVZtXPoSMNygIw==
X-Google-Smtp-Source: APXvYqzEYr77iikFeNno1hrmPbqZg/KxGzo98SGm01ZcJJlHumIfe99EUO6Oekdfe3TQ4CmxpvBw9XwRjdjCCaw+WYs=
X-Received: by 2002:a5d:9dc7:: with SMTP id 7mr980416ioo.237.1564924437341;
 Sun, 04 Aug 2019 06:13:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190730125157.884-1-andrew.murray@arm.com>
 <20190730125157.884-7-andrew.murray@arm.com>
 <9df0eea2-a9bd-3a93-ca51-9c3d2391a1cf@arm.com>
 <20190802143751.GP56241@e119886-lin.cambridge.arm.com>
In-Reply-To: <20190802143751.GP56241@e119886-lin.cambridge.arm.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Sun, 4 Aug 2019 07:13:45 -0600
Message-ID: <CANLsYkyVMRh_L5BfwWk=s-obh+xiZfjwqXUJkwgaZYWmc6Kuww@mail.gmail.com>
Subject: Re: [PATCH v4 6/6] dt-bindings: arm: coresight: Add support for
 coresight-needs-save-restore
To: Andrew Murray <andrew.murray@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_061401_724789_EC688868 
X-CRM114-Status: GOOD (  25.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
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
Cc: Al Grant <Al.Grant@arm.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Coresight ML <coresight@lists.linaro.org>, Sudeep Holla <Sudeep.Holla@arm.com>,
 Leo Yan <leo.yan@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2 Aug 2019 at 08:37, Andrew Murray <andrew.murray@arm.com> wrote:
>
> On Fri, Aug 02, 2019 at 11:40:54AM +0100, Suzuki K Poulose wrote:
> > Hi Andrew,
> >
> > On 30/07/2019 13:51, Andrew Murray wrote:
> > > Some coresight components, because of choices made during hardware
> > > integration, require their state to be saved and restored across CPU low
> > > power states.
> > >
> > > The software has no reliable method of detecting when save/restore is
> > > required thus let's add a binding to inform the kernel.
> > >
> > > Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> > > ---
> > >   Documentation/devicetree/bindings/arm/coresight.txt | 3 +++
> > >   1 file changed, 3 insertions(+)
> > >
> > > diff --git a/Documentation/devicetree/bindings/arm/coresight.txt b/Documentation/devicetree/bindings/arm/coresight.txt
> > > index fcc3bacfd8bc..7cbdb7893af8 100644
> > > --- a/Documentation/devicetree/bindings/arm/coresight.txt
> > > +++ b/Documentation/devicetree/bindings/arm/coresight.txt
> > > @@ -92,6 +92,9 @@ its hardware characteristcs.
> > >     * arm,cp14: must be present if the system accesses ETM/PTM management
> > >       registers via co-processor 14.
> > > +   * arm,coresight-needs-save-restore: boolean. Indicates that software
> > > +     should save/restore state across power down.
> > > +
> >
> > Do you think we could be a bit more descriptive here about when people could add
> > it to the DT ? Here we don't mention when someone should use this property and
> > it may be added to platforms where it may be absolutely unnecessary. How about :
> >
> > "Indicates that the hardware implementation may not honor the Powerup request
> > from the software and thus might loose the register context on CPU power
> > down (e.g, during CPUIdle). Software must save/restore the context during a
> > CPU power transition cycle."
>
> How about the following:
>
> "Indicates that the hardware will loose register context on CPU power down (e.g.
> CPUIdle), despite the TRCPDCR.PU bit being set."
>
> I'm keen to avoid making suggestions about what the kernel will do when it sees
> this flag and thus prefer to focus on describing what the hardware does. So I
> dropped your last sentence. However the name of the flag still implies policy
> which I don't like.
>
> I also changed the 'may not honor' wording, I'm not sure if this is really the
> case or if the spec is open to interpretation.
>
> It would great for this wording to also apply to other CS components though I
> haven't investigated if these have a PU bit or something different.

Exactly - the definition needs to be broad enough to apply to other CS
components.  Mike what do you think would be appropriate for CTIs?

>
> Thanks,
>
> Andrew Murray
>
> >
> > Cheers
> > Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
