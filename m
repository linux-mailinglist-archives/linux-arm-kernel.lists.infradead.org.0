Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A67B89B92
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 12:34:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jTxGzwyJ2Ajc5u+hpgi5GzjZA3lEaZZfU/gSn94jDwY=; b=iRGANA5ceCz4a+Ox530lzWjZO
	d3Rtf8VvHNOZoymVdEr2IhUqQ5+uC/tDLqWEZKXR658hFKPCCbsZCjarqbCylABq9vHU2BUSRzWqB
	vGfLoFZUSTsF+TsywCbIMf2L4VesLnpQqCzMIOZk6e/gBmdKHN/ApsPhZ7cAtgU0OiRZAN6/EkX58
	tWIoB6yiTdYAlSxi4lEfAiTwxx41lzIzn7Twszte7VFsAnpgtFluHET+3lTZ5nmNbBw9iCV5C/d+0
	GQeUFgbk2zS+c0rw2AWvjgZJS8l8/CSrQCIK0z1+Y3r6ZId+3hU0XrNa0O+enU1MIeNrE0gxV6lZv
	rmXSnNnBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx7ej-0001d0-1t; Mon, 12 Aug 2019 10:34:25 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx7eX-0001cL-Oj
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 10:34:15 +0000
Received: by mail-wr1-x444.google.com with SMTP id z1so104107748wru.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 03:34:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=dtSTTUUBqdhvdDXLf5hsOIn63I5eQ1MYrFt/Dlyzq7c=;
 b=lVImMMz2WSbCGkQ78isy9YytFeejo4tBiKbmYGYa1Dg+7NeKJUQkvI0v9RlzObW26N
 TeHQC+sTskIWViBkdRT/sBofC2pkPxiZvV+rxeFihw4Xt/WhkfvG2Einp+iWgNMmEpW8
 uqSe5NEJtQ1V8yf8jdPVgJRKzfv/jU9xO8l7Ris74Vittim5wCd3qL+c1jhg4W72x/LA
 h8tv7VjCHZsZl5h95SVVBtdZ4Ibats461YNXWenyj8Oo3dXPrGCNdFIbupUwIR80HuCo
 BOcxBVUPso/dmiYuJKzklwN72bHGrIwo4l+R2mEnDjAVSQqCdHNqfamL8WIsXkfCcs4X
 2gFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=dtSTTUUBqdhvdDXLf5hsOIn63I5eQ1MYrFt/Dlyzq7c=;
 b=bTAoQl4hO98DPnPCcYTsgk3+KNvNfY4VHZyJMOR4mMxeW/aVIF1DM46BMvkKLXBpJd
 BiAFfJ/Nkw9rqFplW32hrHlsvOf4DmBqhzQb4C868obnpQ4l/t1kd2AgDBRDxtQqOmOB
 irW9bza797+8kZYvEUommVQTwRE9sMOAAAiFlVdycC59iiH4zsMpI2xDoSK2NloMrXJv
 dvYiGvKMT3VjuSZwY/w/0l2aWfd+h8jYOvRSaINJ37JDZUzv2hrtc9ujnOEQ2egHnMC/
 PHNWRCqy3Lv7yLwmnpUzzK7mEiTAw6eREjzh0MLY6s6b+jIgqtbxT1RZoLhSPLp32zfN
 CM7A==
X-Gm-Message-State: APjAAAUNiRPJrxlNGmHF+vI6zn320k2eBDZHa5ujFHR+0MHtEBRNIyjJ
 1wBcLPwkqPL3eynYFu1Yhs8=
X-Google-Smtp-Source: APXvYqxDE7RJ2i6s8am7/VWRRZXy1R+AOldVj3UiB2rbBd+7FM7mAM0+8hLQWuYHVbKSkxcjIp5e4A==
X-Received: by 2002:adf:f3c1:: with SMTP id g1mr40412123wrp.203.1565606052462; 
 Mon, 12 Aug 2019 03:34:12 -0700 (PDT)
Received: from localhost (pD9E51890.dip0.t-ipconnect.de. [217.229.24.144])
 by smtp.gmail.com with ESMTPSA id i5sm7610442wrn.48.2019.08.12.03.34.10
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 12 Aug 2019 03:34:11 -0700 (PDT)
Date: Mon, 12 Aug 2019 12:34:10 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V15 00/13] PCI: tegra: Add Tegra194 PCIe support
Message-ID: <20190812103410.GO8903@ulmo>
References: <20190809044609.20401-1-vidyas@nvidia.com>
 <20190812102519.GN8903@ulmo>
 <aa666d78-43b3-dbea-dac6-386deaca3e12@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <aa666d78-43b3-dbea-dac6-386deaca3e12@nvidia.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_033413_824067_40698B24 
X-CRM114-Status: GOOD (  15.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mperttunen@nvidia.com, mmaddireddy@nvidia.com, linux-pci@vger.kernel.org,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 kthota@nvidia.com, kishon@ti.com, linux-tegra@vger.kernel.org,
 robh+dt@kernel.org, gustavo.pimentel@synopsys.com, jingoohan1@gmail.com,
 bhelgaas@google.com, digetx@gmail.com, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: multipart/mixed; boundary="===============3454654768769888216=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3454654768769888216==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mvuFargmsA+C2jC8"
Content-Disposition: inline


--mvuFargmsA+C2jC8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 12, 2019 at 03:59:39PM +0530, Vidya Sagar wrote:
> On 8/12/2019 3:55 PM, Thierry Reding wrote:
> > On Fri, Aug 09, 2019 at 10:15:56AM +0530, Vidya Sagar wrote:
> > > Tegra194 has six PCIe controllers based on Synopsys DesignWare core.
> > > There are two Universal PHY (UPHY) blocks with each supporting 12(HSI=
O:
> > > Hisg Speed IO) and 8(NVHS: NVIDIA High Speed) lanes respectively.
> > > Controllers:0~4 use UPHY lanes from HSIO brick whereas Controller:5 u=
ses
> > > UPHY lanes from NVHS brick. Lane mapping in HSIO UPHY brick to each P=
CIe
> > > controller (0~4) is controlled in XBAR module by BPMP-FW. Since PCIe
> > > core has PIPE interface, a glue module called PIPE-to-UPHY (P2U) is u=
sed
> > > to connect each UPHY lane (applicable to both HSIO and NVHS UPHY bric=
ks)
> > > to PCIe controller
> > > This patch series
> > > - Adds support for P2U PHY driver
> > > - Adds support for PCIe host controller
> > > - Adds device tree nodes each PCIe controllers
> > > - Enables nodes applicable to p2972-0000 platform
> > > - Adds helper APIs in Designware core driver to get capability regs o=
ffset
> > > - Adds defines for new feature registers of PCIe spec revision 4
> > > - Makes changes in DesignWare core driver to get Tegra194 PCIe working
> > >=20
> > > Testing done on P2972-0000 platform
> > > - Able to get PCIe link up with on-board Marvel eSATA controller
> > > - Able to get PCIe link up with NVMe cards connected to M.2 Key-M slot
> > > - Able to do data transfers with both SATA drives and NVMe cards
> > > - Able to perform suspend-resume sequence
> >=20
> > Do you happen to have a patch for P2972-0000 PCI support? I don't see it
> > in this series.
> It is already merged.
> V10 link @ http://patchwork.ozlabs.org/patch/1114445/

D'oh! Indeed.

Thierry

--mvuFargmsA+C2jC8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl1RQKIACgkQ3SOs138+
s6GLXg/8DOJVJ0fFXPAXXeHi86AGgUkBYnQUYPlOJXETCmROhZoJ5epgGbfRhQX9
QjEAXF7CNF6/FlU/0myVBYhGu+y2W5SkY+4dhOn1LLhTOS66MxNzuEvt7jMC7X6P
n8aOuS1nWlIjrTFRHRzwEQqLRIhhoInAo0Vyj+eOTUs3fk8eqDQ3pRLKx9BIJEwc
nhtoo5Dc15R7fHvBvwkP1349UHm6eodDr2Wo3tSa4IHj4QVpaaYhWpvujT7MvISU
dBznNBWqoLq7QAi3LFM/Wc0jgKZGriDnxQ2wKNbedDwmvF+FJsiBGlu+++Xg+enp
g/KKv9ZLMAWO0U8RD+j64NL6/325aBbaGZ+L1CFEscZPFuk7ivMspDAsMAjTqYOK
6X3QBqyHRUnHIHxKtYvnsI5U6e0y8lnjQCdnL6tNsq7qLdtHvC9o1xcMUeS/KOeM
TEPTztARXSzibsU5ebgDNX0Q/ioonwY5484gRPfNAmyOb+Vk0i8iCcZXlC6PpeZ5
GkF3LH8XAKBJ5QEoexe+o5qvZemQubl+hwrWViq1ySA8+3nHV0gEhkjt8dChfh/f
6NA0RMm3PyUtINdLP7kGOuZEc4ScNqszbsngqZuE/IgPj/2M5cWSzxnnad0OXG7R
0TnzLQG2M3PRP4bmxEb5jzTk+apORKyFOw6PKg+VkKACFN6P0F8=
=ZcJU
-----END PGP SIGNATURE-----

--mvuFargmsA+C2jC8--


--===============3454654768769888216==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3454654768769888216==--

