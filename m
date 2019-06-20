Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B75A44D198
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 17:07:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=voGd9WnyKja+/ZoYLDLrlCYhofHuAoTZ2fUWhKQqxdQ=; b=V5BrI5LOwCzNAz
	6UHWYxoDu2JUML4WAYb6lRLU+b1WhxIcsnKOatVahlh29C7av4Z1QUqbs3TsrGrFVpVcqdrOi7IcH
	fjNkkudFePAKhXjB4LY6qb9xLuuWTBvQYf+cRIyR+wehuupRfd9MdGxm6haG2jQ4J5UkN1y9M0JuQ
	hUslDXyXpJurJ/c+8qdFJF/tRWD4Lg98B50JKkyVW5GuT9i+J6GqPGuTx1fTapFuOC8Q/zbBg48+3
	cCUwwWzLDpCZxWsqzauTcJMOYcSUJ+XFfBDZbthLrX5KkiuUAI1m9LERFpHs++oLEyqscoSV8dLsh
	f3psUIinw/B1JlQv/X8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdyeu-0001IU-0y; Thu, 20 Jun 2019 15:07:28 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdydE-0008VX-Mu
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 15:05:46 +0000
Received: by mail-qt1-x843.google.com with SMTP id x47so3466671qtk.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 08:05:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=+SlWqt7mGdvs9AkWDoKN464Wi1itv44/ucax1MjY5Lc=;
 b=sy2yUH85O64yGVV1H0EJrjQcDOaj/CH5ejtqXd/eWKCNUQyDKLJ4Ox5EJnSlDquSXm
 SD8EasjV3UB1B5KBD4BJnBVokm+WRQoyVw89nAbRcPXDVbtLQlWLKqGtZ4VKNAIE+OPn
 oZDLcU3qBcF0A3LMaG/5XdlCcXF5Ba2qpye539vqcAVjLvl5CfKX5ey0UqOToFh2swiE
 KiXL6zKImj1xSO+JXDDiNFj4/bXj9QiS8Gf2Eh6SuPs3Z0YBFOxUIaJEAo/rbguyBbq8
 GaZJroCvZZk8cxlYXqtTx9MgwqhC9iVzV2T8mO6IRsQWKuNSzTapj4JuUQRDWb+n1Tdy
 W3UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=+SlWqt7mGdvs9AkWDoKN464Wi1itv44/ucax1MjY5Lc=;
 b=ndS8flwFl8fVx4goeVx/2b1RNaHqwMd2lilcRhFaplIvlaMcze0n/FB1KF0TLmAl/Q
 /bWCml3YF15E4E3EdYwsJD168MLNbjx9PR70vxlyV0RD+L+ZhSdmPn6ZA6Zlih7loOcU
 wScIe3LJU7jmqFsb3H7A3I/HSVIP5tNZhZwywRR3IZRXtB+LY1fzI1m+hY6kPyIuHRGg
 MV3FuEaPpQLhR498+h1Cqf+eJezKRvBOonbkpHhtV6c/rYSngNqVsFqwrnfQAZU9A7Uy
 1c9plDc4fJ6CQtRazFfcjYLAwqAQqtRlFTp3hPI/hnJhN2zwRfTtBRSM6qC0INBzgOHI
 muMA==
X-Gm-Message-State: APjAAAWFBYdzasYKtuydUjc/Pf95yqt9dr2I54blJ5qNh+8LOiz+/kbU
 ehOBE5cDGmbK8jwz36uyL+R0clKBX01hKyxfHv5tsg==
X-Google-Smtp-Source: APXvYqwM0WwCghbi2ShrGdjVLvsTAcFo9iwOmgfOosK9RkDv6TnpEiQTqBaPRpsQc4gKzVQlXZXbkX5AW0qYeR6z2PE=
X-Received: by 2002:ac8:395b:: with SMTP id
 t27mr115053664qtb.115.1561043142986; 
 Thu, 20 Jun 2019 08:05:42 -0700 (PDT)
MIME-Version: 1.0
References: <1560755897-5002-1-git-send-email-yannick.fertre@st.com>
 <7e6a87b6-e442-20cb-0d4e-68eb40c56042@st.com>
In-Reply-To: <7e6a87b6-e442-20cb-0d4e-68eb40c56042@st.com>
From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Date: Thu, 20 Jun 2019 17:05:32 +0200
Message-ID: <CA+M3ks7oNuNnH+0eD5TDLFR_0fFWYA4gGtf40HcbFK4SQ7O-EQ@mail.gmail.com>
Subject: Re: [PATCH 1/3] drm/stm: drv: fix suspend/resume
To: Philippe CORNU <philippe.cornu@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_080544_927586_CFFFD86E 
X-CRM114-Status: GOOD (  17.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Benjamin GAIGNARD <benjamin.gaignard@st.com>,
 David Airlie <airlied@linux.ie>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Yannick FERTRE <yannick.fertre@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Vincent ABRIOU <vincent.abriou@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgbWFyLiAxOCBqdWluIDIwMTkgw6AgMTE6NTcsIFBoaWxpcHBlIENPUk5VIDxwaGlsaXBwZS5j
b3JudUBzdC5jb20+IGEgw6ljcml0IDoKPgo+IEhpIFlhbm5pY2ssCj4KPiBUaGFuayB5b3UgZm9y
IHlvdXIgcGF0Y2guCj4KPiBBY2tlZC1ieTogUGhpbGlwcGUgQ29ybnUgPHBoaWxpcHBlLmNvcm51
QHN0LmNvbT4KCkkgaGF2ZSBjb3JyZWN0ZWQgRml4ZXMgc2hhMSAoc2hvdWxkIGJlIDEyIGRpZ2l0
cykKQXBwbGllZCBvbiBkcm0tbWlzYy1uZXh0LgoKQmVuamFtaW4KCj4KPiBQaGlsaXBwZSA6LSkK
Pgo+IE9uIDYvMTcvMTkgOToxOCBBTSwgWWFubmljayBGZXJ0csOpIHdyb3RlOgo+ID4gV2l0aG91
dCB0aGlzIGZpeCwgdGhlIHN5c3RlbSBjYW4gbm90IGdvIGluICJzdXNwZW5kIiBtb2RlCj4gPiBk
dWUgdG8gYW4gZXJyb3IgaW4gZHJ2X3N1c3BlbmQgZnVuY3Rpb24uCj4gPgo+ID4gRml4ZXM6IDM1
YWI2Y2YgKCJkcm0vc3RtOiBzdXBwb3J0IHJ1bnRpbWUgcG93ZXIgbWFuYWdlbWVudCIpCj4gPgo+
ID4gU2lnbmVkLW9mZi1ieTogWWFubmljayBGZXJ0csOpIDx5YW5uaWNrLmZlcnRyZUBzdC5jb20+
Cj4gPiAtLS0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL3N0bS9kcnYuYyB8IDE1ICsrKysrKysrLS0t
LS0tLQo+ID4gICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygt
KQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vc3RtL2Rydi5jIGIvZHJpdmVy
cy9ncHUvZHJtL3N0bS9kcnYuYwo+ID4gaW5kZXggNTY1OTU3Mi4uOWRlZTRlNCAxMDA2NDQKPiA+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9zdG0vZHJ2LmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9zdG0vZHJ2LmMKPiA+IEBAIC0xMzYsOCArMTM2LDcgQEAgc3RhdGljIF9fbWF5YmVfdW51c2Vk
IGludCBkcnZfc3VzcGVuZChzdHJ1Y3QgZGV2aWNlICpkZXYpCj4gPiAgICAgICBzdHJ1Y3QgbHRk
Y19kZXZpY2UgKmxkZXYgPSBkZGV2LT5kZXZfcHJpdmF0ZTsKPiA+ICAgICAgIHN0cnVjdCBkcm1f
YXRvbWljX3N0YXRlICpzdGF0ZTsKPiA+Cj4gPiAtICAgICBpZiAoV0FSTl9PTighbGRldi0+c3Vz
cGVuZF9zdGF0ZSkpCj4gPiAtICAgICAgICAgICAgIHJldHVybiAtRU5PRU5UOwo+ID4gKyAgICAg
V0FSTl9PTihsZGV2LT5zdXNwZW5kX3N0YXRlKTsKPiA+Cj4gPiAgICAgICBzdGF0ZSA9IGRybV9h
dG9taWNfaGVscGVyX3N1c3BlbmQoZGRldik7Cj4gPiAgICAgICBpZiAoSVNfRVJSKHN0YXRlKSkK
PiA+IEBAIC0xNTUsMTUgKzE1NCwxNyBAQCBzdGF0aWMgX19tYXliZV91bnVzZWQgaW50IGRydl9y
ZXN1bWUoc3RydWN0IGRldmljZSAqZGV2KQo+ID4gICAgICAgc3RydWN0IGx0ZGNfZGV2aWNlICps
ZGV2ID0gZGRldi0+ZGV2X3ByaXZhdGU7Cj4gPiAgICAgICBpbnQgcmV0Owo+ID4KPiA+ICsgICAg
IGlmIChXQVJOX09OKCFsZGV2LT5zdXNwZW5kX3N0YXRlKSkKPiA+ICsgICAgICAgICAgICAgcmV0
dXJuIC1FTk9FTlQ7Cj4gPiArCj4gPiAgICAgICBwbV9ydW50aW1lX2ZvcmNlX3Jlc3VtZShkZXYp
Owo+ID4gICAgICAgcmV0ID0gZHJtX2F0b21pY19oZWxwZXJfcmVzdW1lKGRkZXYsIGxkZXYtPnN1
c3BlbmRfc3RhdGUpOwo+ID4gLSAgICAgaWYgKHJldCkgewo+ID4gKyAgICAgaWYgKHJldCkKPiA+
ICAgICAgICAgICAgICAgcG1fcnVudGltZV9mb3JjZV9zdXNwZW5kKGRldik7Cj4gPiAtICAgICAg
ICAgICAgIGxkZXYtPnN1c3BlbmRfc3RhdGUgPSBOVUxMOwo+ID4gLSAgICAgICAgICAgICByZXR1
cm4gcmV0Owo+ID4gLSAgICAgfQo+ID4KPiA+IC0gICAgIHJldHVybiAwOwo+ID4gKyAgICAgbGRl
di0+c3VzcGVuZF9zdGF0ZSA9IE5VTEw7Cj4gPiArCj4gPiArICAgICByZXR1cm4gcmV0Owo+ID4g
ICB9Cj4gPgo+ID4gICBzdGF0aWMgX19tYXliZV91bnVzZWQgaW50IGRydl9ydW50aW1lX3N1c3Bl
bmQoc3RydWN0IGRldmljZSAqZGV2KQo+ID4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+IGRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKPiBkcmktZGV2ZWxA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9kcmktZGV2ZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
