Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B41025A04A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 18:06:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iIVfeMHcQkRWEk3vL5+ZJOOHTH8D3wQ6eeSqIFsmVRU=; b=GLbFyGVHf9tull
	xD8jHvm+LFuEBs8baGP6SJrb+c1NV2X+CwjxZnWbLhBHLSWzn3iK+IaQPu/M21dFxOlVuRLtyKYuZ
	p7xy5t+FaacQYwsQUtxAGAcU22ixyk/MYofXUcBO7hYMVoxsBwwyI4Lf2eey4HY++e3O43mjxISoq
	HEM2D1suPY7TriMHK5r+cU0H1wlwWcA1ZJa1MtQP1nNHBXFiXhRj0T1y3m69uPdjLSPFrWwbw5B3O
	F8Fc5S0/yearI2/2JL+TH8GX99yrbZ+n0g2KNEacMg0xQDmlSzP8i7Cc/gPNbQFwoqUCwOWzrs0w0
	2DmZbnfQAsAfjFn0WFww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgtNz-0000oY-VZ; Fri, 28 Jun 2019 16:06:03 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgtNi-0000lA-5M
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 16:05:47 +0000
Received: by mail-ot1-x341.google.com with SMTP id z23so6448454ote.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Jun 2019 09:05:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rB3m6lymfmEJSrj5bHYQhYToOLJuP/M6N6+Gh/hsbFw=;
 b=bc/qm2AfIl7/pff81NO1XSTxiwj/Tf0ODnPhZSJ5FTf056oge76zhm015auns2dWOc
 RinrawyZ0O2i6XS3+Gia3nZKyP4l+hj94CO63lQVLxbXgIhu7crlszsOV628/OdmjOHs
 sgA2BP1tBdIoQGCZBW6+NVSOzl9jEECi2MCa0a/YPJDDCTBDdePstSg/jnqv6PrxCsmQ
 ThKE283f5h0W/IlmNX0oHfVqT1Ne7o8ahjcCU6dkor7BD58aVUBqhrXrvV7DJyiPPXkB
 MJa5LLDboqWiBQHW5V5SO5bR4xRlOCIXS7xPSUT6OYP8peQqJOrSThluXwg3T02RX4Hq
 coBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rB3m6lymfmEJSrj5bHYQhYToOLJuP/M6N6+Gh/hsbFw=;
 b=bHnc6QcZG9Jl1ZURySDHltFvixxKLPxgmMeHJQyJiurTwMifPHRPntTaLDKtUSy4W2
 pn8wRb7UrFHcxCiEV0dgNCKJAqXkJU19YAUMv6YbDTNS0Xl3cugxZU/siqLCurMBKAHE
 N9guuKBT1mFVBIcOLWAOaBLwsfPFqNNOoAS9CjrHF5v7aupUF1Vr+NdLgGXaNo/iQfFx
 j2aOsG+E/1HDzo7OlDhFxBkZ+v636MQu9+2rFfJt7oh8X3T7Bw341bkWbQ/06rJAInxw
 2vCMGBhsVZwAQMSdRrvkOXsbQmftoSRm4Jx0ZEfmQY75p2gEVXVs2ql4vsKtGWL8QgGM
 fI4g==
X-Gm-Message-State: APjAAAV3ndjGAoRPDs74pxCmi2evjOgw+kfA8YhLc8TT7vTtcaCwCU13
 6ukkv/WROrsM9cDFCSv9PrHyrrvKHW9qN4qAcfg=
X-Google-Smtp-Source: APXvYqxpqVINGUIuZUIFanNgoXeInzShDbpDl64F0HtsRM7t1NOYrZCC3Ebzuzy9/EHv7T38+pkX4a5YcGAPWYaVwrw=
X-Received: by 2002:a9d:23ca:: with SMTP id t68mr8604745otb.98.1561737944761; 
 Fri, 28 Jun 2019 09:05:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190617165836.4673-1-colin.king@canonical.com>
 <20190619051308.23582-1-martin.blumenstingl@googlemail.com>
 <92f9e5a6-d2a2-6bf2-ff8a-2430fe977f93@canonical.com>
 <CAFBinCDmYVPDMcwAAYhMfxxuTsG=xunduN58_8e20zE_Mhmb7Q@mail.gmail.com>
 <CAFBinCC-LLpfXQRFcKBbUpCfKc0S9Xtt60QrhEThsOFV-T7vFw@mail.gmail.com>
 <c46d2d17-c35b-46f0-0674-0c55bea3a272@canonical.com>
 <CAFBinCBk5aPVE+vq5px3QKS1T_R=WGXXxEJMC9X676KGvi9jdg@mail.gmail.com>
 <26646ff1-059f-fb2d-e05d-43009aeb2150@canonical.com>
In-Reply-To: <26646ff1-059f-fb2d-e05d-43009aeb2150@canonical.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Fri, 28 Jun 2019 18:05:33 +0200
Message-ID: <CAFBinCAx5qrPK1z68bF-tGKpJQfKLnee65qBOxMS4nj8t381+Q@mail.gmail.com>
Subject: Re: [PATCH] net: stmmac: add sanity check to
 device_property_read_u32_array call
To: Colin Ian King <colin.king@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_090546_232388_3D341339 
X-CRM114-Status: GOOD (  19.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Fri, Jun 28, 2019 at 10:32 AM Colin Ian King
<colin.king@canonical.com> wrote:
>
> On 28/06/2019 05:15, Martin Blumenstingl wrote:
> > On Tue, Jun 25, 2019 at 9:58 AM Colin Ian King <colin.king@canonical.com> wrote:
> >>
> >> On 25/06/2019 05:44, Martin Blumenstingl wrote:
> >>> Hi Colin,
> >>>
> >>> On Thu, Jun 20, 2019 at 3:34 AM Martin Blumenstingl
> >>> <martin.blumenstingl@googlemail.com> wrote:
> >>>>
> >>>> Hi Colin,
> >>>>
> >>>> On Wed, Jun 19, 2019 at 8:55 AM Colin Ian King <colin.king@canonical.com> wrote:
> >>>>>
> >>>>> On 19/06/2019 06:13, Martin Blumenstingl wrote:
> >>>>>> Hi Colin,
> >>>>>>
> >>>>>>> Currently the call to device_property_read_u32_array is not error checked
> >>>>>>> leading to potential garbage values in the delays array that are then used
> >>>>>>> in msleep delays.  Add a sanity check to the property fetching.
> >>>>>>>
> >>>>>>> Addresses-Coverity: ("Uninitialized scalar variable")
> >>>>>>> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> >>>>>> I have also sent a patch [0] to fix initialize the array.
> >>>>>> can you please look at my patch so we can work out which one to use?
> >>>>>>
> >>>>>> my concern is that the "snps,reset-delays-us" property is optional,
> >>>>>> the current dt-bindings documentation states that it's a required
> >>>>>> property. in reality it isn't, there are boards (two examples are
> >>>>>> mentioned in my patch: [0]) without it.
> >>>>>>
> >>>>>> so I believe that the resulting behavior has to be:
> >>>>>> 1. don't delay if this property is missing (instead of delaying for
> >>>>>>    <garbage value> ms)
> >>>>>> 2. don't error out if this property is missing
> >>>>>>
> >>>>>> your patch covers #1, can you please check whether #2 is also covered?
> >>>>>> I tested case #2 when submitting my patch and it worked fine (even
> >>>>>> though I could not reproduce the garbage values which are being read
> >>>>>> on some boards)
> >>> in the meantime I have tested your patch.
> >>> when I don't set the "snps,reset-delays-us" property then I get the
> >>> following error:
> >>>   invalid property snps,reset-delays-us
> >>>
> >>> my patch has landed in the meantime: [0]
> >>> how should we proceed with your patch?
>
> Your fix is good, so I think we should just drop/forget about my fix.
thank you for looking at the situation

as far I understand the -net/-net-next tree all commits are immutable
so if we want to remove your patch we need to send a revert
do you want me to do that (I can do it on Monday) or will you take care of that?


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
