Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A89756685
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 12:20:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lNmzMmxNYsBBgGvsS3m+qZ0VAK/4v5cJdY4wMCx7Aw8=; b=c3XMhY5EVTNUfQ
	vaWVIPqnpXNXRBx6FET21rrmrxL0yo4ms2seHH/udxwfDjgf23m76JJRZ6Q7HyJhxy7aKBsPYRLvM
	RwTHKhwuOOQZPQ4ypE+9dK5pwcpJv6pIZIcMfJ+ndyxhQ90BwEOkoTF0ljIyg31tejcKrzNkl4fAX
	Q89U+hrJXUfRHUqX6nyyaURd+veJoGj6uvQFvZ6Ck1CnSKkUxioflmTJrdgyXu8ht8+mn6h+3Oqgm
	PqYh96VK9SyyV47yuNz7M5DyiiJBFiOITQnYt/6dA3LiSmPW96IWbj48YENKI3r1MOXGU2A3f5edS
	iC7jxHwD2DLfuin2WGHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg52D-0001zZ-KL; Wed, 26 Jun 2019 10:20:13 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg51z-0001sr-Bz
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 10:20:00 +0000
Received: by mail-wr1-x444.google.com with SMTP id c2so2052292wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 03:19:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=eqxkIQ2gfMcOm07YboB3YuAHE5CN9FSjgEDC065L9w8=;
 b=yWOsM+MSG8NdZuS36JBR36QqIAZvkBe6jRhiyfiNgSabYUqFu/ZNfLfyWd3Z0ssrtq
 FJpL86FVWiyzL//PBzairlqt6II+o+HLZtOJZnPh7MMYamDTocbHhRLnjhIeN1UUk+zk
 nxt7YP6D6ONacBhyT5JvbyUym0NJveh/Ef7hkne90kHhbeMkYwdtlqzXi/U97NHtNC9Z
 3R2RFTbz5mXhvXKXsf5pjJRPD2RrL+sJtMZFqCDS/c67Qhj64a0ksscFF8ilYLG5H09V
 GRDjpHXqhTrX/O6SqEb4so/BwTkZo1hBhupzg2KlLz2nxC2szlYyfVLSo+DojEt21X3x
 Dpiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=eqxkIQ2gfMcOm07YboB3YuAHE5CN9FSjgEDC065L9w8=;
 b=UiSqse9y0Dh93KNj6PHXJwRHndvyTuuCWkneq91A92M35+jHXS24JfRUTzVo4XTaA9
 O96l3NkJNmtAzhtwKhAnXY4LOBix5/EURKAavywmt8sRGPoXxnHPAToIlXpJVc8a0Snv
 oazqsFgfeImX70+qg8vG4qlgOvRYjaHIWuJYXaFkSCP/Q17/HinLb8B3wpN1kXTOvFj0
 j+Um21by585acNOF+v2QsU5rwAFtUT4VsmpBR8f0mOtjlhWivqXbPWRgTdh5eyDWDW89
 lPjObLbOVUzLjYNgAKJDT5lE6N2Glj8W4brW25wQE6wwOqAXbxENMlqfXHMaFRO3U/RR
 7ELA==
X-Gm-Message-State: APjAAAWxzm0GpFI1N7uMSeV7h1sWrXgtbq7pVCl2o2PuOHwn0v/DrhY3
 VHQByml3C3EwBYCFJVyQqzBT2w==
X-Google-Smtp-Source: APXvYqxpWeMZ/gJp+P/UTpQaRu2M8uCUV3artFaU6oXQMLT+W+CvNDNq8EhcvKj7XzxMzLztdcHWjA==
X-Received: by 2002:a5d:518c:: with SMTP id k12mr3074586wrv.322.1561544395865; 
 Wed, 26 Jun 2019 03:19:55 -0700 (PDT)
Received: from [192.168.0.41] (26.92.130.77.rev.sfr.net. [77.130.92.26])
 by smtp.googlemail.com with ESMTPSA id o6sm2210047wmc.46.2019.06.26.03.19.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Jun 2019 03:19:55 -0700 (PDT)
Subject: Re: [PATCH V3 2/3] thermal/drivers/cpu_cooling: Unregister with the
 policy
To: "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>
References: <20190625113244.18146-1-daniel.lezcano@linaro.org>
 <20190625113244.18146-2-daniel.lezcano@linaro.org>
 <20190626025831.jmyzyypxr6ezpbtu@vireshk-i7>
 <da1d2603-e30a-d877-54c3-1fad218f9d57@linaro.org>
 <20190626063716.cechnzsb75q5lclr@vireshk-i7>
 <CAJZ5v0jFXmJ3ikEPQUp-cLv3+ZSnp1kP8CxdkZVofV1BS3+UwQ@mail.gmail.com>
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
Message-ID: <8a9b7bd0-9b21-1ce1-6176-cffff4b8d739@linaro.org>
Date: Wed, 26 Jun 2019 12:19:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAJZ5v0jFXmJ3ikEPQUp-cLv3+ZSnp1kP8CxdkZVofV1BS3+UwQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_031959_418958_C553A5B4 
X-CRM114-Status: GOOD (  16.06  )
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
Cc: Keerthy <j-keerthy@ti.com>,
 "open list:CPU FREQUENCY DRIVERS - ARM BIG LITTLE"
 <linux-pm@vger.kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Amit Daniel Kachhap <amit.kachhap@gmail.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>,
 "open list:TI BANDGAP AND THERMAL DRIVER" <linux-omap@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
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

T24gMjYvMDYvMjAxOSAxMTowNiwgUmFmYWVsIEouIFd5c29ja2kgd3JvdGU6Cj4gT24gV2VkLCBK
dW4gMjYsIDIwMTkgYXQgODozNyBBTSBWaXJlc2ggS3VtYXIgPHZpcmVzaC5rdW1hckBsaW5hcm8u
b3JnPiB3cm90ZToKPj4KPj4gT24gMjYtMDYtMTksIDA4OjAyLCBEYW5pZWwgTGV6Y2FubyB3cm90
ZToKPj4+IE9uIDI2LzA2LzIwMTkgMDQ6NTgsIFZpcmVzaCBLdW1hciB3cm90ZToKPj4+PiBPbiAy
NS0wNi0xOSwgMTM6MzIsIERhbmllbCBMZXpjYW5vIHdyb3RlOgo+Pj4+PiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9jcHVmcmVxL2NwdWZyZXEuYyBiL2RyaXZlcnMvY3B1ZnJlcS9jcHVmcmVxLmMKPj4+
Pj4gaW5kZXggYWVlMDI0ZTQyNjE4Li5mMDc0NTQyNDlmYmMgMTAwNjQ0Cj4+Pj4+IC0tLSBhL2Ry
aXZlcnMvY3B1ZnJlcS9jcHVmcmVxLmMKPj4+Pj4gKysrIGIvZHJpdmVycy9jcHVmcmVxL2NwdWZy
ZXEuYwo+Pj4+PiBAQCAtMTM3OSw4ICsxMzc5LDggQEAgc3RhdGljIGludCBjcHVmcmVxX29ubGlu
ZSh1bnNpZ25lZCBpbnQgY3B1KQo+Pj4+PiAgICAgICAgICAgIGNwdWZyZXFfZHJpdmVyLT5yZWFk
eShwb2xpY3kpOwo+Pj4+Pgo+Pj4+PiAgICBpZiAoY3B1ZnJlcV90aGVybWFsX2NvbnRyb2xfZW5h
YmxlZChjcHVmcmVxX2RyaXZlcikpCj4+Pj4+IC0gICAgICAgICAgcG9saWN5LT5jZGV2ID0gb2Zf
Y3B1ZnJlcV9jb29saW5nX3JlZ2lzdGVyKHBvbGljeSk7Cj4+Pj4+IC0KPj4+Pj4gKyAgICAgICAg
ICBvZl9jcHVmcmVxX2Nvb2xpbmdfcmVnaXN0ZXIocG9saWN5KTsKPj4+Pj4gKwo+Pj4+Cj4+Pj4g
V2UgZG9uJ3QgbmVlZCBhbnkgZXJyb3IgY2hlY2tpbmcgaGVyZSBhbnltb3JlID8KPj4+Cj4+PiBU
aGVyZSB3YXMgbm8gZXJyb3IgY2hlY2tpbmcgaW5pdGlhbGx5LiBUaGlzIGNvbW1lbnQgYW5kIHRo
ZSBvdGhlcnMgYmVsb3cKPj4+IGFyZSBmb3IgYW4gYWRkaXRpb25hbCBwYXRjaCBJTU8sIG5vdCBh
IGNoYW5nZSBpbiB0aGlzIG9uZS4KPj4KPj4gcmlnaHQsIGJ1dCAuLi4KPj4KPj4+Pj4gLXZvaWQg
Y3B1ZnJlcV9jb29saW5nX3VucmVnaXN0ZXIoc3RydWN0IHRoZXJtYWxfY29vbGluZ19kZXZpY2Ug
KmNkZXYpCj4+Pj4+ICt2b2lkIGNwdWZyZXFfY29vbGluZ191bnJlZ2lzdGVyKHN0cnVjdCBjcHVm
cmVxX3BvbGljeSAqcG9saWN5KQo+Pj4+PiAgewo+Pj4+PiAgICBzdHJ1Y3QgY3B1ZnJlcV9jb29s
aW5nX2RldmljZSAqY3B1ZnJlcV9jZGV2Owo+Pj4+PiAgICBib29sIGxhc3Q7Cj4+Pj4+Cj4+Pj4+
IC0gIGlmICghY2RldikKPj4+Pj4gLSAgICAgICAgICByZXR1cm47Cj4+Cj4+IHdlIHVzZWQgdG8g
cmV0dXJuIHdpdGhvdXQgYW55IGVycm9ycyBmcm9tIGhlcmUuIE5vdyB3ZSB3aWxsIGhhdmUKPj4g
cHJvYmxlbXMgaWYgcmVnc2l0ZXJpbmcgZmFpbHMgZm9yIHNvbWUgcmVhc29uLgo+IAo+IFNwZWNp
ZmljYWxseSwgdGhlIGxhc3QgY3B1ZnJlcV9jZGV2IGluIHRoZSBsaXN0IHdpbGwgYmUgdW5yZWdp
c3RlcmVkCj4gQUZBSUNTLCBhbmQgd2l0aG91dCByZW1vdmluZyBpdCBmcm9tIHRoZSBsaXN0IGZv
ciB0aGF0IG1hdHRlciwgd2hpY2gKPiBpc24ndCB3aGF0IHRoZSBjYWxsZXIgd2FudHMuCgpJbmRl
ZWQsCgpXaGF0IGFib3V0IHRoZSByZXN1bHRpbmcgY29kZSBhYm92ZToKCnZvaWQgX19jcHVmcmVx
X2Nvb2xpbmdfdW5yZWdpc3RlcihzdHJ1Y3QgY3B1ZnJlcV9jb29saW5nX2RldmljZQoqY3B1ZnJl
cV9jZGV2LCBpbnQgbGFzdCkKewogICAgICAgIC8qIFVucmVnaXN0ZXIgdGhlIG5vdGlmaWVyIGZv
ciB0aGUgbGFzdCBjcHVmcmVxIGNvb2xpbmcgZGV2aWNlICovCiAgICAgICAgaWYgKGxhc3QpCiAg
ICAgICAgICAgICAgICBjcHVmcmVxX3VucmVnaXN0ZXJfbm90aWZpZXIoJnRoZXJtYWxfY3B1ZnJl
cV9ub3RpZmllcl9ibG9jaywKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBDUFVGUkVRX1BPTElDWV9OT1RJRklFUik7CgogICAgICAgIHRoZXJtYWxfY29vbGluZ19k
ZXZpY2VfdW5yZWdpc3RlcihjcHVmcmVxX2NkZXYtPmNkZXYpOwogICAgICAgIGlkYV9zaW1wbGVf
cmVtb3ZlKCZjcHVmcmVxX2lkYSwgY3B1ZnJlcV9jZGV2LT5pZCk7CiAgICAgICAga2ZyZWUoY3B1
ZnJlcV9jZGV2LT5pZGxlX3RpbWUpOwogICAgICAgIGtmcmVlKGNwdWZyZXFfY2Rldik7Cn0KCi8q
KgoKICogY3B1ZnJlcV9jb29saW5nX3VucmVnaXN0ZXIgLSBmdW5jdGlvbiB0byByZW1vdmUgY3B1
ZnJlcSBjb29saW5nCmRldmljZS4KICogQGNkZXY6IHRoZXJtYWwgY29vbGluZyBkZXZpY2UgcG9p
bnRlci4KCiAqCgogKiBUaGlzIGludGVyZmFjZSBmdW5jdGlvbiB1bnJlZ2lzdGVycyB0aGUgInRo
ZXJtYWwtY3B1ZnJlcS0leCIgY29vbGluZwpkZXZpY2UuCiAqLwp2b2lkIGNwdWZyZXFfY29vbGlu
Z191bnJlZ2lzdGVyKHN0cnVjdCBjcHVmcmVxX3BvbGljeSAqcG9saWN5KQp7CiAgICAgICAgc3Ry
dWN0IGNwdWZyZXFfY29vbGluZ19kZXZpY2UgKmNwdWZyZXFfY2RldjsKICAgICAgICBib29sIGxh
c3Q7CgogICAgICAgIG11dGV4X2xvY2soJmNvb2xpbmdfbGlzdF9sb2NrKTsKICAgICAgICBsaXN0
X2Zvcl9lYWNoX2VudHJ5KGNwdWZyZXFfY2RldiwgJmNwdWZyZXFfY2Rldl9saXN0LCBub2RlKSB7
CiAgICAgICAgICAgICAgICBpZiAoY3B1ZnJlcV9jZGV2LT5wb2xpY3kgPT0gcG9saWN5KSB7CiAg
ICAgICAgICAgICAgICAgICAgICAgIGxpc3RfZGVsKCZjcHVmcmVxX2NkZXYtPm5vZGUpOwogICAg
ICAgICAgICAgICAgICAgICAgICBsYXN0ID0gbGlzdF9lbXB0eSgmY3B1ZnJlcV9jZGV2X2xpc3Qp
OwogICAgICAgICAgICAgICAgICAgICAgICBicmVhazsKICAgICAgICAgICAgICAgIH0KICAgICAg
ICB9CiAgICAgICAgbXV0ZXhfdW5sb2NrKCZjb29saW5nX2xpc3RfbG9jayk7CgogICAgICAgIGlm
IChjcHVmcmVxX2NkZXYtPnBvbGljeSA9PSBwb2xpY3kpCiAgICAgICAgICAgICAgICBfX2NwdWZy
ZXFfY29vbGluZ191bnJlZ2lzdGVyKGNwdWZyZXFfY2RldiwgbGFzdCk7Cn0KRVhQT1JUX1NZTUJP
TF9HUEwoY3B1ZnJlcV9jb29saW5nX3VucmVnaXN0ZXIpOwoKCgoKLS0gCiA8aHR0cDovL3d3dy5s
aW5hcm8ub3JnLz4gTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBT
b0NzCgpGb2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93d3cuZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFy
bz4gRmFjZWJvb2sgfAo8aHR0cDovL3R3aXR0ZXIuY29tLyMhL2xpbmFyb29yZz4gVHdpdHRlciB8
CjxodHRwOi8vd3d3LmxpbmFyby5vcmcvbGluYXJvLWJsb2cvPiBCbG9nCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
