Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B29EA7C4D0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 16:22:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CWRJlhyjikMCrCKSMk8bbbz4x7aVsnWTBNyijjx8Hec=; b=se0NTJLx+EP0Dr
	MZB6A44awz+jQbLYs/dj8LqtLehDyj7G2Ij7qGLtPBnk5EpPZ/7s44xBzANiygVhkQyoLV6RM9sU/
	Fqt+vngwPX6cYvzfqRWQ7Ssb+uIiAH0VFlLVMrfF8BSDfqLUST96PCkPyrnaHhJeDUN+Bg9c2C2Y2
	SOqcwxv8qs+bQKDXapw1Ift3av3p1yT6RSu/6jbvnzlfReIi6uVJ2jJo10LDB+F3TzGpzVEQmxdH5
	JSK6DnaWiEnnCCYVgWvba7o3d3fTEpW7IjfCqaCaQWTzroQCUvFXDMPI0nWYE0AbL5C2XYF+VuZeK
	0XYBB93ACyX11noor5pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hspVD-0005Pf-6X; Wed, 31 Jul 2019 14:22:51 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hspUx-0005DH-UP
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 14:22:38 +0000
Received: by mail-wr1-x433.google.com with SMTP id c2so66686535wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 07:22:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=DgMcA6v/fzoyZ+8GMbMaZ4k0twZj3qquTJmJP5k3IO8=;
 b=l2hYYDt1ojhHhFewG4ODETJ0VwWUU/aoP1bXxKUHQQZLywJg6T1krxJdArKTDUzPRn
 qU9cbkvBt2yh1SpuAKfIUVk77hFycwF9T9aX63MTRCPatlNDj6rE6rqYG08Y05mQ83V6
 uUp1FaqYQmOn11+Uj30lmAdBEYfrOweqrbG3g/ezcvvUBIibjUqadseUFjgkClfwTo9L
 3O4m0TwBb7NsDkhGn+Y/Q1qgOfEoQluGQz+GmbCFs7CEpupCaUEqey5d3jpjZtCW9O8b
 Er9U9ll0vpNxo95Y8dCk3Le9VP5lofbAnCJbwe+iGTugwc96hoywJLUhBR0perWhXl9b
 T08w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=DgMcA6v/fzoyZ+8GMbMaZ4k0twZj3qquTJmJP5k3IO8=;
 b=GRl1460RvykR+1+ZHzOLkrpJgPEBdPjThgaynhJMlpjfGWp5JKaVeA29Qpz5aCz69n
 qcVePn4IuztIwnZPjCY9syTu0daABwgyQgtUkUyRDSADk2R335ENPIyO9+1TPvXd5B9y
 zGNk+IpehWjeZKkVnu0qrkgsjRw1NhnetoGHOSKVrSWHKteDfD7TGHKultxT8gsTQpHf
 IGWLi1wjDaqHbS2nwjc4KXjCx6JrinZRZ7PG3ZPiBsJBKVgqUOOoqoXIcJ5FiRBhRz85
 1mU8o4YNX8VjJQ85aFUsYcMSWpX8nEOhrqetI81LFE826vs/zuG9XcAHup56XsozXYJ3
 AEJg==
X-Gm-Message-State: APjAAAU+Ij6yZD04tLlpkPQTP0587qy9q/b4Kc8FQ6yCxOIzx/qNz8AS
 MhaAVOAGQpD0VbR6WGKvXkexqA==
X-Google-Smtp-Source: APXvYqwSxDEav9/aVCpWxzYL7ljaCBlICL3RUZGxhvk2wEbRC7Iy9uxTFCR7vbDqYs9uXZoYUfDOLQ==
X-Received: by 2002:adf:e541:: with SMTP id z1mr43294553wrm.48.1564582954231; 
 Wed, 31 Jul 2019 07:22:34 -0700 (PDT)
Received: from [10.1.2.12] (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id c7sm62001218wro.70.2019.07.31.07.22.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 07:22:33 -0700 (PDT)
Subject: Re: Review required [Was: Associate ddc adapters with connectors]
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Sam Ravnborg <sam@ravnborg.org>
References: <cover.1564161140.git.andrzej.p@collabora.com>
 <20190726183520.GA22572@ravnborg.org> <20190726185538.GD14981@ravnborg.org>
 <6560f93c-a48f-2a8c-afeb-d5e8e200480d@baylibre.com>
 <20190731104007.GA23138@ravnborg.org>
 <959cf323-c6b9-895b-592c-81c52aacae6e@collabora.com>
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
Message-ID: <ce68a0df-1719-7b53-b0ed-89caa9afc4a0@baylibre.com>
Date: Wed, 31 Jul 2019 16:22:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <959cf323-c6b9-895b-592c-81c52aacae6e@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_072236_025675_FF9014DA 
X-CRM114-Status: GOOD (  14.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:433 listed in]
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
Cc: David Airlie <airlied@linux.ie>, Liviu Dudau <liviu.dudau@arm.com>,
 dri-devel@lists.freedesktop.org, Douglas Anderson <dianders@chromium.org>,
 linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, kernel@collabora.com,
 linux-samsung-soc@vger.kernel.org, Vincent Abriou <vincent.abriou@st.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Dave Airlie <airlied@redhat.com>, freedreno@lists.freedesktop.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Jonas Karlman <jonas@kwiboo.se>, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Jyri Sarha <jsarha@ti.com>,
 Mamta Shukla <mamtashukla555@gmail.com>, linux-mediatek@lists.infradead.org,
 Maxime Ripard <mripard@kernel.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 amd-gfx@lists.freedesktop.org, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, linux-kernel@vger.kernel.org,
 Todor Tomov <todor.tomov@linaro.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Huang Rui <ray.huang@amd.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Alex Deucher <alexander.deucher@amd.com>, Shawn Guo <shawnguo@kernel.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Gerd Hoffmann <kraxel@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMzEvMDcvMjAxOSAxNToxMCwgQW5kcnplaiBQaWV0cmFzaWV3aWN6IHdyb3RlOgo+IFcgZG5p
dSAzMS4wNy4yMDE5IG/CoDEyOjQwLCBTYW0gUmF2bmJvcmcgcGlzemU6Cj4+IEhpIE5laWwuCj4+
Cj4+IE9uIFdlZCwgSnVsIDMxLCAyMDE5IGF0IDEwOjAwOjE0QU0gKzAyMDAsIE5laWwgQXJtc3Ry
b25nIHdyb3RlOgo+Pj4gSGkgU2FtLAo+Pj4KPj4+IE9uIDI2LzA3LzIwMTkgMjA6NTUsIFNhbSBS
YXZuYm9yZyB3cm90ZToKPj4+PiBIaSBhbGwuCj4+Pj4KPj4+PiBBbmRyemVqIGhhdmUgZG9uZSBh
IGdvb2Qgam9iIGZvbGxvd2luZyB1cCBvbiBmZWVkYmFjayBhbmQgdGhpcyBzZXJpZXMgaXMKPj4+
PiBub3cgcmVhZHkuCj4+Pj4KPj4+PiBXZSBuZWVkIGFjayBvbiB0aGUgcGF0Y2hlcyB0b3VjaGlu
ZyB0aGUgaW5kaXZpZHVhbCBkcml2ZXJzIGJlZm9yZSB3ZSBjYW4KPj4+PiBwcm9jZWVkLgo+Pj4+
IFBsZWFzZSBjaGVjayB5b3VyIGRyaXZlcnMgYW5kIGdldCBiYWNrLgo+Pj4KPj4+IEkgY2FuIGFw
cGx5IGFsbCBjb3JlIGFuZCBtYWludGFpbmVyLWFja2VkIHBhdGNoZXMgZm9yIG5vdyA6Cj4+PiAx
LCAyLCA3LCAxMCwgMTEsIDE2LCAxNywgMTgsIDE5LCAyMCwgMjEsIDIyLCAyMwo+Pj4KPj4+IGFu
ZCBBbmRyemVqIGNhbiByZXNlbmQgbm90IGFwcGxpZWQgcGF0Y2hlcyB3aXRoIFlvdXJzIGFuZCBF
bWlsJ3MgUmV2aWV3ZWQtYnksCj4+PiBzbyB3ZSBjYW4gd2FpdCBhIGZldyBtb3JlIGRheXMgdG8g
YXBwbHkgdGhlbS4KPj4KPj4gU291bmRzIGxpa2UgYSBnb29kIHBsYW4uCj4+IFRoYW5rcyBmb3Ig
dGhha2luZyBjYXJlIG9mIHRoaXMuCj4gCj4gV2hlbiBpcyBpdCBnb29kIHRpbWUgdG8gcmVzZW5k
IHBhdGNoZXMgMywgNCwgNSwgNiwgOCwgOSwgMTIsIDEzLCAxNCwgMTUsIDI0IGFzIGEKPiBuZXcg
c2VyaWVzPwoKSSdsbCBwaW5nIHlvdSB3aGVuIGV2ZXJ5dGhpbmcgaXMgYXBwbGllZCwgYnVpbGQt
dGVzdGVkIGFuZCBwdXNoZWQgb24gZHJtLW1pc2MtbmV4dAoKTmVpbAoKPiAKPiBBbmRyemVqCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
