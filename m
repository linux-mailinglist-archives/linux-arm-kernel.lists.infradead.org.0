Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B520D559BD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 23:13:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q+/pT+RCEzrbTmxzZIXjM8JT/T5md40JFcS9ZEbLfcQ=; b=WOWxDTdbsWMPnS
	A8HAjxHfdxlGsDwM/psOYZMqj2tHCh4dp1dnDX+nG7c102tGR9s3gptd0QhjYluTWtZkjCNjai1/T
	6CPYRJHT/dzHLHVI2Ap1sN3qghyYEZes2lqRfI+eulPII77y53ZYihGwc+vMXcmPCFu+9Zvm7ucib
	RIvsZuXJlFyUrnbEJC17YktfFb79NdBYMMRfjiT33/KaeEGwRBQIp287x4UwVkSDHGeHPtYMoXHYo
	FCvaarEeRVYatuO+A8+TTUl9ciY0UfVSE+X+IHWsbLYSEwsotBWweqdUS1iro/uTYJKlqRTXdaevn
	AYQq+1Fxb+Xu4RapTikw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfskK-0004Zg-6p; Tue, 25 Jun 2019 21:12:56 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfsk6-0004ZL-QP
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 21:12:44 +0000
Received: by mail-wm1-x344.google.com with SMTP id f17so269330wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 14:12:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=JxbNiouwUNu/z6e5pm0p8mpMZNAgg63FBDXa3Rb3sGE=;
 b=DkyJsjNuw0lI4ZQ97pB02LZN/kW89/zoAVanXCu9Y3m1RzSbRBA9eReKjI7ikwUF0z
 ygXeUT460zvBogM85uxPntDpY6Veot3qkF5NK05rW7cO4gz3fr2H5NrhXPwQbzWnQK8u
 gCV2EF4lSnQd7LnJuccejqp7kEs1yyIYg42naxa2tmYSBN7uJQrNNixtX/fsG+pOIVdo
 lldkq0HugTgo5sVi0xRsD0G/gW7cLxHXGuShVEUf0gaF2Rk6j70hzb/qDeLY48E/L9xf
 c+zJjB+Rhxwf3sKcbXqUTFFtuFLLCvwyXW0X0Dr+hfzVkNSN0beWETXGZWaYOzxjiPKH
 yLnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=JxbNiouwUNu/z6e5pm0p8mpMZNAgg63FBDXa3Rb3sGE=;
 b=ZOCNgIPOkmLmAD854jNiE+bEjWDhZzgH/u86XodKt7tLX1TNJuuI0Ra1E33ZSeknsC
 +4Rx0DTUyGDcAfZfVyboWmw/ovrIYSYE+a37ebNZ2TFGxuXydH39eEKg4vH5BZmSB6nG
 QvIdX8aOOTi3MSUD/mYjmhvSzOhvfRUs/MexUQpPp5ZHWAAl6oJezxZCrYXyDR6TFe/q
 ehXn+qt2RdFD2+3TywEAeHF1Ff4y6iqHGHoUCh6aqhTptV5DGqT69feaZpwQDbMbt5ZY
 bEhJX9cs7TamlzlCY06P5IUlCQGxiG+2nVcFKVeMNbgwJc8h09m/qaLbEk7qsQV4R533
 yEjA==
X-Gm-Message-State: APjAAAWH25vq58cskTKRW+SD3xTKCUmqmW5m1rPnObZunFcm30r+J80C
 XOLJLH51GofxAmWqITjcuLr3WyCF9Us=
X-Google-Smtp-Source: APXvYqyLCxtcJtmotNlhM9OToW6OjrVChijLsw0HK7hUtOFNHcDq1yZTeAlRzJ2BIChrrnnHFv9b5A==
X-Received: by 2002:a1c:4956:: with SMTP id w83mr255885wma.67.1561497160712;
 Tue, 25 Jun 2019 14:12:40 -0700 (PDT)
Received: from [192.168.0.41] (26.92.130.77.rev.sfr.net. [77.130.92.26])
 by smtp.googlemail.com with ESMTPSA id g19sm243903wmg.10.2019.06.25.14.12.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 14:12:39 -0700 (PDT)
Subject: Re: [PATCH RESEND V2 1/3] clocksource/drivers/sysctr: Add optional
 clock-frequency property
To: Anson.Huang@nxp.com, tglx@linutronix.de, robh+dt@kernel.org,
 mark.rutland@arm.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, l.stach@pengutronix.de,
 abel.vesa@nxp.com, ccaione@baylibre.com, angus@akkea.ca,
 andrew.smirnov@gmail.com, agx@sigxcpu.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20190623123850.22584-1-Anson.Huang@nxp.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Openpgp: preference=signencrypt
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 mQINBFv/yykBEADDdW8RZu7iZILSf3zxq5y8YdaeyZjI/MaqgnvG/c3WjFaunoTMspeusiFE
 sXvtg3ehTOoyD0oFjKkHaia1Zpa1m/gnNdT/WvTveLfGA1gH+yGes2Sr53Ht8hWYZFYMZc8V
 2pbSKh8wepq4g8r5YI1XUy9YbcTdj5mVrTklyGWA49NOeJz2QbfytMT3DJmk40LqwK6CCSU0
 9Ed8n0a+vevmQoRZJEd3Y1qXn2XHys0F6OHCC+VLENqNNZXdZE9E+b3FFW0lk49oLTzLRNIq
 0wHeR1H54RffhLQAor2+4kSSu8mW5qB0n5Eb/zXJZZ/bRiXmT8kNg85UdYhvf03ZAsp3qxcr
 xMfMsC7m3+ADOtW90rNNLZnRvjhsYNrGIKH8Ub0UKXFXibHbafSuq7RqyRQzt01Ud8CAtq+w
 P9EftUysLtovGpLSpGDO5zQ++4ZGVygdYFr318aGDqCljKAKZ9hYgRimPBToDedho1S1uE6F
 6YiBFnI3ry9+/KUnEP6L8Sfezwy7fp2JUNkUr41QF76nz43tl7oersrLxHzj2dYfWUAZWXva
 wW4IKF5sOPFMMgxoOJovSWqwh1b7hqI+nDlD3mmVMd20VyE9W7AgTIsvDxWUnMPvww5iExlY
 eIC0Wj9K4UqSYBOHcUPrVOKTcsBVPQA6SAMJlt82/v5l4J0pSQARAQABtCpEYW5pZWwgTGV6
 Y2FubyA8ZGFuaWVsLmxlemNhbm9AbGluYXJvLm9yZz6JAlcEEwEIAEECGwEFCwkIBwIGFQoJ
 CAsCBBYCAwECHgECF4ACGQEWIQQk1ibyU76eh+bOW/SP9LjScWdVJwUCXAkeagUJDRnjhwAK
 CRCP9LjScWdVJ+vYEACStDg7is2JdE7xz1PFu7jnrlOzoITfw05BurgJMqlvoiFYt9tEeUMl
 zdU2+r0cevsmepqSUVuUvXztN8HA/Ep2vccmWnCXzlE56X1AK7PRRdaQd1SK/eVsJVaKbQTr
 ii0wjbs6AU1uo0LdLINLjwwItnQ83/ttbf1LheyN8yknlch7jn6H6J2A/ORZECTfJbG4ecVr
 7AEm4A/G5nyPO4BG7dMKtjQ+crl/pSSuxV+JTDuoEWUO+YOClg6azjv8Onm0cQ46x9JRtahw
 YmXdIXD6NsJHmMG9bKmVI0I7o5Q4XL52X6QxkeMi8+VhvqXXIkIZeizZe5XLTYUvFHLdexzX
 Xze0LwLpmMObFLifjziJQsLP2lWwOfg6ZiH8z8eQJFB8bYTSMqmfTulB61YO0mhd676q17Y7
 Z7u3md3CLH7rh61wU1g7FcLm9p5tXXWWaAud9Aa2kne2O3sirO0+JhsKbItz3d9yXuWgv6w3
 heOIF0b91JyrY6tjz42hvyjxtHywRr4cdAEQa2S7HeQkw48BQOG6PqQ9d3FYU34pt3WFJ19V
 A5qqAiEjqc4N0uPkC79W32yLGdyg0EEe8v0Uhs3CxM9euGg37kr5fujMm+akMtR1ENITo+UI
 fgsxdwjBD5lNb/UGodU4QvPipB/xx4zz7pS5+2jGimfLeoe7mgGJxrkBDQRb/8z6AQgAvSkg
 5w7dVCSbpP6nXc+i8OBz59aq8kuL3YpxT9RXE/y45IFUVuSc2kuUj683rEEgyD7XCf4QKzOw
 +XgnJcKFQiACpYAowhF/XNkMPQFspPNM1ChnIL5KWJdTp0DhW+WBeCnyCQ2pzeCzQlS/qfs3
 dMLzzm9qCDrrDh/aEegMMZFO+reIgPZnInAcbHj3xUhz8p2dkExRMTnLry8XXkiMu9WpchHy
 XXWYxXbMnHkSRuT00lUfZAkYpMP7La2UudC/Uw9WqGuAQzTqhvE1kSQe0e11Uc+PqceLRHA2
 bq/wz0cGriUrcCrnkzRmzYLoGXQHqRuZazMZn2/pSIMZdDxLbwARAQABiQI2BBgBCAAgFiEE
 JNYm8lO+nofmzlv0j/S40nFnVScFAlv/zPoCGwwACgkQj/S40nFnVSf4OhAAhWJPjgUu6VfS
 mV53AUGIyqpOynPvSaMoGJzhNsDeNUDfV5dEZN8K4qjuz2CTNvGIyt4DE/IJbtasvi5dW4wW
 Fl85bF6xeLM0qpCaZtXAsU5gzp3uT7ut++nTPYW+CpfYIlIpyOIzVAmw7rZbfgsId2Lj7g1w
 QCjvGHw19mq85/wiEiZZNHeJQ3GuAr/uMoiaRBnf6wVcdpUTFMXlkE8/tYHPWbW0YKcKFwJ3
 uIsNxZUe6coNzYnL0d9GK2fkDoqKfKbFjNhW9TygfeL2Qhk949jMGQudFS3zlwvN9wwVaC0i
 KC/D303DiTnB0WFPT8CltMAZSbQ1WEWfwqxhY26di3k9pj+X3BfOmDL9GBlnRTSgwjqjqzpG
 VZsWouuTfXd9ZPPzvYdUBrlTKgojk1C8v4fhSqb+ard+bZcwNp8Tzl/EI9ygw6lYEATGCUYI
 Wco+fjehCgG1FWvWavMU+jLNs8/8uwj1u+BtRpWFj4ug/VaDDIuiApKPwl1Ge+zoC7TLMtyb
 c00W5/8EckjmNgLDIINEsOsidMH61ZOlwDKCxo2lbV+Ij078KHBIY76zuHlwonEQaHLCAdqm
 WiI95pYZNruAJEqZCpvXDdClmBVMZRDRePzSljCvoHxn7ArEt3F14mabn2RRq/hqB8IhC6ny
 xAEPQIZaxxginIFYEziOjR65AQ0EW//NCAEIALcJqSmQdkt04vIBD12dryF6WcVWYvVwhspt
 RlZbZ/NZ6nzarzEYPFcXaYOZCOCv+Xtm6hB8fh5XHd7Y8CWuZNDVp3ozuqwTkzQuux/aVdNb
 Fe4VNeKGN2FK1aNlguAXJNCDNRCpWgRHuU3rWwGUMgentJogARvxfex2/RV/5mzYG/N1DJKt
 F7g1zEcQD3JtK6WOwZXd+NDyke3tdG7vsNRFjMDkV4046bOOh1BKbWYu8nL3UtWBxhWKx3Pu
 1VOBUVwL2MJKW6umk+WqUNgYc2bjelgcTSdz4A6ZhJxstUO4IUfjvYRjoqle+dQcx1u+mmCn
 8EdKJlbAoR4NUFZy7WUAEQEAAYkDbAQYAQgAIBYhBCTWJvJTvp6H5s5b9I/0uNJxZ1UnBQJb
 /80IAhsCAUAJEI/0uNJxZ1UnwHQgBBkBCAAdFiEEGn3N4YVz0WNVyHskqDIjiipP6E8FAlv/
 zQgACgkQqDIjiipP6E+FuggAl6lkO7BhTkrRbFhrcjCm0bEoYWnCkQtX9YFvElQeA7MhxznO
 BY/r1q2Uf6Ifr3YGEkLnME/tQQzUwznydM94CtRJ8KDSa1CxOseEsKq6B38xJtjgYSxNdgQb
 EIfCzUHIGfk94AFKPdV6pqqSU5VpPUagF+JxiAkoEPOdFiQCULFNRLMsOtG7yp8uSyJRp6Tz
 cQ+0+1QyX1krcHBUlNlvfdmL9DM+umPtbS9F6oRph15mvKVYiPObI1z8ymHoc68ReWjhUuHc
 IDQs4w9rJVAyLypQ0p+ySDcTc+AmPP6PGUayIHYX63Q0KhJFgpr1wH0pHKpC78DPtX1a7HGM
 7MqzQ4NbD/4oLKKwByrIp12wLpSe3gDQPxLpfGgsJs6BBuAGVdkrdfIx2e6ENnwDoF0Veeji
 BGrVmjVgLUWV9nUP92zpyByzd8HkRSPNZNlisU4gnz1tKhQl+j6G/l2lDYsqKeRG55TXbu9M
 LqJYccPJ85B0PXcy63fL9U5DTysmxKQ5RgaxcxIZCM528ULFQs3dfEx5euWTWnnh7pN30RLg
 a+0AjSGd886Bh0kT1Dznrite0dzYlTHlacbITZG84yRk/gS7DkYQdjL8zgFr/pxH5CbYJDk0
 tYUhisTESeesbvWSPO5uNqqy1dAFw+dqRcF5gXIh3NKX0gqiAA87NM7nL5ym/CNpJ7z7nRC8
 qePOXubgouxumi5RQs1+crBmCDa/AyJHKdG2mqCt9fx5EPbDpw6Zzx7hgURh4ikHoS7/tLjK
 iqWjuat8/HWc01yEd8rtkGuUcMqbCi1XhcAmkaOnX8FYscMRoyyMrWClRZEQRokqZIj79+PR
 adkDXtr4MeL8BaB7Ij2oyRVjXUwhFQNKi5Z5Rve0a3zvGkkqw8Mz20BOksjSWjAF6g9byukl
 CUVjC03PdMSufNLK06x5hPc/c4tFR4J9cLrV+XxdCX7r0zGos9SzTPGNuIk1LK++S3EJhLFj
 4eoWtNhMWc1uiTf9ENza0ntqH9XBWEQ6IA1gubCniGG+Xg==
Message-ID: <55abafbd-c010-32b5-6d76-26040830d5b0@linaro.org>
Date: Tue, 25 Jun 2019 23:12:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190623123850.22584-1-Anson.Huang@nxp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_141242_872255_FBBE4036 
X-CRM114-Status: GOOD (  21.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linux-imx@nxp.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjMvMDYvMjAxOSAxNDozOCwgQW5zb24uSHVhbmdAbnhwLmNvbSB3cm90ZToKPiBGcm9tOiBB
bnNvbiBIdWFuZyA8QW5zb24uSHVhbmdAbnhwLmNvbT4KPiAKPiBTeXN0ZW1zIHdoaWNoIHVzZSBw
bGF0Zm9ybSBkcml2ZXIgbW9kZWwgZm9yIGNsb2NrIGRyaXZlciByZXF1aXJlIHRoZQo+IGNsb2Nr
IGZyZXF1ZW5jeSB0byBiZSBzdXBwbGllZCB2aWEgZGV2aWNlIHRyZWUgd2hlbiBzeXN0ZW0gY291
bnRlcgo+IGRyaXZlciBpcyBlbmFibGVkLgo+IAo+IFRoaXMgaXMgbmVjZXNzYXJ5IGFzIGluIHRo
ZSBwbGF0Zm9ybSBkcml2ZXIgbW9kZWwgdGhlIG9mX2NsayBvcGVyYXRpb25zCj4gZG8gbm90IHdv
cmsgY29ycmVjdGx5IGJlY2F1c2Ugc3lzdGVtIGNvdW50ZXIgZHJpdmVyIGlzIGluaXRpYWxpemVk
IGluCj4gZWFybHkgcGhhc2Ugb2Ygc3lzdGVtIGJvb3QgdXAsIGFuZCBjbG9jayBkcml2ZXIgdXNp
bmcgcGxhdGZvcm0gZHJpdmVyCj4gbW9kZWwgaXMgTk9UIHJlYWR5IGF0IHRoYXQgdGltZSwgaXQg
d2lsbCBjYXVzZSBzeXN0ZW0gY291bnRlciBkcml2ZXIKPiBpbml0aWFsaXphdGlvbiBmYWlsZWQu
Cj4gCj4gQWRkIHRoZSBvcHRpbmFsIGNsb2NrLWZyZXF1ZW5jeSB0byB0aGUgZGV2aWNlIHRyZWUg
YmluZGluZ3Mgb2YgdGhlIE5YUAo+IHN5c3RlbSBjb3VudGVyLCBzbyB0aGUgZnJlcXVlbmN5IGNh
biBiZSBoYW5kZWQgaW4gYW5kIHRoZSBvZl9jbGsKPiBvcGVyYXRpb25zIGNhbiBiZSBza2lwcGVk
LgoKSXNuJ3QgaXQgcG9zc2libGUgdG8gY3JlYXRlIGEgZml4ZWQtY2xvY2sgYW5kIHJlZmVyIHRv
IGl0PyBTbyBubyBuZWVkIHRvCmNyZWF0ZSBhIHNwZWNpZmljIGFjdGlvbiBiZWZvcmUgY2FsbGlu
ZyB0aW1lcl9vZl9pbml0KCkgPwoKPiBTaWduZWQtb2ZmLWJ5OiBBbnNvbiBIdWFuZyA8QW5zb24u
SHVhbmdAbnhwLmNvbT4KPiAtLS0KPiBDaGFuZ2VzIHNpbmNlIFYxOgo+IAktIGltcHJvdmUgY29t
bWl0IGxvZywgbm8gY29udGVudCBjaGFuZ2UuCj4gLS0tCj4gIERvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy90aW1lci9ueHAsc3lzY3RyLXRpbWVyLnR4dCB8IDYgKysrKysrCj4gIDEg
ZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3RpbWVyL254cCxzeXNjdHItdGltZXIudHh0IGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3RpbWVyL254cCxzeXNjdHItdGltZXIudHh0
Cj4gaW5kZXggZDU3NjU5OS4uYzk5MDdhMCAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvdGltZXIvbnhwLHN5c2N0ci10aW1lci50eHQKPiArKysgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdGltZXIvbnhwLHN5c2N0ci10aW1lci50eHQK
PiBAQCAtMTQsNiArMTQsMTEgQEAgUmVxdWlyZWQgcHJvcGVydGllczoKPiAgLSBjbG9ja3MgOiAJ
ICAgIFNwZWNpZmllcyB0aGUgY291bnRlciBjbG9jay4KPiAgLSBjbG9jay1uYW1lczogCSAgICBT
cGVjaWZpZXMgdGhlIGNsb2NrJ3MgbmFtZSBvZiB0aGlzIG1vZHVsZQo+ICAKPiArT3B0aW9uYWwg
cHJvcGVydGllczoKPiArCj4gKy0gY2xvY2stZnJlcXVlbmN5IDogU3BlY2lmaWVzIHN5c3RlbSBj
b3VudGVyIGNsb2NrIGZyZXF1ZW5jeSBhbmQgaW5kaWNhdGVzIHN5c3RlbQo+ICsJCSAgICBjb3Vu
dGVyIGRyaXZlciB0byBza2lwIGNsb2NrIG9wZXJhdGlvbnMuCj4gKwo+ICBFeGFtcGxlOgo+ICAK
PiAgCXN5c3RlbV9jb3VudGVyOiB0aW1lckAzMDZhMDAwMCB7Cj4gQEAgLTIyLDQgKzI3LDUgQEAg
RXhhbXBsZToKPiAgCQljbG9ja3MgPSA8JmNsa184bT47Cj4gIAkJY2xvY2stbmFtZXMgPSAicGVy
IjsKPiAgCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgNDcgSVJRX1RZUEVfTEVWRUxfSElHSD47Cj4g
KwkJY2xvY2stZnJlcXVlbmN5ID0gPDgzMzMzMzM+Owo+ICAJfTsKPiAKCgotLSAKIDxodHRwOi8v
d3d3LmxpbmFyby5vcmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3Ig
QVJNIFNvQ3MKCkZvbGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20vcGFnZXMv
TGluYXJvPiBGYWNlYm9vayB8CjxodHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJvb3JnPiBUd2l0
dGVyIHwKPGh0dHA6Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxvZy8+IEJsb2cKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
