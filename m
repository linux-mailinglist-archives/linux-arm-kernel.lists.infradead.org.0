Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA321CF207
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 11:59:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1zjNw4cTNFMGQuQdJWGGWx1VS6geYWuAaU+cxuCnSH8=; b=k/YD2prqLlinSX
	Mp6Pu572FX0hYCwU7iWzug7ybFwAmhQRP/8qxXhV4mKUn4v6K8SY0avNTga9uCXayC+ycnzNbg45G
	CKV5MkKuFpVvFfQx6Vy/TzKn3dHGsCFdbFGNPS9AmhECiOxOqXY9tU5EWW1+nlRU/YlXKAiHFQX9V
	cI1jHtOcaXhgZay/Bw8T2cL8S6liViEoR9qz29GJKWrzAi6z5F7Lif1ZQRyr1Pf4mqpXpGpA45StA
	Q9qQPcHdo8Z1ZBZjmkrNkJN4HaYxZ+IT1Rc4WKpiEKL6sWe6xSTD/R7UkClbSlXQFDmLIzT0FUGKb
	1IYmfy3+sBFUax+fZNDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYRgx-0005My-Kr; Tue, 12 May 2020 09:59:15 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYRgm-0005Kn-CF
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 09:59:08 +0000
Received: by mail-lf1-x141.google.com with SMTP id s9so10046586lfp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 02:59:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WXd5QHwJ1tPi5716Xcmxn3FGS3giieue5uSgZlXtiWg=;
 b=eF4UZfPdwxY2kcJ3SbBcXESksctSLMe0oyp3Dqb6rpox9rfOdE5TWSXlhLeZ7WVuJu
 K9EZyurUt4GoHXQGQJ/s/OIEAI31LdtzoB4OLI3c504mIW9b3C07x0rNyN/WpEEkui5z
 VayR7QZBrGhhSxZ7mnv/UaXebyvcd/obTk6ROY/uR8l1vWjvlXye4pt4sY7vBX1vTxHl
 lQlCW8H2SUcm6avA6W8stsSGIosReXoSyNmTLwiN8IH+JEk8cfxsp0MNEE4UFeELbKri
 KVXEW3tiDJ6y1cjGXzsEfdg4CZr29OfRHfERGPeFut8XyeYZP8PWMVEK0wlzjsF6ZOtf
 WWuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WXd5QHwJ1tPi5716Xcmxn3FGS3giieue5uSgZlXtiWg=;
 b=F0glu0leWv7z7vtAggz76b5/arjRvf1JZ7/HOujifUbF2Y+DOjol8ZPTCy9G7KN9c7
 yswSF2rMAZg/NQX8gDpxAiHO+B5oXwBiMmlbqel3Q88SnCG0/M5W6ID5InORQnUJlJnL
 9SwAiE4dEKgWYp71HzjSQX30UWJdk3qS0VjKlXTDSa5zcsDsuEybmN88uUWxmG2oiNo8
 WqvIM7clyD0IqxlnM1TLizSn53B7DoP3/LQtV3fN++hFGqCCbN7CyIFkrA1BSpp0GuqY
 siHNwOzI/V8V3YVQ3ydp+qq83D9qi6GlaArd7euNaiB5ygZlrJjbuvcH4kgCvpDt/N/D
 ANvg==
X-Gm-Message-State: AOAM531FKHIISv1AhrMJEjePw1kHlPJZj6w7tz7GYDKiK5Dytsl+R2UC
 LSgOvJwH9zG4kaJbdqA443cfPJWFzytKnTnhLfpiToTAEbI=
X-Google-Smtp-Source: ABdhPJyBq7To18Sh0+GIDcFRF81NKkhoFYKeSr+78ZnK/tfcB+M6Xqf+HgiWU5Chhbq4xITdhpfrF18M/MgtiTWvtZ0=
X-Received: by 2002:ac2:555b:: with SMTP id l27mr14203108lfk.170.1589277541973; 
 Tue, 12 May 2020 02:59:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200508134527.26555-1-etienne.carriere@linaro.org>
 <CAL_JsqJVaWDYZWwRwotSQyaL5bOugM3judxipS9oKveV3FdK8w@mail.gmail.com>
In-Reply-To: <CAL_JsqJVaWDYZWwRwotSQyaL5bOugM3judxipS9oKveV3FdK8w@mail.gmail.com>
From: Etienne Carriere <etienne.carriere@linaro.org>
Date: Tue, 12 May 2020 11:58:50 +0200
Message-ID: <CAN5uoS8GzbFyQq=kjZuxNwBDJ8cn9q-sq8C=VLN5UWWD0HXWaA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: nvmem: stm32: new property for data access
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_025904_587688_88724C9E 
X-CRM114-Status: GOOD (  15.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Etienne Carriere <etienne.carriere@st.com>, devicetree@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Rob,


On Tue, 12 May 2020 at 03:51, Rob Herring <robh+dt@kernel.org> wrote:
>
> On Fri, May 8, 2020 at 8:47 AM Etienne Carriere
> <etienne.carriere@linaro.org> wrote:
> >
> > From: Etienne Carriere <etienne.carriere@st.com>
> >
> > Introduce boolean property st,non-secure-otp for OTP data located
> > in a factory programmed area that only secure firmware can access
> > by default and that shall be reachable from the non-secure world.
> >
> > Signed-off-by: Etienne Carriere <etienne.carriere@st.com>
> > ---
> >  .../bindings/nvmem/st,stm32-romem.yaml          | 17 +++++++++++++++++
> >  1 file changed, 17 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/nvmem/st,stm32-romem.yaml b/Documentation/devicetree/bindings/nvmem/st,stm32-romem.yaml
> > index d84deb4774a4..c11c99f085d7 100644
> > --- a/Documentation/devicetree/bindings/nvmem/st,stm32-romem.yaml
> > +++ b/Documentation/devicetree/bindings/nvmem/st,stm32-romem.yaml
> > @@ -24,6 +24,18 @@ properties:
> >        - st,stm32f4-otp
> >        - st,stm32mp15-bsec
> >
> > +patternProperties:
> > +  "^.*@[0-9a-f]+$":
> > +    type: object
> > +
> > +    properties:
> > +      st,non-secure-otp:
> > +        description: |
> > +          This property explicits a factory programmed area that both secure
> > +          and non-secure worlds can access. It is needed when, by default, the
> > +          related area can only be reached by the secure world.
> > +        type: boolean
> > +
> >  required:
> >    - "#address-cells"
> >    - "#size-cells"
> > @@ -41,6 +53,11 @@ examples:
> >        calib@22c {
> >          reg = <0x22c 0x2>;
> >        };
> > +
> > +      mac_addr@e4 {
> > +        reg = <0xe4 0x8>;
> > +        st,non-secure-otp;
>
> This fails validation. You need to drop 'additionalProperties' in nvmem.yaml.

My apologies. I guess I did not test `dt_binding_check` on this change.
I'll send a v2.

Regards,
Etienne

>
> Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
