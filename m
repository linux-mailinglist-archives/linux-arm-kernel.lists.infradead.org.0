Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A1B0708EF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 20:53:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-ID:MIME-Version:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JsA4m3Hc0YnrtZoNIpR9uB9F4KEdx0lOw5AAJlZ0HZE=; b=rPLPvloY3qMRoie8LKTCvZUvk
	2fNMuM/SppHDZ39qMlFRl4B3NomlfNvnvInDjPqn8z50TIX1AcNNptqrFyVmSVek/M7HvgnMPQOCh
	rVgdcW8v3wCCqZn/f7fAdIydmtkNSznoaL5Zb3Js+4mZopFCjMBZwY0u3dsdo2SSaJjSScZNZD7ju
	uoUEUBzaeB7SoY+OE9rFymGl7nQSCLdH6wm6HPQ6LbXSuUptVLkYetps1RHNfi09KuILD3Ay0slYP
	v25qtDq5jKg69oOFlvNSo4t9b/XKZmj+DI4fTcFTaOAzWnxQru6kzKAAEk+qRXfpYvklhRI/bV4od
	J7qc2L0IA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpdRO-00045n-0Q; Mon, 22 Jul 2019 18:53:42 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpdR4-00044c-A4; Mon, 22 Jul 2019 18:53:23 +0000
Received: by mail-wm1-x342.google.com with SMTP id u25so25962043wmc.4;
 Mon, 22 Jul 2019 11:53:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:mime-version:message-id:in-reply-to
 :references:user-agent:content-transfer-encoding;
 bh=RIcHSpG+V7FGhuZWtisYMNdIlLi42WHE4xnMrVDt6eo=;
 b=Wh115wHRwsX4fgdQkc8dsFiHcufdjy9dw51iC4a6rAXU3NopircZ52OJcp1D1CgKGO
 0BpxmZ2gjg75FyspoMklAC2K8OQBASDVZiJnU/9hMvO++i4HBgRVzGLvugtFpzjEs1ye
 gGZDI8Adde0zIbPiD9fy6DtWCpsbsSf26HwHDlK2VHJCyMLwtG5AJDeWpHlrehF2Bwj0
 enyLEYrJ1enjeIzGctRJoR0PChHgWEFR8Olgwf2BzekShCV3jxGFMejnqRerbatSb0jq
 ANidjhO8le29xX5k0I4Ter1OMKpm1hecmg7rz8iot+uiX/rs0LFuIjMB7eHViWoX0PZl
 wZjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:mime-version:message-id
 :in-reply-to:references:user-agent:content-transfer-encoding;
 bh=RIcHSpG+V7FGhuZWtisYMNdIlLi42WHE4xnMrVDt6eo=;
 b=SnsxyWhFC4AV8uIub7QE1ZKQD8io2BzgogUlotCwroFRHnu+O6mPvRaqjc7G+l8wnm
 I0bmebFktvPttRkNqsos7nnMpraYcIIStl8hhxvk+p/c1yX6pGrke63K7GE155IDtzos
 FgDXowJMxQ6xCTqJ6HoAZtGxjnKIn9eWW9NizETu9GqVAOQhZJO9VwZxOz2DMqJrYrNy
 RZcbY+2GfK/r6RfcDCwslAJeOw2CnnxCcBpHCGkmppagZlfFDZfSW7oxqNUGnn0QCLB+
 05x1UF9rH95C1SN4z/DxsNurqRkSkrw8XpCEez3w25ZFAx5Y/K0HnuwwHZdvVKOitGSf
 VIXg==
X-Gm-Message-State: APjAAAVjik5RfQ7oH9EK5PCHbasKQY0OiWt0u++9t0I4Y9vQatVwvyQC
 DjjS+grJhFovyGSGwRaROZ0=
X-Google-Smtp-Source: APXvYqzQ7306Yw8BjgJf1XLIta7rRj11dzbgTbV+gPz3g/lNSXsOFojp4VXZ31mZ0FNEOjkfI1/agw==
X-Received: by 2002:a1c:7015:: with SMTP id l21mr62642412wmc.82.1563821600454; 
 Mon, 22 Jul 2019 11:53:20 -0700 (PDT)
Received: from localhost ([92.59.185.54])
 by smtp.gmail.com with ESMTPSA id x20sm89477744wrg.10.2019.07.22.11.53.18
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 11:53:19 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: kexec on rk3399
Date: Mon, 22 Jul 2019 20:53:17 +0200
MIME-Version: 1.0
Message-ID: <e42e7e24-a616-4a11-8c4d-1f44146e0a19@gmail.com>
In-Reply-To: <8f71e7de-7eaf-58c7-6471-c8eb01e656ce@arm.com>
References: <ebcb52be-2063-4e2c-9a09-fdcacb94f855@gmail.com>
 <91c53121-9041-e8a2-97a2-5b5626e24c6e@arm.com>
 <d5959b93-40ce-455c-877e-c661a3f22351@gmail.com>
 <8f71e7de-7eaf-58c7-6471-c8eb01e656ce@arm.com>
User-Agent: Trojita
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_115322_383267_F783953A 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vicencb[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Matthias Brugger <mbrugger@suse.com>, Heiko Stuebner <heiko@sntech.de>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uZGF5LCBKdWx5IDIyLCAyMDE5IDc6MzU6MDEgUE0gQ0VTVCwgUm9iaW4gTXVycGh5IHdy
b3RlOgo+IE9uIDIyLzA3LzIwMTkgMTg6MDUsIFZpY2VudGUgQmVyZ2FzIHdyb3RlOgo+PiBPbiBN
b25kYXksIEp1bHkgMjIsIDIwMTkgNDo1NDo0MSBQTSBDRVNULCBNYXJjIFp5bmdpZXIgd3JvdGU6
IC4uLgo+Cj4gVGhlIG9idmlvdXMgY3VscHJpdCB3b3VsZCBiZSBETUEgZGV2aWNlcyBsZWZ0IHJ1
bm5pbmcgYnkgdGhlIAo+IGZpcnN0IGtlcm5lbCBzY3JpYmJsaW5nIG92ZXIgdGhlIHNlY29uZCBr
ZXJuZWwncyBtZW1vcnkgYmVmb3JlIAo+IGl0J3MgaGFkIHRoZSBjaGFuY2UgdG8gcmVzZXQgdGhl
bS4gU2luY2UgYm9vdC10aW1lIG1lbW9yeSAKPiBhbGxvY2F0aW9uIHBhdHRlcm5zIHRlbmQgdG8g
YmUgcmVsYXRpdmVseSByZXBlYXRhYmxlIGZvciBhIGdpdmVuIAo+IHBsYXRmb3JtIGFuZCBrZXJu
ZWwgY29uZmlndXJhdGlvbiwgInJhbmRvbSIgbWF5IHdlbGwgbG9vayBhIGxvdCAKPiBsZXNzIHJh
bmRvbSB0aGFuIHlvdSBtaWdodCBleHBlY3QsIGFuZCBpdCB3b3VsZG4ndCBiZSB1bmhlYXJkIG9m
IAo+IGZvciBlLmcuIHRoZSBzZWNvbmQga2VybmVsIHRvIG1vc3RseSBhbGxvY2F0ZSBpdHMgZGVu
dHJ5IGNhY2hlIAo+IGZyb20gdGhlIHNhbWUgYXJlYSB0aGUgZmlyc3Qga2VybmVsIHdhcyBtb3N0
bHkgcHV0dGluZyBhIG5ldHdvcmsgCj4gUnggZGVzY3JpcHRvciByaW5nLgo+Cj4gUm9iaW4uCgpI
ZXJlIGlzIGFub3RoZXIgYXR0ZW1wdGVkIHRlc3Q6IG9uIHRoZSBmaXJzdCBrZXJuZWwgZGlzYWJs
ZToKIyBDT05GSUdfWk9ORV9ETUEzMiBpcyBub3Qgc2V0CiMgQ09ORklHX0RNQURFVklDRVMgaXMg
bm90IHNldAojIENPTkZJR19QTDMzMF9ETUEgaXMgbm90IHNldAp0aGF0IGlzLCBhbGwgaSBjb3Vs
ZCBkaXNhYmxlIG1hdGNoaW5nIENPTkZJR18qRE1BKj15LCB3aGljaCBpcyBub3QgbXVjaC4KU3Rp
bGwgZW5hYmxlZCBhcmU6CkNPTkZJR19IQVZFX0RNQV9DT05USUdVT1VTPXkKQ09ORklHX0RNQV9T
SEFSRURfQlVGRkVSPXkKQ09ORklHX1NDU0lfRE1BPXkKQ09ORklHX0lPTU1VX0RNQT15CkNPTkZJ
R19IQVNfRE1BPXkKQ09ORklHX05FRURfU0dfRE1BX0xFTkdUSD15CkNPTkZJR19ORUVEX0RNQV9N
QVBfU1RBVEU9eQpDT05GSUdfQVJDSF9ETUFfQUREUl9UXzY0QklUPXkKQ09ORklHX0RNQV9ERUNM
QVJFX0NPSEVSRU5UPXkKQ09ORklHX0FSQ0hfSEFTX1NFVFVQX0RNQV9PUFM9eQpDT05GSUdfQVJD
SF9IQVNfVEVBUkRPV05fRE1BX09QUz15CkNPTkZJR19BUkNIX0hBU19TWU5DX0RNQV9GT1JfREVW
SUNFPXkKQ09ORklHX0FSQ0hfSEFTX1NZTkNfRE1BX0ZPUl9DUFU9eQpDT05GSUdfQVJDSF9IQVNf
RE1BX1BSRVBfQ09IRVJFTlQ9eQpDT05GSUdfQVJDSF9IQVNfRE1BX0NPSEVSRU5UX1RPX1BGTj15
CkNPTkZJR19BUkNIX0hBU19ETUFfTU1BUF9QR1BST1Q9eQpDT05GSUdfRE1BX1JFTUFQPXkKQ09O
RklHX0RNQV9ESVJFQ1RfUkVNQVA9eQoKVGhlbiB0aGUgc2Vjb25kIGtlcm5lbCBzdGlsbCBmYWls
cyB3aXRoIGRfbG9va3VwIGVycm9ycy4KClJlZ2FyZHMsCiAgVmljZW7Dpy4KCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
