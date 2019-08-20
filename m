Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00D0A9669F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 18:40:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=95t/zMpzcfdz8MY4RaqmLnRgQwlbDXErzsvxvyskY44=; b=IoIzoENUgiEDgP
	NpZFNp0uRMmz57TQbw0yFKBGeIFruF64c4md92+ub5GF6O+ZkXfoK+mGjFGC+tMjRXXEQgjTTqnHX
	QQirLDu7F9x/wnw62yWNMHCA3LFoeHp7LovF9+EwnEtDiPcyRVYAyQyPaBM5VlkLNIA7wg3FiHB4+
	u0Ks/b75zzgqOxqagCamLr1Mf8yYcxZqy2sqTpP23qvWo8ePVIQFsglv8+2gV8jZrntHjzjV1HHyO
	4jod9Fk3Qnf6xoy0v+LlJcz8y+Go/gkxgKyvikRetuSQPhw1eSJN54hopIQgBIX1xGFM0TUC/nSR6
	ocWpfz9wwLwGpjonYcNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i07Al-0002Rt-JQ; Tue, 20 Aug 2019 16:39:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i07Ab-0002RM-B7
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 16:39:42 +0000
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com
 [209.85.222.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C9A6A214DA
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 16:39:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566319180;
 bh=veCX3JRCfSZHvEnItISPv2HdfktZ61+FPhofkrQuQUA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=DElMqDuDa0Ao7h8uyG4MMeOdMC48rGY0ZtAT8ieDY32nxAnK60GGzIiGEqEWxRG32
 /w5xGLBTfniHaeOr13JNUb6kySAnslvYedWh4sws8favcIU9VbK0RrzrCbH1wVkVoJ
 1lU2aaHBPaEwM/GHNeDMGV2/QXGdLezsapQC3yzM=
Received: by mail-qk1-f177.google.com with SMTP id s145so5020083qke.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 09:39:40 -0700 (PDT)
X-Gm-Message-State: APjAAAV1w5A/bfTN5RWsbSZWaPMlzwOi2aAFFrz3d6TcO3t76COE52RR
 2TLOWDkB6kj7xS9XqryTV2YMPbWlUYB7q2v0oQ==
X-Google-Smtp-Source: APXvYqyx6OvdT6TDRMtiI2lfROTf9ZgiR7UCZ0cxnhU/fiTNmsagpbspZVrkYUA46h3HgvDPrHZjwM57aBclImmXIg0=
X-Received: by 2002:a37:a44a:: with SMTP id n71mr26455136qke.393.1566319180031; 
 Tue, 20 Aug 2019 09:39:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190820152511.15307-1-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20190820152511.15307-1-u.kleine-koenig@pengutronix.de>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 20 Aug 2019 11:39:27 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLg19883syn66P6zUkLPpQ8FYpeFj2QYvSp1UsWOhVKyQ@mail.gmail.com>
Message-ID: <CAL_JsqLg19883syn66P6zUkLPpQ8FYpeFj2QYvSp1UsWOhVKyQ@mail.gmail.com>
Subject: Re: [PATCH RFC] dt-bindings: regulator: define a mux regulator
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_093941_419695_B2D57778 
X-CRM114-Status: GOOD (  25.87  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Liam Girdwood <lgirdwood@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBBdWcgMjAsIDIwMTkgYXQgMTA6MjUgQU0gVXdlIEtsZWluZS1Lw7ZuaWcKPHUua2xl
aW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4KPiBBIG11eCByZWd1bGF0b3IgaXMg
dXNlZCB0byBwcm92aWRlIGN1cnJlbnQgb24gb25lIG9mIHNldmVyYWwgb3V0cHV0cy4gSXQKPiBt
aWdodCBsb29rIGFzIGZvbGxvd3M6Cj4KPiAgICAgICAsLS0tLS0tLS0tLS0tLgo+ICAgICAtLTxP
VVQwICAgICBBMCA8LS0KPiAgICAgLS08T1VUMSAgICAgQTEgPC0tCj4gICAgIC0tPE9VVDIgICAg
IEEyIDwtLQo+ICAgICAtLTxPVVQzICAgICAgICB8Cj4gICAgIC0tPE9VVDQgICAgIEVOIDwtLQo+
ICAgICAtLTxPVVQ1ICAgICAgICB8Cj4gICAgIC0tPE9VVDYgICAgIElOIDwtLQo+ICAgICAtLTxP
VVQ3ICAgICAgICB8Cj4gICAgICAgYC0tLS0tLS0tLS0tLScKPgo+IERlcGVuZGluZyBvbiB3aGlj
aCBhZGRyZXNzIGlzIGVuY29kZWQgb24gdGhlIHRocmVlIGFkZHJlc3MgaW5wdXRzIEEwLCBBMQo+
IGFuZCBBMiB0aGUgY3VycmVudCBwcm92aWRlZCBvbiBJTiBpcyBwcm92aWRlZCBvbiBvbmUgb2Yg
dGhlIGVpZ2h0Cj4gb3V0cHV0cy4KPgo+IFdoYXQgaXMgbmV3IGhlcmUgaXMgdGhhdCB0aGUgYmlu
ZGluZyBtYWtlcyB1c2Ugb2YgYSAjcmVndWxhdG9yLWNlbGxzCj4gcHJvcGVydHkuIFRoaXMgdXNl
cyB0aGUgYXBwcm9hY2gga25vd24gZnJvbSBvdGhlciBiaW5kaW5ncyAoZS5nLiBncGlvKQo+IHRv
IGFsbG93IHJlZmVyZW5jaW5nIGFsbCBlaWdodCBvdXRwdXRzIHdpdGggcGhhbmRsZSBhcmd1bWVu
dHMuIFRoaXMKPiByZXF1aXJlcyBhbiBleHRlbnRpb24gaW4gb2ZfZ2V0X3JlZ3VsYXRvciB0byB1
c2UgYSBuZXcgdmFyaWFudCBvZgo+IG9mX3BhcnNlX3BoYW5kbGVfd2l0aF9hcmdzIHRoYXQgaGFz
IGEgY2VsbF9jb3VudF9kZWZhdWx0IHBhcmFtZXRlciB0aGF0Cj4gaXMgdXNlZCBpbiBhYnNlbmNl
IG9mIGEgJGNlbGxfbmFtZSBwcm9wZXJ0eS4gRXZlbiBpZiB3ZSdkIGNob29zZSB0bwo+IHVwZGF0
ZSBhbGwgcmVndWxhdG9yLWJpbmRpbmdzIHRvIGFkZCAjcmVndWxhdG9yLWNlbGxzID0gPDA+OyB3
ZSBzdGlsbAo+IG5lZWRlZCBzb21ldGhpbmcgdG8gaW1wbGVtZW50IGNvbXBhdGliaWxpdHkgdG8g
dGhlIGN1cnJlbnRseSBkZWZpbmVkCj4gYmluZGluZ3MuCj4KPiBTaWduZWQtb2ZmLWJ5OiBVd2Ug
S2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgo+IC0tLQo+IEhl
bGxvLAo+Cj4gdGhlIG9idmlvdXMgYWx0ZXJuYXRpdmUgaXMgdG8gYWRkIChoZXJlKSBlaWdodCBz
dWJub2RlcyB0byByZXByZXNlbnQgdGhlCj4gZWlnaHQgb3V0cHV0cy4gVGhpcyBpcyBJTUhPIGxl
c3MgcHJldHR5LCBidXQgd291bGRuJ3QgbmVlZCB0byBpbnRyb2R1Y2UKPiAjcmVndWxhdG9yLWNl
bGxzLgoKSSdtIG9rYXkgd2l0aCAjcmVndWxhdG9yLWNlbGxzIGFwcHJvYWNoLgoKPgo+IEFwYXJ0
IGZyb20gcmVnID0gPC4uPiBhbmQgYSBwaGFuZGxlIHRoZXJlIGlzIChJIHRoaW5rKSBub3RoaW5n
IHRoYXQKPiBuZWVkcyB0byBiZSBzcGVjaWZpZWQgaW4gdGhlIHN1Ym5vZGVzIGJlY2F1c2UgYWxs
IHByb3BlcnRpZXMgb2YgYW4KPiBvdXRwdXQgKGFwYXJ0IGZyb20gdGhlIGFkZHJlc3MpIGFwcGx5
IHRvIGFsbCBvdXRwdXRzLgo+Cj4gV2hhdCBkbyB5b3UgdGhpbms/Cj4KPiBCZXN0IHJlZ2FyZHMK
PiBVd2UKPgo+ICAuLi4vYmluZGluZ3MvcmVndWxhdG9yL211eC1yZWd1bGF0b3IueWFtbCAgICAg
fCA1MiArKysrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA1MiBpbnNlcnRpb25z
KCspCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvcmVndWxhdG9yL211eC1yZWd1bGF0b3IueWFtbAo+Cj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9yZWd1bGF0b3IvbXV4LXJlZ3VsYXRvci55YW1sIGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3JlZ3VsYXRvci9tdXgtcmVndWxhdG9y
LnlhbWwKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMC4uZjA2ZGJi
OTY5MDkwCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9yZWd1bGF0b3IvbXV4LXJlZ3VsYXRvci55YW1sCj4gQEAgLTAsMCArMSw1MiBAQAo+
ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wCgooR1BMLTIuMC1vbmx5IE9SIEJT
RC0yLUNsYXVzZSkgaXMgcHJlZmVycmVkLgoKCj4gKyVZQU1MIDEuMgo+ICstLS0KPiArJGlkOiBo
dHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9yZWd1bGF0b3IvbXV4LXJlZ3VsYXRvci55YW1s
Iwo+ICskc2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFt
bCMKPiArCj4gK3RpdGxlOiBNVVggcmVndWxhdG9ycwo+ICsKPiArcHJvcGVydGllczoKPiArICBj
b21wYXRpYmxlOgo+ICsgICAgY29uc3Q6IFhYWCxhZGI3MDgKCj8gSSBhc3N1bWUgeW91IHdpbGwg
c3BsaXQgdGhpcyBpbnRvIGEgY29tbW9uIGFuZCBzcGVjaWZpYyBzY2hlbWFzLiBJCnN1cHBvc2Ug
dGhlcmUgY291bGQgYmUgZGlmZmVyaW5nIHdheXMgdG8gY29udHJvbCB0aGUgbXV4IGp1c3QgbGlr
ZSBhbGwKb3RoZXIgbXV4ZXMuCgo+ICsKPiArICBlbmFibGUtZ3Bpb3M6Cj4gKyAgICBtYXhJdGVt
czogMQo+ICsKPiArICBhZGRyZXNzLWdwaW9zOgo+ICsgICAgZGVzY3JpcHRpb246IEFycmF5IG9m
IHR5cGljYWxseSB0aHJlZSBHUElPIHBpbnMgdXNlZCB0byBzZWxlY3QgdGhlCj4gKyAgICAgIHJl
Z3VsYXRvcidzIG91dHB1dC4gVGhlIGxlYXN0IHNpZ25pZmljYW50IGFkZHJlc3MgR1BJTyBtdXN0
IGJlIGxpc3RlZAo+ICsgICAgICBmaXJzdC4gVGhlIG90aGVycyBmb2xsb3cgaW4gb3JkZXIgb2Yg
c2lnbmlmaWNhbmNlLgo+ICsgICAgbWluSXRlbXM6IDEKPiArCj4gKyAgIiNyZWd1bGF0b3ItY2Vs
bHMiOgoKSG93IGlzIHRoaXMgbm90IHJlcXVpcmVkPwoKPiArICAgIGNvbnN0OiAxCj4gKwo+ICsg
IHJlZ3VsYXRvci1uYW1lOgo+ICsgICAgZGVzY3JpcHRpb246IEEgc3RyaW5nIHVzZWQgdG8gY29u
c3RydWN0IHRoZSBzdWIgcmVndWxhdG9yJ3MgbmFtZXMKPiArICAgICRyZWY6ICIvc2NoZW1hcy90
eXBlcy55YW1sIy9kZWZpbml0aW9ucy9zdHJpbmciCj4gKwo+ICsgIHN1cHBseToKPiArICAgIGRl
c2NyaXB0aW9uOiBpbnB1dCBzdXBwbHkKPiArCj4gK3JlcXVpcmVkOgo+ICsgIC0gY29tcGF0aWJs
ZQo+ICsgIC0gcmVndWxhdG9yLW5hbWUKPiArICAtIHN1cHBseQo+ICsKPiArCj4gK2V4YW1wbGVz
Ogo+ICsgIC0gfAo+ICsgICAgbXV4LXJlZ3VsYXRvciB7Cj4gKyAgICAgIGNvbXBhdGlibGUgPSAi
cmVndWxhdG9yLW11eCI7Cj4gKwo+ICsgICAgICByZWd1bGF0b3ItbmFtZSA9ICJibGFmYXNlbCI7
Cj4gKwo+ICsgICAgICBzdXBwbHkgPSA8Jm11eGluX3JlZ3VsYXRvcj47Cj4gKwo+ICsgICAgICBl
bmFibGUtZ3Bpb3MgPSA8JmdwaW8yIDUgR1BJT19BQ1RJVkVfSElHSD47Cj4gKyAgICAgIGFkZHJl
c3MtZ3Bpb3MgPSA8JmdwaW8yIDIgR1BJT19BQ1RJVkVfSElHSD4sCj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgIDwmZ3BpbzIgMyBHUElPX0FDVElWRV9ISUdIPiwKPiArICAgICAgICAgICAgICAg
ICAgICAgICAgPCZncGlvMiA0IEdQSU9fQUNUSVZFX0hJR0g+LAo+ICsgICAgfTsKPiArLi4uCj4g
LS0KPiAyLjIwLjEKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
