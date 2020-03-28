Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAF1B196364
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 04:43:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QUUScjxsQHfe1DctDhgA8h+ndnzIBlhkCuUyoCX0opY=; b=bDLUH1fnAb6vl/
	Q53Lm6bmGbxKUhOrMp12VHqLm1HNNZlF0SW5mCKF2qOs6x3pmcAqjmVQUpBOIsgwPJAlCmz7h2sdu
	Vrj573dr9iES9NraQzon0P4MYzoKKUEC60E5YOADPHUDkd4U63OColwqaRNzzkKsl2Z2wsOElrHiK
	wOYiN3TFTwHmZrjbfXej2IN/5BsJWPMT+GtMx4IR0WOOquKwpk0pQK5UdQgoS3xLCmOsD2PLJPw1P
	MZtQe1JFOUDayJrumNH+8FPI17AWoqGltg+z00Ebc54KGTOrF6eD/gLE+PQWYXxjRN3zx/IRr4V8R
	dsl2VzYX9YNOnc7HSQ2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jI2Nr-00011T-Mj; Sat, 28 Mar 2020 03:43:43 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jI2Nl-00010n-4V
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Mar 2020 03:43:38 +0000
Received: by mail-il1-x144.google.com with SMTP id f16so10735039ilj.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 20:43:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=UVK15i028mkx0jMpDy93kqL7jNl1F+KutZZLwGaGO80=;
 b=YK5ZxzEo6HEEiK1jDNDS80yDjdrmaTfHno66iowxJhYWqC0NRswO5iVrywDnKCJsh6
 KeuIkxgEW5X8Ct/nVCwy2pEdUvyrlVNk8o0cid9q4ON1b6sNEAl3ixsrPyWa9CLfcbmM
 t80TVvuLimGb794UdrWiOy7mzoYijdA1/RV5uVItkeGDa7TKUAhP1ZPsBYu0dE6Uc5RI
 wloO5fqvW1+8lx8050cqx/gpJuURq2W49w04ra0Nbc9SLaAlYsgU66vEdUlyzn3kvrDl
 Eh9Fcj60DWW3b9jI3Y1qSdt2lb0zggNPaeH+koVPY8C/PVaKx6AIOu4u8Ve6g40Pp1+U
 5OTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=UVK15i028mkx0jMpDy93kqL7jNl1F+KutZZLwGaGO80=;
 b=emhXU4s4HEZMAe6zwxrolRopdLWwX380OopScdIXHm6E/VLtpoG+GYdogfq5i+sE7E
 bICrV8Le2uQ20zcxBigYxBCMvMPN65YNZUcmu54B/4ULfRVMsu/GZB1qZinzULxHVE4i
 6qjx8B0khAOUSKH5en6rqZRIZtTH/sIR9EoqnkG1L8OvEepwja6F/S4dZatcmub9yDwA
 aDy4sUa2gIbqYoixV8JMh/cA+widVOujcsBz9FTBCf/HzSZ+OMAHIfzGfc56lsa4gg2s
 2ZndJL+55WD6PCnBIYwgDgNqFnVda+tFqWB/K+lgk1Dv651oaTI89XE7FAJhG8Xsrknu
 X4pg==
X-Gm-Message-State: ANhLgQ0DZ6uPYYgpgRw3XxXiksIVth43YWtX+Jxogu8Cz9zYoHbDNdu+
 MRmcfcqfQrv6WvMA6t/rENzSLJXziDqqn9WOeeg=
X-Google-Smtp-Source: ADFU+vvrTjRJAhD7aKWKIBES9XdTRJeSXRCB+0DdH2aQVrMCxPqgOw/bsGRDKE8GVKnrhAQIwquJP/XPFaeajb5G488=
X-Received: by 2002:a92:96c6:: with SMTP id g189mr2199320ilh.276.1585367015881; 
 Fri, 27 Mar 2020 20:43:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200225161201.1975-1-git@andred.net>
 <20200225161201.1975-6-git@andred.net>
 <VI1PR0402MB3485A743C94442533B6840F298E70@VI1PR0402MB3485.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR0402MB3485A743C94442533B6840F298E70@VI1PR0402MB3485.eurprd04.prod.outlook.com>
From: Adam Ford <aford173@gmail.com>
Date: Fri, 27 Mar 2020 22:43:24 -0500
Message-ID: <CAHCN7x+NJLaKF9SfHw9sDpw6zDUGs_TuD_co7USjQ5hgFDeaHg@mail.gmail.com>
Subject: Re: [PATCH v2 6/6] Input: snvs_pwrkey - only IRQ_HANDLED for our own
 events
To: Horia Geanta <horia.geanta@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_204337_204699_39D6A944 
X-CRM114-Status: GOOD (  13.87  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aford173[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aford173[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Aymen Sghaier <aymen.sghaier@nxp.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Anson Huang <anson.huang@nxp.com>,
 =?UTF-8?Q?Andr=C3=A9_Draszik?= <git@andred.net>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "linux-input@vger.kernel.org" <linux-input@vger.kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Robin Gong <yibin.gong@nxp.com>,
 Fabio Estevam <festevam@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBNYXIgMiwgMjAyMCBhdCAzOjIyIEFNIEhvcmlhIEdlYW50YSA8aG9yaWEuZ2VhbnRh
QG54cC5jb20+IHdyb3RlOgo+Cj4gT24gMi8yNS8yMDIwIDY6MTIgUE0sIEFuZHLDqSBEcmFzemlr
IHdyb3RlOgo+ID4gVGhlIHNudnNfcHdya2V5IHNoYXJlcyB0aGUgU05WUyBMUFNSIHN0YXR1cyBy
ZWdpc3RlciB3aXRoIHRoZSBzbnZzX3J0Yy4KPiA+Cj4gPiBUaGlzIGRyaXZlciBoZXJlIHNob3Vs
ZCBvbmx5IHJldHVybiBJUlFfSEFORExFRCBpZiB0aGUgc3RhdHVzIHJlZ2lzdGVyCj4gPiBpbmRp
Y2F0ZXMgdGhhdCB0aGUgZXZlbnQgd2UncmUgaGFuZGxpbmcgaW4gdGhlIGlycSBoYW5kbGVyIHdh
cyBnZW51aW5lbHkKPiA+IGludGVuZGVkIGZvciB0aGlzIGRyaXZlci4gT3RoZXJpd3NlIHRoZSBp
bnRlcnJ1cHQgc3Vic3lzdGVtIHdpbGwKPiA+IGFzc3VtZSB0aGUgaW50ZXJydXB0IHdhcyBoYW5k
bGVkIHN1Y2Nlc3NmdWxseSBldmVuIHRob3VnaCBpdCB3YXNuJ3QKPiA+IGF0IGFsbC4KPiA+Cj4g
PiBTaWduZWQtb2ZmLWJ5OiBBbmRyw6kgRHJhc3ppayA8Z2l0QGFuZHJlZC5uZXQ+Cj4gPiBDYzog
IkhvcmlhIEdlYW50xIMiIDxob3JpYS5nZWFudGFAbnhwLmNvbT4KPiA+IENjOiBBeW1lbiBTZ2hh
aWVyIDxheW1lbi5zZ2hhaWVyQG54cC5jb20+Cj4gPiBDYzogSGVyYmVydCBYdSA8aGVyYmVydEBn
b25kb3IuYXBhbmEub3JnLmF1Pgo+ID4gQ2M6ICJEYXZpZCBTLiBNaWxsZXIiIDxkYXZlbUBkYXZl
bWxvZnQubmV0Pgo+ID4gQ2M6IFJvYiBIZXJyaW5nIDxyb2JoK2R0QGtlcm5lbC5vcmc+Cj4gPiBD
YzogTWFyayBSdXRsYW5kIDxtYXJrLnJ1dGxhbmRAYXJtLmNvbT4KPiA+IENjOiBTaGF3biBHdW8g
PHNoYXduZ3VvQGtlcm5lbC5vcmc+Cj4gPiBDYzogU2FzY2hhIEhhdWVyIDxzLmhhdWVyQHBlbmd1
dHJvbml4LmRlPgo+ID4gQ2M6IFBlbmd1dHJvbml4IEtlcm5lbCBUZWFtIDxrZXJuZWxAcGVuZ3V0
cm9uaXguZGU+Cj4gPiBDYzogRmFiaW8gRXN0ZXZhbSA8ZmVzdGV2YW1AZ21haWwuY29tPgo+ID4g
Q2M6IE5YUCBMaW51eCBUZWFtIDxsaW51eC1pbXhAbnhwLmNvbT4KPiA+IENjOiBEbWl0cnkgVG9y
b2tob3YgPGRtaXRyeS50b3Jva2hvdkBnbWFpbC5jb20+Cj4gPiBDYzogQW5zb24gSHVhbmcgPEFu
c29uLkh1YW5nQG54cC5jb20+Cj4gPiBDYzogUm9iaW4gR29uZyA8eWliaW4uZ29uZ0BueHAuY29t
Pgo+ID4gQ2M6IGxpbnV4LWNyeXB0b0B2Z2VyLmtlcm5lbC5vcmcKPiA+IENjOiBkZXZpY2V0cmVl
QHZnZXIua2VybmVsLm9yZwo+ID4gQ2M6IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwo+ID4gQ2M6IGxpbnV4LWlucHV0QHZnZXIua2VybmVsLm9yZwo+IEZvciBwYXRjaGVzIDIt
NjoKPiBSZXZpZXdlZC1ieTogSG9yaWEgR2VhbnTEgyA8aG9yaWEuZ2VhbnRhQG54cC5jb20+Cj4K
PiBBbHNvIGlteDhtbi5kdHNpIGFuZCBpbXg4bXAuZHRzaSB3aWxsIGhhdmUgdG8gYmUgdXBkYXRl
ZC4KCklzIHRoZXJlIGFuIHVwZGF0ZSBjb21pbmcgZm9yIHRoZSA4bW4gZmFtaWx5PyAgSSBhbSBz
ZWVpbmcgaXQgbm90IHdha2UKZnJvbSB0aGUgcG93ZXIga2V5LCBhbmQgSSB3YXMgaG9waW5nIHRv
IHJlc29sdmUgdGhhdCBiZWZvcmUgaSBtYWtlIGEKcHVzaCB0byBzdWJtaXQgYSBuZXcgOE1OIGJv
YXJkIGZvciByZXZpZXcuCgp0aGFua3MKCmFkYW0KPgo+IFRoYW5rcywKPiBIb3JpYQo+Cj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdAo+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
Zwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
