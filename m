Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46D6045D6A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 15:04:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6W7zBAA0q47KWfP4QtVQd2s5hsH8McOpS0tW+qMpBPk=; b=Vki3tZxqDcZeCd
	eUXSy0VpuEcd6k4WFvDOadtxsIU65i0CEsWkcPuqAg6Bc+cDmgHgf32Et3MuKLGLOH+p7M10YZrxY
	fxW2s7ITFwGIybnAut2dO99OVqA0mIPh62/hdyoOthJ1dssrE86DPbz3Vlyno0iVEUKirzjvql6IK
	/nV8grZjXiLyh7AJPKCRvhV7qhVjqSlXVdvJU+xnhAU9eHP7bPuYVM2aPPr+cy+WsvEpo6SyrBM3s
	/I3Tahxs9c0ecZKDwv1LVmLNSv7575SUqTYEmH50jGU8EeOh3ONF94P/m7xT76hVjGfosy3eRHd2D
	B2UIoJMCsh3qmxKqvj2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hblsL-0007lO-QC; Fri, 14 Jun 2019 13:04:13 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbls4-0007kE-Rv
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 13:03:58 +0000
Received: by mail-wr1-x443.google.com with SMTP id p13so2436737wru.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 06:03:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=LsSlDp/7P2gKHSobW4kAiT5KQveExkz9spvrJMOu8vo=;
 b=FIaY2gVV7TlZhW/J9D5Zo1kBIjh9a5ex2aH7GX315wkyNDa5ADeR6rzNKa9mRQt8OS
 VjDK3t0Gkd7WPkERvxQLhLYOki1P6BKM9stQH7prGv1jEp8n1TKDND2p4vi6qldeVCPo
 OEOr5nh2VFBKYhSPWU3ZWFxPMJ3y8ZM0BiRpqZLJ94qqpT2//TgvD151/XByxHlwHwkQ
 pp+7MlBJDG3lBf6iGkKD/5gBr1FphR02senAcSGmT+WLzpJF+NhoMfZ1VJFGP5gifleS
 iy1SFLKF1peS3roohAO269sXUZj/4p1wHU+C1Bdg5cSJOty5GXzgSGhr91bZT8tdXpEt
 9VPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=LsSlDp/7P2gKHSobW4kAiT5KQveExkz9spvrJMOu8vo=;
 b=rCiEYliJcvAuzHzuIRKoBl7DqFkZ4cVp/0fYfRxL7DW53y2Fg6jpamTXPU+oPaoAwC
 0/7kFDD6o6ypPp9OXQo3we1sOU1uEzgEomNJk8ST0NpvagSVNUT0lKppT2U7fYtA9pip
 XvfuBDmtYArlDirqEnr7enZGQODvYz4FhdmlcuKYwZQk/D/paUWfDSVaKGEdtKrAQ8aK
 DcJqwnyaLaMpkxysK7HFNjMcGJzX+fbSn5sJu/1ik8ZOlcC6SAPdDG7qqxZrwQY0DOr+
 T5yWagE9gkpn4SIjW0rQzjZpI43PA0kFQO5r12HgDYyHJgMNa8adB41w++JgpBcanfi3
 7v8A==
X-Gm-Message-State: APjAAAWdCuO1xWfV1jnsv5TudcLSg6FFgQTbPlhCX2Ws3cMQ+1KFT+HV
 mkB7VMqj4eV+FhWhONVbTsCXtQ==
X-Google-Smtp-Source: APXvYqzVJZpzCns4PqkC9Ov5lZR6QhtdqSO6rCsOx+so4AeGO/eIwtWZjCVz6K1K/sXiogq5T3uHwQ==
X-Received: by 2002:a5d:6ad2:: with SMTP id u18mr14244915wrw.63.1560517435052; 
 Fri, 14 Jun 2019 06:03:55 -0700 (PDT)
Received: from [192.168.0.41] (sju31-1-78-210-255-2.fbx.proxad.net.
 [78.210.255.2])
 by smtp.googlemail.com with ESMTPSA id h90sm7424557wrh.15.2019.06.14.06.03.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 14 Jun 2019 06:03:54 -0700 (PDT)
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: Fix multiple thermal zones
 conflict in rk3399.dtsi
To: Heiko Stuebner <heiko@sntech.de>
References: <20190604165802.7338-1-daniel.lezcano@linaro.org>
 <5188064.YWmxIpmbGp@phil>
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
Message-ID: <55b9018e-672e-522b-d0a0-c5655be0f353@linaro.org>
Date: Fri, 14 Jun 2019 15:03:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <5188064.YWmxIpmbGp@phil>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_060356_914951_6198F9D1 
X-CRM114-Status: GOOD (  20.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Emil Renner Berthing <kernel@esmil.dk>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 Tony Xie <tony.xie@rock-chips.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Randy Li <ayaka@soulik.info>, linux-kernel@vger.kernel.org,
 Vicente Bergas <vicencb@gmail.com>, dianders@chromium.org, edubezval@gmail.com,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Rob Herring <robh+dt@kernel.org>,
 Klaus Goger <klaus.goger@theobroma-systems.com>,
 manivannan.sadhasivam@linaro.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, robin.murphy@arm.com,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 Christoph Muellner <christoph.muellner@theobroma-systems.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTQvMDYvMjAxOSAxMTozNSwgSGVpa28gU3R1ZWJuZXIgd3JvdGU6Cj4gSGkgRGFuaWVsLAo+
IAo+IEFtIERpZW5zdGFnLCA0LiBKdW5pIDIwMTksIDE4OjU3OjU3IENFU1Qgc2NocmllYiBEYW5p
ZWwgTGV6Y2FubzoKPj4gQ3VycmVudGx5IHRoZSBjb21tb24gdGhlcm1hbCB6b25lcyBkZWZpbml0
aW9ucyBmb3IgdGhlIHJrMzM5OSBhc3N1bWVzCj4+IG11bHRpcGxlIHRoZXJtYWwgem9uZXMgYXJl
IHN1cHBvcnRlZCBieSB0aGUgZ292ZXJub3JzLiBUaGlzIGlzIG5vdCB0aGUKPj4gY2FzZSBhbmQg
ZWFjaCB0aGVybWFsIHpvbmUgaGFzIGl0cyBvd24gZ292ZXJub3IgaW5zdGFuY2UgYWN0aW5nCj4+
IGluZGl2aWR1YWxseSB3aXRob3V0IGNvbGxhYm9yYXRpb24gd2l0aCBvdGhlciBnb3Zlcm5vcnMu
Cj4+Cj4+IEFzIHRoZSBjb29saW5nIGRldmljZSBmb3IgdGhlIENQVSBhbmQgdGhlIEdQVSB0aGVy
bWFsIHpvbmVzIGlzIHRoZQo+PiBzYW1lLCBlYWNoIGdvdmVybm9ycyB0YWtlIGRpZmZlcmVudCBk
ZWNpc2lvbnMgZm9yIHRoZSBzYW1lIGNvb2xpbmcKPj4gZGV2aWNlIGxlYWRpbmcgdG8gY29uZmxp
Y3RpbmcgaW5zdHJ1Y3Rpb25zIGFuZCBhbiBlcnJhdGljIGJlaGF2aW9yLgo+Pgo+PiBBcyB0aGUg
Y29vbGluZy1tYXBzIGlzIGFib3V0IHRvIGJlY29tZSBhbiBvcHRpb25hbCBwcm9wZXJ0eSwgbGV0
J3MKPj4gcmVtb3ZlIHRoZSBjcHUgY29vbGluZyBkZXZpY2UgbWFwIGZyb20gdGhlIEdQVSB0aGVy
bWFsIHpvbmUuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IERhbmllbCBMZXpjYW5vIDxkYW5pZWwubGV6
Y2Fub0BsaW5hcm8ub3JnPgo+PiAtLS0KPj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszMzk5LmR0c2kgfCA5IC0tLS0tLS0tLQo+PiAgMSBmaWxlIGNoYW5nZWQsIDkgZGVsZXRpb25z
KC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5
OS5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkuZHRzaQo+PiBpbmRl
eCAxOTZhYzliNzgwNzYuLmUxMzU3ZTBmNjBmNyAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazMzOTkuZHRzaQo+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzM5OS5kdHNpCj4+IEBAIC04MjEsMTUgKzgyMSw2IEBACj4+ICAJCQkJCXR5
cGUgPSAiY3JpdGljYWwiOwo+PiAgCQkJCX07Cj4+ICAJCQl9Owo+PiAtCj4+IC0JCQljb29saW5n
LW1hcHMgewo+PiAtCQkJCW1hcDAgewo+PiAtCQkJCQl0cmlwID0gPCZncHVfYWxlcnQwPjsKPj4g
LQkJCQkJY29vbGluZy1kZXZpY2UgPQo+PiAtCQkJCQkJPCZjcHVfYjAgVEhFUk1BTF9OT19MSU1J
VCBUSEVSTUFMX05PX0xJTUlUPiwKPj4gLQkJCQkJCTwmY3B1X2IxIFRIRVJNQUxfTk9fTElNSVQg
VEhFUk1BTF9OT19MSU1JVD47Cj4+IC0JCQkJfTsKPj4gLQkJCX07Cj4+ICAJCX07Cj4+ICAJfTsK
PiAKPiBteSBrbm93bGVkZ2Ugb2YgdGhlIHRoZXJtYWwgZnJhbWV3b3JrIGlzIG5vdCB0aGF0IGJp
ZywgYnV0IHdoYXQgYWJvdXQgdGhlCj4gcmszMzk5LWRldmljZXMgd2hpY2ggZnVydGhlciBkZXRh
aWwgdGhlIGNvb2xpbmctbWFwcyBsaWtlIHJrMzM5OS1ncnUta2V2aW4KPiBhbmQgdGhlIHJrMzM5
OS1uYW5vcGMtdDQgd2l0aCBpdHMgZmFuLWhhbmRsaW5nIGluIHRoZSBjb29saW5nLW1hcHM/CgpU
aGUgcmszMzk5LWdydS1rZXZpbiBpcyBjb3JyZWN0LgoKVGhlIHJrMzM5OS1uYW5vcGMtdDQgaXMg
bm90IGNvcnJlY3QgYmVjYXVzZSB0aGUgY3B1IGFuZCB0aGUgZ3B1IGFyZQpzaGFyaW5nIHRoZSBz
YW1lIGNvb2xpbmcgZGV2aWNlICh0aGUgZmFuKS4gVGhlcmUgYXJlIGRpZmZlcmVudApjb25maWd1
cmF0aW9uczoKCjEuIFRoZSBjcHUgY29vbGluZyBkZXZpY2UgZm9yIHRoZSBDUFUgYW5kIHRoZSBm
YW4gZm9yIHRoZSBHUFUKCjIuIERpZmZlcmVudCB0cmlwIHBvaW50cyBvbiB0aGUgQ1BVIHRoZXJt
YWwgem9uZSwgZWcuIG9uZSB0byBmb3IgdGhlIENQVQpjb29saW5nIGRldmljZSBhbmQgYW5vdGhl
ciBvbmUgZm9yIHRoZSBmYW4uCgpUaGVyZSBhcmUgc29tZSB2YXJpYW50IGZvciB0aGUgYWJvdmUu
IElmIHRoaXMgYm9hcmQgaXMgbm90IG9uIGJhdHRlcnksCnlvdSBtYXkgd2FudCB0byBnaXZlIHBy
aW9yaXR5IHRvIHRoZSB0aHJvdWdocHV0LCBzbyBhY3RpdmF0ZSB0aGUgZmFuCmZpcnN0IGFuZCB0
aGVuIGNvb2wgZG93biB0aGUgQ1BVLiBPciBpZiB5b3UgYXJlIG9uIGJhdHRlcnksIHlvdSBtYXkg
d2FudAp0byBpbnZlcnQgdGhlIHRyaXAgcG9pbnRzLgoKSW4gYW55IGNhc2UsIGl0IGlzIG5vdCBw
b3NzaWJsZSB0byBzaGFyZSB0aGUgc2FtZSBjb29saW5nIGRldmljZSBmb3IKZGlmZmVyZW50IHRo
ZXJtYWwgem9uZXMuCgoKLS0gCiA8aHR0cDovL3d3dy5saW5hcm8ub3JnLz4gTGluYXJvLm9yZyDi
lIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCgpGb2xsb3cgTGluYXJvOiAgPGh0
dHA6Ly93d3cuZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFybz4gRmFjZWJvb2sgfAo8aHR0cDovL3R3
aXR0ZXIuY29tLyMhL2xpbmFyb29yZz4gVHdpdHRlciB8CjxodHRwOi8vd3d3LmxpbmFyby5vcmcv
bGluYXJvLWJsb2cvPiBCbG9nCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
