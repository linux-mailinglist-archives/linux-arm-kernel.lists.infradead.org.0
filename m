Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19AD41F4D76
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 08:03:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wRd53uCl4bG+mD4LpY9zYWyOf8EcgJI8J7RZxIX1ReU=; b=Et4g1mN43IH7c/
	Gvia5xcbpIDG2cTfNUVrZLdAlc7aaojnoLL5SbEHdiyspBKM5h/5tBidzTQUsukfJyWrUqsGk25HF
	49MoLj0Ql2z0LhjCUCez/1I57zK5RILXTLRztqnhBnRyaLAicd4HVio2zZ4kz4pMPnu2+/RTPNLzj
	vMdi9lH4ylmzPwoq/n06v0UJ/fpSWnMs4CV4btBzE7U4/8jQ5tlVBVv7i1/7fWBuL8KyjD9kzfF2K
	0RX3CGkYYZuQGS0dTjkkD5Y9PXo6aIPqNmASwv0mZl1avQj40scSMs/9dKzVEwCm3wNAoHGkIo+QS
	hbKS7n0XwjU2lVn7MZMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jitpR-0002Xi-GN; Wed, 10 Jun 2020 06:03:13 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jitpK-0002Wv-QW
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 06:03:08 +0000
Received: by mail-wr1-x443.google.com with SMTP id y17so775315wrn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 23:03:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=mvokNqexRaegU1modB7NHhGEwXygj1rNSFFDdGJdwa0=;
 b=mMAGEukTDdiryhtO2yW2E65dypnqCGYbqRrs7w7rKE/V+EEhAhBM27L4eNMIGkYQqd
 EFkWD7+mPh+dpmN6keyW+8gGZxasZh2CJGRTghTOMp+Vg3YlsI1Cogf6VwyGv5oCQ9eL
 BznuKmizzvAmZpw4YFSZHDSXMvPUYArmHD50q5r79HngvZ4P/kONZDkm+6lB3b76iBEg
 6PHxDgbF93E8986oHdtewWko1O8gyekJ+/j/fd81jbb2rL0ICxOgPw3pEmMNDtPRRq+b
 xPBQOlfwnIYmoMe9wzlyZZsm+UK5bPVow+Yc+d6EA4GN/ElP4+7JDH8ZV5XqI3oi9hGG
 Sr0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=mvokNqexRaegU1modB7NHhGEwXygj1rNSFFDdGJdwa0=;
 b=AYVICCt2aLdLAUtG1JXw4/nYotauB3lvjtTCryoiPJqiIxefghFq6it7uFElQjmRpc
 BEGzoUM79dP+6FK7oV5L28wW3Ol+F2WCGQr1PtPnAeShvZ65bHP9zXWnmwO6Jyf2CUfv
 JyErciN/Gl2oS1zsZBc1Z6DG3uB+hf+j3/chmjlgqjbMOp7yf8reXXxGOCmsIreZInyi
 0GMwgUo/o3A5zVNy1izn4jcJ1B4fDyq7C7g5amDX2jseBXdfWgPA2R7CTIrI5Lwz3HR9
 deIjUI7g5kjf7FPA0pm9zb3UOr9MhmFMASb4DMKphNu8keZJ/YHwLHFvkcyuJj2Mcek3
 TH5g==
X-Gm-Message-State: AOAM531KKLrENFxrLdSENZI9tO/o5GmLtxwfTHfRJsfYa2gR9w61IhLt
 nDXjfx1nwbnrmYiWvmCfbyc=
X-Google-Smtp-Source: ABdhPJyWv4V1rxzPNSAS30xkqIspxg9pNDEfhvr6Do6JVCr3W3NNGdGXnItKMO7FLMOxDcCF6HDvXg==
X-Received: by 2002:a05:6000:1146:: with SMTP id
 d6mr1639898wrx.400.1591768984735; 
 Tue, 09 Jun 2020 23:03:04 -0700 (PDT)
Received: from macbook-pro-alvaro.lan (28.red-83-49-61.dynamicip.rima-tde.net.
 [83.49.61.28])
 by smtp.gmail.com with ESMTPSA id q5sm6449183wrm.62.2020.06.09.23.03.03
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Jun 2020 23:03:04 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Subject: Re: [PATCH 1/4] dt-bindings: soc: brcm: add BCM63xx power domain
 binding
From: =?utf-8?Q?=C3=81lvaro_Fern=C3=A1ndez_Rojas?= <noltari@gmail.com>
In-Reply-To: <f6cbb9bb-15df-6283-a509-ea8a8b9bdaab@gmail.com>
Date: Wed, 10 Jun 2020 08:03:02 +0200
Message-Id: <EC84127B-DFF6-4EE3-ABDF-BEFAD6BCDEFB@gmail.com>
References: <20200609105244.4014823-1-noltari@gmail.com>
 <20200609105244.4014823-2-noltari@gmail.com>
 <f6cbb9bb-15df-6283-a509-ea8a8b9bdaab@gmail.com>
To: Florian Fainelli <f.fainelli@gmail.com>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_230306_858865_441B5092 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, tsbogend@alpha.franken.de, hauke@hauke-m.de,
 zajec5@gmail.com, linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, bcm-kernel-feedback-list@broadcom.com,
 Jonas Gorski <jonas.gorski@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T2ssIEkgd2lsbCBzZW5kIHYyIHdpdGggYSBzZXBhcmF0ZSBZQU1MIGZpbGUuCgo+IEVsIDEwIGp1
biAyMDIwLCBhIGxhcyAzOjE1LCBGbG9yaWFuIEZhaW5lbGxpIDxmLmZhaW5lbGxpQGdtYWlsLmNv
bT4gZXNjcmliacOzOgo+IAo+IAo+IAo+IE9uIDYvOS8yMDIwIDM6NTIgQU0sIMOBbHZhcm8gRmVy
bsOhbmRleiBSb2phcyB3cm90ZToKPj4gQkNNNjMxOCwgQkNNNjMyOCwgQkNNNjM2MiBhbmQgQkNN
NjMyNjggU29DcyBoYXZlIGEgcG93ZXIgZG9tYWluIGNvbnRyb2xsZXIKPj4gdG8gZW5hYmxlL2Rp
c2FibGUgY2VydGFpbiBjb21wb25lbnRzIGluIG9yZGVyIHRvIHNhdmUgcG93ZXIuCj4+IAo+PiBT
aWduZWQtb2ZmLWJ5OiDDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgPG5vbHRhcmlAZ21haWwuY29t
Pgo+PiAtLS0KPj4gLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbWlwcy9icmNtL3NvYy50eHQgICAg
ICAgfCAxNyArKysrKysrKysrKysrKysrKwo+IAo+IFlvdSBzaG91bGQgcHJvYmFibHkgY3JlYXRl
IGEgWUFNTCBiaW5kaW5nIGZyb20gdGhlIGJlZ2lubmluZyB0aGF0IHdheQo+IHlvdSBnZXQgdmFs
aWRhdGlvbiBmb3IgZnJlZS4gVGhpcyBmaWxlIHNob3VsZCB1bHRpbWF0ZWx5IGJlIGJyb2tlbiBk
b3duCj4gaW50byBzZXBhcmF0ZSBZQU1MIGJpbmRpbmdzLCBidXQgSSBIYXZlIG5vdCBoYWQgdGhl
IHRpbWUgdG8gZG8gdGhhdCB5ZXQKPiAoeW91IGFyZSB3ZWxjb21lIHRvIGlmIHlvdSBmZWVsIGxp
a2UgaXQpLgo+IAo+IE90aGVyIHRoYW4gdGhhdCwgdGhlIGJpbmRpbmcgZGVmaW5pdGlvbiBsb29r
cyBnb29kIHRvIG1lLgo+IC0tIAo+IEZsb3JpYW4KCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
