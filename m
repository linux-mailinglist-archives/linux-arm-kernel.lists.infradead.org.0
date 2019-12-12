Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D0411CB06
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 11:37:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XNkkj4aRP2Pq5WKF2VG4ShP/tV4V5jM9ZuCdv1lRT6s=; b=VGTF5T+bHUVAi7URP6bYtkpAs
	8cM/O3AdXl+OtJHj1M6EPU0yMuTKbgnvyTs5fgkAHuXmbrFPVf8ze5FVl5cdMZ12gxxa4WVJLxrUE
	GWQDMbM8iQjblmnVNFSdKGgcOuwE3QhUy38xcQAHrU6mqASEspSIomlcceSzL7s+Oj0io+Zj3Axy7
	/FSD7/SQvZZKGEpy8odlgztvAF37sR0S3oy9gZt66Vfo7TQkn3muD/OrgTlIjXTolXfug6eOXlFeK
	vHW0urNH+8dXyw5M04F+owdlD3zWOCElAJkgvFTTBNVZDDRZovvnlnyL0ABG9LmQr1HHsKa3G4cuj
	nwTipC19g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifLqB-0001r2-Vu; Thu, 12 Dec 2019 10:37:04 +0000
Received: from mail1.perex.cz ([77.48.224.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifLpp-0001kA-CU
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 10:36:43 +0000
Received: from mail1.perex.cz (localhost [127.0.0.1])
 by smtp1.perex.cz (Perex's E-mail Delivery System) with ESMTP id 7D1ECA003F;
 Thu, 12 Dec 2019 11:36:26 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.perex.cz 7D1ECA003F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=perex.cz; s=default;
 t=1576146986; bh=YtTaENPq9i4RKmnvPYc5L3nsNLdbKw7vKEt54nHQbGI=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=USc9YNRCsV7vZpdI3NBwrO18EULFynImYU0yxKpMDDo84nWb/UQUxHU15JQDZbvWo
 UKoeC6tehU870BYiTN8tbMtb5Kle0QmBQfrqVmQEOYiDlSflATNe+0FmIQdGu1mXfh
 fZpLfcpHG+LSnmTewAmG6QVz0NwielNKhbkMAqd8=
Received: from p50.perex-int.cz (unknown [192.168.100.94])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: perex)
 by mail1.perex.cz (Perex's E-mail Delivery System) with ESMTPSA;
 Thu, 12 Dec 2019 11:36:17 +0100 (CET)
Subject: Re: [PATCH] ASoC: Add MediaTek MT6660 Speaker Amp Driver
To: Jeff Chang <richtek.jeff.chang@gmail.com>, lgirdwood@gmail.com
References: <1576141937-13199-1-git-send-email-richtek.jeff.chang@gmail.com>
From: Jaroslav Kysela <perex@perex.cz>
Message-ID: <02c25504-dec5-4026-6e2b-d3763e70663a@perex.cz>
Date: Thu, 12 Dec 2019 11:36:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <1576141937-13199-1-git-send-email-richtek.jeff.chang@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_023641_924084_930998B1 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: alsa-devel@alsa-project.org, tiwai@suse.com, linux-kernel@vger.kernel.org,
 jeff_chang@richtek.com, broonie@kernel.org, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dne 12. 12. 19 v 10:12 Jeff Chang napsal(a):
> +static const struct snd_kcontrol_new mt6660_component_snd_controls[] = {
> +	SOC_SINGLE_EXT_TLV("Digital Volume", MT6660_REG_VOL_CTRL, 0, 255,
> +			   1, snd_soc_get_volsw, mt6660_component_put_volsw,
> +			   vol_ctl_tlv),
> +	SOC_SINGLE_EXT("WDT Switch", MT6660_REG_WDT_CTRL, 7, 1, 0,
> +		       snd_soc_get_volsw, mt6660_component_put_volsw),
> +	SOC_SINGLE_EXT("Hard_Clip Switch", MT6660_REG_HCLIP_CTRL, 8, 1, 0,
> +		       snd_soc_get_volsw, mt6660_component_put_volsw),
> +	SOC_SINGLE_EXT("Clip Switch", MT6660_REG_SPS_CTRL, 0, 1, 0,
> +		       snd_soc_get_volsw, mt6660_component_put_volsw),
> +	SOC_SINGLE_EXT("BoostMode", MT6660_REG_BST_CTRL, 0, 3, 0,
> +		       snd_soc_get_volsw, mt6660_component_put_volsw),
> +	SOC_SINGLE_EXT("DRE Switch", MT6660_REG_DRE_CTRL, 0, 1, 0,
> +		       snd_soc_get_volsw, mt6660_component_put_volsw),
> +	SOC_SINGLE_EXT("DC_Protect Switch",
> +		MT6660_REG_DC_PROTECT_CTRL, 3, 1, 0,
> +		snd_soc_get_volsw, mt6660_component_put_volsw),
> +	SOC_SINGLE_EXT("audio input selection", MT6660_REG_DATAO_SEL, 6, 3, 0,
> +		       snd_soc_get_volsw, mt6660_component_put_volsw),
> +	SOC_SINGLE_EXT("Data Output Left Channel Selection",
> +		       MT6660_REG_DATAO_SEL, 3, 7, 0,
> +		       snd_soc_get_volsw, mt6660_component_put_volsw),
> +	SOC_SINGLE_EXT("Data Output Right Channel Selection",
> +		       MT6660_REG_DATAO_SEL, 0, 7, 0,
> +		       snd_soc_get_volsw, mt6660_component_put_volsw),
> +	/* for debug purpose */
> +	SOC_SINGLE_EXT("HPF_AUD_IN Switch", MT6660_REG_HPF_CTRL, 0, 1, 0,
> +		       snd_soc_get_volsw, mt6660_component_put_volsw),
> +	SOC_SINGLE_EXT("AUD_LOOP_BACK Switch", MT6660_REG_PATH_BYPASS, 4, 1, 0,
> +		       snd_soc_get_volsw, mt6660_component_put_volsw),
> +	SOC_SINGLE_EXT("Mute Switch", MT6660_REG_SYSTEM_CTRL, 1, 1, 0,
> +		       snd_soc_get_volsw, mt6660_component_put_volsw),
> +	SOC_SINGLE_EXT("Bypass CS Comp Switch", MT6660_REG_PATH_BYPASS, 2, 1, 0,
> +		       snd_soc_get_volsw, mt6660_component_put_volsw),
> +	SOC_SINGLE_EXT("T0_SEL", MT6660_REG_CALI_T0, 0, 7, 0,
> +		       snd_soc_get_volsw, NULL),
> +	SOC_SINGLE_EXT("Chip_Rev", SND_SOC_NOPM, 0, 16, 0,
> +		       mt6660_component_get_volsw, NULL),

The control names looks really strange like always for the ASoC tree. We 
should talk about a standardization here. At least unify spaces, underscores 
and such characters and abbreviations.

					Thanks,
						Jaroslav

-- 
Jaroslav Kysela <perex@perex.cz>
Linux Sound Maintainer; ALSA Project; Red Hat, Inc.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
