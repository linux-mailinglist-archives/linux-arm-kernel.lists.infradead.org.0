Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A97561AE242
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 18:29:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CyCQ4lEUdUuRBj7//ITt8X4oNDLXDBRWUJG/6yMxcL4=; b=lfqGxbqQ/+M2EC
	DTBZZj3uW4BsYA4dxseTXM3tKZa6utkdjtqzetlOCEwtEibg2Q5DXduyJi9A+ta1DnFE5REAUjr+k
	pKKWbJ4EEAz9QKTo1Cynjy36aM3eTOaxqCAJT9c018nnwRePwCh1xcpV+5qNxe9ELzp/lplzejHdM
	hF4AuwwZ14aZUAC3JKEvRlQTnIIU0cOKj7lyjHnNVLSYifvVCuBPO6vf03ZP0pLYF6/h3W+41fq/s
	sCPdTA7qZqpsUiXp9SzulKpBdDK1GAKOkOeZ4kZvphYvHy6yBoR5cVV1CU8bqhyTA61+VWpzPxfLm
	0S8yfwYBi5vmZr8HVOUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPTrl-0001vQ-NG; Fri, 17 Apr 2020 16:29:21 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPTrd-0001uM-9D
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 16:29:14 +0000
Received: by mail-wr1-x444.google.com with SMTP id f13so3711298wrm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 09:29:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=NofTrmVDYyLBbejpdgwinjWSh4mIkTyrqtoNVevMhns=;
 b=b6VVxgJvRatmHpf5Q7+LxH5xFXkKequl3/2X2cT9330vCyrosv3/sdyjJp37+49EoK
 sFfJeFrPLIFw1j1sDY7LDT3mfK25BZNOndqhj5Qc3nh24Z8UWmoZtM/L9DjN91TChI52
 3lzjvEmYYByE0KktCbphxTXfB5oEe+i0YHz8UHn0wb9AdpAeNMRQ21OcV7mnVZpDvfef
 Yc9F5Jw06dZNV8wKw3kyW5TJj0Cmpp1kP107I71hkCqAWv3gMLTvwPf5rXIhJG9+e/OM
 6dznA8huU48ssmubIHcxa6XYpDjAluuiOQ5nvmbGbKazyv0rmrxqcwnCaYBbDZr1T6/Q
 R0Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=NofTrmVDYyLBbejpdgwinjWSh4mIkTyrqtoNVevMhns=;
 b=kCER1BBuNucFACrYpDuXhfTmOZxCRuV5PZAdx1oqgqnRaXtfKAGPbbGFxOBiqVrL90
 7R0h0RzSXgeKxtJX7UGQFmiSPVDqhnVrxBBcbq/yCl7uvudvTF06OeuuZqwZSdN4iLdR
 hDUk9uhWO70zhMZhqaJ4Fx10XGGL0uwEicKXhxqVhO2cRVHeE+nR8HsJ7j2rTjTRBwHB
 ALYZSCQMQDXYFgr+GlJs2Um2cVvICxq/+GxJJi7T1Y0MfHtUaZtawwPdfl4nicSpaEuG
 IMOoOynqoUPg4jT9MoeqfrMNtkFTKPQ6dvqwNbPnk7Gbwe43LOwhzHjEHzCUrMZVig3T
 gHdQ==
X-Gm-Message-State: AGi0PubYSt+mvM20jEscLGgpn8iOWjjEUGEkAwnzGyLI3exxrtea9nHY
 sjhL/sMPo7iTj5Ax1s0T8Wk=
X-Google-Smtp-Source: APiQypLeEfN9cpMNCmZ6kg4klLh3J3SVkr36MK55uJQmQFnORgs+ZYaMzjuzg7y3BYm/b+jovcIrkw==
X-Received: by 2002:adf:ee4c:: with SMTP id w12mr5273583wro.347.1587140951993; 
 Fri, 17 Apr 2020 09:29:11 -0700 (PDT)
Received: from ?IPv6:2003:ea:8f29:6000:adc2:161e:aba7:d360?
 (p200300EA8F296000ADC2161EABA7D360.dip0.t-ipconnect.de.
 [2003:ea:8f29:6000:adc2:161e:aba7:d360])
 by smtp.googlemail.com with ESMTPSA id k133sm8953987wma.0.2020.04.17.09.29.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 17 Apr 2020 09:29:11 -0700 (PDT)
Subject: Re: [RFC PATCH 2/4] net: phy: Add support for AC200 EPHY
To: =?UTF-8?Q?Jernej_=c5=a0krabec?= <jernej.skrabec@siol.net>,
 robh+dt@kernel.org, andrew@lunn.ch, f.fainelli@gmail.com
References: <20200416185758.1388148-1-jernej.skrabec@siol.net>
 <20200416185758.1388148-3-jernej.skrabec@siol.net>
 <0340f85c-987f-900b-53c8-d29b4672a8fa@gmail.com>
 <6176364.4vTCxPXJkl@jernej-laptop>
From: Heiner Kallweit <hkallweit1@gmail.com>
Message-ID: <74ab97a9-adbc-6a50-d710-eb50017aa47b@gmail.com>
Date: Fri, 17 Apr 2020 18:16:20 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <6176364.4vTCxPXJkl@jernej-laptop>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_092913_352061_F2333476 
X-CRM114-Status: GOOD (  15.28  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [hkallweit1[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [hkallweit1[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, netdev@vger.kernel.org, linux@armlinux.org.uk,
 mripard@kernel.org, linux-kernel@vger.kernel.org, wens@csie.org,
 lee.jones@linaro.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTcuMDQuMjAyMCAxODoxNSwgSmVybmVqIMWga3JhYmVjIHdyb3RlOgo+IERuZSDEjWV0cnRl
aywgMTYuIGFwcmlsIDIwMjAgb2IgMjI6MTg6NTIgQ0VTVCBqZSBIZWluZXIgS2FsbHdlaXQgbmFw
aXNhbChhKToKPj4gT24gMTYuMDQuMjAyMCAyMDo1NywgSmVybmVqIFNrcmFiZWMgd3JvdGU6Cj4+
PiBBQzIwMCBNRkQgSUMgc3VwcG9ydHMgRmFzdCBFdGhlcm5ldCBQSFkuIEFkZCBhIGRyaXZlciBm
b3IgaXQuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3Jh
YmVjQHNpb2wubmV0Pgo+Pj4gLS0tCj4+Pgo+Pj4gIGRyaXZlcnMvbmV0L3BoeS9LY29uZmlnICB8
ICAgNyArKwo+Pj4gIGRyaXZlcnMvbmV0L3BoeS9NYWtlZmlsZSB8ICAgMSArCj4+PiAgZHJpdmVy
cy9uZXQvcGh5L2FjMjAwLmMgIHwgMjA2ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKwo+Pj4gIDMgZmlsZXMgY2hhbmdlZCwgMjE0IGluc2VydGlvbnMoKykKPj4+ICBjcmVh
dGUgbW9kZSAxMDA2NDQgZHJpdmVycy9uZXQvcGh5L2FjMjAwLmMKPj4+Cj4+PiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9uZXQvcGh5L0tjb25maWcgYi9kcml2ZXJzL25ldC9waHkvS2NvbmZpZwo+Pj4g
aW5kZXggM2ZhMzNkMjdlZWJhLi4xNmFmNjlmNjllYWYgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJz
L25ldC9waHkvS2NvbmZpZwo+Pj4gKysrIGIvZHJpdmVycy9uZXQvcGh5L0tjb25maWcKPj4+IEBA
IC0yODgsNiArMjg4LDEzIEBAIGNvbmZpZyBBRElOX1BIWQo+Pj4KPj4+ICAJICAtIEFESU4xMzAw
IC0gUm9idXN0LEluZHVzdHJpYWwsIExvdyBMYXRlbmN5IDEwLzEwMC8xMDAwIEdpZ2FiaXQKPj4+
ICAJICAKPj4+ICAJICAgIEV0aGVybmV0IFBIWQo+Pj4KPj4+ICtjb25maWcgQUMyMDBfUEhZCj4+
PiArCXRyaXN0YXRlICJBQzIwMCBFUEhZIgo+Pj4gKwlkZXBlbmRzIG9uIE5WTUVNCj4+PiArCWRl
cGVuZHMgb24gT0YKPj4+ICsJaGVscAo+Pj4gKwkgIEZhc3QgZXRoZXJuZXQgUEhZIGFzIGZvdW5k
IGluIFgtUG93ZXJzIEFDMjAwIG11bHRpLWZ1bmN0aW9uIAo+IGRldmljZS4KPj4+ICsKPj4+Cj4+
PiAgY29uZmlnIEFNRF9QSFkKPj4+ICAKPj4+ICAJdHJpc3RhdGUgIkFNRCBQSFlzIgo+Pj4gIAkt
LS1oZWxwLS0tCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3BoeS9NYWtlZmlsZSBi
L2RyaXZlcnMvbmV0L3BoeS9NYWtlZmlsZQo+Pj4gaW5kZXggMmY1YzcwOTNhNjViLi5iMGM1Yjkx
OTAwZmEgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL25ldC9waHkvTWFrZWZpbGUKPj4+ICsrKyBi
L2RyaXZlcnMvbmV0L3BoeS9NYWtlZmlsZQo+Pj4gQEAgLTUzLDYgKzUzLDcgQEAgb2JqLSQoQ09O
RklHX1NGUCkJCSs9IHNmcC5vCj4+Pgo+Pj4gIHNmcC1vYmotJChDT05GSUdfU0ZQKQkJKz0gc2Zw
LWJ1cy5vCj4+PiAgb2JqLXkJCQkJKz0gJChzZnAtb2JqLXkpICQoc2ZwLW9iai1tKQo+Pj4KPj4+
ICtvYmotJChDT05GSUdfQUMyMDBfUEhZKQkJKz0gYWMyMDAubwo+Pj4KPj4+ICBvYmotJChDT05G
SUdfQURJTl9QSFkpCQkrPSBhZGluLm8KPj4+ICBvYmotJChDT05GSUdfQU1EX1BIWSkJCSs9IGFt
ZC5vCj4+PiAgYXF1YW50aWEtb2JqcwkJCSs9IGFxdWFudGlhX21haW4ubwo+Pj4KPj4+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL25ldC9waHkvYWMyMDAuYyBiL2RyaXZlcnMvbmV0L3BoeS9hYzIwMC5j
Cj4+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+Pj4gaW5kZXggMDAwMDAwMDAwMDAwLi4zZDc4NTZm
ZjhmOTEKPj4+IC0tLSAvZGV2L251bGwKPj4+ICsrKyBiL2RyaXZlcnMvbmV0L3BoeS9hYzIwMC5j
Cj4+PiBAQCAtMCwwICsxLDIwNiBAQAo+Pj4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBH
UEwtMi4wKwo+Pj4gKy8qKgo+Pj4gKyAqIERyaXZlciBmb3IgQUMyMDAgRXRoZXJuZXQgUEhZCj4+
PiArICoKPj4+ICsgKiBDb3B5cmlnaHQgKGMpIDIwMjAgSmVybmVqIFNrcmFiZWMgPGplcm5lai5z
a3JhYmVjQHNpb2wubmV0Pgo+Pj4gKyAqLwo+Pj4gKwo+Pj4gKyNpbmNsdWRlIDxsaW51eC9rZXJu
ZWwuaD4KPj4+ICsjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+Cj4+PiArI2luY2x1ZGUgPGxpbnV4
L21mZC9hYzIwMC5oPgo+Pj4gKyNpbmNsdWRlIDxsaW51eC9udm1lbS1jb25zdW1lci5oPgo+Pj4g
KyNpbmNsdWRlIDxsaW51eC9vZi5oPgo+Pj4gKyNpbmNsdWRlIDxsaW51eC9waHkuaD4KPj4+ICsj
aW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+Cj4+PiArCj4+PiArI2RlZmluZSBBQzIw
MF9FUEhZX0lECQkJMHgwMDQ0MTQwMAo+Pj4gKyNkZWZpbmUgQUMyMDBfRVBIWV9JRF9NQVNLCQkw
eDBmZmZmZmYwCj4+PiArCj4+Cj4+IFlvdSBjb3VsZCB1c2UgUEhZX0lEX01BVENIX01PREVMKCkg
aGVyZS4KPiAKPiBIbS4uLiBUaGlzIGRvZXNuJ3Qgd29yayB3aXRoIGR5bmFtaWNhbGx5IGFsbG9j
YXRlZCBtZW1vcnksIHJpZ2h0Pwo+IApSaWdodCAuLgoKPiBCZXN0IHJlZ2FyZHMsCj4gSmVybmVq
Cj4gCj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
