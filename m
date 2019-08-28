Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 726509FDF7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 11:10:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iK7OP1hj7EQzjX2A1wmVfeam6EZ7Zc0zij2c/8p1Mz0=; b=RszmT9YxAjEjnfeUXWxW/Us5t
	Ac6G2JbRY3ajanGRa0k2xhj1KM5nO0mbheNVGxyCp7GbfXy5aZn1U0yfYVlG7e9cuf7dG0YH8Z+09
	ek9iPRvcIm1198zuqrqqFmMMAMNZ563GWTKwzmXk9kL64AWMb85NAaBINcASE9NaILrmaHLspOUtM
	zWzKQpCrE8kD9au6uhQHQfdz5eVFaR5UrT7K5sbNPcg3BoIK1bzmNQiEp+OTD1TqeLM0uDMhkSVtK
	4MQLU/rnJFsJuAjup022LRZo76E+ZfxXGjmgpKnSEjCSz1a3mveYXqL0UjlXcim26axrVQrG0lSOA
	bHQ7jvFmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2tyY-0001vv-43; Wed, 28 Aug 2019 09:10:46 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2tyJ-0001vV-Rm
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 09:10:33 +0000
Received: by mail-wr1-x443.google.com with SMTP id j11so862305wrp.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 02:10:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=OFlqAp2x5XoWNK93bhZ/9/y1+CkqFqA2O+2huwenNm4=;
 b=sdUOzUxi4fKV+zG4ZfoHVEK81bwkcxfpuIhGWI7b6/EBRURefqRs7GEn66RrwT0tmz
 D7DnOGAjuVNXUQL10RlayiJ+JrpvdMCYUmGz4pVZdfX8k1h11qXP5vcesIzPsPGWY/6x
 cVyE+XVt38OddAoub9fkpWExOzqManJglG9EP8oJWgO7eTLWRMwpbUhAd2eKaK+fVITm
 SUZKD4920Z458M7Z7lrTk7tLLQ2kfpR/Ci+dsSNrEwIF06HlczH1CzP+Zr//4KW1SH2H
 LCXMzMIe8t9b6TV9NKiC65RWc+b6o9hANNZXJQv4h51Hy7od7gEUpXttAvfwiKmIgVQR
 q/tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=OFlqAp2x5XoWNK93bhZ/9/y1+CkqFqA2O+2huwenNm4=;
 b=KumrONAfKRQP78KbyoHxiRpxCEyA+szXiL9Z4j7qQOGZLmc3j2upq97qNlIj5TxZ0I
 kQimxIJdxAX2McbadU77f/bb9nDqjviMtXoiXSWxFMqpLFS3UZREmbcXBJDBp03ZAs1d
 WrhB9n7vy1uZ5WjXc1vG+4dUw7OtpM1T4tTymMMHG396QTTW2LY9yLw0HZ704i6GFlX6
 2ql2hyaMSB+afBmTquEI89eVG/DBEJrJiw76Uo54QL3/sU7Fdm/yxa36c00DgDiPdXpJ
 CL43oIb4QOEB7gqY3njVPUQoYJnbbpDdbVFrD/JlmfAFZOgPduaXusAAoMJMfRxhgNi2
 yqZw==
X-Gm-Message-State: APjAAAX2CZrapffTbTzflPvUkRIu4CyBJNwMpno52Rc95Jn8OyeSQNch
 +Pe66yxK9+tIpfqwMZ36624=
X-Google-Smtp-Source: APXvYqxRnsrd2FzTK9oUAQ5WfWWNaFzn4KLktyjySddPaAxaVyLRqyxBW/Iv7/4BkVhqqQjTR3iKhA==
X-Received: by 2002:adf:d1a4:: with SMTP id w4mr2877531wrc.331.1566983430193; 
 Wed, 28 Aug 2019 02:10:30 -0700 (PDT)
Received: from localhost (pD9E51890.dip0.t-ipconnect.de. [217.229.24.144])
 by smtp.gmail.com with ESMTPSA id n14sm5971066wra.75.2019.08.28.02.10.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Aug 2019 02:10:29 -0700 (PDT)
Date: Wed, 28 Aug 2019 11:10:28 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH 0/6] PCI: tegra: Enable PCIe C5 controller of Tegra194 in
 p2972-0000 platform
Message-ID: <20190828091028.GB2917@ulmo>
References: <20190826073143.4582-1-vidyas@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20190826073143.4582-1-vidyas@nvidia.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_021031_908054_7B098FEA 
X-CRM114-Status: GOOD (  12.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mperttunen@nvidia.com, mmaddireddy@nvidia.com, kthota@nvidia.com,
 gustavo.pimentel@synopsys.com, linux-kernel@vger.kernel.org, kishon@ti.com,
 linux-tegra@vger.kernel.org, robh+dt@kernel.org, linux-pci@vger.kernel.org,
 bhelgaas@google.com, digetx@gmail.com, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: multipart/mixed; boundary="===============0267131576990422216=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0267131576990422216==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rJwd6BRFiFCcLxzm"
Content-Disposition: inline


--rJwd6BRFiFCcLxzm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 26, 2019 at 01:01:37PM +0530, Vidya Sagar wrote:
> This patch series enables Tegra194's C5 controller which owns x16 slot in
> p2972-0000 platform. C5 controller's PERST# and CLKREQ# are not configure=
d as
> output and bi-directional signals by default and hence they need to be
> configured explicitly. Also, x16 slot's 3.3V and 12V supplies are control=
led
> through GPIOs and hence they need to be enabled through regulator framewo=
rk.
> This patch series adds required infrastructural support to address both t=
he
> aforementioned requirements.
> Testing done on p2972-0000 platform
> - Able to enumerate devices connected to x16 slot (owned by C5 controller)
> - Enumerated device's functionality verified
> - Suspend-Resume sequence is verified with device connected to x16 slot
>=20
> Vidya Sagar (6):
>   dt-bindings: PCI: tegra: Add sideband pins configuration entries
>   arm64: tegra: Add configuration for PCIe C5 sideband signals
>   PCI: tegra: Add support to configure sideband pins
>   dt-bindings: PCI: tegra: Add PCIe slot supplies regulator entries
>   arm64: tegra: Add PCIe slot supply information in p2972-0000 platform
>   PCI: tegra: Add support to enable slot regulators

Hi Vidya,

when you resend with review comments addressed, can you please reorder
the patches slightly? I think it's more natural to order them like this:

    dt-bindings: PCI: tegra: Add sideband pins configuration entries
    PCI: tegra: Add support to configure sideband pins
    dt-bindings: PCI: tegra: Add PCIe slot supplies regulator entries
    PCI: tegra: Add support to enable slot regulators
    arm64: tegra: Add configuration for PCIe C5 sideband signals
    arm64: tegra: Add PCIe slot supply information in p2972-0000 platform

Or perhaps even like this:

    dt-bindings: PCI: tegra: Add sideband pins configuration entries
    dt-bindings: PCI: tegra: Add PCIe slot supplies regulator entries
    PCI: tegra: Add support to configure sideband pins
    PCI: tegra: Add support to enable slot regulators
    arm64: tegra: Add configuration for PCIe C5 sideband signals
    arm64: tegra: Add PCIe slot supply information in p2972-0000 platform

That makes it more obvious that patches 1-2 need an Acked-by from Rob
and patches 1-4 need to go through Lorenzo's tree and that I'll pick up
patches 5-6.

Thierry

--rJwd6BRFiFCcLxzm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl1mRQQACgkQ3SOs138+
s6GoKg//c0Y8aNQgON5iL5nm5/UbKfGB8YDwT6hVWpzkOowmnglV2QSXZG73j4mx
hjXJuiSrXTTDgdhKhDYSv+xxG+SB3sUMCtxG6BkPxjMgElw8PuLo/qfjTzHIGN7P
4OzB/u3fInyfoO4lrb1bVqR/DysGqpyuX/eoGHtAD99UKvuaCoPq/YuRMuEJB9uM
P/iNX66JVhfYRag1BTGdkawWxTHhZUujAIXWJRyDvNN43xA30Y401ZZIzrKnvqCg
BLv7/bCXpx1i9jN5WtvTwjp1MbgjrKrTI5eMe0yrHyI/JuFC7mqWEIW+pNuO7GYB
taA7C27Yod+pvaGbiacVpzRFZMXaiDxhE3/DuxjQ3wD4decVzPGMh3adHmAhISCM
LMwHxo0IwTZTZPubNkLRuymqy+r5bGYNd8LkNdy2pVs0awL/JkfkIQTNkMD97/O9
9giB1qsTILOXPeD2nI/xHlQvYu8nmwldvefoh+c815Ym17IaVRrXCZwqzudVBuvu
+xUM2rpbLEXtqrIK6g18q8rWdpO4wHFJcqrcjX8fzdaMOPpSDVxD7TESYLt8rQ70
IwylYJxXWR7yR2YfOAv5x8tLTzbxkju/NU8TXBooVDoqiZGl9wNOFbsjhr2VCxQs
u97ZCPtSZ3x4a2yFlVMHBStYPz4XZUA451oncHfju3K8tviyaTQ=
=Y3Mi
-----END PGP SIGNATURE-----

--rJwd6BRFiFCcLxzm--


--===============0267131576990422216==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0267131576990422216==--

