Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F5A6163D3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 14:37:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+j2buNYYbm6k9bcm4s24wXtMv95XmeDg5+cENJKfTU4=; b=fkf812Putr+GXu
	rzL3cjrjRz/cFYcuJNbspEb1MNSbSIq+xXKBd6QmbGBjSUlRO9IjRwepaaHDWzTijg+mDlHRgMnJ6
	jSBPHpOzN60zsXj1KCQNvZDhiqh5CJm4aqPZGFHeIGiQBgzl0cKz62bfnN1odbd1xdD2ekCuabwG6
	eKJ/rk99hfXAv7QSOnwvTDjxOBUhWIzg4wMQdNv2iEGTM2sCvhz5csmMuZUCr8e0U6H1uE1tgjCwk
	VqEmK2wgwU51bAjX+SneCrMa/B86SoCMCnP0bi+1GC7EW7lPGflxrS/E1G4IgMu4L0OvPB/U1X2Ud
	vOGZqGc2OcpBqL8UEsIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNzLb-0006es-Aw; Tue, 07 May 2019 12:37:27 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNzLT-0006e1-QJ
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 12:37:21 +0000
Received: by mail-qt1-x842.google.com with SMTP id d20so1193469qto.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 05:37:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=BmUAXf3w3lUWjIG5MCP+ObcqnAZPTJqLAABuKptsGWI=;
 b=utoZSJvfs05uD4OUOqhPincz36/jF7KEYxS1N5u0jbxqxVffPWDOcJDJ5VwviBr9Df
 5mT1MDrRWVjA+fWJbzKQkM3W+IMxJRDuEhQnMEIq6KAGPoZgm9FndS2/ey2HKh6jQ+et
 wQcacxyvEVaqL5dg8yd3/YMTrSJFmkTfjBjF30WdzFQtys1MLz6gS/kVqkt3cdi+UB7/
 SaMy/O1wdfdlTTwmCj/zytMZyL/v022L+gHMmAsfEM+uATZAkzMAqqlYaJbvWNUhSp1v
 ScoLbrIAOLXlKxctfA+tBa/dcmLg0uS4ZIiz4oO11OCIh8AQcw9bj6fdqU11R/Ac4r+3
 prgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=BmUAXf3w3lUWjIG5MCP+ObcqnAZPTJqLAABuKptsGWI=;
 b=p69zOFEmJRJiGTziyo6RYEhG1cCbiC1dyBW3Mzwe3YHgq5oBLctX70goq05RZlcAGi
 y3oT7Meg0aHZYI5pZPj2sWLiOQnIN/nfW8kfZjdN1I/c7Gdoa3C/QBRoi+m4W85t44z6
 YP2KmgvumjegffbMAVZpqwTEc5c23VNJBxuop04wJTmci/soyliP+74iHJpl8fp5Onu7
 OdEHpkiuwFthzg5RlYhJ4X7KJPzTH5KJZjvxmw/CQY7EkYI52nLaIf0eely8xwNosvoT
 fCidTjm1lIC2er6UR7qPspgQc+emC0oF4Tsf4FtJFVNRJBDsPdNH7vF2vfdKiyZCNcNe
 6sHg==
X-Gm-Message-State: APjAAAWjknHq2jBpTHiywGvyJIjzmUYPpBzbyZE/2rqBmo6KdhRoh4lx
 4IAVwVys0H0BuJmrXdceOU9Ba5HTIX9AXYMuV3FMRA==
X-Google-Smtp-Source: APXvYqxzEEY3udrVePkgazPG3496eLQSQxbvlpGQHKpnE9guF5wQuzNAbGB400oIN9bMhYCGv0HG/j0mBXlsHJYEl9o=
X-Received: by 2002:aed:306c:: with SMTP id 99mr25711109qte.38.1557232638409; 
 Tue, 07 May 2019 05:37:18 -0700 (PDT)
MIME-Version: 1.0
References: <20190507091224.17781-1-benjamin.gaignard@st.com>
 <20190507101729.GA3420@icarus>
In-Reply-To: <20190507101729.GA3420@icarus>
From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Date: Tue, 7 May 2019 14:37:07 +0200
Message-ID: <CA+M3ks4LhOFTeArnh3d=C02qLJWj_u6tWDDOhD8kZnJPRkXC8w@mail.gmail.com>
Subject: Re: [PATCH] IIO: stm32: Remove quadrature related functions from
 trigger driver
To: William Breathitt Gray <vilhelm.gray@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_053719_852731_43DDC9CF 
X-CRM114-Status: GOOD (  14.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

TGUgbWFyLiA3IG1haSAyMDE5IMOgIDEyOjE5LCBXaWxsaWFtIEJyZWF0aGl0dCBHcmF5Cjx2aWxo
ZWxtLmdyYXlAZ21haWwuY29tPiBhIMOpY3JpdCA6Cj4KPiBPbiBUdWUsIE1heSAwNywgMjAxOSBh
dCAxMToxMjoyNEFNICswMjAwLCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90ZToKPiA+IFF1YWRyYXR1
cmUgZmVhdHVyZSBpcyBub3cgaG9zdGVkIG9uIGl0IG93biBmcmFtZXdvcmsuCj4gPiBSZW1vdmUg
cXVhZHJhdHVyZSByZWxhdGVkIGNvZGUgZnJvbSBzdG0zMi10cmlnZ2VyIGRyaXZlciB0byBhdm9p
ZAo+ID4gY29kZSBkdXBsaWNhdGlvbiBhbmQgc2ltcGxpZnkgdGhlIEFCSS4KPiA+Cj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAc3QuY29tPgo+
Cj4gQWx0aG91Z2ggdGhpcyBmdW5jdGlvbmFsaXR5IGlzIG5vdyBwcm92aWRlZCBieSB0aGUgQ291
bnRlciBzdWJzeXN0ZW0sIHdlCj4gc2hvdWxkIGtlZXAgdGhlIElJTyBDb3VudGVyIGludGVyZmFj
ZSBmb3IgdGhpcyBkcml2ZXIgaW50YWN0IHNpbmNlCj4gZXhpc3RpbmcgdXNlciBhcHBsaWNhdGlv
bnMgbWF5IGRlcGVuZCBvbiBpdDsgdGhpcyBpcyB0aGUgc2FtZSByZWFzb24gd2h5Cj4gdGhlIElJ
TyBDb3VudGVyIGNvZGUgaW4gdGhlIDEwNC1RVUFELTggZGV2aWNlIGRyaXZlciB3YXMgbm90IHJl
bW92ZWQKPiBkZXNwaXRlIG1vdmluZyB0byB0aGUgQ291bnRlciBzdWJzeXN0ZW0uCj4KPiBPbmNl
IHVzZXIgYXBwbGljYXRpb25zIGhhdmUgaGFkIGVub3VnaCB0aW1lIHRvIG1pZ3JhdGUgdG8gdGhl
IEdlbmVyaWMKPiBDb3VudGVyIGludGVyZmFjZSwgd2UgY2FuIGNvbnNpZGVyIHJlbW92aW5nIHRo
ZSBkZXByZWNhdGVkIElJTyBDb3VudGVyCj4gaW50ZXJmYWNlLgoKSGkgV2lsbGlhbSwKClRoaXMg
U29DIGlzIG5vdCB5ZXQgaW4gcHJvZHVjdGlvbiBzbyB0aGVpciBpcyBubyBsZWdhY3kgb24gdGhl
IG9sZCBpbnRlcmZhY2UKYW5kIEkgd291bGQgbGlrZSB0byBhdm9pZCB0byBjcmVhdGUgb25lLgoK
QmVuamFtaW4KCj4KPiBXaWxsaWFtIEJyZWF0aGl0dCBHcmF5Cj4KPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0Cj4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
