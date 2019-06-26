Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A6DC569BD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 14:52:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lvHiyXsGjDUPS8xN2odrqPmg9hKJx6SLd/+4Hox+p+Y=; b=EInoDu4E1BKBL3
	k4LaJzwXK9Yh5se4GVaonQwr1ByshtgkmJ/f5VQf2cJikvBcAdESOm5qADNDnyi5NN0TwqWoXPQ9P
	3h2nsAVxcAp6ShzaSKrckdAgw8QxfwE/ndGZU5NdJ7xCF6ohabWCKZQq+bPwqfvJ4DDOrLt74CUT3
	nNdJAmIyGbNHUjYHsLB/VTjECf473K2foGoOaMLPIos4njIgHvBCai9JcNZEuSvfY4V11YWFmzYW3
	FoYPYUpX+o4FwwlfHNz02ombal5acizhDrtEjV3kW8HT0OoQEc0DgR/TU/vzWjsTzDUrS5uMQ8tid
	6SsyDCVWdvE6fInibCJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg7PZ-0002NB-6u; Wed, 26 Jun 2019 12:52:29 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg7PL-0002MR-EX
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 12:52:17 +0000
Received: by mail-wm1-x342.google.com with SMTP id s3so1984667wms.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 05:52:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=97XC3JrNltERoKp78ltTZCo7yY8E04N6diR+9e3qm5w=;
 b=xL6clskgL+7wAvMzUxDLYqjsznkQlKFP8SlacSEkPcwJ1oJoX9L2uQtZGV4gSMIATH
 hc2GZbHrY4r2IJRwhuQT3WMoMxg/UHTzm8JU3X+MHdtk94wBWcw10D00hpdFsLNfKgiq
 4Qne6l9Zkqu3/RqUjyn71NnG8LKfFf8/jMIf+FKQjD17sFkU/JbxVelKZCIBewNxej3J
 Hp55AQeIhZtFb5rWLca5HAYTaPUZ+OiDk6MMvbaDHf1W81qjuNQXThgymcdQL7ISrJTZ
 VfmAXuNbCiLWnR06FZAC7UMFT2tmak1AvxJ8hLgltyOsvy+tZY6/164MX0kTFco+/AgP
 2pww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=97XC3JrNltERoKp78ltTZCo7yY8E04N6diR+9e3qm5w=;
 b=l4i8t6GyIcdjT2jc3w5HPm0Vl2fMe8QjBKEU++j07fgyuguYpj8nCLC/svalBavaeG
 N+ec3QZvUUy6PBIuKOmKQqagmvn8+Ub6bk8OHZtT8wZF2FRMPxIfJcSzPpf/1WgxLK3o
 odnoQM/HcZmebU/bjyoJElpbcNeB2IO9HiH14Pjf3UrFuvEL/R4Nuq51rUhRPqIqgZz2
 bh9HonB6KOiWP+Cx2gQDLXZucuoiiQnV6/0pX8HgY1It9MZtql5M3BDKdbgKPKW5eq2G
 Hs/VD2WpoBEhKleUSY9ZAVkBPNdq2wru32wdRQbofV874wXpdERvL0PPBlawUWmzhMvZ
 NJ/A==
X-Gm-Message-State: APjAAAWy6r3TfqWbte31dne5mzWAfcZRJUVujoj5QIxg63q7otXveJ5g
 x9m/FGM7Fc45Dek+aQpJjO0SAA==
X-Google-Smtp-Source: APXvYqzvFQa7PDBk+gmeInRwTGUKFvktKTGYr3JUdfnyUpcb0PEKwQjYF0CfhE3ozU7I4EFDxXp0xw==
X-Received: by 2002:a7b:cc86:: with SMTP id p6mr2466384wma.123.1561553533241; 
 Wed, 26 Jun 2019 05:52:13 -0700 (PDT)
Received: from [192.168.0.41] (26.92.130.77.rev.sfr.net. [77.130.92.26])
 by smtp.googlemail.com with ESMTPSA id x17sm16401528wrq.64.2019.06.26.05.52.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Jun 2019 05:52:12 -0700 (PDT)
Subject: Re: [PATCH V3 2/3] thermal/drivers/cpu_cooling: Unregister with the
 policy
To: "Rafael J. Wysocki" <rafael@kernel.org>
References: <20190625113244.18146-1-daniel.lezcano@linaro.org>
 <20190625113244.18146-2-daniel.lezcano@linaro.org>
 <20190626025831.jmyzyypxr6ezpbtu@vireshk-i7>
 <da1d2603-e30a-d877-54c3-1fad218f9d57@linaro.org>
 <20190626063716.cechnzsb75q5lclr@vireshk-i7>
 <CAJZ5v0jFXmJ3ikEPQUp-cLv3+ZSnp1kP8CxdkZVofV1BS3+UwQ@mail.gmail.com>
 <8a9b7bd0-9b21-1ce1-6176-cffff4b8d739@linaro.org>
 <CAJZ5v0h7=BqnQqvULnQr3MuQsS2qwSn7RCZbMo-V+cUi+kbvSg@mail.gmail.com>
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
Message-ID: <81eed47f-9439-abd3-8b73-56ccf5137be3@linaro.org>
Date: Wed, 26 Jun 2019 14:52:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAJZ5v0h7=BqnQqvULnQr3MuQsS2qwSn7RCZbMo-V+cUi+kbvSg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_055215_497753_1598634F 
X-CRM114-Status: GOOD (  16.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Fabio Estevam <festevam@gmail.com>,
 "open list:CPU FREQUENCY DRIVERS - ARM BIG LITTLE"
 <linux-pm@vger.kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 Amit Daniel Kachhap <amit.kachhap@gmail.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>,
 "open list:TI BANDGAP AND THERMAL DRIVER" <linux-omap@vger.kernel.org>,
 Keerthy <j-keerthy@ti.com>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sudeep Holla <sudeep.holla@arm.com>, Zhang Rui <rui.zhang@intel.com>,
 Javi Merino <javi.merino@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjYvMDYvMjAxOSAxMzoyOCwgUmFmYWVsIEouIFd5c29ja2kgd3JvdGU6Cj4gT24gV2VkLCBK
dW4gMjYsIDIwMTkgYXQgMTI6MTkgUE0gRGFuaWVsIExlemNhbm8KPiA8ZGFuaWVsLmxlemNhbm9A
bGluYXJvLm9yZz4gd3JvdGU6Cj4+Cj4+IE9uIDI2LzA2LzIwMTkgMTE6MDYsIFJhZmFlbCBKLiBX
eXNvY2tpIHdyb3RlOgo+Pj4gT24gV2VkLCBKdW4gMjYsIDIwMTkgYXQgODozNyBBTSBWaXJlc2gg
S3VtYXIgPHZpcmVzaC5rdW1hckBsaW5hcm8ub3JnPiB3cm90ZToKPj4+Pgo+Pj4+IE9uIDI2LTA2
LTE5LCAwODowMiwgRGFuaWVsIExlemNhbm8gd3JvdGU6Cj4+Pj4+IE9uIDI2LzA2LzIwMTkgMDQ6
NTgsIFZpcmVzaCBLdW1hciB3cm90ZToKPj4+Pj4+IE9uIDI1LTA2LTE5LCAxMzozMiwgRGFuaWVs
IExlemNhbm8gd3JvdGU6Cj4+Pj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY3B1ZnJlcS9jcHVm
cmVxLmMgYi9kcml2ZXJzL2NwdWZyZXEvY3B1ZnJlcS5jCj4+Pj4+Pj4gaW5kZXggYWVlMDI0ZTQy
NjE4Li5mMDc0NTQyNDlmYmMgMTAwNjQ0Cj4+Pj4+Pj4gLS0tIGEvZHJpdmVycy9jcHVmcmVxL2Nw
dWZyZXEuYwo+Pj4+Pj4+ICsrKyBiL2RyaXZlcnMvY3B1ZnJlcS9jcHVmcmVxLmMKPj4+Pj4+PiBA
QCAtMTM3OSw4ICsxMzc5LDggQEAgc3RhdGljIGludCBjcHVmcmVxX29ubGluZSh1bnNpZ25lZCBp
bnQgY3B1KQo+Pj4+Pj4+ICAgICAgICAgICAgY3B1ZnJlcV9kcml2ZXItPnJlYWR5KHBvbGljeSk7
Cj4+Pj4+Pj4KPj4+Pj4+PiAgICBpZiAoY3B1ZnJlcV90aGVybWFsX2NvbnRyb2xfZW5hYmxlZChj
cHVmcmVxX2RyaXZlcikpCj4+Pj4+Pj4gLSAgICAgICAgICBwb2xpY3ktPmNkZXYgPSBvZl9jcHVm
cmVxX2Nvb2xpbmdfcmVnaXN0ZXIocG9saWN5KTsKPj4+Pj4+PiAtCj4+Pj4+Pj4gKyAgICAgICAg
ICBvZl9jcHVmcmVxX2Nvb2xpbmdfcmVnaXN0ZXIocG9saWN5KTsKPj4+Pj4+PiArCj4+Pj4+Pgo+
Pj4+Pj4gV2UgZG9uJ3QgbmVlZCBhbnkgZXJyb3IgY2hlY2tpbmcgaGVyZSBhbnltb3JlID8KPj4+
Pj4KPj4+Pj4gVGhlcmUgd2FzIG5vIGVycm9yIGNoZWNraW5nIGluaXRpYWxseS4gVGhpcyBjb21t
ZW50IGFuZCB0aGUgb3RoZXJzIGJlbG93Cj4+Pj4+IGFyZSBmb3IgYW4gYWRkaXRpb25hbCBwYXRj
aCBJTU8sIG5vdCBhIGNoYW5nZSBpbiB0aGlzIG9uZS4KPj4+Pgo+Pj4+IHJpZ2h0LCBidXQgLi4u
Cj4+Pj4KPj4+Pj4+PiAtdm9pZCBjcHVmcmVxX2Nvb2xpbmdfdW5yZWdpc3RlcihzdHJ1Y3QgdGhl
cm1hbF9jb29saW5nX2RldmljZSAqY2RldikKPj4+Pj4+PiArdm9pZCBjcHVmcmVxX2Nvb2xpbmdf
dW5yZWdpc3RlcihzdHJ1Y3QgY3B1ZnJlcV9wb2xpY3kgKnBvbGljeSkKPj4+Pj4+PiAgewo+Pj4+
Pj4+ICAgIHN0cnVjdCBjcHVmcmVxX2Nvb2xpbmdfZGV2aWNlICpjcHVmcmVxX2NkZXY7Cj4+Pj4+
Pj4gICAgYm9vbCBsYXN0Owo+Pj4+Pj4+Cj4+Pj4+Pj4gLSAgaWYgKCFjZGV2KQo+Pj4+Pj4+IC0g
ICAgICAgICAgcmV0dXJuOwo+Pj4+Cj4+Pj4gd2UgdXNlZCB0byByZXR1cm4gd2l0aG91dCBhbnkg
ZXJyb3JzIGZyb20gaGVyZS4gTm93IHdlIHdpbGwgaGF2ZQo+Pj4+IHByb2JsZW1zIGlmIHJlZ3Np
dGVyaW5nIGZhaWxzIGZvciBzb21lIHJlYXNvbi4KPj4+Cj4+PiBTcGVjaWZpY2FsbHksIHRoZSBs
YXN0IGNwdWZyZXFfY2RldiBpbiB0aGUgbGlzdCB3aWxsIGJlIHVucmVnaXN0ZXJlZAo+Pj4gQUZB
SUNTLCBhbmQgd2l0aG91dCByZW1vdmluZyBpdCBmcm9tIHRoZSBsaXN0IGZvciB0aGF0IG1hdHRl
ciwgd2hpY2gKPj4+IGlzbid0IHdoYXQgdGhlIGNhbGxlciB3YW50cy4KPj4KPj4gSW5kZWVkLAo+
Pgo+PiBXaGF0IGFib3V0IHRoZSByZXN1bHRpbmcgY29kZSBhYm92ZToKPj4KPj4gdm9pZCBfX2Nw
dWZyZXFfY29vbGluZ191bnJlZ2lzdGVyKHN0cnVjdCBjcHVmcmVxX2Nvb2xpbmdfZGV2aWNlCj4+
ICpjcHVmcmVxX2NkZXYsIGludCBsYXN0KQo+PiB7Cj4+ICAgICAgICAgLyogVW5yZWdpc3RlciB0
aGUgbm90aWZpZXIgZm9yIHRoZSBsYXN0IGNwdWZyZXEgY29vbGluZyBkZXZpY2UgKi8KPj4gICAg
ICAgICBpZiAobGFzdCkKPj4gICAgICAgICAgICAgICAgIGNwdWZyZXFfdW5yZWdpc3Rlcl9ub3Rp
ZmllcigmdGhlcm1hbF9jcHVmcmVxX25vdGlmaWVyX2Jsb2NrLAo+PiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIENQVUZSRVFfUE9MSUNZX05PVElGSUVSKTsKPj4K
PiAKPiBEb2Vzbid0IHRoZSBub3RpZmllciBuZWVkIHRvIGJlIHVucmVnaXN0ZXJlZCB1bmRlciBj
b29saW5nX2xpc3RfbG9jayA/CgpJIGRvbid0IHRoaW5rIHNvIGJlY2F1c2UgdGhlIGVsZW1lbnQg
aXMgbm8gbG9uZ2VyIGluIHRoZSBsaXN0IGFuZCB3ZQpkb24ndCB0b3VjaCB0aGUgbGlzdCBhbnlt
b3JlLiBEbyB5b3Ugc2VlIGFub3RoZXIgcG9zc2libGUgcmFjZT8KCj4+ICAgICAgICAgdGhlcm1h
bF9jb29saW5nX2RldmljZV91bnJlZ2lzdGVyKGNwdWZyZXFfY2Rldi0+Y2Rldik7Cj4+ICAgICAg
ICAgaWRhX3NpbXBsZV9yZW1vdmUoJmNwdWZyZXFfaWRhLCBjcHVmcmVxX2NkZXYtPmlkKTsKPj4g
ICAgICAgICBrZnJlZShjcHVmcmVxX2NkZXYtPmlkbGVfdGltZSk7Cj4+ICAgICAgICAga2ZyZWUo
Y3B1ZnJlcV9jZGV2KTsKPj4gfQo+Pgo+PiAvKioKPj4KPj4gICogY3B1ZnJlcV9jb29saW5nX3Vu
cmVnaXN0ZXIgLSBmdW5jdGlvbiB0byByZW1vdmUgY3B1ZnJlcSBjb29saW5nCj4+IGRldmljZS4K
Pj4gICogQGNkZXY6IHRoZXJtYWwgY29vbGluZyBkZXZpY2UgcG9pbnRlci4KPj4KPj4gICoKPj4K
Pj4gICogVGhpcyBpbnRlcmZhY2UgZnVuY3Rpb24gdW5yZWdpc3RlcnMgdGhlICJ0aGVybWFsLWNw
dWZyZXEtJXgiIGNvb2xpbmcKPj4gZGV2aWNlLgo+PiAgKi8KPj4gdm9pZCBjcHVmcmVxX2Nvb2xp
bmdfdW5yZWdpc3RlcihzdHJ1Y3QgY3B1ZnJlcV9wb2xpY3kgKnBvbGljeSkKPj4gewo+PiAgICAg
ICAgIHN0cnVjdCBjcHVmcmVxX2Nvb2xpbmdfZGV2aWNlICpjcHVmcmVxX2NkZXY7Cj4+ICAgICAg
ICAgYm9vbCBsYXN0Owo+Pgo+PiAgICAgICAgIG11dGV4X2xvY2soJmNvb2xpbmdfbGlzdF9sb2Nr
KTsKPj4gICAgICAgICBsaXN0X2Zvcl9lYWNoX2VudHJ5KGNwdWZyZXFfY2RldiwgJmNwdWZyZXFf
Y2Rldl9saXN0LCBub2RlKSB7Cj4+ICAgICAgICAgICAgICAgICBpZiAoY3B1ZnJlcV9jZGV2LT5w
b2xpY3kgPT0gcG9saWN5KSB7Cj4+ICAgICAgICAgICAgICAgICAgICAgICAgIGxpc3RfZGVsKCZj
cHVmcmVxX2NkZXYtPm5vZGUpOwo+PiAgICAgICAgICAgICAgICAgICAgICAgICBsYXN0ID0gbGlz
dF9lbXB0eSgmY3B1ZnJlcV9jZGV2X2xpc3QpOwo+PiAgICAgICAgICAgICAgICAgICAgICAgICBi
cmVhazsKPj4gICAgICAgICAgICAgICAgIH0KPj4gICAgICAgICB9Cj4+ICAgICAgICAgbXV0ZXhf
dW5sb2NrKCZjb29saW5nX2xpc3RfbG9jayk7Cj4+Cj4+ICAgICAgICAgaWYgKGNwdWZyZXFfY2Rl
di0+cG9saWN5ID09IHBvbGljeSkKPj4gICAgICAgICAgICAgICAgIF9fY3B1ZnJlcV9jb29saW5n
X3VucmVnaXN0ZXIoY3B1ZnJlcV9jZGV2LCBsYXN0KTsKPj4gfQo+PiBFWFBPUlRfU1lNQk9MX0dQ
TChjcHVmcmVxX2Nvb2xpbmdfdW5yZWdpc3Rlcik7Cj4+Cj4+Cj4+Cj4+Cj4+IC0tCj4+ICA8aHR0
cDovL3d3dy5saW5hcm8ub3JnLz4gTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUg
Zm9yIEFSTSBTb0NzCj4+Cj4+IEZvbGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5j
b20vcGFnZXMvTGluYXJvPiBGYWNlYm9vayB8Cj4+IDxodHRwOi8vdHdpdHRlci5jb20vIyEvbGlu
YXJvb3JnPiBUd2l0dGVyIHwKPj4gPGh0dHA6Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxvZy8+
IEJsb2cKPj4KCgotLSAKIDxodHRwOi8vd3d3LmxpbmFyby5vcmcvPiBMaW5hcm8ub3JnIOKUgiBP
cGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBMaW5hcm86ICA8aHR0cDov
L3d3dy5mYWNlYm9vay5jb20vcGFnZXMvTGluYXJvPiBGYWNlYm9vayB8CjxodHRwOi8vdHdpdHRl
ci5jb20vIyEvbGluYXJvb3JnPiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cubGluYXJvLm9yZy9saW5h
cm8tYmxvZy8+IEJsb2cKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
