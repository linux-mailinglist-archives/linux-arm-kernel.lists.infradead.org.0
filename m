Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE6AE58065
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 12:29:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iZg1/izNwki7ITM+XNROU9pNl/Mx4bL678hdJWGI6qk=; b=cAtrA6sg2M9576
	HCqSwOqdHG0D7Dy1BsyldMcyT5O//inOOopOaL85jMCuEOfUbyHcfsj7CJOZpiTgughArksRirMd7
	eQS6Fel9ejDTkeT9ftCkC0LiXdo9AcTcxE4yV+A24Piku8vYl8Dl5UTrIpzNawQsmPK5g9BdWLO+v
	ZPe3zEnAJ7Iu+zU1Y9lNBn0RfZoqStrv6kSbzOmsauCtprY9N+CvAZfHiYVaV5YmKIwQ3cm5hEXNF
	evayPmhvlhnc5HNhBdje+M/OemJcL4tKLXMqwr5QpXMHgqvcV9wtaHnDTqegihbGegIId+7CyJczA
	mi8aCnfLD5GpmSigTpeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgReQ-0004jh-Um; Thu, 27 Jun 2019 10:29:11 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgRd0-00044w-S3
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 10:27:46 +0000
Received: by mail-wr1-x444.google.com with SMTP id n4so1932945wrs.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Jun 2019 03:27:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Bbt3iD0RuM1MWWR+I8B1kKnSONTbv3aEdP5kqBIyOco=;
 b=UOWSXKTLXY4x4TfC/d0c9DZELYKd3roJE/3u1j2etH3otViKBlReANbLqJPxE5brNK
 ueeRf3Bef46tKFhuXK4yUfp+IRGdk68mQmkErqqRfLYqjqtXZGHs+PUUOo9QnaHAUUfL
 e1LZqET0ctg28UoWwUPwF/s8VehPibX9itNhcZtWz57dp1G2ZPRa2sNf/oenLzXuDj6B
 LEIeCfOmVMXb2EnpcKCRK8gamR/D+8tfhacUePO73aYRUk7NmGhGEo+Rd08zVN68qJiB
 1IeP8VI1KsWaDDlVIrA+I3B1eQi9AoFNlXSUN8WyUlvzJZrgVGwbACRb5SvG7M/SbDLT
 hvPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=Bbt3iD0RuM1MWWR+I8B1kKnSONTbv3aEdP5kqBIyOco=;
 b=kq3V1fmiDEbarC8jWbDRmNDBz2cw4/Y4aq8iuzZnfGrmE+1Un1PU06cQbKX1AwGpMw
 LurMihoXCN0Bb+e0dhr/7DXm1QmncsXqOGOuXYXNdp7pAdhNm3Ca+qAs9IGb5fAp1j6U
 LvIyRTFxxOCScKqvUIGZIWIjJqMUW+9MNq4lFobeeXbt0RZID4kwGADpzd8CEGXZcNRb
 CAQfwPNgFJAwruTzhvz/rH/Mjamyl1l8s+tn5KMfxJjs70+VCyFONCLvSCE9zmEzdadh
 QJ/DS/ak8deeAdkA4fz48U8SKH/lq5Xz1Jhy+NSziFpa+kim3ZvODTSoaQaKwC+Rz27N
 ZJ+Q==
X-Gm-Message-State: APjAAAUJTo5IlcR8wxoS+4+a8MX8LLBqmc0+JLzfDdG+Fhp6rr78+brE
 o3g1e/GmS9d//xknn2dG6n1+RQ==
X-Google-Smtp-Source: APXvYqw4D4C0n3ZtXVOVBTtfm6Td7K//e1OP5JV0M8oPddf7DJjMHL1hP2Ubwb5ZKvdF07DnCAw7FA==
X-Received: by 2002:a5d:40ca:: with SMTP id b10mr2785889wrq.171.1561631260868; 
 Thu, 27 Jun 2019 03:27:40 -0700 (PDT)
Received: from [192.168.0.41] (113.102.130.77.rev.sfr.net. [77.130.102.113])
 by smtp.googlemail.com with ESMTPSA id b5sm1785802wru.69.2019.06.27.03.27.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 27 Jun 2019 03:27:40 -0700 (PDT)
Subject: Re: [PATCH RESEND V2 1/3] clocksource/drivers/sysctr: Add optional
 clock-frequency property
To: Anson Huang <anson.huang@nxp.com>, "tglx@linutronix.de"
 <tglx@linutronix.de>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
 Abel Vesa <abel.vesa@nxp.com>, "ccaione@baylibre.com"
 <ccaione@baylibre.com>, "angus@akkea.ca" <angus@akkea.ca>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
References: <20190623123850.22584-1-Anson.Huang@nxp.com>
 <55abafbd-c010-32b5-6d76-26040830d5b0@linaro.org>
 <DB3PR0402MB3916AB9F2260B0E46CCDDEC0F5E20@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <9c017ba9-ac6b-480b-d1f3-120289343101@linaro.org>
 <DB3PR0402MB3916ED4AB17B6DDD2248DD44F5FD0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <8f8aa6e0-5f31-8047-14b5-0e1f65316453@linaro.org>
 <DB3PR0402MB39162DB95FA958AC1425BFFDF5FD0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Openpgp: preference=signencrypt
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <f29a9a4b-8922-c8b5-f197-d33853f6341e@linaro.org>
Date: Thu, 27 Jun 2019 12:27:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <DB3PR0402MB39162DB95FA958AC1425BFFDF5FD0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_032743_636260_96CA1361 
X-CRM114-Status: GOOD (  19.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
Cc: Arnd Bergmann <arnd.bergmann@linaro.org>, dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CkhpIEFuc29uLAoKT24gMjcvMDYvMjAxOSAxMDoxMSwgQW5zb24gSHVhbmcgd3JvdGU6Cj4gSGks
IERhbmllbAo+IAo+PiBPbiAyNy8wNi8yMDE5IDAyOjQzLCBBbnNvbiBIdWFuZyB3cm90ZToKPj4+
IEhpLCBEYW5pZWwKPj4+Cj4+Pj4gT24gMjYvMDYvMjAxOSAwMzo0MiwgQW5zb24gSHVhbmcgd3Jv
dGU6Cj4+Pj4+IEhpLCBEYW5pZWwKPj4+Pj4KPj4+Pj4+IE9uIDIzLzA2LzIwMTkgMTQ6MzgsIEFu
c29uLkh1YW5nQG54cC5jb20gd3JvdGU6Cj4+Pj4+Pj4gRnJvbTogQW5zb24gSHVhbmcgPEFuc29u
Lkh1YW5nQG54cC5jb20+Cj4+Pj4+Pj4KPj4+Pj4+PiBTeXN0ZW1zIHdoaWNoIHVzZSBwbGF0Zm9y
bSBkcml2ZXIgbW9kZWwgZm9yIGNsb2NrIGRyaXZlciByZXF1aXJlCj4+Pj4+Pj4gdGhlIGNsb2Nr
IGZyZXF1ZW5jeSB0byBiZSBzdXBwbGllZCB2aWEgZGV2aWNlIHRyZWUgd2hlbiBzeXN0ZW0KPj4+
Pj4+PiBjb3VudGVyIGRyaXZlciBpcyBlbmFibGVkLgo+Pj4+Pj4+Cj4+Pj4+Pj4gVGhpcyBpcyBu
ZWNlc3NhcnkgYXMgaW4gdGhlIHBsYXRmb3JtIGRyaXZlciBtb2RlbCB0aGUgb2ZfY2xrCj4+Pj4+
Pj4gb3BlcmF0aW9ucyBkbyBub3Qgd29yayBjb3JyZWN0bHkgYmVjYXVzZSBzeXN0ZW0gY291bnRl
ciBkcml2ZXIgaXMKPj4+Pj4+PiBpbml0aWFsaXplZCBpbiBlYXJseSBwaGFzZSBvZiBzeXN0ZW0g
Ym9vdCB1cCwgYW5kIGNsb2NrIGRyaXZlcgo+Pj4+Pj4+IHVzaW5nIHBsYXRmb3JtIGRyaXZlciBt
b2RlbCBpcyBOT1QgcmVhZHkgYXQgdGhhdCB0aW1lLCBpdCB3aWxsCj4+Pj4+Pj4gY2F1c2Ugc3lz
dGVtIGNvdW50ZXIgZHJpdmVyIGluaXRpYWxpemF0aW9uIGZhaWxlZC4KPj4+Pj4+Pgo+Pj4+Pj4+
IEFkZCB0aGUgb3B0aW5hbCBjbG9jay1mcmVxdWVuY3kgdG8gdGhlIGRldmljZSB0cmVlIGJpbmRp
bmdzIG9mIHRoZQo+Pj4+Pj4+IE5YUCBzeXN0ZW0gY291bnRlciwgc28gdGhlIGZyZXF1ZW5jeSBj
YW4gYmUgaGFuZGVkIGluIGFuZCB0aGUKPj4+Pj4+PiBvZl9jbGsgb3BlcmF0aW9ucyBjYW4gYmUg
c2tpcHBlZC4KPj4+Pj4+Cj4+Pj4+PiBJc24ndCBpdCBwb3NzaWJsZSB0byBjcmVhdGUgYSBmaXhl
ZC1jbG9jayBhbmQgcmVmZXIgdG8gaXQ/IFNvIG5vCj4+Pj4+PiBuZWVkIHRvIGNyZWF0ZSBhIHNw
ZWNpZmljIGFjdGlvbiBiZWZvcmUgY2FsbGluZyB0aW1lcl9vZl9pbml0KCkgPwo+Pj4+Pj4KPj4+
Pj4KPj4+Pj4gQXMgdGhlIGNsb2NrIG11c3QgYmUgcmVhZHkgYmVmb3JlIHRoZSBUSU1FUl9PRl9E
RUNMQVJFLCBzbyBhZGRpbmcgYQo+Pj4+PiBDTEtfT0ZfREVDTEFSRV9EUklWRVIgaW4gY2xvY2sg
ZHJpdmVyIHRvIE9OTFkgcmVnaXN0ZXIgYSBmaXhlZC1jbG9jaz8KPj4+Pj4gVGhlIHN5c3RlbSBj
b3VudGVyJ3MgZnJlcXVlbmN5IGFyZSBkaWZmZXJlbnQgb24gZGlmZmVyZW50IHBsYXRmb3JtcywK
Pj4+Pj4gc28gYWRkaW5nIGZpeGVkIGNsb2NrIGluIHN5c3RlbSBjb3VudGVyIGRyaXZlciBpcyBO
T1QgYSBnb29kIGlkZWEsCj4+Pj4+IE9OTFkgdGhlIERUIG5vZGUgb3IgdGhlIGNsb2NrIGRyaXZl
ciBjYW4gY3JlYXRlIHRoaXMgZml4ZWQgY2xvY2sKPj4+Pj4gYWNjb3JkaW5nIHRvCj4+Pj4gcGxh
dGZvcm1zLCBjYW4geW91IGFkdmlzZSB3aGVyZSB0byBjcmVhdGUgdGhpcyBmaXhlZCBjbG9jayBp
cyBiZXR0ZXI/Cj4+Pj4KPj4+PiBDYW4geW91IHBvaW50IG1lIHRvIGEgRFQgd2l0aCB0aGUgIm54
cCxzeXNjdHItdGltZXIiID8KPj4+Cj4+PiBUaGUgRFQgbm9kZSBvZiBzeXN0ZW0gY291bnRlciBp
cyBuZXcgYWRkZWQgaW4gMy8zIG9mIHRoaXMgcGF0Y2gKPj4+IHNlcmllcywgYWxzbyBjYW4gYmUg
Zm91bmQgZnJvbSBiZWxvdyBsaW5rOgo+Pj4gaHR0cHM6Ly9ldXIwMS5zYWZlbGlua3MucHJvdGVj
dGlvbi5vdXRsb29rLmNvbS8/dXJsPWh0dHBzJTNBJTJGJTJGcGF0Ywo+Pj4KPj4gaHdvcmsua2Vy
bmVsLm9yZyUyRnBhdGNoJTJGMTEwMTE3MDMlMkYmYW1wO2RhdGE9MDIlN0MwMSU3Q2Fuc29uLgo+
PiBodWFuZyUKPj4+Cj4+IDQwbnhwLmNvbSU3QzhiOTUxOWVjY2ViMzQ2NzEyYmU4MDhkNmZhZDY3
NWU0JTdDNjg2ZWExZDNiYzJiNGM2Zgo+PiBhOTJjZDk5Cj4+Pgo+PiBjNWMzMDE2MzUlN0MwJTdD
MCU3QzYzNjk3MjE5NjMzODQwNTU4MiZhbXA7c2RhdGE9c09RUXpERnhvQ3FlCj4+IFZ1SEZ1WVBI
aAo+Pj4gRjhCZGoyWnU5V1M3R28lMkZWOWxyV2E4JTNEJmFtcDtyZXNlcnZlZD0wCj4+Cj4+IFNv
cnJ5LCBJIHdhcyB1bmNsZWFyLiBJIG1lYW50IGEgcGF0Y2ggd2l0aCB0aGUgdGltZXIgZGVmaW5l
ZCB1c2luZyBhIGNsb2NrIGFzCj4+IGRlZmluZWQgY3VycmVudGx5IGluIHRoZSBiaW5kaW5nIChu
byBjbG9jay1mcmVxdWVuY3kpLgo+IAo+IE9LLCBmb3IgaS5NWDhNTSwgd2UgdXNlIGNsb2Nrcywg
Y2hlY2sgYmVsb3cgcGF0Y2ggc2VyaWVzOgo+IAo+IGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5v
cmcvcGF0Y2gvMTEwMDg1MTkvCj4gCj4gY29kZSBwaWVjZSBhcyBiZWxvdzoKPiAKPiArCQkJc3lz
dGVtX2NvdW50ZXI6IHRpbWVyQDMwNmEwMDAwIHsKPiArCQkJCWNvbXBhdGlibGUgPSAibnhwLHN5
c2N0ci10aW1lciI7Cj4gKwkJCQlyZWcgPSA8MHgzMDZhMDAwMCAweDMwMDAwPjsKPiArCQkJCWlu
dGVycnVwdHMgPSA8R0lDX1NQSSA0NyBJUlFfVFlQRV9MRVZFTF9ISUdIPiwKPiArCQkJCQkgICAg
IDxHSUNfU1BJIDQ4IElSUV9UWVBFX0xFVkVMX0hJR0g+Owo+ICsJCQkJY2xvY2tzID0gPCZjbGsg
SU1YOE1NX0NMS19TWVNfQ1RSPjsKPiArCQkJCWNsb2NrLW5hbWVzID0gInBlciI7Cj4gKwkJCX07
CgpUaGFua3MsCgpUaGUgZml4ZWQtY2xvY2sgY2FuIGhlbHAgdG8ga2VlcCB0aGUgY29kZSBhbmQg
dGhlIERUIGRlZmluaXRpb24gZm9yIHRoZQp0aW1lciB1bnRvdWNoZWQgYXMgdGhlICdjbG9ja3Mn
IGFib3ZlIHdpbGwgcmVmZXIgdG8gaXQuIEJ1dCB0aGF0IG1lYW5zCndlIGRlc2NyaWJlIGEgZmFr
ZSBjbG9jay4gU28gaXQgaXMgdXAgdG8geW91IHRvIGRlY2lkZSBpZiB5b3Ugd2FudCB0bwpzdGlj
ayB0aGUgY2xvY2stZnJlcXVlbmN5IG9yIHVzZSBhIGZpeGVkLWNsb2NrLgoKCgoKLS0gCiA8aHR0
cDovL3d3dy5saW5hcm8ub3JnLz4gTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUg
Zm9yIEFSTSBTb0NzCgpGb2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93d3cuZmFjZWJvb2suY29tL3Bh
Z2VzL0xpbmFybz4gRmFjZWJvb2sgfAo8aHR0cDovL3R3aXR0ZXIuY29tLyMhL2xpbmFyb29yZz4g
VHdpdHRlciB8CjxodHRwOi8vd3d3LmxpbmFyby5vcmcvbGluYXJvLWJsb2cvPiBCbG9nCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
