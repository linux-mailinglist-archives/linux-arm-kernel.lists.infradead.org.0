Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A0FE1958E2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 15:22:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=89tnm0gqSlG6FRavX9T54muL2IPEXwA/+6pTt/cKlc4=; b=DtVzM9qErX7qec
	uHKw3l2R0Gg//4aptEaAFdRHaUPrdjSBc+ODYfbJglU3p3YJaTaHrJvwLIIdr8osPOKyhX0UmdY9p
	TjejUp3+xFPFTzN7fax2fgV//n3AaRJDbn4woBUeiEmSouSCJJ3QFbC6SxBWCaF0H+Jd7Li2pcBt9
	bzNnPlXTuM8H1xP9V2oW/HB0Jin60bMcmeDEh6l3pSiBiByEChPALDmJg4KPU31UH3zGfliZiar+z
	8dWDvfv8na0rrn0TEnXcDbZLm425kZgwMSBI/bgKM7th+Vh56TX7AENMGMpYjvodQRS0kd+sdNoC7
	hLVWANe75ai5wYBFXsRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHpsg-0000G2-D9; Fri, 27 Mar 2020 14:22:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHpsW-0000FU-87; Fri, 27 Mar 2020 14:22:33 +0000
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
 [209.85.221.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4F7A320774;
 Fri, 27 Mar 2020 14:22:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585318951;
 bh=TYBu9ieERy+Ta4ICp1zRuWs/eR3KjO5IyGqncme6DJc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Qm0z3g39bQDBSrqz9++ujQKvtUBjNueacrWy37OBkqDntO3Gj19TmxguyvDh2QtRS
 KCzt2L26ha+faOp2qd9QYuW2Ul6gL70onVm2ixDr0UmbDwUXTW7mtAgqj+0mQZiHtZ
 ROBmTKm/m/ih1J4CnjeihLcTeQTZRL0j873B2/hU=
Received: by mail-wr1-f53.google.com with SMTP id j17so11556301wru.13;
 Fri, 27 Mar 2020 07:22:31 -0700 (PDT)
X-Gm-Message-State: ANhLgQ3OB640HrDek4ByoSME5+y86wV5IasYQZ/6OFGamRbjs6QrCoqb
 EikiBWcWhYuN1Rrj5PuGlTgzFusdnd/JV0XhsA==
X-Google-Smtp-Source: ADFU+vsE0Iq/qOsJLgem/9N0N8fAV8mgme65RNUzQmeCYNSDoKObf/LG9fWjTq9gzXMdb7KBtsJZ1NeEF0NZuYo0Rmc=
X-Received: by 2002:a5d:414f:: with SMTP id c15mr16766117wrq.60.1585318949779; 
 Fri, 27 Mar 2020 07:22:29 -0700 (PDT)
MIME-Version: 1.0
References: <20200326182742.487026-1-enric.balletbo@collabora.com>
In-Reply-To: <20200326182742.487026-1-enric.balletbo@collabora.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Fri, 27 Mar 2020 22:22:18 +0800
X-Gmail-Original-Message-ID: <CAAOTY_9vCtr6Y3Geg3wJ7FjTdo6iPc+bdwtJKDZahJAY3Tih8Q@mail.gmail.com>
Message-ID: <CAAOTY_9vCtr6Y3Geg3wJ7FjTdo6iPc+bdwtJKDZahJAY3Tih8Q@mail.gmail.com>
Subject: Re: [PATCH] soc: mediatek: mtk-mmsys: Export ddp_dis/connect symbols
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_072232_336055_172BA80E 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Nicolas Boichat <drinkcat@chromium.org>,
 Anders Roxell <anders.roxell@linaro.org>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, hsinyi@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Collabora Kernel ML <kernel@collabora.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIEVucmljOgoKRW5yaWMgQmFsbGV0Ym8gaSBTZXJyYSA8ZW5yaWMuYmFsbGV0Ym9AY29sbGFi
b3JhLmNvbT4g5pa8IDIwMjDlubQz5pyIMjfml6Ug6YCx5LqUIOS4iuWNiDI6Mjjlr6vpgZPvvJoK
Pgo+IFdoZW4gYnVpbGRpbmcgb24gYXJtNjQgd2l0aCBhbGxtb2Rjb25maWcgb3IgQ09ORklHX0RS
TV9NRURJQVRFSz1tIHdlIHNlZQo+IHRoZSBmb2xsb3dpbmcgZXJyb3IuCj4KPiAgIEVSUk9SOiBt
b2Rwb3N0OiAibXRrX21tc3lzX2RkcF9kaXNjb25uZWN0Igo+ICAgW2RyaXZlcnMvZ3B1L2RybS9t
ZWRpYXRlay9tZWRpYXRlay1kcm0ua29dIHVuZGVmaW5lZCEKPiAgIEVSUk9SOiBtb2Rwb3N0OiAi
bXRrX21tc3lzX2RkcF9jb25uZWN0Igo+ICAgW2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tZWRp
YXRlay1kcm0ua29dIHVuZGVmaW5lZCEKPgo+IEV4cG9ydCBtdGtfbW1zeXNfZGRwX2Nvbm5lY3Qg
YW5kIG10a19tbXN5c19kZHBfZGlzY29ubmVjdCBzeW1ib2xzIHRvIGJlCj4gYWJsZSB0byBiZSB1
c2VkIGZvciBvdGhlciBtb2R1bGVzLgo+CgpSZXZpZXdlZC1ieTogQ2h1bi1LdWFuZyBIdSA8Y2h1
bmt1YW5nLmh1QGtlcm5lbC5vcmc+CgoKPiBGaXhlczogMzk2YzNmY2NhZjAzICgic29jIC8gZHJt
OiBtZWRpYXRlazogTW92ZSByb3V0aW5nIGNvbnRyb2wgdG8gbW1zeXMgZGV2aWNlIikKPiBSZXBv
cnRlZC1ieTogQW5kZXJzIFJveGVsbCA8YW5kZXJzLnJveGVsbEBsaW5hcm8ub3JnPgo+IFNpZ25l
ZC1vZmYtYnk6IEVucmljIEJhbGxldGJvIGkgU2VycmEgPGVucmljLmJhbGxldGJvQGNvbGxhYm9y
YS5jb20+Cj4gLS0tCj4KPiAgZHJpdmVycy9zb2MvbWVkaWF0ZWsvbXRrLW1tc3lzLmMgfCAyICsr
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL3NvYy9tZWRpYXRlay9tdGstbW1zeXMuYyBiL2RyaXZlcnMvc29jL21lZGlhdGVrL210ay1t
bXN5cy5jCj4gaW5kZXggMzJhOTJlYzQ0N2M1Li4wNWUzMjJjOWMzMDEgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9zb2MvbWVkaWF0ZWsvbXRrLW1tc3lzLmMKPiArKysgYi9kcml2ZXJzL3NvYy9tZWRp
YXRlay9tdGstbW1zeXMuYwo+IEBAIC0yNTksNiArMjU5LDcgQEAgdm9pZCBtdGtfbW1zeXNfZGRw
X2Nvbm5lY3Qoc3RydWN0IGRldmljZSAqZGV2LAo+ICAgICAgICAgICAgICAgICB3cml0ZWxfcmVs
YXhlZChyZWcsIGNvbmZpZ19yZWdzICsgYWRkcik7Cj4gICAgICAgICB9Cj4gIH0KPiArRVhQT1JU
X1NZTUJPTF9HUEwobXRrX21tc3lzX2RkcF9jb25uZWN0KTsKPgo+ICB2b2lkIG10a19tbXN5c19k
ZHBfZGlzY29ubmVjdChzdHJ1Y3QgZGV2aWNlICpkZXYsCj4gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgZW51bSBtdGtfZGRwX2NvbXBfaWQgY3VyLAo+IEBAIC0yNzksNiArMjgwLDcgQEAg
dm9pZCBtdGtfbW1zeXNfZGRwX2Rpc2Nvbm5lY3Qoc3RydWN0IGRldmljZSAqZGV2LAo+ICAgICAg
ICAgICAgICAgICB3cml0ZWxfcmVsYXhlZChyZWcsIGNvbmZpZ19yZWdzICsgYWRkcik7Cj4gICAg
ICAgICB9Cj4gIH0KPiArRVhQT1JUX1NZTUJPTF9HUEwobXRrX21tc3lzX2RkcF9kaXNjb25uZWN0
KTsKPgo+ICBzdGF0aWMgaW50IG10a19tbXN5c19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNl
ICpwZGV2KQo+ICB7Cj4gLS0KPiAyLjI1LjEKPgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiBMaW51eC1tZWRpYXRlayBtYWlsaW5nIGxpc3QKPiBM
aW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
