Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C887F460C2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 16:30:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t8y9mlr7gZ/4kBBp7pXSOVF8mjRrhklSNw5fp6+tWd0=; b=s/oxeLWZT6bsTT
	ID94Z1CZZBNdvrdm1BCX/B6tDS+02F+uE6/eCy/uwvdpW5ogFIZbTESPkRBsdnTPCl1YedQYOE6nZ
	ur9fz5xuu6YJHVCflAo8nC3SyQrfFeQVPKP1GkKf2x3+4JoHwDbE8m9BiFnduCyFHVaNrzreL4uNZ
	TiLjabOQQ+tm3lnaIpx+x5kgnC8wl2FAN1a40eB9HidiY3lxFhWFqmN4oTotAX+FZRojCepV6lxbf
	rwdEkKeYwCGqxe7uFBEuRbrO1X0pMeTisnydF1rK9e9ywSX5XWkVYTuVHFUANmlSB6rJm+q3TA14R
	tgF841LXAejAkk87ETZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbnDr-0008Ss-LW; Fri, 14 Jun 2019 14:30:31 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbnDe-0008RM-Cm
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 14:30:20 +0000
Received: by mail-wm1-x343.google.com with SMTP id x15so2600728wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 07:30:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=eixhaap1Vvg9COsJFwOBepIriW1ccdSZWPriQHQ789U=;
 b=r/5lTpHAeOx/YLPbIvRjtX8iZwOZaqHbn+knSgo6eTMReQzzduEeCphWM2KIlLaWTy
 TYwq7C7F/8G+QBIHMgzAF0S6/Ly8a9zKOjLJlO1LqHIXekFIfPc1VhXhjJM2q5NfmMoS
 pa5/FGg+kN8OUToCAsNo+r/H2z1vrEaJZTUjynH4jXVnIEsVikIZ6rvtSRCgdrLDg378
 JcnsQHCF6fLjHK3qVmKpmEEYo6a8EC2kiWByhO570LRktDxBcF6HDxE5pmKVJEqTh3ay
 aXkdpbURnDho4bFcePIzt/eTFtWCiPMyiSfONJLgWO1MvB0vkPIl9OvB/04RMwVf4S7X
 luMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=eixhaap1Vvg9COsJFwOBepIriW1ccdSZWPriQHQ789U=;
 b=j/V0mygB/HxLQig+mrSE+RlpxDxmkzk812rmH9n7TYiVChDVFpGjBtR97kpcxeIfU7
 Bsf++vleN19iDkFoAE/Iy+dmJKpxSmVDX3+/JoLkyOoqNWR91OU26aXHn1SYzWJKW/yO
 sMbN+7CAH5+RuDr22agBYh9MX8skkzgj0TP5WBxgmoBsvvi7CwgAHXJYxsQRyGsR67Ry
 5oACevH9fHG2Q+p4DzjZ+4hw6Uf0SDutVptkU750AeVVmT61/TkgVgv7ZXixBmQyZfg7
 VY9YuiAV+qMDlREEpICx42e34dm7pRn73Z3Vq1K8XMA+4QdHhW0UoJMgF4pe57F+dqNh
 cmyA==
X-Gm-Message-State: APjAAAVgRYfFVL4AjLG0bA2ogC9IVwUb1BKviM3YauVUrST3pp25OMDJ
 C7/2/lwoDc13sEGJVl6LuPtZuQ==
X-Google-Smtp-Source: APXvYqw9NeesQRXNRwJdM0GzEdMnk0BtAaxAEpWDY8d9OYcIWtyPcKXWFabHALi3848fcyzBK3Ct+Q==
X-Received: by 2002:a05:600c:206:: with SMTP id 6mr7810424wmi.73.1560522616563; 
 Fri, 14 Jun 2019 07:30:16 -0700 (PDT)
Received: from [192.168.0.41] (22.194.95.92.rev.sfr.net. [92.95.194.22])
 by smtp.googlemail.com with ESMTPSA id v4sm2167383wmg.22.2019.06.14.07.30.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 14 Jun 2019 07:30:15 -0700 (PDT)
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: Fix multiple thermal zones
 conflict in rk3399.dtsi
To: Robin Murphy <robin.murphy@arm.com>, Heiko Stuebner <heiko@sntech.de>
References: <20190604165802.7338-1-daniel.lezcano@linaro.org>
 <5188064.YWmxIpmbGp@phil> <55b9018e-672e-522b-d0a0-c5655be0f353@linaro.org>
 <e5a4f850-27e0-cad3-04bd-6c004fca2b81@arm.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Openpgp: preference=signencrypt
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <9bf85c22-f1ba-3dbc-0b67-17e124484fa1@linaro.org>
Date: Fri, 14 Jun 2019 16:30:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <e5a4f850-27e0-cad3-04bd-6c004fca2b81@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_073018_445398_3C554EC4 
X-CRM114-Status: GOOD (  21.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
 <devicetree@vger.kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Emil Renner Berthing <kernel@esmil.dk>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 Tony Xie <tony.xie@rock-chips.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Randy Li <ayaka@soulik.info>, linux-kernel@vger.kernel.org,
 Vicente Bergas <vicencb@gmail.com>, dianders@chromium.org, edubezval@gmail.com,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Rob Herring <robh+dt@kernel.org>,
 Klaus Goger <klaus.goger@theobroma-systems.com>, Kukjin Kim <kgene@kernel.org>,
 manivannan.sadhasivam@linaro.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 Christoph Muellner <christoph.muellner@theobroma-systems.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTQvMDYvMjAxOSAxNjowMiwgUm9iaW4gTXVycGh5IHdyb3RlOgo+IE9uIDE0LzA2LzIwMTkg
MTQ6MDMsIERhbmllbCBMZXpjYW5vIHdyb3RlOgo+PiBPbiAxNC8wNi8yMDE5IDExOjM1LCBIZWlr
byBTdHVlYm5lciB3cm90ZToKPj4+IEhpIERhbmllbCwKPj4+Cj4+PiBBbSBEaWVuc3RhZywgNC4g
SnVuaSAyMDE5LCAxODo1Nzo1NyBDRVNUIHNjaHJpZWIgRGFuaWVsIExlemNhbm86Cj4+Pj4gQ3Vy
cmVudGx5IHRoZSBjb21tb24gdGhlcm1hbCB6b25lcyBkZWZpbml0aW9ucyBmb3IgdGhlIHJrMzM5
OSBhc3N1bWVzCj4+Pj4gbXVsdGlwbGUgdGhlcm1hbCB6b25lcyBhcmUgc3VwcG9ydGVkIGJ5IHRo
ZSBnb3Zlcm5vcnMuIFRoaXMgaXMgbm90IHRoZQo+Pj4+IGNhc2UgYW5kIGVhY2ggdGhlcm1hbCB6
b25lIGhhcyBpdHMgb3duIGdvdmVybm9yIGluc3RhbmNlIGFjdGluZwo+Pj4+IGluZGl2aWR1YWxs
eSB3aXRob3V0IGNvbGxhYm9yYXRpb24gd2l0aCBvdGhlciBnb3Zlcm5vcnMuCj4+Pj4KPj4+PiBB
cyB0aGUgY29vbGluZyBkZXZpY2UgZm9yIHRoZSBDUFUgYW5kIHRoZSBHUFUgdGhlcm1hbCB6b25l
cyBpcyB0aGUKPj4+PiBzYW1lLCBlYWNoIGdvdmVybm9ycyB0YWtlIGRpZmZlcmVudCBkZWNpc2lv
bnMgZm9yIHRoZSBzYW1lIGNvb2xpbmcKPj4+PiBkZXZpY2UgbGVhZGluZyB0byBjb25mbGljdGlu
ZyBpbnN0cnVjdGlvbnMgYW5kIGFuIGVycmF0aWMgYmVoYXZpb3IuCj4+Pj4KPj4+PiBBcyB0aGUg
Y29vbGluZy1tYXBzIGlzIGFib3V0IHRvIGJlY29tZSBhbiBvcHRpb25hbCBwcm9wZXJ0eSwgbGV0
J3MKPj4+PiByZW1vdmUgdGhlIGNwdSBjb29saW5nIGRldmljZSBtYXAgZnJvbSB0aGUgR1BVIHRo
ZXJtYWwgem9uZS4KPj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IERhbmllbCBMZXpjYW5vIDxkYW5p
ZWwubGV6Y2Fub0BsaW5hcm8ub3JnPgo+Pj4+IC0tLQo+Pj4+IMKgIGFyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszMzk5LmR0c2kgfCA5IC0tLS0tLS0tLQo+Pj4+IMKgIDEgZmlsZSBjaGFu
Z2VkLCA5IGRlbGV0aW9ucygtKQo+Pj4+Cj4+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszMzk5LmR0c2kKPj4+PiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszMzk5LmR0c2kKPj4+PiBpbmRleCAxOTZhYzliNzgwNzYuLmUxMzU3ZTBmNjBmNyAx
MDA2NDQKPj4+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS5kdHNp
Cj4+Pj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkuZHRzaQo+Pj4+
IEBAIC04MjEsMTUgKzgyMSw2IEBACj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHR5cGUgPSAiY3JpdGljYWwiOwo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgfTsKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9Owo+Pj4+
IC0KPj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb29saW5nLW1hcHMgewo+Pj4+IC3CoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbWFwMCB7Cj4+Pj4gLcKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHRyaXAgPSA8JmdwdV9hbGVydDA+Owo+Pj4+IC3CoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb29saW5nLWRldmljZSA9Cj4+Pj4gLcKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZjcHVfYjAgVEhF
Uk1BTF9OT19MSU1JVCBUSEVSTUFMX05PX0xJTUlUPiwKPj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8JmNwdV9iMSBUSEVSTUFMX05PX0xJTUlUIFRI
RVJNQUxfTk9fTElNSVQ+Owo+Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfTsK
Pj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9Owo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoCB9
Owo+Pj4+IMKgwqDCoMKgwqAgfTsKPj4+Cj4+PiBteSBrbm93bGVkZ2Ugb2YgdGhlIHRoZXJtYWwg
ZnJhbWV3b3JrIGlzIG5vdCB0aGF0IGJpZywgYnV0IHdoYXQgYWJvdXQKPj4+IHRoZQo+Pj4gcmsz
Mzk5LWRldmljZXMgd2hpY2ggZnVydGhlciBkZXRhaWwgdGhlIGNvb2xpbmctbWFwcyBsaWtlCj4+
PiByazMzOTktZ3J1LWtldmluCj4+PiBhbmQgdGhlIHJrMzM5OS1uYW5vcGMtdDQgd2l0aCBpdHMg
ZmFuLWhhbmRsaW5nIGluIHRoZSBjb29saW5nLW1hcHM/Cj4+Cj4+IFRoZSByazMzOTktZ3J1LWtl
dmluIGlzIGNvcnJlY3QuCj4+Cj4+IFRoZSByazMzOTktbmFub3BjLXQ0IGlzIG5vdCBjb3JyZWN0
IGJlY2F1c2UgdGhlIGNwdSBhbmQgdGhlIGdwdSBhcmUKPj4gc2hhcmluZyB0aGUgc2FtZSBjb29s
aW5nIGRldmljZSAodGhlIGZhbikuIFRoZXJlIGFyZSBkaWZmZXJlbnQKPj4gY29uZmlndXJhdGlv
bnM6Cj4+Cj4+IDEuIFRoZSBjcHUgY29vbGluZyBkZXZpY2UgZm9yIHRoZSBDUFUgYW5kIHRoZSBm
YW4gZm9yIHRoZSBHUFUKPj4KPj4gMi4gRGlmZmVyZW50IHRyaXAgcG9pbnRzIG9uIHRoZSBDUFUg
dGhlcm1hbCB6b25lLCBlZy4gb25lIHRvIGZvciB0aGUgQ1BVCj4+IGNvb2xpbmcgZGV2aWNlIGFu
ZCBhbm90aGVyIG9uZSBmb3IgdGhlIGZhbi4KPj4KPj4gVGhlcmUgYXJlIHNvbWUgdmFyaWFudCBm
b3IgdGhlIGFib3ZlLiBJZiB0aGlzIGJvYXJkIGlzIG5vdCBvbiBiYXR0ZXJ5LAo+PiB5b3UgbWF5
IHdhbnQgdG8gZ2l2ZSBwcmlvcml0eSB0byB0aGUgdGhyb3VnaHB1dCwgc28gYWN0aXZhdGUgdGhl
IGZhbgo+PiBmaXJzdCBhbmQgdGhlbiBjb29sIGRvd24gdGhlIENQVS4gT3IgaWYgeW91IGFyZSBv
biBiYXR0ZXJ5LCB5b3UgbWF5IHdhbnQKPj4gdG8gaW52ZXJ0IHRoZSB0cmlwIHBvaW50cy4KPj4K
Pj4gSW4gYW55IGNhc2UsIGl0IGlzIG5vdCBwb3NzaWJsZSB0byBzaGFyZSB0aGUgc2FtZSBjb29s
aW5nIGRldmljZSBmb3IKPj4gZGlmZmVyZW50IHRoZXJtYWwgem9uZXMuCj4gCj4gT0ssIHRoYW5r
cyBmb3IgdGhlIGNsYXJpZmljYXRpb24uIEknbGwgZ2V0IG15IGJvYXJkIHNldCB1cCBhZ2FpbiB0
bwo+IGZpZ3VyZSBvdXQgdGhlIGJlc3QgZml4IGZvciByazMzOTktbmFub3BjLXQ0IChGV0lXIG1v
c3QgdXNlcnMgYXJlCj4gcHJvYmFibHkganVzdCB1c2luZyBwYXNzaXZlIGNvb2xpbmcgb3IgYSBw
bGFpbiBEQyBmYW4gYW55d2F5KS4gWW91IG1pZ2h0Cj4gd2FudCB0byByYWlzZSB0aGlzIGlzc3Vl
IHdpdGggdGhlIG1haW50YWluZXJzIG9mCj4gYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNTQyMi1v
ZHJvaWR4dTMtY29tbW9uLmR0c2ksIHNpbmNlIHRoZQo+IGV2ZXJ5dGhpbmctc2hhcmVkLWJ5LWV2
ZXJ5dGhpbmcgYXBwcm9hY2ggaW4gdGhlcmUgd2FzIHdoYXQgSSB1c2VkIGFzIGEKPiByZWZlcmVu
Y2UuCgpDYydlZDogS3VramluIEtpbSBhbmQgS3J6eXN6dG9mIEtvemxvd3NraQoKRWFzeSA6KQoK
Ci0tIAogPGh0dHA6Ly93d3cubGluYXJvLm9yZy8+IExpbmFyby5vcmcg4pSCIE9wZW4gc291cmNl
IHNvZnR3YXJlIGZvciBBUk0gU29DcwoKRm9sbG93IExpbmFybzogIDxodHRwOi8vd3d3LmZhY2Vi
b29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6Ly90d2l0dGVyLmNvbS8jIS9s
aW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8ub3JnL2xpbmFyby1ibG9nLz4g
QmxvZwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
