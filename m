Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1212219E586
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Apr 2020 16:21:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2z3rq1E+9sWxNEMkhAu0A/JypTG+IEf5nxtX3IuIcLU=; b=rkvHJqOSIIP6mu
	E/XRaiMNKN/pu4ceOFuaPdPWQ6sYIWY7HkqRVWY4TL3V+PkcSns7WNsaCLqtrlmPkVEdtIad80W4j
	OXN28LARQhkEnwfNXEc0Kj9lFA6uYiiQT1P83uYOAvsuSJ89SSZ+pM5NZfdhUJRObQi/a1Cc6mMFJ
	JbiRydy/F/nP7ClsYNRko2mRhhY/jkw7Kd0MFYpS09vjHg5yEWYSyMbCphSUUYeUh4NhgNqnegOi0
	E0HFypj7EcoKeC3ThyGoibAAHczdREttCndxf4ANvVDNw6ZnfZLzZd/h3pgNN8ONBHbg66GQEPggx
	Zt5a3NCDdsEKscyq+rvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKjgA-0003e3-Rs; Sat, 04 Apr 2020 14:21:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKjg2-0003dh-Ni
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Apr 2020 14:21:40 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D4375206C3;
 Sat,  4 Apr 2020 14:21:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586010098;
 bh=7t82RrM++T30E89ZOhG5gQGEdfaKn84+qzeujIakTj8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=QI1PMeZ4PbbeA6Wp211RM+j9uwqkqCiW+K62B7GHmcRCR47xCrLEsT7epwk6ihJtG
 MFQ7zvLrXbo2RTUlu+V1GeOasysTob31U1wjQEev5A76znjVYIoPRkplJU1+S5/ICE
 j+Z7nCNof353uV40QkmFf7Ml7xGnWS/7PKbb+mKQ=
Date: Sat, 4 Apr 2020 15:21:32 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: iio: adc: stm32-adc: fix id relative path
Message-ID: <20200404152132.62382a66@archlinux>
In-Reply-To: <20200330232115.GA17380@bogus>
References: <1584641907-8228-1-git-send-email-fabrice.gasnier@st.com>
 <20200330232115.GA17380@bogus>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_072138_792428_50F1F5B3 
X-CRM114-Status: GOOD (  11.25  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lars@metafoo.de,
 olivier.moysan@st.com, alexandre.torgue@st.com, linux-iio@vger.kernel.org,
 pmeerw@pmeerw.net, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 mcoquelin.stm32@gmail.com, knaack.h@gmx.de,
 Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 30 Mar 2020 17:21:15 -0600
Rob Herring <robh@kernel.org> wrote:

> On Thu, 19 Mar 2020 19:18:27 +0100, Fabrice Gasnier wrote:
> > Fix id relative path that shouldn't contain 'bindings', as pointed out
> > when submitting st,stm32-dac bindings conversion to json-schema [1].
> > [1] https://patchwork.ozlabs.org/patch/1257568/
> > 
> > Fixes: a8cf1723c4b7 ("dt-bindings: iio: adc: stm32-adc: convert bindings to json-schema")
> > 
> > Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
> > ---
> >  Documentation/devicetree/bindings/iio/adc/st,stm32-adc.yaml | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >   
> 
> Reviewed-by: Rob Herring <robh@kernel.org>

Applied to the fixes-togreg branch of iio.git
I will hopefully send a pull request for this around the time
the merge window closes.

Thanks,

Jonathan.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
