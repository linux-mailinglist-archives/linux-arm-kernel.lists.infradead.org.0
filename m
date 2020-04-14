Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 248AD1A80E7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 17:03:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0H+TYvPXyAL7yJYQuDHiIkn0Vdxf9wCyTxL3UL9sQtw=; b=aK0k5oJTWoWScFjKquUx7giy2
	3QzlsHVT3o5SoRYGXBCP84xW47bRdkTOB8HgXlslwdiM0Q9EMg56xOq4gJY8849KrTtruu8nSXs6y
	0oe7wgPo/coTwdhpcAzOzIfqEkB3ZccLu7fz5/Msdf3LdnsD1PYVFsSD3VsnFzlTvkmsF511L4Lzv
	Dq7r6v83oPisXnDqZKGu45XalisGScpJ+8RSB8oa/GrBFR/cBUoXSuekKUxpbDhvA94TeEp/jeXj4
	w3dZqp27f9yZgHGJAXsh8PCy29z0PzsTUteaVGk3qHJcv2OFperqDvct7azHP4a9DhCuWFxOTPgJw
	U84KURV+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jON5j-0006Xf-CB; Tue, 14 Apr 2020 15:03:11 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jON4x-0006Lk-9D
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 15:02:24 +0000
Received: by mail-wr1-x444.google.com with SMTP id b11so3320670wrs.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 08:02:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ViI/byXYkNTTv5WozqHMnLuUZ5EboqYJdzyRMLlG4+I=;
 b=gxQ2m3DRGB6KjDN+/gGk/ABqsAvAFy8Q4jvwgUUVnBmQQPs22L+air6X+vbNaFjrG+
 m4BazoDB9Mb8bLYUOVCrdxHbqQ1y4dzM+Pr66Ieb/1Zo6Cp8blP2LKu60alUspymuN4K
 DsLEmtbTiR1f/OzFQAx/TLHlzhaWdB7AwFV7w3JSqpxXeAItCpkfm7mQ/16goxGzsmfe
 E3A5W7R1FJTkBvUdq2JHuj/VvWZcGiu7gmL99+jvy3TFxDmMzqdpww2yxXj2qjxCPqxv
 3XBMMFkQ6IJErv8H8BBWoxmdMJY+y2cihEFkFyLkZiQECDZvXuA4odCeXWYUMHqvywvv
 QU2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ViI/byXYkNTTv5WozqHMnLuUZ5EboqYJdzyRMLlG4+I=;
 b=WB83ztvHhdSUFp/arlf9s+kSuN+/QO+TQineEv91bFHfmTC4WYFsd3huhs4OWyeVym
 C864/hUnBaauBAuGKYMKvmoY2kY3OnCwoMkVTSNpTg0gBU8jSyiR/zBRHtV5r6h9GFJm
 ZWuVNxUVKhbiER6AXG3XCkzR8mCt5cZGsriGRt3mXLYxBmxDTUUJBnTj+jwYLpJIlMd7
 uFyNLkaa6srty3UZgeHymdAkULLZ9WM6JLhLpa2K3kxdDISS65ArugBJzClcfHLQuLS4
 hw0BYhvvhYi0kqtjKNBZbl8p+bDTIeqg50TiAfdm3dxt89MWaCVsRqZpLSLTSZSpthUo
 OWMw==
X-Gm-Message-State: AGi0Publd/5kmC23Q0xKhUfT6Nnr3ikJkUbRnOp9HvRhl+56qBypSpsf
 DRnFX5lqfEGuQJtKDZ5eIEU=
X-Google-Smtp-Source: APiQypK4+NIRYHEoApUJZAfNPlDoh2Xh3fKIbelUsv2sesJnlhQa+MjZoKcEwDhkrZyCCyBsPmqPEQ==
X-Received: by 2002:adf:8149:: with SMTP id 67mr25052146wrm.60.1586876541371; 
 Tue, 14 Apr 2020 08:02:21 -0700 (PDT)
Received: from localhost (pD9E51D62.dip0.t-ipconnect.de. [217.229.29.98])
 by smtp.gmail.com with ESMTPSA id y9sm18508247wmm.26.2020.04.14.08.02.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 08:02:20 -0700 (PDT)
Date: Tue, 14 Apr 2020 17:02:19 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v6 09/14] memory: tegra: Add EMC scaling support code for
 Tegra210
Message-ID: <20200414150219.GK3593749@ulmo>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
 <20200409175238.3586487-10-thierry.reding@gmail.com>
 <3e518dfa-cb3d-e2ce-a9b8-5e143e02fc61@gmail.com>
MIME-Version: 1.0
In-Reply-To: <3e518dfa-cb3d-e2ce-a9b8-5e143e02fc61@gmail.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_080223_347701_CDF17B69 
X-CRM114-Status: GOOD (  12.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Jon Hunter <jonathanh@nvidia.com>,
 Rob Herring <robh+dt@kernel.org>, Joseph Lo <josephl@nvidia.com>,
 linux-tegra@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4163998088704717173=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4163998088704717173==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fLj60tP2PZ34xyqD"
Content-Disposition: inline


--fLj60tP2PZ34xyqD
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 10, 2020 at 02:56:53AM +0300, Dmitry Osipenko wrote:
> 09.04.2020 20:52, Thierry Reding =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> ...
> > +#define CLK_RST_CONTROLLER_CLK_SOURCE_EMC		0x19c
> ...
> > +#define CLK_RST_CONTROLLER_CLK_SOURCE_EMC_DLL		0x664
>=20
> I'd suggest to double check all the macros and remove everything unused,
> to not pollute the code.

I recall checking most of these, but I'll make another pass to see if I
can spot more that I can drop.

> ...
> > +#define TRIM_REG(chan, rank, reg, byte)					\
> > +	(((EMC_PMACRO_OB_DDLL_LONG_DQ_RANK ## rank ## _ ## reg ##	\
> > +	   _OB_DDLL_LONG_DQ_RANK ## rank ## _BYTE ## byte ## _MASK &	\
> > +	   next->trim_regs[EMC_PMACRO_OB_DDLL_LONG_DQ_RANK ##		\
> > +				 rank ## _ ## reg ## _INDEX]) >>	\
> > +	  EMC_PMACRO_OB_DDLL_LONG_DQ_RANK ## rank ## _ ## reg ##	\
> > +	  _OB_DDLL_LONG_DQ_RANK ## rank ## _BYTE ## byte ## _SHIFT)	\
> > +	 +								\
> > +	 (((EMC_DATA_BRLSHFT_ ## rank ## _RANK ## rank ## _BYTE ##	\
> > +	    byte ## _DATA_BRLSHFT_MASK &				\
> > +	    next->trim_perch_regs[EMC ## chan ##			\
> > +			      _EMC_DATA_BRLSHFT_ ## rank ## _INDEX]) >>	\
> > +	   EMC_DATA_BRLSHFT_ ## rank ## _RANK ## rank ## _BYTE ##	\
> > +	   byte ## _DATA_BRLSHFT_SHIFT) * 64))
> > +
> > +#define CALC_TEMP(rank, reg, byte1, byte2, n)				\
> > +	(((new[n] << EMC_PMACRO_OB_DDLL_LONG_DQ_RANK ## rank ## _ ##	\
> > +	   reg ## _OB_DDLL_LONG_DQ_RANK ## rank ## _BYTE ## byte1 ## _SHIFT) =
& \
> > +	  EMC_PMACRO_OB_DDLL_LONG_DQ_RANK ## rank ## _ ## reg ##	\
> > +	  _OB_DDLL_LONG_DQ_RANK ## rank ## _BYTE ## byte1 ## _MASK)	\
> > +	 |								\
> > +	 ((new[n + 1] << EMC_PMACRO_OB_DDLL_LONG_DQ_RANK ## rank ## _ ##\
> > +	   reg ## _OB_DDLL_LONG_DQ_RANK ## rank ## _BYTE ## byte2 ## _SHIFT) =
& \
> > +	  EMC_PMACRO_OB_DDLL_LONG_DQ_RANK ## rank ## _ ## reg ##	\
> > +	  _OB_DDLL_LONG_DQ_RANK ## rank ## _BYTE ## byte2 ## _MASK))
>=20
> My eyes.. :P

Heh... yes, this is pretty bad. At least the code at the callsites is
clean.

Thierry

--fLj60tP2PZ34xyqD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl6V0HsACgkQ3SOs138+
s6FXCg/7B0bMQSGWtJXVBNJfMTn8M0O+JF56fTgGvLoz+9OjrduZ3flJ5t1MVTvp
o+MoMG4zK2JjlnMcMLG5o/6hSbLU0kAKJ7BlHbwgV252liWGABe3h0xV8923aWRi
vbm8f1v9sab2U/KJGUdZxeSZ9NfrVzCzGzBlZmynLF6fKhnymS1usyKChKqwlvv2
PZAZKF4hNDizXxy1ZpmSJHoZRsZ94qSj2NuAvLxMjx0Hmv6jJ8D7AZuY/GKeCZPN
ByuGMahGXXaE8JaOzgxsfHx0TEC1hKb4Y017xgHpZzMU50ck4eqFJb/nHXBVddPH
KjYmaDzYIfSqtYRrmPVmloUBVjb9Y1EDspe+5TbQvpSwSLjNFPeM0z5dZXrZU4w0
W4bvghLzaZvgvC9thmTZur7QTcOOco3BRTIxv8hzA/2FO/oWX9p1CGbR6Ddsg/ly
SzhUu5CUKCrKdob6YRTpfT+5CN+zCzR7dt+XJ2LcR1lg0UnCCMnmyf2kJUNdkwZp
lWQQTm4pFrHNRv0a8DNN6ma4fK0yyS//7bJQVM/sGJZ8hnloT6skT8hUyfre9d9f
AzpQypnVyqMv2PTFYthPYkF6CaLHHgE/NU4yUyQHyNIBCQT4OHZZZXBlS42azM10
6/79zjdxTiIR6C0mHgIWY6kgTNiL7RiU9ctwpI9vnCrp+YzPfy0=
=SSdO
-----END PGP SIGNATURE-----

--fLj60tP2PZ34xyqD--


--===============4163998088704717173==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4163998088704717173==--

