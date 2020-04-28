Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA931BB8F0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 10:38:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tF+AngLeA9jo042OSCxrQdarktbaLSTE1z6TP3ToSLY=; b=BWjVaZeO5SG2TM
	2J3flFpyHXEaxGANaXQ3j/mWGtDZu13lMHckCK+IXAKaB1qF92KhNmJrroocZUnwZ7vW9kj7uY98Y
	X9GGqK0PvLTkWy2/IlasUvZLvICE5JyDn0Gjb7Sn47tSV0PgGQsvGFcZ5p/Hoyu+W/k2rS1g4XB+6
	8j8HRog/D1HafBsvaSAOvuzRI1JYjTvICuLvjiHP4yKj7B/l78CtxM/o772f6rNS4rMXNyoC4agsG
	krJ3ijHwaUVAR+jS42rpGYiVqFpGAZUvNdy6MnAls6R/UFqEpcv70U7jsxGhmWu7KJDBW4twfBzaB
	yyG2FwE73b72AV2MiEYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTLku-00017c-Ds; Tue, 28 Apr 2020 08:38:16 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTLki-000152-T8
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 08:38:07 +0000
Received: by mail-wm1-x341.google.com with SMTP id g12so1861313wmh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 01:38:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:autocrypt:organization:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=IcPRO5g/VCTnULbqSnLVLbjVPsn/n6r8qlxzkItb/0c=;
 b=dyMFUVUfnsuTwPJYGgoOaQBnh4haZwH+VXhe9XAEpXt9J8IKW89AYZkJIt8RfWw86I
 NixArA7yDE2u0z3R+ic2tgKMzJYLbNvnonl98IjsmtrTbslOl+sCJ8N8z7/IiXi08P6K
 dt9tuMS45tRVL0wm0wy3n5Ix2Ev+SNMErU0btJMcwPgXeoeihRhHkWAQYyg+3uB1trKt
 AbULJwsWwnaHqpz7qrDQ2FF159wD2p+F2kEb56n3DPhac4iORPaz2wExK9CNMP0QxXx0
 8NDvCGur+Sk8lDsIwSAvsrxiCQye/iZKIIs/wm+wPbhpNLo8WZR6lsXcTb43402iylUZ
 hgWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=IcPRO5g/VCTnULbqSnLVLbjVPsn/n6r8qlxzkItb/0c=;
 b=eZszVPO3Zp0DjnE0gr2nVWV+0e3nlQmVwaXsFEaz1fZKmWRBcVhLVR86m8Pll7m1WJ
 ICasQHPExBdk5iG2FeLmwKxtwLEbIdmubcrm+WwYdtSuwv3Fq6Lt7myXzzPvhOcPxNru
 fY7Rm/dDpttyE4CrZB0T2wmqbtWRysh3FO5iMq9noDgfv6pXLyVFTLeu71nc5grBl4sF
 bkC9j/Ql/5G89cyl8qeWQ/utnSKI3QaQAWy4raWcwoHImGWJaJyxs1i+u03Zv2BAgSfV
 qexNkDSn7X0v1odjxeFkzf/doxoL3lATmcrckTiJipugDbOIcflYIhTcGT3T/kTOWTSY
 D9JA==
X-Gm-Message-State: AGi0PuZVpabZyYCMx9fPKOG7Hcjova/SkakAeUVl8AnCndTwoCyedeBx
 c2sA//573N66bHsbuiOnohk0Dw==
X-Google-Smtp-Source: APiQypJCQ9QNvYDLMKWJSh3JLTGM7uv0NjAFS+LMmSm9a+7MZstFyB4poXpoYNSf6Vms9DcCyeqmtg==
X-Received: by 2002:a1c:e0c3:: with SMTP id x186mr3242446wmg.146.1588063082706; 
 Tue, 28 Apr 2020 01:38:02 -0700 (PDT)
Received: from ?IPv6:2a01:e35:2ec0:82b0:4460:3fd3:382:4a71?
 ([2a01:e35:2ec0:82b0:4460:3fd3:382:4a71])
 by smtp.gmail.com with ESMTPSA id t67sm2494640wmg.40.2020.04.28.01.38.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 28 Apr 2020 01:38:01 -0700 (PDT)
Subject: Re: [PATCH] drm/meson: viu: fix setting the OSD burst length in
 VIU_OSD1_FIFO_CTRL_STAT
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 jmasson@baylibre.com, linux-amlogic@lists.infradead.org
References: <20200425203941.3188000-1-martin.blumenstingl@googlemail.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 BSwxi7g3Mu7u5kUByanqHyA=
Organization: Baylibre
Message-ID: <bf7e6eb5-4655-e958-819b-9d14effe745e@baylibre.com>
Date: Tue, 28 Apr 2020 10:38:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200425203941.3188000-1-martin.blumenstingl@googlemail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_013804_979099_434468D4 
X-CRM114-Status: GOOD (  19.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,
On 25/04/2020 22:39, Martin Blumenstingl wrote:
> The burst length is configured in VIU_OSD1_FIFO_CTRL_STAT[31] and
> VIU_OSD1_FIFO_CTRL_STAT[11:10]. The public S905D3 datasheet describes
> this as:
> - 0x0 = up to 24 per burst
> - 0x1 = up to 32 per burst
> - 0x2 = up to 48 per burst
> - 0x3 = up to 64 per burst
> - 0x4 = up to 96 per burst
> - 0x5 = up to 128 per burst
> 
> The lower two bits map to VIU_OSD1_FIFO_CTRL_STAT[11:10] while the upper
> bit maps to VIU_OSD1_FIFO_CTRL_STAT[31].
> 
> Replace meson_viu_osd_burst_length_reg() with pre-defined macros which
> set these values. meson_viu_osd_burst_length_reg() always returned 0
> (for the two used values: 32 and 64 at least) and thus incorrectly set
> the burst size to 24.
> 
> Fixes: 147ae1cbaa1842 ("drm: meson: viu: use proper macros instead of magic constants")
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
>  drivers/gpu/drm/meson/meson_registers.h |  6 ++++++
>  drivers/gpu/drm/meson/meson_viu.c       | 11 ++---------
>  2 files changed, 8 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/meson/meson_registers.h b/drivers/gpu/drm/meson/meson_registers.h
> index 8ea00546cd4e..049c4bfe2a3a 100644
> --- a/drivers/gpu/drm/meson/meson_registers.h
> +++ b/drivers/gpu/drm/meson/meson_registers.h
> @@ -261,6 +261,12 @@
>  #define VIU_OSD_FIFO_DEPTH_VAL(val)      ((val & 0x7f) << 12)
>  #define VIU_OSD_WORDS_PER_BURST(words)   (((words & 0x4) >> 1) << 22)
>  #define VIU_OSD_FIFO_LIMITS(size)        ((size & 0xf) << 24)
> +#define VIU_OSD_BURST_LENGTH_24          (0x0 << 31 | 0x0 << 10)
> +#define VIU_OSD_BURST_LENGTH_32          (0x0 << 31 | 0x1 << 10)
> +#define VIU_OSD_BURST_LENGTH_48          (0x0 << 31 | 0x2 << 10)
> +#define VIU_OSD_BURST_LENGTH_64          (0x0 << 31 | 0x3 << 10)
> +#define VIU_OSD_BURST_LENGTH_96          (0x1 << 31 | 0x0 << 10)
> +#define VIU_OSD_BURST_LENGTH_128         (0x1 << 31 | 0x1 << 10)
>  
>  #define VD1_IF0_GEN_REG 0x1a50
>  #define VD1_IF0_CANVAS0 0x1a51
> diff --git a/drivers/gpu/drm/meson/meson_viu.c b/drivers/gpu/drm/meson/meson_viu.c
> index 304f8ff1339c..aede0c67a57f 100644
> --- a/drivers/gpu/drm/meson/meson_viu.c
> +++ b/drivers/gpu/drm/meson/meson_viu.c
> @@ -411,13 +411,6 @@ void meson_viu_gxm_disable_osd1_afbc(struct meson_drm *priv)
>  			    priv->io_base + _REG(VIU_MISC_CTRL1));
>  }
>  
> -static inline uint32_t meson_viu_osd_burst_length_reg(uint32_t length)
> -{
> -	uint32_t val = (((length & 0x80) % 24) / 12);
> -
> -	return (((val & 0x3) << 10) | (((val & 0x4) >> 2) << 31));
> -}
> -
>  void meson_viu_init(struct meson_drm *priv)
>  {
>  	uint32_t reg;
> @@ -444,9 +437,9 @@ void meson_viu_init(struct meson_drm *priv)
>  		VIU_OSD_FIFO_LIMITS(2);      /* fifo_lim: 2*16=32 */
>  
>  	if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A))
> -		reg |= meson_viu_osd_burst_length_reg(32);
> +		reg |= VIU_OSD_BURST_LENGTH_32;
>  	else
> -		reg |= meson_viu_osd_burst_length_reg(64);
> +		reg |= VIU_OSD_BURST_LENGTH_64;
>  
>  	writel_relaxed(reg, priv->io_base + _REG(VIU_OSD1_FIFO_CTRL_STAT));
>  	writel_relaxed(reg, priv->io_base + _REG(VIU_OSD2_FIFO_CTRL_STAT));
> 

Thanks,
Will run some tests !

Neil

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
