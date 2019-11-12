Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2469F928F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 15:30:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R35awTMSQYEdq+QmhQQ1BG0N/WpBusJdjoIbn2Ety7Y=; b=RipClP80jb/WJl
	2GTZ1oGOk/f8m3R/Ky6Va8SzwJ8zm7nidhz2wvhd3O7SjsCXcjJ/wVlP1Ry+YTbLD3TUSbrlTFcJE
	ovLGGptPL0VDL+XsWgpbOH9lJXCpLBjnmUYnHJfFLuHYDfkk5hWII+zKhwn9qaveSV1nUiwazXspT
	B/o7bwTj+8D8ClYEZoVp347Ve+PuUsoOVUeDqZ+ctyXnwh0PsiqjenLWNfMrzptnkYTsEB98Z3dHi
	BTxNrL77IOxjPry+9VeRgHtsv2JO5RPTE+B7IyJfxb6wC2eFrzw/+TKGG8DcgvDpEaE2FbJ/OASLL
	5D5u0U5ri6oTb3jQssRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUXBk-000572-5l; Tue, 12 Nov 2019 14:30:36 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUX7z-0001dO-4K
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 14:26:45 +0000
Received: by mail-wm1-x343.google.com with SMTP id z26so3378015wmi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 06:26:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=HwAdfhIitfcvpFjEunj/32j/tCIUn5eee0pERZjRVjE=;
 b=uipUgxqyeE0KHXL6ubhaAYxNl7gHKal9kFDPZKyC/mOcCSq/qqD4JI0HWLZCCL1D9L
 UoWifxltVooIF807CohBVKrrB4e8teUC8z4m5DcySXJPPcUV7Ioel38sWe2pBgqh8Sha
 w3eQSePVSSeLBhsFdb3L80gqQNgPUsxBZ3VS9Qn83lDTTQqu77datEQYFnGmdRg4Sm9J
 k3OgtpKUSu47ZFS+9l79UXYMEKpdDHNlb/nTlYUJEj/J5Ys8y8T4FztsP4l+5j3O3SSS
 P1AYwPTr5GZw/ZnYGnqhIqKXYvyYq5jThwVLL5tvv91hKaUS4s3gL9lZhyDk2map/Ho0
 RWHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=HwAdfhIitfcvpFjEunj/32j/tCIUn5eee0pERZjRVjE=;
 b=KhaNlDOzRjkWCxWtdZFSbxrx7YzjxkI3gbLB3bt55eG7oGIeCWn0I4K5Ce/ubcN4qE
 YVUKQgq5Tdq0BU4ijJZllSVHYMNmNgmoJXNTsy0blAZ/9f7N3KLkmLg/K7tQqvpmBe0J
 ZZitaltcCfaa2hVWyh41TmCHsRVEo+eqDx09ljd9k6HXN//vuX+UD4+zpjkFTzUSNEsC
 BFZYLsata9LcTjmLzXoli9RJ7BSU8DwKk6HUGXib9wOrDLWf0qQdtFh3eAD01/RJIEMJ
 F6YSyEY0FusgCJCNdqSXfbGCzREr9hZN+yDwDIZXvygdYpK+7YxcWnxWCTQu5uO6yPii
 P+rg==
X-Gm-Message-State: APjAAAWGElgAwFQXut/mPzOgK/brly04vvQny24V0N8IZNXIcxiT7PdO
 oV7GDt++bwdhOhbmLB0t1ABypw==
X-Google-Smtp-Source: APXvYqxckmcNBpy72Qpot+ikOCMpk6nDsafZH9hp9iZSZmb+C4cx7cr8Lnq9JsDuf1l4mrUm/lUcjw==
X-Received: by 2002:a7b:c08f:: with SMTP id r15mr4093427wmh.45.1573568800830; 
 Tue, 12 Nov 2019 06:26:40 -0800 (PST)
Received: from [10.1.2.12] (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id j63sm4525489wmj.46.2019.11.12.06.26.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 12 Nov 2019 06:26:40 -0800 (PST)
Subject: Re: [PATCH v2 1/5] drm/bridge/synopsys: dsi: move phy_ops callbacks
 around panel enablement
To: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 dri-devel@lists.freedesktop.org, a.hajda@samsung.com
References: <20191108000253.8560-1-heiko.stuebner@theobroma-systems.com>
 <20191108000253.8560-2-heiko.stuebner@theobroma-systems.com>
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
Message-ID: <4b311fe6-2105-c96c-f7d4-ac3535616690@baylibre.com>
Date: Tue, 12 Nov 2019 15:26:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191108000253.8560-2-heiko.stuebner@theobroma-systems.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_062643_288916_E5C9B229 
X-CRM114-Status: GOOD (  19.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, jernej.skrabec@siol.net,
 heiko@sntech.de, jonas@kwiboo.se, linux-kernel@vger.kernel.org,
 hjc@rock-chips.com, philippe.cornu@st.com, yannick.fertre@st.com,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 Laurent.pinchart@ideasonboard.com, linux-arm-kernel@lists.infradead.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 08/11/2019 01:02, Heiko Stuebner wrote:
> If implementation-specific phy_ops need to be defined they probably
> should be enabled before trying to talk to the panel and disabled only
> after the panel was disabled.
> 
> Right now they are enabled last and disabled first, so might make it
> impossible to talk to some panels - example for this being the px30
> with an external Innosilicon dphy that needs the phy to be enabled
> to transfer commands to the panel.
> 
> So move the calls appropriately.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> ---
>  drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 13 ++++++-------
>  1 file changed, 6 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> index 675442bfc1bd..49f5600a1dea 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> @@ -797,9 +797,6 @@ static void dw_mipi_dsi_bridge_post_disable(struct drm_bridge *bridge)
>  	struct dw_mipi_dsi *dsi = bridge_to_dsi(bridge);
>  	const struct dw_mipi_dsi_phy_ops *phy_ops = dsi->plat_data->phy_ops;
>  
> -	if (phy_ops->power_off)
> -		phy_ops->power_off(dsi->plat_data->priv_data);
> -
>  	/*
>  	 * Switch to command mode before panel-bridge post_disable &
>  	 * panel unprepare.
> @@ -816,6 +813,9 @@ static void dw_mipi_dsi_bridge_post_disable(struct drm_bridge *bridge)
>  	 */
>  	dsi->panel_bridge->funcs->post_disable(dsi->panel_bridge);
>  
> +	if (phy_ops->power_off)
> +		phy_ops->power_off(dsi->plat_data->priv_data);
> +
>  	if (dsi->slave) {
>  		dw_mipi_dsi_disable(dsi->slave);
>  		clk_disable_unprepare(dsi->slave->pclk);
> @@ -882,6 +882,9 @@ static void dw_mipi_dsi_mode_set(struct dw_mipi_dsi *dsi,
>  
>  	/* Switch to cmd mode for panel-bridge pre_enable & panel prepare */
>  	dw_mipi_dsi_set_mode(dsi, 0);
> +
> +	if (phy_ops->power_on)
> +		phy_ops->power_on(dsi->plat_data->priv_data);
>  }
>  
>  static void dw_mipi_dsi_bridge_mode_set(struct drm_bridge *bridge,
> @@ -898,15 +901,11 @@ static void dw_mipi_dsi_bridge_mode_set(struct drm_bridge *bridge,
>  static void dw_mipi_dsi_bridge_enable(struct drm_bridge *bridge)
>  {
>  	struct dw_mipi_dsi *dsi = bridge_to_dsi(bridge);
> -	const struct dw_mipi_dsi_phy_ops *phy_ops = dsi->plat_data->phy_ops;
>  
>  	/* Switch to video mode for panel-bridge enable & panel enable */
>  	dw_mipi_dsi_set_mode(dsi, MIPI_DSI_MODE_VIDEO);
>  	if (dsi->slave)
>  		dw_mipi_dsi_set_mode(dsi->slave, MIPI_DSI_MODE_VIDEO);
> -
> -	if (phy_ops->power_on)
> -		phy_ops->power_on(dsi->plat_data->priv_data);
>  }
>  
>  static enum drm_mode_status
> 

Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
