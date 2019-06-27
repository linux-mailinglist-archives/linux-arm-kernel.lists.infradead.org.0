Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCB765807B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 12:34:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DuMKYDAdDAyUhwvNWWSNMb5WRQinPuIXeJ+VmBgUF2w=; b=cajDpKOamGAQjW
	GzAFhfVYAxRgGMc6et0upAaTwrWQ40nv2qiBgJHQ+Na/4jv00Kr3pn060oV30/NqLk9v0JxhTYUzg
	lQl5laSpHPgqRC8D4bFzRJ/+EFAIccfYHFW7PJX6ZOtNjV0BMvURJC1HG+JLbaJkgqVFBbhL60lE/
	Pcu+bEpwITWw8ZwOotoTkzx6VRYbK6mCxjvaE+e4dNLmDKHQZAdPIzTiA4b49GPSC4DZzMU2u+h6R
	F7wzjUM8MMgxBIXYFW97cEui79mxeOwca0Tf2U7OvderceP+9Q8d5q7uPVlzY4qw0rv8ECJO1UfAU
	OwpFWKtaj4krlai9kDCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgRjk-0007XA-1N; Thu, 27 Jun 2019 10:34:40 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgRjV-0007WK-FQ
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 10:34:27 +0000
Received: by mail-wm1-x344.google.com with SMTP id h19so6742975wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Jun 2019 03:34:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=UKhEVSzNYhuLc7bB+Vv+QK/Ge2ckuEBmrCEQh4DWmKo=;
 b=PQMBg8ucdEMhBRC5xmxUcn5xjXfJn2NBQ33ZDtCqzs8AiScwd6IBvKiYV80bRnIdD3
 Sm9P+LwGBXszBCn1mh0TRk35gb1OqWbqxfZI0lN6ZzSc9axAl7swa5cEIVGBmLOxvRXe
 fk7Gwgg2M4i8wG3UsX4gqWElRxwBHcf/o3WHIwAlO0+P3DYInhoKc4eEtz/axYr6JIY5
 RFhT1ah/Iq10sGX5K5LHQ2kjl20GA1rGmcUqIWWiP8948LjpB+LEKpDiJBbUDA9bZeoe
 Gine1+CccltfF71ORIzN0USF0NhXJnpzpEHb3TfUYlp+xZwS8I3tFSzRMCkhevJlwocN
 omAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=UKhEVSzNYhuLc7bB+Vv+QK/Ge2ckuEBmrCEQh4DWmKo=;
 b=EqF+eUCaolHJGRCjmN0Ok+zhbPHS8/mWB6apQDBmFNU0ielUwRP+otDk4k9sLWnSm5
 pO0F2ATj/3CPCt52EKFU47i8B7KKUyZ+1NolfWZw84Qr3UuvLGbzk4R5+BrT7Pfvtwk6
 9Ozt0gmVac0Bo7LleCBlPU9cZhg8Gj7qJXqqzoqn7+qU9xaaHa6h/ppB8/mehVCZAPqF
 +EkGkGXAwBEzmdIu8KVjkAAlKfq8UR/ycDZSqYQkClx4WdmUv6TBIw/geUPpr8VyBBkP
 cifbHBNGj0OjKynJfehqT12NmbAmMRKH7SpuPg4sA/xv70eURXrFvNOBSsy5epb/I/3S
 VQFA==
X-Gm-Message-State: APjAAAXBzX/6pris0Oj4h4KWWCMtzCRySc848DD+HkIJc8rMFBbFHpQL
 aWdUK1RuVxViA8S/LVKg+eAQNA==
X-Google-Smtp-Source: APXvYqwJdiMNqcGIqlp3qRgPLBWLDsDkg/syR4BBrAtbtB1o8YLYfzNdH12h4+uIIkI33Zh1viOq0Q==
X-Received: by 2002:a7b:cbcb:: with SMTP id n11mr2652393wmi.146.1561631662433; 
 Thu, 27 Jun 2019 03:34:22 -0700 (PDT)
Received: from [192.168.0.41] (113.102.130.77.rev.sfr.net. [77.130.102.113])
 by smtp.googlemail.com with ESMTPSA id l16sm2253662wrw.42.2019.06.27.03.34.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 27 Jun 2019 03:34:21 -0700 (PDT)
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
Message-ID: <bb362db6-9c50-5d2c-349a-4097dea0449f@linaro.org>
Date: Thu, 27 Jun 2019 12:34:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190623123850.22584-1-Anson.Huang@nxp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_033425_524278_0340884B 
X-CRM114-Status: GOOD (  20.56  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IEFuc29uIEh1YW5nIDxBbnNvbi5IdWFuZ0BueHAuY29tPgo+
IC0tLQo+IENoYW5nZXMgc2luY2UgVjE6Cj4gCS0gaW1wcm92ZSBjb21taXQgbG9nLCBubyBjb250
ZW50IGNoYW5nZS4KPiAtLS0KPiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Rp
bWVyL254cCxzeXNjdHItdGltZXIudHh0IHwgNiArKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDYg
aW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvdGltZXIvbnhwLHN5c2N0ci10aW1lci50eHQgYi9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvdGltZXIvbnhwLHN5c2N0ci10aW1lci50eHQKPiBpbmRleCBkNTc2NTk5
Li5jOTkwN2EwIDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy90aW1lci9ueHAsc3lzY3RyLXRpbWVyLnR4dAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy90aW1lci9ueHAsc3lzY3RyLXRpbWVyLnR4dAo+IEBAIC0xNCw2ICsxNCwx
MSBAQCBSZXF1aXJlZCBwcm9wZXJ0aWVzOgo+ICAtIGNsb2NrcyA6IAkgICAgU3BlY2lmaWVzIHRo
ZSBjb3VudGVyIGNsb2NrLgo+ICAtIGNsb2NrLW5hbWVzOiAJICAgIFNwZWNpZmllcyB0aGUgY2xv
Y2sncyBuYW1lIG9mIHRoaXMgbW9kdWxlCj4gIAo+ICtPcHRpb25hbCBwcm9wZXJ0aWVzOgo+ICsK
PiArLSBjbG9jay1mcmVxdWVuY3kgOiBTcGVjaWZpZXMgc3lzdGVtIGNvdW50ZXIgY2xvY2sgZnJl
cXVlbmN5IGFuZCBpbmRpY2F0ZXMgc3lzdGVtCj4gKwkJICAgIGNvdW50ZXIgZHJpdmVyIHRvIHNr
aXAgY2xvY2sgb3BlcmF0aW9ucy4KPiArCgpTaG91bGRuJ3QgaXQgYmUgcmVxdWlyZWQgYW5kIG11
dHVhbGx5IGV4Y2x1c2l2ZSB3aXRoIGNsb2Nrcy9jbG9jay1uYW1lcz8KCj4gIEV4YW1wbGU6Cj4g
IAo+ICAJc3lzdGVtX2NvdW50ZXI6IHRpbWVyQDMwNmEwMDAwIHsKPiBAQCAtMjIsNCArMjcsNSBA
QCBFeGFtcGxlOgo+ICAJCWNsb2NrcyA9IDwmY2xrXzhtPjsKPiAgCQljbG9jay1uYW1lcyA9ICJw
ZXIiOwo+ICAJCWludGVycnVwdHMgPSA8R0lDX1NQSSA0NyBJUlFfVFlQRV9MRVZFTF9ISUdIPjsK
PiArCQljbG9jay1mcmVxdWVuY3kgPSA8ODMzMzMzMz47Cj4gIAl9Owo+IAoKCi0tIAogPGh0dHA6
Ly93d3cubGluYXJvLm9yZy8+IExpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZv
ciBBUk0gU29DcwoKRm9sbG93IExpbmFybzogIDxodHRwOi8vd3d3LmZhY2Vib29rLmNvbS9wYWdl
cy9MaW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6Ly90d2l0dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3
aXR0ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8ub3JnL2xpbmFyby1ibG9nLz4gQmxvZwoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
