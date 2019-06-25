Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03A0352242
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 06:45:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c5mfJBGvTfY8JfagmVcskPjQASHPbMu5mCjV6+TpSeg=; b=e6YL+rtBdMv9x3
	PMRHwASLFmw8tNvXRNhuweDM+uS/USbGPaTAxo0FNGu1BwTcK2ofSw6BRMoFTTNk0NQK8d2RTx3uP
	JHEhdT2sdgwUvlBJhov3j/spGRFaqYwr15IFvRRmYVbjbXtwem5s09CJ5DvTybYrOJFTdB3XfBRkz
	bV8n+6aXqCVtp8xgVkF7e6Y2l7PnC3xZf+lZvsJZLws2+JTpHmToAwjqzzea8aIWmHtdi/KCtTWEU
	IWZ9LNiFLx92f8PV8jRSHSR6gg16yHTQX4nppvciXoFg3vl2M5fKlynDGNJG9TYnmlBOh14l3/8XZ
	exq4zsugc+8sVG2RlRGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfdKY-0004Nn-2F; Tue, 25 Jun 2019 04:45:18 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfdKE-0004N8-9y
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 04:44:59 +0000
Received: by mail-ot1-x343.google.com with SMTP id 43so11097453otf.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 21:44:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2Wp4HQypqw0rNbItr1Xs0WBR6fHG0G9gjAl5KxurVdE=;
 b=ICNF3PTZ1ZfG+bAeY8F8Pp7sQzesnEsLfQyVK4xXEW0fE9JbdoeEwICCri9MhuwgDe
 bm/0ejdD98vhkuaDReGiErs7EaKJphiOdNIOX5OTwKFKRbuUyOxVIAk4bHBff8k+v4sW
 T7OmIR81tdf3Fy8cR5DX0+mQ0tZ/Wu4tdvEcn1ySqLThg5Z+Cqiyv07RISHe3YwpWKkU
 mNX0GQfIvmuXGqm24S4OcATnGcJC5dp2nIjKXJ/eVlclscTS4ifWJKJt3gXQIn8V6JDV
 mBBDQVVDx+ijpZkFkPqRJLSkoToQRF0nF2/Dh+zYJ2NvIUQ+MXj1dcWGXJ7WX+IKrAi0
 Ackw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2Wp4HQypqw0rNbItr1Xs0WBR6fHG0G9gjAl5KxurVdE=;
 b=MG1AzNtCc4bWn2eKmzcOS0yPGx+a1AQlZFN7DhIRMH/b4Gy80YGu5p9IMm/vXgueo3
 HGbEmEqbZXc0VURV+N2qvSSeMLELMA5aw43M3ILCpNEB91oxOr7eZOfVasR/FgHYHh6R
 Bbw6cpTti7BzD8LMkv6/KsGk+85BSgB/bhY7OR9oZ53NGPt6MxdhN7hdOq+E3VSi9vx0
 I99vINlSpGrUgDEpYMVmyK1UyRPZ5WnWoEUTH7YyTK7seuLCrv7IWcaWQjn1DhLspfgt
 HuCdp1G8znDO8LX5X7YX+KiuLZ/sQXyr0KMfTayu5bcC8RV908dV17wDLm+ylC3uvCRY
 zYnw==
X-Gm-Message-State: APjAAAVJ2+EMczRAzsLhHJcou7aLIV1NTRouzuqVxcfM+CX+HAqLMwiE
 aM2QurNm8lMrosH1py/UtAvdUm/KpAv6GyCvmuQ=
X-Google-Smtp-Source: APXvYqxsOdEMaHKmim8mpE6aFtY/5w9wT+CBAa2iQ2fftmNQo7l1oux8418VMI5kU7usdjz86T8c871EA6XxIf+xwSc=
X-Received: by 2002:a9d:14a:: with SMTP id 68mr70034647otu.96.1561437896776;
 Mon, 24 Jun 2019 21:44:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190617165836.4673-1-colin.king@canonical.com>
 <20190619051308.23582-1-martin.blumenstingl@googlemail.com>
 <92f9e5a6-d2a2-6bf2-ff8a-2430fe977f93@canonical.com>
 <CAFBinCDmYVPDMcwAAYhMfxxuTsG=xunduN58_8e20zE_Mhmb7Q@mail.gmail.com>
In-Reply-To: <CAFBinCDmYVPDMcwAAYhMfxxuTsG=xunduN58_8e20zE_Mhmb7Q@mail.gmail.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 25 Jun 2019 06:44:45 +0200
Message-ID: <CAFBinCC-LLpfXQRFcKBbUpCfKc0S9Xtt60QrhEThsOFV-T7vFw@mail.gmail.com>
Subject: Re: [PATCH] net: stmmac: add sanity check to
 device_property_read_u32_array call
To: Colin Ian King <colin.king@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_214458_377586_D0124035 
X-CRM114-Status: GOOD (  20.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Thu, Jun 20, 2019 at 3:34 AM Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:
>
> Hi Colin,
>
> On Wed, Jun 19, 2019 at 8:55 AM Colin Ian King <colin.king@canonical.com> wrote:
> >
> > On 19/06/2019 06:13, Martin Blumenstingl wrote:
> > > Hi Colin,
> > >
> > >> Currently the call to device_property_read_u32_array is not error checked
> > >> leading to potential garbage values in the delays array that are then used
> > >> in msleep delays.  Add a sanity check to the property fetching.
> > >>
> > >> Addresses-Coverity: ("Uninitialized scalar variable")
> > >> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> > > I have also sent a patch [0] to fix initialize the array.
> > > can you please look at my patch so we can work out which one to use?
> > >
> > > my concern is that the "snps,reset-delays-us" property is optional,
> > > the current dt-bindings documentation states that it's a required
> > > property. in reality it isn't, there are boards (two examples are
> > > mentioned in my patch: [0]) without it.
> > >
> > > so I believe that the resulting behavior has to be:
> > > 1. don't delay if this property is missing (instead of delaying for
> > >    <garbage value> ms)
> > > 2. don't error out if this property is missing
> > >
> > > your patch covers #1, can you please check whether #2 is also covered?
> > > I tested case #2 when submitting my patch and it worked fine (even
> > > though I could not reproduce the garbage values which are being read
> > > on some boards)
in the meantime I have tested your patch.
when I don't set the "snps,reset-delays-us" property then I get the
following error:
  invalid property snps,reset-delays-us

my patch has landed in the meantime: [0]
how should we proceed with your patch?


Martin


[0] https://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.git/commit/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c?id=84ce4d0f9f55b4f4ca4d4edcbb54a23d9dad1aae

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
