Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A46AE5F82
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 22:30:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cYAUix9+SSuHSqVxyYVE3r4gV2GSdGAGtRIUY+wh5qw=; b=jUJgKs7CGszQESrca7S+71VZA
	RjgNNvolDjd0FcD9TEJFppkA8h3DwoaGzEl7p7XlB1aBkfzSBcf5WUYP14KNVcBPft7W9bobII12N
	xgaqJuzLvLNWEzWrZkRswqluRc2ZjkpcIoD0ECaSn1y3JI4oeoNuam8VngPIeOF2M2VQjiYNDjwOg
	CkxOPS6z+pVrvi43fOxs0cGgOfAaa6KSfUu7xjYmSRGCWRHsOwTvueDSNVq1V0vfyxZ4FTIPjWRsD
	GR1m+EW5T4Jwd4r4Noe8zg+mHj5iYoKmOG11dU5HIA1L9+vAYjxAqNU95S8Y6i7A4AV7ciEGLMWNn
	teOrGETHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOShE-0003F5-St; Sat, 26 Oct 2019 20:30:00 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOSh3-0003EA-5Z
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 20:29:50 +0000
Received: by mail-wr1-x441.google.com with SMTP id l10so5937934wrb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 26 Oct 2019 13:29:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=4wh2U9sFqBwfDf0nZQjTsklg9xDf789GQammhgh2Mgk=;
 b=Ng6Wb1aF1JapsK21o9YGhhN0Gq/K5h8CZdHpp03cEYgiP9phvjBE8cMdi4kymm1P8e
 gu/IHjGcSm0cg07Y4OIR5tGgiZKYeZcTzwBxCXPR/jJk32d+7sMP0EQbFEf2NSVWVEa9
 WoxCfz9nQ7o+DP1RwLbPQEeujjo80bL5xeMlXtGXiANxF+E60spWqbvcDj2Prrygl6OX
 Ejinwfdu9/Uhh7j4iPQv+8EqObyvFDJecwt9Mb8RpJCVpGPwGZJBd2f75uXuVrxar97p
 oll++7fKauBP5UI4WatmoNValG4goyRGDgjarRETIAUAQW//iTCDV8luH/lLFBVrXzKZ
 CSRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=4wh2U9sFqBwfDf0nZQjTsklg9xDf789GQammhgh2Mgk=;
 b=ksKE7SvTYy8I/OlHq3/KAozSzRPZVF5DtYy4pmSVywZp+5xkflkExjZB54DPEfdwtp
 SI6eJw3IVQzwsELyLxpeuyXPSF5ha6Y3SZn+hWv6vmT8e9auiDHe7hZdv0/MdbRaPcj5
 d2JQytg1Lrnimz64uMLmWb9rtOdZ9ivpo6Kh69I1ggbgzC0F28LqrL7JBSger7dzuiel
 pxQcIyLjWKDrMYNimjL1VCT4U/UCcKez3B39KLcDzLLxeJFCF+ZTMsOTLMYYRZfC3TP7
 auhdwYs2/U1fdXQcida56ciy23ARSmqxm355j0E8NipvRMJp4jqbHmgzBer/CqMcs34q
 l49g==
X-Gm-Message-State: APjAAAVZuIOMRMO7ZatEhR6nJcLv1ZidNJIfo748v7uwbrgAcZH8hat+
 LtSwbxm0QEJWy/FWvgIW0b8=
X-Google-Smtp-Source: APXvYqwsbzOzEv8luTR5JkVcDrsSwIx1FRcxy8PcdF6PXF/pUnvtJ3sO8D6jECnzWTal9dI5ljapLg==
X-Received: by 2002:a5d:49c9:: with SMTP id t9mr8907763wrs.146.1572121785248; 
 Sat, 26 Oct 2019 13:29:45 -0700 (PDT)
Received: from ?IPv6:2a01:cb19:16b:9900:c490:d472:7a6:b387?
 ([2a01:cb19:16b:9900:c490:d472:7a6:b387])
 by smtp.gmail.com with ESMTPSA id u7sm6776609wre.59.2019.10.26.13.29.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 26 Oct 2019 13:29:44 -0700 (PDT)
Subject: Re: [PATCH] ARM: dts: imx7d-pico: Add LCD support
To: Fabio Estevam <festevam@gmail.com>
References: <20191025082247.3371-1-offougajoris@gmail.com>
 <20191025184544.7gwwbsrketjtwrwi@pengutronix.de>
 <5a73d00e-397a-f4ed-2bfa-bb26324685ba@gmail.com>
 <CAOMZO5CPg=mJSKNuNVFF=zGUaZqMpr9Ocv89msS-120Shc0=RA@mail.gmail.com>
From: Joris Offouga <offougajoris@gmail.com>
Message-ID: <3a75c40b-c1bc-1461-08e1-f5ac89d73c80@gmail.com>
Date: Sat, 26 Oct 2019 22:29:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAOMZO5CPg=mJSKNuNVFF=zGUaZqMpr9Ocv89msS-120Shc0=RA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_132949_213158_16A5C9DE 
X-CRM114-Status: GOOD (  14.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (offougajoris[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Otavio Salvador <otavio@ossystems.com.br>,
 Sascha Hauer <s.hauer@pengutronix.de>, Marco Felsch <m.felsch@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgRmFiaW8sCgpMZSAyNi8xMC8yMDE5IMOgIDIxOjIwLCBGYWJpbyBFc3RldmFtIGEgw6ljcml0
wqA6Cj4gSGkgSm9yaXMsCj4KPiBPbiBGcmksIE9jdCAyNSwgMjAxOSBhdCA2OjE2IFBNIEpvcmlz
IE9mZm91Z2EgPG9mZm91Z2Fqb3Jpc0BnbWFpbC5jb20+IHdyb3RlOgo+Cj4+IG90aGVyd2lzZSBG
YWJpbyBtYWRlIG1lIG5vdGljZSB0aGF0IEkgc2hvdWxkIGxlYXZlIGhpcyBGcm9tIGhvd2V2ZXIg
d2l0aAo+PiB0aGUgY2hhbmdlcyBtYWRlIEkgc2hvdWxkIHB1dCBtaW5lPwo+IEl0IGlzIG5vcm1h
bCB3aGVuIHdlIHN1Ym1pdCBzb21lb25lIGVsc2UncyBwYXRjaCBhbmQgd2UgbmVlZCB0byBjaGFu
Z2UKPiBhIGZldyB0aGluZ3MgYmFzZWQgb24gcmV2aWV3IGZlZWRiYWNrLgo+Cj4gRXZlbiBzbywg
dGhlIG9yaWdpbmFsIEZyb20gc2hvdWxkIGJlIGtlcHQuCgpUaGFua3MgZm9yIHlvdXIgcmVwbHks
IGkgc2VuZCB2MyB3aXRoIE1hcmNvJ3MgZmVlZGJhY2sKCkJlc3QgcmVnYXJkcywKCkpvcmlzCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
