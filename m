Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D27F113ABF4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 15:12:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HbLfRCdsvulTmwHGlv82jLV8VVBUugx6CHOVq1EB0Xo=; b=Hy+27W/hdm2rZW
	sC3HyVzUC4BeBC96SAoiCtjWIqnvYUkUlSArYOyjQZrH457/ndo1o0RulgUADuaAFIpl3K4Q0qJ2s
	8zpZdAQbMoJnw7nJs8GZ43nujmWJYJBdzaoOfetiQaRQwt0bxtH+jUN1r04oQMpXPDWHoYcOSALhP
	F2lFnboVXOV3PiEcGUJenBR/SESFHw4zSVUiFZ737GZEBsb9yn3UNObW5uN7WQP8hL8R4yAGfhtKH
	Ey5NV7EC4Qa85Xy3myAgMOUA/cYV/jo4Ks8Sb0HgClow2mefkfestZAmUVt5WqSHc/P1SPwZbQPr/
	Gi22aTfUUnohr1CyiIdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irMvf-0006jg-CY; Tue, 14 Jan 2020 14:12:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irMvT-0006j4-Ni
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 14:12:15 +0000
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
 [209.85.222.178])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 04E622468B
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 14:12:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579011131;
 bh=z7fi7mTnGrxlQpOo6jCdbb+V9IOBcmR5uq9RP9iLmNc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=xxmlnhFQSnyWi4goNAcyLC60V5ArHcYgAODgnNj7wJLRh9fW98Rdr+wpKth3DGclK
 OwHPMd02aPmIcmVNASeHY3NC2XoqxfdmZvb/ih9BvhMGy2eFh7mhNtAe6jxaTBD3zJ
 47FAJjGw6iKNdtUgVHawevDoS/2AE21oQ2wYTS1A=
Received: by mail-qk1-f178.google.com with SMTP id w127so12146563qkb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 06:12:10 -0800 (PST)
X-Gm-Message-State: APjAAAV2qZ4AJ4+UOAHD+/gzkxhmNpgEMfNtug++fva9HPLtxK+5h4IE
 8hsZCNx7mFHnTk+fGKf+p6U1GN2Y+ZFECR6FNA==
X-Google-Smtp-Source: APXvYqw7yF4tiQEfMetRPvV+XOkBRWxhX/TeIi33YKag4uDi0xsOT3vkZOZaB3zS7m6pAuWbolnHy+itf/anGdGEU3k=
X-Received: by 2002:a37:85c4:: with SMTP id
 h187mr22370588qkd.223.1579011130047; 
 Tue, 14 Jan 2020 06:12:10 -0800 (PST)
MIME-Version: 1.0
References: <1578899321-1365-1-git-send-email-qiangqing.zhang@nxp.com>
 <1578899321-1365-2-git-send-email-qiangqing.zhang@nxp.com>
 <20200113210344.GA4615@bogus>
 <DB7PR04MB461863B36162325EF1BB6251E6340@DB7PR04MB4618.eurprd04.prod.outlook.com>
 <DB7PR04MB4618E5E7ACE8698BBE24E989E6340@DB7PR04MB4618.eurprd04.prod.outlook.com>
In-Reply-To: <DB7PR04MB4618E5E7ACE8698BBE24E989E6340@DB7PR04MB4618.eurprd04.prod.outlook.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 14 Jan 2020 08:11:58 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq++ZtPCV58eg-O5t2+L82MCsX8Tp262nsO4mNykVZmxYw@mail.gmail.com>
Message-ID: <CAL_Jsq++ZtPCV58eg-O5t2+L82MCsX8Tp262nsO4mNykVZmxYw@mail.gmail.com>
Subject: Re: [PATCH V4 RESEND 1/2] dt-bindings/irq: add binding for NXP INTMUX
 interrupt multiplexer
To: Joakim Zhang <qiangqing.zhang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_061211_822437_70E04017 
X-CRM114-Status: GOOD (  26.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>, Andy Duan <fugang.duan@nxp.com>,
 "jason@lakedaemon.net" <jason@lakedaemon.net>,
 "maz@kernel.org" <maz@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBKYW4gMTQsIDIwMjAgYXQgMjoyMiBBTSBKb2FraW0gWmhhbmcgPHFpYW5ncWluZy56
aGFuZ0BueHAuY29tPiB3cm90ZToKPgo+Cj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+
ID4gRnJvbTogSm9ha2ltIFpoYW5nIDxxaWFuZ3FpbmcuemhhbmdAbnhwLmNvbT4KPiA+IFNlbnQ6
IDIwMjDlubQx5pyIMTTml6UgMTA6NDQKPiA+IFRvOiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwu
b3JnPgo+ID4gQ2M6IG1hekBrZXJuZWwub3JnOyBqYXNvbkBsYWtlZGFlbW9uLm5ldDsgdGdseEBs
aW51dHJvbml4LmRlOwo+ID4gbWFyay5ydXRsYW5kQGFybS5jb207IHNoYXduZ3VvQGtlcm5lbC5v
cmc7IHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU7Cj4gPiBrZXJuZWxAcGVuZ3V0cm9uaXguZGU7IGZl
c3RldmFtQGdtYWlsLmNvbTsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsKPiA+IGRldmlj
ZXRyZWVAdmdlci5rZXJuZWwub3JnOyBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmc7IGRsLWxpbnV4LWlteAo+ID4gPGxpbnV4LWlteEBueHAuY29tPjsgQW5keSBEdWFuIDxmdWdh
bmcuZHVhbkBueHAuY29tPgo+ID4gU3ViamVjdDogUkU6IFtQQVRDSCBWNCBSRVNFTkQgMS8yXSBk
dC1iaW5kaW5ncy9pcnE6IGFkZCBiaW5kaW5nIGZvciBOWFAKPiA+IElOVE1VWCBpbnRlcnJ1cHQg
bXVsdGlwbGV4ZXIKPiA+Cj4gPgo+ID4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID4g
PiBGcm9tOiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgo+ID4gPiBTZW50OiAyMDIw5bm0
MeaciDE05pelIDU6MDQKPiA+ID4gVG86IEpvYWtpbSBaaGFuZyA8cWlhbmdxaW5nLnpoYW5nQG54
cC5jb20+Cj4gPiA+IENjOiBtYXpAa2VybmVsLm9yZzsgamFzb25AbGFrZWRhZW1vbi5uZXQ7IHRn
bHhAbGludXRyb25peC5kZTsKPiA+ID4gbWFyay5ydXRsYW5kQGFybS5jb207IHNoYXduZ3VvQGtl
cm5lbC5vcmc7IHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU7Cj4gPiA+IGtlcm5lbEBwZW5ndXRyb25p
eC5kZTsgZmVzdGV2YW1AZ21haWwuY29tOwo+ID4gPiBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwu
b3JnOyBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsKPiA+ID4gbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnOyBkbC1saW51eC1pbXgKPiA+ID4gPGxpbnV4LWlteEBueHAuY29t
PjsgQW5keSBEdWFuIDxmdWdhbmcuZHVhbkBueHAuY29tPgo+ID4gPiBTdWJqZWN0OiBSZTogW1BB
VENIIFY0IFJFU0VORCAxLzJdIGR0LWJpbmRpbmdzL2lycTogYWRkIGJpbmRpbmcgZm9yCj4gPiA+
IE5YUCBJTlRNVVggaW50ZXJydXB0IG11bHRpcGxleGVyCj4gPiA+Cj4gPiA+IE9uIE1vbiwgSmFu
IDEzLCAyMDIwIGF0IDAzOjA4OjQwUE0gKzA4MDAsIEpvYWtpbSBaaGFuZyB3cm90ZToKPiA+ID4g
PiBUaGlzIHBhdGNoIGFkZHMgdGhlIERUIGJpbmRpbmdzIGZvciB0aGUgTlhQIElOVE1VWCBpbnRl
cnJ1cHQKPiA+ID4gPiBtdWx0aXBsZXhlciBmb3IgaS5NWDggZmFtaWx5IFNvQ3MuCj4gPiA+ID4K
PiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKb2FraW0gWmhhbmcgPHFpYW5ncWluZy56aGFuZ0BueHAu
Y29tPgo+ID4gPiA+IC0tLQo+ID4gPiA+ICAuLi4vaW50ZXJydXB0LWNvbnRyb2xsZXIvZnNsLGlu
dG11eC55YW1sICAgICAgfCA3Nwo+ID4gKysrKysrKysrKysrKysrKysrKwo+ID4gPiA+ICAxIGZp
bGUgY2hhbmdlZCwgNzcgaW5zZXJ0aW9ucygrKQo+ID4gPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQK
PiA+ID4gPiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvaW50ZXJydXB0LWNvbnRy
b2xsZXIvZnNsLGludG11eC55YQo+ID4gPiA+IG1sCj4gPiA+Cj4gPiA+IFBsZWFzZSBydW4gJ21h
a2UgZHRfYmluZGluZ19jaGVjaycgYW5kIGZpeCB0aGUgZXJyb3JzOgo+ID4gPgo+ID4gPiBEb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvaW50ZXJydXB0LWNvbnRyb2xsZXIvZnNsLGlu
dG11eC55YW1sOgo+ID4gPiB3aGlsZSBzY2FubmluZyBmb3IgdGhlIG5leHQgdG9rZW4gZm91bmQg
Y2hhcmFjdGVyIHRoYXQgY2Fubm90IHN0YXJ0IGFueSB0b2tlbgo+ID4gPiAgIGluICI8dW5pY29k
ZSBzdHJpbmc+IiwgbGluZSA2MCwgY29sdW1uIDEKPiA+IEdvdCBpdC4gV2lsbCBrZWVwIGluIG1p
bmQuIFRoYW5rcy4KPiA+Cj4gPiA+ID4KPiA+ID4gPiBkaWZmIC0tZ2l0Cj4gPiA+ID4gYS9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvaW50ZXJydXB0LWNvbnRyb2xsZXIvZnNsLGlu
dG11eC4KPiA+ID4gPiB5YQo+ID4gPiA+IG1sCj4gPiA+ID4gYi9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvaW50ZXJydXB0LWNvbnRyb2xsZXIvZnNsLGludG11eC4KPiA+ID4gPiB5
YQo+ID4gPiA+IG1sCj4gPiA+ID4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiA+ID4gPiBpbmRleCAw
MDAwMDAwMDAwMDAuLjRkYmE1MzJmZTBiZAo+ID4gPiA+IC0tLSAvZGV2L251bGwKPiA+ID4gPiAr
KysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvaW50ZXJydXB0LWNvbnRyb2xs
ZXIvZnNsLGludAo+ID4gPiA+ICsrKyBtdQo+ID4gPiA+ICsrKyB4LnlhbWwKPiA+ID4gPiBAQCAt
MCwwICsxLDc3IEBACj4gPiA+ID4gKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4w
IE9SIEJTRC0yLUNsYXVzZSkgJVlBTUwgMS4yCj4gPiA+ID4gKy0tLQo+ID4gPiA+ICskaWQ6Cj4g
PiA+ID4gK2h0dHBzOi8vZXVyMDEuc2FmZWxpbmtzLnByb3RlY3Rpb24ub3V0bG9vay5jb20vP3Vy
bD1odHRwJTNBJTJGJTJGZGUKPiA+ID4gPiArdmkKPiA+ID4gPgo+ID4gPgo+ID4gK2NldHJlZS5v
cmclMkZzY2hlbWFzJTJGaW50ZXJydXB0LWNvbnRyb2xsZXIlMkZmc2wlMkNpbnRtdXgueWFtbCUy
MyZhCj4gPiA+IG0KPiA+ID4gPgo+ID4gPgo+ID4gK3A7ZGF0YT0wMiU3QzAxJTdDcWlhbmdxaW5n
LnpoYW5nJTQwbnhwLmNvbSU3Q2RjMjQ0M2RjMTExMTQ5ODA1YzcKPiA+ID4gMjA4ZDcKPiA+ID4g
Pgo+ID4gPgo+ID4gKzk4NmMxNTdmJTdDNjg2ZWExZDNiYzJiNGM2ZmE5MmNkOTljNWMzMDE2MzUl
N0MwJTdDMCU3QzYzNzE0NTQ2Cj4gPiA+IDIyOTE5MzQKPiA+ID4gPgo+ID4gPgo+ID4gKzQ5MiZh
bXA7c2RhdGE9QW80aXVqMkQ0OEtBZUMlMkZ2UXZKcVVVeEdKRWpTWTBIeUw1WmxUMlhyU3JnJTNE
Jgo+ID4gPiBhbXA7cmUKPiA+ID4gPiArc2VydmVkPTAKPiA+ID4gPiArJHNjaGVtYToKPiA+ID4g
PiAraHR0cHM6Ly9ldXIwMS5zYWZlbGlua3MucHJvdGVjdGlvbi5vdXRsb29rLmNvbS8/dXJsPWh0
dHAlM0ElMkYlMkZkZQo+ID4gPiA+ICt2aQo+ID4gPiA+Cj4gPiA+Cj4gPiArY2V0cmVlLm9yZyUy
Rm1ldGEtc2NoZW1hcyUyRmNvcmUueWFtbCUyMyZhbXA7ZGF0YT0wMiU3QzAxJTdDcWlhCj4gPiA+
IG5ncWluZwo+ID4gPiA+Cj4gPiA+Cj4gPiArLnpoYW5nJTQwbnhwLmNvbSU3Q2RjMjQ0M2RjMTEx
MTQ5ODA1YzcyMDhkNzk4NmMxNTdmJTdDNjg2ZWExZDNiCj4gPiA+IGMyYjRjNgo+ID4gPiA+Cj4g
PiA+Cj4gPiArZmE5MmNkOTljNWMzMDE2MzUlN0MwJTdDMCU3QzYzNzE0NTQ2MjI5MTkzNDQ5MiZh
bXA7c2RhdGE9WW9IYgo+ID4gPiBUTzVDOE5scQo+ID4gPiA+ICtZWW9XVE51ZmFJeG52ZHRQVVph
S3p2d0s0OUk5WmRjJTNEJmFtcDtyZXNlcnZlZD0wCj4gPiA+ID4gKwo+ID4gPiA+ICt0aXRsZTog
RnJlZXNjYWxlIElOVE1VWCBpbnRlcnJ1cHQgbXVsdGlwbGV4ZXIKPiA+ID4gPiArCj4gPiA+ID4g
K21haW50YWluZXJzOgo+ID4gPiA+ICsgIC0gTWFyYyBaeW5naWVyIDxtYXpAa2VybmVsLm9yZz4K
PiA+ID4gPiArCj4gPiA+ID4gK3Byb3BlcnRpZXM6Cj4gPiA+ID4gKyAgY29tcGF0aWJsZToKPiA+
ID4gPiArICAgIGl0ZW1zOgo+ID4gPiA+ICsgICAgICBjb25zdDogZnNsLGlteC1pbnRtdXgKPiA+
ID4gPiArCj4gPiA+ID4gKyAgcmVnOgo+ID4gPiA+ICsgICAgbWF4SXRlbXM6IDEKPiA+ID4gPiAr
Cj4gPiA+ID4gKyAgaW50ZXJydXB0czoKPiA+ID4gPiArICAgIG1pbkl0ZW1zOiAxCj4gPiA+ID4g
KyAgICBtYXhJdGVtczogOAo+ID4gPiA+ICsgICAgZGVzY3JpcHRpb246IHwKPiA+ID4gPiArICAg
ICAgU2hvdWxkIGNvbnRhaW4gdGhlIHBhcmVudCBpbnRlcnJ1cHQgbGluZXMgKHVwIHRvIDgpIHVz
ZWQgdG8gbXVsdGlwbGV4Cj4gPiA+ID4gKyAgICAgIHRoZSBpbnB1dCBpbnRlcnJ1cHRzLgo+ID4g
PiA+ICsKPiA+ID4gPiArICBpbnRlcnJ1cHQtY29udHJvbGxlcjogdHJ1ZQo+ID4gPiA+ICsKPiA+
ID4gPiArICAnI2ludGVycnVwdC1jZWxscyc6Cj4gPiA+ID4gKyAgICBjb25zdDogMgo+ID4gPiA+
ICsKPiA+ID4gPiArICBjbG9ja3M6Cj4gPiA+ID4gKyAgICBtYXhJdGVtczogMQo+ID4gPiA+ICsg
ICAgZGVzY3JpcHRpb246IGlwZyBjbG9jay4KPiA+ID4gPiArCj4gPiA+ID4gKyAgY2xvY2stbmFt
ZXM6Cj4gPiA+ID4gKyAgICBpdGVtczoKPiA+ID4gPiArICAgICAgY29uc3Q6IGlwZwo+ID4gPiA+
ICsKPiA+ID4gPiArICBmc2wsaW50bXV4X2NoYW5zOgo+ID4gPgo+ID4gPiBEb24ndCB1c2UgJ18n
IGluIHByb3BlcnR5IG5hbWVzLgo+ID4gR290IGl0Lgo+ID4KPiA+ID4gSXMgdGhpcyBhbnkgZGlm
ZmVyZW50IGZyb20gdGhlIGxlbmd0aCBvZiAnaW50ZXJydXB0cycgd2hpY2ggeW91IGNhbiBjb3Vu
dD8KPiA+IEEgYml0IGRpZmZlcmVudC4gU3VjaCBhcywgdGhlIGxlbmd0aCBvZiAnaW50ZXJydXB0
cycgaXMgOCwgYnV0IHdlIGNhbiBzZXQKPiA+IGZzbCxpbnRtdXhfY2hhbnMgdmFsdWUgaXMgNC4g
VGhhdCBtZWFucyB0aGVyZSBhcmUgOCBjaGFubmVscywgYnV0IGFjdHVhbGx5IHdlCj4gPiBvbmx5
IHVzZSA0IGNoYW5uZWxzLgo+ID4gSWYgeW91IHRoaW5rIHRoaXMgbWFrZSBubyBzZW5zZSwgZHVl
IHRvIHdlIGNhbiBhc3NpZ24gNCBpdGVtcyBmb3IgJ2ludGVycnVwdHMnIHRvCj4gPiBnZXQgdGhl
IHNhbWUgcmVzdWx0LiBTbyB3ZSBjYW4gY291bnQgdGhlIGxlbmd0aCBvZiAnaW50ZXJydXB0cycg
dG8gZ2V0IHRoZQo+ID4gY2hhbm5lbHMgY29uZmlndXJlZCwgdGhlbiB0aGlzIHByb3BlcnR5IGlz
IG5vIG5lZWQuCj4gPiBXaGljaCBvbmUgZG8geW91IHRoaW5rIGlzIGJldHRlcj8KPiA+ICAgICAg
ICAgICAgICAgaW50ZXJydXB0cyA9IDxHSUNfU1BJIDE2IElSUV9UWVBFX0xFVkVMX0hJR0g+LAo+
ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgPEdJQ19TUEkgMTcgSVJRX1RZUEVfTEVWRUxf
SElHSD4sCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICA8R0lDX1NQSSAxOCBJUlFfVFlQ
RV9MRVZFTF9ISUdIPiwKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxHSUNfU1BJIDE5
IElSUV9UWVBFX0xFVkVMX0hJR0g+LAo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgPEdJ
Q19TUEkgMjAgSVJRX1RZUEVfTEVWRUxfSElHSD4sCj4gPiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICA8R0lDX1NQSSAyMSBJUlFfVFlQRV9MRVZFTF9ISUdIPiwKPiA+ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIDxHSUNfU1BJIDIyIElSUV9UWVBFX0xFVkVMX0hJR0g+LAo+ID4gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgPEdJQ19TUEkgMjMgSVJRX1RZUEVfTEVWRUxfSElHSD47Cj4g
PiAgICAgICAgICAgICAgIGZzbCxpbnRtdXhfY2hhbnMgPSA8ND47Cj4KPiBPbmUgbW9yZSBhZGQs
IHRoZSBudW1iZXIgb2YgY2hhbm5lbHMgaXMgZml4ZWQgdG8gOC4gSXQgd2lsbCBtYWtlIG1vcmUg
Y2xlYXIgdG8gdXNlcnMgdGhhdCBpdCBzdXBwb3J0cyA4IGNoYW5uZWxzIHdpdGggOCBpdGVtcyBm
b3IgJ2ludGVycnVwdHMnLCBhbmQgdXNlcnMgY2FuIGRlY2lkZSBob3cgbWFueQo+IGNoYW5uZWxz
IHRoZXkgdXNlIHdpdGggJ2ZzbCxpbnRtdXhfY2hhbnMnIHByb3BlcnR5LgoKSG93IGRvZXMgb25l
IGRlY2lkZSBob3cgbWFueT8gV2h5IHdvdWxkIHlvdSBub3QgdXNlIGFzIG1hbnkgY2hhbm5lbHMK
YXMgcG9zc2libGUgKG90aGVyIHRoYW4gbXV4aW5nIGludGVycnVwdHMgb3Igbm90IGRvZXNuJ3Qg
cmVhbGx5IG1ha2UgYQpiaXQgZGlmZmVyZW5jZSBpbiBzZXJ2aWNpbmcgb3ZlcmhlYWQpPwoKSWYg
eW91IHdhbnRlZCB0byBjb25maWd1cmUgaG93IG1hbnkgcGFyZW50IGludGVycnVwdHMsIHdvdWxk
bid0IHlvdQphbHNvIHdhbnQgdG8gY29uZmlndXJlIHRoZSByb3V0aW5nIG9mIGNoaWxkIGludGVy
cnVwdHMgdG8gc3BlY2lmaWMKcGFyZW50IGludGVycnVwdHM/CgpTbyBJIHdvdWxkIGRyb3AgdGhp
cyBwcm9wZXJ0eS4gWW91IGNhbiBkZWZpbmUgYm90aCBob3cgbWFueSBwYXJlbnRzCmFuZCB0aGUg
cm91dGluZyB3aXRoIGludGVycnVwdC1tYXAgcHJvcGVydHksIHRob3VnaCBJIHdvdWxkIG5vdCBk
bwp0aGF0IHVudGlsIHlvdSBoYXZlIGEgcmVhbCBuZWVkLgoKUm9iCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
