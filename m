Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E591D2B92
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 15:41:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pKy6tXx4cDCWJHNQZbFdR87p1OUQGwK3ZcKE6Mgjesk=; b=Xe9/wL++rPP22O
	WuHW6w4x47vuhJvjYx99ci8z5EL+kWLENABaqQzRvqu8zZ605+gk2XIjxn+U6GGrCTK+ZsQdoZlIc
	Um+zrSiQCmb3cHQKfZ0SLZIrhYjGI6JBCpaEoq1MfFTiLRQo2BrZbsCpEYlPY3XmD7jYr6VKo3B0M
	Ntk9y84wt+pDI3RdHeARBOTuWOyzcNxj5pTDIAS+takyV2+m/4nkEMc6lBluOWgTD5xQlG4czKpWE
	iescYTHC0Ji5Af5Qg7yvxi4hetee7TJBakG1lXF9WgDBLc9XnPyiXpESAaMVxNccap2WRi4LsUFeX
	buM0ERpM3v05Lkfh0Xpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIYhC-0004bt-C4; Thu, 10 Oct 2019 13:41:34 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIYgw-0004CY-Ns
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 13:41:21 +0000
Received: by mail-wr1-x444.google.com with SMTP id w12so7967697wro.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 06:41:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=y9ZSUXFOySh5/9QQwPjG938Sxy6yK9RUTjHSznX4FyM=;
 b=RHqraRb18DB+8tW8A1SykAf9isRoRKictzhBNw4u9Ft/wAQWF28y27JxpnpoJsffBG
 h1/OBmXrvpeE7fKZr8mzveEX1Uda0Dv+W9rCUg+tyUpvJTHfpzBPqspasdTc/HqhRKTc
 Vygu4eLR2o84/DOqf6lnLiV1fM5sbXh7dX1NwEUWtaqtmaDZKTGN+zoothcTUF+k+S6e
 pehx1MEjpMj9apdxu86w93lOuqs206TPp+wuhEakkq0cDjSj9pzPkSd6bEtyYn36DsQI
 EH/c6VjGew5uFhVpEkao5LZMIcNVU/n+xICq1CBXK09Ic0oJJt4tNNl5GsnEtTW88nZ3
 t+og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=y9ZSUXFOySh5/9QQwPjG938Sxy6yK9RUTjHSznX4FyM=;
 b=m5QEUY8OFjt8dmOLsGM14uIOlqBTNUgt19cUOUwuNo6SW/EvbEwjWiTPFcgX5A2+sZ
 qgaeQvPE+UV6aiXJm99/FLN5eXmWTYktvmI4oYkYWynAjnI3Me9doioyeZPcK1HD04wA
 cFiXxNQrBRtMv5qkrLgHe3XxEM/XDCMrvWw0ffHRWKqwSvOgKQlbY43W7urT0Zly9u7K
 hy6XHl3nGn8PyYWOSFghseESVgCoPB5n7OobKN8TFusg7KJiLw12ePc/TW+sSRPCUXt0
 n3ipSzUVEF/7CdkYGP95iP/8N/rdf05ECehy7eU3imN+5dKp3S/4TcewK4Gn6PJI08fO
 c7Pg==
X-Gm-Message-State: APjAAAUh9y5rTFrsLLL2Fwocg0lL1OmKeuXeM/7OWziCYc1UWf6KIF05
 oHU+Np3QxpafG6hbYCGG3Dltfg==
X-Google-Smtp-Source: APXvYqxESLeybnYagv8QoHJ9+EByhRUqz5N+JOi+x1oCsakjxoAaOOCTNvLxvRn+rrQ8Kxgy2WA/UQ==
X-Received: by 2002:adf:8296:: with SMTP id 22mr8227794wrc.255.1570714876476; 
 Thu, 10 Oct 2019 06:41:16 -0700 (PDT)
Received: from [10.1.2.12] (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id f143sm8112750wme.40.2019.10.10.06.41.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 10 Oct 2019 06:41:16 -0700 (PDT)
Subject: Re: [PATCH 4/7] drm/meson: plane: add support for AFBC mode for OSD1
 plane
To: Ayan Halder <Ayan.Halder@arm.com>
References: <20191010092526.10419-1-narmstrong@baylibre.com>
 <20191010092526.10419-5-narmstrong@baylibre.com>
 <20191010132601.GA10110@arm.com>
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
Message-ID: <44f1771f-d640-f23d-995f-7bfcadd213bc@baylibre.com>
Date: Thu, 10 Oct 2019 15:41:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191010132601.GA10110@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_064118_932794_92120609 
X-CRM114-Status: GOOD (  26.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
Cc: "khilman@baylibre.com" <khilman@baylibre.com>, nd <nd@arm.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-amlogic@lists.infradead.org" <linux-amlogic@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ayan,

On 10/10/2019 15:26, Ayan Halder wrote:
> On Thu, Oct 10, 2019 at 11:25:23AM +0200, Neil Armstrong wrote:
>> This adds all the OSD configuration plumbing to support the AFBC decoders
>> path to display of the OSD1 plane.
>>
>> The Amlogic GXM and G12A AFBC decoders are integrated very differently.
>>
>> The Amlogic GXM has a direct output path to the OSD1 VIU pixel input,
>> because the GXM AFBC decoder seem to be a custom IP developed by Amlogic.
>>
>> On the other side, the Amlogic G12A AFBC decoder seems to be an external
>> IP that emit pixels on an AXI master hooked to a "Mali Unpack" block
>> feeding the OSD1 VIU pixel input.
>> This uses a weird "0x1000000" internal HW physical address on both
>> sides to transfer the pixels.
>>
>> For Amlogic GXM, the supported pixel formats are the same as the normal
>> linear OSD1 mode.
>>
>> On the other side, Amlogic added support for all AFBC v1.2 formats for
>> the G12A AFBC integration.
>>
>> For simplicity, we stick to the already supported formats for now.
>>
>> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
>> ---
>>  drivers/gpu/drm/meson/meson_crtc.c  |   2 +
>>  drivers/gpu/drm/meson/meson_drv.h   |   4 +
>>  drivers/gpu/drm/meson/meson_plane.c | 215 ++++++++++++++++++++++++----
>>  3 files changed, 190 insertions(+), 31 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/meson/meson_crtc.c b/drivers/gpu/drm/meson/meson_crtc.c
>> index 57ae1c13d1e6..d478fa232951 100644
>> --- a/drivers/gpu/drm/meson/meson_crtc.c
>> +++ b/drivers/gpu/drm/meson/meson_crtc.c
>> @@ -281,6 +281,8 @@ void meson_crtc_irq(struct meson_drm *priv)
>>  	if (priv->viu.osd1_enabled && priv->viu.osd1_commit) {
>>  		writel_relaxed(priv->viu.osd1_ctrl_stat,
>>  				priv->io_base + _REG(VIU_OSD1_CTRL_STAT));
>> +		writel_relaxed(priv->viu.osd1_ctrl_stat2,
>> +				priv->io_base + _REG(VIU_OSD1_CTRL_STAT2));
>>  		writel_relaxed(priv->viu.osd1_blk0_cfg[0],
>>  				priv->io_base + _REG(VIU_OSD1_BLK0_CFG_W0));
>>  		writel_relaxed(priv->viu.osd1_blk0_cfg[1],
>> diff --git a/drivers/gpu/drm/meson/meson_drv.h b/drivers/gpu/drm/meson/meson_drv.h
>> index 60f13c6f34e5..de25349be8aa 100644
>> --- a/drivers/gpu/drm/meson/meson_drv.h
>> +++ b/drivers/gpu/drm/meson/meson_drv.h
>> @@ -53,8 +53,12 @@ struct meson_drm {
>>  		bool osd1_enabled;
>>  		bool osd1_interlace;
>>  		bool osd1_commit;
>> +		bool osd1_afbcd;
>>  		uint32_t osd1_ctrl_stat;
>> +		uint32_t osd1_ctrl_stat2;
>>  		uint32_t osd1_blk0_cfg[5];
>> +		uint32_t osd1_blk1_cfg4;
>> +		uint32_t osd1_blk2_cfg4;
>>  		uint32_t osd1_addr;
>>  		uint32_t osd1_stride;
>>  		uint32_t osd1_height;
>> diff --git a/drivers/gpu/drm/meson/meson_plane.c b/drivers/gpu/drm/meson/meson_plane.c
>> index 5e798c276037..412941aa8402 100644
>> --- a/drivers/gpu/drm/meson/meson_plane.c
>> +++ b/drivers/gpu/drm/meson/meson_plane.c
>> @@ -23,6 +23,7 @@
>>  #include "meson_plane.h"
>>  #include "meson_registers.h"
>>  #include "meson_viu.h"
>> +#include "meson_osd_afbcd.h"
>>  
>>  /* OSD_SCI_WH_M1 */
>>  #define SCI_WH_M1_W(w)			FIELD_PREP(GENMASK(28, 16), w)
>> @@ -92,12 +93,38 @@ static int meson_plane_atomic_check(struct drm_plane *plane,
>>  						   false, true);
>>  }
>>  
>> +#define MESON_MOD_AFBC_VALID_BITS (AFBC_FORMAT_MOD_BLOCK_SIZE_16x16 |	\
>> +				   AFBC_FORMAT_MOD_BLOCK_SIZE_32x8 |	\
>> +				   AFBC_FORMAT_MOD_YTR |		\
>> +				   AFBC_FORMAT_MOD_SPARSE |		\
>> +				   AFBC_FORMAT_MOD_SPLIT)
>> +
>>  /* Takes a fixed 16.16 number and converts it to integer. */
>>  static inline int64_t fixed16_to_int(int64_t value)
>>  {
>>  	return value >> 16;
>>  }
>>  
>> +static u32 meson_g12a_afbcd_line_stride(struct meson_drm *priv)
>> +{
>> +	u32 line_stride = 0;
>> +
>> +	switch (priv->afbcd.format) {
>> +	case DRM_FORMAT_RGB565:
>> +		line_stride = ((priv->viu.osd1_width << 4) + 127) >> 7;
>> +		break;
>> +	case DRM_FORMAT_RGB888:
>> +	case DRM_FORMAT_XRGB8888:
>> +	case DRM_FORMAT_ARGB8888:
>> +	case DRM_FORMAT_XBGR8888:
>> +	case DRM_FORMAT_ABGR8888:
> Please have a look at
> https://www.kernel.org/doc/html/latest/gpu/afbc.html for our
> recommendation. We suggest that *X* formats are avoided.
> 
> Also, for interoperability and maximum compression efficiency (with
> AFBC_FORMAT_MOD_YTR), we suggest the following order :-
> 
>         Component 0: R
>         Component 1: G
>         Component 2: B
>         Component 3: A (if available)


Sorry I don't understand, you ask me to limit AFBC to ABGR8888 ?

But why if the HW (GPU and DPU) is capable of ?

Isn't it an userspace choice ? I understand XRGB8888 is a waste
of memory space and compression efficiency, but this is not the
kernel driver's to decide this, right ?

For interoperability I'll understand recommending a minimal set
of modifiers and formats. But here, each platform is also limited
by it's GPU capabilites aswell.

Limiting to ABGR8888 would discard like every non-Android renderers,
using AFBC, I'm not sure it's the kernels driver's responsibility.

> 
> Thus, DRM_FORMAT_ABGR, DRM_FORMAT_BGR should only be allowed.
>> +		line_stride = ((priv->viu.osd1_width << 5) + 127) >> 7;
>> +		break;
>> +	}
>> +
>> +	return ((line_stride + 1) >> 1) << 1;
>> +}
>> +
>>  static void meson_plane_atomic_update(struct drm_plane *plane,
>>  				      struct drm_plane_state *old_state)
>>  {

[...]

>>  
>> +static bool meson_plane_format_mod_supported(struct drm_plane *plane,
>> +					     u32 format, u64 modifier)
>> +{
>> +	struct meson_plane *meson_plane = to_meson_plane(plane);
>> +	struct meson_drm *priv = meson_plane->priv;
>> +	int i;
>> +
>> +	if (modifier == DRM_FORMAT_MOD_INVALID)
>> +		return false;
>> +
>> +	if (modifier == DRM_FORMAT_MOD_LINEAR)
>> +		return true;
>> +
>> +	if (!meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXM) &&
>> +	    !meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A))
>> +		return false;
>> +
>> +	if (modifier & ~DRM_FORMAT_MOD_ARM_AFBC(MESON_MOD_AFBC_VALID_BITS))
>> +		return false;
>> +
>> +	for (i = 0 ; i < plane->modifier_count ; ++i)
>> +		if (plane->modifiers[i] == modifier)
>> +			break;
>> +
>> +	if (i == plane->modifier_count) {
>> +		DRM_DEBUG_KMS("Unsupported modifier\n");
>> +		return false;
>> +	}

I can add a warn_once here, would it be enough ?

>> +
>> +	if (priv->afbcd.ops && priv->afbcd.ops->supported_fmt)
>> +		return priv->afbcd.ops->supported_fmt(modifier, format);
>> +
>> +	DRM_DEBUG_KMS("AFBC Unsupported\n");
>> +	return false;
>> +}
>> +
>>  static const struct drm_plane_funcs meson_plane_funcs = {
>>  	.update_plane		= drm_atomic_helper_update_plane,
>>  	.disable_plane		= drm_atomic_helper_disable_plane,
>> @@ -353,6 +457,7 @@ static const struct drm_plane_funcs meson_plane_funcs = {
>>  	.reset			= drm_atomic_helper_plane_reset,
>>  	.atomic_duplicate_state = drm_atomic_helper_plane_duplicate_state,
>>  	.atomic_destroy_state	= drm_atomic_helper_plane_destroy_state,
>> +	.format_mod_supported   = meson_plane_format_mod_supported,
>>  };
>>  
>>  static const uint32_t supported_drm_formats[] = {
>> @@ -364,10 +469,53 @@ static const uint32_t supported_drm_formats[] = {
>>  	DRM_FORMAT_RGB565,
>>  };
>>  
>> +static const uint64_t format_modifiers_afbc_gxm[] = {
>> +	DRM_FORMAT_MOD_ARM_AFBC(AFBC_FORMAT_MOD_BLOCK_SIZE_16x16 |
>> +				AFBC_FORMAT_MOD_SPARSE |
>> +				AFBC_FORMAT_MOD_YTR),
>> +	/* SPLIT mandates SPARSE, RGB modes mandates YTR */
>> +	DRM_FORMAT_MOD_ARM_AFBC(AFBC_FORMAT_MOD_BLOCK_SIZE_16x16 |
>> +				AFBC_FORMAT_MOD_YTR |
>> +				AFBC_FORMAT_MOD_SPARSE |
>> +				AFBC_FORMAT_MOD_SPLIT),
>> +	DRM_FORMAT_MOD_LINEAR,
>> +	DRM_FORMAT_MOD_INVALID,
>> +};
>> +
>> +static const uint64_t format_modifiers_afbc_g12a[] = {
>> +	/*
>> +	 * - TOFIX Support AFBC modifiers for YUV formats (16x16 + TILED)
>> +	 * - AFBC_FORMAT_MOD_YTR is mandatory since we only support RGB
>> +	 * - SPLIT is mandatory for performances reasons when in 16x16
>> +	 *   block size
>> +	 * - 32x8 block size + SPLIT is mandatory with 4K frame size
>> +	 *   for performances reasons
>> +	 */
>> +	DRM_FORMAT_MOD_ARM_AFBC(AFBC_FORMAT_MOD_BLOCK_SIZE_16x16 |
>> +				AFBC_FORMAT_MOD_YTR |
>> +				AFBC_FORMAT_MOD_SPARSE |
>> +				AFBC_FORMAT_MOD_SPLIT),
>> +	DRM_FORMAT_MOD_ARM_AFBC(AFBC_FORMAT_MOD_BLOCK_SIZE_32x8 |
>> +				AFBC_FORMAT_MOD_YTR |
>> +				AFBC_FORMAT_MOD_SPARSE),
>> +	DRM_FORMAT_MOD_ARM_AFBC(AFBC_FORMAT_MOD_BLOCK_SIZE_32x8 |
>> +				AFBC_FORMAT_MOD_YTR |
>> +				AFBC_FORMAT_MOD_SPARSE |
>> +				AFBC_FORMAT_MOD_SPLIT),
>> +	DRM_FORMAT_MOD_LINEAR,
>> +	DRM_FORMAT_MOD_INVALID,
>> +};
>> +
>> +static const uint64_t format_modifiers_default[] = {
>> +	DRM_FORMAT_MOD_LINEAR,
>> +	DRM_FORMAT_MOD_INVALID,
>> +};
>> +
>>  int meson_plane_create(struct meson_drm *priv)
>>  {
>>  	struct meson_plane *meson_plane;
>>  	struct drm_plane *plane;
>> +	const uint64_t *format_modifiers = format_modifiers_default;
>>  
>>  	meson_plane = devm_kzalloc(priv->drm->dev, sizeof(*meson_plane),
>>  				   GFP_KERNEL);
>> @@ -377,11 +525,16 @@ int meson_plane_create(struct meson_drm *priv)
>>  	meson_plane->priv = priv;
>>  	plane = &meson_plane->base;
>>  
>> +	if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXM))
>> +		format_modifiers = format_modifiers_afbc_gxm;
>> +	else if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A))
>> +		format_modifiers = format_modifiers_afbc_g12a;
>> +
>>  	drm_universal_plane_init(priv->drm, plane, 0xFF,
>>  				 &meson_plane_funcs,
>>  				 supported_drm_formats,
>>  				 ARRAY_SIZE(supported_drm_formats),
>> -				 NULL,
>> +				 format_modifiers,
>>  				 DRM_PLANE_TYPE_PRIMARY, "meson_primary_plane");
>>  
>>  	drm_plane_helper_add(plane, &meson_plane_helper_funcs);
>> -- 
>> 2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
