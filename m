Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7190EF8B5B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 10:06:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YkIlHbgLf9vYxnVMKdo0mxrwyD3kETJ2ksjUgMQ3g4M=; b=VQmI/Ff4wf9vvS
	LCX1zd78pQg6nbsVQTcx2RhZRoGVvszY21g/woN3N5rwRvVH3pWsdYcsIySnCpFQyc+vdi7wX3ljP
	gMBL1EyfWqjuPboDZbRAqDBs/K+jghxKjGAzo0X4jEmZyPGSe0Fi0eUCqluBJmGeClg8FfjeycDLb
	Fw9n//qBJCNSdG7M2y8VYOKV1/RMj+wo1nuqcqsAwcz0ywWXZ7KjaDaY+RX4TAH+uJM2h34hjKh9M
	u+8NpJyhh4pv0BmOf54ynUBo8mPjWN7m37Fm+P7S8Ct1cRqr3y4lFF+KVgN9ldhFQfARsSJjsO6H1
	z714RX08V1TX87jRbbWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUS8M-0001rl-7r; Tue, 12 Nov 2019 09:06:46 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUS8E-0001r3-Jm
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 09:06:40 +0000
Received: by mail-wr1-x443.google.com with SMTP id i10so17574338wrs.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 01:06:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=ljiUffEus+Z4ZY4w7IrdP4JG4tKVQVn7p9V/dpEqKPg=;
 b=J14VFDqV427U1m/I8tlQ/s9mnARqI8lVo3sVKaubQlrUK+k+38KWzQbhhhuIRx7dXq
 5W6uhDjkv7eJcUe/QimuoNxOogx2nRGJwpWFauFKZzEH72yJOKbYa5laUd7d65uxN4Ly
 EbRSeMULmWGbIjCePgDaXlFW+sXswPcT8wLyohRc5KMnlcnhFJiUZK2cLegX4vwdGHc0
 yphP2PMh3zil164BK27vD4qIgeEZy2h4grNq7zjrFnTjJ9tcFQhU+6M89+Qwr7Ioc41z
 dpn1FZt3hOUniM9MTT+SmBbSgwQN6+UKiWcz20+Y0XLxZm/MEtgOMg5dtsWUk5QCnpz/
 9gWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=ljiUffEus+Z4ZY4w7IrdP4JG4tKVQVn7p9V/dpEqKPg=;
 b=f1wKKQyqgPqwtlfP03TZwiancbnkABl/hAFhOxhYOYlTqoL5vrOwEPHBont8DMj/C2
 LdgH8xKes1k4Ly/omSFVs5AFZA0Yn3zQP+c+ys1Bw/bz2hrRqFSi4iKn42GumCOb5slo
 ADrU5DXlCa8lz3RQzitRk2KjaMd+dLaHrOc1IsBectxJ/h87XbrHmgM0yPcFa1sRIR8j
 dbKX6tL4YbmJEviYaZO+4Mu4XXRGbVXpbNn1Ac8tTjfzMEe8Y2lJ6xFi2QVUw6xse7vL
 b0ZRWxU74mPHpFttREnubbVeutEC/ea3Jh2NyP1AVjYpXe1VHh2k+5Qgc9zr/dnlOCi6
 ppxw==
X-Gm-Message-State: APjAAAWP0S1Bk5bnVRaE9zOQygHB0BKdVcqU4HuIjTls65shgPSaeju+
 1ESCdZw8WYhGtZNAg4gPDJbH9A==
X-Google-Smtp-Source: APXvYqwxlHl+WAUsL0eDxP8/ZRVrsIACmWwurxGJ76YiQmbnXdX/L9VGsTVJ3x+YwcGDa5o+Bu9u7A==
X-Received: by 2002:a5d:4684:: with SMTP id u4mr19840346wrq.352.1573549596506; 
 Tue, 12 Nov 2019 01:06:36 -0800 (PST)
Received: from [10.1.2.12] (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id y8sm2133333wmi.9.2019.11.12.01.06.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 12 Nov 2019 01:06:35 -0800 (PST)
Subject: Re: [PATCH] soc: amlogic: socinfo: Avoid soc_device_to_device()
To: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20191111221521.1587-1-afaerber@suse.de>
 <20191112054003.GD1210104@kroah.com>
 <0673ba51-108c-76c4-5c71-00804d8ea661@suse.de>
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
Message-ID: <ee3a4c3b-0f99-cc79-a438-08254fe38694@baylibre.com>
Date: Tue, 12 Nov 2019 10:06:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <0673ba51-108c-76c4-5c71-00804d8ea661@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_010638_653252_98CE0F82 
X-CRM114-Status: GOOD (  20.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Kevin Hilman <khilman@baylibre.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTIvMTEvMjAxOSAwOToxMSwgQW5kcmVhcyBGw6RyYmVyIHdyb3RlOgo+IEFtIDEyLjExLjE5
IHVtIDA2OjQwIHNjaHJpZWIgR3JlZyBLcm9haC1IYXJ0bWFuOgo+PiBPbiBNb24sIE5vdiAxMSwg
MjAxOSBhdCAxMToxNToyMVBNICswMTAwLCBBbmRyZWFzIEbDpHJiZXIgd3JvdGU6Cj4+PiBUaGUg
aGVscGVyIHNvY19kZXZpY2VfdG9fZGV2aWNlKCkgaXMgY29uc2lkZXJlZCBkZXByZWNhdGVkLgo+
Pj4gRm9yIGEgZHJpdmVyIF9faW5pdCBmdW5jdGlvbiB0aGUgcHJlZGljdGFibGUgcHJlZml4IHRl
eHQKPj4+ICJzb2Mgc29jMDoiIGZyb20gZGV2X2luZm8oKSBkb2VzIG5vdCBhZGQgcmVhbCB2YWx1
ZSwgc28gdXNlCj4+PiBwcl9pbmZvKCkgdG8gZW1pdCB0aGUgaW5mbyB0ZXh0IHdpdGhvdXQgc3Vj
aCBwcmVmaXguCj4+Pgo+Pj4gV2hpbGUgYXQgaXQsIG5vcm1hbGl6ZSB0aGUgY2FzaW5nIG9mICJk
ZXRlY3RlZCIgZm9yIEdYLgo+Pj4KPj4+IENjOiBHcmVnIEtyb2FoLUhhcnRtYW4gPGdyZWdraEBs
aW51eGZvdW5kYXRpb24ub3JnPgo+Pj4gQ2M6IE1hcnRpbiBCbHVtZW5zdGluZ2wgPG1hcnRpbi5i
bHVtZW5zdGluZ2xAZ29vZ2xlbWFpbC5jb20+Cj4+PiBDYzogTmVpbCBBcm1zdHJvbmcgPG5hcm1z
dHJvbmdAYmF5bGlicmUuY29tPgo+Pj4gU2lnbmVkLW9mZi1ieTogQW5kcmVhcyBGw6RyYmVyIDxh
ZmFlcmJlckBzdXNlLmRlPgo+Pj4gLS0tCj4+PiAgZHJpdmVycy9zb2MvYW1sb2dpYy9tZXNvbi1n
eC1zb2NpbmZvLmMgfCA0ICstLS0KPj4+ICBkcml2ZXJzL3NvYy9hbWxvZ2ljL21lc29uLW14LXNv
Y2luZm8uYyB8IDQgKystLQo+Pj4gIDIgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCA1
IGRlbGV0aW9ucygtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3NvYy9hbWxvZ2ljL21l
c29uLWd4LXNvY2luZm8uYyBiL2RyaXZlcnMvc29jL2FtbG9naWMvbWVzb24tZ3gtc29jaW5mby5j
Cj4+PiBpbmRleCAwMWZjMGQyMGE3MGQuLjEwNWI4MTliYmQ1ZiAxMDA2NDQKPj4+IC0tLSBhL2Ry
aXZlcnMvc29jL2FtbG9naWMvbWVzb24tZ3gtc29jaW5mby5jCj4+PiArKysgYi9kcml2ZXJzL3Nv
Yy9hbWxvZ2ljL21lc29uLWd4LXNvY2luZm8uYwo+Pj4gQEAgLTEyOSw3ICsxMjksNiBAQCBzdGF0
aWMgaW50IF9faW5pdCBtZXNvbl9neF9zb2NpbmZvX2luaXQodm9pZCkKPj4+ICAJc3RydWN0IGRl
dmljZV9ub2RlICpucDsKPj4+ICAJc3RydWN0IHJlZ21hcCAqcmVnbWFwOwo+Pj4gIAl1bnNpZ25l
ZCBpbnQgc29jaW5mbzsKPj4+IC0Jc3RydWN0IGRldmljZSAqZGV2Owo+Pj4gIAlpbnQgcmV0Owo+
Pj4gIAo+Pj4gIAkvKiBsb29rIHVwIGZvciBjaGlwaWQgbm9kZSAqLwo+Pj4gQEAgLTE5Miw5ICsx
OTEsOCBAQCBzdGF0aWMgaW50IF9faW5pdCBtZXNvbl9neF9zb2NpbmZvX2luaXQodm9pZCkKPj4+
ICAJCWtmcmVlKHNvY19kZXZfYXR0cik7Cj4+PiAgCQlyZXR1cm4gUFRSX0VSUihzb2NfZGV2KTsK
Pj4+ICAJfQo+Pj4gLQlkZXYgPSBzb2NfZGV2aWNlX3RvX2RldmljZShzb2NfZGV2KTsKPj4+ICAK
Pj4+IC0JZGV2X2luZm8oZGV2LCAiQW1sb2dpYyBNZXNvbiAlcyBSZXZpc2lvbiAleDoleCAoJXg6
JXgpIERldGVjdGVkXG4iLAo+Pj4gKwlwcl9pbmZvKCJBbWxvZ2ljIE1lc29uICVzIFJldmlzaW9u
ICV4OiV4ICgleDoleCkgZGV0ZWN0ZWRcbiIsCj4+Cj4+IFRoaXMgc2hvdWxkIG1lc3NhZ2Ugc2hv
dWxkIGp1c3QgYmUgcmVtb3ZlZCBlbnRpcmVseS4KPj4KPj4+ICAJCQlzb2NfZGV2X2F0dHItPnNv
Y19pZCwKPj4+ICAJCQlzb2NpbmZvX3RvX21ham9yKHNvY2luZm8pLAo+Pj4gIAkJCXNvY2luZm9f
dG9fbWlub3Ioc29jaW5mbyksCj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zb2MvYW1sb2dpYy9t
ZXNvbi1teC1zb2NpbmZvLmMgYi9kcml2ZXJzL3NvYy9hbWxvZ2ljL21lc29uLW14LXNvY2luZm8u
Ywo+Pj4gaW5kZXggNzhmMGYxYWVjYTU3Li43ZGIyYzk0YTcxMzAgMTAwNjQ0Cj4+PiAtLS0gYS9k
cml2ZXJzL3NvYy9hbWxvZ2ljL21lc29uLW14LXNvY2luZm8uYwo+Pj4gKysrIGIvZHJpdmVycy9z
b2MvYW1sb2dpYy9tZXNvbi1teC1zb2NpbmZvLmMKPj4+IEBAIC0xNjcsOCArMTY3LDggQEAgc3Rh
dGljIGludCBfX2luaXQgbWVzb25fbXhfc29jaW5mb19pbml0KHZvaWQpCj4+PiAgCQlyZXR1cm4g
UFRSX0VSUihzb2NfZGV2KTsKPj4+ICAJfQo+Pj4gIAo+Pj4gLQlkZXZfaW5mbyhzb2NfZGV2aWNl
X3RvX2RldmljZShzb2NfZGV2KSwgIkFtbG9naWMgJXMgJXMgZGV0ZWN0ZWRcbiIsCj4+PiAtCQkg
c29jX2Rldl9hdHRyLT5zb2NfaWQsIHNvY19kZXZfYXR0ci0+cmV2aXNpb24pOwo+Pj4gKwlwcl9p
bmZvKCJBbWxvZ2ljICVzICVzIGRldGVjdGVkXG4iLAo+Pj4gKwkJc29jX2Rldl9hdHRyLT5zb2Nf
aWQsIHNvY19kZXZfYXR0ci0+cmV2aXNpb24pOwo+Pgo+PiBTYW1lIGhlcmUsIG5vIG5lZWQgdG8g
cG9sdXRlIHRoZSBrZXJuZWwgbG9nIGZvciB3aGVuIGFsbCBpcyBnb2luZyBqdXN0Cj4+IGZpbmUu
Cj4+Cj4+IFRoYXQncyB3aHkgd2UgY3JlYXRlZCAiY29tbW9uIiBkcml2ZXIgaW5pdCBoZWxwZXJz
LCB0byBwcmV2ZW50IHRoZQo+PiBhYmlsaXR5IGZvciB0aGlzIHR5cGUgb2Ygbm9pc2UgZnJvbSBl
dmVuIGJlaW5nIGFibGUgdG8gYmUgY3JlYXRlZCBhdAo+PiBhbGwuCj4gCj4gTGV0J3MgaGF2ZSB0
aGF0IGRpc2N1c3Npb24gaW4gdGhlIGNlbnRyYWwgdGhyZWFkIHBsZWFzZS4KPiAKPiBGYWN0IGhl
cmUgaXMgdGhhdCBBbWxvZ2ljIEdYJ3Mga2VybmVsIG91dHB1dCAoYW5kIHRoaXMgY29kZSBnZXR0
aW5nCj4gbWlycm9yZWQgaW50byBVLUJvb3QpIG1hZGUgbWUgYXdhcmUgb2YgdGhpcyBkcml2ZXIg
aW4gdGhlIGZpcnN0IHBsYWNlLgoKQXMgVXdlIHNhaWQgaW4gdGhlIGNvbW1vbiB0aHJlYWQsIHRo
aXMgcHJpbnQgZG9lc24ndCBwb2x1dGUgdGhlIGtlcm5lbCBsb2cgYXQgYWxsLAppdCdzIHByZXR0
eSB1c2VmdWwgZm9yIENJLCBsaWtlIGtlcm5lbENJLCB0byBjaGVjayB0aGUgdGVzdCBjb3ZlcmFn
ZSBvbiBTb0NzIHJldmlzaW9ucy4KClllcyBpdCdzIGR1cGxpY2F0ZWQgaW4gVS1ib290LCBidXQg
YSBsaXR0bGUgZnJhY3Rpb24gb2YgdGhlIGJvYXJkcyBpbiBrQ2kgdXNlcyB0aGlzClUtQm9vdCB2
ZXJzaW9uLCB0aGV5IG9mdGVuIHVzZSB0aGUgdmVuZG9yIGJvb3Rsb2FkZXIuCgpBbmQgQlRXLCBi
eSBtb3ZpbmcgZGV2X2luZm8gdG8gcHJfaW5mbyBhY3R1YWxseSBjaGFuZ2VzIHRoZSBvdXRwdXQg
Zm9ybWF0LgoKQ2FuIHlvdSBiZSBtb3JlIHByZWNpc2UgYWJvdXQgd2h5ICJzb2NfZGV2aWNlX3Rv
X2RldmljZSgpIiBpcyBub3cgc3VkZGVudGx5IGRlcHJlY2F0ZWQgPwoKTmVpbAoKPiAKPiBSZWdh
cmRzLAo+IEFuZHJlYXMKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
