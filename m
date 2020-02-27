Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF941172B2D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 23:30:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QuyPNIvlUXxjOvDZi7u9olWauIcy7nsqum7ws2AZ52A=; b=GaAsaW/a0lxtzK
	CBWtms9WbSLHxIhkl+EVAs28KyF3PdHNkt581aYRMDxaOg1WG0i84hCDUhMCaD/XE+eXaCuekh1d3
	V11yOb67Kwal2aQrAmVSDlNI2xAJ2hKNcfIB5ESAedUTdvJLsQ8Rmj4WkfOoi2MA2g2h1yl79+YPh
	S1J3UuMXD2p1io9Z7k0jSvO2DpeeQlrn5PvCHaVPi29VlNtIiGbJVdHCnXVZQ93SRQh1Wibyy7AFH
	mqViJan7566Yo/UZolHIOdbfyBsy38qEh1aYGvOuvdqoWCIDtHkcZ5+wtwiCB2rE5WW4hRJBNWyDR
	qrNwyU6tO5gRgBz2aQ1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7RfE-00016I-4M; Thu, 27 Feb 2020 22:29:52 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Rf4-00015f-Jt
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 22:29:44 +0000
Received: by mail-pf1-x441.google.com with SMTP id j9so581201pfa.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 14:29:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=dAKQtQFMwvA4in1IKX12aA2LxpzkOZ3DeV5aYoLW1Dk=;
 b=a0nmU5d8Fqui67x7EDMrxyRLgET/G0iEKZQ3fHRK/3Dou0wE6XBiu9qf3bM08cfP6D
 /qzbSszn/RqpuBqcbVC38AaKcMIxx2t+aRQ9BuilhnT+bm4NDiyniMAVGrW5xNkH2lQ3
 v376HxpgeUt0aQI5qpIQU80drCyrzsf4PKMVY7JtmLHX2PfuOOkuzUbT0ODcIbO4ACFK
 r1D65ggKF/4q/Y77n5lN02m+1wW3RwkBkcjmYy7sSKjgDTWZMOQh41RY7Qt+eRoa1MPv
 f2ZBhfq6NThumXvbKk2/QKyT/YlxdBpgGA5Ms52RO1xNhHrbwdBMFxEuYjO6ZAkHkV/k
 35jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=dAKQtQFMwvA4in1IKX12aA2LxpzkOZ3DeV5aYoLW1Dk=;
 b=Sy5t1xrVkNjyepknwAklDH4r+tJov9csElUXPk7Y7YlC9QNccVR36hKpboWzKC8EIK
 QpybWrZO35lloDa7wDW2F7GkKE6/qZG5l4cDm5KAuUedBL3yep1f8T1aVaI5TC+jgPE8
 YqahNrB1Uc0O81sV5jKv099bhcgZHMsBWeQ+Jiw9JZlT31XsTQuVoeREUC+NVP31woaZ
 Fa+u/Zmli0sDpqD1XQ+eEAD8fDwmQ5610JzpvwqRiLCjcnUXRkPfIG0EIXk9yaz5f03v
 bFU7lRQMm1/83K169RRpLgozLgOlWgnIwzmckcUyPAC/0/W43wJfIWf70SZPbpHQn5P5
 fZLQ==
X-Gm-Message-State: APjAAAWJPlMuHmtevPm6F3tFIY3i4ypHj/8RTqcz/oqcvAE17u89UEuT
 kSvRgbUUiNFmvL2QVcyw+Vw=
X-Google-Smtp-Source: APXvYqwCjo4NWg/n1zmJDAcIKJ2UE6VbP7KCZK4B2tzXfKC/iHPldab23u/RzAE40bqfKpBKWNJKFQ==
X-Received: by 2002:a63:2c85:: with SMTP id s127mr1480287pgs.138.1582842580284; 
 Thu, 27 Feb 2020 14:29:40 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91 ([2620:10d:c090:500::4:d8f5])
 by smtp.gmail.com with ESMTPSA id 136sm7794224pgh.26.2020.02.27.14.29.38
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 27 Feb 2020 14:29:39 -0800 (PST)
Date: Thu, 27 Feb 2020 14:29:32 -0800
From: Tao Ren <rentao.bupt@gmail.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Subject: Re: [PATCH v4 2/7] usb: gadget: aspeed: read vhub properties from
 device tree
Message-ID: <20200227222931.GA29420@taoren-ubuntu-R90MNF91>
References: <20200226230346.672-1-rentao.bupt@gmail.com>
 <20200226230346.672-3-rentao.bupt@gmail.com>
 <b9b8977ae185ca944e703721d93b8d8464d1475f.camel@kernel.crashing.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b9b8977ae185ca944e703721d93b8d8464d1475f.camel@kernel.crashing.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_142942_662113_89988810 
X-CRM114-Status: GOOD (  18.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Felipe Balbi <balbi@kernel.org>,
 linux-aspeed@lists.ozlabs.org, devicetree@vger.kernel.org,
 Andrew Jeffery <andrew@aj.id.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, openbmc@lists.ozlabs.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 Stephen Boyd <swboyd@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 Joel Stanley <joel@jms.id.au>, taoren@fb.com,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Colin Ian King <colin.king@canonical.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ben,

On Thu, Feb 27, 2020 at 03:09:01PM +1100, Benjamin Herrenschmidt wrote:
> On Wed, 2020-02-26 at 15:03 -0800, rentao.bupt@gmail.com wrote:
> > From: Tao Ren <rentao.bupt@gmail.com>
> > 
> > The patch introduces 2 DT properties ("aspeed,vhub-downstream-ports" and
> > "aspeed,vhub-generic-endpoints") which replaces hardcoded port/endpoint
> > number. It is to make it more convenient to add support for newer vhub
> > revisions with different number of ports and endpoints.
> > 
> > Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
> > Reviewed-by: Joel Stanley <joel@jms.id.au>
> 
> With one minor nit that can be addressed in a subsequent patch (see
> below)
> 
> Acked-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>

Thanks for the help on the patch series.

> > -		if (istat & VHUB_IRQ_DEVICE3)
> > -			ast_vhub_dev_irq(&vhub->ports[2].dev);
> > -		if (istat & VHUB_IRQ_DEVICE4)
> > -			ast_vhub_dev_irq(&vhub->ports[3].dev);
> > -		if (istat & VHUB_IRQ_DEVICE5)
> > -			ast_vhub_dev_irq(&vhub->ports[4].dev);
> > +	for (i = 0; i < vhub->max_ports; i++) {
> > +		u32 dev_mask = VHUB_IRQ_DEVICE1 << i;
> > +
> > +		if (istat & dev_mask)
> > +			ast_vhub_dev_irq(&vhub->ports[i].dev);
> >  	}
> 
> The 2400 and 2500 have very slow cores and every cycle counts in that
> interrupt handler from my experience. I would sugggest you generate a
> "mask" of all the device interrupts for enabled ports in struct vhub
> and AND istat with that mask before going through the loop. Either that
> or use find_next_zero_bit...
> 
> I wouldn't gate merging this patch on this, it can be a subsequent
> refinement.

Got it. I will take care of the improvement in a follow-up patch.

Cheers,

Tao

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
