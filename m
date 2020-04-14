Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B3231A839E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 17:45:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FffqXQ7h2ikmWs/uligUeWN8Ao0ylPmdfGLAhUCohhw=; b=GG06EhX7YGaRsRFSSsb88vkVZ
	igp1CU2jFblFrJwpBFlMrWzwedGEIbfuMAWfdvR8ApTNxh/JRfTyYIvCNUNFuwgtWiTpChtzNVjbM
	sN+XSEepu2+z9Cxe8CB3P3vCMME7IfoIj4CK1VkyGadszpt7GLd5lF23mKRm/AErgwd/40t3JMonP
	SYsE955qd3dC0i5wMN/tK7hH77VgxuGmQ9PBHRqMt+SmhI4PQGylsPo3cHOPoFCuYOBcozO2iSwk9
	VucgLLW+eIljF8kDT1K85hO8rEXGrLdnNxI+paqtaRdRuQ1PeT+4//p8f6L6rJAMyfh8P6fV52EPe
	dBoKuX1bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jONks-0003mo-SK; Tue, 14 Apr 2020 15:45:42 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jONkh-0003mB-Bi
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 15:45:32 +0000
Received: by mail-wm1-x343.google.com with SMTP id r26so14580789wmh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 08:45:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Gjm3uAUeCbXIQTpKJuiYkVHGy2qmHJFqIvVfFVksQhg=;
 b=s1FkhIfG5/3hC9a0hKtFOz/0OHQ6L29lkb6rt38sxV2dTkPAdPfKUTJ74ZWBPrvsvi
 /xUCM29na0w0Qe1eCcf/89+CH+laP1gx1p/DqNcjMHT9kfcyyqXuG6aJovMuDSjAPNaW
 ZcwLQezJJvXBqyU2VnEAWvmFUR/Ub+r671RRHMfhspBEOHGes74S0a2odQ8X8W0TsEUn
 Sq4oPuAsN4Mme+LmGbARMbTwfgZYGJ6d+vzEHD0XiCaYsI8ZQGYTXCl1aZhPVU+Sd7hS
 oz7sxvW1obbkHWbMPNeBl/c5qAkJHetvCRvHJlG2ZoFDzdkI54PEaCcnGl2xpQVZ8cBo
 +/Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Gjm3uAUeCbXIQTpKJuiYkVHGy2qmHJFqIvVfFVksQhg=;
 b=If7Es1StqIuHQ1qeUAyr63WeOKsazg6TDdAVlNgddq8A4IdtCAYfSedTxBkGbxghRb
 6aRI9tj59d14n2I5FIgYyDwj9NZxocOBORcX6u8WCrOYGyy/tI1eU+PikVx3pV/ubwWJ
 T8Q+v/n4Z0czLjZDdua13q2mVOF496aUNjRzWGQwamovU+iugAwqQCR6yuX4cz0bqyG2
 thCT2Pwt+J/iZDE5sbXeyQKUUK9NiaqXroaktK4l3+JR19td2av0+ju+X3H/7/8+PSpN
 WDXpzcrUjg2/4Hn94pyw5KAlRJonCVAbGoQA9E6d2rMpyWpdqr2/+aazCEU5DPTEavHo
 6UOw==
X-Gm-Message-State: AGi0PuaWzvdL4iSTIP6iF96EOKLVffwNSwl1v49UrUeBpsYx1ydyX0VK
 gC5uebLXRNH/vk9H4Am61Q8=
X-Google-Smtp-Source: APiQypITBM2YX0drnVz147XZSIJao5kLHykEDecW3MC5k980NBs6/BB+fNlFc9K8cUNmPB6Co63PEA==
X-Received: by 2002:a05:600c:2210:: with SMTP id
 z16mr468382wml.151.1586879129691; 
 Tue, 14 Apr 2020 08:45:29 -0700 (PDT)
Received: from localhost (pD9E51D62.dip0.t-ipconnect.de. [217.229.29.98])
 by smtp.gmail.com with ESMTPSA id 17sm16027111wmo.2.2020.04.14.08.45.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 08:45:27 -0700 (PDT)
Date: Tue, 14 Apr 2020 17:45:26 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v6 10/14] memory: tegra: Add EMC scaling sequence code
 for Tegra210
Message-ID: <20200414154526.GP3593749@ulmo>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
 <20200409175238.3586487-11-thierry.reding@gmail.com>
 <682c661d-ea3a-7b9a-42f0-d5473b969aa2@gmail.com>
MIME-Version: 1.0
In-Reply-To: <682c661d-ea3a-7b9a-42f0-d5473b969aa2@gmail.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_084531_432314_53D0AECA 
X-CRM114-Status: GOOD (  15.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
Content-Type: multipart/mixed; boundary="===============6536529989164276105=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6536529989164276105==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7gQyIpR7q4QSXYu+"
Content-Disposition: inline


--7gQyIpR7q4QSXYu+
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 10, 2020 at 05:18:51PM +0300, Dmitry Osipenko wrote:
> 09.04.2020 20:52, Thierry Reding =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> ...
> > +static void tegra210_emc_r21021_set_clock(struct tegra210_emc *emc, u3=
2 clksrc)
> > +{
> > +	/*
> > +	 * This is the timing table for the source frequency. It does _not_
> > +	 * necessarily correspond to the actual timing values in the EMC at t=
he
> > +	 * moment. If the boot BCT differs from the table then this can happe=
n.
> > +	 * However, we need it for accessing the dram_timings (which are not
> > +	 * really registers) array for the current frequency.
> > +	 */
> > +	u32 tmp, cya_allow_ref_cc =3D 0, ref_b4_sref_en =3D 0, cya_issue_pc_r=
ef =3D 0;
> > +	struct tegra210_emc_timing *fake, *last =3D emc->last, *next =3D emc-=
>next;
> > +	u32 bg_regulator_switch_complete_wait_clks, bg_regulator_mode_change;
> > +	u32 opt_zcal_en_cc, opt_do_sw_qrst =3D 1, opt_dvfs_mode, opt_dll_mode;
> > +	u32 emc_zcal_wait_cnt_old, emc_zcal_wait_cnt_new, emc_dbg_active;
> > +	u32 opt_cc_short_zcal =3D 1, opt_short_zcal =3D 1, opt_war_200024907;
> > +	u32 tRTM, RP_war, R2P_war, TRPab_war, deltaTWATM, W2P_war, tRPST;
> > +	u32 adel =3D 0, compensate_trimmer_applicable =3D 0, mrw_req, value;
> > +	unsigned long next_timing_rate_mhz =3D next->rate / 1000, delay;
> > +	u32 tZQCAL_lpddr4 =3D 1000000, zq_wait_long, shared_zq_resistor;
> > +	s32 zq_latch_dvfs_wait_time, tZQCAL_lpddr4_fc_adj, nRTP;
> > +	u32 tFC_lpddr4 =3D 1000 * next->dram_timings[T_FC_LPDDR4];
> > +	u32 emc_auto_cal_config, auto_cal_en, mr13_catr_enable;
> > +	u32 zq_op, zcal_wait_time_clocks, zcal_wait_time_ps;
> > +	u32 emc_cfg, emc_sel_dpd_ctrl, emc_zcal_interval;
> > +	int next_push, next_dq_e_ivref, next_dqs_e_ivref;
> > +	u32 mr13_flip_fspwr, mr13_flip_fspop, is_lpddr3;
> > +	u32 enable_bglp_regulator, enable_bg_regulator;
> > +	u32 emc_dbg_o, emc_cfg_pipe_clk_o, emc_pin_o;
> > +	u32 ramp_up_wait =3D 0, ramp_down_wait =3D 0;
> > +	u32 save_restore_clkstop_pd =3D 1, dll_out;
> > +	u32 ref_delay_mult, ref_delay, dram_type;
> > +	static u32 fsp_for_next_freq;
> > +	/* In picoseconds. */
> > +	u32 source_clock_period, destination_clock_period;
> > +	u32 zqcal_before_cc_cutoff =3D 2400;
> > +	unsigned int i;
>=20
> What about to try to replace this massive egyptian construction with a
> single "u32 val;" ?

I actually tried that after condensing what this used to look like into
the above. The result was a huge failure because some of these temporary
values end up being reused, so I ended up writing bogus values into some
of these registers.

> > +	emc_readl(emc, EMC_CFG);
> > +	emc_auto_cal_config =3D emc_readl(emc, EMC_AUTO_CAL_CONFIG);
>=20
> And remove all the "dummy" variable assigns in the code?
>=20
> ...
> > emc_auto_cal_config =3D next->emc_auto_cal_config;
> ...> +	emc_zcal_interval =3D 0;
>=20
> And replace all "constant" variables with a raw value in place in the cod=
e?

Okay, I'll give this another try, hopefully this time I won't run into
the same problems as earlier.

Thierry

--7gQyIpR7q4QSXYu+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl6V2pYACgkQ3SOs138+
s6H0UBAAicSH5/f0DWGQgc7Jq0cl6eGEEK6JDuBnYiKwWIxZ9GhuhWYJyO2DCU22
CUz6FzX8kl5QH7FKz+8bnVqv8gryZGCbzZIFitBr/8WJPt+xiioxvY/X0DUyMxlf
rKsAfEj4ohLqCL8kA9IoM3Xt/6QJdJYg6ei5ETZrymHuO8SXlpC2BppqTkFYpwb0
DmNz6k72A2Jqx2i2a7si/rspGcA+Zkt2OsU4qJT3Eb7K2GBRXAPT3bR8x8AfvfHc
Pxvb3TcnXFuy6ng4dCWBYO/E8Bqn1dE35qqrDUL3yxnuVsxPS9tEOAaCqjytqcJ9
MIo8tAkX+MkZRQbAuJU2l/0f1dw9Ti5etb94f+zvAWqVEkCaFUTiZt+U2A1Jj7wN
JTtQq8t+kSZvTA4t0T83fBwmLkthzmACPANIq2kimRtOXVFKdTEvqhDc1MZmjYAp
3ZX0MZFwYOLinugnrHbDs1GUkBHFuOgBNdimFJ5OdFhZqwgK5GsvJDW8VebA0xfq
CLeyUPHRdi28SuGOistvHoap/82tTqDGRosby1PoFaq4ATOh6VfM3KmpEQkVCARO
REVlom7uSxvj1XopyGWdX34UAUrRsmsomVx1CGKnNPdZY+ERClX7t34z4sB4JdrA
cIiUFJKdcgdmYOfWhYE6BVjalTfYsWfXpAVsr/EQjPDvUAXdY6c=
=HUS/
-----END PGP SIGNATURE-----

--7gQyIpR7q4QSXYu+--


--===============6536529989164276105==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6536529989164276105==--

