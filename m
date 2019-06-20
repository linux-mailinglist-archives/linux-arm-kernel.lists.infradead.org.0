Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EBF14C501
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 03:34:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bf0T6j8Cw+kIYkWm6UJrZYRVnD/aeGWpvZrQqWgVb6M=; b=IU9wPGz5+9B6on
	nf5QPJI0S7VUFDUU1CcLir3P+Z/MvEbF1G5QqgAOd3YYSBc6Zkn4L9vgofZykoh7eO0JbtEwYv8zj
	QQaKOKygcreFkrZpLxfKVEtuJybhhwx0VslXPSaCZR1JLF4tqHej0ZJrmMSfXhoMyTvhH6DGrjjys
	NBcsju8avJ9m2+x8sdzLrgyQpD51/6BRXL6nhKpN+IXJimCzVvGxd7bXFypRe0ychL+0UMcGP/rsh
	Uq+l72fvCY5p2XSSvOvjy0Mc6O31ZqANdVA1a3O0jLptJXW4L2a2vkjZ0m2sAfN6xMyHsqHBnZEQC
	iMwhOo40Q5k4OD5Cjj3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdlyQ-0002h2-H5; Thu, 20 Jun 2019 01:34:46 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdlyD-0002gg-I0
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 01:34:35 +0000
Received: by mail-oi1-x242.google.com with SMTP id s184so875567oie.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 18:34:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nYuOW5lyxxT0zsgk7qqZi/7w20Oi72vHiGCqLTnTrl8=;
 b=XxxTCKxD/5Hh4mP6+R4KSzkOEhkkx9EXfAH8omqHrIeXVmLMBa406JF09S5I9/dOxR
 wc9h4G7Dflde6RcyDAZnRIMTkl43HRI69tjffugAWRVlUFXSiEWEbbvf1v8Dkv333ACz
 fPBTlaPJtNz1tic4Y8+juQsuQ6mnFj5eYHNiMilXbbr3elf5dvc2xJrALVZVKGSFd1iZ
 efEFfZAArnZa7GOg/IseyJDpc7KuRCJF8XYefzt5VhBC48jDwJGyC0kRcJOnDLUKC0In
 eFPF3hEUJBXxsibzw51TwqvsjDFIP78hjGH3zMbetl9Rq5+bOJEMbbz3Y1EtDIbZufot
 ZLMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nYuOW5lyxxT0zsgk7qqZi/7w20Oi72vHiGCqLTnTrl8=;
 b=ug+SLldfx3/SXrUYg35OzX8JSJEFVeshQZcrVJlRLDYG6FLBa77KMf7i7ZwXG0cPrd
 F5VxxrOmtrXk+xaeSwtlllRpOruthsKvsKra+uQBgHcBP8hv/TVNIFuuY9QTjtLiTV2Z
 gMRQCoAcnIooSRKIifMst9/PPYtVXoRvv5ObOhXRZgJGFQnKjX5tKoCB9Ea5cxrMHsEM
 Qm8GFqKqv3LHvdGC0TPOdhPcs6pVJpjxGrEiA48rcgrN9EdWV4p3Cu5mWPUkdlvsW2ee
 iw1JKWWdoqpewY7R4QcOYk+61tfSwjcmwhTVya3l0btHxlJeJEkm57qHd2rsyYoTaI11
 O0cg==
X-Gm-Message-State: APjAAAVUnOKTG+8twnXhZX78J/ErQIRdcpvvOMvD7c2N/i63JkQUCWqO
 HkmkautHfqQjA3/c6EK7E/Itrjmq7HvZ2dGcsZI=
X-Google-Smtp-Source: APXvYqwrykrLtbD0pG9V8vBrsbsTo35v6Soy95FKONjQ0aI87GQhODvgpXAK5RhK2mM0+AszFXum8RjavMf7MOSMXic=
X-Received: by 2002:aca:4403:: with SMTP id r3mr4853308oia.39.1560994469747;
 Wed, 19 Jun 2019 18:34:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190617165836.4673-1-colin.king@canonical.com>
 <20190619051308.23582-1-martin.blumenstingl@googlemail.com>
 <92f9e5a6-d2a2-6bf2-ff8a-2430fe977f93@canonical.com>
In-Reply-To: <92f9e5a6-d2a2-6bf2-ff8a-2430fe977f93@canonical.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Thu, 20 Jun 2019 03:34:18 +0200
Message-ID: <CAFBinCDmYVPDMcwAAYhMfxxuTsG=xunduN58_8e20zE_Mhmb7Q@mail.gmail.com>
Subject: Re: [PATCH] net: stmmac: add sanity check to
 device_property_read_u32_array call
To: Colin Ian King <colin.king@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_183433_622783_BCBF189A 
X-CRM114-Status: GOOD (  18.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alexandre.torgue@st.com, netdev@vger.kernel.org,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, joabreu@synopsys.com,
 mcoquelin.stm32@gmail.com, peppe.cavallaro@st.com, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Colin,

On Wed, Jun 19, 2019 at 8:55 AM Colin Ian King <colin.king@canonical.com> wrote:
>
> On 19/06/2019 06:13, Martin Blumenstingl wrote:
> > Hi Colin,
> >
> >> Currently the call to device_property_read_u32_array is not error checked
> >> leading to potential garbage values in the delays array that are then used
> >> in msleep delays.  Add a sanity check to the property fetching.
> >>
> >> Addresses-Coverity: ("Uninitialized scalar variable")
> >> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> > I have also sent a patch [0] to fix initialize the array.
> > can you please look at my patch so we can work out which one to use?
> >
> > my concern is that the "snps,reset-delays-us" property is optional,
> > the current dt-bindings documentation states that it's a required
> > property. in reality it isn't, there are boards (two examples are
> > mentioned in my patch: [0]) without it.
> >
> > so I believe that the resulting behavior has to be:
> > 1. don't delay if this property is missing (instead of delaying for
> >    <garbage value> ms)
> > 2. don't error out if this property is missing
> >
> > your patch covers #1, can you please check whether #2 is also covered?
> > I tested case #2 when submitting my patch and it worked fine (even
> > though I could not reproduce the garbage values which are being read
> > on some boards)
> >
> >
> > Thank you!
> > Martin
> >
> >
> > [0] https://lkml.org/lkml/2019/4/19/638
> >
> Is that the correct link?
sorry, that is a totally unrelated link
the correct link is: https://patchwork.ozlabs.org/patch/1118313/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
