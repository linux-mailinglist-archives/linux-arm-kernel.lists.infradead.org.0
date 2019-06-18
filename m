Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8151749BDC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 10:17:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zsma48uzwrTLEWQM7P5elvnpg/cI77ibHzhj0Q/mhBg=; b=tvcK+VwviMqDVU
	4HE2COc84xaSqlfeDDvjA+WDgH5UgUUz1WUjhLuFMNXGfiMGEnvwBqYdBEVGRirGqqQFujAQkGW7O
	SJDa9v/FYzCyrhVNIFhiUWDNVScmTZ291PyJI8K7tb8ILmPvMLULsybIqBWZjshaqGjFx2zaqUk8G
	3w7bJ4mafP7d32ZD/lKa+DLcy1FQJ3891oAiLAcR0yPffwzN/GSydfP0dWrYIDGbEk9Nk9t2mpXBo
	qpefzOGMBtuIsdDsrfon/hCTOQFrDHrGiupGnorm7Ys4cq5pg2e0707d8idNxRsPN/xqhmlP4BnD/
	4C/qJ0m0DK6ea8GehQSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd9If-0005Zr-Ac; Tue, 18 Jun 2019 08:17:05 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd9IT-0005YY-60
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 08:16:54 +0000
Received: by mail-wm1-x341.google.com with SMTP id a15so2137007wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 01:16:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=t/jrlwVbqUGm5LlxED/u8lqvV/TkMHlvG38VrHjMZwM=;
 b=LTei/vPtrKAGo+xiHG938K3xZdc34NOswQ0WZSU7et3BB+FoPlGssMxDzK6esyJSja
 QNoCDNSmTtY1kYZ1bly52+mKA135BDgOFFA6ugJ699DK43sih5uZp8XmvqgIr+LwLRtk
 LPQlyeWJ2hkr5rgaRT3CHorvxpilQW6OvrXFYHyeM1Viz545C2V/QhgMdcVGGVXI3p1d
 JTe27YjN3ZmjGvr6csX7WB6FYvbN1ywUAEKWlDIZg22hBeQ/qkQ+mp//G8FEvqKVaUFE
 tbHm6TLstQTl3vkr+1CBDxhm29P4fndqXWdxYbLcVb9eQQ32K3+qQc04c3/L600uA6Kx
 ezmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=t/jrlwVbqUGm5LlxED/u8lqvV/TkMHlvG38VrHjMZwM=;
 b=tBA+1+eHaq7VC6GzflD+XbvPc1DUg4Gg2pt00vQdXrmluEEjh0k+Wr0N+ROeGtbY/4
 PcB/hTKERCgv92as2OC3io5PQa7UuLtPc3zGuqV44pkCnBt/adPN0/Femegh8h+MAvir
 JZ669gxVM+6oByQUpNhk1pNNYmo06SKsGUUJVNPQf5UcpM2YOJKaYI/v46aAqpEdha1F
 /7RnUCX8GqMR6t5vKWTbrqwkaIkFIb7gIkCU5rbampKEgTC0bGlE03iar76BJw/7YhAx
 64lqwPWODOPNPZQ9TsjIr9GfMJElvLKx03Fd8NxZo0lUWgJmr1izZAzcyLc7H3qbyiEw
 zaKg==
X-Gm-Message-State: APjAAAWIdN0fd4bAVFzIh2FsaN4aRdzRmjWEIhU8QrS+LwwOtJss9hwx
 FGJEpEWv216NOSXoBB+kR1drlA==
X-Google-Smtp-Source: APXvYqwYTr5x7DrdrPoLH+qfq4DTqLezqkCP1jdXSp6iYQxgp2pEEprK6f3SFvlWPAjwHdlqgPP9mw==
X-Received: by 2002:a1c:208c:: with SMTP id g134mr2318494wmg.112.1560845807845; 
 Tue, 18 Jun 2019 01:16:47 -0700 (PDT)
Received: from dell ([2.27.35.243])
 by smtp.gmail.com with ESMTPSA id k125sm2847763wmf.41.2019.06.18.01.16.47
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 18 Jun 2019 01:16:47 -0700 (PDT)
Date: Tue, 18 Jun 2019 09:16:45 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] mfd: stmfx: Fix an endian bug in stmfx_irq_handler()
Message-ID: <20190618081645.GM16364@dell>
References: <CAHk-=wgTL5sYCGxX8+xQqyBRWRUE05GAdL58+UTG8bYwjFxMkw@mail.gmail.com>
 <20190617190605.GA21332@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617190605.GA21332@mwanda>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_011653_227436_8A699D4C 
X-CRM114-Status: GOOD (  14.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Amelie Delaunay <amelie.delaunay@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, kernel-janitors@vger.kernel.org,
 Linux List Kernel Mailing <linux-kernel@vger.kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAxNyBKdW4gMjAxOSwgRGFuIENhcnBlbnRlciB3cm90ZToKCj4gSXQncyBub3Qgb2th
eSB0byBjYXN0IGEgInUzMiAqIiB0byAidW5zaWduZWQgbG9uZyAqIiB3aGVuIHlvdSBhcmUKPiBk
b2luZyBhIGZvcl9lYWNoX3NldF9iaXQoKSBsb29wIGJlY2F1c2UgdGhhdCB3aWxsIGJyZWFrIG9u
IGJpZwo+IGVuZGlhbiBzeXN0ZW1zLgo+IAo+IFJlcG9ydGVkLWJ5OiBMaW51cyBUb3J2YWxkcyA8
dG9ydmFsZHNAbGludXgtZm91bmRhdGlvbi5vcmc+CgpJZGVhbGx5IHdlIGNhbiBnZXQgYSByZXZp
ZXcgdG9vLgoKPiBGaXhlczogMzg2MTQ1NjAxYjgyICgibWZkOiBzdG1meDogVW5pbml0aWFsaXpl
ZCB2YXJpYWJsZSBpbiBzdG1meF9pcnFfaGFuZGxlcigpIikKPiBTaWduZWQtb2ZmLWJ5OiBEYW4g
Q2FycGVudGVyIDxkYW4uY2FycGVudGVyQG9yYWNsZS5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvbWZk
L3N0bWZ4LmMgfCA0ICsrKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBk
ZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21mZC9zdG1meC5jIGIvZHJpdmVy
cy9tZmQvc3RtZnguYwo+IGluZGV4IDdjNDE5YzA3ODY4OC4uODU3OTkxY2IzY2JiIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvbWZkL3N0bWZ4LmMKPiArKysgYi9kcml2ZXJzL21mZC9zdG1meC5jCj4g
QEAgLTIwNCw2ICsyMDQsNyBAQCBzdGF0aWMgc3RydWN0IGlycV9jaGlwIHN0bWZ4X2lycV9jaGlw
ID0gewo+ICBzdGF0aWMgaXJxcmV0dXJuX3Qgc3RtZnhfaXJxX2hhbmRsZXIoaW50IGlycSwgdm9p
ZCAqZGF0YSkKPiAgewo+ICAJc3RydWN0IHN0bWZ4ICpzdG1meCA9IGRhdGE7Cj4gKwl1bnNpZ25l
ZCBsb25nIGJpdHM7Cj4gIAl1MzIgcGVuZGluZywgYWNrOwo+ICAJaW50IG4sIHJldDsKPiAgCj4g
QEAgLTIyMiw3ICsyMjMsOCBAQCBzdGF0aWMgaXJxcmV0dXJuX3Qgc3RtZnhfaXJxX2hhbmRsZXIo
aW50IGlycSwgdm9pZCAqZGF0YSkKPiAgCQkJcmV0dXJuIElSUV9OT05FOwo+ICAJfQo+ICAKPiAt
CWZvcl9lYWNoX3NldF9iaXQobiwgKHVuc2lnbmVkIGxvbmcgKikmcGVuZGluZywgU1RNRlhfUkVH
X0lSUV9TUkNfTUFYKQo+ICsJYml0cyA9IHBlbmRpbmc7Cj4gKwlmb3JfZWFjaF9zZXRfYml0KG4s
ICZiaXRzLCBTVE1GWF9SRUdfSVJRX1NSQ19NQVgpCj4gIAkJaGFuZGxlX25lc3RlZF9pcnEoaXJx
X2ZpbmRfbWFwcGluZyhzdG1meC0+aXJxX2RvbWFpbiwgbikpOwo+ICAKPiAgCXJldHVybiBJUlFf
SEFORExFRDsKCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJvIFNlcnZpY2VzIFRlY2hu
aWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29D
cwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
