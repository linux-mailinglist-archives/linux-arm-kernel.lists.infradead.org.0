Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 899A1B5723
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 22:47:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ytRimmOgMkxE3VniblTEOaLwX3lAggmIzpDOGOh68ig=; b=sJxyWPugemxOu2
	Ycgx9mjCCEkOBqDgisGrFWbVSysPJdl+IjnEEu7WTEz7WmF2DnqNlAHu+O0ZpAhdxh1ZobA0d56E3
	D6vC1ukV5ydfkV/4brdlPRGG7GFZpeT38a6GlXxgw0PWjTq6wC2lp7Lh92pBGmsma3fR0Rtyhskph
	xMQifwlHyp6oVdXDYkYXAdbl8aRyzpBeDia1VNkbmgk/WcDMcEsYLE4OXxrNilMzeBWdSNeMWfWpr
	ciggfjXvyS3CE54qHEp6iakXN14Jhq6TaamL1k8yf+lv/9ZdCgEnsdZlSoTSWaMi3ZGPQ42Z1B+GH
	PiTik768gf5GRGiAEKLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAKO5-0000NK-Ve; Tue, 17 Sep 2019 20:47:50 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAKNk-0000LY-Sa; Tue, 17 Sep 2019 20:47:30 +0000
Received: by mail-ot1-f66.google.com with SMTP id z26so4369221oto.1;
 Tue, 17 Sep 2019 13:47:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=FoSYGBaKDzCX0ap+/LUel/1p6EkFjnJkCMtNziAAsIA=;
 b=sX+V9CJJLr66mQGITFGPB96W4q0EyNTDVoax9SD3R7t+HtKt8Ir9Rkvy64iwLNGz1F
 eywlLpiSwvmtDd8er6KKbzSwrY88/ERDczqjpX3MCVLFH2sldl+4pXW0yebhnrBjXUVj
 Cjy3Dlzal9+7VstJVkcrangnYPVkcDfKoMLmULB+CnrM0DeMmkSaVCtLKhRUzTj4lO3x
 XxykWcnbAB50oZtkoz2YHlQXhcwewUcuXcSRFhMYZs0H+89dO5vFL2oRj+GgH0uOWEW2
 HEPOxHvfqDRyYNNzQqzSTaVfLUQjIVP5/j9Br/L3tniG2P1NmYaZOstnn6VWJhkcF7Qg
 qbYA==
X-Gm-Message-State: APjAAAVHHKo7q3X+Voxdacl/GEOuLrHPtteVdGrRhGa90I4GKE9vWGfM
 Yx8hnzqGO+YCIr4WdmtwNfPB6nKiYA==
X-Google-Smtp-Source: APXvYqz+B89UMDC9IY7k7wKv0ix99w6NLjJtzUmU9gXsyI/P+JljCrWHrrmyk4+rrKlIMXNQIZBZSg==
X-Received: by 2002:a9d:829:: with SMTP id 38mr609273oty.372.1568753247649;
 Tue, 17 Sep 2019 13:47:27 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id e7sm994561otp.64.2019.09.17.13.47.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Sep 2019 13:47:26 -0700 (PDT)
Date: Tue, 17 Sep 2019 15:47:25 -0500
From: Rob Herring <robh@kernel.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: Re: [V2, 1/2] media: i2c: dw9768: Add DT support and MAINTAINERS entry
Message-ID: <20190917204725.GA14339@bogus>
References: <20190905072142.14606-1-dongchun.zhu@mediatek.com>
 <20190905072142.14606-2-dongchun.zhu@mediatek.com>
 <20190905101406.GA2680@smile.fi.intel.com>
 <20190905104829.GB5475@paasikivi.fi.intel.com>
 <20190905113509.GD2680@smile.fi.intel.com>
 <CABxcv=knP+-x0O-Ga-Dy8WTNovHk6GfX4ZEv0vVjnQvwchuVzg@mail.gmail.com>
 <20190905120012.GD5475@paasikivi.fi.intel.com>
 <20190905122449.GG2680@smile.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190905122449.GG2680@smile.fi.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_134728_927213_92AC8533 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 drinkcat@chromium.org, srv_heupstream@mediatek.com, sam.hung@mediatek.com,
 shengnan.wang@mediatek.com, Tomasz Figa <tfiga@chromium.org>,
 sj.huang@mediatek.com, linux-mediatek@lists.infradead.org,
 dongchun.zhu@mediatek.com, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, bingbu.cao@intel.com,
 Javier Martinez Canillas <javier@dowhile0.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 05, 2019 at 03:24:49PM +0300, Andy Shevchenko wrote:
> On Thu, Sep 05, 2019 at 03:00:12PM +0300, Sakari Ailus wrote:
> 
> > And I see no reason to add a separate patch just for
> > MAINTAINERS change.
> 
> It's up to maintainers of the subsystem.

Just update MAINTAINERS with the driver. It doesn't need to be so 
complicated or per subsystem. There's enough of what each maintainer 
wants already.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
