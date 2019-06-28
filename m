Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02FDC59264
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 06:15:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eUSmenpCdpCkmaFh5nghpg2Kk6DC2cKz1aQgylt0pEA=; b=a1obBfBOCa0j82
	T6U9snDHct3GUFyU++q56SxzIN2gJ1kCHCaZBOBQtYC/p4UXdyeT9YkiOKmmNqywzXusw6ULRVrsl
	uuq8GYZqo8nru10kAHWi+UzlXWpHDLWAiJCC1ChG6xwKSZkIFFJEB6IN8qFqhok73uT12/mNSheCp
	68S4DmOnHHkHiJgMfzNswINF0KMo0YArkT1XH5iwFcviAmhmQg1SOaMpE7+egvQrXGoI3yNdnJBQn
	y33Iz6EcLPC3iVHi5HAaTGpVm1eswW+3GTn050i2U434ejRPnJtxoMPZ/t74O1G1c25wXlrfAgDpm
	+Gy8H2+EllvYIBv6wsLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgiIM-0007vM-1U; Fri, 28 Jun 2019 04:15:30 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgiI4-0007u2-O3
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 04:15:14 +0000
Received: by mail-ot1-x344.google.com with SMTP id q20so4657499otl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Jun 2019 21:15:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=alHSV6X/0jYcdmtS8pNTXOWz4fHsYwIu+SIRyai8F4U=;
 b=mwWKHR4gsiFZhFc+g9iiDBf3ria3CPGJBcUKNVbrOil9jxBOb15bPSedkQ6i24jHB2
 kgq9cPIPT5bdCFJOdW4vK/Cj6Q28b75Jdtg4+A+nn49Ju0ZMez/bP3llj4+yZRpmC4m1
 OAilLA/8XG4laGNg6ziCWw8QLmX1BfNw/A3dGxRtKF5WhMpH3wnILuAUhnDo3Ldro3Ja
 oQqbhOTpK+MN0Xu75Uru15bz0iInVn95zDCzLcEIjC1zcbaU8cbBCd6DeFDEM46JNzad
 JE8vF0BXoRqPNCBw1IJndTkL244uCMNW7mfJvMaJLegyUECwNOQD0lWoch5vlqqg5d+D
 avLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=alHSV6X/0jYcdmtS8pNTXOWz4fHsYwIu+SIRyai8F4U=;
 b=W4LwL83n7sbrrkGl5QDSi1MhlboD+oMc7NHL/Esi0Xd5waWpR+RZGglVrpZzYPRtyA
 pxe7oA5khv+SDuDFsX01uXxF+v8WRjfP9IfXmwogBNunJ3eBws6ck+QQSdo4B9LCQafc
 Nvo+M1kCZS9mzfsJJ9e/KlyK1noVYHzJXCzr2h7PlLhEGb1FVrLsrUk6dAtupb+hVNvm
 RIFMgnMvi5ie7u5oFtyy/56Kdiie6OHAOSYs2pW6Di2DMHAnhUulnJgCnrRRjOkKdDyF
 ME6xMc0mJW3648SKPzI/zhaJkEHsVcyOSVazi/zhY6BbrFbNybfgRJGVgOI0wMtkc+LB
 UuSg==
X-Gm-Message-State: APjAAAVKQbnUpz4EZ3vT/aLKK7mPSQNBdZoK8WkCys4mtfbyXCYJ8INt
 wrklMlAib+N0VaaMS1ErZ3SCLwmm59RjKxqBoX0=
X-Google-Smtp-Source: APXvYqzoN5kA1YyGVtcEAFkQBTUlTjcCxJhJ1rQg63DQ4NxitIRUZ2Osuk9gZslYzS51V4HANDD59jPadH78m0yUWGw=
X-Received: by 2002:a9d:6d8d:: with SMTP id x13mr6286370otp.6.1561695310932;
 Thu, 27 Jun 2019 21:15:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190617165836.4673-1-colin.king@canonical.com>
 <20190619051308.23582-1-martin.blumenstingl@googlemail.com>
 <92f9e5a6-d2a2-6bf2-ff8a-2430fe977f93@canonical.com>
 <CAFBinCDmYVPDMcwAAYhMfxxuTsG=xunduN58_8e20zE_Mhmb7Q@mail.gmail.com>
 <CAFBinCC-LLpfXQRFcKBbUpCfKc0S9Xtt60QrhEThsOFV-T7vFw@mail.gmail.com>
 <c46d2d17-c35b-46f0-0674-0c55bea3a272@canonical.com>
In-Reply-To: <c46d2d17-c35b-46f0-0674-0c55bea3a272@canonical.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Fri, 28 Jun 2019 06:15:00 +0200
Message-ID: <CAFBinCBk5aPVE+vq5px3QKS1T_R=WGXXxEJMC9X676KGvi9jdg@mail.gmail.com>
Subject: Re: [PATCH] net: stmmac: add sanity check to
 device_property_read_u32_array call
To: Colin Ian King <colin.king@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_211512_813795_21B7245F 
X-CRM114-Status: GOOD (  19.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
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

On Tue, Jun 25, 2019 at 9:58 AM Colin Ian King <colin.king@canonical.com> wrote:
>
> On 25/06/2019 05:44, Martin Blumenstingl wrote:
> > Hi Colin,
> >
> > On Thu, Jun 20, 2019 at 3:34 AM Martin Blumenstingl
> > <martin.blumenstingl@googlemail.com> wrote:
> >>
> >> Hi Colin,
> >>
> >> On Wed, Jun 19, 2019 at 8:55 AM Colin Ian King <colin.king@canonical.com> wrote:
> >>>
> >>> On 19/06/2019 06:13, Martin Blumenstingl wrote:
> >>>> Hi Colin,
> >>>>
> >>>>> Currently the call to device_property_read_u32_array is not error checked
> >>>>> leading to potential garbage values in the delays array that are then used
> >>>>> in msleep delays.  Add a sanity check to the property fetching.
> >>>>>
> >>>>> Addresses-Coverity: ("Uninitialized scalar variable")
> >>>>> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> >>>> I have also sent a patch [0] to fix initialize the array.
> >>>> can you please look at my patch so we can work out which one to use?
> >>>>
> >>>> my concern is that the "snps,reset-delays-us" property is optional,
> >>>> the current dt-bindings documentation states that it's a required
> >>>> property. in reality it isn't, there are boards (two examples are
> >>>> mentioned in my patch: [0]) without it.
> >>>>
> >>>> so I believe that the resulting behavior has to be:
> >>>> 1. don't delay if this property is missing (instead of delaying for
> >>>>    <garbage value> ms)
> >>>> 2. don't error out if this property is missing
> >>>>
> >>>> your patch covers #1, can you please check whether #2 is also covered?
> >>>> I tested case #2 when submitting my patch and it worked fine (even
> >>>> though I could not reproduce the garbage values which are being read
> >>>> on some boards)
> > in the meantime I have tested your patch.
> > when I don't set the "snps,reset-delays-us" property then I get the
> > following error:
> >   invalid property snps,reset-delays-us
> >
> > my patch has landed in the meantime: [0]
> > how should we proceed with your patch?
>
> I'm out of the office today. I'll get back to you on this tomorrow.
gentle ping
(I will be away for the weekend but I can reply on Monday)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
