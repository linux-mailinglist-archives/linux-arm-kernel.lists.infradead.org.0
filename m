Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E30613B47
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 May 2019 19:10:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=un+cR23S6yEfbhqC9ss9zzFpYslJbf5kx1ThXzYxyjM=; b=gljlwTmejV3RXz34+akxuRHcu
	4ig1yPDuB/zNxdmrbvIkcW3oNZTJLD8nkOLEuc9aWYA8yIdDR4d5/38pbH2AkDTuiTXBi8B7U6rcG
	ntSYcFuwZ1reX+cC6MDXlQ+M/TA2xnDH3D2vmDbtJA7lOBpCNuicAW2mVj2RyQWbxtmyvnx1oFPK+
	4PqI4ycltQEHTmrZJe5OzjLoYBpCGj+pgJt1CNWNeNLa7Q/Jym25XGQqF89/kU3jL9r5+US6keZle
	40IiyCfBJLXIakobXNIdFoC5b/RQdYtZS+LPiSSmJ0cWshba1hLV0e9liSO4CDQO3AVYr1dG6bAPC
	uD7EAo6fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMyBD-00019i-2M; Sat, 04 May 2019 17:10:31 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMyB6-00019E-8J
 for linux-arm-kernel@lists.infradead.org; Sat, 04 May 2019 17:10:25 +0000
Received: by mail-wr1-x443.google.com with SMTP id h4so11733309wre.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 04 May 2019 10:10:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=atT2PRRwfJHRr9FSlj3tbZ1dsSbh6dLp1StgbzO3rdo=;
 b=KhiQ80aeSCZBx9GsJ0x6gbcb4udn0+9Y/WCZNOmq1/7qfbwsTsRzlPmwngmwd/+0qy
 B+C+gTgQf3or6ZTbXN2b2H0zNwhQvmUOqCBj904VxbgpMv7TRUhsmXsY2PpZAVpaSNDa
 WmRT5DRaC2SGJBpgh758bScZDPRHKr6rJHo3EXgh8ml/DTCtf5obpFsyOYkRgWgiGnW0
 klOj9kY5GUlscGCXeAMIiPzhGLtuXxO2sRYpS4dEsbJhwQxuUa/A5n4Mqv79Lh7V4oA/
 kN1+TNNB5hGSYMj6UKfzaMMXwvCaE6T9Sj2I8J1KSN6de19OYuXnkGH5CrkKsrIya2RD
 zSoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=atT2PRRwfJHRr9FSlj3tbZ1dsSbh6dLp1StgbzO3rdo=;
 b=CdrdkQ699CdmAJ8cWVnXWJZI5uBrVNLT16yUcQs8Z1TlILeqJNoiqIaZ0CX0hQMEsU
 ervYR8dV6gZyRjLrrHcQDQhc63W0YAtYR60EDDQD0WOARTSO/N5VkWVEmx908zu9hs+F
 wMJItu1geYQbqjaz5z7Rw+5GqVJBgGOEl2JmdNiI1gSkpLyBT8+2jVdb0iUHebX/ckvg
 eNHulYjQRREEBCLMvtyH8dvtWyi7j6Na6wXlOT8o3Q0NLQiipgqxHeHScJx5gPgelAlY
 xmZgSdKqTWGP8+T/8qGOpRoomA+nj232Fqc6i5bdAgQlgcyKkTssj61Y9rS1gCWLI0gE
 ch7w==
X-Gm-Message-State: APjAAAXZM0FwbcBvnxGDjfv79UdJt55bkqSvhNZqZYxJwYTEhdtx+K0a
 nWP6nzehk5nQWBp8wCib/cXEGtR7N74=
X-Google-Smtp-Source: APXvYqyNQIA8XC8jOUU6Wd97yxXPKmQleklS7w4lUoxAHB1j+lC/eX1JWsOl/Ai0KTUPoCat71k4Fw==
X-Received: by 2002:a5d:6301:: with SMTP id i1mr11646967wru.172.1556989821167; 
 Sat, 04 May 2019 10:10:21 -0700 (PDT)
Received: from [192.168.86.34]
 (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
 by smtp.googlemail.com with ESMTPSA id s3sm10862997wre.97.2019.05.04.10.10.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 04 May 2019 10:10:20 -0700 (PDT)
Subject: Re: [RESEND PATCH v6 0/5] Add i.MX8MM OCOTP support
To: Bryan O'Donoghue <pure.logic@nexus-software.ie>,
 Greg KH <gregkh@linuxfoundation.org>
References: <20190503165342.30139-1-pure.logic@nexus-software.ie>
 <20190504083939.GA1859@kroah.com>
 <d67c692d-9e4f-9d08-12bc-ab3644fbaa8c@nexus-software.ie>
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <2e9d5ed8-eeeb-4829-734c-fa418d99bfeb@linaro.org>
Date: Sat, 4 May 2019 18:10:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <d67c692d-9e4f-9d08-12bc-ab3644fbaa8c@nexus-software.ie>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_101024_340155_761CBB57 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, aisheng.dong@nxp.com, peng.fan@nxp.com,
 abel.vesa@nxp.com, anson.huang@nxp.com, linux-imx@nxp.com,
 kernel@pengutronix.de, fabio.estevam@nxp.com, leonard.crestez@nxp.com,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org,
 l.stach@pengutronix.de
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAwNC8wNS8yMDE5IDE1OjQ5LCBCcnlhbiBPJ0Rvbm9naHVlIHdyb3RlOgo+IE9uIDA0LzA1
LzIwMTkgMDk6MzksIEdyZWcgS0ggd3JvdGU6Cj4+IE9uIEZyaSwgTWF5IDAzLCAyMDE5IGF0IDA1
OjUzOjM3UE0gKzAxMDAsIEJyeWFuIE8nRG9ub2dodWUgd3JvdGU6Cj4+PiBWNiBSRVNFTkQ6Cj4+
PiAtIEFkZGluZyBHcmVnIHRvIHNlbmRlciBsaXN0LiBHcmVnIGxvb2tzIGxpa2UgeW91IGFyZSB0
aGUgcmlnaHQgCj4+PiBwZXJzb24gdG8KPj4+IMKgwqAgYXBwbHkgdGhpcy4KPj4KPj4gJCAuL3Nj
cmlwdHMvZ2V0X21haW50YWluZXIucGwgLS1maWxlIGRyaXZlcnMvbnZtZW0vaW14LW9jb3RwLmMK
Pj4gU3Jpbml2YXMgS2FuZGFnYXRsYSA8c3Jpbml2YXMua2FuZGFnYXRsYUBsaW5hcm8ub3JnPiAo
bWFpbnRhaW5lcjpOVk1FTSAKPj4gRlJBTUVXT1JLKQo+PiBTaGF3biBHdW8gPHNoYXduZ3VvQGtl
cm5lbC5vcmc+IChtYWludGFpbmVyOkFSTS9GUkVFU0NBTEUgSU1YIC8gTVhDIAo+PiBBUk0gQVJD
SElURUNUVVJFKQo+PiBTYXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+IChtYWlu
dGFpbmVyOkFSTS9GUkVFU0NBTEUgSU1YIC8gCj4+IE1YQyBBUk0gQVJDSElURUNUVVJFKQo+PiBQ
ZW5ndXRyb25peCBLZXJuZWwgVGVhbSA8a2VybmVsQHBlbmd1dHJvbml4LmRlPiAKPj4gKHJldmll
d2VyOkFSTS9GUkVFU0NBTEUgSU1YIC8gTVhDIEFSTSBBUkNISVRFQ1RVUkUpCj4+IEZhYmlvIEVz
dGV2YW0gPGZlc3RldmFtQGdtYWlsLmNvbT4gKHJldmlld2VyOkFSTS9GUkVFU0NBTEUgSU1YIC8g
TVhDIAo+PiBBUk0gQVJDSElURUNUVVJFKQo+PiBOWFAgTGludXggVGVhbSA8bGludXgtaW14QG54
cC5jb20+IChyZXZpZXdlcjpBUk0vRlJFRVNDQUxFIElNWCAvIE1YQyAKPj4gQVJNIEFSQ0hJVEVD
VFVSRSkKPj4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnIChtb2RlcmF0ZWQg
bGlzdDpBUk0vRlJFRVNDQUxFIElNWCAKPj4gLyBNWEMgQVJNIEFSQ0hJVEVDVFVSRSkKPj4gbGlu
dXgta2VybmVsQHZnZXIua2VybmVsLm9yZyAob3BlbiBsaXN0KQo+Pgo+Pgo+PiBXaHkgbWU/Pz8K
Pj4KPiAKPiBMb29rZWQgbGlrZSB5b3Ugd2VyZSBkb2luZyB0aGUgbWVyZ2VzIHRvIG1lLgo+IAo+
IGNvbW1pdCAzOGU3YjZlZmU5OTdjNGViOWE1YTgwOWRjMmIyZmU2Yzc1OWI3YzRiCj4gU2lnbmVk
LW9mZi1ieTogU3Jpbml2YXMgS2FuZGFnYXRsYSA8c3Jpbml2YXMua2FuZGFnYXRsYUBsaW5hcm8u
b3JnPgo+IFNpZ25lZC1vZmYtYnk6IEdyZWcgS3JvYWgtSGFydG1hbiA8Z3JlZ2toQGxpbnV4Zm91
bmRhdGlvbi5vcmc+Cj4gCj4gUGluZywgU3JpbmksIGFueSBjaGFuY2UgeW91IGNhbiBtZXJnZSB0
aGlzIHRvIHlvdXIgdHJlZSA/CgpUaGFua3lvdSBmb3IgeW91ciBwYXRpZW5jZS4KCk5vcm1hbGx5
IEkgZG9uJ3QgdGFrZSBwYXRjaGVzIHRoYXQgYXJlIHNlbnQgYWZ0ZXIgcmM1IGludG8gbmV4dCBt
ZXJnZSAKd2luZG93LiBVbmxlc3MgdGhlcmUgaXMgYW4gdXJnZW50IGZpeC4gSW4gdGhpcyBjYXNl
IEkgd2lsbCBiZSBhcHBseWluZyAKdGhlc2Ugc2VyaWVzIHRvIG52bWVtIG5leHQgYnJhbmNoIG9u
Y2UgcmMxIGlzIHJlbGVhc2VkIGZvciA1LjMgbWVyZ2Ugd2luZG93LgoKQWxzbyBhbnkgZGV2aWNl
IHRyZWUgYmluZGluZ3MgY2hhbmdlcyBuZWVkIHRvIFJldmlld2VkIGJ5IERUIG1haW50YWluZXIg
CmJlZm9yZSBJIHBpY2sgdXAgdGhlc2UgcGF0Y2hlcy4KCgotLXNyaW5pCgo+IAo+IC0tLQo+IGJv
ZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
