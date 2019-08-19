Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B7C92576
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 15:46:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=l/jCGsJCmYYr7xWOKSOciDQ+06/ze/uDid8gRrVV/8E=; b=aOEeLhHrwn7+L9txGftB4tBm9
	31X0r1LXQVcSkvKJweyE1Cpenoh5wjdCgxKllCmFusxXdgrMTgkXFEtixrldR87Wt3Qgi//OHiFyW
	2RangJgnRV1s5iAUlitDX7S1NP2cocgIcnY59z7y4y9gcegHovflni8hwub/jsOHkV77tydY9UNvs
	PPe4eyKAT+79hRc7FCe8pMs4iZiQokCq1oc9iaFyaVIWGCpn9Q0SKGntYrRZJ3//SN1Wp+isnsv1T
	sukYnLt9QfLbXAySKI0Bg/kiQQMMQSczw0isimM1mw8AFzgoR+qxQacStjlVt/uxg45AoO7I1aw5e
	X/8Rm2CTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzhzm-0007zy-VX; Mon, 19 Aug 2019 13:46:50 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzhzM-0007xu-C4
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 13:46:26 +0000
Received: by mail-wm1-x341.google.com with SMTP id p77so79674wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 06:46:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to;
 bh=QeIesQtfeDzRKPcit+1p024wyDr7bkrzcFn9Hc+Mm7k=;
 b=hbURy058UOk+YmbRgiLflTP+QhlHxNU3VNYowD6ASb59VpusSs6PaKCuocwHI/Ipop
 lTNDhI+37Yp6T5z9+e3y5P8Ggf9UUPn/qnK+q2W7vQM/XLocQ6TQ/PSEpd9HEf55lXLs
 xmw/R4WnljD6kViSH7w9Gz8Zuz8gE/+ahR+KNRI99dXneU/U0jkWxPqjapEPw60dOrm5
 nN1h8JYqGtI9YuGVvPPndCbsnWNzCT73Zth2yw1A1pO2aTr78TZ7+rlNRuDr5LaCZca4
 9T3uApO1VK+1UODNdv30ijgGqsQRD6RFPUiYtv80n0tnLZVI824NRPGoYMinUARQI7E8
 vXsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to;
 bh=QeIesQtfeDzRKPcit+1p024wyDr7bkrzcFn9Hc+Mm7k=;
 b=mo2d5LhDrEklgFhHRgyT/md5T2Le4BmNwjKVLzAVibIu8VyH30WpauCyth/mf9euzw
 0OCOANSisWFCD3KSk1+kYBigMgm1amkx2ajVs2l1lZkl36jgkqso/3Ad4rJrOlnqfk7y
 yt4G7UlMViYV19E5Ujm8aCANWwXCphGcRs3yY7IfNx8vnZ+4SKOy4mM9dNuxyGFwZBF1
 ZurGYwFCUPmLASLMDqvdT24w937XhyoOYAt1HemeWnI4LE2AJIYh0bO9qgsq2qrgN3z6
 y+Rz27+dkfwHCZoY19/f5+XtWuQKylV1GbThx/YRt2k76iZnpIakFBttaZXeMGHVHmR3
 KZoQ==
X-Gm-Message-State: APjAAAVYM58w4M0veioSNoT94lDjRAbzuqX0krmTHMKcqfk8yrERfjz7
 9vTHEvFe/kz4ztIOBzRQKnJMakCCgZU=
X-Google-Smtp-Source: APXvYqzx2FYLs1CnmGopCFU2ka47R6+ptVW1TcRCEjwYFFTT3CD6sa+/xjlDPoQ0uGloLvzfWWr2xQ==
X-Received: by 2002:a1c:f016:: with SMTP id a22mr17141084wmb.170.1566222381655; 
 Mon, 19 Aug 2019 06:46:21 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:4409:6127:8de8:4f9?
 ([2a01:e34:ed2f:f020:4409:6127:8de8:4f9])
 by smtp.googlemail.com with ESMTPSA id p13sm17658032wrw.90.2019.08.19.06.46.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 19 Aug 2019 06:46:20 -0700 (PDT)
Subject: Re: [PATCH 03/11] clocksource: sun4i: Add missing compatibles
To: Maxime Ripard <maxime.ripard@bootlin.com>
References: <20190722081229.22422-1-maxime.ripard@bootlin.com>
 <20190722081229.22422-3-maxime.ripard@bootlin.com>
 <9df53981-d1b2-433c-e61f-7c000c71bc55@linaro.org>
 <20190812091631.j2pr7i2zeput3hrc@flea>
 <42ee55ee-258c-7588-fea3-db3c661a0156@linaro.org>
 <20190812112411.ty3npkq6ztbushhm@flea> <20190819133058.bujcawpw5rgsfp4g@flea>
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
Message-ID: <0e36a6fe-33de-5af5-f4f9-4cedfc9d0cbf@linaro.org>
Date: Mon, 19 Aug 2019 15:45:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190819133058.bujcawpw5rgsfp4g@flea>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_064624_554915_B285DD63 
X-CRM114-Status: GOOD (  14.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 tglx@linutronix.de, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1323933320206375464=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============1323933320206375464==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="AcgHUSlaoZ7VoUacEW2606eZFsDqDzCBc"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--AcgHUSlaoZ7VoUacEW2606eZFsDqDzCBc
Content-Type: multipart/mixed; boundary="XHIqhq3BzO4dYKSkXj4zHc8NYab3E4lJh";
 protected-headers="v1"
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 tglx@linutronix.de, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Message-ID: <0e36a6fe-33de-5af5-f4f9-4cedfc9d0cbf@linaro.org>
Subject: Re: [PATCH 03/11] clocksource: sun4i: Add missing compatibles
References: <20190722081229.22422-1-maxime.ripard@bootlin.com>
 <20190722081229.22422-3-maxime.ripard@bootlin.com>
 <9df53981-d1b2-433c-e61f-7c000c71bc55@linaro.org>
 <20190812091631.j2pr7i2zeput3hrc@flea>
 <42ee55ee-258c-7588-fea3-db3c661a0156@linaro.org>
 <20190812112411.ty3npkq6ztbushhm@flea> <20190819133058.bujcawpw5rgsfp4g@flea>
In-Reply-To: <20190819133058.bujcawpw5rgsfp4g@flea>

--XHIqhq3BzO4dYKSkXj4zHc8NYab3E4lJh
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 19/08/2019 15:30, Maxime Ripard wrote:
> On Mon, Aug 12, 2019 at 01:24:11PM +0200, Maxime Ripard wrote:
>> On Mon, Aug 12, 2019 at 11:21:50AM +0200, Daniel Lezcano wrote:
>>> On 12/08/2019 11:16, Maxime Ripard wrote:
>>>> Hi,
>>>>
>>>> On Mon, Aug 12, 2019 at 10:59:51AM +0200, Daniel Lezcano wrote:
>>>>> On 22/07/2019 10:12, Maxime Ripard wrote:
>>>>>> Newer Allwinner SoCs have different number of interrupts, let's ad=
d
>>>>>> different compatibles for all of them to deal with this properly.
>>>>>>
>>>>>> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>>>>>
>>>>> Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>
>>>>
>>>> Thanks!
>>>>
>>>> Can you merge this through your tree (along with the bindings)? I'll=

>>>> merge the DT patches
>>>
>>> patches 1-4 then ?
>>
>> Yep, thanks!
>=20
> Ping?

They are applied :)


--=20
 <http://www.linaro.org/> Linaro.org =E2=94=82 Open source software for A=
RM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog



--XHIqhq3BzO4dYKSkXj4zHc8NYab3E4lJh--

--AcgHUSlaoZ7VoUacEW2606eZFsDqDzCBc
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEGn3N4YVz0WNVyHskqDIjiipP6E8FAl1aqAQACgkQqDIjiipP
6E+qaAf/d3ogLejwJWOc8tp5sBqDnzsVlG0+Ww4uLNyUTwaOOHkcarf6krrt2mLg
zeIVCA9bivbJRyh/JRzQeSKVORcehEp1qybo81PeKrMcr6srZyjbv08t4lsbKfcq
WdBl9LTeDxmp36q0QvaDfW/fFXX1kYXT+JHw5dHwxFHl3FAXprdirH7+WklVu719
x2hK+nPBwS01RleYj90fmauDm2jXz9n48SJi5bK6RfGzK6vdVfqq13XHklZgCfxE
+W20ipMmOU17yfU6cYNtGn3YO0WPHg1O3anG50CYagp8tl5N0VMnCr3aH67ujV5a
jsHlvLW2CR7ouEtyOZJeo7dAw3RwHg==
=lMZe
-----END PGP SIGNATURE-----

--AcgHUSlaoZ7VoUacEW2606eZFsDqDzCBc--


--===============1323933320206375464==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1323933320206375464==--

