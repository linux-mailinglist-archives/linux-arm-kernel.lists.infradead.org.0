Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B4A907F3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 20:55:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xjWlNoIi6SOchL6yYUszBLQnCF+uul7f70t21GjXRr0=; b=O1FefvV9A5vonM
	KkTwxmR1Q2gE4O6iPN9tqB0YKDRNtDUTPpF2DpvCms3My6mv9IpRCastqncxjunS9aQWeBSYeVKXU
	DWb0RD53Idk85lS7KEpKTQ+ik6Ftedl72KvkSJnfKBcfls2NNtzbBI/WzqavK6WrQ6vabnPSYzkTR
	1Hrk55YRR5qVu9iAVPZQI7lalJAT+lSgZEkQtoMMx1yBFPSS5eBaScS/gecNFVQR0/p+46A7hrbvN
	q/ct864kMiuU0DcwgTf+lChaVeuwLfpqvncyVXdlqujmOoTTq+rn2ePxznm7SqM7kDp9kbcmqoFkc
	ySTsQl4lzGIT+khwiHhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyhNV-00023I-TN; Fri, 16 Aug 2019 18:55:10 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyhNE-00022Q-Mo; Fri, 16 Aug 2019 18:54:54 +0000
Received: by mail-wr1-x444.google.com with SMTP id g17so2471308wrr.5;
 Fri, 16 Aug 2019 11:54:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ZIcOtpmkAyPPF8IZ2E+RCqFijSBHEZNdbSz2WgCDe9w=;
 b=WyCCG07kH7AyHuxzQWuoS7suYHpK9YwqDGluSw6JlcsyLyRlB7esZjQMSvWEs74bkX
 bQ9B5idWQaBmJ3hHIMAKiXtom3/+sPMMPbxgjBF6S9OMcBuXnKA93gEe6Y0yYxWURs0Q
 36yVEX0aJsoeyOIFeb3HfZnYbWLdlHP2y7xSpXyhVeL4jBi89EO2bmT+s/AvS32oRlfT
 ujuhAt1in/jXF/eo6bGETDCQBF3VgOflFJrXK6ZCq8hEL00pdoMAFJgGjDbIHMtSR/RO
 RoeCgnerpVtV9l8Az+Ck9wP2M8qbexPV89AjZGWSNNTq5VvOGB3DPJ2ilM2EQirXwMdt
 7GWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ZIcOtpmkAyPPF8IZ2E+RCqFijSBHEZNdbSz2WgCDe9w=;
 b=X0Z6B6iFpnfxiubh/12jRmXqBjmHGYQy1RSU8LrfuI0IFJcD5CJ03/j1SoGROAH5pG
 lEKPFgDuo9ssOj7O/pXqVTV116749s1XwIj1sl4JY16jMK+mkdXeBMbibrNsDcMx34O1
 A9TIx68o1rwE0KZFt1TAYp78VwNiIs96yl1YZOG7dsGJzLZ1SqiUscsgWJJW9/htRuuk
 grVJ33AO7SvrLwj1HuYJM3TittJweOYwS5B6n2AXJ34dr5BluXCcgx/4NUZwt9byY7Qv
 QeUteEPSBabR6IcbX1b9hX2pRO6nsIyj7FmaEqD1boLZdSIatdSDGorHzEc4OVkqJhyp
 UXGQ==
X-Gm-Message-State: APjAAAXl7XiuzXl1ZRrD0bo25hYrDy1phOPzTy/gXBiPhX/iGUfRDpU/
 2y980QTtNs2a0y5FLCFeXdaQQB1+fpZVQLWfGo11s/oJlhs=
X-Google-Smtp-Source: APXvYqyjAhdDi1tKcJ2RugtQNKn3XhAwEUccYsGTAVC+7iD01E6qYqknGw+0AUCSrKtSR46yZIvKiSkYsGSD9UM8ddI=
X-Received: by 2002:adf:eac3:: with SMTP id o3mr11583482wrn.264.1565981687262; 
 Fri, 16 Aug 2019 11:54:47 -0700 (PDT)
MIME-Version: 1.0
References: <CA+Vb7hpe_USzdCuTBHd8V-t6YeQ0oApiBrvM-D43JuhJda6eyQ@mail.gmail.com>
 <20190815122151.bg7it6ptxwcn2vif@willie-the-truck>
 <8253b02c-0431-6b01-6af4-6132eb992925@arm.com>
 <CA+Vb7hpi=pCC9viiof8y85Kw_vCawWQ0B6kGFALgxtZfCKoaTw@mail.gmail.com>
 <CA+Vb7hqPvDtv0ahjxa_gM68qsws6-dmtiOPmG6-WB+HZEC=4aw@mail.gmail.com>
 <2facb3cb-388a-87ee-4d87-717dd65825ae@arm.com>
In-Reply-To: <2facb3cb-388a-87ee-4d87-717dd65825ae@arm.com>
From: Philipp Richter <richterphilipp.pops@gmail.com>
Date: Fri, 16 Aug 2019 20:54:36 +0200
Message-ID: <CA+Vb7hpjX=yzVJj+BguvzwtyASCGUTwx_OXWfBuEoLO_RicMBQ@mail.gmail.com>
Subject: Re: aarch64 Kernel Panic Asynchronous SError Interrupt on large file
 IO
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_115452_747599_983B3D59 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richterphilipp.pops[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: heiko@sntech.de, catalin.marinas@arm.com, vicencb@gmail.com,
 linux-rockchip@lists.infradead.org, andre.przywara@arm.com,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAxNiBBdWcgMjAxOSBhdCAxNDowMSwgUm9iaW4gTXVycGh5IDxyb2Jpbi5tdXJwaHlA
YXJtLmNvbT4gd3JvdGU6Cj4KPiBUaGlzIGRvZXMgc3RhcnQgdG8gc21lbGwgbGlrZSBzb21lIGlz
c3VlIHdpdGggdGhhdCBwYXJ0aWN1bGFyIGFyZWEgb2YKPiBwaHlzaWNhbCBtZW1vcnkgLSBlaXRo
ZXIgYmVjYXVzZSBpdCdzIGJlZW4gbWFya2VkIGFzIFNlY3VyZS1vbmx5IGJ5Cj4gZmlybXdhcmUg
YW5kIHRoZSBjb250cm9sbGVyIGNvbmZpZ3VyZWQgdG8gYWJvcnQgTm9uLVNlY3VyZSBhY2Nlc3Nl
cywgb3IKPiBwb3NzaWJseSBiZWNhdXNlIG9mIGFuIGFjdHVhbCBEUkFNIGZhaWx1cmUuIFRoZSBu
ZXh0IHRoaW5nIEknZCBkbyBpcwo+IGhhdmUgYSBwbGF5IGFyb3VuZCB3aXRoIHRoZSAibWVtdGVz
dD0uLi4iIGtlcm5lbCBwYXJhbWV0ZXIgdG8gc2VlIGlmCj4gdGhhdCBjYW4gY29uc2lzdGVudGx5
IGZpbmQgYSBwcm9ibGVtLCBhbmQgc2VlIGlmIHRoZSBmaXJtd2FyZSBjaGFuZ2UKPiB0aGF0IEhl
aWtvIHBvaW50ZWQgb3V0IG1ha2VzIGFueSBkaWZmZXJlbmNlLgo+Cj4gUm9iaW4uCgpUaGFuayB5
b3UgdmVyeSBtdWNoIGZvciB0aGlzIGluc2lnaHQuCgpJIGNvbXBpbGVkIHUtYm9vdCB3aXRoIHRo
ZSBwYXRjaCB0aGF0IEhlaWtvIFN0w7xibmVyIGxpbmtlZCB0byBhbmQKcmV3cm90ZSB0aGUgaW1h
Z2VzIHRvIHRoZSB0YXJnZXQgbG9jYXRpb25zIGJ1dCB0aGlzIGRpZG4ndCByZXNvbHZlIHRoZQpw
cm9ibGVtLgpJJ2xsIHRyeSBzb21lIG1lbXRlc3RzIGJ1dCB0aGUgc3RvY2sgQXJjaGxpbnV4IEFS
TSBrZXJuZWwgZG9lcyBub3QKaGF2ZSBpdCBlbmFibGVkIHNvIEknbGwgbmVlZCB0byBjb21waWxl
IGl0IGluIG15c2VsZiB0aGVuIEkgZ3Vlc3MuCgpSZWdhcmRzLApQaGlsaXBwIFJpY2h0ZXIKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
