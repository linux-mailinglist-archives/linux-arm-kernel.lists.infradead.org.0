Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50EE8172AE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 09:35:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UEKYeAVCsiHDeOcGUcFzX+mv/LuifQ8x8jznkwR6OMg=; b=RIeVZpAJMqhbJ/
	LQeU0ZtPyMkFP3SCkl0oww3lx3yVNZyjNpbw/DiaACIKc2XP+vtvbwDM0087U5qhXnxEevOZh5dJK
	Td3hZN7zaTIXr3UQKyP2FKYCVljaJEh/OdgaJ5uZsdWJfXbxT56u1SGDiNVHJKpNiaQ+kVsbWEhb4
	HEQclk4jDwP8gvQoGNDdDyStSXgvdADEw2I1Q/yGg0Iq+FfjLHVHwk2htxwRE7FlN3HTsEG6cNaTl
	ywunZiqk/T6TCM1kjBrQAG96CbM1TPa+ZJQ5MDZoUki58DgnuXF5upT+u/pAIkdvMhGfnciTAeDVh
	cYQ4Y/WPtsnAwx/2JZJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOH6c-0002bI-KS; Wed, 08 May 2019 07:35:10 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOH6R-0002Rh-CW
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 07:35:00 +0000
Received: by mail-io1-xd44.google.com with SMTP id y6so16385000ior.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 00:34:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=06vNhGWmXv8aMKwZVKHjsvRsD+uYUkrBPC/S7+NBkoE=;
 b=apWVfaiDZ1exPIwVVASJ59UGwhjBA1P2k6aCr1J79HXmlETcO4h4+8A3DyPvaXxtP6
 fw4y8+fGxb4LyrRdyX+6xiWjwG389N+mdjgKCCb4W7AVXEmhrcudC6rHkrGHLri0BdjL
 I4NTI4Y6kDVR9F9So8ZW2+jhqhA52TSCtIhHdf9uPULVaqUzAliGmBdCYqZZn+R9xaD+
 3UePL7TQHw3sRBUHY9X8AhEQurjjCJTYQ7WD/B6gu3tTQsJ0lqTKqWbvpSNpj3zo6Krf
 /UA+vaCQYxMCjOBotAe90BID+G/PPngIBiWd/w3YfQjLYX487puI1u8KsX/QtxyHLFO1
 e/dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=06vNhGWmXv8aMKwZVKHjsvRsD+uYUkrBPC/S7+NBkoE=;
 b=pPikNHc06yrOV7J4/9ge+Bp0Ij9CDjz2i5Nc3xuj4xD0aF+I9KglBRjylsMBQDYY7C
 AVEP8FNtKJGLReSCGp41BSxUXFvzFwGaRD7cEC/cMk9VNgDpA4XdwhG5tFSfsBlIbEts
 NkT8zwNTG3VuRovNjHSVqlTb6t1ga715E3bUH4nqtx2xkixcXgUjGn6glqvjtrUxPFNV
 MzEY0g8PdCxj/+uaQ3dTJlqhSLe0tM0sKigGEyFekLpYH8YlBSS0XVCnhNcLlDJNgrLu
 Y7IRzdYb2A16dtUKLmQWAq7CGVY0/61tf0PFXVTIcmaBg0qlNGty3WCmaQYFCsrS07FV
 1Whg==
X-Gm-Message-State: APjAAAUAeD6yUgQxkFOsuKAbYWXIHl8EwVQCJ2goQv9hGRi6yazTB+CP
 tbN+vLgKYbbyA5S8Q2dAp2I=
X-Google-Smtp-Source: APXvYqwF9H/7HCZIz5Tn+Hj7eOSVa+HOFngsAGECdBjmi6GEuIUO3hqq+2bK57608GUBAZptqroXbQ==
X-Received: by 2002:a6b:5814:: with SMTP id m20mr11060978iob.293.1557300897335; 
 Wed, 08 May 2019 00:34:57 -0700 (PDT)
Received: from icarus ([2001:268:c1c0:b600:c70:4af9:86e2:2])
 by smtp.gmail.com with ESMTPSA id 81sm799787itv.23.2019.05.08.00.34.51
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 08 May 2019 00:34:56 -0700 (PDT)
Date: Wed, 8 May 2019 16:34:34 +0900
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Subject: Re: [PATCH] IIO: stm32: Remove quadrature related functions from
 trigger driver
Message-ID: <20190508073434.GA3277@icarus>
References: <20190507091224.17781-1-benjamin.gaignard@st.com>
 <20190507101729.GA3420@icarus>
 <CA+M3ks4LhOFTeArnh3d=C02qLJWj_u6tWDDOhD8kZnJPRkXC8w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+M3ks4LhOFTeArnh3d=C02qLJWj_u6tWDDOhD8kZnJPRkXC8w@mail.gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_003459_454960_278669B5 
X-CRM114-Status: GOOD (  18.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vilhelm.gray[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Lars-Peter Clausen <lars@metafoo.de>,
 Benjamin Gaignard <benjamin.gaignard@st.com>, linux-iio@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jonathan Cameron <jic23@kernel.org>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBNYXkgMDcsIDIwMTkgYXQgMDI6Mzc6MDdQTSArMDIwMCwgQmVuamFtaW4gR2FpZ25h
cmQgd3JvdGU6Cj4gTGUgbWFyLiA3IG1haSAyMDE5IMOgIDEyOjE5LCBXaWxsaWFtIEJyZWF0aGl0
dCBHcmF5Cj4gPHZpbGhlbG0uZ3JheUBnbWFpbC5jb20+IGEgw6ljcml0IDoKPiA+Cj4gPiBPbiBU
dWUsIE1heSAwNywgMjAxOSBhdCAxMToxMjoyNEFNICswMjAwLCBCZW5qYW1pbiBHYWlnbmFyZCB3
cm90ZToKPiA+ID4gUXVhZHJhdHVyZSBmZWF0dXJlIGlzIG5vdyBob3N0ZWQgb24gaXQgb3duIGZy
YW1ld29yay4KPiA+ID4gUmVtb3ZlIHF1YWRyYXR1cmUgcmVsYXRlZCBjb2RlIGZyb20gc3RtMzIt
dHJpZ2dlciBkcml2ZXIgdG8gYXZvaWQKPiA+ID4gY29kZSBkdXBsaWNhdGlvbiBhbmQgc2ltcGxp
ZnkgdGhlIEFCSS4KPiA+ID4KPiA+ID4gU2lnbmVkLW9mZi1ieTogQmVuamFtaW4gR2FpZ25hcmQg
PGJlbmphbWluLmdhaWduYXJkQHN0LmNvbT4KPiA+Cj4gPiBBbHRob3VnaCB0aGlzIGZ1bmN0aW9u
YWxpdHkgaXMgbm93IHByb3ZpZGVkIGJ5IHRoZSBDb3VudGVyIHN1YnN5c3RlbSwgd2UKPiA+IHNo
b3VsZCBrZWVwIHRoZSBJSU8gQ291bnRlciBpbnRlcmZhY2UgZm9yIHRoaXMgZHJpdmVyIGludGFj
dCBzaW5jZQo+ID4gZXhpc3RpbmcgdXNlciBhcHBsaWNhdGlvbnMgbWF5IGRlcGVuZCBvbiBpdDsg
dGhpcyBpcyB0aGUgc2FtZSByZWFzb24gd2h5Cj4gPiB0aGUgSUlPIENvdW50ZXIgY29kZSBpbiB0
aGUgMTA0LVFVQUQtOCBkZXZpY2UgZHJpdmVyIHdhcyBub3QgcmVtb3ZlZAo+ID4gZGVzcGl0ZSBt
b3ZpbmcgdG8gdGhlIENvdW50ZXIgc3Vic3lzdGVtLgo+ID4KPiA+IE9uY2UgdXNlciBhcHBsaWNh
dGlvbnMgaGF2ZSBoYWQgZW5vdWdoIHRpbWUgdG8gbWlncmF0ZSB0byB0aGUgR2VuZXJpYwo+ID4g
Q291bnRlciBpbnRlcmZhY2UsIHdlIGNhbiBjb25zaWRlciByZW1vdmluZyB0aGUgZGVwcmVjYXRl
ZCBJSU8gQ291bnRlcgo+ID4gaW50ZXJmYWNlLgo+IAo+IEhpIFdpbGxpYW0sCj4gCj4gVGhpcyBT
b0MgaXMgbm90IHlldCBpbiBwcm9kdWN0aW9uIHNvIHRoZWlyIGlzIG5vIGxlZ2FjeSBvbiB0aGUg
b2xkIGludGVyZmFjZQo+IGFuZCBJIHdvdWxkIGxpa2UgdG8gYXZvaWQgdG8gY3JlYXRlIG9uZS4K
PiAKPiBCZW5qYW1pbgoKQWgsIEkgc2VlIHdoYXQgeW91IG1lYW4sIHRoaXMgZHJpdmVyIGlzIGZv
ciBmdXR1cmUgZGV2aWNlcy4gRG8gdGhlCmVhcmxpZXIgU1RNMzIgSDcgc2VyaWVzIGRldmljZXMg
aGF2ZSBhIHF1YWRyYXR1cmUgZmVhdHVyZSBhcyB3ZWxsLCBvciBpcwp0aGlzIGZ1bmN0aW9uYWxp
dHkgb25seSBhdmFpbGFibGUgd2l0aCB0aGUgbmV3IGRldmljZXM/CgpXaWxsaWFtIEJyZWF0aGl0
dCBHcmF5Cgo+IAo+ID4KPiA+IFdpbGxpYW0gQnJlYXRoaXR0IEdyYXkKPiA+Cj4gPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKPiA+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
Zwo+ID4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
