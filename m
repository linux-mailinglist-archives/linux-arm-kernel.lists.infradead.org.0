Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84E1F68355
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 07:44:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2wn2PUU4d+tauGrEDuwqAAY+82Nh3QY518r6PXAxXAA=; b=o8h3yegpLcE2Px
	fcA7OeDFEnLAsdZbAtM4+FQUKMP2sErRyRyYaGCbPMYPjDq+4JMBEr66GT9Bvn0VGXpqzqw3Ag2fM
	l+jGLO3gP6Fm1PrVsQ5/Bvint7G3jQsmcbSWULvJdV0jzOsyi3hBmDeAYjqQdkUlQhS5+KahQHnZd
	EEMw/m8gF40Jh4vVT29ygajjszXI/bdkGvdrmFBpBYyAGIkaIg5i8D03Ke8msULiAyj3T+9/Pkj9l
	2a6ZOYXGUD+s703BT7uY5Itju9pEJWrvmo9wfdvFFcUC/GgHztFQ7xSZhU9d1usQy9n2lK16cWrN5
	oy7RyVh4rcIH97obG6/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmtm9-0007qj-VQ; Mon, 15 Jul 2019 05:43:50 +0000
Received: from mail-yb1-xb41.google.com ([2607:f8b0:4864:20::b41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmtlv-0007qE-Ks
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 05:43:37 +0000
Received: by mail-yb1-xb41.google.com with SMTP id c202so4437178ybf.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 14 Jul 2019 22:43:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=x1fTuAZhIfrlETbUSsP1dpVtOtalwzPUJBl71LNvF/I=;
 b=kuCj5ogPMdv0UR/QbaMvt17fr1Kks7yEIQad2BJdVAokAZGlp1pIrgGLGzQdE0T1RV
 He4TDIBNF2P9i7c1V/dsB/e3IQveyT5EDel5NOC4W7KrSmfeqlqj6hkp7T2KAeplDFAE
 A/Ey/a40RVJy2pswyCyrxpPA6hUPt+ZRXoqg/v8a+5C15YZtMf9Niyg638/l0aneZsUV
 8NqbReKDtdSyFKHPPXkLvAoe8VjQSr7oeTUH3hxoxVsn6Va/r+CZ3OLFdRA4Hv04sVEh
 /67D9sbCHe9uCbd9vvLLbgobLk+mhRSNo0VSMRzb70MGGgT7y6W+BUlhjVkbja4k4vyZ
 lzvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=x1fTuAZhIfrlETbUSsP1dpVtOtalwzPUJBl71LNvF/I=;
 b=EihxRNfKqxSFAZOCKtkvHDLFNmWvsFhoHu/0+TUcp+QQRfNTok6TKYl6YiFFCUev1o
 ZwEuXLhpgZ3MOJLmVM2CvjxzFI2O95c2xsLceo6rvYXRoUvAWLm/U2LCHNDOFz0/J/FE
 q0J+UVREsYD2UMCVDvnS5jTGzO8raNliuqqHBb9pCUsjYYdV02zcJdQYz+7EycCzrD0o
 0CM8YovzzFZgyKhw8Z1IMenX9gmIfhS0PYW6mQhHxmfpYVn8VlnOoLBIOL5cIW+FB8CK
 npQG4yOEbhDZqHd+D4i6YxEExl0V8ZLV6T3ZKOswmvV63+tkCm+iesKRGzg3CsgeHCzU
 q/PA==
X-Gm-Message-State: APjAAAXvM6ggujGVkCWxnTr1mgirB8dYgmOr+TTgmSweJZtvGnl+GbkZ
 TZjZ/tZmPf6Eb8yzHIM5UxHMLj7DYrPk9AbViQc=
X-Google-Smtp-Source: APXvYqxAyT0M6B1ZXmetW6nzhOPqBX2DjnMDBB77OGQIp1Q/u6NBc/ONz4SQsmC8fZf4oF3b4dFRdlG5OJHS/2lqFY0=
X-Received: by 2002:a25:d10c:: with SMTP id i12mr14015312ybg.395.1563169414192; 
 Sun, 14 Jul 2019 22:43:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190715031723.6375-1-huangfq.daxian@gmail.com>
 <72c45b14-f0c0-9d1c-0953-eea70ce513a0@kernel.org>
In-Reply-To: <72c45b14-f0c0-9d1c-0953-eea70ce513a0@kernel.org>
From: Fuqian Huang <huangfq.daxian@gmail.com>
Date: Mon, 15 Jul 2019 13:43:23 +0800
Message-ID: <CABXRUiQXweOLRTpdyhx9xT_B1VBmoSoNm=_+Qr4prmz7u1QRFA@mail.gmail.com>
Subject: Re: [PATCH v3 04/24] dmaengine: qcom_hidma: Remove call to memset
 after dmam_alloc_coherent
To: Sinan Kaya <Okaya@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_224335_720929_AB1C5F2F 
X-CRM114-Status: GOOD (  13.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b41 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (huangfq.daxian[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-msm@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, David Brown <david.brown@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Andy Gross <agross@kernel.org>,
 dmaengine@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U2luYW4gS2F5YSA8T2theWFAa2VybmVsLm9yZz4g5pa8IDIwMTnlubQ35pyIMTXml6XpgLHkuIAg
5LiL5Y2IMTI6MTflr6vpgZPvvJoKPgo+IE9uIDcvMTQvMjAxOSAxMToxNyBQTSwgRnVxaWFuIEh1
YW5nIHdyb3RlOgo+ID4gSW4gY29tbWl0IDUxOGEyZjE5MjVjMwo+ID4gKCJkbWEtbWFwcGluZzog
emVybyBtZW1vcnkgcmV0dXJuZWQgZnJvbSBkbWFfYWxsb2NfKiIpLAo+ID4gZG1hX2FsbG9jX2Nv
aGVyZW50IGhhcyBhbHJlYWR5IHplcm9lZCB0aGUgbWVtb3J5Lgo+ID4gU28gbWVtc2V0IGlzIG5v
dCBuZWVkZWQuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogRnVxaWFuIEh1YW5nIDxodWFuZ2ZxLmRh
eGlhbkBnbWFpbC5jb20+Cj4KPiBJIGRvbid0IHNlZSBTV0lPIG9yIEFSTTY0IElPTU1VIGRyaXZl
cnMgZ2V0dGluZyBpbXBhY3RlZCBieQo+IHRoZSBtZW50aW9uZWQgY2hhbmdlIGFib3ZlICg1MThh
MmYxOTI1YzMpLgo+Cj4gSG93IGRvZXMgdGhpcyBuZXcgYmVoYXZpb3IgYXBwbHkgZ2xvYmFsbHk/
Cj4KSW4gdGhlIGxhc3QgdmVyc2lvbiBwYXRjaCBzZXQsIEkgcmVmZXJlbmNlZCB0aGUgY29tbWl0
IGFmN2RkZDhhNjI3YwooIk1lcmdlIHRhZyAnZG1hLW1hcHBpbmctNC4yMScgb2YKZ2l0Oi8vZ2l0
LmluZnJhZGVhZC5vcmcvdXNlcnMvaGNoL2RtYS1tYXBwaW5nIikKaW4gdGhlIGNvbW1pdCBsb2cu
ClRoZSBtZXJnZWQgY29tbWl0IG1lbnRpb25zIHRoYXQKImVuc3VyZSBkbWFfYWxsb2NfY29oZXJl
bnQgcmV0dXJucyB6ZXJvZWQgbWVtb3J5IHRvCmF2b2lkIGtlcm5lbCBkYXRhIGxlYWtzIHRocm91
Z2ggdXNlcnNwYWNlLgpXZSBhbHJlYWR5IGRpZCB0aGlzIGZvciBtb3N0IGNvbW1vbiBhcmNoaXRl
Y3R1cmVzLApidXQgdGhpcyBlbnN1cmVzIHdlIGRvIGl0IGV2ZXJ5d2hlcmUuIgpkbWFfYWxsb2Nf
Y29oZXJlbnQgaGFzIGFscmVhZHkgemVyb2VkIHRoZSBtZW1vcnkgZHVyaW5nIGFsbG9jYXRpb24K
YW5kIHRoZSBjb21taXQgYWxzbyBkZXByZWNhdGVzIGRtYV96YWxsb2NfY29oZXJlbnQuCkdyZWcg
YW5kIG90aGVyIG1haW50YWluZXIgdG9sZCBtZSB0byB1c2UgdGhlIGFjdHVhbCBjb21taXQKcmF0
aGVyIHRoYW4gdGhlIG1lcmdlZCBjb21taXQuClNvIEkgcmVmZXJlbmNlIHRoZSBjb21taXQgdGhh
dCBlbnN1cmVzIHRoZSBkbWFfYWxsb2NfY29oZXJlbnQgdG8KcmV0dXJucyB6ZXJvZWQgbWVtb3J5
IGV2ZXJ5IHdoZXJlLgpNYXliZSB0aGlzIGJlbG9uZ3MgdG8gdGhlIGBtb3N0IGNvbW1vbiBhY2hp
dGVjdHVyZXNgIGFuZCBpcyBub3QgaW1wYWN0ZWQKYnkgdGhlIG1lbnRpb25lZCBjaGFuZ2UuClNo
b3VsZCBJIHJld3JpdGUgdGhlIGNvbW1pdCBsb2c/IEp1c3QgbWVudGlvbiB0aGF0IGRtYV9hbGxv
Y19jb2hlcmVudApoYXMgYWxyZWFkeQp6ZXJvZWQgdGhlIG1lbW9yeSBhbmQgbm90IHRvIHJlZmVy
ZW5jZSB0aGUgY29tbWl0PwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
