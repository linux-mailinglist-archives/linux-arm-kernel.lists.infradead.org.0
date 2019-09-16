Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96912B3628
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 10:06:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wDnylfz4NaTLEe9txqDjyLy0Sx6oIhhFMqO8jWSs9BM=; b=lV2cnw7LY1NdXq
	WLj/G39JUUrB38eRmIdKn9dMCAMWrrtZNd22Dr+zIiJUihttJjbZF9TQUrh7bqau4Ufr9QVswlKbR
	wnblJTMLg/I46Yqeje1fvszIFePsKTPg4PUFpZT9sZt87fgUa2zUShgn/pbHaTX+XhOfA6C2TxjQL
	RKFUAXch11R56Kg32YBPj65BTFz69xSs6ts1pwGnIkj/hroSvMsyEWwiSyPzegDtXpmtjlW8LLJyy
	WH0ySpBZCdzPuCapTGDnzy5n0EW9YcV8vABPtk83Q9XFVoaZqu3oPF86j/7QT8oYGnRZigMZPVEXy
	2aVk5Xko4Sj6IZ7lKtMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9m1m-00074d-5m; Mon, 16 Sep 2019 08:06:30 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9m1U-00072m-NV
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 08:06:14 +0000
Received: by mail-wr1-x444.google.com with SMTP id i1so37213490wro.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 01:06:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=W+6eVtm06G2DnerzsFFEVB5vtcZxnWEKRgFaaXCgWGo=;
 b=GQOCBpsSirGcGzdEHlMBfNDzJxPmMj0OYLiV9Nis/yw5ZZOxEauCXKX8VBw8RsVWuL
 5LIF2kZ60pyykpYmXokmE8Ilnhfw2o5V13r9g2PgBApARfipqyJK51ipdgKvzhNGCXzW
 kPWg4wZkXjT/Eq4D8amfyAwabb+GpLpEPNL8/oZbsTnUpAUD+hPiS4yYPCDg8Er7QzBc
 ZPkTbUBSxFg2r1nsJ06/U6hnXMZNJtL8hnn6EIWZdCIv44z2Uk24gaZtGD+UVV4Oblr6
 bq49385yj89jPCjNCz+E1LgaanKJPjcYwqIuhZgRDvsLC1NtRol/Nd99FUPtdwCJR6Ea
 FITw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=W+6eVtm06G2DnerzsFFEVB5vtcZxnWEKRgFaaXCgWGo=;
 b=Ax1F4XztMVZob+euSSK8/cFVdCNXiZCCyHx2AYAqA8PfebySSIJLY7qhfQaBjizmA2
 Xgo6SnGdRLiaTfbZwb5uvyfGrO8drJ7hQrhr1dkosD2egsBEDnx44UAeZ8HRLlKbxC+6
 SUGygNiYYNTQs+Uk2wQWHZCKKd/RPQ+W+PfE6VfuYyw9tVqamrmF8UYIVH5wvoGtvPc8
 viUKCSfhyRWubO+YwnIizIKJKy2v4rb/1p4x8MAmBBwpdnYLhxCllpmlwK1VCNXK42+3
 MKpl9j8ibgUejJPllV8n4LeoQ/BZ+UsyipiAlyQrxu+A5AKDtS6B1C0MFlqPMfSJu3k+
 kf6w==
X-Gm-Message-State: APjAAAU5BcKag/ZwaMhqCGwI8XAhcxfpSQFkcAwhBGzNptitQnNpc+WX
 iSeJF1Z9lAk8CZdgNCGcPs2UVg==
X-Google-Smtp-Source: APXvYqwwzj+YBGHiDs5snINLMmedhcTe4YAqB3nspNDmWc0373N7F0SNqZ0iNwFda6g+BLVUWjyeoQ==
X-Received: by 2002:adf:d848:: with SMTP id k8mr5370448wrl.254.1568621170584; 
 Mon, 16 Sep 2019 01:06:10 -0700 (PDT)
Received: from dell ([2.27.167.122])
 by smtp.gmail.com with ESMTPSA id a13sm72513725wrf.73.2019.09.16.01.06.09
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 16 Sep 2019 01:06:09 -0700 (PDT)
Date: Mon, 16 Sep 2019 09:06:08 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Matthias Brugger <matthias.bgg@gmail.com>
Subject: Re: [PATCH] mfd: mt6360: add pmic mt6360 driver
Message-ID: <20190916080608.GV26880@dell>
References: <1568275837-3560-1-git-send-email-gene.chen.richtek@gmail.com>
 <be0bbf3b-76f8-9e2a-7c51-d5987263a859@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <be0bbf3b-76f8-9e2a-7c51-d5987263a859@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_010612_796443_1E00674E 
X-CRM114-Status: GOOD (  14.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: gene_chen@richtek.com,
 Gene Chen <gene_chen@mediatek.corp-partner.google.com>,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Gene Chen <gene.chen.richtek@gmail.com>, Wilma.Wu@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCAxMiBTZXAgMjAxOSwgTWF0dGhpYXMgQnJ1Z2dlciB3cm90ZToKCj4gSGkgR2VuZSBD
aGVuLAo+IAo+IFBsZWFzZSB1c2UgLi9zY3JpcHRzL2dldF9tYWludGFpbmVyLnBsIHRvIGZpbmQg
b3V0IHdoaWNoIGFyZSB0aGUgbWFpbnRhaW5lcihzKQo+IGZvciBhIHNwZWNpZmljIHNlcmllcy9w
YXRjaC4KPiAKPiBJIGFkZGVkIExlZSBKb25lcywgd2hvIGlzIHRoZSBtYWludGFpbmVyIG9mIHRo
ZSBNVEQgc3Vic3lzdGVtLgo+IAo+IFJpZ2h0IG5vdyBJIGhhdmUgbm8gdGltZSB0byByZXZpZXcg
dGhlIHBhdGNoZXMsIHNvcnJ5Lgo+IAo+IFJlZ2FyZHMsCj4gTWF0dGhpYXMKPiAKPiBPbiAxMi8w
OS8yMDE5IDEwOjEwLCBHZW5lIENoZW4gd3JvdGU6Cj4gPiBGcm9tOiBHZW5lIENoZW4gPGdlbmVf
Y2hlbkBtZWRpYXRlay5jb3JwLXBhcnRuZXIuZ29vZ2xlLmNvbT4KClBsZWFzZSByZXN1Ym1pdCB0
aGlzIGNvbnRhaW5pbmcgYSBzdWl0YWJsZSBjb21taXQgbWVzc2FnZSB3aXRoIG1lIG9uCkNjLgoK
PiA+IC0tLQo+ID4gIGRyaXZlcnMvbWZkL0tjb25maWcgICAgICAgfCAgMTIgKysKPiA+ICBkcml2
ZXJzL21mZC9NYWtlZmlsZSAgICAgIHwgICAxICsKPiA+ICBkcml2ZXJzL21mZC9tdDYzNjAtY29y
ZS5jIHwgNDYzICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysK
PiA+ICAzIGZpbGVzIGNoYW5nZWQsIDQ3NiBpbnNlcnRpb25zKCspCj4gPiAgY3JlYXRlIG1vZGUg
MTAwNjQ0IGRyaXZlcnMvbWZkL210NjM2MC1jb3JlLmMKCi0tIApMZWUgSm9uZXMgW+adjueQvOaW
r10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4gc291
cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0
ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
