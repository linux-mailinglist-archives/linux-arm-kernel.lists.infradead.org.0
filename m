Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6FCB1C34AA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 10:41:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=setvKOy0iMZzL8BMGjkY8E7cxyuDrwojVH15uu5WPEc=; b=G4cOYYjHXif1pB
	RjmltiK5HQ17GPpZK9kew+uUQ2k/GeLAKlJIO0ETA+xz+ptwuEAmu14jp+4gakryZ1o/02NSV4Y0V
	bSmaYKZplFw5vKG5VtcwfzvWZPo6dYn+w6kDyaOWhkYoOqMmMlq+/BHiYn+A+O+sZzWGWWUrHQc4a
	tQtqikaxIstXIed8CaKB3nwGX5Bw/JP+YLjJiZIlxRUQ0iE0FgagffV7STIqFNnfOxGkGBgdQE+GK
	NYcUkt79aMKxw7Oaq2AWqHXIxniFu/bhby+desRCbQHgvXGKyviqfuwwOBY0UOCzMhZT0qHQjzvV1
	EDmiVEpJfqGZk/dk2MHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVWeo-0007JF-7q; Mon, 04 May 2020 08:40:58 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVWeY-0007Hs-79
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 08:40:43 +0000
Received: by mail-wr1-x442.google.com with SMTP id h9so9549485wrt.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 01:40:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=Wpw4hLHfkH4N+JOXSI4RLmWbxNK2gVAne34AzQXBo8Y=;
 b=J3yzsGB2QZKh1Z+Ii6kkufTdep70GtErKemHckmXneKCPyHLhdh9tMb5i6IbTG/m73
 0s8Afn8+JSYzUH+z7ztFvlRcaHMUyN84q6fqAnVS2Br5PXjvMBddJLk/tBuXKBVcehLj
 IIzg46qYAnji9++Q2cRhGolaGp5kynN56oegR6E/CNF+8WPUhGgRmzmny/+ZF1/bwK7L
 vRSd8BDUr6htNiPXtmOGPaaMtja/kuSCCieTA7VAZKx0I7ggFOK/X+FqChM93YUaWcqM
 OYR1qNJG68C8pgRlRYSdcfbXJnP6efwV5sakQN7WBz77OQKAjrybEFpmUcdIjHppk5TN
 LA3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=Wpw4hLHfkH4N+JOXSI4RLmWbxNK2gVAne34AzQXBo8Y=;
 b=bP2Iw9VqPxbvv70nCKeRLgS5SUm99GsgvPM2rkJ8+RYYAUVi+cfOdWj53bJ7Z1o3ty
 ZNvivsVhmwFChl817WrrSG4XErlBu8cMia6NnBnpXGLp5kzu1TQz3Uq67Z6FvddBzkhq
 LdM4Z+WAlYYq+pB1A29OeH772DMWQK5wnRGEANCIbYZm6CEfK/8vj3PYxWWBIny30RjC
 2wP1w2cr7BYTqQl6RFaWPbVtMvlOxeyH7zPfE4TmEqbGqttyZaawArY7trvy0p+wBsY7
 k+Hn4hCv7gQKepTPMVmOjP66kYy9f4ifHN8/gm6KuX7ORdWHkfkTE1sq+3RYhQoOjsN+
 Nxvg==
X-Gm-Message-State: AGi0PuZB48fVXL9VX9gSsiPjWzFyg7CRQnAPTRVGEqLdYEmB5Fr5JiHY
 AVAYp+UbG4U6C0XSfwO6QEpc/g==
X-Google-Smtp-Source: APiQypJO0zONjRsCboKbXszJQHwjxv+YnXjZXuR20iHpxubYidpCjzHDGbNcO+jV/xoiRdAE7tcptw==
X-Received: by 2002:adf:e58e:: with SMTP id l14mr17099093wrm.186.1588581640714; 
 Mon, 04 May 2020 01:40:40 -0700 (PDT)
Received: from dell ([2.31.163.63])
 by smtp.gmail.com with ESMTPSA id n21sm4012749wra.15.2020.05.04.01.40.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2020 01:40:40 -0700 (PDT)
Date: Mon, 4 May 2020 09:40:38 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 11/16] mfd: vexpress-sysreg: Support building as a
 module
Message-ID: <20200504084038.GE298816@dell>
References: <20200429205825.10604-1-robh@kernel.org>
 <20200429205825.10604-12-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429205825.10604-12-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_014042_260557_31FD2330 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stephen Boyd <sboyd@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>, Liviu Dudau <liviu.dudau@arm.com>,
 Sebastian Reichel <sre@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 linux-pm@vger.kernel.org, Will Deacon <will@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAyOSBBcHIgMjAyMCwgUm9iIEhlcnJpbmcgd3JvdGU6Cgo+IEVuYWJsZSBidWlsZGlu
ZyB0aGUgdmV4cHJlc3Mtc3lzcmVnIGRyaXZlciBhcyBhIG1vZHVsZS4KPiAKPiBBcyBkZWZlcnJl
ZCBwcm9iZSBiZXR3ZWVuIHRoZSB2ZXhwcmVzcyBjb21wb25lbnRzIHdvcmtzIG5vdywgd2UgZG9u
J3QKPiBuZWVkIHRvIGNyZWF0ZSBzdHJ1Y3QgZGV2aWNlcyBlYXJseSB3aXRoIG9mX3BsYXRmb3Jt
X2RldmljZV9jcmVhdGUoKS4KPiAKPiBDYzogTGl2aXUgRHVkYXUgPGxpdml1LmR1ZGF1QGFybS5j
b20+Cj4gQ2M6IFN1ZGVlcCBIb2xsYSA8c3VkZWVwLmhvbGxhQGFybS5jb20+Cj4gQ2M6IExvcmVu
em8gUGllcmFsaXNpIDxsb3JlbnpvLnBpZXJhbGlzaUBhcm0uY29tPgo+IENjOiBMaW51cyBXYWxs
ZWlqIDxsaW51cy53YWxsZWlqQGxpbmFyby5vcmc+Cj4gQ2M6IExlZSBKb25lcyA8bGVlLmpvbmVz
QGxpbmFyby5vcmc+Cj4gU2lnbmVkLW9mZi1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9y
Zz4KPiAtLS0KPiAgZHJpdmVycy9tZmQvS2NvbmZpZyAgICAgICAgICAgfCAgMiArLQo+ICBkcml2
ZXJzL21mZC92ZXhwcmVzcy1zeXNyZWcuYyB8IDE1ICsrKystLS0tLS0tLS0tLQo+ICAyIGZpbGVz
IGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pCgpBY2tlZC1ieTogTGVl
IEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10K
TGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNl
IHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIg
fCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
