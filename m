Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F110A18BF55
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 19:25:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c8qKuBAkrm2gZKc+2KDeDLE0kY5Bh64IqrLzOzjdU+M=; b=X9jlQRF6JHv/VW
	9SFEtOBlzZ2MFNCwRQN67CixNrJd38plgLokV21hZFcm73IOVRZsTUU65y+WUL75awObfOpiEiwpQ
	Oel/R4JlbcyPShAwktz+eOCa8LmvUAIlafZTy8GRpjWS7AKpX0O0psn7idkF4wUwgwyH/fakZOCmm
	Ll6qOmasJbL5cxPaZ1OVXx2ADKvjQXUtfBz6bGEpUV/CzahGrQPFNb1seBcPQpr02ndK0U2leeCJD
	EdWTLqdlnOGJMBxOynofH8GEqkF2coCCfFnV0O/VNHDvzFYWB0kGy3jSPWv+zCaN0Ho1+DuFNZPDk
	bZ0olJVWexo+vNZwRT+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEzr5-0001NG-FO; Thu, 19 Mar 2020 18:25:19 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEzqs-0000cy-RY
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 18:25:09 +0000
Received: by mail-wr1-x444.google.com with SMTP id a25so4415220wrd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Mar 2020 11:25:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=TQw1PGKPTMJ0Q+G+rToKEsu033L1SxRIQ9vKoZ/eDhs=;
 b=A+WkHmfuVZsFxCjHcaDc9Y7G1koy/78ePcbzpo8H4EM8G+UO0W8GrGqJS3hAlyRB2Y
 jSCLuzuc+wTQrNfjWriUn3KYMN8thh+BzIsWmkTyYd/mi7r+DXdpTfQZcm6ulczysm0k
 jsiAnwvD5XqBxVbpJ7a/BGIr9pthtyNciZ93RVCvBls3yYEajYgMENBLoEtVEQZq8cLU
 x2r2yy06cmkMEHeAw+mOrwgzIXs4bUU8aOnM4aOZnrOCgAbvZrAXMX9BarGcuH4q0wOy
 7FuGCPi+jQzgXIlxT83SOw3PV5GHNIQ6VWhbr2Xzvyk2WVP3WA0oT4f4qavgAeVZTPMP
 ElTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=TQw1PGKPTMJ0Q+G+rToKEsu033L1SxRIQ9vKoZ/eDhs=;
 b=Qjm5NnT3+ug24i65x09fcOO3JibZlWq6y7LDRNJnKMnV41j1E1r0y4UcT7gVQbgtXH
 rgxb3skkQ2LmbgoZnLKgffwaIuvc2qxW1EjwMbDbZOQX67UnkL7BcIIWc5IASqNJRaT5
 T1Fpm0EaRWoNIEn50fT9dkPT/4z7StONI1Z2l2nJkZ/zh6dG5wL05PPAjtw/V682zqYG
 q/x+8tv2Ymp49kGTZ9ndMMB85NqjjWGhlyUgiODdTpAl52gRLuxN/okESVfKrJzhCYCV
 ngx4ZPLI40uWGHfUBDH2Va1TPneejEItUrBYgXLuYrIigY2WVkACSe47vaB4oOYd0dT5
 EWuw==
X-Gm-Message-State: ANhLgQ38rKUWbX8QOuocrY4OcQ/BPSmgMdwFR+ShKxQ1U/lMSuwaA5EA
 eH/7J8+UJ5/xNzpqfekTQP9qLw==
X-Google-Smtp-Source: ADFU+vvuSBHAjDT5LCtY3qcBQjT2otLqXL+Z1gaggmOcIerNmThW/9KDIxTDfWqLw7BM09CnCrk8NQ==
X-Received: by 2002:a5d:630e:: with SMTP id i14mr4962841wru.260.1584642304007; 
 Thu, 19 Mar 2020 11:25:04 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:6dd6:dc1a:136d:210e?
 ([2a01:e34:ed2f:f020:6dd6:dc1a:136d:210e])
 by smtp.googlemail.com with ESMTPSA id d15sm4498193wrp.37.2020.03.19.11.25.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Mar 2020 11:25:03 -0700 (PDT)
Subject: Re: [PATCH 2/3] thermal: imx8mm: Add i.MX8MP support
To: Anson Huang <Anson.Huang@nxp.com>, rui.zhang@intel.com,
 amit.kucheria@verdurent.com, robh+dt@kernel.org, mark.rutland@arm.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <1583681240-14782-1-git-send-email-Anson.Huang@nxp.com>
 <1583681240-14782-2-git-send-email-Anson.Huang@nxp.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 xsFNBFv/yykBEADDdW8RZu7iZILSf3zxq5y8YdaeyZjI/MaqgnvG/c3WjFaunoTMspeusiFE
 sXvtg3ehTOoyD0oFjKkHaia1Zpa1m/gnNdT/WvTveLfGA1gH+yGes2Sr53Ht8hWYZFYMZc8V
 2pbSKh8wepq4g8r5YI1XUy9YbcTdj5mVrTklyGWA49NOeJz2QbfytMT3DJmk40LqwK6CCSU0
 9Ed8n0a+vevmQoRZJEd3Y1qXn2XHys0F6OHCC+VLENqNNZXdZE9E+b3FFW0lk49oLTzLRNIq
 0wHeR1H54RffhLQAor2+4kSSu8mW5qB0n5Eb/zXJZZ/bRiXmT8kNg85UdYhvf03ZAsp3qxcr
 xMfMsC7m3+ADOtW90rNNLZnRvjhsYNrGIKH8Ub0UKXFXibHbafSuq7RqyRQzt01Ud8CAtq+w
 P9EftUysLtovGpLSpGDO5zQ++4ZGVygdYFr318aGDqCljKAKZ9hYgRimPBToDedho1S1uE6F
 6YiBFnI3ry9+/KUnEP6L8Sfezwy7fp2JUNkUr41QF76nz43tl7oersrLxHzj2dYfWUAZWXva
 wW4IKF5sOPFMMgxoOJovSWqwh1b7hqI+nDlD3mmVMd20VyE9W7AgTIsvDxWUnMPvww5iExlY
 eIC0Wj9K4UqSYBOHcUPrVOKTcsBVPQA6SAMJlt82/v5l4J0pSQARAQABzSpEYW5pZWwgTGV6
 Y2FubyA8ZGFuaWVsLmxlemNhbm9AbGluYXJvLm9yZz7Cwa4EEwEIAEECGwEFCwkIBwIGFQoJ
 CAsCBBYCAwECHgECF4ACGQEWIQQk1ibyU76eh+bOW/SP9LjScWdVJwUCXAkeagUJDRnjhwAh
 CRCP9LjScWdVJxYhBCTWJvJTvp6H5s5b9I/0uNJxZ1Un69gQAJK0ODuKzYl0TvHPU8W7uOeu
 U7OghN/DTkG6uAkyqW+iIVi320R5QyXN1Tb6vRx6+yZ6mpJRW5S9fO03wcD8Sna9xyZacJfO
 UTnpfUArs9FF1pB3VIr95WwlVoptBOuKLTCNuzoBTW6jQt0sg0uPDAi2dDzf+21t/UuF7I3z
 KSeVyHuOfofonYD85FkQJN8lsbh5xWvsASbgD8bmfI87gEbt0wq2ND5yuX+lJK7FX4lMO6gR
 ZQ75g4KWDprOO/w6ebRxDjrH0lG1qHBiZd0hcPo2wkeYwb1sqZUjQjujlDhcvnZfpDGR4yLz
 5WG+pdciQhl6LNl7lctNhS8Uct17HNdfN7QvAumYw5sUuJ+POIlCws/aVbA5+DpmIfzPx5Ak
 UHxthNIyqZ9O6UHrVg7SaF3rvqrXtjtnu7eZ3cIsfuuHrXBTWDsVwub2nm1ddZZoC530BraS
 d7Y7eyKs7T4mGwpsi3Pd33Je5aC/rDeF44gXRv3UnKtjq2PPjaG/KPG0fLBGvhx0ARBrZLsd
 5CTDjwFA4bo+pD13cVhTfim3dYUnX1UDmqoCISOpzg3S4+QLv1bfbIsZ3KDQQR7y/RSGzcLE
 z164aDfuSvl+6Myb5qQy1HUQ0hOj5Qh+CzF3CMEPmU1v9Qah1ThC8+KkH/HHjPPulLn7aMaK
 Z8t6h7uaAYnGzjMEXZLIEhYJKwYBBAHaRw8BAQdAGdRDglTydmxI03SYiVg95SoLOKT5zZW1
 7Kpt/5zcvt3CwhsEGAEIACAWIQQk1ibyU76eh+bOW/SP9LjScWdVJwUCXZLIEgIbAgCvCRCP
 9LjScWdVJ40gBBkWCAAdFiEEbinX+DPdhovb6oob3uarTi9/eqYFAl2SyBIAIQkQ3uarTi9/
 eqYWIQRuKdf4M92Gi9vqihve5qtOL396pnZGAP0c3VRaj3RBEOUGKxHzcu17ZUnIoJLjpHdk
 NfBnWU9+UgD/bwTxE56Wd8kQZ2e2UTy4BM8907FsJgAQLL4tD2YZggwWIQQk1ibyU76eh+bO
 W/SP9LjScWdVJ5CaD/0YQyfUzjpR1GnCSkbaLYTEUsyaHuWPI/uSpKTtcbttpYv+QmYsIwD9
 8CeH3zwY0Xl/1fE9Hy59z6Vxv9YVapLx0nPDOA1zDVNq2MnutxHb8t+Imjz4ERCxysqtfYrv
 gao3E/h0c8SEeh+bh5MkjwmU8CwZ3doWyiVdULKESe7/Gs5OuhFzaDVPCpWdsKdCAGyUuP/+
 qRWwKGVpWP0Rrt6MTK24Ibeu3xEZO8c3XOEXH5d9nf6YRqBEIizAecoCr00E9c+6BlRS0AqR
 OQC3/Mm7rWtco3+WOridqVXkko9AcZ8AiM5nu0F8AqYGKg0y7vkL2LOP8us85L0p57MqIR1u
 gDnITlTY0x4RYRWJ9+k7led5WsnWlyv84KNzbDqQExTm8itzeZYW9RvbTS63r/+FlcTa9Cz1
 5fW3Qm0BsyECvpAD3IPLvX9jDIR0IkF/BQI4T98LQAkYX1M/UWkMpMYsL8tLObiNOWUl4ahb
 PYi5Yd8zVNYuidXHcwPAUXqGt3Cs+FIhihH30/Oe4jL0/2ZoEnWGOexIFVFpue0jdqJNiIvA
 F5Wpx+UiT5G8CWYYge5DtHI3m5qAP9UgPuck3N8xCihbsXKX4l8bdHfziaJuowief7igeQs/
 WyY9FnZb0tl29dSa7PdDKFWu+B+ZnuIzsO5vWMoN6hMThTl1DxS+jc7ATQRb/8z6AQgAvSkg
 5w7dVCSbpP6nXc+i8OBz59aq8kuL3YpxT9RXE/y45IFUVuSc2kuUj683rEEgyD7XCf4QKzOw
 +XgnJcKFQiACpYAowhF/XNkMPQFspPNM1ChnIL5KWJdTp0DhW+WBeCnyCQ2pzeCzQlS/qfs3
 dMLzzm9qCDrrDh/aEegMMZFO+reIgPZnInAcbHj3xUhz8p2dkExRMTnLry8XXkiMu9WpchHy
 XXWYxXbMnHkSRuT00lUfZAkYpMP7La2UudC/Uw9WqGuAQzTqhvE1kSQe0e11Uc+PqceLRHA2
 bq/wz0cGriUrcCrnkzRmzYLoGXQHqRuZazMZn2/pSIMZdDxLbwARAQABwsGNBBgBCAAgFiEE
 JNYm8lO+nofmzlv0j/S40nFnVScFAlv/zPoCGwwAIQkQj/S40nFnVScWIQQk1ibyU76eh+bO
 W/SP9LjScWdVJ/g6EACFYk+OBS7pV9KZXncBQYjKqk7Kc+9JoygYnOE2wN41QN9Xl0Rk3wri
 qO7PYJM28YjK3gMT8glu1qy+Ll1bjBYWXzlsXrF4szSqkJpm1cCxTmDOne5Pu6376dM9hb4K
 l9giUinI4jNUCbDutlt+Cwh3YuPuDXBAKO8YfDX2arzn/CISJlk0d4lDca4Cv+4yiJpEGd/r
 BVx2lRMUxeWQTz+1gc9ZtbRgpwoXAne4iw3FlR7pyg3NicvR30YrZ+QOiop8psWM2Fb1PKB9
 4vZCGT3j2MwZC50VLfOXC833DBVoLSIoL8PfTcOJOcHRYU9PwKW0wBlJtDVYRZ/CrGFjbp2L
 eT2mP5fcF86YMv0YGWdFNKDCOqOrOkZVmxai65N9d31k8/O9h1QGuVMqCiOTULy/h+FKpv5q
 t35tlzA2nxPOX8Qj3KDDqVgQBMYJRghZyj5+N6EKAbUVa9Zq8xT6Ms2zz/y7CPW74G1GlYWP
 i6D9VoMMi6ICko/CXUZ77OgLtMsy3JtzTRbn/wRySOY2AsMgg0Sw6yJ0wfrVk6XAMoLGjaVt
 X4iPTvwocEhjvrO4eXCicRBocsIB2qZaIj3mlhk2u4AkSpkKm9cN0KWYFUxlENF4/NKWMK+g
 fGfsCsS3cXXiZpufZFGr+GoHwiELqfLEAQ9AhlrHGCKcgVgTOI6NHg==
Message-ID: <9ca81c42-6086-eb17-3eda-9bc2dab1101e@linaro.org>
Date: Thu, 19 Mar 2020 19:25:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <1583681240-14782-2-git-send-email-Anson.Huang@nxp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_112506_958879_1DCE0C0D 
X-CRM114-Status: GOOD (  27.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Linux-imx@nxp.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDgvMDMvMjAyMCAxNjoyNywgQW5zb24gSHVhbmcgd3JvdGU6Cj4gaS5NWDhNUCBzaGFyZXMg
c2FtZSBUTVUgd2l0aCBpLk1YOE1NLCB0aGUgb25seSBkaWZmZXJlbmNlIGlzIGkuTVg4TVAKPiBo
YXMgdHdvIHRoZXJtYWwgc2Vuc29ycyB3aGlsZSBpLk1YOE1NIE9OTFkgaGFzIG9uZSwgYWRkIG11
bHRpcGxlIHNlbnNvcnMKPiBzdXBwb3J0IGZvciBpLk1YOE1NIFRNVSBkcml2ZXIuCj4gCj4gU2ln
bmVkLW9mZi1ieTogQW5zb24gSHVhbmcgPEFuc29uLkh1YW5nQG54cC5jb20+Cj4gLS0tCj4gIGRy
aXZlcnMvdGhlcm1hbC9pbXg4bW1fdGhlcm1hbC5jIHwgMTA4ICsrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKy0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgOTMgaW5zZXJ0aW9ucygrKSwg
MTUgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdGhlcm1hbC9pbXg4bW1f
dGhlcm1hbC5jIGIvZHJpdmVycy90aGVybWFsL2lteDhtbV90aGVybWFsLmMKPiBpbmRleCBkNTk3
Y2ViLi44YTg3ZWQwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvdGhlcm1hbC9pbXg4bW1fdGhlcm1h
bC5jCj4gKysrIGIvZHJpdmVycy90aGVybWFsL2lteDhtbV90aGVybWFsLmMKPiBAQCAtMTAsMzQg
KzEwLDc1IEBACj4gICNpbmNsdWRlIDxsaW51eC9pby5oPgo+ICAjaW5jbHVkZSA8bGludXgvbW9k
dWxlLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9vZi5oPgo+IC0jaW5jbHVkZSA8bGludXgvb2ZfYWRk
cmVzcy5oPgo+ICsjaW5jbHVkZSA8bGludXgvb2ZfZGV2aWNlLmg+Cj4gICNpbmNsdWRlIDxsaW51
eC9wbGF0Zm9ybV9kZXZpY2UuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L3RoZXJtYWwuaD4KPiAgCj4g
ICNpbmNsdWRlICJ0aGVybWFsX2NvcmUuaCIKPiAgCj4gICNkZWZpbmUgVEVSCQkJMHgwCS8qIFRN
VSBlbmFibGUgKi8KPiArI2RlZmluZSBUUFMJCQkweDQKPiAgI2RlZmluZSBUUklUU1IJCQkweDIw
CS8qIFRNVSBpbW1lZGlhdGUgdGVtcCAqLwo+ICAKPiAgI2RlZmluZSBURVJfRU4JCQlCSVQoMzEp
Cj4gICNkZWZpbmUgVFJJVFNSX1ZBTF9NQVNLCQkweGZmCj4gIAo+IC0jZGVmaW5lIFRFTVBfTE9X
X0xJTUlUCQkxMAo+ICsjZGVmaW5lIFBST0JFX1NFTF9BTEwJCUdFTk1BU0soMzEsIDMwKQo+ICAK
PiAtc3RydWN0IGlteDhtbV90bXUgewo+ICsjZGVmaW5lIFBST0JFMF9TVEFUVVNfT0ZGU0VUCTMw
Cj4gKyNkZWZpbmUgUFJPQkUwX1ZBTF9PRkZTRVQJMTYKPiArI2RlZmluZSBTSUdOX0JJVAkJQklU
KDcpCj4gKyNkZWZpbmUgVEVNUF9WQUxfTUFTSwkJR0VOTUFTSyg2LCAwKQo+ICsKPiArI2RlZmlu
ZSBWRVIxX1RFTVBfTE9XX0xJTUlUCTEwCj4gKyNkZWZpbmUgVkVSMl9URU1QX0xPV19MSU1JVAkt
NDAKPiArI2RlZmluZSBWRVIyX1RFTVBfSElHSF9MSU1JVAkxMjUKPiArCj4gKyNkZWZpbmUgVE1V
X1ZFUjEJCTB4MQo+ICsjZGVmaW5lIFRNVV9WRVIyCQkweDIKPiArCj4gK3N0cnVjdCB0aGVybWFs
X3NvY19kYXRhIHsKPiArCXUzMiBudW1fc2Vuc29yczsKPiArCXUzMiB2ZXJzaW9uOwo+ICt9Owo+
ICsKPiArc3RydWN0IHRtdV9zZW5zb3Igewo+ICsJc3RydWN0IGlteDhtbV90bXUgKnByaXY7Cj4g
Kwl1MzIgaHdfaWQ7Cj4gIAlzdHJ1Y3QgdGhlcm1hbF96b25lX2RldmljZSAqdHpkOwo+ICt9Owo+
ICsKPiArc3RydWN0IGlteDhtbV90bXUgewo+ICAJdm9pZCBfX2lvbWVtICpiYXNlOwo+ICAJc3Ry
dWN0IGNsayAqY2xrOwo+ICsJY29uc3Qgc3RydWN0IHRoZXJtYWxfc29jX2RhdGEgKnNvY2RhdGE7
Cj4gKwlzdHJ1Y3QgdG11X3NlbnNvciBzZW5zb3JzWzBdOwo+ICB9Owo+ICAKPiAgc3RhdGljIGlu
dCB0bXVfZ2V0X3RlbXAodm9pZCAqZGF0YSwgaW50ICp0ZW1wKQo+ICB7Cj4gLQlzdHJ1Y3QgaW14
OG1tX3RtdSAqdG11ID0gZGF0YTsKPiArCXN0cnVjdCB0bXVfc2Vuc29yICpzZW5zb3IgPSBkYXRh
Owo+ICsJc3RydWN0IGlteDhtbV90bXUgKnRtdSA9IHNlbnNvci0+cHJpdjsKPiArCWJvb2wgcmVh
ZHk7Cj4gIAl1MzIgdmFsOwo+ICAKPiAtCXZhbCA9IHJlYWRsX3JlbGF4ZWQodG11LT5iYXNlICsg
VFJJVFNSKSAmIFRSSVRTUl9WQUxfTUFTSzsKPiAtCWlmICh2YWwgPCBURU1QX0xPV19MSU1JVCkK
PiAtCQlyZXR1cm4gLUVBR0FJTjsKPiArCWlmICh0bXUtPnNvY2RhdGEtPnZlcnNpb24gPT0gVE1V
X1ZFUjEpIHsKCkRvbid0IGRvIHRoaXMgaGVyZSwgaW1wbGVtZW50IGEgY2FsbGJhY2sgdG8gcmVh
ZCB0aGUgdGVtcCwgc3RvcmUgaXQgaW4KdGhlIHNvY2RhdGEgYW5kIGNhbGwgaXQgZGlyZWN0bHkg
ZnJvbSBoZXJlLgoKU28geW91IGVuZCB1cCB3aXRoIHNvbWV0aGluZyBzaW1wbGUgbGlrZToKCgkq
dGVtcCA9IHRtdS0+c29jZGF0YS0+Z2V0X3RlbXAoLi4uKTsKCj4gKwkJdmFsID0gcmVhZGxfcmVs
YXhlZCh0bXUtPmJhc2UgKyBUUklUU1IpICYgVFJJVFNSX1ZBTF9NQVNLOwo+ICsJCWlmICh2YWwg
PCBWRVIxX1RFTVBfTE9XX0xJTUlUKQo+ICsJCQlyZXR1cm4gLUVBR0FJTjs+ICsJfSBlbHNlIHsK
PiArCQl2YWwgPSByZWFkbF9yZWxheGVkKHRtdS0+YmFzZSArIFRSSVRTUik7Cj4gKwkJcmVhZHkg
PSB2YWwgJiAoMSA8PCAoc2Vuc29yLT5od19pZCArIFBST0JFMF9TVEFUVVNfT0ZGU0VUKSk7CgoJ
dGVzdF9iaXQoKT8KCj4gKwkJdmFsID0gKHZhbCA+PiAoc2Vuc29yLT5od19pZCAqIFBST0JFMF9W
QUxfT0ZGU0VUKSkKPiArCQkgICAgICAmIFRSSVRTUl9WQUxfTUFTSzsKPiArCQlpZiAodmFsICYg
U0lHTl9CSVQpIC8qIG5lZ2F0aXZlICovCj4gKwkJCXZhbCA9ICh+KHZhbCAmIFRFTVBfVkFMX01B
U0spICsgMSk7CgpQbGVhc2UgaGF2ZSBhIGxvb2sgYXQgdGhlIGRpZmZlcmVudCBiaXRvcHMgYXZh
aWxhYmxlIHRvIHNpbXBsaWZ5IHRoaXMKZGVjb2RpbmcuCgo+ICsJCSp0ZW1wID0gdmFsOwo+ICsJ
CWlmICghcmVhZHkgfHwgKnRlbXAgPCBWRVIyX1RFTVBfTE9XX0xJTUlUIHx8Cj4gKwkJICAgICp0
ZW1wID4gVkVSMl9URU1QX0hJR0hfTElNSVQpCj4gKwkJCXJldHVybiAtRUFHQUlOOwo+ICsJfQo+
ICAKPiAgCSp0ZW1wID0gdmFsICogMTAwMDsKPiAgCj4gQEAgLTUwLDE0ICs5MSwyMSBAQCBzdGF0
aWMgc3RydWN0IHRoZXJtYWxfem9uZV9vZl9kZXZpY2Vfb3BzIHRtdV90el9vcHMgPSB7Cj4gIAo+
ICBzdGF0aWMgaW50IGlteDhtbV90bXVfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRl
dikKPiAgewo+ICsJY29uc3Qgc3RydWN0IHRoZXJtYWxfc29jX2RhdGEgKmRhdGE7Cj4gIAlzdHJ1
Y3QgaW14OG1tX3RtdSAqdG11Owo+ICAJdTMyIHZhbDsKPiAgCWludCByZXQ7Cj4gKwlpbnQgaTsK
PiArCj4gKwlkYXRhID0gb2ZfZGV2aWNlX2dldF9tYXRjaF9kYXRhKCZwZGV2LT5kZXYpOwo+ICAK
PiAtCXRtdSA9IGRldm1fa3phbGxvYygmcGRldi0+ZGV2LCBzaXplb2Yoc3RydWN0IGlteDhtbV90
bXUpLCBHRlBfS0VSTkVMKTsKPiArCXRtdSA9IGRldm1fa3phbGxvYygmcGRldi0+ZGV2LCBzdHJ1
Y3Rfc2l6ZSh0bXUsIHNlbnNvcnMsCj4gKwkJCSAgIGRhdGEtPm51bV9zZW5zb3JzKSwgR0ZQX0tF
Uk5FTCk7Cj4gIAlpZiAoIXRtdSkKPiAgCQlyZXR1cm4gLUVOT01FTTsKPiAgCj4gKwl0bXUtPnNv
Y2RhdGEgPSBkYXRhOwo+ICsKPiAgCXRtdS0+YmFzZSA9IGRldm1fcGxhdGZvcm1faW9yZW1hcF9y
ZXNvdXJjZShwZGV2LCAwKTsKPiAgCWlmIChJU19FUlIodG11LT5iYXNlKSkKPiAgCQlyZXR1cm4g
UFRSX0VSUih0bXUtPmJhc2UpOwo+IEBAIC03NywxNiArMTI1LDM1IEBAIHN0YXRpYyBpbnQgaW14
OG1tX3RtdV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAJCXJldHVybiBy
ZXQ7Cj4gIAl9Cj4gIAo+IC0JdG11LT50emQgPSBkZXZtX3RoZXJtYWxfem9uZV9vZl9zZW5zb3Jf
cmVnaXN0ZXIoJnBkZXYtPmRldiwgMCwKPiAtCQkJCQkJCXRtdSwgJnRtdV90el9vcHMpOwo+IC0J
aWYgKElTX0VSUih0bXUtPnR6ZCkpIHsKPiAtCQlkZXZfZXJyKCZwZGV2LT5kZXYsCj4gLQkJCSJm
YWlsZWQgdG8gcmVnaXN0ZXIgdGhlcm1hbCB6b25lIHNlbnNvcjogJWRcbiIsIHJldCk7Cj4gLQkJ
cmV0dXJuIFBUUl9FUlIodG11LT50emQpOwo+ICsJLyogZGlzYWJsZSB0aGUgbW9uaXRvciBkdXJp
bmcgaW5pdGlhbGl6YXRpb24gKi8KPiArCXZhbCA9IHJlYWRsX3JlbGF4ZWQodG11LT5iYXNlICsg
VEVSKTsKPiArCXZhbCAmPSB+VEVSX0VOOwo+ICsJd3JpdGVsX3JlbGF4ZWQodmFsLCB0bXUtPmJh
c2UgKyBURVIpOwoKQ291bGQgeW91IHdyYXAgdGhvc2UgY2FsbHMgaW5zaWRlIGEgc21hbGwgaGVs
cGVyIGZ1bmN0aW9uIHdpdGggYSBzZWxmCmRlc2NyaWJlZCBuYW1lPwoKPiArCj4gKwlmb3IgKGkg
PSAwOyBpIDwgZGF0YS0+bnVtX3NlbnNvcnM7IGkrKykgewo+ICsJCXRtdS0+c2Vuc29yc1tpXS5w
cml2ID0gdG11Owo+ICsJCXRtdS0+c2Vuc29yc1tpXS50emQgPQo+ICsJCQlkZXZtX3RoZXJtYWxf
em9uZV9vZl9zZW5zb3JfcmVnaXN0ZXIoJnBkZXYtPmRldiwgaSwKPiArCQkJCQkJCSAgICAgJnRt
dS0+c2Vuc29yc1tpXSwKPiArCQkJCQkJCSAgICAgJnRtdV90el9vcHMpOwo+ICsJCWlmIChJU19F
UlIodG11LT5zZW5zb3JzW2ldLnR6ZCkpIHsKPiArCQkJZGV2X2VycigmcGRldi0+ZGV2LAo+ICsJ
CQkJImZhaWxlZCB0byByZWdpc3RlciB0aGVybWFsIHpvbmUgc2Vuc29yWyVkXTogJWRcbiIsCj4g
KwkJCQlpLCByZXQpOwo+ICsJCQlyZXR1cm4gUFRSX0VSUih0bXUtPnNlbnNvcnNbaV0udHpkKTsK
PiArCQl9Cj4gKwkJdG11LT5zZW5zb3JzW2ldLmh3X2lkID0gaTsKCk1heSBiZSB5b3UgY2FuIHN0
b3JlIHRoZSBvZmZzZXQgZGlyZWN0bHksIHNvIGl0IGlzIG5vdCBjb21wdXRlZCBldmVyeQp0aW1l
IHRoZSB0ZW1wZXJhdHVyZSBpcyByZWFkPwoKPiAgCX0KPiAgCj4gIAlwbGF0Zm9ybV9zZXRfZHJ2
ZGF0YShwZGV2LCB0bXUpOwo+ICAKPiArCS8qIGVuYWJsZSBhbGwgdGhlIHByb2JlcyBmb3IgVjIg
VE1VICovCj4gKwlpZiAodG11LT5zb2NkYXRhLT52ZXJzaW9uID09IFRNVV9WRVIyKSB7Cj4gKwkJ
dmFsID0gcmVhZGxfcmVsYXhlZCh0bXUtPmJhc2UgKyBUUFMpOwo+ICsJCXZhbCB8PSBQUk9CRV9T
RUxfQUxMOwo+ICsJCXdyaXRlbF9yZWxheGVkKHZhbCwgdG11LT5iYXNlICsgVFBTKTsKPiArCX0K
ClNhbWUgY29tbWVudCBhcyBiZWZvcmUgYWJvdXQgcHV0dGluZyB0aGVzZSBpbiBhIGhlbHBlcgoK
PiAgCS8qIGVuYWJsZSB0aGUgbW9uaXRvciAqLwo+ICAJdmFsID0gcmVhZGxfcmVsYXhlZCh0bXUt
PmJhc2UgKyBURVIpOwo+ICAJdmFsIHw9IFRFUl9FTjsKPiBAQCAtMTExLDggKzE3OCwxOSBAQCBz
dGF0aWMgaW50IGlteDhtbV90bXVfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYp
Cj4gIAlyZXR1cm4gMDsKPiAgfQo+ICAKPiArc3RhdGljIHN0cnVjdCB0aGVybWFsX3NvY19kYXRh
IGlteDhtbV90bXVfZGF0YSA9IHsKPiArCS5udW1fc2Vuc29ycyA9IDEsCj4gKwkudmVyc2lvbiA9
IFRNVV9WRVIxLAo+ICt9Owo+ICsKPiArc3RhdGljIHN0cnVjdCB0aGVybWFsX3NvY19kYXRhIGlt
eDhtcF90bXVfZGF0YSA9IHsKPiArCS5udW1fc2Vuc29ycyA9IDIsCj4gKwkudmVyc2lvbiA9IFRN
VV9WRVIyLAo+ICt9Owo+ICsKPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgaW14
OG1tX3RtdV90YWJsZVtdID0gewo+IC0JeyAuY29tcGF0aWJsZSA9ICJmc2wsaW14OG1tLXRtdSIs
IH0sCj4gKwl7IC5jb21wYXRpYmxlID0gImZzbCxpbXg4bW0tdG11IiwgLmRhdGEgPSAmaW14OG1t
X3RtdV9kYXRhLCB9LAo+ICsJeyAuY29tcGF0aWJsZSA9ICJmc2wsaW14OG1wLXRtdSIsIC5kYXRh
ID0gJmlteDhtcF90bXVfZGF0YSwgfSwKPiAgCXsgfSwKPiAgfTsKPiAgCj4gCgoKLS0gCiA8aHR0
cDovL3d3dy5saW5hcm8ub3JnLz4gTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUg
Zm9yIEFSTSBTb0NzCgpGb2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93d3cuZmFjZWJvb2suY29tL3Bh
Z2VzL0xpbmFybz4gRmFjZWJvb2sgfAo8aHR0cDovL3R3aXR0ZXIuY29tLyMhL2xpbmFyb29yZz4g
VHdpdHRlciB8CjxodHRwOi8vd3d3LmxpbmFyby5vcmcvbGluYXJvLWJsb2cvPiBCbG9nCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
