Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED9B019E553
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Apr 2020 16:02:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HSlj/zisKFyeEqYwFlHCk8ohRXrxemCSSEG6OCJJozM=; b=L1oWibZ18AVOIW
	WyRtR+wjKllWFdqNmr971IWjpHcV7sHGTb5ZmndgsDJLU/7FKmKV5V8eViOo9pry96I/KWyv8NBwX
	bBzgjChv9mZTBMwBdG/jt8E+8wXzwlSbF10sj3YSb7w5hWU+lR0Xp95vbiBNWXLMrGJu52Q7pjenT
	UNkZ3JCObDM526UONEUczIimYAw51djlTyc/iOjk10qYAvfnxYVeVsv8IrHnlsB1THtKwZOkbWwIV
	oIOJw3hyvyJ+anWxkbywAG/kRPLQlN5WJRAC/8KMhkD9088cm1hrxL9yWxlb2ECDqJpUiWGqsiNiG
	2v+RnlaHGmlldlHpFqNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKjNi-0007in-3Z; Sat, 04 Apr 2020 14:02:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKjNQ-0007c1-RZ; Sat, 04 Apr 2020 14:02:26 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5F69D206F5;
 Sat,  4 Apr 2020 14:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586008944;
 bh=EKRxVNbgw1zORqCuHwnitV+fHMklM3Un+Dg5wgAezPs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=e8khb7TjTILjFGn8wV0aZ+RVF9ptaRdcXTk2oeELPMjuPBY3BqgbJE9/f4+DGOvoo
 ht95KZchQttOLrn8twzy3TFZ0SjgL0hFt2M1iB93oKFw3JzcTE0AFo6bLRvwgHIrlG
 y6bAqC89cFguPBAQR/Entwqi5L3vtpBUiG7+CB4g=
Date: Sat, 4 Apr 2020 15:02:19 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v1 3/3] dt-bindings: iio: adc: rockchip-saradc: add
 description for px30
Message-ID: <20200404150219.0e66be93@archlinux>
In-Reply-To: <20200330181106.GA8102@bogus>
References: <20200313132926.10543-1-jbx6244@gmail.com>
 <20200313132926.10543-3-jbx6244@gmail.com>
 <20200330181106.GA8102@bogus>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_070224_950172_E83D5D99 
X-CRM114-Status: GOOD (  13.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, lars@metafoo.de, heiko@sntech.de,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, pmeerw@pmeerw.net,
 knaack.h@gmx.de, Johan Jonker <jbx6244@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 30 Mar 2020 12:11:06 -0600
Rob Herring <robh@kernel.org> wrote:

> On Fri, 13 Mar 2020 14:29:26 +0100, Johan Jonker wrote:
> > The description below is already in use for px30.dtsi,
> > but was somehow never added to a document, so add
> > "rockchip,px30-saradc", "rockchip,rk3399-saradc"
> > for saradc nodes on a px30 platform to rockchip-saradc.yaml.
> > 
> > Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> > ---
> >  Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml | 1 +
> >  1 file changed, 1 insertion(+)
> >   
> 
> Acked-by: Rob Herring <robh@kernel.org>

Applied.

Thanks,

Jonathan


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
