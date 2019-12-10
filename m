Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C09DD1187AD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 13:09:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=h+u8iADhBYLA/hg3Tod8zZmI7Yt7Hz1hqRLA1XtovvY=; b=ayehlnCNiB/YYBNmiTXU2UHUJ
	kBxPJHy5rit2DDcV8PxfhNFvOz3ocMriS3dEp0ovy3IuXODJGrUboMfXN92o42hK9ogMyKDCHLVO4
	xavsP5yeXF2UaunOPc6DBoEBXwMk8mEkSODa+2J1k6jFqZzlXQBZLyd+tEIasaUQfBihykHBNet9N
	TCqtwgZa34oApeU7dNvFUOPqh3WSYOOzJq5GtbHIYVZDQfLlaLPxfcG76/r161PKxio73o8ie5lZo
	xZ+iYHiLeKotuelV8Akzi2s4oG3e01QDQy9XdO2V4edONJCM2q7mseXorih4PiLdRWqsPoD5LocXY
	SzzwjIg/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieeKd-0006oJ-1Y; Tue, 10 Dec 2019 12:09:35 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieeKH-0006eJ-JU
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 12:09:15 +0000
Received: by mail-wm1-x343.google.com with SMTP id q9so2890918wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 04:09:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=XOGW3VXcxHdgr9chlTZTl+80YANVYRUhR1txy9flqlw=;
 b=HawjVmc5SMljNI4SEh+s219knqxvziG9/W3GDS4J+/tBov79lMOPL67K7aGi4SZU0H
 568a/qKFPf8MKAJKcxjIhbjxA9yNwSz+P7zOY68F/Gl/0hkiMSxPwMhiNwRZYxE3R6nj
 25KhX+MBv8zQ2KixYzvlgLm9M3dqjsHRaHc0Axk9r/nXA1TJ9kznP7ebHNi5S/9lFxXl
 N0HHreSpDiF5+X9bLbTiGpiQm8+zuI01vKlCQvuBEvxf9oKB7psviInTmKwfr0d/njLV
 /q6RE2WAo4+gqWr9STC2w3moCKeZJE2ucVCZo7A7nazoxxgW0xD24OFLsi/c4YtZtRVp
 me/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=XOGW3VXcxHdgr9chlTZTl+80YANVYRUhR1txy9flqlw=;
 b=GQgHPjZTl4P5TlMPeMfYByDSHRp/MRfGVEDM9w0XT0k5m+mUDx+3AK+2TD5LO0JHvL
 lCW+nMP0y84Vc9cUP+XXFHnjjpquD9ynGNZtoKNIOPSc0qVlctT+CoLRyp9crBhP8bax
 Y1z05rAQKPOiHoh6ChAnWlDEiXo0G2jF5tisz2V+2DJ0WK90myMONgPG87sxD/oalpq9
 YIlFew+tjHaxkYgwbMdyFjhYW6f8VPzpjrFdgPe8G91m3vUOXcz5YrBBsRJLrAmuOXGv
 RHop7wWQ/IWfmi2g6BtQIrai+woQV4LzQy+mjO98OCZSouKGmuOoVxvcjOQBNUziLxKb
 z06Q==
X-Gm-Message-State: APjAAAWA8ynmavhfTVCwzKFyN9tZ01FcnhjslpJa15J0jWK8JDf4xwh5
 pqlRtjrb4Ipr6Pyfbrl/z8Imav7S
X-Google-Smtp-Source: APXvYqzytFW/fQlWNuTZIH/jVsouvgNfYnmwvUXBnGQi0+ywkQMEqurtTC2hR4/HvK92YeuwZtVOhg==
X-Received: by 2002:a7b:c778:: with SMTP id x24mr4811084wmk.119.1575979751948; 
 Tue, 10 Dec 2019 04:09:11 -0800 (PST)
Received: from localhost (pD9E518ED.dip0.t-ipconnect.de. [217.229.24.237])
 by smtp.gmail.com with ESMTPSA id u14sm3041555wrm.51.2019.12.10.04.09.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 04:09:10 -0800 (PST)
Date: Tue, 10 Dec 2019 13:09:09 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Jon Hunter <jonathanh@nvidia.com>
Subject: Re: [PATCH] ARM: tegra: Fix restoration of PLLM when exiting suspend
Message-ID: <20191210120909.GA2703785@ulmo>
References: <20191210103708.7023-1-jonathanh@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20191210103708.7023-1-jonathanh@nvidia.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_040913_639002_88544FE4 
X-CRM114-Status: GOOD (  27.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-tegra@vger.kernel.org, stable@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8864518213927364969=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8864518213927364969==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="TB36FDmn/VVEgNH/"
Content-Disposition: inline


--TB36FDmn/VVEgNH/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 10, 2019 at 10:37:08AM +0000, Jon Hunter wrote:
> The suspend entry and exit code for 32-bit Tegra devices assumes that
> the PLLM (which is used to provide the clock for external memory)
> is always enabled on entry to suspend. Hence, the current code always
> disables the PLLM on entry to suspend and re-enables the PLLM on exit
> from suspend.
>=20
> Since the introduction of the Tegra124 EMC driver by commit 73a7f0a90641
> ("memory: tegra: Add EMC (external memory controller) driver"), which is
> used to scale the EMC frequency, PLLM may not be the current clock
> source for the EMC on entry to suspend and hence may not be enabled.
> Always enabling the PLLM on exit from suspend can cause the actual
> status on the PLL to be different from that reported by the common clock
> framework.
>=20
> On kernels prior to v4.5, the code to set the rate of the PLLM had a
> test to verify if the PLL was enabled and if the PLL was enabled,
> setting the rate would fail. Since commit 267b62a96951
> ("clk: tegra: pll: Update PLLM handling") the test to see if PLLM is
> enabled was removed.
>=20
> With these earlier kernels, if the PLLM is disabled on entering suspend
> and the EMC driver attempts to set the parent of the EMC clock to the
> PLLM on exiting suspend, then the set rate for the PLLM will fail and in
> turn cause the resume to fail.
>=20
> We should not be re-enabling the PLLM on resume from suspend unless it
> was enabled on entry to suspend. Therefore, fix this by saving the state
> of PLLM on entry to suspend and only re-enable it, if it was already
> enabled.
>=20
> Fixes: 73a7f0a90641 ("memory: tegra: Add EMC (external memory controller)=
 driver")
> Cc: stable@vger.kernel.org
>=20
> Signed-off-by: Jon Hunter <jonathanh@nvidia.com>
> ---
>  arch/arm/mach-tegra/sleep-tegra30.S | 33 +++++++++++++++++++++++------
>  1 file changed, 27 insertions(+), 6 deletions(-)

Looks good to me. If I understand correctly we really only need this on
v4.4 and earlier because the issue doesn't happen on later kernels
because of that PLLM handling update change that you mentioned, right?

At the same time, this is the correct thing to do even on more recent
kernels because we currently rely on the PLLM status check being absent
for this to work.

So it seems like the safest option going forward is to apply this patch
to all versions, so that we don't rely on any assumptions.

Do you agree?

Thierry

> diff --git a/arch/arm/mach-tegra/sleep-tegra30.S b/arch/arm/mach-tegra/sl=
eep-tegra30.S
> index 3341a12bbb9c..c2f0793a424f 100644
> --- a/arch/arm/mach-tegra/sleep-tegra30.S
> +++ b/arch/arm/mach-tegra/sleep-tegra30.S
> @@ -337,26 +337,42 @@ ENTRY(tegra30_lp1_reset)
>  	add	r1, r1, #2
>  	wait_until r1, r7, r3
> =20
> -	/* enable PLLM via PMC */
> +	/* restore PLLM state */
>  	mov32	r2, TEGRA_PMC_BASE
> +	adr	r7, tegra_pllm_status
> +	ldr	r1, [r7]
> +	cmp	r2, #(1 << 12)
> +	bne	_skip_pllm
> +
>  	ldr	r1, [r2, #PMC_PLLP_WB0_OVERRIDE]
>  	orr	r1, r1, #(1 << 12)
>  	str	r1, [r2, #PMC_PLLP_WB0_OVERRIDE]
> =20
>  	pll_enable r1, r0, CLK_RESET_PLLM_BASE, 0
> +	pll_locked r1, r0, CLK_RESET_PLLM_BASE
> +
> +_skip_pllm:
>  	pll_enable r1, r0, CLK_RESET_PLLC_BASE, 0
>  	pll_enable r1, r0, CLK_RESET_PLLX_BASE, 0
> =20
>  	b	_pll_m_c_x_done
> =20
>  _no_pll_iddq_exit:
> -	/* enable PLLM via PMC */
> +	/* restore PLLM state */
>  	mov32	r2, TEGRA_PMC_BASE
> +	adr	r7, tegra_pllm_status
> +	ldr	r1, [r7]
> +	cmp	r2, #(1 << 12)
> +	bne	_skip_pllm_no_iddq
> +
>  	ldr	r1, [r2, #PMC_PLLP_WB0_OVERRIDE]
>  	orr	r1, r1, #(1 << 12)
>  	str	r1, [r2, #PMC_PLLP_WB0_OVERRIDE]
> =20
>  	pll_enable r1, r0, CLK_RESET_PLLM_BASE, CLK_RESET_PLLM_MISC
> +	pll_locked r1, r0, CLK_RESET_PLLM_BASE
> +
> +_skip_pllm_no_iddq:
>  	pll_enable r1, r0, CLK_RESET_PLLC_BASE, CLK_RESET_PLLC_MISC
>  	pll_enable r1, r0, CLK_RESET_PLLX_BASE, CLK_RESET_PLLX_MISC
> =20
> @@ -364,7 +380,6 @@ _pll_m_c_x_done:
>  	pll_enable r1, r0, CLK_RESET_PLLP_BASE, CLK_RESET_PLLP_MISC
>  	pll_enable r1, r0, CLK_RESET_PLLA_BASE, CLK_RESET_PLLA_MISC
> =20
> -	pll_locked r1, r0, CLK_RESET_PLLM_BASE
>  	pll_locked r1, r0, CLK_RESET_PLLP_BASE
>  	pll_locked r1, r0, CLK_RESET_PLLA_BASE
>  	pll_locked r1, r0, CLK_RESET_PLLC_BASE
> @@ -526,6 +541,8 @@ __no_dual_emc_chanl:
>  ENDPROC(tegra30_lp1_reset)
> =20
>  	.align	L1_CACHE_SHIFT
> +tegra_pllm_status:
> +	.word	0
>  tegra30_sdram_pad_address:
>  	.word	TEGRA_EMC_BASE + EMC_CFG				@0x0
>  	.word	TEGRA_EMC_BASE + EMC_ZCAL_INTERVAL			@0x4
> @@ -624,10 +641,14 @@ tegra30_switch_cpu_to_clk32k:
>  	add	r1, r1, #2
>  	wait_until r1, r7, r9
> =20
> -	/* disable PLLM via PMC in LP1 */
> +	/* disable PLLM, if enabled, via PMC in LP1 */
> +	adr	r1, tegra_pllm_status
>  	ldr	r0, [r4, #PMC_PLLP_WB0_OVERRIDE]
> -	bic	r0, r0, #(1 << 12)
> -	str	r0, [r4, #PMC_PLLP_WB0_OVERRIDE]
> +	and	r2, r0, #(1 << 12)
> +	str     r2, [r1]
> +	cmp	r2, #(1 << 12)
> +	biceq	r0, r0, #(1 << 12)
> +	streq	r0, [r4, #PMC_PLLP_WB0_OVERRIDE]
> =20
>  	/* disable PLLP, PLLA, PLLC and PLLX */
>  	ldr	r0, [r5, #CLK_RESET_PLLP_BASE]
> --=20
> 2.17.1
>=20

--TB36FDmn/VVEgNH/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl3viuIACgkQ3SOs138+
s6HUKA//WWj+2Drk6RC5tz2nlvNsx+S25MDmQ6Mm2cfOwA8ZcTheTQjYmDAIEgY2
ZwTSei5ObxK4zaLERIWb4+MMVGIGcyBadh7MSVngv96uXbBp98arNDsEOmNrRy4f
sqPLuCAeRfIycZy/0DeJ1Pt+45klpgetxhRbCMLLq55R96GtoDx7BEhhhVQrm+Kk
WMIOhc7vU+HE4q5dNZjM4dDTpXa9Z9J9N2bOSG+z0R8hmAoGR70iXJxD8XkbsVsT
ujSltWg60qWPHj5kiuoBxZ38r3obSRmWAecL86LpUvlj5uSiyP85su/HuDDNzDRc
/cE1pQeLQAm8VeltHvK587qDTZ90h4j1PMfTSjnZN47pT/QSVgVCeVBmXEfT3Phy
DlrVSCKc7tV17x8UEoU4Mj8gHVQAreQDS5YhGNtA0TDf77Tir0Ht/eQcnC93E67x
/hKBWoGY32vcYEYd90qzHAPgJ3Y+ClWmQOyEAzpTwqtpG5KRz1HV394xd8pX1VU8
NVv3P5Ditg4Fi9L65Q47Z/+YisHhMj729ZclDpAofokQlDX92xN7DpS/eMX2m1C/
w4cN6LDpCPneXoQfTb4FGG30HXExh+mF43BjcmEeRKx0l3vOwyGUyuvxA3I/iiAt
BkqZhMpmewu/37amiBVvIDPhERR9Dy4Je0iNytt+NsV2AFbPt7A=
=FzgS
-----END PGP SIGNATURE-----

--TB36FDmn/VVEgNH/--


--===============8864518213927364969==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8864518213927364969==--

