Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B4B59F5D1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 00:07:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1DuroW1AVXPYZ38BX2jz93/mIQJQkedds65L6i93b8c=; b=nvGEGEa2npsrAP
	aP23RfJ1arS4B7EkUNXL6jd+DTfg8x4IEIjwX4lE+mao2yZ7QTiKhZCKapXAjyVKXdkqFSCklSiir
	GRMKwEWWRY0gCh9nrn3Qiaky3fxPtPS8CODpClrQNEd+Uf+W182kFh6NiftFDNhAIDoyTuqn3cLNH
	Eu9Lrw20oO6h5JUd6hZMm2soJJZmfQA8V918r11Uw/DvKYMSHUkGMmTgX+0akZdb5t+klTWSD1t7O
	WKQMpABLxICGEBthXNCbwdPqMOkVhwjvncQwk+QJ+p+isIxu8+Z0s84SuRJTKHvirYv2gVh6HjNpH
	M3JdwmfmF4cqg3za2eYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2jcg-0000xS-8M; Tue, 27 Aug 2019 22:07:30 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2jcQ-0000x5-UE
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 22:07:16 +0000
Received: by mail-pf1-x443.google.com with SMTP id q139so257365pfc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 15:07:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=JRsLR75QBbtFPEoo6FTBbqVJvymrGpw03cigQGOg42c=;
 b=VcjhuM4zuLxMnMNqOpPhcjufeybyAO7mQbdE9srbbULJC5WSlzLbtvM4zmb7bkPF+q
 vU2M/P4QBSCXXIHzSgdvhP3QQGSFxW9d/5Do01DxO1fUAfWEEW6ix0atxs9YoF1Fw+Kj
 dW7KPa2RKiujBC7jO+p7FSNpr1kju43tH8Fu1BnWFWolGlKnc4mByPv114s5cr6h7cQJ
 JIa7HbuqRhwlQ3hsJT8aetDFFmh08uxImpzLrlsGJDjOGrAd4mWuTjsQ7ocJg8iH30QF
 TQtTDB5GDv6jcPpEJAFtSa2jEGr1n+K2QOOeVEROSqJ16ziIBKc7Bix1CDIQY92HAcRY
 DTIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=JRsLR75QBbtFPEoo6FTBbqVJvymrGpw03cigQGOg42c=;
 b=i5c7s8YpoKb8zbIL41aEYdG/yfqSUSIwdz9QHoelgqpn6OC32neFc6l0f/DIu1L8cA
 bafaHIzsm6qdCNJSFqkGB4j173ddWE6okpZydUmQ7IIwZ1AeSb4Na7GC5Ow36n67lZGp
 GnG4wcvHMvkxdrRKgyL6eXmHL39SUAgnMUe1DM/NeRXvfKoNKChEeKlbT/C7mnUdRbzJ
 vms7YNZxgUdwzY8Xt3bWKuIQGuHS4eP0CnJ3YtHid1YoL33kz/v6AZD5lrrutVrWDyi8
 yqDrdpsI3wtlEO511qxWrKz1KcoDak8YNhyHehBG4lSdk71jNN5wZeottAREn1WWNMn7
 +Gzg==
X-Gm-Message-State: APjAAAWSgqwuqDSR/YNjmQqNA6FJD5TH64cI2n/Zyy48tQSk1XFU8RXX
 +f51Z2u18kbyCx8BeHHmrpTYR/rT+k4=
X-Google-Smtp-Source: APXvYqw9HeVUwZAckWW6qXBs8bJo1tCP6q4Gsyeg8AyC5HTnjGnTgFf+uML+YEKWxrxlMACvtMJOIg==
X-Received: by 2002:a63:7205:: with SMTP id n5mr559549pgc.443.1566943633743;
 Tue, 27 Aug 2019 15:07:13 -0700 (PDT)
Received: from minitux (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id r1sm315183pgv.70.2019.08.27.15.07.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 15:07:13 -0700 (PDT)
Date: Tue, 27 Aug 2019 15:07:11 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Suman Anna <s-anna@ti.com>
Subject: Re: [PATCH] rpmsg: virtio_rpmsg_bus: replace "%p" with "%pK"
Message-ID: <20190827220711.GK6167@minitux>
References: <20181024011909.21674-1-s-anna@ti.com>
 <40831f80-1e36-66ca-b8e5-684d46ba167e@ti.com>
 <20190827051007.GK1263@builder>
 <8d36d695-dd66-c21f-f49e-f6dc3dbdfc5a@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8d36d695-dd66-c21f-f49e-f6dc3dbdfc5a@ti.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_150715_006814_A669EDFC 
X-CRM114-Status: GOOD (  21.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

On Tue 27 Aug 13:25 PDT 2019, Suman Anna wrote:

> Hi Bjorn,
> 
> On 8/27/19 12:10 AM, Bjorn Andersson wrote:
> > On Fri 09 Aug 13:25 PDT 2019, Suman Anna wrote:
> > 
> >> Hi Bjorn,
> >>
> > 
> > Hi Suman
> > 
> >> On 10/23/18 8:19 PM, Suman Anna wrote:
> >>> The virtio_rpmsg_bus driver uses the "%p" format-specifier for
> >>> printing the vring buffer address. This prints only a hashed
> >>> pointer even for previliged users. Use "%pK" instead so that
> >>> the address can be printed during debug using kptr_restrict
> >>> sysctl.
> >>
> >> Seems to have been lost among the patches, can you pick up this trivial
> >> patch for 5.4? Should apply cleanly on the latest HEAD as well.
> >>
> > 
> > I share Andrew's question regarding what benefit you have from knowing
> > this value. Should we not just remove the va from the print? Or do you
> > actually have a use case for it?.
> 
> I mainly use it during debug when comparing against kernel_page_tables
> and vmallocinfo. The pools that we use are not always guaranteed to be
> from linear memory, and behavior changes when using with CMA or DMA pools.
> 

Thanks Suman. It seems to me that there's room for improvement to aid
this kind of debugging. But your usecase seems reasonable, so I'm
merging the patch.

> Note that usage of %pK does not leak the addresses automatically, but
> atleast enables me to get the values when needed. The changes also bring
> the usage in rpmsg core in sync with the remoteproc core.
> 

Sounds like shouldn't have merged them in remoteproc then ;P

Thanks,
Bjorn

> regards
> Suman
> 
> > 
> > Regards,
> > Bjorn
> > 
> >> regards
> >> Suman
> >>
> >>>
> >>> Signed-off-by: Suman Anna <s-anna@ti.com>
> >>> ---
> >>>  drivers/rpmsg/virtio_rpmsg_bus.c | 2 +-
> >>>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>>
> >>> diff --git a/drivers/rpmsg/virtio_rpmsg_bus.c b/drivers/rpmsg/virtio_rpmsg_bus.c
> >>> index f29dee731026..1345f373a1a0 100644
> >>> --- a/drivers/rpmsg/virtio_rpmsg_bus.c
> >>> +++ b/drivers/rpmsg/virtio_rpmsg_bus.c
> >>> @@ -950,7 +950,7 @@ static int rpmsg_probe(struct virtio_device *vdev)
> >>>  		goto vqs_del;
> >>>  	}
> >>>  
> >>> -	dev_dbg(&vdev->dev, "buffers: va %p, dma %pad\n",
> >>> +	dev_dbg(&vdev->dev, "buffers: va %pK, dma %pad\n",
> >>>  		bufs_va, &vrp->bufs_dma);
> >>>  
> >>>  	/* half of the buffers is dedicated for RX */
> >>>
> >>
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
