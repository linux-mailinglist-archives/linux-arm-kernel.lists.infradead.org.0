Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F7A019897A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 03:20:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nc0yfOE2H89Lt46moqWum2L71HNrDUM8jhoE+Hqiw1w=; b=Jr0RMLMgVk31U5
	MaJafkopW4KZU/sS+7WZHL7f5VlOU/IMDJH1wdihEH3ZlSZPsMKf+aiWYZZczpqxt1Dk5HR6fv/FW
	9CkpwKgapLyI3qSk4Syel4bX3ycOdDkI2K0fOHWHVqRzuuxDlaQRTcND5fhHJMOnqxBceAqX7NWfd
	Mnqx2JIvNS7xgPamDCNp2pqMKajpmYjHhJCoJWk190Ce+Mv9fJRnK1A9CeBNSeTx8XJD0gZGKOR46
	WcDCeaV+KvBxpbf3cFFO2j2HVTBF/zKfe24QFedggkMBBiGipJu9lW03DMeA/vT/pkQpoPJieFzfk
	dY2wEcHOWYeUgm5KcEXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ5Zp-0007wN-6b; Tue, 31 Mar 2020 01:20:25 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ5Ze-0007vc-73
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 01:20:15 +0000
Received: by mail-ed1-f65.google.com with SMTP id a20so23243248edj.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 18:20:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=i9hBBEmJ746Eja0cO/shZ186afqjaJSCi9MEEkLweXE=;
 b=F3p2A2sCevLRRuq/45dyxHCUiekHA9MF0iyBmdn6UoXHIwOnX9yYiHSvvle/7MXM/P
 f0GaRZrRLviNGxVec8ZHRw1q86iQvG7Zn6XX7HU2AIeme0bh+wUYB7lR/rPPiEf7a2Df
 QnL3J+J1MasaJdX7wEtT9ydbMvdwzW7MjDrn+54ZOOkEu9mIhAvLVh4oh3PQ8tWzxHAu
 u61YGwfQi43By6G4uYVxK7/LQ1DdpOonFRg1wmEpfefDdBSCfBTSzHIP50+CGq4ORbYF
 CVfo1LmVUbEt5IR7oM6zyoA1rKkggIvE3hv1yqB8zIvwwYL3a3dl9rbNX5IEL2fbKdI2
 gPiA==
X-Gm-Message-State: ANhLgQ2ZnWv1qFcpnAbHHU+imTftu9SisB7l//EaTZiflfu9ccFKaSHr
 H3/4yS4f8sm5VXor47ixMmL+HZHEgCg=
X-Google-Smtp-Source: ADFU+vv4RnMX8+DgGcO1wb/BON/DsUgzFx1ot4VWOPmZD7ghXkvHgB6cnV6aCcWg0uwytxyHxPri0w==
X-Received: by 2002:a17:906:7fc5:: with SMTP id
 r5mr1795050ejs.58.1585617610961; 
 Mon, 30 Mar 2020 18:20:10 -0700 (PDT)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com.
 [209.85.128.53])
 by smtp.gmail.com with ESMTPSA id z13sm2058441edj.81.2020.03.30.18.20.10
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 30 Mar 2020 18:20:10 -0700 (PDT)
Received: by mail-wm1-f53.google.com with SMTP id r16so757607wmg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 18:20:10 -0700 (PDT)
X-Received: by 2002:a1c:988d:: with SMTP id a135mr899820wme.16.1585617610031; 
 Mon, 30 Mar 2020 18:20:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200325205924.30736-1-ynezz@true.cz>
 <20200330175347.r4uam7cybvuxlgog@gilmour.lan>
In-Reply-To: <20200330175347.r4uam7cybvuxlgog@gilmour.lan>
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 31 Mar 2020 09:19:57 +0800
X-Gmail-Original-Message-ID: <CAGb2v66+oT=qfu7oHTs3d_e2hd_8Fc_0ULhHRfMLmrdcfOoe=A@mail.gmail.com>
Message-ID: <CAGb2v66+oT=qfu7oHTs3d_e2hd_8Fc_0ULhHRfMLmrdcfOoe=A@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: olinuxino: add user red LED
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_182014_256821_77B40839 
X-CRM114-Status: GOOD (  12.39  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wens213[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [wens213[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBNYXIgMzEsIDIwMjAgYXQgMTo1MyBBTSBNYXhpbWUgUmlwYXJkIDxtYXhpbWVAY2Vy
bm8udGVjaD4gd3JvdGU6Cj4KPiBPbiBXZWQsIE1hciAyNSwgMjAyMCBhdCAwOTo1OToyNFBNICsw
MTAwLCBQZXRyIMWgdGV0aWFyIHdyb3RlOgo+ID4gVGhlcmUgaXMgYSByZWQgTEVEIG1hcmtlZCBh
cyBgR1BJT19MRUQxYCBvbiB0aGUgc2lsa3NjcmVlbiBhbmQgY29ubmVjdGVkCj4gPiB0byBQRTE3
IGJ5IGRlZmF1bHQuIFNvIGxldHMgYWRkIHRoaXMgbWlzc2luZyBiaXQgaW4gdGhlIGN1cnJlbnQg
aGFyZHdhcmUKPiA+IGRlc2NyaXB0aW9uLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IFBldHIgxaB0
ZXRpYXIgPHluZXp6QHRydWUuY3o+Cj4KPiBRVWV1ZWQgZm9yIDUuOCwgdGhhbmtzIQoKVGhlIGdw
aW8tbGVkIGJpbmRpbmcgc2VlbXMgdG8gcHJlZmVyICJsZWQtMCIgdXAgdG8gImxlZC1mIiAoXmxl
ZC1bMC05YS1mXSkKYXMgdGhlIGNoaWxkIG5vZGUgbmFtZS4gVGhpcyB3YXMgcmVjZW50bHkgYnJv
dWdodCB0byBteSBhdHRlbnRpb24uIERvIHdlCndhbnQgdG8gZm9sbG93IHN1aXQgaGVyZT8KCkNo
ZW5ZdQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
