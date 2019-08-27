Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9057D9DD05
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 07:10:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j/meYter8aIs8emkf9t5BDoa4swk2euRjuV6XFwu4GU=; b=Od+NV94XJKRMCi
	+9O7LhiiGJUiVvzwX9dS+vIGncIKJsEOx9iT6D5xEwod0dD7PM7VoNsSkBuzJOGFcznRn9IuOiMwm
	uHCaycVoneKKPW45Wjd7f4K8NvfflanBhAK1Esu0tD2DffL99DEVzZh25hTJO7tmh8w9LDTZuIgw0
	5FGfo0T3R0icy2peMxXAlk6pYLKB8xpv8R+qZ1exZ17tQdAd6Ai3X/7Zf6/63/TwKaErhMdv/yBHh
	MfpGwMCNkvuChAKbFFAJIuMoZmPnRoozwrFn4lE4Ni0kXmsDk1SR2jxyzWmFZbKlZCMbfD4GW8Nmi
	yYClL6Ncf6fkLzsyF3eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Tkl-0000Jp-RA; Tue, 27 Aug 2019 05:10:48 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2TkA-0000JV-Vp
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 05:10:12 +0000
Received: by mail-pf1-x443.google.com with SMTP id o70so13307551pfg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 22:10:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=kue46rIH4JbVHYlsaa+MeXhi8APX3bNmyCw0oXBiDLk=;
 b=KuMqge6vlDfh8jKRoUD1gXms5XSFdS1FlnpSUUgkV3Anmlc5b2oHqJbvmp9PRK9HwC
 cXoaHeEt91RFR/N/ICoDIUULdkm9h3zMfzEZUg03XCSuWbDcmXj6mlOFtvixsfmRpljM
 +f80ERIcyeyyyhaKaWGX+70wWZTaNrqFIFiQZwBBU31lphbOAMIXNQAfQkydWDf4u7VD
 ZUfkl/7pxtzhTER9JrlBceTvZGBiuHFxDYQPj3hNCwxhDaiTEVkDTAMBqqgZ67LE/pLm
 s28iAqXtdlfxdlO3SY/yKy70m/oc1Qbb8nWkxpueiPJk2i8QRIInyzbhB57hxPpRiAFI
 hgEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=kue46rIH4JbVHYlsaa+MeXhi8APX3bNmyCw0oXBiDLk=;
 b=OcMkna7wraA1hMuw1RXtuGPb62KfqXIMk/k1eHwzwu48Pbb87RMflswCtozwRgbPrh
 xfMqkrCKFLmge1rt0PJp9ZAtC00cD60XDYTeY0ydoACtHKxl4ahEinos8/Wn6Ude2kJK
 2JZ7AEtWfrrHQlbxIATX/R/I3rSSRd/hWijOSiS6C3OFdKsFMiVQ6EF2FLxshRkD1+wg
 dSIcPZnZaCAr5hv063XAL47UE9NI+FaODemefTCQKC6wmK9SbGYXd6u2t1zljTVs4C7E
 d6Ze3IfhGUZ7ILWj821oLnCGfiwV+T15kg2nMIJcJ5tH1ne3ybZqeaVis6oNwscBI9Lr
 LVeA==
X-Gm-Message-State: APjAAAW1ePjPGZWeDC8newLUPl3C12ftSMDt20M1kMAJ7F9eV+t+fafB
 p+Z/Wms6eYJcjCSFitfWvdnPww==
X-Google-Smtp-Source: APXvYqwcaGrGmBqQbq+ZXIx4wrncCySdMwJsO+BZOga+pwX1bi4P2t3U7PQxLtkRvcP8a/wee3hCMQ==
X-Received: by 2002:a17:90a:250c:: with SMTP id
 j12mr23377818pje.96.1566882609922; 
 Mon, 26 Aug 2019 22:10:09 -0700 (PDT)
Received: from builder (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id y8sm21644391pfr.140.2019.08.26.22.10.08
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 26 Aug 2019 22:10:09 -0700 (PDT)
Date: Mon, 26 Aug 2019 22:10:07 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Suman Anna <s-anna@ti.com>
Subject: Re: [PATCH] rpmsg: virtio_rpmsg_bus: replace "%p" with "%pK"
Message-ID: <20190827051007.GK1263@builder>
References: <20181024011909.21674-1-s-anna@ti.com>
 <40831f80-1e36-66ca-b8e5-684d46ba167e@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <40831f80-1e36-66ca-b8e5-684d46ba167e@ti.com>
User-Agent: Mutt/1.10.0 (2018-05-17)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_221011_057147_BE6C6BC2 
X-CRM114-Status: GOOD (  18.16  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Fri 09 Aug 13:25 PDT 2019, Suman Anna wrote:

> Hi Bjorn,
> 

Hi Suman

> On 10/23/18 8:19 PM, Suman Anna wrote:
> > The virtio_rpmsg_bus driver uses the "%p" format-specifier for
> > printing the vring buffer address. This prints only a hashed
> > pointer even for previliged users. Use "%pK" instead so that
> > the address can be printed during debug using kptr_restrict
> > sysctl.
> 
> Seems to have been lost among the patches, can you pick up this trivial
> patch for 5.4? Should apply cleanly on the latest HEAD as well.
> 

I share Andrew's question regarding what benefit you have from knowing
this value. Should we not just remove the va from the print? Or do you
actually have a use case for it?

Regards,
Bjorn

> regards
> Suman
> 
> > 
> > Signed-off-by: Suman Anna <s-anna@ti.com>
> > ---
> >  drivers/rpmsg/virtio_rpmsg_bus.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/rpmsg/virtio_rpmsg_bus.c b/drivers/rpmsg/virtio_rpmsg_bus.c
> > index f29dee731026..1345f373a1a0 100644
> > --- a/drivers/rpmsg/virtio_rpmsg_bus.c
> > +++ b/drivers/rpmsg/virtio_rpmsg_bus.c
> > @@ -950,7 +950,7 @@ static int rpmsg_probe(struct virtio_device *vdev)
> >  		goto vqs_del;
> >  	}
> >  
> > -	dev_dbg(&vdev->dev, "buffers: va %p, dma %pad\n",
> > +	dev_dbg(&vdev->dev, "buffers: va %pK, dma %pad\n",
> >  		bufs_va, &vrp->bufs_dma);
> >  
> >  	/* half of the buffers is dedicated for RX */
> > 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
