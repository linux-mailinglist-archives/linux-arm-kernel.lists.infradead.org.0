Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33A1E191356
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 15:36:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H6gxP5W2PuWSOeOF/yk6yMxSVtS7+c07Edz+rGEq9+k=; b=c7tQDVq3EcEQZU
	P0M6oHBjUn3ri9Dxt/QWovFoD9esFbJ36uIdJnNIZkyC9IdSqVVUQGs5liEhTzd/XDLyvuPaiZEtW
	sCcaBz5BtoGUYuhwQEQTK81JonJXuxnaJriMsReNJW3gp2TpkeNC8mBn1TI++0VTJdGJ0pMQROXwh
	TIb10fifkb7dnylJIa8VtVUWePJGDF7MHmMsUJVM6oPWa4xdMGTodhaHAT9tzchGr9ZojRGAjNiCR
	4vr4xKjqdIZWOO0r6KAC7FP3hmiQli3YLjVfq6zbzr+kMD5ZqOt1vC1fNrLPCjPSGyA6p5p9lsSGR
	HOi4j+bC9wxKRKZ4pECw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGkf2-0007x5-Sl; Tue, 24 Mar 2020 14:36:08 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGkev-0007wR-GW
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 14:36:03 +0000
Received: by mail-wr1-x443.google.com with SMTP id s1so21735655wrv.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Mar 2020 07:36:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:autocrypt:organization:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=0Gevp5sNHQH6ntbIhc5KBRCvoT0lWeFA/LkmXeB8P9E=;
 b=QWEtnZvQ1iQRPlDbwUTeGiUrXB27aZockiWFe9Uw/f7RtYAuaq2WSvU7o/JvfzTE+r
 FILMMZHnhKpWeOXJ0NOOwmnvkpwsdIc2Z8zdBiyNI7yhDJ4oLv4UThW8q7WQ9CmWImqH
 t2RQB85pz7VK6/dKeSt+hq6X+OsVILksQ79wThA2rgb2G4jwjFIB8jKucq8RuJTp4ikW
 V8yN3DWK+gHLlOgSp+0560hKPoVmK4M9BpYZJmkfZH24SEOyAxzmkN2LaAnhRemyZQxv
 jxqkRUTqTU2vBJ6mFp/VFnXGkgwBNeL1kw69wnXKeM2cOR3qk28vqaLEtbTQauXnbLE+
 XPMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=0Gevp5sNHQH6ntbIhc5KBRCvoT0lWeFA/LkmXeB8P9E=;
 b=AA5FSUEgSIaAUjNlI06bdE6/JQDA/dKU8T9saUguCDGXmMhZL1nlZLRYvrsNmGQvWh
 n3AI1N+I4lgKXz2AXGnY5Az5BHwIJp22HUo8jQYszBR3dRSkQgPEyaz9YZvdrpcJj8A4
 NjhrvXFna/EpYcNvIw2/5YDaYhpJ5NMVqe0lstcV7JQfZC+6QdNyOob2318J71UNqgQ6
 fs5mtMwfd4iXLq+Kl+8SvfhGukswb6pJQCc99qXdhq8XT944DsvXs/n67lczRD8JLurK
 uLjpfaFRcRoUO83L4cw+eWf6I/ELgcBCkTy6CrMEhtWJ4KASzXYQU1a/vnCFetmQqb1l
 j7sA==
X-Gm-Message-State: ANhLgQ1DjSuVNnqDk6eqZ7zGD+CepopZlmDz0xbz+iJJM+K0UIh4eoMY
 jLVUb9MNbDlUi/y9ypyAOyM4Udy3+pnSjA==
X-Google-Smtp-Source: ADFU+vtAanKj3SwM60GzKfDQBA9hFthXHkws+CwWdcn/gkfYLeklLyNG7Gsfh5EBlF7lUncr2P4fZg==
X-Received: by 2002:adf:f7cf:: with SMTP id a15mr32030001wrq.224.1585060560076; 
 Tue, 24 Mar 2020 07:36:00 -0700 (PDT)
Received: from ?IPv6:2a01:e35:2ec0:82b0:5c5f:613e:f775:b6a2?
 ([2a01:e35:2ec0:82b0:5c5f:613e:f775:b6a2])
 by smtp.gmail.com with ESMTPSA id s131sm4566887wmf.35.2020.03.24.07.35.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 24 Mar 2020 07:35:59 -0700 (PDT)
Subject: Re: [PATCH 05/13] usb: dwc3: meson-g12a: refactor usb2 phy init
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
References: <20200324102030.31000-1-narmstrong@baylibre.com>
 <20200324102030.31000-6-narmstrong@baylibre.com>
 <CAFBinCDrycKy6sJfpUjoB3_jkHP-ssmwvr-Cab1-fOmz_i_bGQ@mail.gmail.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 BSwxi7g3Mu7u5kUByanqHyA=
Organization: Baylibre
Message-ID: <5e5a5a25-bd3e-e476-2ed1-635d9c4a7773@baylibre.com>
Date: Tue, 24 Mar 2020 15:35:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CAFBinCDrycKy6sJfpUjoB3_jkHP-ssmwvr-Cab1-fOmz_i_bGQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_073601_552231_F198B427 
X-CRM114-Status: GOOD (  16.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: balbi@kernel.org, khilman@baylibre.com, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, kishon@ti.com, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 24/03/2020 15:33, Martin Blumenstingl wrote:
> Hi Neil,
> 
> On Tue, Mar 24, 2020 at 11:20 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
> [...]
>> @@ -195,23 +239,9 @@ static int dwc3_meson_g12a_usb2_init(struct dwc3_meson_g12a *priv)
>>                 if (!strstr(priv->drvdata->phy_names[i], "usb2"))
>>                         continue;
>>
>> -               regmap_update_bits(priv->u2p_regmap[i], U2P_R0,
>> -                                  U2P_R0_POWER_ON_RESET,
>> -                                  U2P_R0_POWER_ON_RESET);
>> -
>> -               if (priv->drvdata->otg_switch_supported && i == USB2_OTG_PHY) {
>> -                       regmap_update_bits(priv->u2p_regmap[i], U2P_R0,
>> -                               U2P_R0_ID_PULLUP | U2P_R0_DRV_VBUS,
>> -                               U2P_R0_ID_PULLUP | U2P_R0_DRV_VBUS);
>> -
>> -                       dwc3_meson_g12a_usb2_set_mode(priv, i,
>> -                                                     priv->otg_phy_mode);
>> -               } else
>> -                       dwc3_meson_g12a_usb2_set_mode(priv, i,
>> -                                                     PHY_MODE_USB_HOST);
>> -
>> -               regmap_update_bits(priv->u2p_regmap[i], U2P_R0,
>> -                                  U2P_R0_POWER_ON_RESET, 0);
>> +               ret = priv->drvdata->usb2_init_phy(priv, i, mode);
>> +               if (ret)
>> +                       return ret;
>>         }
> this doesn't compile for me, it complains that mode is undefined
> I believe we need something like the attached patch on top.

I'll investigate

> 
> [...]
>> @@ -580,7 +612,9 @@ static int dwc3_meson_g12a_probe(struct platform_device *pdev)
>>         /* Get dr_mode */
>>         priv->otg_mode = usb_get_dr_mode(dev);
>>
>> -       dwc3_meson_g12a_usb_init(priv);
>> +       ret = dwc3_meson_g12a_usb_init(priv);
>> +       if (ret)
>> +               goto err_disable_clks;
> this looks like an unrelated fix, dwc3_meson_g12a_usb_init has always
> returned int (as potential error)
> also the same check is missing in dwc3_meson_g12a_resume
> can you please move this to a separate patch with the appropriate tag:
> Fixes: c99993376f72ca ("usb: dwc3: Add Amlogic G12A DWC3 glue")

Ok

Thanks,
Neil

> 
> 
> Martin
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
