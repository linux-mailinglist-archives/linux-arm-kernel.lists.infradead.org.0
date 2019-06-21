Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09D264EB83
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 17:05:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TSgaML4P1ZGEpycVBeqmSowYc+OsowBlpuaxdKA+BIo=; b=a10EmhfTeMa8vs
	sHjEa5ufWpyf98zpwKN0cZW3nyUSgL5VlRtFciKD9R000WvktJTw8+e2G79roDKoY+KSmWtEa7t26
	g39f2vLWFnPBJCA005WigyBbTv5PhlUDNnn9I1PSENRIf9tgKaAyWGcqYyDXCnI3NexSfk2q045xz
	wmcGb/kmutKlnx38Q1SLVbuX8hZSzh9yxmczwm4h2HUMIa/1QqTcHdXkbiUoF5ertJwia03mVs6sq
	ujpF/5MxE/fs+XWcWG0SG8szU9mewgVbelRK/6EaZNOuPvHphEjjEDIToqpXlqcyWWeO1VPsOer/l
	Zlie8KNpOhMjo2ZuIB6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heL61-0005tc-P0; Fri, 21 Jun 2019 15:04:57 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heL5k-0005sh-S8
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 15:04:44 +0000
Received: by mail-vs1-xe41.google.com with SMTP id l125so4037748vsl.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Jun 2019 08:04:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=z7+8itbNjVbWEFVe7Q1gJ/IkKA5Mvml8D7msm2siMus=;
 b=k21ZM2uDf46eU5l4FsI4bUX5Fz3bLPpM7Y17vqd+3+fdIeMyYxeaM3nak9TyHc6IIQ
 JhXpvZAe55+ABxcBUIuJFP2KUAjIXPrZq4eIChJlsOqRVHC9jLLT8N3lq0/YtiNymP25
 DE4TBZwMQX2zcZR33spJ/eNJRBA91MIi8wBhFJaONCraODhYxVxgpnWWiusKeIVo7C7U
 2hFeH6EfajspdHsQ9As2jMSgmISE/0wyMHr4Ti7vuuj/vk9MbvLJ7LyRB/2fdlG3fx1m
 Ji3CiUE/uFZTrhasxlddJSMjRCxg3Nsf/iwIAaXBt9S6e3R6N1yrJQCIz8P1Neiki3/o
 P7KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=z7+8itbNjVbWEFVe7Q1gJ/IkKA5Mvml8D7msm2siMus=;
 b=HyyLF/maLdKS49qRm1tTKqHQFtQHLfjcK32ypFdvYdQRNJ57H0vV0ndbCRSQrrM7tF
 KnFsuyPe61EPcCOp9ZlMLOiASV4auwloKaE5r9ZSVMs+9gEbBWiIG5PyPIzR/d7rhnX2
 ZpJFpx6Zog394ojGPzdj9p5ofvMCYgkaKmRXWsIindg7+kW3VpY3s80OuFhpbjUwJdjv
 FUFiqs9cL+NFOnmRDPCvxesBYpmOcsYXZlnHORqrFyTcW8S0YS3Adom5CbMNcEBWXf3X
 X3GxxVDVGkQhVMjVsOv5swhp40Gm+AOkoIHWLw9Cqt3+JP0TswlCaECAJ3kyfaite1mw
 ZXLA==
X-Gm-Message-State: APjAAAXxbiZbYLNydyz5QyamOROxrD739JGUz26dNpxAe5Ije87dzFdi
 NO9pPPtpLfvxcyTPhagkgAQpiq0qp5Lw7kcZZb4=
X-Google-Smtp-Source: APXvYqxECcqND+//GgSQB85ap31qfmlFHuFLGwtL3cSpYFZCGpYTkiWbdu3HJZp78o4a27K8jrdR1u3H5B9LypVNee4=
X-Received: by 2002:a67:320c:: with SMTP id y12mr8546999vsy.30.1561129479136; 
 Fri, 21 Jun 2019 08:04:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAOuPNLiBA9VjEoG_D2y2O5mKiqsDNW1VZXOk1eWXpGY+h86acg@mail.gmail.com>
 <CAOMZO5BcLaS0gXUPi6oN6vjqagS5yf+rHh+EUjmi-Wi1OX7vqQ@mail.gmail.com>
 <CAOuPNLgEEfDca4aeT1+q8GfUfGzbJ4x6JwGf-ROB1pgpXUBHSw@mail.gmail.com>
 <CAOMZO5BY8JcLNMCRCC_d=emy8HR6kE=dB9f5qfZ=ci_c+Jak0w@mail.gmail.com>
 <CAOuPNLjYhkP_kL+q-ZpiDZMMpOHrU88BFBc2agtnCzXt8dihOg@mail.gmail.com>
 <20190619150406.GB19346@kroah.com>
 <CAOuPNLgYN3FDvNsaWqom45h7aFz=HczDdL-QoHOc_Sreqf8T2g@mail.gmail.com>
 <22247.1560961607@turing-police>
In-Reply-To: <22247.1560961607@turing-police>
From: Pintu Agarwal <pintu.ping@gmail.com>
Date: Fri, 21 Jun 2019 20:34:27 +0530
Message-ID: <CAOuPNLigooUw7RUj-tYX7isZg2FYRiq=15jduKJy-z6JgPLVVg@mail.gmail.com>
Subject: Re: [IMX] [DRM]: suspend/resume support
To: =?UTF-8?Q?Valdis_Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_080440_905358_B5C06A37 
X-CRM114-Status: GOOD (  15.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pintu.ping[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kernelnewbies <kernelnewbies@kernelnewbies.org>, Greg KH <greg@kroah.com>,
 linux-pm@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBKdW4gMTksIDIwMTkgYXQgOTo1NiBQTSBWYWxkaXMgS2zEk3RuaWVrcwo8dmFsZGlz
LmtsZXRuaWVrc0B2dC5lZHU+IHdyb3RlOgo+Cj4gT24gV2VkLCAxOSBKdW4gMjAxOSAyMDo0Nzoz
NCArMDUzMCwgUGludHUgQWdhcndhbCBzYWlkOgo+Cj4gPiBObyBJIG1lYW4gdG8gc2F5LCB0aGVy
ZSBhcmUgbG90cyBvZiBmZWF0dXJlcyBhbmQgY3VzdG9taXphdGlvbiBhbHJlYWR5Cj4gPiBkb25l
IG9uIHRoaXMgdmVyc2lvbiBhbmQgc3RhYmlsaXplZC4KPiA+IFVwZ3JhZGluZyBhZ2FpbiBtYXkg
cmVxdWlyZSBtb250aHMgb2YgZWZmb3J0Lgo+Cj4gVGhpcyBpcyB3aGF0IGhhcHBlbnMgd2hlbiB5
b3UgZG9uJ3QgdXBzdHJlYW0geW91ciBsb2NhbCBjaGFuZ2VzLgo+Cj4gQW5kIG5vLCBzYXlpbmcg
IkJ1dCB3ZSdyZSBhIHNtYWxsIGNvbXBhbnkgYW5kIG5vYm9keSBjYXJlcyIgaXNuJ3QgYW4KPiBl
eGN1c2UgLSBMaW51eCBjYXJyaWVkIHRoZSBlbnRpcmUgVm95YWdlciBhcmNoaXRlY3R1cmUgYXJv
dW5kIGZvciBzZXZlcmFsIHllYXJzCj4gZm9yIDIgbWFjaGluZXMuIE5vdCB0d28gbW9kZWxzLCAy
IHBoeXNpY2FsIG1hY2hpbmVzLCB0aGUgbGFzdCAyIG9wZXJhdGlvbmFsCj4gc3lzdGVtcyBvZiB0
aGUgcHJvZHVjdCBsaW5lLgo+Cj4gKE5vdCB0aGUgWHVidW50dS1iYXNlZCBWb3lhZ2UgZGlzdHJp
YnV0aW9uIGVpdGhlciAtIHRoZSBWb3lhZ2VyIHdhcyBhIG1pZC04MHMKPiBTTVAgZmF1bHQtdG9s
ZXJhbnQgc3lzdGVtIGZyb20gTkNSIHdpdGggdXAgdG8gMzIgNDg2LzU4NiBjb3JlcyBhbmQgNEcg
b2YKPiBtZW1vcnksIHdoaWNoIHdhcyBhIGhvbmtpbmcgYmlnIHN5c3RlbSBmb3IgdGhlIGRheS4u
LikKPgo+IGh0dHBzOi8va2VybmVsLmdvb2dsZXNvdXJjZS5jb20vcHViL3NjbS9saW51eC9rZXJu
ZWwvZ2l0L3J6aGFuZy9saW51eC8rL3YyLjYuMjAtcmMxL0RvY3VtZW50YXRpb24vdm95YWdlci50
eHQKPgo+IFRoZSBhcmNoaXRlY3R1cmUgd2FzIGZpbmFsbHkgZHJvcHBlZCBpbiAyMDA5IHdoZW4g
ZW5vdWdoIGhhcmR3YXJlIGZhaWx1cmVzCj4gaGFkIGhhcHBlbmVkIHRoYXQgSmFtZXMgQm90dG9t
bGV5IHdhcyB1bmFibGUgdG8gY3JlYXRlIGEgYm9vdGFibGUKPiBzeXN0ZW0gZnJvbSB0aGUgcGFy
dHMgZnJvbSBib3RoLi4uCj4KPiBTbyBpZiB5b3VyIHByb2R1Y3Rpb24gcnVuIGlzIHNldmVyYWwg
dGhvdXNhbmQgc3lzdGVtcywgdGhhdCdzICpwbGVudHkqIGJpZwo+IGVub3VnaCBmb3IgcGF0Y2hl
cyBhbmQgZHJpdmVycyAoZXNwZWNpYWxseSBzaW5jZSBkcml2ZXJzIGZvciBoYXJkd2FyZSB5b3UK
PiBpbmNsdWRlZCBpbiB5b3VyIHNldmVyYWwtdGhvdXNhbmQgc3lzdGVtIHJ1biBhcmUgYWxzbyBs
aWtlbHkgYXBwbGljYWJsZSB0bwo+IGEgaGFsZiBkb3plbiBvdGhlciB2ZW5kb3JzIHdobyBtYWRl
IHNldmVyYWwgdGhvdXNhbmQgc3lzdGVtcyB1c2luZyB0aGUKPiBzYW1lIGNoaXBzZXQuLi4uCgpZ
ZXMsIEkgYWdyZWUsIGJ1dCB1bmZvcnR1bmF0ZWx5IEkgZG9uJ3QgaGF2ZSBhbnkgY29udHJvbC4K
SSBub3JtYWxseSBrZWVwIGZpbmRpbmcgdGhpbmdzLCB3aGljaCBzZWVtcyBpbnRlcmVzdGluZyBm
b3IgbWUgYW5kCnByb3Bvc2UgZm9yIHVwc3RyZWFtIChldmVuIGlmIGl0IGlzIHZlcnkgc21hbGwp
LgpBbmQsIEkgY29tcGxldGVseSBhZ3JlZSB0aGF0IHN5c3RlbSBzaG91bGQgYmUgZGVzaWduZWQg
c3VjaCBhIHdheSB0aGF0Cml0IGNhbiBiZSBlYXNpbHkgdXAtZ3JhZGFibGUuCkJ1dCwgYXMgSSBz
YWlkLCBpdHMgbm90IGZ1bGx5IGluIG91ciBoYW5kIDooCgpBbHNvLCBJIHRoaW5rIHRoaXMgY2Fz
ZSBpcyBzbGlnaHRseSBkaWZmZXJlbnQuCkhlcmUsIGV2ZW4gaWYgSSB0cnkgd2l0aCBsYXRlc3Qg
a2VybmVsLCB0aGVyZSBpcyBubyB1c2UsIHNpbmNlCmhpYmVybmF0aW9uIGZlYXR1cmUgaXMgbm90
IGZ1bGx5IHN1cHBvcnQgZm9yIElNWC4KQW5kIEkgdGhpbmsgdGhhdCBpcyBhbHJlYWR5IGtub3du
LgpJIGNhbWUgaGVyZSBsb29raW5nIGZvciBzb21lIHBvaW50ZXJzIGFuZCBoZWxwIGFuZCBnZXQg
c29tZSBjbHVlIHRvCnByb2NlZWQgZnVydGhlci4KSWYgSSBzdWNjZWVkIGluIG1ha2luZyBpdCBJ
IHdpbGwgZGVmaW5pdGVseSBsaWtlIHRvIGNvbnRyaWJ1dGUgdXBzdHJlYW0gOikKClRoYW5rIFlv
dSEKClJlZ2FyZHMsClBpbnR1CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
