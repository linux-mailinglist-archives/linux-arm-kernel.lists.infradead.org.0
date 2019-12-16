Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 033451202D9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 11:44:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sz8l98CqsHThCWYmXp2eTXRPtK1BtzB3FwfDg/I7udA=; b=Jp4BfawWRsn/yV
	M0SNoqqaxY0yv0JMWfh93vX+w1jMUsT2iwYAB6SGO8hPDbJ57hmtuqjWXT71Rv+ZM1Kz+qwBPEWQt
	oAAnWXQ5uiX8gOgGab85wSJUopkFj6ctZAgbMGTG4dDlLILlAa+XjiiOB3t1PkuBCk0YGe9z2R6L4
	RAA8YBBwUxvXwqas8OLHxKmgRMbKI/YGwlXp3DORFOKpi0PiTN/2loSkY8cxYjlwOlR2hcEUBNCeF
	EUC3+pkddUBWtKsxsaScW6s+CZrQT2CrlQyfjUbKDaxX5gq/G02qcgSJBCUuGbsqdkukwFuVtNfUi
	Yiqq8pWfmDiBw5BZ4gTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ignrI-00049F-30; Mon, 16 Dec 2019 10:44:12 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ignr9-00048T-LS
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 10:44:05 +0000
Received: by mail-wr1-x442.google.com with SMTP id c9so6615658wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 02:44:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=TYn4KXFCmnMue9oYWo/j3mg7jGM7rzuxGct/WdOvzz8=;
 b=y49FSHZncFMOSmnFI4STiDIoR9ZBizHKIK1wozs34TnPKQasUeHhsz//CBl+myFReF
 8BGzgzvc79cYEQAH8qhBqhBP5y25cjXxnggkZ3aAkfr3ZNpIcBgGWR1Qxsqp+AZ2I2/c
 aMXvjPl2hqWhMtlMoxDu1x8AjX+DKoiWAZb1CofggnsrOEOzs4VIYWaFYMBqYQwqFiHj
 RrntcuxTUtVnxhIv6TrDwlrav6M9fH3+cLwYQ6gpNCVb/Un3BBimVP7W9qGziis98gdy
 Fyxr6NHhkiFVxTHVc3ALBEa8mE5wfS8ArzFP20jre1v8C2olr1a5fbjBgzJTAH5+g3KB
 W5cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=TYn4KXFCmnMue9oYWo/j3mg7jGM7rzuxGct/WdOvzz8=;
 b=dhh9EaTjiJsxrMK0e/ip4/XbnG6eAIUU0DOOcj+h57/hbCPGIZhCV3EjLAs4jaaHy5
 iKPEbIbWg0DQoZ/mk4W+4MYL4gvGU66om+QbvlQqD2AxkTJWfM07/ZfOcai0LE1IDj7d
 iu44F6FVr4YFME95wfPh4Q18TG6JBvCzKFjVNvxE/bb1NI8uJuUCoP+M8I1WpLybzMbj
 h/9SUyJ4hluWTAEtN6lotKTLMfiFuPgrCEzq9SanvH5GlF3lwj/3oOxQ+W2WoZhWMBoe
 IxqvlhFSNaamIlsPAQll0Lfe5or3Tx6m4GfQVBaTrKDYo23ql4GIvO8D2AG/7fK93q+m
 BP4g==
X-Gm-Message-State: APjAAAVwYTRWvIz7PANL73rMnvCWhfNc8W3wyRz9v58Z2HCPO0+gBjpW
 2bRebOlP0poPEm8gbkjio88TNFObybY=
X-Google-Smtp-Source: APXvYqy+xHiEnHqxwZv7QXY40UpjEmUZChrkX33sH3sKrTGGgaaX2f6qwwlc+D8e0z2Z3R6tNR26Kg==
X-Received: by 2002:adf:e3c7:: with SMTP id k7mr31104859wrm.80.1576493041373; 
 Mon, 16 Dec 2019 02:44:01 -0800 (PST)
Received: from dell ([2.27.35.132])
 by smtp.gmail.com with ESMTPSA id z3sm21030535wrs.94.2019.12.16.02.43.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2019 02:44:00 -0800 (PST)
Date: Mon, 16 Dec 2019 10:43:59 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Stephan Gerhold <stephan@gerhold.net>
Subject: Re: [PATCH 2/2] mfd: ab8500-core: Add device tree support for AB8505
Message-ID: <20191216104359.GF3601@dell>
References: <20191117221053.278415-1-stephan@gerhold.net>
 <20191117221053.278415-2-stephan@gerhold.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191117221053.278415-2-stephan@gerhold.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_024403_731334_B979CE77 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCAxNyBOb3YgMjAxOSwgU3RlcGhhbiBHZXJob2xkIHdyb3RlOgoKPiBBQjg1MDUgc3Vw
cG9ydCB3YXMgbmV2ZXIgZnVsbHkgY29udmVydGVkIHRvIHRoZSBkZXZpY2UgdHJlZS4KPiBNb3N0
IG9mIHRoZSBNRkQgY2VsbHMgZm9yIEFCODUwNSBsYWNrIGFuICJvZl9jb21wYXRpYmxlIiwKPiB3
aGljaCBwcmV2ZW50cyB0aGVtIGZyb20gYmVpbmcgY29uZmlndXJlZCB0aHJvdWdoIHRoZSBkZXZp
Y2UgdHJlZS4KPiAKPiBBbGlnbiB0aGUgZGVmaW5pdGlvbiBvZiB0aGUgQUI4NTA1IE1GRCBjZWxs
cyB3aXRoIHRoZSBvbmVzIGZvciBBQjg1MDAsCj4gYW5kIGFkZCBkZXZpY2UgdHJlZSBjb21wYXRp
Ymxlcy4gRXhjZXB0IGZvciBHUElPIGFuZCByZWd1bGF0b3JzIHRoZQo+IGNvbXBhdGlibGVzIGFy
ZSBlcXVhbCB0byB0aG9zZSB1c2VkIGZvciBBQjg1MDAgYmVjYXVzZSB0aGUgaGFyZHdhcmUKPiBk
b2VzIG5vdCBkaWZmZXIgbXVjaC4KPiAKPiBGaW5hbGx5LCBjaGFuZ2UgZGI4NTAwX3ByY211X3Jl
Z2lzdGVyX2FiODUwMCgpIHRvIGNoZWNrIGZvciB0aGUgQUI4NTA1Cj4gZGV2aWNlIHRyZWUgbm9k
ZSBhZGRpdGlvbmFsbHksIGFuZCBwcm9iZSBpdCBpZiBpdCBpcyBmb3VuZC4KPiAKPiBDYzogTGlu
dXMgV2FsbGVpaiA8bGludXMud2FsbGVpakBsaW5hcm8ub3JnPgo+IFNpZ25lZC1vZmYtYnk6IFN0
ZXBoYW4gR2VyaG9sZCA8c3RlcGhhbkBnZXJob2xkLm5ldD4KPiAtLS0KPiAgZHJpdmVycy9tZmQv
YWI4NTAwLWNvcmUuYyAgfCAxNCArKysrKysrKysrKystLQo+ICBkcml2ZXJzL21mZC9kYjg1MDAt
cHJjbXUuYyB8IDI2ICsrKysrKysrKysrKysrKysrKysrLS0tLS0tCj4gIDIgZmlsZXMgY2hhbmdl
ZCwgMzIgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKCkFwcGxpZWQsIHRoYW5rcy4KCi0t
IApMZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxp
bmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGlu
YXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
