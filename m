Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 376A989B6D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 12:25:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uBw40nu3AMug5NBf7HfFEAykBrXrliBk/gGNRXw7+VU=; b=kY8iHRLN860c3trmjIlKF9rbq
	8rPYQlmRM3pbOAKDqaorWmUotywaIshpn9hAPqYJYgj8es+quV26mUh4WpE1668Pws6YWS0E5k9yE
	3oL12DcHhdZH2RpV8U1+vu89wz2kOSlm+hTww2P0vfIwiIJBk6B/4yIquzyri6ffAc7gTc845D9AN
	tTxJoYIGx1eKpZUBVkpm9KrzAQtaadDb06izIlw3IZiRw4ysgatTIwRDNvkyDPBFD3LR4RH/LVN3n
	iQUE3WipN1gJZ9wna2GLJykJ3+BBZeYX3dCekeq1fYoz/kNabdCaryv4q5L1TPO9XvZH+BBuzy7bb
	UggVCuRJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx7WD-0007FQ-4f; Mon, 12 Aug 2019 10:25:37 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx7Vz-0007Ee-Tu
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 10:25:25 +0000
Received: by mail-wr1-x444.google.com with SMTP id q12so13822602wrj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 03:25:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=PIAupDPuXjY8vH3r8F2CpCcWnZ4atzq5h0b+kQLhH+s=;
 b=OCwdg+fJef/L9XVuxGY6Alc24Gm4QyZwIk/wWZcJYtfVz0llGuYy8hWIL6dE+CA3Dw
 foGBga0+uFwLxB9DqB/HFPOP0dD/j5Re/mq7r0FkzKjWRgMOBaatS6DAYsW64Q0IoCgT
 v3frKbqCMimQUei0PcaZs3yRncEgP3eVPiVmT2TwOXUAMZDNRzujsM57IKh+zZ1A5DAI
 kOrbhdFdgonKD+eFZttxFiDHiUk2waWwVBdVjv0BsA0OHm9PhEsvKBor4AACD2p938D9
 rKHREm9//MXZEIgDLZ3TArowHQJ0UaDHyG7/ITkQrpNG3ELS+qdc27o00i8tiI5jd3ZL
 ZbTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=PIAupDPuXjY8vH3r8F2CpCcWnZ4atzq5h0b+kQLhH+s=;
 b=WrvunRPxjBNgL3qckeJisEiombe5/MLopeCWi/NLOoPthGVjW++cAWfBKByi6nhnEm
 FH+EJ8zCFsIW64AbBHXmEc+rkPWB5sdZ4IwYoJIrA03UK2xzvTp/zDbEfAQLRKIglqwX
 SFjsLYqOSJoTPC3NUo+SVhJMNxxniFdWV/uuX1TutbT9qwmfTWDmV8r432CRHoY/Z8rx
 MxfBLJB5fYlBld+YmnkKI9uflwqxLOP3snpzqgP4/HUGe67WhfBc5W9WkdbpVhUnWGuE
 1cNoI40lU6S5OEPpzj8niuO8YFvBCjgWBmKPriHoIOvomQo1UH9yozvAlanDD6i0B0Jw
 IZHA==
X-Gm-Message-State: APjAAAVHfuMCMhaQnwZz2RFdlbyvNnRJVq3kPggu/X4++Op+xvLvAZMI
 yAm4PzEyfzuBgihTOUi+MKI=
X-Google-Smtp-Source: APXvYqzOg/oqt5FDmrHHGm4UwI9Lwb2F5Q0/VdEDMZCcUfcUWnykIVeThG56IyoyM5PHpJ5vVFM8hA==
X-Received: by 2002:adf:a2cd:: with SMTP id t13mr20581202wra.251.1565605522275; 
 Mon, 12 Aug 2019 03:25:22 -0700 (PDT)
Received: from localhost (pD9E51890.dip0.t-ipconnect.de. [217.229.24.144])
 by smtp.gmail.com with ESMTPSA id a84sm16437631wmf.29.2019.08.12.03.25.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 12 Aug 2019 03:25:20 -0700 (PDT)
Date: Mon, 12 Aug 2019 12:25:19 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V15 00/13] PCI: tegra: Add Tegra194 PCIe support
Message-ID: <20190812102519.GN8903@ulmo>
References: <20190809044609.20401-1-vidyas@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20190809044609.20401-1-vidyas@nvidia.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_032523_965995_C32E4991 
X-CRM114-Status: GOOD (  12.30  )
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
Content-Type: multipart/mixed; boundary="===============6138060843856164482=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6138060843856164482==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="e8/wErwm0bqugfcz"
Content-Disposition: inline


--e8/wErwm0bqugfcz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 09, 2019 at 10:15:56AM +0530, Vidya Sagar wrote:
> Tegra194 has six PCIe controllers based on Synopsys DesignWare core.
> There are two Universal PHY (UPHY) blocks with each supporting 12(HSIO:
> Hisg Speed IO) and 8(NVHS: NVIDIA High Speed) lanes respectively.
> Controllers:0~4 use UPHY lanes from HSIO brick whereas Controller:5 uses
> UPHY lanes from NVHS brick. Lane mapping in HSIO UPHY brick to each PCIe
> controller (0~4) is controlled in XBAR module by BPMP-FW. Since PCIe
> core has PIPE interface, a glue module called PIPE-to-UPHY (P2U) is used
> to connect each UPHY lane (applicable to both HSIO and NVHS UPHY bricks)
> to PCIe controller
> This patch series
> - Adds support for P2U PHY driver
> - Adds support for PCIe host controller
> - Adds device tree nodes each PCIe controllers
> - Enables nodes applicable to p2972-0000 platform
> - Adds helper APIs in Designware core driver to get capability regs offset
> - Adds defines for new feature registers of PCIe spec revision 4
> - Makes changes in DesignWare core driver to get Tegra194 PCIe working
>=20
> Testing done on P2972-0000 platform
> - Able to get PCIe link up with on-board Marvel eSATA controller
> - Able to get PCIe link up with NVMe cards connected to M.2 Key-M slot
> - Able to do data transfers with both SATA drives and NVMe cards
> - Able to perform suspend-resume sequence

Do you happen to have a patch for P2972-0000 PCI support? I don't see it
in this series.

Thierry

--e8/wErwm0bqugfcz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl1RPo8ACgkQ3SOs138+
s6H7Pg//dh1al8/AaKqfOXUV7vJCuuAAP7eFAzEZssLuFIavDHghC4X+d5w0OsdZ
eOnaJyrojkIFvpialETEQ3G+MLw2HyFoBt+f1G827JsyxMvVe+LDkGa2skg79F1y
wa3gCp2zTkMM1mzS7cfm4wxGSdN1nUuuu63kMvBHpBOALTYnWeGv6hov5/rO+Yqg
B9Wjbwu2rzNjNKirRW98/nUL5A9Ilxd4rVBu7o7JLz0VSoCdZ/5+DpursUTzZZz/
9EbUFzy7pngftxrHxOL4DabxegjdehBj5JKQ7vR1ORmSo/9iukVrXh8dptqayijU
8KUUWoYpnXmCCjBIAoc7mBwrwGfqZm9hF9rGedCILnpWxlVLgrXCxClsvBUn84TL
db/VKF34Qo20wUfEPwUl0k5QjFwUc369XjfBEhBibkIXQb8+/4pA0EvolU7kedv7
VrcLkUkEEPgGpTieaEKN11N3gARx8sEDde0muyKMG/bnRQmnvbq65nT0iiNI+lbj
anvrkE3goyCno6raR0u7JLiWxCOgLVXA94aY+95h+16XpG6+jSQzgJfYWV0Xhi2L
yPAuIH5zKzz2uzzbyqa4eF39lW0P4oBxghVt8jEvUfuqzcTXnR4VenQaciTjUb2A
4S5Rtd/jNgp48OFTOpJTxcSPIBRZLzPKZnGGRhFGrpWZWUGikmY=
=BYfL
-----END PGP SIGNATURE-----

--e8/wErwm0bqugfcz--


--===============6138060843856164482==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6138060843856164482==--

