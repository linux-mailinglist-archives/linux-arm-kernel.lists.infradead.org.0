Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC2045CAA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 14:21:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GX97/aKeRBnZ49vOPcr/6lQwWv39m/e6+tYrJCr78Ts=; b=n3J3Bi8e9+gT8z
	5aac7LeIrM4zp02oV0faA+Shd5GPeBGvkOXYHF07eMpwINJ9LBXCmA7thjSvQlN0nTg0CUNk3YJLK
	mXAhuRPwWpVxB6/hWWeO+Jz8DBYE9uKOWLkUgZcTpTdnOLPL3A3V9e9m6sXVBmtJYUaM3xwcKia5n
	s95K2oLVvxIdmLgcrX7s3DFLhHoUfCVQXtYi6TVaMBwKRWd6LRdaxSHcpA9lEKJgaOeb35PCT8bUJ
	q7KTSYVOM8lsH/9k/Db59D0v4mLSaaND2DZFoSSF69WuPevv/Zb/jQP/zsll4Uc9eywfT2otOIAvZ
	amRnNrj3qYewconiDiDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hblDC-0005A2-TG; Fri, 14 Jun 2019 12:21:42 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbl7P-00077t-GJ
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 12:15:49 +0000
Received: by mail-qk1-x741.google.com with SMTP id a27so1487432qkk.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 05:15:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NyPPbZhNfqDmfzBJP+Zyu4+7by3zecVFnafl9bsTygQ=;
 b=MwtAFV5yKDZjuENka2cZ5Jk7AlcHqmJVvy0inE9n2UrHXv6Yj8vPyzIczqRRsPQB27
 BXZNXoSJ2asYEv3DXU1qY1m8POHEK2cReZLmvV9kMpkk91hs9Vc0TXy9slEzlW9pJTqq
 wYCQXJcJCzP7MLDmYZmoG+lIP5lo7ndpiazZx78N76/6QelZ8XrgRTgM1yZ4tLP41Xgf
 dwAKdY8Qi5IZhJxvLiYYSqAnBTNJ3KiUU0r6bPbzaxmVkLxiZgFT6DHx8/jm7J1zAC/S
 Lov76Ss/4eSiZYZBiWTtqVxluPsPVup5ZjZbQs+Sp5IG4CdrCrILC0OPRiH5mxo+Udxq
 VpbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NyPPbZhNfqDmfzBJP+Zyu4+7by3zecVFnafl9bsTygQ=;
 b=p8Ma9lJqHuPzaoYTVXUCtPd1bZxD59RxMUQ35q7jFys4XqAavd4dRqY2cAn7PQT0p7
 juA/jJ7lgArYg091JoxMsSXmTjwZimP/JCN5eI4UaWck03q3yg9DCl1/dl8wM6yKYcSJ
 T+zFBAKkX1hNII/0n20jnsXzKF4Ul/Ux1JiRgWWdEZk+WXwmBv6sSDrUksGLU5JtQhY8
 W91DLZq69Vq0VJkvAneCFOz/0YRaOJqysqG4GfGCTOJSd7HoA14doRDvI6mr8OZ8+NgV
 rWfgshxVlFE4xhvMRWaP4Kw3t8dVSV/cWZA9JUpxjKKc3tXLKRKlTm+kKBQR26PA8qDP
 c7vQ==
X-Gm-Message-State: APjAAAXhqjED5IQI3GSThig50L1smBrouaUfsF6djQqZNuZF5/dO4/3c
 OottZUnB7pI6SaHtYkZI811ceg==
X-Google-Smtp-Source: APXvYqySndvqdRYK4kC/2Q6riAnaWd2ljn8NHp1bqjNlFAW1l2MJtgQLIQJYpItdU3dRO8CgSWdUEw==
X-Received: by 2002:a37:be41:: with SMTP id o62mr64866623qkf.356.1560514541702; 
 Fri, 14 Jun 2019 05:15:41 -0700 (PDT)
Received: from dhcp-41-57.bos.redhat.com (nat-pool-bos-t.redhat.com.
 [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id y6sm1334495qki.67.2019.06.14.05.15.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 14 Jun 2019 05:15:41 -0700 (PDT)
Message-ID: <1560514539.5154.20.camel@lca.pw>
Subject: Re: LTP hugemmap05 test case failure on arm64 with linux-next
 (next-20190613)
From: Qian Cai <cai@lca.pw>
To: Will Deacon <will.deacon@arm.com>
Date: Fri, 14 Jun 2019 08:15:39 -0400
In-Reply-To: <20190614102017.GC10659@fuggles.cambridge.arm.com>
References: <1560461641.5154.19.camel@lca.pw>
 <20190614102017.GC10659@fuggles.cambridge.arm.com>
X-Mailer: Evolution 3.22.6 (3.22.6-10.el7) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_051543_605643_BE68C033 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-mm@kvack.org" <linux-mm@kvack.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Anshuman Khandual <anshuman.khandual@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAyMDE5LTA2LTE0IGF0IDExOjIwICswMTAwLCBXaWxsIERlYWNvbiB3cm90ZToKPiBI
aSBRaWFuLAo+IAo+IE9uIFRodSwgSnVuIDEzLCAyMDE5IGF0IDA1OjM0OjAxUE0gLTA0MDAsIFFp
YW4gQ2FpIHdyb3RlOgo+ID4gTFRQIGh1Z2VtbWFwMDUgdGVzdCBjYXNlIFsxXSBjb3VsZCBub3Qg
ZXhpdCBpdHNlbGYgcHJvcGVybHkgYW5kIHRoZW4gZGVncmFkZQo+ID4gdGhlCj4gPiBzeXN0ZW0g
cGVyZm9ybWFuY2Ugb24gYXJtNjQgd2l0aCBsaW51eC1uZXh0IChuZXh0LTIwMTkwNjEzKS4gVGhl
IGJpc2VjdGlvbgo+ID4gc28KPiA+IGZhciBpbmRpY2F0ZXMsCj4gPiAKPiA+IEJBRDrCoMKgMzBi
YWZiYzM1N2YxIE1lcmdlIHJlbW90ZS10cmFja2luZyBicmFuY2ggJ2FybTY0L2Zvci1uZXh0L2Nv
cmUnCj4gPiBHT09EOiAwYzNkMTI0YTMwNDMgTWVyZ2UgcmVtb3RlLXRyYWNraW5nIGJyYW5jaCAn
YXJtNjQtZml4ZXMvZm9yLW5leHQvZml4ZXMnCj4gCj4gRGlkIHlvdSBmaW5pc2ggdGhlIGJpc2Vj
dGlvbiBpbiB0aGUgZW5kPyBBbHNvLCB3aGF0IGNvbmZpZyBhcmUgeW91IHVzaW5nCj4gKHlvdSB1
c3VhbGx5IGhhdmUgc29tZXRoaW5nIGZhaXJseSBlc290ZXJpYyA7KT8KCk5vLCBpdCBpcyBzdGls
bCBydW5uaW5nLgoKaHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL2NhaWxjYS9saW51
eC1tbS9tYXN0ZXIvYXJtNjQuY29uZmlnCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
