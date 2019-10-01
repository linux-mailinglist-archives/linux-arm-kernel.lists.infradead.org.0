Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39589C2F6E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 11:00:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RH9EP33w6XZ7KrHqrx27tesCPQs3npHt2dQ/Eu/Z7Ko=; b=hBGezGsaUYQdE1
	TwoFavFwbGD4IME12+RFYqinR/geQwbEIJNx4MoUydyYDB28NPEOOIDATKwlLPr+oFO+1FwiEUFMr
	FRaySEmNp/8+UHG0SVqOGMmqO+C/d6foOM7STwJsVx+7S+WJkIQMXf8Dq3WcXSIJipdWhYYNTL/QV
	h6u98bOprNYT03At6SGhiWn59n4wbGxPP9AXHIEqsAY7R+JowaOnaBsWwXCI9OtBgqTb/YS7m7hDP
	Vr768oOMeEdFeuv/y7IGokJql7E4YbUuD5JKzo/NSjeCwUY155Fxq7kM9FwwaosBB47qLdaaR6pRk
	NBKZdi6A1p/22zkoYbKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFE1J-0004hl-8t; Tue, 01 Oct 2019 09:00:33 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFE17-0004eS-Mn
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 09:00:25 +0000
Received: by mail-wr1-x444.google.com with SMTP id r3so14471198wrj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 02:00:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=pl09sAkwXJBNHMeXikm3cHjEAE4eKqLzxTKKAt+6Vxk=;
 b=LRxhj8yhBZg1WkH9JG4UXHsIfsBARSShdpv+kaWM3ec0dGOx92ojHIAo4RbhmQSzCI
 kM2q9zuZ73K/g0p4cL/tc9Qn0pk5EtGErv+PUGva4oxOoV4Dvli553jZXKlO/VPWiYEI
 QEX8gAtDdksq8E3ktCQVyRdmFL/G3MVUZ30PrPsE/SJqiUj1h33I/f8YEkhsOcL47juz
 Hc+U2HoX2ct3Di2wqWUQxPODo41REplrnHLAXwn+iPdtt/XvTNFepI0heHSydVl8uPSg
 iMXxwMHqQFpVR4djEV7v01j/EodCmoEYikk7J8NTdRo44fOz3ZS9rpyJHbBRjgpntxCm
 W7XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=pl09sAkwXJBNHMeXikm3cHjEAE4eKqLzxTKKAt+6Vxk=;
 b=Z/5sWB9gqgWx6ABgQyn1lgG59LWWfoFioQL+Lyzz7S1v2uIPYx1YITtiJSIMLXA/Tj
 lOpmHGdI4VBJvzPxw26RgeubFU/KGsgcI91Hn/aEbI4ocOfgS0KAKO8Dj0VJijVXJiG5
 /uOXwoZl5NNPn+C7sjruux0hDqXeC/a6bbd0Wd5O3yv0MdOuC6h7gSNFpHtTipVl64B6
 ozAZkfDJhlZUSEpohuwz1B5Aoc+HPQlIDRLjQsfQBuwB8eJ+uJvvsVv2zRo0sLw3xNPt
 +504viAIOgtB6ucyXteYSjiU/QrnRFvxQDpLH9gXsKPOLXrNoZjbcmP6orZh3fLl+9tV
 iEYA==
X-Gm-Message-State: APjAAAVQjsMVr4wWRrcuY+D9H53TYyx28XuEDsf6FxSj1dqFl14vmSE/
 IVJ9dcx2eRPP4ZkstAjn0udp8ZyUR9k=
X-Google-Smtp-Source: APXvYqzVn251HMIc7rWJgrVMH9UqiPr++Dwe8wgUQ8skzotiMmb5kLLdMhZ8siMzP2CzKZb9vZzYzg==
X-Received: by 2002:a05:6000:10ce:: with SMTP id
 b14mr15759264wrx.96.1569920419377; 
 Tue, 01 Oct 2019 02:00:19 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:5419:a8ee:d7ec:ad97?
 ([2a01:e34:ed2f:f020:5419:a8ee:d7ec:ad97])
 by smtp.googlemail.com with ESMTPSA id q192sm3325058wme.23.2019.10.01.02.00.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 01 Oct 2019 02:00:18 -0700 (PDT)
Subject: Re: [PATCH] ARM: dts: ux500: Fix up the CPU thermal zone
To: Linus Walleij <linus.walleij@linaro.org>, arm@kernel.org, soc@kernel.org
References: <20191001074628.8122-1-linus.walleij@linaro.org>
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
 4eoWtNhMWc1uiTf9ENza0ntqH9XBWEQ6IA1gubCniGG+XrkBDQRb/80VAQgA8QHL8REXb0Cy
 79EKg2lmFl/Vp14kb2yNssurgDbi/+lslAifbBP8uwqkOZ9QAq/DKuF6dfoXoceWjQFbm+Yx
 0VICaLdsCdm+QTjZCpqTE/FTg53Ur6GHDKlMurxaT+ItFC2uRGhuog+roLSGBzECfRG0VgPz
 5KxiwDl2lXtzE4AQOPzoh8nW7ibvWJ13r7H8h1VkaJRLbGi+hWJ10PYm44ar9ozCLe9/vfdz
 +t9Z1MYyvHCnzeaej5G2O00jNGuXPjmSgz6nagFVO6RYxt3J6Ru3Xfz7T3FGlCJuGtvejo4K
 fQb5DRNRsZp3my/qE0ixh2lio79giWTR6dURdYXWGwARAQABiQI2BBgBCAAgFiEEJNYm8lO+
 nofmzlv0j/S40nFnVScFAlv/zRUCGyAACgkQj/S40nFnVSdS0g//a5ahjaIt6hbDKb/gmBHO
 FuB9M/IIU/Ee+tXToWw1igxfXdP+CGS5BGR+myCyDejNilYypm4tQRyPYpNvXjwHFlzvvhNc
 VkWJeTRx778eyZcx441DgfbQpH3U9OYSg9cobchn7OPiy1gQRNAROb004m0jwk4yldbCmWS6
 ovmJkRsdBcyRmpRE4644bbFMULGfPkB9mN3OHPTiUIulLlyXt5PPX68wA4UVjR3vKPAoJekx
 ulW043tveaNktIhOeObwaJIKaqMvr6EuB9h9akqEAcjAZ/4Y21wawb5aAB9eyx07OdsRZRnV
 yrfuDuwdn8yDNEyLdVQPcHC2T0eGuiJEDpPGiOtC6XOi+u8AWygw1NaltVyjW1zZt4fu4z5S
 uRccMjf84wsbC9K9vplNJmgM2c2qvvgn19Lfofw4SIX0BMhpnkKrRMx19wAG0PwrRiS0JVsI
 op7JpZPGVNqCnAgGujh9ZgvSJchJ2RFXY3jJCq/C/E3venVGlqDprU61Ot1moaBD1Q5igmlT
 GZae2XlFWBEWfqX3hb8fJbEGIWTRWz0uR2WroDg7vG3k+iLkqQfp61rsVzJNzeF/nGFr1AYg
 D53Es2aGJyrAeHWCnk9vzsPJoI5k5P1yNjgjA+W6tnOj8Kdpo//uKMYXV6hXkEAtyap6ggsw
 PASsWZc3OelnWN2JAq0EGAEIACAWIQQk1ibyU76eh+bOW/SP9LjScWdVJwUCXZLIEgIbAgCB
 CRCP9LjScWdVJ3YgBBkWCAAdFiEEbinX+DPdhovb6oob3uarTi9/eqYFAl2SyBIACgkQ3uar
 Ti9/eqZ2RgD9HN1UWo90QRDlBisR83Lte2VJyKCS46R3ZDXwZ1lPflIA/28E8ROelnfJEGdn
 tlE8uATPPdOxbCYAECy+LQ9mGYIMkJoP/RhDJ9TOOlHUacJKRtothMRSzJoe5Y8j+5KkpO1x
 u22li/5CZiwjAP3wJ4ffPBjReX/V8T0fLn3PpXG/1hVqkvHSc8M4DXMNU2rYye63Edvy34ia
 PPgRELHKyq19iu+BqjcT+HRzxIR6H5uHkySPCZTwLBnd2hbKJV1QsoRJ7v8azk66EXNoNU8K
 lZ2wp0IAbJS4//6pFbAoZWlY/RGu3oxMrbght67fERk7xzdc4Rcfl32d/phGoEQiLMB5ygKv
 TQT1z7oGVFLQCpE5ALf8ybuta1yjf5Y6uJ2pVeSSj0BxnwCIzme7QXwCpgYqDTLu+QvYs4/y
 6zzkvSnnsyohHW6AOchOVNjTHhFhFYn36TuV53laydaXK/zgo3NsOpATFObyK3N5lhb1G9tN
 Lrev/4WVxNr0LPXl9bdCbQGzIQK+kAPcg8u9f2MMhHQiQX8FAjhP3wtACRhfUz9RaQykxiwv
 y0s5uI05ZSXhqFs9iLlh3zNU1i6J1cdzA8BReoa3cKz4UiGKEffT857iMvT/ZmgSdYY57EgV
 UWm57SN2ok2Ii8AXlanH5SJPkbwJZhiB7kO0cjebmoA/1SA+5yTc3zEKKFuxcpfiXxt0d/OJ
 om6jCJ5/uKB5Cz9bJj0WdlvS2Xb11Jrs90MoVa74H5me4jOw7m9Yyg3qExOFOXUPFL6N
Message-ID: <8118934c-9fe9-a9ac-bdba-6b0996f8d438@linaro.org>
Date: Tue, 1 Oct 2019 11:00:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191001074628.8122-1-linus.walleij@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_020021_825625_1578FF92 
X-CRM114-Status: GOOD (  21.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDEvMTAvMjAxOSAwOTo0NiwgTGludXMgV2FsbGVpaiB3cm90ZToKPiBUaGlzIGZpeGVzIHVw
IHRoZSBkZWZhdWx0IHV4NTAwIENQVSB0aGVybWFsIHpvbmU6Cj4gCj4gLSBTZXQgcG9sbGluZyBk
ZWxheSB0byAwIGFuZCBleHBsYWluIHdoeQo+IC0gU2V0IHBhc3NpdmUgcG9sbGluZyBkZWxheSB0
byAyNTAKPiAtIFJlbW92ZSByZXN0cmljdGlvbnMgZnJvbSB0aGUgQ1BVIGNvb2xpbmcgZGV2aWNl
LAo+ICAgd2Ugc2hvdWxkIHVzZSBhbGwgY3B1ZnJlcSBzdGVwcyB0byBjb29sIGRvd24gaWYKPiAg
IG5lZWRlZC4KPiAKPiBGaXhlczogYjc4NmEwNWY2Y2U0ICgiQVJNOiBkdHM6IHV4NTAwOiBVcGRh
dGUgdGhlcm1hbCB6b25lIikKPiBTdWdnZXN0ZWQtYnk6IERhbmllbCBMZXpjYW5vIDxkYW5pZWwu
bGV6Y2Fub0BsaW5hcm8ub3JnPgo+IFNpZ25lZC1vZmYtYnk6IExpbnVzIFdhbGxlaWogPGxpbnVz
LndhbGxlaWpAbGluYXJvLm9yZz4KClJldmlld2VkLWJ5OiBEYW5pZWwgTGV6Y2FubyA8ZGFuaWVs
LmxlemNhbm9AbGluYXJvLm9yZz4KCj4gLS0tCj4gQVJNIFNvQyBmb2xrczogcGxlYXNlIGFwcGx5
IHRoaXMgZGlyZWN0bHkgZm9yIGZpeGVzLgo+IEl0IGFkZHJlc3NlcyBzb21lIHJldmlldyBjb21t
ZW50cyBJIG1pc3NlZCBpbiB0aGUgcGF0Y2hlcwo+IHRoYXQgd2VudCBpbiB0byB0aGUgbWVyZ2Ug
d2luZG93Lgo+IC0tLQo+ICBhcmNoL2FybS9ib290L2R0cy9zdGUtZGJ4NXgwLmR0c2kgfCAxMSAr
KysrKysrKy0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9u
cygtKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9zdGUtZGJ4NXgwLmR0c2kg
Yi9hcmNoL2FybS9ib290L2R0cy9zdGUtZGJ4NXgwLmR0c2kKPiBpbmRleCBhNTM2NTdiODMyODgu
LmJkYTQ1NGQxMjE1MCAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9zdGUtZGJ4NXgw
LmR0c2kKPiArKysgYi9hcmNoL2FybS9ib290L2R0cy9zdGUtZGJ4NXgwLmR0c2kKPiBAQCAtOCw2
ICs4LDcgQEAKPiAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL21mZC9kYng1MDAtcHJjbXUuaD4KPiAg
I2luY2x1ZGUgPGR0LWJpbmRpbmdzL2FybS91eDUwMF9wbV9kb21haW5zLmg+Cj4gICNpbmNsdWRl
IDxkdC1iaW5kaW5ncy9ncGlvL2dwaW8uaD4KPiArI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3RoZXJt
YWwvdGhlcm1hbC5oPgo+ICAKPiAgLyB7Cj4gIAkjYWRkcmVzcy1jZWxscyA9IDwxPjsKPiBAQCAt
NTksOCArNjAsMTIgQEAKPiAgCQkgKiBjb29saW5nLgo+ICAJCSAqLwo+ICAJCWNwdV90aGVybWFs
OiBjcHUtdGhlcm1hbCB7Cj4gLQkJCXBvbGxpbmctZGVsYXktcGFzc2l2ZSA9IDwwPjsKPiAtCQkJ
cG9sbGluZy1kZWxheSA9IDwxMDAwPjsKPiArCQkJcG9sbGluZy1kZWxheS1wYXNzaXZlID0gPDI1
MD47Cj4gKwkJCS8qCj4gKwkJCSAqIFRoaXMgc2Vuc29yIGZpcmVzIGludGVycnVwdHMgdG8gdXBk
YXRlIHRoZSB0aGVybWFsCj4gKwkJCSAqIHpvbmUsIHNvIG5vIHBvbGxpbmcgaXMgbmVlZGVkLgo+
ICsJCQkgKi8KPiArCQkJcG9sbGluZy1kZWxheSA9IDwwPjsKPiAgCj4gIAkJCXRoZXJtYWwtc2Vu
c29ycyA9IDwmdGhlcm1hbD47Cj4gIAo+IEBAIC03OSw3ICs4NCw3IEBACj4gIAo+ICAJCQljb29s
aW5nLW1hcHMgewo+ICAJCQkJdHJpcCA9IDwmY3B1X2FsZXJ0PjsKPiAtCQkJCWNvb2xpbmctZGV2
aWNlID0gPCZDUFUwIDAgMj47Cj4gKwkJCQljb29saW5nLWRldmljZSA9IDwmQ1BVMCBUSEVSTUFM
X05PX0xJTUlUIFRIRVJNQUxfTk9fTElNSVQ+Owo+ICAJCQkJY29udHJpYnV0aW9uID0gPDEwMD47
Cj4gIAkJCX07Cj4gIAkJfTsKPiAKCgotLSAKIDxodHRwOi8vd3d3LmxpbmFyby5vcmcvPiBMaW5h
cm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBMaW5h
cm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20vcGFnZXMvTGluYXJvPiBGYWNlYm9vayB8Cjxo
dHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJvb3JnPiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cubGlu
YXJvLm9yZy9saW5hcm8tYmxvZy8+IEJsb2cKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
