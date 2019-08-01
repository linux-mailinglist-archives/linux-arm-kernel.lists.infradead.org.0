Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6B487DC09
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 15:00:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1oGdru3eSwCSsNaEUYhuONg5Z+8E2vbygZPQljobSfI=; b=A5+YjD9nanBEPa
	52D0wJa9DrbZ2tm3hb/IWd6DMF59MJ+GdS6044IOwSFF6wBux6U6uTKLOAI6x8Og/urJbn/LXFGw2
	vQLy82v1BWTsRFS72mBZrxp/qwQOMWXx8T+UwjbRpphNEpDL2xu+b8UovUrQRmqVuVNSetvmNfohu
	s4XQ/FzvVfVuHuBgyHol5X8OJCYz47lEI3c4Hr7V2+8rd1P7JTOlXks+2rcuHwwahkPNcirQ89crS
	NwhSY2lc3mip32CmKOQRjNkKKCHKwVimnQoo6hJeKOeBYOLnlrrOmShg6ohGiZDPcRXZRZDQNDuyQ
	XtavGBWaF/MtiI5d8YbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htAgz-00034e-LI; Thu, 01 Aug 2019 13:00:25 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htAgp-00033b-Pl
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 13:00:17 +0000
Received: by mail-wr1-x442.google.com with SMTP id n4so73578293wrs.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 06:00:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=yMpiQpFWP0JEpjMoJk++KflIBeJTz7OVMNcADVho+R4=;
 b=tQEPWaf+dZ44fnfNJxwvsG2mixMHkX/vyi1jSiPbobc/LJE39WeKWzQVqlZGq9Ir15
 fBXgjk9onNi6OM+FBuKnrRSrNqwcQmA9B7klNceOZOm8qa8HXu022oiog07bbJpU+3kM
 KXjpbRxkZnXUTsbH69ijQXC+V/FLziitF5nfpucubq31QmoLewCvkrFTvpQ07gv7gtQz
 r38l9N40LxcNjyWE5S/crKcJTLprMelNTS+iNhS+JT38jGD9Jj6xMNgShyVOF+zRdDMn
 H/S9cG1Q+PgbyMN+iYQr2ugXNYYWLwU/luV7B7Ynl3p8tH580ID9NHHyqEYkj5cSc8lZ
 Drpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=yMpiQpFWP0JEpjMoJk++KflIBeJTz7OVMNcADVho+R4=;
 b=Qlj7dHc861dgqIERDhaksu63E22NBA8MyCLjzmS4GPAqkq3pC2EgfK9b2H/pozqY0c
 OUYAYLkR9yABClzgjBZQbip0ekWvVw8Aou3Uuu1w9dVSyP1QO18eGDMOIinFAzM8lgRl
 uiLk14wRnzOGxK7UcQrRNo0WB5ZB4BcUjSiw8FNW/iDTYUYaNNcYX5cMx9tCuqb9qZZ5
 nxcjf0zsixcsO2hOG4lwWZ/aGA+mdjevoro3pWYx4OIqx+/JNEnMvZQOdOX0CfkeuxyW
 nd0hRU3gue81cOmf75CpP2AzbTRGhTqQxy1LR9K0aKyrFPdfHg0bS6s+JC+VsQoShOr3
 2/oQ==
X-Gm-Message-State: APjAAAUGkM0YSRC2kJwD1E6uiRz4YwNF/+OgpswN0eN7XEHtlThZcVZw
 eaL1FFMYK8pJnTgp7sR8yrbgM1bEGDQ=
X-Google-Smtp-Source: APXvYqxEyB8QNNBeX9+VrmqebpoFBOtkFuHRU1y3LXbLk1JajQtfO8EHU9UZxzMnWZij8Mp3R0L8YQ==
X-Received: by 2002:adf:eb49:: with SMTP id u9mr21570883wrn.215.1564664412103; 
 Thu, 01 Aug 2019 06:00:12 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:2166:4c76:28f8:762a?
 ([2a01:e34:ed2f:f020:2166:4c76:28f8:762a])
 by smtp.googlemail.com with ESMTPSA id 4sm163635864wro.78.2019.08.01.06.00.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 06:00:11 -0700 (PDT)
Subject: Re: [PATCH v6 0/3] Make IPA use PM_EM
To: Quentin Perret <quentin.perret@arm.com>, edubezval@gmail.com,
 rui.zhang@intel.com, javi.merino@kernel.org, viresh.kumar@linaro.org,
 amit.kachhap@gmail.com, rjw@rjwysocki.net, catalin.marinas@arm.com,
 will@kernel.org
References: <20190801124643.17112-1-quentin.perret@arm.com>
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
Message-ID: <ba2cd83a-7c3b-9f75-2413-a0ef3ed463d3@linaro.org>
Date: Thu, 1 Aug 2019 15:00:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190801124643.17112-1-quentin.perret@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_060015_903356_2AB35835 
X-CRM114-Status: GOOD (  26.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, mka@chromium.org,
 ionela.voinescu@arm.com, dietmar.eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CkhpIFJ1aSwKCmlzIGl0IHBvc3NpYmxlIHRvIG1lcmdlIHRoZXNlIHBhdGNoZXM/IFRoZXkgYXJl
IGFja2VkLWJ5IHNpbmNlIE1heS4KClRoYW5rcwoKICAtLSBEYW5pZWwKCgpPbiAwMS8wOC8yMDE5
IDE0OjQ2LCBRdWVudGluIFBlcnJldCB3cm90ZToKPiBDaGFuZ2VzIGluIHY2Cj4gKioqKioqKioq
KioqKgo+ICAtIEFkZGVkIERhbmllbCdzIGFuZCBWaXJlc2gncyBBY2tlZC1ieSB0byBhbGwgcGF0
Y2hlcwo+IAo+IENoYW5nZXMgaW4gdjU6Cj4gKioqKioqKioqKioqKioKPiAgLSBDaGFuZ2VkIHBh
dGNoIDAyIHRvIGd1YXJkIElQQS1zcGVjaWZpYyBjb2RlIGluIGNwdV9jb29saW5nLmMgd2l0aAo+
ICAgIGFwcHJvcHJpYXRlIGlmZGVmZXJ5IChEYW5pZWwpCj4gIC0gUmViYXNlZCBvbiA1LjItcmMy
Cj4gCj4gQ2hhbmdlcyBpbiB2NDoKPiAqKioqKioqKioqKioqKgo+ICAtIEFkZGVkIFZpcmVzaCdz
IEFja2VkLWJ5IHRvIGFsbCAzIHBhdGNoZXMKPiAgLSBJbXByb3ZlZCBjb21taXQgbWVzc2FnZSBv
ZiBwYXRjaCAzLzMgdG8gZXhwbGFpbiBob3cgaXQgaGFzIG5vCj4gICAgZnVuY3Rpb25hbCBpbXBh
Y3Qgb24gZXhpc3RpbmcgdXNlcnMgKEVkdWFyZG8pCj4gCj4gQ2hhbmdlcyBpbiB2MzoKPiAqKioq
KioqKioqKioqKgo+ICAtIENoYW5nZWQgd2FybmluZyBtZXNzYWdlIGZvciB1bm9yZGVyZWQgdGFi
bGVzIHRvIHNvbWV0aGluZyBtb3JlCj4gICAgZXhwbGljaXQgKFZpcmVzaCkKPiAgLSBDaGFuZ2Vk
IFdBUk4oKSBpbnRvIGEgcHJfZXJyKCkgZm9yIGNvbnNpc3RlbmN5Cj4gCj4gQ2hhbmdlcyBpbiB2
MjoKPiAqKioqKioqKioqKioqKgo+ICAtIEZpeGVkIHBhdGNoIDAxLzAzIHRvIGFjdHVhbGx5IGVu
YWJsZSBDT05GSUdfRU5FUkdZX01PREVMCj4gIC0gQWRkZWQgImRlcGVuZHMgb24gRU5FUkdZX01P
REVMIiB0byBJUEEgKERhbmllbCkKPiAgLSBBZGRlZCBjaGVjayB0byBiYWlsIG91dCBpZiB0aGUg
ZnJlcSB0YWJsZSBpcyB1bnNvcnRlZCAoVmlyZXNoKQo+IAo+IENvdmVyIGxldHRlcjoKPiAqKioq
KioqKioqKioqCj4gCj4gVGhlIEludGVsbGlnZW50IFBvd2VyIEFsbG9jYXRvciAoSVBBKSB0aGVy
bWFsIGdvdmVybm9yIHVzZXMgYW4gRW5lcmd5Cj4gTW9kZWwgKG9yIEVNKSBvZiB0aGUgQ1BVcyB0
byByZS1kaXN0cmlidXRlIHRoZSBwb3dlciBidWRnZXQuIFRvIGRvIHNvLAo+IGl0IGJ1aWxkcyBh
IHRhYmxlIG9mIDxmcmVxdWVuY3ksIHBvd2VyPiB0dXBsZXMgd2hlcmUgdGhlIHBvd2VyIHZhbHVl
cwo+IGFyZSBjb21wdXRlZCB1c2luZyB0aGUgJ2R5bmFtaWMtcG93ZXItY29lZmZpY2llbnQnIERU
IHByb3BlcnR5LiBBbGwgb2YKPiB0aGlzIGlzIGRvbmUgaW4gYW5kIG9ubHkgZm9yIHRoZSB0aGVy
bWFsIHN1YnN5c3RlbSwgYW5kIG1vcmUKPiBzcGVjaWZpY2FsbHkgZm9yIENQVXMgLS0gdGhlIHBv
d2VyIG9mIG90aGVyIHR5cGVzIG9mIGRldmljZXMgaXMgb2J0YWluZWQKPiBkaWZmZXJlbnRseS4K
PiAKPiBSZWNlbnRseSwgdGhlIENQVSBzY2hlZHVsZXIgaGFzIHNlZW4gdGhlIGludHJvZHVjdGlv
biBvZiBFbmVyZ3kgQXdhcmUKPiBTY2hlZHVsaW5nIChFQVMpIHBhdGNoZXMsIHdoaWNoIGFsc28g
cmVseSBvbiBhbiBFTSBvZiB0aGUgQ1BVcy4gVGhpcyBFTSwKPiBob3dldmVyLCBpcyBtYW5hZ2Vk
IGJ5IGFuIGluZGVwZW5kZW50IGZyYW1ld29yaywgY2FsbGVkIFBNX0VNLCBhaW1lZCB0bwo+IGJl
IHVzZWQgYnkgYWxsIGtlcm5lbCBzdWJzeXN0ZW1zIGludGVyZXN0ZWQgaW4gdGhlIHBvd2VyIGNv
bnN1bWVkIGJ5Cj4gQ1BVcywgYW5kIG5vdCBvbmx5IHRoZSBzY2hlZHVsZXIuCj4gCj4gVGhpcyBw
YXRjaCBzZXJpZXMgZm9sbG93cyB0aGlzIGxvZ2ljIGFuZCByZW1vdmVzIHRoZSAobm93IHJlZHVu
ZGFudCkKPiB0aGVybWFsLXNwZWNpZmljIEVNIGNvbXB1dGF0aW9uIGNvZGUgdG8gbWlncmF0ZSBJ
UEEgdG8gdXNlIFBNX0VNCj4gaW5zdGVhZC4KPiAKPiBEb2luZyBzbyBzaG91bGQgaGF2ZSBubyB2
aXNpYmxlIGZ1bmN0aW9uYWwgaW1wYWN0IGZvciBleGlzdGluZyB1c2VycyBvZgo+IElQQSBzaW5j
ZToKPiAKPiAgLSBkdXJpbmcgdGhlIDUuMSBkZXZlbG9wbWVudCBjeWNsZSwgYSBzZXJpZXMgb2Yg
cGF0Y2hlcyBbMV0gaW50cm9kdWNlZAo+ICAgIGluIFBNX09QUCBzb21lIGluZnJhc3RydWN0dXJl
IChkZXZfcG1fb3BwX29mX3JlZ2lzdGVyX2VtKCkpIGVuYWJsaW5nCj4gICAgdGhlIHJlZ2lzdHJh
dGlvbiBvZiBFTXMgaW4gUE1fRU0gdXNpbmcgdGhlIERUIHByb3BlcnR5IHVzZWQgYnkgSVBBOwo+
IAo+ICAtIHRoZSBleGlzdGluZyB1cHN0cmVhbSBjcHVmcmVxIGRyaXZlcnMgbWFya2VkIHdpdGgg
dGhlCj4gICAgJ0NQVUZSRVFfSVNfQ09PTElOR19ERVYnIGZsYWcgYWxsIGNhbGwgZGV2X3BtX29w
cF9vZl9yZWdpc3Rlcl9lbSgpLAo+ICAgIHdoaWNoIG1lYW5zIHRoZXkgYWxsIHN1cHBvcnQgUE1f
RU0gKHRoZSBvbmx5IHR3byBleGNlcHRpb25zIGFyZQo+ICAgIHFvcmlxLWNwdWZyZXEgd2hpY2gg
ZG9lc24ndCBpbiBmYWN0IHVzZSBhbiBFTSBhbmQgc2NtaS1jcHVmcmVxIHdoaWNoCj4gICAgYWxy
ZWFkeSBzdXBwb3J0cyBQTV9FTSB3aXRob3V0IHVzaW5nIHRoZSBQTV9PUFAgaW5mcmFzdHJ1Y3R1
cmVpCj4gICAgYmVjYXVzZSBpdCByZWFkIHBvd2VyIGNvc3RzIGRpcmVjdGx5IGZyb20gZmlybXdh
cmUpOwo+IAo+IFNvLCBtaWdyYXRpbmcgSVBBIHRvIHVzaW5nIFBNX0VNIHNob3VsZCBlZmZlY3Rp
dmVseSBiZSBqdXN0IHBsdW1iaW5nCj4gc2luY2UgZm9yIHRoZSBleGlzdGluZyBJUEEgdXNlcnMg
dGhlIFBNX0VNIHRhYmxlcyB3aWxsIGNvbnRhaW4gdGhlCj4gZXhhY3Qgc2FtZSBwb3dlciB2YWx1
ZXMgdGhhdCBJUEEgdXNlZCB0byBjb21wdXRlIG9uIGl0cyBvd24gdW50aWwgbm93Lgo+IFRoZSBv
bmx5IG5ldyBkZXBlbmRlbmN5IGlzIHRvIGNvbXBpbGUgaW4gQ09ORklHX0VORVJHWV9NT0RFTC4K
PiAKPiBXaHkgaXMgdGhpcyBtaWdyYXRpb24gc3RpbGwgYSBnb29kIHRoaW5nID8gRm9yIHRocmVl
IG1haW4gcmVhc29ucy4KPiAKPiAgMS4gaXQgcmVtb3ZlcyByZWR1bmRhbnQgY29kZTsKPiAKPiAg
Mi4gaXQgaW50cm9kdWNlcyBhbiBhYnN0cmFjdGlvbiBsYXllciBiZXR3ZWVuIElQQSBhbmQgdGhl
IEVNCj4gICAgIGNvbXB1dGF0aW9uLiBQTV9FTSBvZmZlcnMgdG8gRUFTIGFuZCBJUEEgKGFuZCBw
b3RlbnRpYWxseSBvdGhlcgo+ICAgICBjbGllbnRzKSBzdGFuZGFyZGl6ZWQgRU0gdGFibGVzIGFu
ZCBoaWRlcyAnaG93JyB0aGVzZSB0YWJsZXMgaGF2ZQo+ICAgICBiZWVuIG9idGFpbmVkLiBQTV9F
TSBhcyBvZiBub3cgc3VwcG9ydHMgcG93ZXIgdmFsdWVzIGVpdGhlciBjb21pbmcKPiAgICAgZnJv
bSB0aGUgJ2R5bmFtaWMtcG93ZXItY29lZmZpY2llbnQnIERUIHByb3BlcnR5IG9yIG9idGFpbmVk
Cj4gICAgIGRpcmVjdGx5IGZyb20gZmlybXdhcmUgdXNpbmcgU0NNSS4gVGhlIGxhdHRlciBpcyBh
IG5ldyBmZWF0dXJlIGZvcgo+ICAgICBJUEEgYW5kIHRoYXQgY29tZXMgJ2ZvciBmcmVlJyB3aXRo
IHRoZSBtaWdyYXRpb24uIFRoaXMgd2lsbCBhbHNvIGJlCj4gICAgIHRydWUgaW4gdGhlIGZ1dHVy
ZSBldmVyeSB0aW1lIFBNX0VNIGdldHMgc3VwcG9ydCBmb3Igb3RoZXIgd2F5cyBvZgo+ICAgICBs
b2FkaW5nIHRoZSBFTS4gTW9yZW92ZXIsIFBNX0VNIGlzIGRvY3VtZW50ZWQgYW5kIGhhcyBhIGRl
YnVnZnMKPiAgICAgaW50ZXJmYWNlIHdoaWNoIHNob3VsZCBoZWxwIGFkZGluZyBzdXBwb3J0IGZv
ciBuZXcgcGxhdGZvcm1zLgo+IAo+ICAzLiBpdCBidWlsZHMgYSBjb25zaXN0ZW50IHZpZXcgb2Yg
dGhlIEVNIG9mIENQVXMgYWNyb3NzIGtlcm5lbAo+ICAgICBzdWJzeXN0ZW1zLCB3aGljaCBpcyBh
IHByZS1yZXF1aXNpdGUgZm9yIGFueSBraW5kIG9mIGZ1dHVyZSB3b3JrCj4gICAgIGFpbWluZyBh
dCBhIHNtYXJ0ZXIgcG93ZXIgYWxsb2NhdGlvbiB1c2luZyBzY2hlZHVsZXIga25vd2xlZGdlIGFi
b3V0Cj4gICAgIHRoZSBzeXN0ZW0gZm9yIGV4YW1wbGUuCj4gCj4gWzFdIGh0dHBzOi8vbG9yZS5r
ZXJuZWwub3JnL2xrbWwvMjAxOTAyMDQxMTA5NTIuMTYwMjUtMS1xdWVudGluLnBlcnJldEBhcm0u
Y29tLwo+IAo+IAo+IFF1ZW50aW4gUGVycmV0ICgzKToKPiAgIGFybTY0OiBkZWZjb25maWc6IEVu
YWJsZSBDT05GSUdfRU5FUkdZX01PREVMCj4gICB0aGVybWFsOiBjcHVfY29vbGluZzogTWFrZSB0
aGUgcG93ZXItcmVsYXRlZCBjb2RlIGRlcGVuZCBvbiBJUEEKPiAgIHRoZXJtYWw6IGNwdV9jb29s
aW5nOiBNaWdyYXRlIHRvIHVzaW5nIHRoZSBFTSBmcmFtZXdvcmsKPiAKPiAgYXJjaC9hcm02NC9j
b25maWdzL2RlZmNvbmZpZyAgfCAgIDEgKwo+ICBkcml2ZXJzL3RoZXJtYWwvS2NvbmZpZyAgICAg
ICB8ICAgMSArCj4gIGRyaXZlcnMvdGhlcm1hbC9jcHVfY29vbGluZy5jIHwgNDI4ICsrKysrKysr
KysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiAgMyBmaWxlcyBjaGFuZ2VkLCAxNzggaW5zZXJ0
aW9ucygrKSwgMjUyIGRlbGV0aW9ucygtKQo+IAoKCi0tIAogPGh0dHA6Ly93d3cubGluYXJvLm9y
Zy8+IExpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwoKRm9s
bG93IExpbmFybzogIDxodHRwOi8vd3d3LmZhY2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vi
b29rIHwKPGh0dHA6Ly90d2l0dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDov
L3d3dy5saW5hcm8ub3JnL2xpbmFyby1ibG9nLz4gQmxvZwoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
