Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68F431C2AF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 07:58:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qiy3Yt6g4yKG9uoERpb4EHctqJnNwOrnfYmhHRgL1+0=; b=L9kBI7UJDUYyoH
	llgc/BQRlnLOv7w6oj6tlMdjMZEcA53S4YlB9bMRHNfuwacSp+qc62a7qH+lB11kH3eVvEMtrptuv
	Wl4cJLMrjrJ1ZOF4pbmxvVr5fU7X5VQhjq+07/tPhJW1KZwk/bjNpMvKSD1LyP5+aTynW8nzHTHBu
	U0S5hERRuoqTC0aBRjOzj5sb6v8WtD8SMNsIMLYdUtguTSzJ6CHDtGAju9Bprj/DN/lPMK/FLPMST
	pEoBUQFL/E97LzaFay+mHuRGq6PfOAR00wK6C6Zz+Im/+LcVS2YK6SiNFd0uYpozqtteEgLUsbw8+
	7chFenY61j1kW5TFX5Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQQRv-0001ac-NO; Tue, 14 May 2019 05:58:03 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQQRn-0001Zz-Iu
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 05:57:56 +0000
Received: by mail-ua1-x944.google.com with SMTP id d4so5754800uaj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 22:57:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Zx9aUYVTZ/Q7QmtL7E4nK+XknXpd1NX7Wy7ZAb5BKRs=;
 b=Rmpzcg2mJ8O3AQjylXPCeevcKoYMTVT3NRT2gIZbq/u4Q+f3PbK73vlsx89hTtjXJ6
 fOFXv2CyYetApLHi6mZbCiMrOmqmf7KJfhbMt2AHIhEvfzDkRk210yZCkOvVpi9rtkA7
 7UsUT6wDPxQdeCCLcsksxuaEZQHTveMdg8Ckzzns0DB65/rBBB2TB5DIRGTmQ09DM9tZ
 cor08RYzCUZQd2kviJTzdEnoaN+q67ubA5vSq4l6wD2GEtqcOoU0YbPTv6ENKEThJ5Oq
 QYN0T97KEoi14HoeGfDBZ+AjEr3OuwKINurzcLzYOaZDqUmUjT+dKb0oJm01W3f4CmG4
 4pJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Zx9aUYVTZ/Q7QmtL7E4nK+XknXpd1NX7Wy7ZAb5BKRs=;
 b=RvBhZH1lL59T1YDh7cFXb31UjrJ/rNXiHhOM/P9rH6phlspunplhkMGAbYTHNkhPno
 wR7SuXHS0Yuwv9yQbtspcq4cX/JpdB3Ocbmp3TN6+ZqSuGjarqi2z9dD3jMU3DWD0N0E
 W90n31lMQMq8VB58mENeJOSYvGty5BVRSN/rl8zXGRADDoYxaRc1iHO6jyZKxSYx2Fh9
 MuQkHLrqQdjteygeSgr/BvVRIW1Z3CWaLflbjbTf3JGybMrK8cLKfxhnJh3dWNHKn3UW
 gXZSR6D3hWGFbWpiMYJ1Kmq38wjzswaNgFngro2RFGpKs4zGK+RQRUhaI+cVJ4m2wObQ
 ogEw==
X-Gm-Message-State: APjAAAXTj94f5873z/FpHK4xp9dDcIYTdiFwsDv7jCtf6Zp/eXmivqQ9
 vu4IU31HZhFPDsmjGh75KeJ6tkMhGJPk6kLFIWPmpg==
X-Google-Smtp-Source: APXvYqy5FnXMGsyfpUpPnivkU4JXOBXavnwReh+VH/AtXAs26EZEl4e75tBaEA6Nt+8bGsliB11cYvQPf8v/6wCw/n4=
X-Received: by 2002:ab0:23cd:: with SMTP id c13mr13461223uan.77.1557813473337; 
 Mon, 13 May 2019 22:57:53 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1557486950.git.amit.kucheria@linaro.org>
 <ab5bad0258e455ef84059b749ca9e79f311b5e3c.1557486950.git.amit.kucheria@linaro.org>
 <20190513183947.GJ2085@tuxbook-pro>
In-Reply-To: <20190513183947.GJ2085@tuxbook-pro>
From: Amit Kucheria <amit.kucheria@linaro.org>
Date: Tue, 14 May 2019 11:27:42 +0530
Message-ID: <CAHLCerMx8MqMJYO4K6eNB6zOr01FwjP_JRWwz3=nM6dz4+KnSw@mail.gmail.com>
Subject: Re: [PATCHv1 1/8] arm64: dts: Fix various entry-method properties to
 reflect documentation
To: Bjorn Andersson <bjorn.andersson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_225755_658605_E6D64363 
X-CRM114-Status: GOOD (  18.85  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, Li Yang <leoyang.li@nxp.com>,
 David Brown <david.brown@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Andy Gross <andy.gross@linaro.org>, Shawn Guo <shawnguo@kernel.org>,
 lakml <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 14, 2019 at 12:09 AM Bjorn Andersson
<bjorn.andersson@linaro.org> wrote:
>
> On Fri 10 May 04:29 PDT 2019, Amit Kucheria wrote:
>
> Subject indicates pluralism, but this fixes a specific platform
> (board?). I think you should update that.

Copy paste from the previous cleanup commit :-) Will fix.

> > The idle-states binding documentation[1] mentions that the
> > 'entry-method' property is required on 64-bit platforms and must be set
> > to "psci".
> >
> > We fixed up all uses of the entry-method property in
> > commit e9880240e4f4 ("arm64: dts: Fix various entry-method properties to
> > reflect documentation"). But a new one has appeared. Fix it up.
> >
> > Cc: Sudeep Holla <sudeep.holla@arm.com>
>
> The message looks good though, so with a new subject you have my:
>
> Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Thanks

>
> > Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
> > ---
> >  arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> > index 2896bbcfa3bb..42e7822a0227 100644
> > --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> > @@ -51,7 +51,7 @@
> >                * PSCI node is not added default, U-boot will add missing
> >                * parts if it determines to use PSCI.
> >                */
> > -             entry-method = "arm,psci";
> > +             entry-method = "psci";
> >
> >               CPU_PH20: cpu-ph20 {
> >                       compatible = "arm,idle-state";
> > --
> > 2.17.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
