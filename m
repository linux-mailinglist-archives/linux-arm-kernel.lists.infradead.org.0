Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D11212B57C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 14:37:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yVOuLdkNJgyfR9ZBtCM3ei7uBqyrvzPXo1qayGj9z/w=; b=J4e8CPjYkJLxkp
	8yu6QmbwgUpPNnv9fy4GWiAFsRJbxKy0vsv9JTrYG3iPNz3lpR99IYJdqdjAwq5vXQLXS+/VHKBpn
	YKkAdgtKFB7jCUTeX1pCVaZPlp3flwIra+vPBYtFMWMdAvH2jmzMpjsKyciKWQeIG1j41Z1BPgorA
	lyply63PpMKdahZmgDNIHdz/qKNKHPEih9WTAEAS71UJsAs7UXF3h92RuRiikTx7auRwyQhX2ujnq
	6qzFLy0oKQXgaVcrxTXYClOcOEoZzhTbOEpVLV5hYTrUsbrqQv1vkcUVydnCeP0ofymCEa+LlNb2M
	+dsHPAjsk8kKUDHJ/Jyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVEsP-0006Z7-SB; Mon, 27 May 2019 12:37:17 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVEsG-0006Xv-Va
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 12:37:10 +0000
Received: by mail-wm1-x341.google.com with SMTP id 7so15693317wmo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 05:37:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=58p9uFjWmpCFDMR48fg0NW3P4SQ0InNf8hSLgO2E5y0=;
 b=PZJIz7jKVldlj98SfaUUp48OS0pnWzI5Ub7kGcwfcQMi8kVT0za3XanBWNyq7YcEq2
 /EI2nVDwiCyArbTm4hlB3OesVnnAQyknSLi81N5RYCpuTa30qPSwMIc5GJjI68FiyC0J
 +vV2EQ1frXQmsc9756ZAfozjBBWE+syHppQ0UgCHJRvHGRsDxfP0pRJQFa66jwc52rs+
 /UkF3v8UYFHMwLAg5d6PA/E1u2838kdckck8oavFSRCzPs8LXZDrJHVRklBdwJ+Ba65I
 nbWD/4JgQW3gejx4kkhyc0wEO3PQIIVYIELkDsMrepV8i0xO8HEx2IShFpO1K4oV13yu
 iqXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=58p9uFjWmpCFDMR48fg0NW3P4SQ0InNf8hSLgO2E5y0=;
 b=icvkOY6nFQTsr8+t6qACB3EWGkmld3Kc9e2/6+LgtHGx4qOUnheo705eDJkmW8o9qB
 A/ByPTdEz0jTztaBlCFV8HY7OuBzuwT6io/em+2tUjIep0UatToGMbTAzWs4Xzs4NoIr
 QU6RI11XC51fOZwIO8Qf7hgszKMbC93BdJmJL7J1IH+sAqFr2cKD+t6bSBVwmlN8HzuZ
 KGYx4xxpTAGMpEBKz07fAA8GtPWPh+u8zfVU+oTZfWPfm1vkRX8FFZhIuCBxtFJ5GJ+V
 fOgOE3rr4TthuhnhTi01e7S7O/qGSSRWRaQdWJFW7V3BB2b1IPDqSflnh9KnN4MsqAU/
 fJgg==
X-Gm-Message-State: APjAAAV/uZijkwE+JrkaPHtxpcOZ/vnTBymJSdrZIlpQKGKac0clw82N
 5W3pOT3igY++LU87HIiuje8+6A==
X-Google-Smtp-Source: APXvYqxItBLqxtzO+Yw1rp1kbwyAY8BvgzlyOqnPwe3LFgNUDugvsWrcQo5yDV2eMDZoaO2lyNnH8w==
X-Received: by 2002:a1c:98cf:: with SMTP id a198mr10499483wme.51.1558960627267; 
 Mon, 27 May 2019 05:37:07 -0700 (PDT)
Received: from [10.1.2.12] (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id t15sm9153447wmt.2.2019.05.27.05.37.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 05:37:06 -0700 (PDT)
Subject: Re: [PATCH 10/14] pwm: meson: simplify the calculation of the
 pre-divider and count
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Thierry Reding <thierry.reding@gmail.com>
References: <20190525181133.4875-1-martin.blumenstingl@googlemail.com>
 <20190525181133.4875-11-martin.blumenstingl@googlemail.com>
 <20190526194120.uzuq6ncz5l2z4hfm@pengutronix.de>
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
Message-ID: <d51106ff-1b1e-b6bd-c17e-df9bb8536c2e@baylibre.com>
Date: Mon, 27 May 2019 14:37:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190526194120.uzuq6ncz5l2z4hfm@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_053709_017301_B6BE9D6B 
X-CRM114-Status: GOOD (  31.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@pengutronix.de, linux-pwm@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjYvMDUvMjAxOSAyMTo0MSwgVXdlIEtsZWluZS1Lw7ZuaWcgd3JvdGU6Cj4gT24gU2F0LCBN
YXkgMjUsIDIwMTkgYXQgMDg6MTE6MjlQTSArMDIwMCwgTWFydGluIEJsdW1lbnN0aW5nbCB3cm90
ZToKPj4gUmVwbGFjZSB0aGUgbG9vcCB0byBjYWxjdWxhdGUgdGhlIHByZS1kaXZpZGVyIGFuZCBj
b3VudCB3aXRoIHR3bwo+PiBzZXBhcmF0ZSBkaXY2NF91NjQoKSBjYWxjdWxhdGlvbnMuIFRoaXMg
bWFrZXMgdGhlIGNvZGUgZWFzaWVyIHRvIHJlYWQKPj4gYW5kIGltcHJvdmVzIHRoZSBwcmVjaXNp
b24uCj4+Cj4+IFR3byBleGFtcGxlIGNhc2VzOgo+PiAxKSAzMi43NjhrSHogTFBPIGNsb2NrIGZv
ciB0aGUgU0RJTyB3aWZpIGNoaXAgb24gS2hhZGFzIFZJTQo+PiAgICBjbG9jayBpbnB1dDogNTAw
TUh6IChGQ0xLX0RJVjQpCj4+ICAgIHBlcmlvZDogMzA1MThucwo+PiAgICBkdXR5IGN5Y2xlOiAx
NTI1OW5zCj4+IG9sZCBhbGdvcml0aG06IHByZV9kaXY9MCwgY250PTE1MjU5Cj4+IG5ldyBhbGdv
cml0aG06IHByZV9kaXY9MCwgY250PTE1MjU5Cj4+IChubyBkaWZmZXJlbmNlIGluIGNhbGN1bGF0
ZWQgdmFsdWVzKQo+Pgo+PiAyKSBQV00gTEVEIG9uIEtoYWRhcyBWSU0KPj4gICAgY2xvY2sgaW5w
dXQ6IDI0TUh6IChYVEFMKQo+PiAgICBwZXJpb2Q6IDc4MTI1MDBucwo+PiAgICBkdXR5IGN5Y2xl
OiA3ODEyNTAwbnMKPj4gb2xkIGFsZ29yaXRobTogcHJlX2Rpdj0yLCBjbnQ9NjIwMDQKPj4gbmV3
IGFsZ29yaXRobTogcHJlX2Rpdj0yLCBjbnQ9NjI1MDAKPj4gVXNpbmcgYSBzY29wZSAoMjRNSHog
c2FtcGxpbmcgcmF0ZSkgc2hvd3MgdGhlIGFjdHVhbCBkaWZmZXJlbmNlOgo+PiAtIG9sZDogNzc1
MzAwMG5zLCBvZmYgYnkgLTU5NTAwbnMgKDAuNzYxNiUpCj4+IC0gbmV3OiA3ODE1MDAwbnMsIG9m
ZiBieSArMjUwMG5zICgwLjAzMiUpCj4+Cj4+IFN1Z2dlc3RlZC1ieTogVXdlIEtsZWluZS1Lw7Zu
aWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KPj4gU2lnbmVkLW9mZi1ieTogTWFy
dGluIEJsdW1lbnN0aW5nbCA8bWFydGluLmJsdW1lbnN0aW5nbEBnb29nbGVtYWlsLmNvbT4KPj4g
LS0tCj4+ICBkcml2ZXJzL3B3bS9wd20tbWVzb24uYyB8IDI1ICsrKysrKysrKystLS0tLS0tLS0t
LS0tLS0KPj4gIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCAxNSBkZWxldGlvbnMo
LSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcHdtL3B3bS1tZXNvbi5jIGIvZHJpdmVycy9w
d20vcHdtLW1lc29uLmMKPj4gaW5kZXggMjc5MTVkNjQ3NWUzLi45YWZhMWU1YWFlYmYgMTAwNjQ0
Cj4+IC0tLSBhL2RyaXZlcnMvcHdtL3B3bS1tZXNvbi5jCj4+ICsrKyBiL2RyaXZlcnMvcHdtL3B3
bS1tZXNvbi5jCj4+IEBAIC0xMiw2ICsxMiw3IEBACj4+ICAjaW5jbHVkZSA8bGludXgvZXJyLmg+
Cj4+ICAjaW5jbHVkZSA8bGludXgvaW8uaD4KPj4gICNpbmNsdWRlIDxsaW51eC9rZXJuZWwuaD4K
Pj4gKyNpbmNsdWRlIDxsaW51eC9tYXRoNjQuaD4KPj4gICNpbmNsdWRlIDxsaW51eC9tb2R1bGUu
aD4KPj4gICNpbmNsdWRlIDxsaW51eC9vZi5oPgo+PiAgI2luY2x1ZGUgPGxpbnV4L29mX2Rldmlj
ZS5oPgo+PiBAQCAtMTQ1LDcgKzE0Niw2IEBAIHN0YXRpYyBpbnQgbWVzb25fcHdtX2NhbGMoc3Ry
dWN0IG1lc29uX3B3bSAqbWVzb24sIHN0cnVjdCBwd21fZGV2aWNlICpwd20sCj4+ICAJc3RydWN0
IG1lc29uX3B3bV9jaGFubmVsICpjaGFubmVsID0gcHdtX2dldF9jaGlwX2RhdGEocHdtKTsKPj4g
IAl1bnNpZ25lZCBpbnQgZHV0eSwgcGVyaW9kLCBwcmVfZGl2LCBjbnQsIGR1dHlfY250Owo+PiAg
CXVuc2lnbmVkIGxvbmcgZmluX2ZyZXEgPSAtMTsKPj4gLQl1NjQgZmluX3BzOwo+PiAgCj4+ICAJ
ZHV0eSA9IHN0YXRlLT5kdXR5X2N5Y2xlOwo+PiAgCXBlcmlvZCA9IHN0YXRlLT5wZXJpb2Q7Cj4+
IEBAIC0xNjQsMjQgKzE2NCwxOSBAQCBzdGF0aWMgaW50IG1lc29uX3B3bV9jYWxjKHN0cnVjdCBt
ZXNvbl9wd20gKm1lc29uLCBzdHJ1Y3QgcHdtX2RldmljZSAqcHdtLAo+PiAgCX0KPj4gIAo+PiAg
CWRldl9kYmcobWVzb24tPmNoaXAuZGV2LCAiZmluX2ZyZXE6ICVsdSBIelxuIiwgZmluX2ZyZXEp
Owo+PiAtCWZpbl9wcyA9ICh1NjQpTlNFQ19QRVJfU0VDICogMTAwMDsKPj4gLQlkb19kaXYoZmlu
X3BzLCBmaW5fZnJlcSk7Cj4+IC0KPj4gLQkvKiBDYWxjIHByZV9kaXYgd2l0aCB0aGUgcGVyaW9k
ICovCj4+IC0JZm9yIChwcmVfZGl2ID0gMDsgcHJlX2RpdiA8PSBNSVNDX0NMS19ESVZfTUFTSzsg
cHJlX2RpdisrKSB7Cj4+IC0JCWNudCA9IERJVl9ST1VORF9DTE9TRVNUX1VMTCgodTY0KXBlcmlv
ZCAqIDEwMDAsCj4+IC0JCQkJCSAgICBmaW5fcHMgKiAocHJlX2RpdiArIDEpKTsKPj4gLQkJZGV2
X2RiZyhtZXNvbi0+Y2hpcC5kZXYsICJmaW5fcHM9JWxsdSBwcmVfZGl2PSV1IGNudD0ldVxuIiwK
Pj4gLQkJCWZpbl9wcywgcHJlX2RpdiwgY250KTsKPj4gLQkJaWYgKGNudCA8PSAweGZmZmYpCj4+
IC0JCQlicmVhazsKPj4gLQl9Cj4+ICAKPj4gKwlwcmVfZGl2ID0gZGl2NjRfdTY0KGZpbl9mcmVx
ICogKHU2NClwZXJpb2QsIE5TRUNfUEVSX1NFQyAqIDB4ZmZmZkxMKTsKPj4gIAlpZiAocHJlX2Rp
diA+IE1JU0NfQ0xLX0RJVl9NQVNLKSB7Cj4+ICAJCWRldl9lcnIobWVzb24tPmNoaXAuZGV2LCAi
dW5hYmxlIHRvIGdldCBwZXJpb2QgcHJlX2RpdlxuIik7Cj4+ICAJCXJldHVybiAtRUlOVkFMOwo+
PiAgCX0KPj4gIAo+PiArCWNudCA9IGRpdjY0X3U2NChmaW5fZnJlcSAqICh1NjQpcGVyaW9kLCBO
U0VDX1BFUl9TRUMgKiAocHJlX2RpdiArIDEpKTsKPj4gKwlpZiAoY250ID4gMHhmZmZmKSB7Cj4+
ICsJCWRldl9lcnIobWVzb24tPmNoaXAuZGV2LCAidW5hYmxlIHRvIGdldCBwZXJpb2QgY250XG4i
KTsKPj4gKwkJcmV0dXJuIC1FSU5WQUw7Cj4+ICsJfQo+PiArCj4gCj4gVGhlcmUgaXMgYSBzbGln
aHQgbW9kaWZpY2F0aW9uIGluIHRoZSBjYWxjdWxhdGlvbiBvZiBwcmVfZGl2IHRoYXQgaXNuJ3QK
PiBjYXRjaGVkIGJ5IHRoZSBleGFtcGxlcyBhYm92ZS4KPiAKPiBCZWZvcmUgdGhpcyBwYXRjaCB3
ZSBoYWQ6Cj4gCj4gCXBpY2sgc21hbGxlc3QgcHJlX2RpdiBzdWNoIHRoYXQKPiAJCXJvdW5kX2Ns
b3Nlc3QocGVyaW9kICogMTAwMCAvIChyb3VuZF9kb3duKDFlMTIgLyBmaW5fZnJlcSkgKiAocHJl
X2RpdiArIDEpKSA8PSAweGZmZmYKPiAKPiBOZXcgYXBwcm9hY2ggaXM6Cj4gCj4gCXByZV9kaXYg
PSByb3VuZF9kb3duKGZpbl9mcmVxICogcGVyaW9kIC8gKDFlOSAqIDB4ZmZmZikpCj4gCj4gQW4g
YWR2YW50YWdlIG9mIHRoZSBuZXcgYXBwcm9hY2ggaXMgYmV0dGVyIGFzIGl0IHJvdW5kcyBvbmx5
IG9uY2UgYW5kIGlzCj4gZWFzaWVyLgo+IAo+IENvbnNpZGVyIGZpbl9mcmVxID0gOTk5OTAwMDEg
YW5kIHBlcmlvZCA9IDY1NTM1NSwgdGhlbiB0aGUgb2xkIGFsZ29yaXRobQo+IHBpY2tzIHByZV9k
aXYgPSAxIHdoaWxlIHRoZSBuZXcgcGlja3MgcHJlX2RpdiA9IDAuCj4gCj4gSSBkaWRuJ3QgY29u
dGludWUgaGVyZSB0byBjaGVjayB3aGljaCBhcmUgdGhlIHJlc3VsdGluZyB3YXZlZm9ybXMsIEkK
PiBhc3N1bWUgdGhleSBhcmUgZGlmZmVyZW50IHRob3VnaC4KPiAKPiBBcyB0aGVyZSBpcyBjdXJy
ZW50bHkgbm8gZGVmaW5pdGlvbiB3aGF0IGlzIGEgImJldHRlciIgYXBwcm94aW1hdGlvbiBmb3IK
PiBhIGdpdmVuIHJlcXVlc3RlZCBwYWlyIChkdXR5X2N5Y2xlLCBwZXJpb2QpIEkgY2Fubm90IHNh
eSBpZiB0aGVzZQo+IGNoYW5nZXMgYXJlIGdvb2Qgb3Igbm90Lgo+IAo+IEFuZCB0aGF0J3MgYSBw
aXR5LCBzbyBJIHN0aWxsIHRoaW5rIHRoZXJlIHNob3VsZCBiZSBhIGRvY3VtZW50ZWQKPiBkZWZp
bml0aW9uIHRoYXQgbGF5cyBkb3duIGhvdyBhIGxvd2xldmVsIGRyaXZlciBzaG91bGQgcm91bmQu
IFdpdGhvdXQKPiB0aGF0IGEgY29uc3VtZXIgdGhhdCBjYXJlcyBhYm91dCBmaW5lIGRpZmZlcmVu
Y2VzIGNhbiBub3QgcmVseSBhbiB0aGUKPiBhYnN0cmFjdGlvbiBwcm92aWRlZCBieSB0aGUgUFdN
IGZyYW1ld29yayBiZWNhdXNlIGVhY2ggbG93LWxldmVsIGRyaXZlcgo+IG1pZ2h0IGJlaGF2ZSBk
aWZmZXJlbnRseS4KPiAKPiBAVGhpZXJyeTogU28gY2FuIHlvdSBwbGVhc2UgY29udGludWUgdGhl
IGRpc2N1c3Npb24gYWJvdXQgdGhpcyB0b3BpYy4KPiBUaGUgbG9uZ2VyIHRoaXMgaXMgZGVsYXll
ZCB0aGUgbW9yZSBwYXRjaGVzIGFyZSBjcmVhdGVkIGFuZCBzdWJtaXR0ZWQKPiB0aGF0IGV2ZW50
dWFsbHkgbWlnaHQgYmUgd3Jvbmcgd2hpY2ggaXMgYSB3YXN0ZSBvZiBkZXZlbG9wZXIgYW5kCj4g
cmV2aWV3ZXIgdGltZS4KPiAKPiBBc3N1bWluZyB0aGUgcGVvcGxlIHdobyBjYXJlIGFib3V0IG1l
c29uIGRvbid0IG9iamVjdCBhZnRlciByZWFkaW5nIHRoaXMKPiBJIHdvdWxkbid0IHdhbnQgdG8g
c3RvcCB0aGlzIHBhdGNoIGdvaW5nIGluIHRob3VnaC4gU286Cj4gCj4gCUFja2VkLWJ5OiBVd2Ug
S2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgo+IAo+IEJlc3Qg
cmVnYXJkcwo+IFV3ZQo+IAoKSSBkb24ndCBoYXZlIGEgc3Ryb25nIHZpZXcgb24gdGhpcywgTWFy
dGluIHNob3dlZCBzaW1pbGFyIG9yIG11Y2ggZ3JlYXRlcgphY2N1cmFjeSBpbiB0aGUgMiBwcmlu
Y2lwYWwgdXNlIGNhc2VzIG9mIHRoZSBkcml2ZXIsIHNvIEknbSBvayB3aXRoIGl0LgoKUmV2aWV3
ZWQtYnk6IE5laWwgQXJtc3Ryb25nIDxuYXJtc3Ryb25nQGJheWxpYnJlLmNvbT4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
