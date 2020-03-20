Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E148318CED5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 14:27:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L4+MfdJTN4oDXidhwqQBedSDjPQEJ0rKKL2SyQyYLhw=; b=klwFN4Y9v86Vrh
	W5Q0X6iW1l/G0enqSKqgDHZ9gfxfAioXMdRzbklcgScTES8bbMF5KoeOfPykfMv1T8Kyq3tZ0hRNM
	ElKnK/IQHFNP/FvBV0a6wEc94v3hA/tI2mATgz+yj90XPilrhf2JTFszJX5w6NiSQSe/NCxZNpP9v
	JcMOGuIf1gfoPIcGbTnnyexJKiGMzqHVdEpT5q+OHjSgp0q+RXzsljQMl/IDvRyMRT7zTNYw/la8h
	hD1WC8FofEv80mcydYuXs+PYG8PDJ6qihlnWjcf4UiP9CEDb9pHFigwFElKNOk42UDgFZFP6odAJM
	v6Z90apNU61E9kEV9Y8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFHgH-00044Z-IY; Fri, 20 Mar 2020 13:27:21 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFHg7-000440-Ui
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 13:27:13 +0000
Received: by mail-lj1-x241.google.com with SMTP id a2so6390573ljk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Mar 2020 06:27:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=wc4bfjrR+uREaIIZaXwsklhD3AeNPjVXLEgTl+fkFC8=;
 b=D5pq5EEfn55+AsWz/yn9b30LsZ4b40DJoub3Vv9dg1p0+ouxIPliu6inR7N0AIY0CS
 L+6oHD+IoJFVQCLsrcfJ32s+nVNe54KTCw3jq2PRP1dBF0Dkx7snD/fzFZGfFdPTo5Jc
 8iBYW1H+xkGs/aBwWC/EFdFk1F8qtnjDYxVvZDlqqysJ+PhloDoo1uuxJFnvVByEO/4z
 zD1afdj5LQSrUvfcKujfGHdZr3Zt1iDh4ERUknHtMpfM22Mw0veoS3ffn+cSUVsUAcMs
 addb/FGOVI4BpFv4fRA7PAdCe1Buyqc8XVUCgkg56RbOBI/pHJ2tJncDj3eCjRXDfNL7
 dHTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=wc4bfjrR+uREaIIZaXwsklhD3AeNPjVXLEgTl+fkFC8=;
 b=iPYlz/OlEJqTJD/abNcWODGxqzcSbQqnJu5U/xVJOEnC1gK++bGUYYyzqrTk84qJB1
 jSsUHVPsaEVIqVRiEppeOT3FFRFn+F+d3EaQwrdSCBW9cLaBlM536pXV8bSXfANC10z2
 uWzdH1VRrXMSS61ysaJqYVKhozAhVMNILz2iaxIjhZrhd72+vhxc+dXMyBCXmxSlMPuX
 LIG4vFEPEyIbXJsGgJDsuTBg9K2US85dzJNAtKS13x9rMVaOBKKyWLrQN8mLIUE0w6aP
 nijfXEvrjU4dPPLuTENqZNuX9JYRMJ71J/W9p3p/T8EVyUurSlCuSOtsbLXIf7eseR/r
 75wg==
X-Gm-Message-State: ANhLgQ3ZWzyefpT/9D4oId0e1yLcHP2/hbeBqNZZAtFV9UkYS1zfLyW0
 5soOWWeb4+6aGcTQiZR5inY=
X-Google-Smtp-Source: ADFU+vs9X33ooryzjZDTx+xNfE4vhyGx9fcHpid/WypfKXilGP2kWn2XGuDr4xWIPUYqj1dEeoo3kw==
X-Received: by 2002:a2e:8095:: with SMTP id i21mr5526453ljg.193.1584710829378; 
 Fri, 20 Mar 2020 06:27:09 -0700 (PDT)
Received: from [192.168.2.145] (94-29-39-224.dynamic.spd-mgts.ru.
 [94.29.39.224])
 by smtp.googlemail.com with ESMTPSA id c2sm3315589lja.84.2020.03.20.06.27.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 20 Mar 2020 06:27:08 -0700 (PDT)
Subject: Re: [PATCH v2] ARM: boot: Obtain start of physical memory from DTB
To: Geert Uytterhoeven <geert@linux-m68k.org>
References: <CGME20200225112354eucas1p1300749b32c6809b6a22194c1a952a68c@eucas1p1.samsung.com>
 <20200127140716.15673-1-geert+renesas@glider.be>
 <d1b12473-5199-1cf6-25d1-a6ce79450e8e@samsung.com>
 <CAMuHMdUGu4eStpYp5W0SKJd8yrLLDTgF4__Jq_n+Z7SWtPM+Cg@mail.gmail.com>
 <90c006f2-8c13-2976-008f-37139ca49f37@gmail.com>
 <CAMuHMdVkhf+4CQwpf9tn3UfaMb=qoRRYS2XpwcgBMciTVmXjHA@mail.gmail.com>
 <75358399-c292-4e60-abdc-bd0729cf5c08@gmail.com>
 <CAMuHMdX9PH+WUvONz2C8D1fRrZXn5rEND-p_my2mYvoyxF_gWA@mail.gmail.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <0c70b161-64e8-7765-cc4f-112c2cec9a29@gmail.com>
Date: Fri, 20 Mar 2020 16:27:07 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CAMuHMdX9PH+WUvONz2C8D1fRrZXn5rEND-p_my2mYvoyxF_gWA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_062712_013742_B769D4CA 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [digetx[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Arnd Bergmann <arnd@arndb.de>, Nicolas Pitre <nico@fluxnic.net>,
 Russell King <linux@armlinux.org.uk>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Chris Brandt <chris.brandt@renesas.com>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 Eric Miao <eric.miao@nvidia.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MjAuMDMuMjAyMCAxMjoxOCwgR2VlcnQgVXl0dGVyaG9ldmVuINC/0LjRiNC10YI6Ci4uLgo+IFRo
YW5rcyBmb3IgdGhlIGluZm8hCj4gCj4+IEkgcmVjYWxsZWQgdGhhdCBDT05GSUdfVEhVTUIyX0tF
Uk5FTD15IGlzIHNldCBpbiBteSBrZXJuZWwncyBjb25maWcgYW5kCj4+IGRpc2FibGluZyB0aHVt
YjIgYnVpbGQgZml4ZXMgdGhlIHByb2JsZW0uIFBsZWFzZSBjb3JyZWN0IGl0IGluIHRoZSBuZXh0
Cj4+IHZlcnNpb24gb2YgdGhlIHBhdGNoLCB0aGFua3MgaW4gYWR2YW5jZS4KPiAKPiBJbnRlcmVz
dGluZy4gIEkgZW5hYmxlZCBDT05GSUdfVEhVTUIyX0tFUk5FTD15LCBhbmQgaXQgZG9lc24ndCBt
YWtlCj4gYSBkaWZmZXJlbmNlIGZvciB0aGUgZmV3IGJvYXJkIGNvbWJvcyBJJ3ZlIHRyaWVkICh3
aXRoL3dpdGhvdXQgYXBwZW5kZWQgRFRCKS4KPiBTbyBpdCBtdXN0IGJlIHJlbGF0ZWQgdG8gQVRB
R1MuICBXaWxsIGRpdmUgZGVlcGVyLi4uCj4gCj4gUC5TLiBJIG5ldmVyIHJlYWxpemVkIENPTkZJ
R19USFVNQjJfS0VSTkVMPXkgaGFkIHN1Y2ggYSBiaWcgc2l6ZQo+IGltcGFjdDogbXkga2VybmVs
IHNocnVuayBieSBjYS4gMSBNaUIuCgpBIHF1aWNrIG9ic2VydmF0aW9uIHRlbGxzIHRoYXQgZmR0
X2dldF9tZW1fc3RhcnQoKSByZXR1cm5zIGEgd3JvbmcKYWRkcmVzcyB3aXRoIENPTkZJR19USFVN
QjJfS0VSTkVMPXksIEkgaGF2ZW4ndCB0cmllZCB0byBsb29rIGZ1cnRoZXIgeWV0LgoKRGlzYWJs
aW5nIGFsbCBBVEFHUyBvcHRpb25zIGluIGtlcm5lbCdzIGNvbmZpZyBkb2Vzbid0IGhlbHAuCgpL
ZXJuZWwgY29uZmlnOgpodHRwczovL2dpc3QuZ2l0aHViLmNvbS9kaWdldHgvYjdjNGUxZDJkNGRh
ZTBjNTU2Njc0OGMwZDdmMWU4ODQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
