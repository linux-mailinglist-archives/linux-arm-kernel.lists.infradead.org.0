Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2AEA1B2D7C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 18:56:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LVE1tkzZsZovtGPG28ynrapldjqrHQjaB1EETrdQIek=; b=O1nPDxFjNLt2Ie
	pmoVEyQ67iZbpITlnoN5WDcbSxSlln14OFV+9aWhoyTVmndH0PbpNZnHhVWjWgvt4pMASDVedOqMm
	EoWtdSC+EfASd1ML4erXOFdONVUWSkDuvAPRe9+PTSXtrTa1s0gZjepzuTk+zvx3isSsVFuXe/i06
	9D69A3X958xQZL+IWz/xLrtT5ZoBwiFCupDQjjF+at1EagwpeYnJR80ATzSw/sT8D19h8hFh0IVgB
	Om5AK9iXzrMC/NlUGgT0C+1dhkS1D9EvOrPhbFHy0Qs3Z3Sys8fff5I9f3qvKF5P6kHg9c/4NUFrx
	TNXX11xlAHAnWKtihU3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQwCJ-0006nb-FD; Tue, 21 Apr 2020 16:56:35 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQwC4-0006lS-Si
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 16:56:22 +0000
Received: by mail-vs1-xe43.google.com with SMTP id y185so8884243vsy.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 09:56:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=37fOrxE1fKmyrZcZ9uj9U00yYV6qcOdwlC6FHpWLz5o=;
 b=aJCwEkkTS7Lf+D5PtLNfxTG06ZCZMDnPCk2mronKD6jrzO3Pswn7YY1gtpWoVzO3IL
 F36IrlqgVicFqfIITTdcnj62P2dkVycu/TZrL51HyFU0l0BsX1x1LGxaIDT6IztoovH6
 bh4EwbmXnBInbOmk2EBYO7cApQ3YNW23VPmCqcUglyV1mFZoD0ZH/XADATAupn44qJy7
 DPFFErwP6gc1INmcHzDV0iZrrHvLu4aSktpONVbLZtk/ulBon2tTEnpUmd4TX0zkFZcq
 oq0vPn06xkcepeP2I1GOQ4wXJP/R8gURQ43Ri211jz/dNwRKmp7bZZ6o5uTYsfDvEUGN
 wIlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=37fOrxE1fKmyrZcZ9uj9U00yYV6qcOdwlC6FHpWLz5o=;
 b=T9qgn/Hs0cDVRLsAwVAkUK/t7jHHy7ef57ZTd92Mf7yaCuO6afp4Wr7LWf8gK7xoCp
 F8FUqxI0AG4IJ/iL0z4lxjQTmz2Qh9uN9Ph27Ihb2eBDO9wZKQm/qAQ6RIELyc/PkJUx
 uEvNMIdQLuNBfpISK0g5URpYGgilvV6ucIijz9qGJr8wspOBXILX5wlAvf15/WrYt9/I
 TENL3lm0yQIYDkxCMp6MOopmKFb5yg3cmZVEvBCti4hUc+4oT9O7sVnrSz5aT+JuPbKI
 q+EsGhFCjnmMy/xI4e59IE8In9y/XbXFQNUQdveN17iPHdNkkOP6XVNuR3uvWl2UtAjH
 NrxA==
X-Gm-Message-State: AGi0PubY4QLjyCvjJ2/zvJ//x++/aSfqBidTPGU20HQXzZj6DHE6ZVzp
 BrbqAxdFt0PiLKMq7xySRf2pmKXvYJFnlQi8XyU=
X-Google-Smtp-Source: APiQypIY18Sf6NoiOtOYbIxR9HPlyKzHoHfzV8rfCvZ4e9oUlqLt/eeDj+mCotV8G5ALwPIda1o4A6En/JPCDyZus3w=
X-Received: by 2002:a67:2dcb:: with SMTP id
 t194mr10831926vst.136.1587488178955; 
 Tue, 21 Apr 2020 09:56:18 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20200417181018epcas5p1e51c7ca0fe81df16554548df5b82e3e4@epcas5p1.samsung.com>
 <20200417175944.47189-1-alim.akhtar@samsung.com>
 <20200417175944.47189-7-alim.akhtar@samsung.com>
In-Reply-To: <20200417175944.47189-7-alim.akhtar@samsung.com>
From: Alim Akhtar <alim.akhtar@gmail.com>
Date: Tue, 21 Apr 2020 22:25:43 +0530
Message-ID: <CAGOxZ51jnbnHjVDQitbvSkrPH2=OdBKQHPnnT8yr+nKARud-WQ@mail.gmail.com>
Subject: Re: [PATCH v6 06/10] dt-bindings: phy: Document Samsung UFS PHY
 bindings
To: Alim Akhtar <alim.akhtar@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_095620_937808_FC291481 
X-CRM114-Status: GOOD (  14.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [alim.akhtar[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: robh <robh@kernel.org>, linux-samsung-soc@vger.kernel.org,
 linux-scsi@vger.kernel.org, "Martin K. Petersen" <martin.petersen@oracle.com>,
 devicetree@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Kiwoong Kim <kwmad.kim@samsung.com>,
 Avri Altman <avri.altman@wdc.com>, Can Guo <cang@codeaurora.org>,
 Stanley Chu <stanley.chu@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUm9iClJlcXVlc3QgeW91IHRvIGNvbW1lbnQgb24gdGhpcyBkdC1iaW5kaW5ncyBkb2N1bWVu
dGF0aW9uLgpUaGFua3MKCk9uIEZyaSwgQXByIDE3LCAyMDIwIGF0IDExOjQzIFBNIEFsaW0gQWto
dGFyIDxhbGltLmFraHRhckBzYW1zdW5nLmNvbT4gd3JvdGU6Cj4KPiBUaGlzIHBhdGNoIGRvY3Vt
ZW50cyBTYW1zdW5nIFVGUyBQSFkgZGV2aWNlIHRyZWUgYmluZGluZ3MKPgo+IFNpZ25lZC1vZmYt
Ynk6IEFsaW0gQWtodGFyIDxhbGltLmFraHRhckBzYW1zdW5nLmNvbT4KPiBUZXN0ZWQtYnk6IFBh
d2XFgiBDaG1pZWwgPHBhd2VsLm1pa29sYWouY2htaWVsQGdtYWlsLmNvbT4KPiAtLS0KPiAgLi4u
L2JpbmRpbmdzL3BoeS9zYW1zdW5nLHVmcy1waHkueWFtbCAgICAgICAgIHwgNzQgKysrKysrKysr
KysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNzQgaW5zZXJ0aW9ucygrKQo+ICBjcmVhdGUg
bW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9zYW1zdW5n
LHVmcy1waHkueWFtbAo+Cj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9waHkvc2Ftc3VuZyx1ZnMtcGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvcGh5L3NhbXN1bmcsdWZzLXBoeS55YW1sCj4gbmV3IGZpbGUgbW9kZSAxMDA2
NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAuLjM1MmQ1ZGRhMzIwZAo+IC0tLSAvZGV2L251bGwKPiAr
KysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3NhbXN1bmcsdWZzLXBo
eS55YW1sCj4gQEAgLTAsMCArMSw3NCBAQAo+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBH
UEwtMi4wLW9ubHkgT1IgQlNELTItQ2xhdXNlCj4gKyVZQU1MIDEuMgo+ICstLS0KPiArJGlkOiBo
dHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9waHkvc2Ftc3VuZyx1ZnMtcGh5LnlhbWwjCj4g
KyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29yZS55YW1sIwo+
ICsKPiArdGl0bGU6IFNhbXN1bmcgU29DIHNlcmllcyBVRlMgUEhZIERldmljZSBUcmVlIEJpbmRp
bmdzCj4gKwo+ICttYWludGFpbmVyczoKPiArICAtIEFsaW0gQWtodGFyIDxhbGltLmFraHRhckBz
YW1zdW5nLmNvbT4KPiArCj4gK3Byb3BlcnRpZXM6Cj4gKyAgIiNwaHktY2VsbHMiOgo+ICsgICAg
Y29uc3Q6IDAKPiArCj4gKyAgY29tcGF0aWJsZToKPiArICAgIGVudW06Cj4gKyAgICAgIC0gc2Ft
c3VuZyxleHlub3M3LXVmcy1waHkKPiArCj4gKyAgcmVnOgo+ICsgICAgbWF4SXRlbXM6IDEKPiAr
ICAgIGRlc2NyaXB0aW9uOiBQSFkgYmFzZSByZWdpc3RlciBhZGRyZXNzCj4gKwo+ICsgIHJlZy1u
YW1lczoKPiArICAgIGl0ZW1zOgo+ICsgICAgICAtIGNvbnN0OiBwaHktcG1hCj4gKwo+ICsgIGNs
b2NrczoKPiArICAgIGl0ZW1zOgo+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBQTEwgcmVmZXJlbmNl
IGNsb2NrCj4gKyAgICAgIC0gZGVzY3JpcHRpb246IHN5bWJvbCBjbG9jayBmb3IgaW5wdXQgc3lt
Ym9sICggcngwLWNoMCBzeW1ib2wgY2xvY2spCj4gKyAgICAgIC0gZGVzY3JpcHRpb246IHN5bWJv
bCBjbG9jayBmb3IgaW5wdXQgc3ltYm9sICggcngxLWNoMSBzeW1ib2wgY2xvY2spCj4gKyAgICAg
IC0gZGVzY3JpcHRpb246IHN5bWJvbCBjbG9jayBmb3Igb3V0cHV0IHN5bWJvbCAoIHR4MCBzeW1i
b2wgY2xvY2spCj4gKwo+ICsgIGNsb2NrLW5hbWVzOgo+ICsgICAgaXRlbXM6Cj4gKyAgICAgIC0g
Y29uc3Q6IHJlZl9jbGsKPiArICAgICAgLSBjb25zdDogcngxX3N5bWJvbF9jbGsKPiArICAgICAg
LSBjb25zdDogcngwX3N5bWJvbF9jbGsKPiArICAgICAgLSBjb25zdDogdHgwX3N5bWJvbF9jbGsK
PiArCj4gKyAgc2Ftc3VuZyxwbXUtc3lzY29uOgo+ICsgICAgJHJlZjogJy9zY2hlbWFzL3R5cGVz
LnlhbWwjL2RlZmluaXRpb25zL3BoYW5kbGUnCj4gKyAgICBkZXNjcmlwdGlvbjogcGhhbmRsZSBm
b3IgUE1VIHN5c3RlbSBjb250cm9sbGVyIGludGVyZmFjZSwgdXNlZCB0bwo+ICsgICAgICAgICAg
ICAgICAgIGNvbnRyb2wgcG11IHJlZ2lzdGVycyBiaXRzIGZvciB1ZnMgbS1waHkKPiArCj4gK3Jl
cXVpcmVkOgo+ICsgIC0gIiNwaHktY2VsbHMiCj4gKyAgLSBjb21wYXRpYmxlCj4gKyAgLSByZWcK
PiArICAtIHJlZy1uYW1lcwo+ICsgIC0gY2xvY2tzCj4gKyAgLSBjbG9jay1uYW1lcwo+ICsgIC0g
c2Ftc3VuZyxwbXUtc3lzY29uCj4gKwo+ICtleGFtcGxlczoKPiArICAtIHwKPiArICAgICNpbmNs
dWRlIDxkdC1iaW5kaW5ncy9jbG9jay9leHlub3M3LWNsay5oPgo+ICsKPiArICAgIHVmc19waHk6
IHVmcy1waHlAMTU1NzE4MDAgewo+ICsgICAgICAgIGNvbXBhdGlibGUgPSAic2Ftc3VuZyxleHlu
b3M3LXVmcy1waHkiOwo+ICsgICAgICAgIHJlZyA9IDwweDE1NTcxODAwIDB4MjQwPjsKPiArICAg
ICAgICByZWctbmFtZXMgPSAicGh5LXBtYSI7Cj4gKyAgICAgICAgc2Ftc3VuZyxwbXUtc3lzY29u
ID0gPCZwbXVfc3lzdGVtX2NvbnRyb2xsZXI+Owo+ICsgICAgICAgICNwaHktY2VsbHMgPSA8MD47
Cj4gKyAgICAgICAgY2xvY2tzID0gPCZjbG9ja19mc3lzMSBTQ0xLX0NPTUJPX1BIWV9FTUJFRERF
RF8yNk0+LAo+ICsgICAgICAgICAgICAgICAgIDwmY2xvY2tfZnN5czEgUEhZQ0xLX1VGUzIwX1JY
MV9TWU1CT0xfVVNFUj4sCj4gKyAgICAgICAgICAgICAgICAgPCZjbG9ja19mc3lzMSBQSFlDTEtf
VUZTMjBfUlgwX1NZTUJPTF9VU0VSPiwKPiArICAgICAgICAgICAgICAgICA8JmNsb2NrX2ZzeXMx
IFBIWUNMS19VRlMyMF9UWDBfU1lNQk9MX1VTRVI+Owo+ICsgICAgICAgIGNsb2NrLW5hbWVzID0g
InJlZl9jbGsiLCAicngxX3N5bWJvbF9jbGsiLAo+ICsgICAgICAgICAgICAgICAgICAgICAgInJ4
MF9zeW1ib2xfY2xrIiwgInR4MF9zeW1ib2xfY2xrIjsKPiArCj4gKyAgICB9Owo+ICsuLi4KPiAt
LQo+IDIuMTcuMQo+CgoKLS0gClJlZ2FyZHMsCkFsaW0KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
