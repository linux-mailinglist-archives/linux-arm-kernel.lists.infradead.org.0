Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F306C6566D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 14:12:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RrRAnqhMFGAZX2psoeQpU9WT5kvA1BNIu0IeHhPpkBY=; b=aKUpN94pyRMn7e
	4QQjJyfCpL5EUfEqOOhfDWrmQg6iQCoz9psDOXZFg3BFHlp32PCfF6RfbsCWuXX+5EWnL5/0JY4FY
	wHZyW6k2OliTD5Yhzyb39bs51/KW76FMIx+M55/rkWKGXvdh3/Hh4AjTkmWDlrvRxgm6Z+dLLHqtk
	kHcj7UMx0r6eLk3Vc5uWssfTgR8C16FJn2+QEOWy1BPN4mQ3fwBmwwQn/5BULGfJ1arXnI4fX+AUK
	nDHmIM8u3ETTXpKKoSnCSmhJXOsvnT1REXKsPQ08TdhMJzvl+LtUbCJQkQF2Ti9EY++QxsrDyCwZ8
	ZvGuQI3PZBBgQslYfwxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlXwO-0005Mk-Hx; Thu, 11 Jul 2019 12:12:48 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlXwG-0005Lu-J0
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 12:12:42 +0000
Received: by mail-yw1-xc44.google.com with SMTP id x74so3158092ywx.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 05:12:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=JLpZTDyH6Q/WVfB7D3ohVeoj0U2p4Tl2uxiI/qIEuhc=;
 b=EfH6sWliBwbfu8sqP4opjoREUcenXWr13a17h77Bpj68HtnncvSRktKCJdngvBVDGj
 iQx8/rI+Ht34P/XquSJHbApJUdh/UZEkkZEz6DXXyvlFkxrKzcbRGI11PUWT4qaM5eeY
 RplKIYBYyVnToeLtjPy3d7F1sWPNJA7VDNZTfUw9nlEj/xUpi1Mzv19F2vrUPMFbxpiZ
 1v0pI61zsb31WW2gsjIrMIAhYnAM3rAFhzTNgZnEKm2OShiMCPC/5+n9YVP7gjT/fXCp
 9XvWqs7A+pS5OONot6+lyJ8pIxT6uzZFhhl2voygxFNNN5eSCQm/I10uk6fgYHZtUFc2
 mG5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=JLpZTDyH6Q/WVfB7D3ohVeoj0U2p4Tl2uxiI/qIEuhc=;
 b=iEztZCV3UWu7CMcKgdOXQ2fTbSN+djXHk3KPjg+BACaTupaz/oRr8AImZyX27K0nC3
 9iEXAC2Ugqk+N6Sf3BIk/QEaPwNVpZfNahittbA6W/3yiUszbho8RiDhdcooOt1AxtNn
 toADsWRG2ZbwGjnlhLauwQcaW3+4HfRppWCo/kmeCPj9ncsZ/dbXbyp3nUVRXQQZNd3X
 b/z/zUo/OXI4UG0YvF7823cdukEWo0aSsuWtlH7KXoB/bnNKdCP0LDfxw4HwlB98VtmF
 Z9DTDWzY8EUuzvg9c9dLql69iXT3/D4u5rV6jKqS/y+fWb0sFHQz6Vu7z+dLtop6Y8W3
 ULTw==
X-Gm-Message-State: APjAAAXtBq6O47iPrmnH550T6fVPEadX5I1GC+9wxxiegT7V3igSs8dd
 R0ZeGIM3jHPoUl5XGneK/uN6JWoNipYt5vXgY54SJA==
X-Google-Smtp-Source: APXvYqzGVBbdyzATQFuVMW3IFDJn0oZE3752K4RBlif7yTSyE6BtlJCKiTmlzKVDg38zAYQuNx/xDs549BoClqzTLhQ=
X-Received: by 2002:aed:3f47:: with SMTP id q7mr1946820qtf.209.1562847159155; 
 Thu, 11 Jul 2019 05:12:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190507091224.17781-1-benjamin.gaignard@st.com>
 <20190711115059.GA7778@icarus>
In-Reply-To: <20190711115059.GA7778@icarus>
From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Date: Thu, 11 Jul 2019 14:12:27 +0200
Message-ID: <CA+M3ks42Whd=QVQ-4==n5bRJKEwYpQtRHs=gBGEZ_Hr=_8YU1g@mail.gmail.com>
Subject: Re: [PATCH] IIO: stm32: Remove quadrature related functions from
 trigger driver
To: William Breathitt Gray <vilhelm.gray@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_051240_651497_6D72C2AB 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Lars-Peter Clausen <lars@metafoo.de>,
 Benjamin Gaignard <benjamin.gaignard@st.com>, linux-iio@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, Jonathan Cameron <jic23@kernel.org>,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgamV1LiAxMSBqdWlsLiAyMDE5IMOgIDEzOjUxLCBXaWxsaWFtIEJyZWF0aGl0dCBHcmF5Cjx2
aWxoZWxtLmdyYXlAZ21haWwuY29tPiBhIMOpY3JpdCA6Cj4KPiBPbiBUdWUsIE1heSAwNywgMjAx
OSBhdCAxMToxMjoyNEFNICswMjAwLCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90ZToKPiA+IFF1YWRy
YXR1cmUgZmVhdHVyZSBpcyBub3cgaG9zdGVkIG9uIGl0IG93biBmcmFtZXdvcmsuCj4gPiBSZW1v
dmUgcXVhZHJhdHVyZSByZWxhdGVkIGNvZGUgZnJvbSBzdG0zMi10cmlnZ2VyIGRyaXZlciB0byBh
dm9pZAo+ID4gY29kZSBkdXBsaWNhdGlvbiBhbmQgc2ltcGxpZnkgdGhlIEFCSS4KPiA+Cj4gPiBT
aWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAc3QuY29t
Pgo+Cj4gV2hhdCBpcyB0aGUgc3RhdHVzIG9mIHRoaXMgcGF0Y2g/IEFyZSB0aGVyZSBhbnkgb2Jq
ZWN0aW9ucyBjdXJyZW50bHkgZm9yCj4gaXRzIGluY2x1c2lvbj8KCllvdSB3ZXJlIHRoZSBvbmx5
IG9uZSBhc2tpbmcgZm9yIG1vcmUgZGV0YWlscyBhYm91dCBpdCA6LSkKSWYgeW91IGFncmVlIEkg
dGhpbmsgdGhhdCBKb25hdGhhbiBjYW4gbWVyZ2UgaXQuCgpCZW5qYW1pbgo+Cj4gV2lsbGlhbSBC
cmVhdGhpdHQgR3JheQo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPiBsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAo+IGxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
