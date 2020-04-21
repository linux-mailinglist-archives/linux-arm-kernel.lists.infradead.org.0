Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB1511B2D29
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 18:52:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BmaMY0mF05I/NJUIk7JdMgK4VIpDB/h1X5mR95fTOqQ=; b=CAzI2g2pMOSe1b
	LZKoX0ZQKmcET4lSpBDZKmLkTXe4bNV0vQYtS7WX3qxSAUWFnPeVfcPmG2RHFCLSTk8elOKGetyeW
	tXzwkSjr5yPMNGPv56CYqdEY5gzGqdR9oenQcA7XmqnpzM8m54g/1Jt05X7UZEK+sPq7CxDoR85Am
	xptY3uUCx9xLR++gCLSoCRzcoTG2+Zv84IwJINw3lEM0QuoFhkhpH4ghAduE+PN2YD94AuKpY7pci
	EdLOTZpnIn2QlfhIgtu1XA2aWPA/IEB9nlbgfyOILb5nr37fMfME41OEL66YUB3btgMvn+WxM8O3M
	V8nIY7pecBgapcJGhd6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQw8N-0002Zx-Ix; Tue, 21 Apr 2020 16:52:31 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQw88-0002YW-04
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 16:52:17 +0000
Received: by mail-io1-xd41.google.com with SMTP id z2so11375513iol.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 09:52:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dlOb0J7u43lP1vjBfG9ZcRxUmvLKf3oV1hkoW2i8cGM=;
 b=GrZhM+tCKzL1/Y+RU646etnWXZpICHRv95JyZbGoFtaynACb3kja9TbFXHwyfJ6clF
 QK4TE5ORpEjlYwAaNMtCTaQ0Fr37EW91RCdPtfUjF7YZg6IS4r0yiYPxFv89oO1YsUEs
 sfJQC2NVx1nMhCeABHLCYCQvnSG3v3zBKq2fDASijSPyWNRl4+se6mFV9bxORXgt3Dq4
 lKa/m+X3XK47LUGuWzU7d+THc/bou5LPZ1n+5/fUZ/J+hzUQbaW6iaw5HYBHb3wr3lnk
 bT+A/luGfcKzEKJA7Qqa8CPqBhFKmdtlDqcKlsSjrAnIu8srH0lXgRZ1T7RbFBjAw6fO
 eGqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dlOb0J7u43lP1vjBfG9ZcRxUmvLKf3oV1hkoW2i8cGM=;
 b=VjiXrBfe75DE8jIdlsIZ6nkKHMFowfMhHiI1dccLTCHwUvgkaeAWxqsSTCmNALDLVq
 x6wI7QAcwuPoCfGg71/+NQfu2m+SFRZCX5C7wl3IGhwd/t0yAEJHqgFE/iGYMEo+HoiC
 +n5F2DXJMiHi/6qI1dinr1lxLrXHkwdtfHbCbKN6BdMWRsyW4C6h6WXH7pI5QNaNb5FI
 EU8L8Rl45q3xLeCPPu6aMnFc2FCbJUffQh3fJrAS4l7py75hgN28ef00rwncpWsy74nE
 RUdetn33RQbq8CYS2RaRH+0Qv0QRNqSPTO7LDjURjKWpFHGZq1y1YPmZjdw5B2Zk1wxu
 9Euw==
X-Gm-Message-State: AGi0PuYdhN7V006UIvPT1wSBFEXFVNsFUzyLdounxP0mjjEKfJ5kbOHg
 AzL1lwL06R7Ja6NSKZbyMFSoQjZh6gM8CQ/frFh3Lg==
X-Google-Smtp-Source: APiQypI+utw7ltzeZh5aJ7/aORHVDbVXhkpIjaJ0I86IY9cM5PP2nsrE+DOOUQBRofXFDA/oNhPIXVRxmNA50ocvX5Q=
X-Received: by 2002:a02:90cd:: with SMTP id c13mr20914233jag.83.1587487933216; 
 Tue, 21 Apr 2020 09:52:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200415201420.15958-1-mike.leach@linaro.org>
 <20200417021113.GB5426@leoy-ThinkPad-X240s>
In-Reply-To: <20200417021113.GB5426@leoy-ThinkPad-X240s>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Tue, 21 Apr 2020 10:52:02 -0600
Message-ID: <CANLsYkzx_DeXcJ_dBju_OWWRiREAqzG6opeQAuXf5gTsdgZtQQ@mail.gmail.com>
Subject: Re: [PATCH] perf: cs-etm: Update to build with latest opencsd version.
To: Leo Yan <leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_095216_071108_F7408DFD 
X-CRM114-Status: GOOD (  22.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Coresight ML <coresight@lists.linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, Ingo Molnar <mingo@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 16 Apr 2020 at 20:11, Leo Yan <leo.yan@linaro.org> wrote:
>
> Hi Mike,
>
> On Wed, Apr 15, 2020 at 09:14:20PM +0100, Mike Leach wrote:
> > OpenCSD version v0.14.0 adds in a new output element. This is represented
> > by a new value in the generic element type enum, which must be added to
> > the handling code in perf cs-etm-decoder to prevent build errors due to
> > build options on the perf project.
> >
> > This element is not currently used by the perf decoder.
> >
> > Tested on Linux 5.7-rc1.
> >
> > Signed-off-by: Mike Leach <mike.leach@linaro.org>
> > ---
> >  tools/perf/util/cs-etm-decoder/cs-etm-decoder.c | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c b/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c
> > index cd92a99eb89d..da4737cbc2ab 100644
> > --- a/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c
> > +++ b/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c
> > @@ -564,6 +564,10 @@ static ocsd_datapath_resp_t cs_etm_decoder__gen_trace_elem_printer(
> >               resp = cs_etm_decoder__set_tid(etmq, packet_queue,
> >                                              elem, trace_chan_id);
> >               break;
> > +     /* Unused packet types */
> > +#if OCSD_VER_NUM >= 0x0E00
> > +     case OCSD_GEN_TRC_ELEM_I_RANGE_NOPATH:
> > +#endif
>
> I don't think use macros to distinguish OpenCSD version number is a
> good idea, this will get more and more code to checking version number
> if later have more these kinds improvement and finally it's hard to
> maintain.

I agree.

>
> Sugget just simply add the new case for
> OCSD_GEN_TRC_ELEM_I_RANGE_NOPATH, considering if user uses an old version
> OpenCSD and doesn't output this new element, the new added case doesn't
> introduce issue for old OpenCSD lib.
>
> Futhermore, suggest to change the code in
> tools/build/feature/test-libopencsd.c, so can reflect the kernel 5.7
> to require OpenCSD v0.14.0 or later version when build perf.

As Leo pointed out, I think we should just continue dealing with new
versions of the library in test-libopencsd.c.

>
> Thanks,
> Leo
>
> >       case OCSD_GEN_TRC_ELEM_ADDR_NACC:
> >       case OCSD_GEN_TRC_ELEM_CYCLE_COUNT:
> >       case OCSD_GEN_TRC_ELEM_ADDR_UNKNOWN:
> > --
> > 2.17.1
> >
> > _______________________________________________
> > CoreSight mailing list
> > CoreSight@lists.linaro.org
> > https://lists.linaro.org/mailman/listinfo/coresight

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
