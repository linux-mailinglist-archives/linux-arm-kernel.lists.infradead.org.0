Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A3A1BB72E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 09:03:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bYsXDdjJd6pBeq78+RQKQEl4/DwdNFRri3GPds/v6g4=; b=VU/ZLZQYYXmxTn
	S0Amxae96ELEWBEk/8AIPEPPDKS3AKkUsiSJUYf/WyXv9v3oCEJ7s5oBvEOcCNtb+AWATvZAbOlwt
	cAVHYp9YinEjbb0R7p23Idju/XNT73nTp5f8ATQdkrYOwGiYK3ZO+pNhDhxx/gELOR9vz9fLmRB2e
	xLBRocrqwPF6/ml8Uq0pU+JuNraspxlU9NMHMi0iF+A3eurVG498Uaj6BRAtlNz4MucRYGSXZmveM
	363EOnH+LcO8FaqC7nGk+V0/3ivvPIceFoLlHGlmPXtPfn7lMwE4zZEaYjg0QZtvYFg2/LqnKMvN+
	vZK0NenIfmWf8iaJUtAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTKHO-0000Pb-MY; Tue, 28 Apr 2020 07:03:42 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTKHD-0000OL-75
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 07:03:33 +0000
Received: by mail-wr1-x444.google.com with SMTP id k1so23325445wrx.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 00:03:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=d80p8k51RV8Ii31H8c+Iq6vujq3CggrPsTKCRimkvi4=;
 b=zXun4602okDGRYn8XiLEIHtsfd9v1rIwMMKeu+9hiWx2ZG/wJd3ht1CLbz/PPWSPzx
 Xs/SGjQnIpi+0oDrczAeaVSDJD57qpno8vVy/PCokt/MlwZ/B3y4NIDOoIlZZd1ES49Z
 SZR34DXDeT6Y1ajYv83ohSDh1wpyPD0aUWMJdHFb5hwV/mJlj9LIXKXU+uYfjkgirS6a
 lHsOEZCEcvEebukq22aTjSB7xg1QO2hTypVt5JWWvi92tMy5J+fnTeNPaiXcv5ltXVj/
 W+y4HIEce1zmyGtpa2sGAHF3x+Pp0HSBBzCvsR1cNLJVP94gnlyKz79YF7IjHUYNSL20
 wS0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=d80p8k51RV8Ii31H8c+Iq6vujq3CggrPsTKCRimkvi4=;
 b=Q1y1EAscqeWKgQcttr/pmYXib+UjpTOMJ/WCzn6+rWGoEsIGzCFx42IQjBt0zMDNbK
 /lPZBPLC5BrbTqyZ259ZRgAa6eVUcNGYPg7YNPb+UlEIwEtMpm8tSj6m7eIa+U4bNd1r
 srxpwqr2y7zHyd+2wBG5925vUkzpNeJpsc5+0MEDcYup7777AfTEhEjjM88qEhKZpR3k
 rBw1VHYHiFzYWpZOWmIeEACVgA6G5rMOqIxzxtHS6IXQeLrKy+ctnCtJeORIjNCt4KtR
 /v9Kt9jUJRL+oY1xZCCOrKUbSwBFvO82nqJ/HkHXmu0pgW7TIiKUbXq/AeXKANUnuFyF
 iZCg==
X-Gm-Message-State: AGi0PubxS0J3CknjRhHwtAavIUwjyKiaHy26cCxC05JsZe5gQYxqGL6U
 UZmBzYYrguQa/dTAte5a1G9o6A==
X-Google-Smtp-Source: APiQypJcL3tHBCbLlcc7UeQUAGJ2UgtgMo77ETUj1h5CMVB6neW1tCihGzh0jeWgP3NKFnYTOQn4wA==
X-Received: by 2002:adf:f98e:: with SMTP id f14mr31210015wrr.253.1588057409075; 
 Tue, 28 Apr 2020 00:03:29 -0700 (PDT)
Received: from dell ([2.31.163.63])
 by smtp.gmail.com with ESMTPSA id m8sm25497629wrx.54.2020.04.28.00.03.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2020 00:03:28 -0700 (PDT)
Date: Tue, 28 Apr 2020 08:03:26 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Adrian Pop <pop.adrian61@gmail.com>
Subject: Re: [PATCH 1/2] arm: dt-bindings: mfd: stm32f-rcc: Add missing DSI
 clock
Message-ID: <20200428070326.GH3559@dell>
References: <20200424181642.32084-1-pop.adrian61@gmail.com>
 <20200427064910.GC3559@dell>
 <CAP-HsdQOyWrz+Y7gR9jrNjX09NCYB1EWK7swMQDZ-v-VJLGRMw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAP-HsdQOyWrz+Y7gR9jrNjX09NCYB1EWK7swMQDZ-v-VJLGRMw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_000331_776699_DC7C9B71 
X-CRM114-Status: GOOD (  15.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Alexandre Torgue <alexandre.torgue@st.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAyNyBBcHIgMjAyMCwgQWRyaWFuIFBvcCB3cm90ZToKCj4gT24gTW9uLCBBcHIgMjcs
IDIwMjAgYXQgOTo0OSBBTSBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPiB3cm90ZToK
PiA+Cj4gPiBPbiBGcmksIDI0IEFwciAyMDIwLCBBZHJpYW4gUG9wIHdyb3RlOgo+ID4KPiA+ID4g
QWRkIG1pc3NpbmcgY2xvY2suCj4gPiA+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IEFkcmlhbiBQb3Ag
PHBvcC5hZHJpYW42MUBnbWFpbC5jb20+Cj4gPiA+IC0tLQo+ID4gPiAgaW5jbHVkZS9kdC1iaW5k
aW5ncy9tZmQvc3RtMzJmNy1yY2MuaCB8IDEgKwo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspCj4gPgo+ID4gSSBhc3N1bWUgcGF0Y2ggMiBkZXBlbmRzIG9uIHRoaXM/Cj4gCj4g
WWVzLCBzZWNvbmQgcGF0Y2ggZGVwZW5kcyBvbiB0aGlzLgo+IAo+ID4KPiA+IElmIHNvLCB3aGVy
ZSBpcyBpdD8gIFdoeSBpc24ndCBpdCBpbiBteSBpbmJveD8KPiA+Cj4gCj4gSGVyZSBpdCBpczoK
PiAKPiBTVE0zMmY3NjktZGlzY28gZmVhdHVyZXMgYSA0IiBNSVBJIERTSSBkaXNwbGF5OiBhZGQg
c3VwcG9ydCBmb3IgaXQuCj4gCj4gU2lnbmVkLW9mZi1ieTogQWRyaWFuIFBvcCA8cG9wLmFkcmlh
bjYxQGdtYWlsLmNvbT4KPiAtLS0KPiAgYXJjaC9hcm0vYm9vdC9kdHMvc3RtMzJmNzQ2LmR0c2kg
ICAgICB8IDM0ICsrKysrKysrKysrKysrKysrKwo+ICBhcmNoL2FybS9ib290L2R0cy9zdG0zMmY3
NjktZGlzY28uZHRzIHwgNTAgKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gIDIgZmlsZXMg
Y2hhbmdlZCwgODQgaW5zZXJ0aW9ucygrKQoKV2hlbiB5b3UgcmVzdWJtaXQgdGhpcywgcGxlYXNl
IGFkZCBhbGwgcmVjaXBpZW50cyB0byBhbGwgcGF0Y2hlcy4KCi0tIApMZWUgSm9uZXMgW+adjueQ
vOaWr10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4g
c291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3
aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
