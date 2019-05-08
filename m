Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F28A11789B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 13:45:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7/JR6QYDgcPUz7ticqC+/ojLYXraOzZHwZg2wa0hWz8=; b=DlRtmFXmB0565z
	6ZA+agtceaKbeDVq1dGYQmUgqrkQPbS+iUFOr0d1Lvb8V+dNH8L1sqbYSoIAUjg8X6I2TlBtCGHzW
	T5oMxSR4Q0Qw2tR6h77iyRjxVWOL9ucS6L0qktSO2X+n2JrVZ1cQx4Ck1+OacPrRyx4lDWTK6qyYk
	EyWTBYpprQcFK3LU0sSvTInqfzranN5ZwObJiUuqqRMxpHAIBUdc5lp26mglKBPkJ4oOkUSo8dzbZ
	9a9+0ZNpdO4Z+JtGJr9j9teFd+nd2yCsPTyEM7OhA8dDCXxZKJdONGL20tmjMh1tNEUniCuovTAwc
	IAFeT2emm3Px/j1+n09w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOL1H-0004bk-Fz; Wed, 08 May 2019 11:45:55 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOL0P-0002Ad-FT
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 11:45:11 +0000
Received: by mail-wm1-x342.google.com with SMTP id y2so2852584wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 04:45:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=l3GvcY7+LxbIORg1GuBtuIu7AC5wBX2cmnXnWgsKaLM=;
 b=gomqhzozH1rPJo3UJO0LZmi16/eDaOhei9FnFZbmPkMw+Ae+GpcAXhcWY/fbEQ7Mcd
 jfm+RSPSYQH+M2R/mAdCvtQ2z7hEmftDMLlfvH1EQhWzs/Y9dAEcQ0zrv/WMy2Jz/bVI
 s8gRF2XMt7TNmzxX9sRGkt/DlL97XTbncGL8s1KPNtiR4SKKtALPOzi6BQVgtgLyvpdL
 gGO8tvk6um9LyLYMLIV0uOffPgRE0mlHJm+VaQiSUaSiMC149so0mcLKfzNW2Nu54BV9
 ezygmQAuvEgCeK3CrKIz0EqNqgcgwWbLODiLXKjl0ZwSYyRpWJS+esOiqDdy6r5XNqIF
 tDNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=l3GvcY7+LxbIORg1GuBtuIu7AC5wBX2cmnXnWgsKaLM=;
 b=nYvX5alVDzD0Wgedgc7tGJBcLuqE/HdYkqTYP3NTEs4BflBRnZw1PYa+6mFo5fCR4f
 xq8azQu42k0GAMLV52xiJQHP5/Mas6qiB6TO3CmYXXw4DJ9thh8kUf9c6AWdIvEauKrf
 kibJG2qzQznVxOh7uXkD6uunUEYcWhTwxxeORSQBso0TJ+3cGaBKrMrHjRKOzPijTpLk
 DaGcK1MtpghRXJmFcl5Hn1iYw+t1sSX8u2sdm2pcF4nhxxHqONq9xkKLvWETzouESaax
 B17o3EdUiXhLBiqYHa07s4YW4kg72dtKaaPYhNOeCTsuVYY/NQe8zeslWBRBbboi2+aW
 98xQ==
X-Gm-Message-State: APjAAAUeurgxw5x92NPG053t6WTnAHxn83GdkOv1peUoC94NSevue0RW
 vc4tH4FXfg+Cpl5Nh1UhHqqjRQ==
X-Google-Smtp-Source: APXvYqzbsOXVFvnhQCKFgeir9JCHCmFZIU6UKosT98os4blSJ2GmkYH6+ek8sOTv5dGFKfg8zfirIg==
X-Received: by 2002:a7b:c3c3:: with SMTP id t3mr2714770wmj.88.1557315899750;
 Wed, 08 May 2019 04:44:59 -0700 (PDT)
Received: from dell ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id m8sm28373099wrg.18.2019.05.08.04.44.58
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 08 May 2019 04:44:58 -0700 (PDT)
Date: Wed, 8 May 2019 12:44:56 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Yangtao Li <tiny.windzz@gmail.com>
Subject: Re: [PATCH 5/7] dt-bindings: mfd: Add H6 GPADC binding
Message-ID: <20190508114456.GF31645@dell>
References: <20190503072813.2719-1-tiny.windzz@gmail.com>
 <20190503072813.2719-6-tiny.windzz@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190503072813.2719-6-tiny.windzz@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_044502_620582_EAB2B613 
X-CRM114-Status: GOOD (  17.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lars@metafoo.de,
 maxime.ripard@bootlin.com, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, wens@csie.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, pmeerw@pmeerw.net, knaack.h@gmx.de,
 jic23@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAwMyBNYXkgMjAxOSwgWWFuZ3RhbyBMaSB3cm90ZToKCj4gVGhpcyBwYXRjaCBhZGRz
IGRvY3VtZW50YXRpb24gZm9yIHRoZSBINiBHUEFEQyBiaW5kaW5nLgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IFlhbmd0YW8gTGkgPHRpbnkud2luZHp6QGdtYWlsLmNvbT4KPiAtLS0KPiAgLi4uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvbWZkL3N1bjRpLWdwYWRjLnR4dCAgIHwgMjcgKysrKysrKysrKysrKysr
KystLQo+ICAxIGZpbGUgY2hhbmdlZCwgMjUgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkK
PiAKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9z
dW40aS1ncGFkYy50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL3N1
bjRpLWdwYWRjLnR4dAo+IGluZGV4IDg2ZGQ4MTkxYjA0Yy4uZWVhZjI3ZWI4YWJkIDEwMDY0NAo+
IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvc3VuNGktZ3BhZGMu
dHh0Cj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9zdW40aS1n
cGFkYy50eHQKPiBAQCAtNSwxMSArNSwyMiBAQCBhbmQgc29tZXRpbWVzIGFzIGEgdG91Y2hzY3Jl
ZW4gY29udHJvbGxlci4KPiAgCj4gIFJlcXVpcmVkIHByb3BlcnRpZXM6Cj4gICAgLSBjb21wYXRp
YmxlOiAiYWxsd2lubmVyLHN1bjhpLWEzMy10aHMiLAo+ICsJCSJhbGx3aW5uZXIsc3VuNTBpLWg2
LXRocyIsCj4gICAgLSByZWc6IG1taW8gYWRkcmVzcyByYW5nZSBvZiB0aGUgY2hpcCwKPiAtICAt
ICN0aGVybWFsLXNlbnNvci1jZWxsczogc2hhbGwgYmUgMCwKPiArICAtICN0aGVybWFsLXNlbnNv
ci1jZWxsczogc2hhbGwgYmUgMCBmb3Igc3VuOGktYTMzLXRocywKPiArCQkJICAgc2hhbGwgYmUg
MSBmb3Igc3VuNTBpLWg2LXRocywKPiAgICAtICNpby1jaGFubmVsLWNlbGxzOiBzaGFsbCBiZSAw
LAo+ICAKPiAtRXhhbXBsZToKPiArT3B0aW9uYWwgcHJvcGVydGllczoKPiArICAtIGNsb2Nrczog
TXVzdCBjb250YWluIGFuIGVudHJ5IGZvciBlYWNoIGVudHJ5IGluIGNsb2NrLW5hbWVzLgo+ICsJ
ICAgIFNlZSBjb21tb24gY2xvY2stYmluZGluZ3MudHh0IGZvciBkZXRhaWxzLgoKTml0OiBUaGlz
IHNob3VsZCBiZSBhIHJlbGF0aXZlIHBhdGgsIGxpa2UgdGhlIHJlc2V0LnR4dCBiZWxvdy4KCj4g
KyAgLSBjbG9jay1uYW1lczogQSBsaXN0IG9mIGNsb2NrIG5hbWVzLiBGb3Igc3VuNTBpLWg2LXRo
cywgaXQgbXVzdCBjb250YWluCj4gKwkJICJidXMiLgo+ICsgIC0gcmVzZXRzOiBNdXN0IGNvbnRh
aW4gYW4gZW50cnkgZm9yIGVhY2ggZW50cnkgaW4gcmVzZXQtbmFtZXMuCj4gKwkgICAgU2VlIC4u
L3Jlc2V0L3Jlc2V0LnR4dCBmb3IgZGV0YWlscy4KPiArICAtIHJlc2V0LW5hbWVzOiBGb3Igc3Vu
NTBpLWg2LXRocywgaXQgbXVzdCBjb250YWluICJidXMiLgo+ICsKPiArRXhhbXBsZTE6Cj4gIAl0
aHM6IHRoc0AxYzI1MDAwIHsKPiAgCQljb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW44aS1hMzMt
dGhzIjsKPiAgCQlyZWcgPSA8MHgwMWMyNTAwMCAweDEwMD47Cj4gQEAgLTE3LDYgKzI4LDE4IEBA
IEV4YW1wbGU6Cj4gIAkJI2lvLWNoYW5uZWwtY2VsbHMgPSA8MD47Cj4gIAl9Owo+ICAKPiArRXhh
bXBsZTI6Cj4gKwl0aHM6IHRoc0AxYzI1MDAwIHsKPiArCQljb21wYXRpYmxlID0gImFsbHdpbm5l
cixzdW41MGktaDYtdGhzIjsKPiArCQlyZWcgPSA8MHgwNTA3MDQwMCAweDEwMD47Cj4gKwkJY2xv
Y2tzID0gPCZjY3UgQ0xLX0JVU19USFM+Owo+ICsJCWNsb2NrLW5hbWVzID0gImJ1cyI7Cj4gKwkJ
cmVzZXRzID0gPCZjY3UgUlNUX0JVU19USFM+Owo+ICsJCXJlc2V0LW5hbWVzID0gImJ1cyI7Cj4g
KwkJI3RoZXJtYWwtc2Vuc29yLWNlbGxzID0gPDE+Owo+ICsJCSNpby1jaGFubmVsLWNlbGxzID0g
PDA+Owo+ICsgICAgICAgfTsKPiArCj4gIHN1bjRpLCBzdW41aSBhbmQgc3VuNmkgU29DcyBhcmUg
YWxzbyBzdXBwb3J0ZWQgdmlhIHRoZSBvbGRlciBiaW5kaW5nOgo+ICAKPiAgc3VuNGkgcmVzaXN0
aXZlIHRvdWNoc2NyZWVuIGNvbnRyb2xsZXIKCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KTGlu
YXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNv
ZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBC
bG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
