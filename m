Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74E22159C5D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 23:37:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qoppMS1qIbLfV1QgjxM1SL4Se5bl1F461p6pN4jmjLo=; b=EjTOEE1RKRKy84
	WQMSqa8r3S9Rd56Zb9ZIj240Pq5GtWXB3jfh+VTNwKljZrXZO0ZyZdQe1MWKKolImPR8EL0+NTU2d
	ZHMlh2XjlQsCuUAyuZBBdFwL1eOnz67ESYC3+B0pDtQ8ZhYYcqba3YVhvnzMyv9ULIa8vN7s1xdO1
	nc9IUBWue4a1hCffHbatgrPZjluqi6xY/ND1aXWjeMqgP0zoXvx4taHn63dFcrFufU7L18U+UqwNH
	6xwwP8ndXm/U0I0aiADXAmExRTM3L8kUbJDJeCN0C6vjLXpmMzaeYe8sxP0PY4n7zt+xekWDnaJML
	FB1rE+hQse/r17pRDFgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1e9s-0005th-Vz; Tue, 11 Feb 2020 22:37:32 +0000
Received: from mail-yb1-xb42.google.com ([2607:f8b0:4864:20::b42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1e9g-0005rX-U5
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 22:37:24 +0000
Received: by mail-yb1-xb42.google.com with SMTP id f21so6216286ybg.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Feb 2020 14:37:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=4E284qN+vRAhTZtT0rIdFTUZcqXRbUt6s/IOlM/vvyA=;
 b=ifx+DzZefaSAL2nVdC+4tau4G/F8xprVJUX+YZmVgVM7aU12bmmCmB0nylVTsNuJsA
 NMZRH3/BRiDC1XxOm5DIjcN0MxNVhpj0HgimN7FqRtqKoR4WRvo08dxDzTIdZu9vLTDz
 IAGiQ6uT9z2p5D0VszscGp3LsS8yrfLl7TUOvmqNxghE/Q1vFLfoV+PWAMgiqaXipZ1S
 peqaM9DDw8ndeuEYyIRetx3t0/wXSwpNrYV4Qx7ryDfQV0Pk66YEK5PgjUUQpgXuMylb
 6czEKwowgQxm5d0UKeiUnWjVarW4/QvcaJYEgNTMD278w07EjuAjk7exY61HSmDzwFzm
 cz1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=4E284qN+vRAhTZtT0rIdFTUZcqXRbUt6s/IOlM/vvyA=;
 b=G0OzV1+9p0v8KV0NoSoPP86Cou7oGNJVprlFaGz1C7HTzy38QQYKymDll73p/FnuHg
 5VR/HwQIU9f3ICw4n1LJxjZjnayW7gAfQWZXAJR+eoR1V0KM4UYQZ9HwcuV2zUFlA6cI
 COb2i5WsT9rDefntyb0JC06Pf2W45mgnuwo8Ay6V31i/e+nlp+l+1Y8RNfaCnOqYAxtr
 VqmszCQZrvyWtPMMjtGZDBG1pYDhUBrefpT3grRpxPOAD09EHpBG8vodEZlMsC7CS3ra
 Y/8In9fAcjAHinkQDBd2MlvEVi4NHc42ZLpRObZXK9DG48798rk1ldb6LfmV8LrAGMxc
 jmjw==
X-Gm-Message-State: APjAAAXXtxokFucP9lvAjcJd0STllNjIcNcgytJ5upOf0UWROapnS5YB
 eR8JaltIjXQLBNzl6HidKCcL3w==
X-Google-Smtp-Source: APXvYqyzgZLk45HhNGPwj+5zMWbvuzxO7Fm/J3FvhC70D+xffZuoeXX5e0kENe5jciC5F7qTOhKdaA==
X-Received: by 2002:a25:ab25:: with SMTP id u34mr7621217ybi.47.1581460639017; 
 Tue, 11 Feb 2020 14:37:19 -0800 (PST)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id t15sm2505788ywg.67.2020.02.11.14.37.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Feb 2020 14:37:18 -0800 (PST)
Date: Tue, 11 Feb 2020 15:37:15 -0700
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: =?iso-8859-1?Q?Cl=E9ment?= Leger <cleger@kalray.eu>
Subject: Re: [PATCH v4 1/5] remoteproc: Use u64 len for da_to_va
Message-ID: <20200211223715.GA27770@xps15>
References: <527785289.2852303.1581062223707.JavaMail.zimbra@kalray.eu>
 <20200210162209.23149-1-cleger@kalray.eu>
 <20200210162209.23149-2-cleger@kalray.eu>
 <4465bade-e3de-88b8-63a5-e5410de9adc0@st.com>
 <884697376.3644142.1581439161953.JavaMail.zimbra@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <884697376.3644142.1581439161953.JavaMail.zimbra@kalray.eu>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_143721_011566_44806908 
X-CRM114-Status: GOOD (  34.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, Fabio Estevam <festevam@gmail.com>,
 Loic PALLARDY <loic.pallardy@st.com>, Jonathan Corbet <corbet@lwn.net>,
 linux-remoteproc <linux-remoteproc@vger.kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-doc <linux-doc@vger.kernel.org>,
 Arnaud Pouliquen <arnaud.pouliquen@st.com>,
 Patrice Chotard <patrice.chotard@st.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Andy Gross <agross@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, s-anna <s-anna@ti.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 11, 2020 at 05:39:21PM +0100, Cl=E9ment Leger wrote:
> Hi Arnaud,
> =

> ----- On 11 Feb, 2020, at 16:53, Arnaud Pouliquen arnaud.pouliquen@st.com=
 wrote:
> =

> > On 2/10/20 5:22 PM, Clement Leger wrote:
> >> With upcoming changes in elf loader for elf64 support, section size wi=
ll
> >> be a u64. When used with da_to_va, this will potentially lead to
> >> overflow if using the current "int" type for len argument. Change
> >> da_to_va prototype to use a u64 for len and fix all users of this
> >> function.
> >> =

> >> Signed-off-by: Clement Leger <cleger@kalray.eu>
> >> ---
> >>  drivers/remoteproc/imx_rproc.c           | 11 ++++++-----
> >>  drivers/remoteproc/keystone_remoteproc.c |  4 ++--
> >>  drivers/remoteproc/qcom_q6v5_adsp.c      |  2 +-
> >>  drivers/remoteproc/qcom_q6v5_mss.c       |  2 +-
> >>  drivers/remoteproc/qcom_q6v5_pas.c       |  2 +-
> >>  drivers/remoteproc/qcom_q6v5_wcss.c      |  2 +-
> >>  drivers/remoteproc/qcom_wcnss.c          |  2 +-
> >>  drivers/remoteproc/remoteproc_core.c     |  2 +-
> >>  drivers/remoteproc/remoteproc_internal.h |  2 +-
> >>  drivers/remoteproc/st_slim_rproc.c       |  4 ++--
> >>  drivers/remoteproc/wkup_m3_rproc.c       |  4 ++--
> >>  include/linux/remoteproc.h               |  2 +-
> >>  12 files changed, 20 insertions(+), 19 deletions(-)
> >> =

> >> diff --git a/drivers/remoteproc/imx_rproc.c b/drivers/remoteproc/imx_r=
proc.c
> >> index 3e72b6f38d4b..f497f5b49b18 100644
> >> --- a/drivers/remoteproc/imx_rproc.c
> >> +++ b/drivers/remoteproc/imx_rproc.c
> >> @@ -186,7 +186,7 @@ static int imx_rproc_stop(struct rproc *rproc)
> >>  }
> >>  =

> >>  static int imx_rproc_da_to_sys(struct imx_rproc *priv, u64 da,
> >> -			       int len, u64 *sys)
> >> +			       u64 len, u64 *sys)
> >>  {
> >>  	const struct imx_rproc_dcfg *dcfg =3D priv->dcfg;
> >>  	int i;
> >> @@ -203,19 +203,19 @@ static int imx_rproc_da_to_sys(struct imx_rproc =
*priv, u64
> >> da,
> >>  		}
> >>  	}
> >>  =

> >> -	dev_warn(priv->dev, "Translation failed: da =3D 0x%llx len =3D 0x%x\=
n",
> >> +	dev_warn(priv->dev, "Translation failed: da =3D 0x%llx len =3D 0x%ll=
x\n",
> >>  		 da, len);
> >>  	return -ENOENT;
> >>  }
> >>  =

> >> -static void *imx_rproc_da_to_va(struct rproc *rproc, u64 da, int len)
> >> +static void *imx_rproc_da_to_va(struct rproc *rproc, u64 da, u64 len)
> >>  {
> >>  	struct imx_rproc *priv =3D rproc->priv;
> >>  	void *va =3D NULL;
> >>  	u64 sys;
> >>  	int i;
> >>  =

> >> -	if (len <=3D 0)
> >> +	if (len =3D=3D 0)
> >>  		return NULL;
> >>  =

> >>  	/*
> >> @@ -235,7 +235,8 @@ static void *imx_rproc_da_to_va(struct rproc *rpro=
c, u64 da,
> >> int len)
> >>  		}
> >>  	}
> >>  =

> >> -	dev_dbg(&rproc->dev, "da =3D 0x%llx len =3D 0x%x va =3D 0x%p\n", da,=
 len, va);
> >> +	dev_dbg(&rproc->dev, "da =3D 0x%llx len =3D 0x%llx va =3D 0x%p\n",
> >> +		da, len, va);
> >>  =

> >>  	return va;
> >>  }
> >> diff --git a/drivers/remoteproc/keystone_remoteproc.c
> >> b/drivers/remoteproc/keystone_remoteproc.c
> >> index 5c4658f00b3d..466093f48814 100644
> >> --- a/drivers/remoteproc/keystone_remoteproc.c
> >> +++ b/drivers/remoteproc/keystone_remoteproc.c
> >> @@ -246,7 +246,7 @@ static void keystone_rproc_kick(struct rproc *rpro=
c, int
> >> vqid)
> >>   * can be used either by the remoteproc core for loading (when using =
kernel
> >>   * remoteproc loader), or by any rpmsg bus drivers.
> >>   */
> >> -static void *keystone_rproc_da_to_va(struct rproc *rproc, u64 da, int=
 len)
> >> +static void *keystone_rproc_da_to_va(struct rproc *rproc, u64 da, u64=
 len)
> >>  {
> >>  	struct keystone_rproc *ksproc =3D rproc->priv;
> >>  	void __iomem *va =3D NULL;
> >> @@ -255,7 +255,7 @@ static void *keystone_rproc_da_to_va(struct rproc =
*rproc,
> >> u64 da, int len)
> >>  	size_t size;
> >>  	int i;
> >>  =

> >> -	if (len <=3D 0)
> >> +	if (len =3D=3D 0)
> >>  		return NULL;
> >>  =

> >>  	for (i =3D 0; i < ksproc->num_mems; i++) {
> >> diff --git a/drivers/remoteproc/qcom_q6v5_adsp.c
> >> b/drivers/remoteproc/qcom_q6v5_adsp.c
> >> index e953886b2eb7..7518e67a49e5 100644
> >> --- a/drivers/remoteproc/qcom_q6v5_adsp.c
> >> +++ b/drivers/remoteproc/qcom_q6v5_adsp.c
> >> @@ -270,7 +270,7 @@ static int adsp_stop(struct rproc *rproc)
> >>  	return ret;
> >>  }
> >>  =

> >> -static void *adsp_da_to_va(struct rproc *rproc, u64 da, int len)
> >> +static void *adsp_da_to_va(struct rproc *rproc, u64 da, u64 len)
> >>  {
> >>  	struct qcom_adsp *adsp =3D (struct qcom_adsp *)rproc->priv;
> >>  	int offset;
> >> diff --git a/drivers/remoteproc/qcom_q6v5_mss.c
> >> b/drivers/remoteproc/qcom_q6v5_mss.c
> >> index 471128a2e723..248febde6fc1 100644
> >> --- a/drivers/remoteproc/qcom_q6v5_mss.c
> >> +++ b/drivers/remoteproc/qcom_q6v5_mss.c
> >> @@ -1148,7 +1148,7 @@ static int q6v5_stop(struct rproc *rproc)
> >>  	return 0;
> >>  }
> >>  =

> >> -static void *q6v5_da_to_va(struct rproc *rproc, u64 da, int len)
> >> +static void *q6v5_da_to_va(struct rproc *rproc, u64 da, u64 len)
> >>  {
> >>  	struct q6v5 *qproc =3D rproc->priv;
> >>  	int offset;
> >> diff --git a/drivers/remoteproc/qcom_q6v5_pas.c
> >> b/drivers/remoteproc/qcom_q6v5_pas.c
> >> index db4b3c4bacd7..cf2cd609c90d 100644
> >> --- a/drivers/remoteproc/qcom_q6v5_pas.c
> >> +++ b/drivers/remoteproc/qcom_q6v5_pas.c
> >> @@ -159,7 +159,7 @@ static int adsp_stop(struct rproc *rproc)
> >>  	return ret;
> >>  }
> >>  =

> >> -static void *adsp_da_to_va(struct rproc *rproc, u64 da, int len)
> >> +static void *adsp_da_to_va(struct rproc *rproc, u64 da, u64 len)
> >>  {
> >>  	struct qcom_adsp *adsp =3D (struct qcom_adsp *)rproc->priv;
> >>  	int offset;
> >> diff --git a/drivers/remoteproc/qcom_q6v5_wcss.c
> >> b/drivers/remoteproc/qcom_q6v5_wcss.c
> >> index f93e1e4a1cc0..3a6b82a16961 100644
> >> --- a/drivers/remoteproc/qcom_q6v5_wcss.c
> >> +++ b/drivers/remoteproc/qcom_q6v5_wcss.c
> >> @@ -406,7 +406,7 @@ static int q6v5_wcss_stop(struct rproc *rproc)
> >>  	return 0;
> >>  }
> >>  =

> >> -static void *q6v5_wcss_da_to_va(struct rproc *rproc, u64 da, int len)
> >> +static void *q6v5_wcss_da_to_va(struct rproc *rproc, u64 da, u64 len)
> >>  {
> >>  	struct q6v5_wcss *wcss =3D rproc->priv;
> >>  	int offset;
> >> diff --git a/drivers/remoteproc/qcom_wcnss.c b/drivers/remoteproc/qcom=
_wcnss.c
> >> index dc135754bb9c..f893219e45a8 100644
> >> --- a/drivers/remoteproc/qcom_wcnss.c
> >> +++ b/drivers/remoteproc/qcom_wcnss.c
> >> @@ -287,7 +287,7 @@ static int wcnss_stop(struct rproc *rproc)
> >>  	return ret;
> >>  }
> >>  =

> >> -static void *wcnss_da_to_va(struct rproc *rproc, u64 da, int len)
> >> +static void *wcnss_da_to_va(struct rproc *rproc, u64 da, u64 len)
> >>  {
> >>  	struct qcom_wcnss *wcnss =3D (struct qcom_wcnss *)rproc->priv;
> >>  	int offset;
> >> diff --git a/drivers/remoteproc/remoteproc_core.c
> >> b/drivers/remoteproc/remoteproc_core.c
> >> index 307df98347ba..9e6d3c6a60ee 100644
> >> --- a/drivers/remoteproc/remoteproc_core.c
> >> +++ b/drivers/remoteproc/remoteproc_core.c
> >> @@ -185,7 +185,7 @@ EXPORT_SYMBOL(rproc_va_to_pa);
> >>   * here the output of the DMA API for the carveouts, which should be =
more
> >>   * correct.
> >>   */
> >> -void *rproc_da_to_va(struct rproc *rproc, u64 da, int len)
> >> +void *rproc_da_to_va(struct rproc *rproc, u64 da, u64 len)
> > =

> > This function is exported, don't see any update in consequence...
> > references:
> > https://elixir.bootlin.com/linux/v5.6-rc1/ident/rproc_da_to_va
> > For instance the function rproc_trace_read use it. it quite strange tha=
t my gcc
> > does not warns for the cast but i suppose that some could.
> =

> Agreed, even if len should never have been a signed type since it can't be
> negative. I will try to fix all callers.
> =

> > An indirect consequence is that the len field in rproc_mem_entry struct=
 should
> > probably been updated to u64 to be aligned.
> =

> Ok, I will do that once we settle on the type of len.
> =

> > =

> > I'm still wondering about the use of size_t instead,which seems more ra=
tional
> > from my window.
> > So i you or Mathieu remember it was decided to use u64, please could re=
mind me
> > the arguments?
> =

> I tried to find the notes of a meeting we had for OpenAMP but I did not f=
ound
> them. Anyway, the argument was coming from Tomas or someone else, (I can't
> remember) talking about a 32 bits CPU executing code on a 64 bits acceler=
ator.
> In that case, the size_t type could fail due to being only 32bits on the =
host
> CPU but larger than 4G.
> =

> However, I can't say if it's a real usecase or not... All I can say is
> that keeping it open is probably better if one day somebody comes with su=
ch
> architecture.

In order to support a 32bit AP with a 64bit MCU we'd also have to deal with=
 all
the dma_attr_t in the structure we use.

Also something that became very clear to me while thinking about this patch=
set
is that supporting elf64 does __not__ mean we support 64bit MCU.  As long as
the addresses conveyed by the elf64 image fit within 32 bits we are fine.
Supporting 64bit MCUs is a completely different topic, one that will demand
serious refactoring. =


So moving from "int len" to "u64 len" doesn't give us much.  It doesn't hur=
t to
do it but if @len ever becomes bigger than 31 bits we'll have other problem=
s to
deal with. =


> =

> > As an alternative a check should be added for 32 bits processors to ens=
ure that
> > the size is not higher than
> > its address range capability...
> =

> Agreed.
> I was even thinking about a mecanism for remoteproc drivers to declare th=
e type
> of supported elfs files (such as EM_*, ELFCLASS* and other needed thing).
> Or should it be supported by overriding .sanity_check in drivers  to reje=
ct
> elf64 for instance ?
> =

> Since elf is a "specific format" and that rproc can support other formats,
> I did not want to add a specific elf_sanity_check field to rproc ops.
> =

> Regards,
> =

> Cl=E9ment
> =

> > =

> > Regards
> > Arnaud
> > =

> >>  {
> >>  	struct rproc_mem_entry *carveout;
> >>  	void *ptr =3D NULL;
> >> diff --git a/drivers/remoteproc/remoteproc_internal.h
> >> b/drivers/remoteproc/remoteproc_internal.h
> >> index 493ef9262411..004867061721 100644
> >> --- a/drivers/remoteproc/remoteproc_internal.h
> >> +++ b/drivers/remoteproc/remoteproc_internal.h
> >> @@ -50,7 +50,7 @@ void rproc_exit_sysfs(void);
> >>  void rproc_free_vring(struct rproc_vring *rvring);
> >>  int rproc_alloc_vring(struct rproc_vdev *rvdev, int i);
> >>  =

> >> -void *rproc_da_to_va(struct rproc *rproc, u64 da, int len);
> >> +void *rproc_da_to_va(struct rproc *rproc, u64 da, u64 len);
> >>  phys_addr_t rproc_va_to_pa(void *cpu_addr);
> >>  int rproc_trigger_recovery(struct rproc *rproc);
> >>  =

> >> diff --git a/drivers/remoteproc/st_slim_rproc.c
> >> b/drivers/remoteproc/st_slim_rproc.c
> >> index 04492fead3c8..fc01cd879b60 100644
> >> --- a/drivers/remoteproc/st_slim_rproc.c
> >> +++ b/drivers/remoteproc/st_slim_rproc.c
> >> @@ -174,7 +174,7 @@ static int slim_rproc_stop(struct rproc *rproc)
> >>  	return 0;
> >>  }
> >>  =

> >> -static void *slim_rproc_da_to_va(struct rproc *rproc, u64 da, int len)
> >> +static void *slim_rproc_da_to_va(struct rproc *rproc, u64 da, u64 len)
> >>  {
> >>  	struct st_slim_rproc *slim_rproc =3D rproc->priv;
> >>  	void *va =3D NULL;
> >> @@ -191,7 +191,7 @@ static void *slim_rproc_da_to_va(struct rproc *rpr=
oc, u64
> >> da, int len)
> >>  		}
> >>  	}
> >>  =

> >> -	dev_dbg(&rproc->dev, "da =3D 0x%llx len =3D 0x%x va =3D 0x%pK\n",
> >> +	dev_dbg(&rproc->dev, "da =3D 0x%llx len =3D 0x%llx va =3D 0x%pK\n",
> >>  		da, len, va);
> >>  =

> >>  	return va;
> >> diff --git a/drivers/remoteproc/wkup_m3_rproc.c
> >> b/drivers/remoteproc/wkup_m3_rproc.c
> >> index 3984e585c847..91485b467407 100644
> >> --- a/drivers/remoteproc/wkup_m3_rproc.c
> >> +++ b/drivers/remoteproc/wkup_m3_rproc.c
> >> @@ -80,14 +80,14 @@ static int wkup_m3_rproc_stop(struct rproc *rproc)
> >>  	return 0;
> >>  }
> >>  =

> >> -static void *wkup_m3_rproc_da_to_va(struct rproc *rproc, u64 da, int =
len)
> >> +static void *wkup_m3_rproc_da_to_va(struct rproc *rproc, u64 da, u64 =
len)
> >>  {
> >>  	struct wkup_m3_rproc *wkupm3 =3D rproc->priv;
> >>  	void *va =3D NULL;
> >>  	int i;
> >>  	u32 offset;
> >>  =

> >> -	if (len <=3D 0)
> >> +	if (len =3D=3D 0)
> >>  		return NULL;
> >>  =

> >>  	for (i =3D 0; i < WKUPM3_MEM_MAX; i++) {
> >> diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
> >> index 16ad66683ad0..f84bd5fe0211 100644
> >> --- a/include/linux/remoteproc.h
> >> +++ b/include/linux/remoteproc.h
> >> @@ -374,7 +374,7 @@ struct rproc_ops {
> >>  	int (*start)(struct rproc *rproc);
> >>  	int (*stop)(struct rproc *rproc);
> >>  	void (*kick)(struct rproc *rproc, int vqid);
> >> -	void * (*da_to_va)(struct rproc *rproc, u64 da, int len);
> >> +	void * (*da_to_va)(struct rproc *rproc, u64 da, u64 len);
> >>  	int (*parse_fw)(struct rproc *rproc, const struct firmware *fw);
> >>  	int (*handle_rsc)(struct rproc *rproc, u32 rsc_type, void *rsc,
> >>  			  int offset, int avail);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
