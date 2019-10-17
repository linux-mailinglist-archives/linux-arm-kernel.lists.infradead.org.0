Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C6EDA874
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 11:37:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RF8rBspAlmmmIvIMtDfB5mYseUlRWPID0hD/EkHBiDk=; b=OTD5g8ELuuWOHl
	l7/0qrtZhJH2xJKnqY3OLMuOpUTh9lrndicpVTggejjVjwCifgiDHDH0U3Af7IYoUWxMOjI2vNZIb
	aWtSxKje82bsspfn/ySxWxBgI8yhdfO1D+AXfMlLxKTZFhopbaGVKpiiJwhSkbyUJ/a7P/iQGncD2
	fK/xKVWAMdwYs8KVjRuwjTUmrAD+mHuH/cOgUsd+a4R9qfLLvhSXtGflpeCb/ZlOriTF2uc4oiwnc
	B7zM0AHaM3pTSE4f7DioAKBsi1gBhxsd9yGCtI02z7uAyGq5BNr9kz5LpYpLsQQL4GLOxFNyfgV/S
	rgPp79/LOrpFezkBJQ5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL2E4-0006j7-79; Thu, 17 Oct 2019 09:37:44 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL2Dr-0006hB-W4
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 09:37:34 +0000
Received: by mail-wm1-x344.google.com with SMTP id p7so1807564wmp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 02:37:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=Zq+K7kcR6puiDqB2X1zmCsctqXjS+2pqx8Ibkc7ANVg=;
 b=l2xOVK79opzi3qtvauA5lDLMbg3uQqtoruuKbhMW/tR9YMiX+X9y4VuCIX/GCszO1b
 m4T3qqb69MAUbfQo1qNzXT8HZr8WFaKnDP7RgIOhIyQ+hLNdplbPIqXvusV8cOB0bWF2
 VVUGjXVwEduSLBsB41TzPrtdeJRHxssAgYR8/p9SWgQjQnTmTIo05t+RpFJIo8otyQcN
 hDef4Icdo/i4bIGE6SjWyXZUgMT7sf3UbiIdb7Y8jPLyuuAttMLqkdsYj9Jn5RE7yTGz
 JmEixYngBbFeFoWvc3NYIKvj4hIjTQJPYsDrYOSjlvDKBBD7gS6S12O6f/L6hEpYa8m/
 qQrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=Zq+K7kcR6puiDqB2X1zmCsctqXjS+2pqx8Ibkc7ANVg=;
 b=ZEhq2BPteLAIwdb6zDCA6vQzpC3A2NjcVuHbwexjwqn/aAu7gpfCellc8vjaACXkVq
 aaYbTFimF5aFJZC33y4OtpXgTuVMozaRkDeMSs/paN4rSN0w1XJQKKxnZI3s/yCkJwKL
 Nmj4uu6YTDVnpzTxnLodde1rnMSLuUuDDDsPyVtDgvM5Nx+7laB/pSg3twZ10+GMaZ90
 quSHWY28+FWriTKfw+rdD9xRXRWsbLXqc9aHGdPiVKfZT8/ZjCHwmql8H7FPrdjatB+7
 vIrrysFb7oIP0P/EJWjyLILQWBNacKHlIe5VY9KcnjLpEYjfrSr+tTjemBOd5zhGLW4H
 W2xQ==
X-Gm-Message-State: APjAAAVbtLfhVPm+hF7HC4c+tqL4wa7jT3YKlAknOMVb6UvT4HvJg+Ne
 oo5fx4egXQebL94rq17VU881Wg==
X-Google-Smtp-Source: APXvYqyflXyb+AF5q90/qXYa+ermpeU0lP264x92pRyjzzRV8nFjllQCITBTlxbf0zNxawAP8d4IaQ==
X-Received: by 2002:a1c:e08a:: with SMTP id x132mr1983386wmg.155.1571305049706; 
 Thu, 17 Oct 2019 02:37:29 -0700 (PDT)
Received: from [10.1.2.12] (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id v8sm1613035wra.79.2019.10.17.02.37.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 17 Oct 2019 02:37:28 -0700 (PDT)
Subject: Re: [PATCH 2/3] drm/meson: add RDMA module driver
To: dri-devel@lists.freedesktop.org
References: <20191015113317.8870-1-narmstrong@baylibre.com>
 <20191015113317.8870-3-narmstrong@baylibre.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 mQENBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAG0KE5laWwgQXJtc3Ryb25nIDxuYXJtc3Ryb25nQGJheWxpYnJlLmNvbT6JATsEEwEKACUC
 GyMGCwkIBwMCBhUIAgkKCwQWAgMBAh4BAheABQJXDO2CAhkBAAoJEBaat7Gkz/iubGIH/iyk
 RqvgB62oKOFlgOTYCMkYpm2aAOZZLf6VKHKc7DoVwuUkjHfIRXdslbrxi4pk5VKU6ZP9AKsN
 NtMZntB8WrBTtkAZfZbTF7850uwd3eU5cN/7N1Q6g0JQihE7w4GlIkEpQ8vwSg5W7hkx3yQ6
 2YzrUZh/b7QThXbNZ7xOeSEms014QXazx8+txR7jrGF3dYxBsCkotO/8DNtZ1R+aUvRfpKg5
 ZgABTC0LmAQnuUUf2PHcKFAHZo5KrdO+tyfL+LgTUXIXkK+tenkLsAJ0cagz1EZ5gntuheLD
 YJuzS4zN+1Asmb9kVKxhjSQOcIh6g2tw7vaYJgL/OzJtZi6JlIW5AQ0ETVkGzwEIALyKDN/O
 GURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYpQTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXM
 coJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hi
 SvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY4yG6xI99NIPEVE9lNBXBKIlewIyVlkOa
 YvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoMMtsyw18YoX9BqMFInxqYQQ3j/HpVgTSv
 mo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUXoUk33HEAEQEAAYkBHwQYAQIACQUCTVkG
 zwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfnM7IbRuiSZS1unlySUVYu3SD6YBYnNi3G
 5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa33eDIHu/zr1HMKErm+2SD6PO9umRef8V8
 2o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCSKmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+
 RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJ
 C3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTTQbM0WUIBIcGmq38+OgUsMYu4NzLu7uZF
 Acmp6h8guQINBFYnf6QBEADQ+wBYa+X2n/xIQz/RUoGHf84Jm+yTqRT43t7sO48/cBW9vAn9
 GNwnJ3HRJWKATW0ZXrCr40ES/JqM1fUTfiFDB3VMdWpEfwOAT1zXS+0rX8yljgsWR1UvqyEP
 3xN0M/40Zk+rdmZKaZS8VQaXbveaiWMEmY7sBV3QvgOzB7UF2It1HwoCon5Y+PvyE3CguhBd
 9iq5iEampkMIkbA3FFCpQFI5Ai3BywkLzbA3ZtnMXR8Qt9gFZtyXvFQrB+/6hDzEPnBGZOOx
 zkd/iIX59SxBuS38LMlhPPycbFNmtauOC0DNpXCv9ACgC9tFw3exER/xQgSpDVc4vrL2Cacr
 wmQp1k9E0W+9pk/l8S1jcHx03hgCxPtQLOIyEu9iIJb27TjcXNjiInd7Uea195NldIrndD+x
 58/yU3X70qVY+eWbqzpdlwF1KRm6uV0ZOQhEhbi0FfKKgsYFgBIBchGqSOBsCbL35f9hK/JC
 6LnGDtSHeJs+jd9/qJj4WqF3x8i0sncQ/gszSajdhnWrxraG3b7/9ldMLpKo/OoihfLaCxtv
 xYmtw8TGhlMaiOxjDrohmY1z7f3rf6njskoIXUO0nabun1nPAiV1dpjleg60s3OmVQeEpr3a
 K7gR1ljkemJzM9NUoRROPaT7nMlNYQL+IwuthJd6XQqwzp1jRTGG26J97wARAQABiQM+BBgB
 AgAJBQJWJ3+kAhsCAikJEBaat7Gkz/iuwV0gBBkBAgAGBQJWJ3+kAAoJEHfc29rIyEnRk6MQ
 AJDo0nxsadLpYB26FALZsWlN74rnFXth5dQVQ7SkipmyFWZhFL8fQ9OiIoxWhM6rSg9+C1w+
 n45eByMg2b8H3mmQmyWztdI95OxSREKwbaXVapCcZnv52JRjlc3DoiiHqTZML5x1Z7lQ1T3F
 8o9sKrbFO1WQw1+Nc91+MU0MGN0jtfZ0Tvn/ouEZrSXCE4K3oDGtj3AdC764yZVq6CPigCgs
 6Ex80k6QlzCdVP3RKsnPO2xQXXPgyJPJlpD8bHHHW7OLfoR9DaBNympfcbQJeekQrTvyoASw
 EOTPKE6CVWrcQIztUp0WFTdRGgMK0cZB3Xfe6sOp24PQTHAKGtjTHNP/THomkH24Fum9K3iM
 /4Wh4V2eqGEgpdeSp5K+LdaNyNgaqzMOtt4HYk86LYLSHfFXywdlbGrY9+TqiJ+ZVW4trmui
 NIJCOku8SYansq34QzYM0x3UFRwff+45zNBEVzctSnremg1mVgrzOfXU8rt+4N1b2MxorPF8
 619aCwVP7U16qNSBaqiAJr4e5SNEnoAq18+1Gp8QsFG0ARY8xp+qaKBByWES7lRi3QbqAKZf
 yOHS6gmYo9gBmuAhc65/VtHMJtxwjpUeN4Bcs9HUpDMDVHdfeRa73wM+wY5potfQ5zkSp0Jp
 bxnv/cRBH6+c43stTffprd//4Hgz+nJcCgZKtCYIAPkUxABC85ID2CidzbraErVACmRoizhT
 KR2OiqSLW2x4xdmSiFNcIWkWJB6Qdri0Fzs2dHe8etD1HYaht1ZhZ810s7QOL7JwypO8dscN
 KTEkyoTGn6cWj0CX+PeP4xp8AR8ot4d0BhtUY34UPzjE1/xyrQFAdnLd0PP4wXxdIUuRs0+n
 WLY9Aou/vC1LAdlaGsoTVzJ2gX4fkKQIWhX0WVk41BSFeDKQ3RQ2pnuzwedLO94Bf6X0G48O
 VsbXrP9BZ6snXyHfebPnno/te5XRqZTL9aJOytB/1iUna+1MAwBxGFPvqeEUUyT+gx1l3Acl
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <345e0035-c375-bcb4-8d1f-92f13e16fddb@baylibre.com>
Date: Thu, 17 Oct 2019 11:37:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191015113317.8870-3-narmstrong@baylibre.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_023732_074401_9D380E5A 
X-CRM114-Status: GOOD (  31.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
Cc: khilman@baylibre.com, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15/10/2019 13:33, Neil Armstrong wrote:
> The VPU embeds a "Register DMA" that can write a sequence of registers
> on the VPU AHB bus, either manually or triggered by an internal IRQ
> event like VSYNC or a line input counter.
> 
> The initial implementation handles a single channel (over 8), triggered
> by the VSYNC irq and does not handle the RDMA irq.
> 
> The RDMA will be usefull to reset and program the AFBC decoder unit
> on each vsync without involving the interrupt handler that can
> be masked for a long period of time, producing display glitches.
> 
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  drivers/gpu/drm/meson/Makefile     |   2 +-
>  drivers/gpu/drm/meson/meson_drv.c  |  14 +++-
>  drivers/gpu/drm/meson/meson_drv.h  |   6 ++
>  drivers/gpu/drm/meson/meson_rdma.c | 123 +++++++++++++++++++++++++++++
>  drivers/gpu/drm/meson/meson_rdma.h |  20 +++++
>  5 files changed, 161 insertions(+), 4 deletions(-)
>  create mode 100644 drivers/gpu/drm/meson/meson_rdma.c
>  create mode 100644 drivers/gpu/drm/meson/meson_rdma.h
> 
> diff --git a/drivers/gpu/drm/meson/Makefile b/drivers/gpu/drm/meson/Makefile
> index b1fa055aaed3..9e36f0c7b816 100644
> --- a/drivers/gpu/drm/meson/Makefile
> +++ b/drivers/gpu/drm/meson/Makefile
> @@ -1,7 +1,7 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  meson-drm-y := meson_drv.o meson_plane.o meson_crtc.o meson_venc_cvbs.o
>  meson-drm-y += meson_viu.o meson_vpp.o meson_venc.o meson_vclk.o meson_overlay.o
> -meson-drm-y += meson_osd_afbcd.o
> +meson-drm-y += meson_osd_afbcd.o meson_rdma.o
>  
>  obj-$(CONFIG_DRM_MESON) += meson-drm.o
>  obj-$(CONFIG_DRM_MESON_DW_HDMI) += meson_dw_hdmi.o
> diff --git a/drivers/gpu/drm/meson/meson_drv.c b/drivers/gpu/drm/meson/meson_drv.c
> index 0f31e70bb94f..2200d8b5252e 100644
> --- a/drivers/gpu/drm/meson/meson_drv.c
> +++ b/drivers/gpu/drm/meson/meson_drv.c
> @@ -33,6 +33,7 @@
>  #include "meson_venc_cvbs.h"
>  #include "meson_viu.h"
>  #include "meson_vpp.h"
> +#include "meson_rdma.h"
>  
>  #define DRIVER_NAME "meson"
>  #define DRIVER_DESC "Amlogic Meson DRM driver"
> @@ -295,8 +296,11 @@ static int meson_drv_bind_master(struct device *dev, bool has_components)
>  	meson_venc_init(priv);
>  	meson_vpp_init(priv);
>  	meson_viu_init(priv);
> -	if (priv->afbcd.ops)
> -		priv->afbcd.ops->init(priv);
> +	if (priv->afbcd.ops) {
> +		ret = priv->afbcd.ops->init(priv);
> +		if (ret)
> +			return ret;
> +	}
>  
>  	/* Encoder Initialization */
>  
> @@ -367,12 +371,16 @@ static void meson_drv_unbind(struct device *dev)
>  		meson_canvas_free(priv->canvas, priv->canvas_id_vd1_2);
>  	}
>  
> +	if (priv->afbcd.ops) {
> +		priv->afbcd.ops->reset(priv);
> +		meson_rdma_free(priv);
> +	}
> +
>  	drm_dev_unregister(drm);
>  	drm_irq_uninstall(drm);
>  	drm_kms_helper_poll_fini(drm);
>  	drm_mode_config_cleanup(drm);
>  	drm_dev_put(drm);
> -
>  }
>  
>  static const struct component_master_ops meson_drv_master_ops = {
> diff --git a/drivers/gpu/drm/meson/meson_drv.h b/drivers/gpu/drm/meson/meson_drv.h
> index de25349be8aa..9995d74c5ded 100644
> --- a/drivers/gpu/drm/meson/meson_drv.h
> +++ b/drivers/gpu/drm/meson/meson_drv.h
> @@ -139,6 +139,12 @@ struct meson_drm {
>  		u64 modifier;
>  		u32 format;
>  	} afbcd;
> +
> +	struct {
> +		dma_addr_t addr_phys;
> +		uint32_t *addr;
> +		unsigned int offset;
> +	} rdma;
>  };
>  
>  static inline int meson_vpu_is_compatible(struct meson_drm *priv,
> diff --git a/drivers/gpu/drm/meson/meson_rdma.c b/drivers/gpu/drm/meson/meson_rdma.c
> new file mode 100644
> index 000000000000..13fd9b173439
> --- /dev/null
> +++ b/drivers/gpu/drm/meson/meson_rdma.c
> @@ -0,0 +1,123 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright (C) 2019 BayLibre, SAS
> + * Author: Neil Armstrong <narmstrong@baylibre.com>
> + */
> +
> +#include <linux/bitfield.h>
> +#include <linux/dma-mapping.h>
> +
> +#include "meson_drv.h"
> +#include "meson_registers.h"
> +#include "meson_rdma.h"
> +
> +/*
> + * The VPU embeds a "Register DMA" that can write a sequence of registers
> + * on the VPU AHB bus, either manually or triggered by an internal IRQ
> + * event like VSYNC or a line input counter.
> + * The initial implementation handles a single channel (over 8), triggered
> + * by the VSYNC irq and does not handle the RDMA irq.
> + */
> +
> +int meson_rdma_init(struct meson_drm *priv)
> +{
> +	/* Allocate a PAGE buffer */

Should be "Allocate a 4K buffer"

> +	priv->rdma.addr = dma_alloc_coherent(priv->dev, SZ_4K,
> +					     &priv->rdma.addr_phys,
> +					     GFP_KERNEL);
> +	if (!priv->rdma.addr)
> +		return -ENOMEM;
> +
> +	priv->rdma.offset = 0;
> +
> +	writel_relaxed(RDMA_CTRL_SW_RESET,
> +		       priv->io_base + _REG(RDMA_CTRL));
> +	writel_relaxed(RDMA_DEFAULT_CONFIG |
> +		       FIELD_PREP(RDMA_CTRL_AHB_WR_BURST, 3) |
> +		       FIELD_PREP(RDMA_CTRL_AHB_RD_BURST, 0),
> +		       priv->io_base + _REG(RDMA_CTRL));
> +
> +	return 0;
> +}
> +
> +void meson_rdma_free(struct meson_drm *priv)
> +{
> +	if (!priv->rdma.addr && !priv->rdma.addr_phys)
> +		return;
> +
> +	meson_rdma_stop(priv);
> +
> +	dma_free_coherent(priv->dev, SZ_4K,
> +			  priv->rdma.addr, priv->rdma.addr_phys);
> +
> +	priv->rdma.addr = NULL;
> +	priv->rdma.addr_phys = (dma_addr_t)NULL;
> +}
> +
> +void meson_rdma_setup(struct meson_drm *priv)
> +{
> +	/* Channel 1: Write Flag, No Address Increment */
> +	writel_bits_relaxed(RDMA_ACCESS_RW_FLAG_CHAN1 |
> +			    RDMA_ACCESS_ADDR_INC_CHAN1,
> +			    RDMA_ACCESS_RW_FLAG_CHAN1,
> +			    priv->io_base + _REG(RDMA_ACCESS_AUTO));
> +}
> +
> +void meson_rdma_stop(struct meson_drm *priv)
> +{
> +	writel_bits_relaxed(RDMA_IRQ_CLEAR_CHAN1,
> +			    RDMA_IRQ_CLEAR_CHAN1,
> +			    priv->io_base + _REG(RDMA_CTRL));
> +
> +	/* Stop Channel 1 */
> +	writel_bits_relaxed(RDMA_ACCESS_TRIGGER_CHAN1,
> +			    FIELD_PREP(RDMA_ACCESS_ADDR_INC_CHAN1,
> +				       RDMA_ACCESS_TRIGGER_STOP),
> +			    priv->io_base + _REG(RDMA_ACCESS_AUTO));
> +}

A meson_rdma_reset() call is missing to reset priv->rdma.offset
and stop the RDMA and should be called by afbcd_reset instead of stop
other wise the meson_rdma_writel() will overflow when not using AFBC.

> +
> +static void meson_rdma_writel(struct meson_drm *priv, uint32_t val,
> +			      uint32_t reg)
> +{
> +	if (priv->rdma.offset == SZ_4K) {

Found a regression here, should be SZ_4K/8

> +		dev_warn_once(priv->dev, "%s: overflow\n", __func__);
> +		return;
> +	}
> +
> +	priv->rdma.addr[priv->rdma.offset++] = reg;
> +	priv->rdma.addr[priv->rdma.offset++] = val;
> +}
> +
> +/*
> + * This will add the register to the RDMA buffer and write it to the
> + * hardware at the same time.
> + * When meson_rdma_flush is called, the RDMA will replay the register
> + * writes in order.
> + */
> +void meson_rdma_writel_sync(struct meson_drm *priv, uint32_t val, uint32_t reg)
> +{
> +	meson_rdma_writel(priv, val, reg);
> +
> +	writel_relaxed(val, priv->io_base + _REG(reg));
> +}
> +
> +void meson_rdma_flush(struct meson_drm *priv)
> +{
> +	meson_rdma_stop(priv);
> +
> +	/* Start of Channel 1 register writes buffer */
> +	writel(priv->rdma.addr_phys,
> +	       priv->io_base + _REG(RDMA_AHB_START_ADDR_1));
> +
> +	/* Last byte on Channel 1 register writes buffer */
> +	writel(priv->rdma.addr_phys + (priv->rdma.offset * 8) - 1,

8 should have a define

> +	       priv->io_base + _REG(RDMA_AHB_END_ADDR_1));
> +
> +	/* Trigger Channel 1 on VSYNC event */
> +	writel_bits_relaxed(RDMA_ACCESS_TRIGGER_CHAN1,
> +			    FIELD_PREP(RDMA_ACCESS_TRIGGER_CHAN1,
> +				       RDMA_ACCESS_TRIGGER_VSYNC),
> +			    priv->io_base + _REG(RDMA_ACCESS_AUTO));
> +
> +	priv->rdma.offset = 0;
> +}
> diff --git a/drivers/gpu/drm/meson/meson_rdma.h b/drivers/gpu/drm/meson/meson_rdma.h
> new file mode 100644
> index 000000000000..84c882f97d28
> --- /dev/null
> +++ b/drivers/gpu/drm/meson/meson_rdma.h
> @@ -0,0 +1,20 @@
> +/* SPDX-License-Identifier: GPL-2.0+ */
> +/*
> + * Copyright (C) 2019 BayLibre, SAS
> + * Author: Neil Armstrong <narmstrong@baylibre.com>
> + */
> +
> +#ifndef __MESON_RDMA_H
> +#define __MESON_RDMA_H
> +
> +#include "meson_drv.h"
> +
> +int meson_rdma_init(struct meson_drm *priv);
> +void meson_rdma_free(struct meson_drm *priv);
> +void meson_rdma_setup(struct meson_drm *priv);
> +void meson_rdma_stop(struct meson_drm *priv);
> +
> +void meson_rdma_writel_sync(struct meson_drm *priv, uint32_t val, uint32_t reg);
> +void meson_rdma_flush(struct meson_drm *priv);
> +
> +#endif /* __MESON_RDMA_H */
> 

Will send a V2 shortly with these fixes.

Neil

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
