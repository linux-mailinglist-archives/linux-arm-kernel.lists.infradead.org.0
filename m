Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7328918C44E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 01:39:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b2hAztUsdIgzxzA0H6K3sA7FMsSr3lj6FEtM7IpE4cA=; b=g4E2564Pq59yOQ
	lkbM9REGcGpA3ihD7HFLHeu6ZNgqu8Rw6OkcFIa3tzL+CdScToz8szWSEGg4iHxHVmlWbyzySxPgF
	5o6lAte1HgfuwvhOkFbNYGmSQ8bUqY2MK4DdAiZnizw7jjPaaJX6Z6yPOJ6ou3bHCzuYeZqMI+LEL
	srE7cBugi9t8G6tkA6mqnEuy7sYgNsuP7lQdQp8/Os/2PoGT1al76W0IsYWvxtkf4qTaHvgbrVKXB
	StYjJNikFY5Npq0NSJ94NY4Zq76+AwL7WeOhV8QV4khk1CI/9M4kggPAVaYZZXDbX6pf+ko3dFy4R
	F8SWzkwY9zIXTbn73tgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF5gk-00042j-Ba; Fri, 20 Mar 2020 00:39:02 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF5gc-000420-CF
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 00:38:57 +0000
Received: by mail-vs1-xe43.google.com with SMTP id x82so2963522vsc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Mar 2020 17:38:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=KjKMCzgb3n25ugwSO4NZ9wemQx4MIWa/Si1mpse+02Y=;
 b=aRxOifUgBz7sSrExSWn/7aj+00te0fuRTbj4encfSwmrovVxaDfZQL0Y2unZUv/vdq
 HTm5qU8HKwX5dotjpB38Nv9JdQFaYZYE3V8MqaZGieEeYD+Mxb/YHDDzOQbjp9TUvifb
 DLIBuZ+2mFC6VpCQmLJczUD7IBKetOZfn/cWAmDTbAhvcJYIz97OVa1j4iXJ+kyWsnTl
 eYA+b6vZTBFmqHuHqXTqJ2JFFCmcK9x18OQ+fX8SGSdSW+dFae23Ia84f5rixAA4CE5M
 i9NfxQ9wVEwQApFVWQgjFbxhs0mY8W99DvV3u/Ek/KKm74mCQpzJiAeqgDuwVEH83iLS
 RcJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=KjKMCzgb3n25ugwSO4NZ9wemQx4MIWa/Si1mpse+02Y=;
 b=FDnhGRneb67SisC2cx3O0GYQ4jIBFM4Ra6dQo+H+M2S9tyX4genNU1qSJMCAe5ov89
 3TxVTzF9BoEtM1usroDXa5kGGrGWBT9kCsn5wetYO7a1LWRzpgsqbmbLaS0iPgYX/PBc
 W3g0ry3u7AnmvLReKinyVthFjD1CS+ylVhZ/7KkMj42o5aQXbCz8xZYpO13AJDJySOTy
 6V1lQG7ppvqGpSoMd+Rqfs6o3jCbye/Dvwfq1shWTHnJr/RCXUG14BgHWRNqoSBhalfr
 oA07x6slMGt/IlBCgyn6lo9GpM/aFGs0hm4cq8PtQfvizu8bkxu6zRFP6CZQcRl4//v2
 ipWw==
X-Gm-Message-State: ANhLgQ0C22DOvQRGMSr/ysYZGK4uv9+UAvY+2rOnXfhn3EuiwTmtI+yF
 BKwmpqeD2DYvYtIokBpuYIfZCnrz0xrxZbuTLJY=
X-Google-Smtp-Source: ADFU+vsr3j7kwTl9CdWra4NVPQZmfpQw/B4U/SPyUSsCha4bBWZQYAQYhSqelDLP+hK9iWo4rnR7UYF2mmms+UOfdEc=
X-Received: by 2002:a67:b246:: with SMTP id s6mr4550196vsh.127.1584664732224; 
 Thu, 19 Mar 2020 17:38:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200319150031.11024-1-alim.akhtar@samsung.com>
 <CGME20200319150703epcas5p2d917898f6f1e0554cb978a70a34ee507@epcas5p2.samsung.com>
 <20200319150031.11024-2-alim.akhtar@samsung.com>
 <20200320002147.GA11283@bogus>
In-Reply-To: <20200320002147.GA11283@bogus>
From: Alim Akhtar <alim.akhtar@gmail.com>
Date: Fri, 20 Mar 2020 06:08:15 +0530
Message-ID: <CAGOxZ53415QRLW7gfbzHB8jzRxikz3Lyq=ME8d6Te4=DwLuhNg@mail.gmail.com>
Subject: Re: [PATCH v3 1/5] dt-bindings: phy: Document Samsung UFS PHY bindings
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_173854_419685_46BBB2C5 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [alim.akhtar[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 "Martin K. Petersen" <martin.petersen@oracle.com>, linux-scsi@vger.kernel.org,
 open list <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Kiwoong Kim <kwmad.kim@samsung.com>,
 Avri Altman <avri.altman@wdc.com>, robh+dt <robh+dt@kernel.org>,
 Can Guo <cang@codeaurora.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 Stanley Chu <stanley.chu@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob

On Fri, Mar 20, 2020 at 5:53 AM Rob Herring <robh@kernel.org> wrote:
>
> On Thu, 19 Mar 2020 20:30:27 +0530, Alim Akhtar wrote:
> > This patch documents Samsung UFS PHY device tree bindings
> >
> > Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
> > ---
> >  .../bindings/phy/samsung,ufs-phy.yaml         | 62 +++++++++++++++++++
> >  1 file changed, 62 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
> >
>
> My bot found errors running 'make dt_binding_check' on your patch:
>
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/samsung,ufs-phy.example.dt.yaml: example-0: 'ufs-phy@0x15571800' does not match any of the regexes: '.*-names$', '.*-supply$', '^#.*-cells$', '^#[a-zA-Z0-9,+\\-._]{0,63}$', '^[a-zA-Z][a-zA-Z0-9,+\\-._]{0,63}$', '^[a-zA-Z][a-zA-Z0-9,+\\-._]{0,63}@[0-9a-fA-F]+(,[0-9a-fA-F]+)*$', '^__.*__$', 'pinctrl-[0-9]+'
>
> See https://patchwork.ozlabs.org/patch/1258280
>
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure dt-schema is up to date:
>
Yes, I did ran 'make dt_binding_check' and saw no errors,

---
/work/linux $ make dt_binding_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
scripts/kconfig/conf  --syncconfig Kconfig
  HOSTCC  scripts/dtc/dtc.o
  HOSTCC  scripts/dtc/flattree.o
  HOSTCC  scripts/dtc/fstree.o
  HOSTCC  scripts/dtc/data.o
  HOSTCC  scripts/dtc/livetree.o
  HOSTCC  scripts/dtc/treesource.o
  HOSTCC  scripts/dtc/srcpos.o
  HOSTCC  scripts/dtc/checks.o
  HOSTCC  scripts/dtc/util.o
  LEX     scripts/dtc/dtc-lexer.lex.c
  YACC    scripts/dtc/dtc-parser.tab.[ch]
  HOSTCC  scripts/dtc/dtc-lexer.lex.o
  HOSTCC  scripts/dtc/dtc-parser.tab.o
  HOSTCC  scripts/dtc/yamltree.o
  HOSTLD  scripts/dtc/dtc
  CHKDT   Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
  SCHEMA  Documentation/devicetree/bindings/processed-schema.yaml
  DTC     Documentation/devicetree/bindings/phy/samsung,ufs-phy.example.dt.yaml
  CHECK   Documentation/devicetree/bindings/phy/samsung,ufs-phy.example.dt.yaml
~/work/linux $ dtc --version
Version: DTC 1.5.0-g62cb4ad2
---------------
> pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade
>
Thanks for pointing this out, I will upgrade and re-run and re-submit.

> Please check and re-submit.



-- 
Regards,
Alim

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
