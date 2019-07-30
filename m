Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B84BF7AC2B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 17:21:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kLwRuvshjXkq3JI0/TfRIZBXHXshU7PnniVtsjuVRhI=; b=SleX9zcr7whqwo
	W9NEQcxxJ0mxoAdViIS1OiZqdHBC/loqRl7EhQRD1PrP5VjWQYta4utVe/0cFb4F6aeIfqBJDnWrD
	DfGv8nMpCNZfaIp3VQSjxKv4odBgDGjUdmyTIuxZVFiwyetAyWeBxTvtbEtm3uCoGwimue0YnJts4
	rjldYFH+p7+e+7ZocYTIcB9iZs85bBV4dPXc5mlzoLRfV4H00P4pMKsaMvh/S9bjpsIEhOLeisYz+
	+3C4il0bWOPi0WH2UwfzKW660OhZ2MFRQSmnTeMha2rhYFScTDdIJdEUA5p70u0yi+6iDwxv2CKP3
	fCcFuFUwM2o0/9T2tauQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsTwO-0007Pq-Iv; Tue, 30 Jul 2019 15:21:28 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsTwC-0007PR-1R
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 15:21:19 +0000
Received: by mail-lj1-x241.google.com with SMTP id v24so62593058ljg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 08:21:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=MG2uESR/rqGAii9OuT81fn+mPhryV7xhqi5TZl0qFMk=;
 b=CGeKrw2UEUvEF9TB41pSbpYqYQas8n0EeDi8PNf5NigJ551ES1S+2iHYS9mB2dY4FA
 TTlHs4Kx+SfLXiKGeF2hhuUmLPIF4Irxq/QSbfSq5eYed/Cw8PLzfPrCq1TkavwpxBkC
 EKq1ijZ4OOY4z8mxIb16mmOcOqn/yST4XTn0yUfT6y+NXSHrp0pK5Umx8yRPfg+ApKlr
 Ml1WrH3xyuktFdPOEOAlpRc1euyKKcyIbWtxejWLqksMQ7u2FdTPU5IGonAOPnXp/cyX
 eoADNw5qsveuBUWZ/48Zq1WqlxAv4Xu8bry2XL8KVtRXuun7EErji9o7j/Q8/C6/wF0z
 /nlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=MG2uESR/rqGAii9OuT81fn+mPhryV7xhqi5TZl0qFMk=;
 b=lMr1gSsRZQQKWMCBOOQo2TxsRyAQkLNIJTg1z9/YpY36AjQ5IfSnKeXBIMTmgc5Izy
 WgFXzSMX1xTXgofx677c9uLF/AgS6r7mlJq3x/d0Dt4qjCJXsZYElg3Ln9c7AxLC0Hst
 Y/pcz58uqSHtgFyM97xUrztrKsyLagh+USPcY2xTWQXmlo1PIYCOq+3JbFlMloOHxAT/
 Omdno2FWDUadN00VbmQlQwCzqwxpRz5ONm9y/rsuDmzizZVfzQV1S37orz/A9tWL1LpF
 dig8bmzxv/4feI2kvzF+3kVXhcc29qi/bgPdP2Y4uThB5Gu4z/aUo4b6Bn1A6EMa32VN
 tXQw==
X-Gm-Message-State: APjAAAXmI2bdSjZEdu49zY56HgYfzFY6tJHudavdcLgSf5sQDp3HNmO8
 bFAVtgTxkwP6D0pRw8Lx4vf0QxxgkAfq/kizAZVyC/OL
X-Google-Smtp-Source: APXvYqzi7DOMgLIM8JK5U+buE6uItaAr8eoQ6MggIDs84C7vMEhpVZ3HVq7gl04GkYMg5bDms9Ix71ZA2T3joY+EkxQ=
X-Received: by 2002:a2e:9bc6:: with SMTP id w6mr62972518ljj.156.1564500074646; 
 Tue, 30 Jul 2019 08:21:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190726112737.19309-1-anders.roxell@linaro.org>
 <20190726122956.GC26088@lakrids.cambridge.arm.com>
 <20190726151825.GA12552@e121166-lin.cambridge.arm.com>
 <20190730112415.GB51922@lakrids.cambridge.arm.com>
 <20190730112758.ctgg6l5gldsefdgs@willie-the-truck>
 <CADYN=9+9wnpX1jSaDmowDov9GerQsdobxnVqwAf=WGk=7-VcRw@mail.gmail.com>
 <20190730124352.iwh5kbnc2d76mqyf@willie-the-truck>
In-Reply-To: <20190730124352.iwh5kbnc2d76mqyf@willie-the-truck>
From: Anders Roxell <anders.roxell@linaro.org>
Date: Tue, 30 Jul 2019 17:21:03 +0200
Message-ID: <CADYN=9+9pUuMVwEw1_mgLsGMmB3Hm_EHr9vbwQZ_Axd7o9VFZw@mail.gmail.com>
Subject: Re: [PATCH] arm_pmu: Mark expected switch fall-through
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_082118_613981_62BF25FA 
X-CRM114-Status: GOOD (  21.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAzMCBKdWwgMjAxOSBhdCAxNDo0MywgV2lsbCBEZWFjb24gPHdpbGxAa2VybmVsLm9y
Zz4gd3JvdGU6Cj4KPiBPbiBUdWUsIEp1bCAzMCwgMjAxOSBhdCAwMjozMDoyN1BNICswMjAwLCBB
bmRlcnMgUm94ZWxsIHdyb3RlOgo+ID4gT24gVHVlLCAzMCBKdWwgMjAxOSBhdCAxMzoyOCwgV2ls
bCBEZWFjb24gPHdpbGxAa2VybmVsLm9yZz4gd3JvdGU6Cj4gPiA+Cj4gPiA+IE9uIFR1ZSwgSnVs
IDMwLCAyMDE5IGF0IDEyOjI0OjE1UE0gKzAxMDAsIE1hcmsgUnV0bGFuZCB3cm90ZToKPiA+ID4g
PiBPbiBGcmksIEp1bCAyNiwgMjAxOSBhdCAwNDoxODoyNVBNICswMTAwLCBMb3JlbnpvIFBpZXJh
bGlzaSB3cm90ZToKPiA+ID4gPiA+IE9uIEZyaSwgSnVsIDI2LCAyMDE5IGF0IDAxOjI5OjU2UE0g
KzAxMDAsIE1hcmsgUnV0bGFuZCB3cm90ZToKPiA+ID4gPiA+ID4gT24gRnJpLCBKdWwgMjYsIDIw
MTkgYXQgMDE6Mjc6MzdQTSArMDIwMCwgQW5kZXJzIFJveGVsbCB3cm90ZToKPiA+ID4gPiA+ID4g
PiBXaGVuIGZhbGwtdGhyb3VnaCB3YXJuaW5ncyB3YXMgZW5hYmxlZCBieSBkZWZhdWx0IHRoZSBm
b2xsb3dpbmcgd2FybmluZwo+ID4gPiA+ID4gPiA+IHdhcyBzdGFydGluZyB0byBzaG93IHVwOgo+
ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gLi4vZHJpdmVycy9wZXJmL2FybV9wbXUuYzogSW4g
ZnVuY3Rpb24g4oCYY3B1X3BtX3BtdV9ub3RpZnnigJk6Cj4gPiA+ID4gPiA+ID4gLi4vZHJpdmVy
cy9wZXJmL2FybV9wbXUuYzo3MjY6Mzogd2FybmluZzogdGhpcyBzdGF0ZW1lbnQgbWF5IGZhbGwK
PiA+ID4gPiA+ID4gPiAgdGhyb3VnaCBbLVdpbXBsaWNpdC1mYWxsdGhyb3VnaD1dCj4gPiA+ID4g
PiA+ID4gICAgY3B1X3BtX3BtdV9zZXR1cChhcm1wbXUsIGNtZCk7Cj4gPiA+ID4gPiA+ID4gICAg
Xn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KPiA+ID4gPiA+ID4gPiAuLi9kcml2ZXJzL3Bl
cmYvYXJtX3BtdS5jOjcyNzoyOiBub3RlOiBoZXJlCj4gPiA+ID4gPiA+ID4gICBjYXNlIENQVV9Q
TV9FTlRFUl9GQUlMRUQ6Cj4gPiA+ID4gPiA+ID4gICBefn5+Cj4gPiA+ID4gPiA+ID4KPiA+ID4g
PiA+ID4gPiBSZXdvcmsgc28gdGhhdCB0aGUgY29tcGlsZXIgZG9lc24ndCB3YXJuIGFib3V0IGZh
bGwtdGhyb3VnaC4KPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+IEZpeGVzOiBkOTM1MTJlZjBm
MGUgKCJNYWtlZmlsZTogR2xvYmFsbHkgZW5hYmxlIGZhbGwtdGhyb3VnaCB3YXJuaW5nIikKPiA+
ID4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBBbmRlcnMgUm94ZWxsIDxhbmRlcnMucm94ZWxsQGxp
bmFyby5vcmc+Cj4gPiA+ID4gPiA+ID4gLS0tCj4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiBJ
J20gbm90IGNvbnZpbmNlZCB0aGF0IHRoaXMgaXMgdGhlIGNvcnJlY3QgcGF0Y2ggdG8gZml4IHRo
aXMgaXNzdWUuCj4gPiA+ID4gPiA+ID4gSG93ZXZlciwgSSBjYW4ndCBzZWUgd2h5IHdlIGRvICdh
cm1wbXUtPnN0YXJ0KGFybXBtdSk7JyBvbmx5IGluICdjYXNlCj4gPiA+ID4gPiA+ID4gQ1BVX1BN
X0VOVEVSX0ZBSUxFRCcgYW5kIHdoeSB3ZSBub3QgY2FsbCBmdW5jdGlvbiBjcHVfcG1fcG11X3Nl
dHVwKCkKPiA+ID4gPiA+ID4gPiB0aGVyZSBhbHNvLCBzaW5jZSBpbiBjcHVfcG1fcG11X3NldHVw
KCkgaGFzIGEgY2FzZSBwcmVwYXJlZCBmb3IKPiA+ID4gPiA+ID4gPiBDUFVfUE1fRU5URVJfRkFJ
TEVELgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBJIGFncmVlLCB0aGluayB0aGF0IHNob3VsZCBi
ZToKPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gICBjYXNlIENQVV9QTV9FWElUOgo+ID4gPiA+ID4g
PiAgIGNhc2UgQ1BVX1BNX0VOVEVSX0ZBSUxFRDoKPiA+ID4gPiA+ID4gICAgICAgICAgIGNwdV9w
bV9wbXVfc2V0dXAoYXJtcG11LCBjbWQpOwo+ID4gPiA+ID4gPiAgICAgICAgICAgYXJtcG11LT5z
dGFydChhcm1wbXUpOwo+ID4gPiA+ID4gPiAgICAgICAgICAgYnJlYWs7Cj4gPiA+ID4gPiA+Cj4g
PiA+ID4gPiA+IC4uLiBzbyB0aGF0IHdlIHJlLXN0YXJ0IHRoZSBldmVudHMgYmVmb3JlIHdlIHN0
YXJ0IHRoZSBQTVUuCj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IFRoYXQgd291bGQgYmUgYSBmaXgg
Zm9yIGNvbW1pdDoKPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gICBkYTRlNGYxOGFmZTBmMzcyICgi
ZHJpdmVycy9wZXJmOiBhcm1fcG11OiBpbXBsZW1lbnQgQ1BVX1BNIG5vdGlmaWVyIikKPiA+ID4g
PiA+Cj4gPiA+ID4gPiBZZXMgdGhhdCdzIGNvcnJlY3QsIGFwb2xvZ2llcy4gUHJvYmFibHkgd2Ug
ZGlkIG5vdCBoaXQgaXQgYmVjYXVzZSBDUFUgUE0KPiA+ID4gPiA+IG5vdGlmaWVyIGVudHJ5IGZh
aWx1cmVzIGFyZSBhIHByZXR0eSByYXJlIGV2ZW50OyByZWdhcmRsZXNzOgo+ID4gPiA+ID4KPiA+
ID4gPiA+IEFja2VkLWJ5OiBMb3JlbnpvIFBpZXJhbGlzaSA8bG9yZW56by5waWVyYWxpc2lAYXJt
LmNvbT4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBJIGNhbiBzZW5kIHRoZSB1cGRhdGVkIGZpeCwganVz
dCBsZXQgbWUga25vdy4KPiA+ID4gPgo+ID4gPiA+IEknbSBub3Qgc3VyZSB3aGF0IFdpbGwgd2Fu
dHMsIGJ1dCBhc3N1bWluZyB5b3UgZG8gc286Cj4gPiA+ID4KPiA+ID4gPiBBY2tlZC1ieTogTWFy
ayBSdXRsYW5kIDxtYXJrLnJ1dGxhbmRAYXJtLmNvbT4KPiA+ID4KPiA+ID4gSSBnYXZlIHVwIHdh
aXRpbmcKPiA+Cj4gPiBJJ20gc29ycnkgZm9yIGxldHRpbmcgeW91IHdhaXQuCj4KPiBObywgbm90
IGF0IGFsbC4gSXQncyBqdXN0IHRoYXQgZXZlcnlib2R5IHdhcyBwaWxpbmcgaW4gd2l0aCBwYXRj
aGVzIGZvcgo+IHRoZXNlIGlzc3VlcyBhbmQgSSBzdXNwZWN0ZWQgeW91IHdlcmUgYnVzeSBkZWFs
aW5nIHdpdGggcmVzcG9uc2VzLiBSYXRoZXIKPiB0aGFuIHdhaXQsIEkgZmlndXJlZCB0aGUgYmVz
dCBiZXQgd2FzIGp1c3QgdG8gZ2V0IHRoaXMgZml4ZWQuCgpUaGFua3MuCgo+Cj4gQXJlIHlvdSBn
b2luZyB0byByZXNwaW4gdGhlIFNNTVV2MyBjaGFuZ2UgcGVyIFJvYmluJ3MgZmVlZGJhY2s/CgpZ
ZXMsIGp1c3Qgc2VudCBpdC4KCkNoZWVycywKQW5kZXJzCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
