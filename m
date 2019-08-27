Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DEA29F608
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 00:23:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NGe8tNq2QipyuV77BH5bKXxNKlvU/FIFFvFUNIxtsr8=; b=MW4C3kC6HNfBPg
	MWTNXORY4Y52i23MM+k0fjdWB2POjCyMv3uTNM2FkvRMCcCgW3DDRN6wmoQOg6iBWYkWJUiqTLkPr
	ZMcmRmi46YFcR6PKT48vNTrZ1o6LmKQx2GoYfJE/77EznXeViuL+bTBXBHhiVrn5Gaw2lOn67zGPW
	OS5ENBo1ZwAM0U8Jr3uNsQElw01lwed8OQvLAbWI03Up3iSwQqwjYj5K0i2VK6xZne3+JIEsnju4D
	v3/ADpIqBO6qjTI9fa9pBsdgrFfgSH6cODAotETGR7MrE5RCBkfLIfvQr7AtonEK+UEJVLJiiJpF0
	lu3k3ZVODnvuetf3GH+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2jsD-0007pd-Dy; Tue, 27 Aug 2019 22:23:33 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2jrn-0007ip-DD
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 22:23:09 +0000
Received: by mail-pf1-x441.google.com with SMTP id 196so293380pfz.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 15:23:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Yf7KPUEZygXXJwexFq8sVNy80of36QU2BvfS1YFc1uQ=;
 b=DxFQR+oulqH7TZnTFeO0AXmXGWRw8zDTd9MWpugL+0n0Aib5ZMDh0gKtEc64fyTaiU
 FOLFQM2CYjumpVL2LFM5EEYzq4YUwR6QM+ekFlz7+xb+HRUbv/RyO2SJnKXHK3b0s/Yd
 IMZgA4l2y+ygNdcJ2lwr9Nf98wFppYDeZP7g7/uvRjzpBhkCXktHh6rJ0Q5sObuQCLxi
 +dOE9bCEq8kSCE3qyIGnytkRwVgV9bV4LTVBmEjwGchqt6zzrZB7w8HYm+k4cH8NwrPa
 Up8sfath9FNbmrmDKJ03kPgTxUQYfR7SHwXZf27HzkMOy7vJNst6hgvquS/xoNnBS0OE
 QEXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Yf7KPUEZygXXJwexFq8sVNy80of36QU2BvfS1YFc1uQ=;
 b=KnlrU9P2VfUUojP0k0q0NxRl3mSUSfGa4/AFIJEB63AJwQQH9w3v2ihnf+6l9sAwEm
 nzPKCtGR1hj0QSH7W7srSXQb/2jyjYdVmmShXclqyU5Q75St2QytN7KeWvpvAsL+zRb8
 BMAdXXVgcSZO++G6egOzI1a2lVRN9YmWcCC74wpkfR4bMXChEhFzdgy1We0C13oL4Lyl
 Lx6UBdgijs0jIruAn8QuZq8+BGIFdSWI9+MK2P2VevkSTjz3DPY3gcViHCzJo5X1sSx3
 NjgTIZEAhnqAGWMsumDHzvH/RgxE4GJ7QL7t4+scDMEaDcgd2KUC97JCvbpz9o1rGrp1
 BJiw==
X-Gm-Message-State: APjAAAVb08D+cuU8YXXVMLa4vbOUQZX1Aehu25V03J/Q3IOb59fWa8sL
 pGpTH4w3tq+/RLseSsXwqlRgog==
X-Google-Smtp-Source: APXvYqwT2hpO40tTWBillytawrpLvYzOYf+8qLwBYvEHB+YRDUUxG6ERLaAlK0jg+ytA3DztYQumOA==
X-Received: by 2002:a17:90a:2047:: with SMTP id
 n65mr1050342pjc.5.1566944586260; 
 Tue, 27 Aug 2019 15:23:06 -0700 (PDT)
Received: from minitux (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id z25sm313775pfa.91.2019.08.27.15.23.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 15:23:05 -0700 (PDT)
Date: Tue, 27 Aug 2019 15:23:03 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Suman Anna <s-anna@ti.com>
Subject: Re: [PATCH] rpmsg: virtio_rpmsg_bus: replace "%p" with "%pK"
Message-ID: <20190827222303.GL6167@minitux>
References: <20181024011909.21674-1-s-anna@ti.com>
 <40831f80-1e36-66ca-b8e5-684d46ba167e@ti.com>
 <20190827051007.GK1263@builder>
 <8d36d695-dd66-c21f-f49e-f6dc3dbdfc5a@ti.com>
 <20190827220711.GK6167@minitux>
 <619b06b0-c3cc-e36f-c3e5-d13e98520c9c@ti.com>
 <9c5f95a0-c95b-bf68-e78f-6e3d4d837b1e@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9c5f95a0-c95b-bf68-e78f-6e3d4d837b1e@ti.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_152307_836266_97ACEEF2 
X-CRM114-Status: GOOD (  22.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Loic Pallardy <loic.pallardy@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue 27 Aug 15:17 PDT 2019, Suman Anna wrote:

> On 8/27/19 5:15 PM, Suman Anna wrote:
> > On 8/27/19 5:07 PM, Bjorn Andersson wrote:
> >> On Tue 27 Aug 13:25 PDT 2019, Suman Anna wrote:
> >>
> >>> Hi Bjorn,
> >>>
> >>> On 8/27/19 12:10 AM, Bjorn Andersson wrote:
> >>>> On Fri 09 Aug 13:25 PDT 2019, Suman Anna wrote:
> >>>>
> >>>>> Hi Bjorn,
> >>>>>
> >>>>
> >>>> Hi Suman
> >>>>
> >>>>> On 10/23/18 8:19 PM, Suman Anna wrote:
> >>>>>> The virtio_rpmsg_bus driver uses the "%p" format-specifier for
> >>>>>> printing the vring buffer address. This prints only a hashed
> >>>>>> pointer even for previliged users. Use "%pK" instead so that
> >>>>>> the address can be printed during debug using kptr_restrict
> >>>>>> sysctl.
> >>>>>
> >>>>> Seems to have been lost among the patches, can you pick up this trivial
> >>>>> patch for 5.4? Should apply cleanly on the latest HEAD as well.
> >>>>>
> >>>>
> >>>> I share Andrew's question regarding what benefit you have from knowing
> >>>> this value. Should we not just remove the va from the print? Or do you
> >>>> actually have a use case for it?.
> >>>
> >>> I mainly use it during debug when comparing against kernel_page_tables
> >>> and vmallocinfo. The pools that we use are not always guaranteed to be
> >>> from linear memory, and behavior changes when using with CMA or DMA pools.
> >>>
> >>
> >> Thanks Suman. It seems to me that there's room for improvement to aid
> >> this kind of debugging. But your usecase seems reasonable, so I'm
> >> merging the patch.
> > 
> > Thanks Bjorn.
> 
> Btw, looks like you applied the patch against rproc-next instead of
> rpmsg-next.
> 

Thanks for noticing so quick; I moved the change to the correct
branch.

Regards,
Bjorn

> regards
> Suman
> 
> > 
> >>
> >>> Note that usage of %pK does not leak the addresses automatically, but
> >>> atleast enables me to get the values when needed. The changes also bring
> >>> the usage in rpmsg core in sync with the remoteproc core.
> >>>
> >>
> >> Sounds like shouldn't have merged them in remoteproc then ;P
> > 
> > Slightly different reasoning looking at the commit, it was probably when
> > %p was leaking the addresses.
> > 
> > regards
> > Suman
> > 
> >>
> >> Thanks,
> >> Bjorn
> >>
> >>> regards
> >>> Suman
> >>>
> >>>>
> >>>> Regards,
> >>>> Bjorn
> >>>>
> >>>>> regards
> >>>>> Suman
> >>>>>
> >>>>>>
> >>>>>> Signed-off-by: Suman Anna <s-anna@ti.com>
> >>>>>> ---
> >>>>>>  drivers/rpmsg/virtio_rpmsg_bus.c | 2 +-
> >>>>>>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>>>>>
> >>>>>> diff --git a/drivers/rpmsg/virtio_rpmsg_bus.c b/drivers/rpmsg/virtio_rpmsg_bus.c
> >>>>>> index f29dee731026..1345f373a1a0 100644
> >>>>>> --- a/drivers/rpmsg/virtio_rpmsg_bus.c
> >>>>>> +++ b/drivers/rpmsg/virtio_rpmsg_bus.c
> >>>>>> @@ -950,7 +950,7 @@ static int rpmsg_probe(struct virtio_device *vdev)
> >>>>>>  		goto vqs_del;
> >>>>>>  	}
> >>>>>>  
> >>>>>> -	dev_dbg(&vdev->dev, "buffers: va %p, dma %pad\n",
> >>>>>> +	dev_dbg(&vdev->dev, "buffers: va %pK, dma %pad\n",
> >>>>>>  		bufs_va, &vrp->bufs_dma);
> >>>>>>  
> >>>>>>  	/* half of the buffers is dedicated for RX */
> >>>>>>
> >>>>>
> >>>
> > 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
