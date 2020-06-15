Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 429891F9D65
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 18:28:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SEz8cl/817OWiL4W36CkiEYiIjvZXNTzbNynEK4L3wE=; b=AYnYtiaOME0YGFPVyIKE3tNHCK
	EBBKT2CaAlk+rDWOltGjAgD50atfURRtGbWjTXNCVQVZmFFS+bHnOTh1q/H9qBmzSalblbgIghz5m
	IShQHpvr3ZpmbDX79ZFT7XH9XfPbPIuLyRcZI+YOx8fjg50M6anE36anUZOBn4bNtHtD9pxjtk6O8
	hOo7yoTMYqoMd0U1WAaqOiZpmwtO4I1AM1br8e/vypFrRM+n6VCXnfV42P4vGDq/iKOxl2V8oWFGe
	gqaCdvJn2Y5txtIIekVgMMSWR4+w2oEl6ykdVgWvl11rJrXafRfvkqg/ZIHGu7NaJRIs48Tq0ehCD
	4pk9ft6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkrxr-0001P8-SL; Mon, 15 Jun 2020 16:28:03 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkrxh-0001OZ-RQ
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 16:27:55 +0000
Received: by mail-pg1-x542.google.com with SMTP id w20so7812957pga.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 09:27:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=KyRgF1yBt4bbtu88WX9Q1TUGj531P0GCr24KaJ/ap+I=;
 b=u+oomg0rkrQpvEyjS5sFvCk+IEbilWXXSUwTDnzmLdBHi3E9BL7DUSeHPm2NkYkoNJ
 u7O/U0vWJkpJUslYRj2hM89NqoZI3odpen/ldcyR0Io3dh720nOx3Q7k38x6DW9ncRme
 vAPW5My2JUCRJlKhwmQwguvmA65i3/FzV0eFNmwG+9A8kT0GADviHA42HxNseDTHfJgD
 L6xa7yV7kCxqf3/8GM62QNl7Ssq/MZJ2j/99TV8s4S8Bhmr8NrYTqP9FUsiSKvcIAAO0
 fF2W8aAsR5x2gVUK5P+E8hXB6UdzKzZEZUcN8ToWmM/zkNMvy4HZQg5iY1xN3ULabmJs
 +QDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=KyRgF1yBt4bbtu88WX9Q1TUGj531P0GCr24KaJ/ap+I=;
 b=qMbmdJRFyXWTOr8CuSDSsVqb48F57Dxh5kVebObEkUOfJejt73hQYNbq7vO6NWbcpx
 MutAHGZtZO3ivSPERUvziwjRs/fhuxNm5EIVmYAJ2+THzxxyPzhU/oHIFWxfcCb3BAQ0
 yCqSvNl6Hp/tdF9yIrxGV6LRCD19VTrKqCMJLA6llXb89R/7snVf13SszU3SW4bTpvjH
 HdRxWMb+6GcN62uE67nSdFBUuBf37PNSDvOLDz2Caih2JtVrCTsnc4q1KAI/BRni9TJS
 DKrNAq9y5/d0PYqZgBDXhfI9b6mySaywdZTbX81NKQ1F8tsSNUGbvaT8bK5iEOW370cq
 9M2A==
X-Gm-Message-State: AOAM5313WL/Kq/F+P16s4GYpZBvcKs1u7EYwEIUZJGlvt4BjxIFYdteP
 z2HMaNGXKeNLxiM7+zqxbMbDjvd+
X-Google-Smtp-Source: ABdhPJyFq0YnrE4QPmTYUMyvFcv3ek0syqeXJevNbjcfljZTC9PiuaAlkiEUXAEyCTPNd+8zhwZw7A==
X-Received: by 2002:a63:4e62:: with SMTP id o34mr22350239pgl.208.1592238472298; 
 Mon, 15 Jun 2020 09:27:52 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id d23sm29000pjv.45.2020.06.15.09.27.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 15 Jun 2020 09:27:51 -0700 (PDT)
Subject: Re: [PATCH v2 0/4] spi: bcm63xx: add BMIPS support
To: =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 broonie@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, p.zabel@pengutronix.de,
 linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20200615080309.2897694-1-noltari@gmail.com>
 <20200615090943.2936839-1-noltari@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <9f55d5a6-f936-cb73-6128-31a196dc5e47@gmail.com>
Date: Mon, 15 Jun 2020 09:27:47 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200615090943.2936839-1-noltari@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_092753_885590_5E1A41A4 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQWx2YXJvLAoKT24gNi8xNS8yMDIwIDI6MDkgQU0sIMOBbHZhcm8gRmVybsOhbmRleiBSb2ph
cyB3cm90ZToKPiBCQ002M3h4IFNQSSBhbmQgSFNTUEkgY29udHJvbGxlciBhcmUgcHJlc2VudCBv
biBzZXZlcmFsIEJNSVBTIFNvQ3MgKEJDTTYzMTgsCj4gQkNNNjMyOCwgQkNNNjM1OCwgQkNNNjM2
MiwgQkNNNjM2OCBhbmQgQkNNNjMyNjgpLgo+IAo+IHYyOiB1c2UgZGV2bV9yZXNldF9jb250cm9s
X2dldF9leGNsdXNpdmUKCldlIHdvdWxkIGFsc28gbmVlZCB0byB3cml0ZSBhIGJpbmRpbmcgZG9j
dW1lbnQgZm9yIHRoZXNlIHR3bwpjb250cm9sbGVycywgYXMgdGhleSBhcHBlYXIgdG8gYmUgbWlz
c2luZywgYW5kIHRoaXMgd291bGQgZG9jdW1lbnQgdGhlCnJlc2V0IHByb3BlcnR5LgoKSSBhbHNv
IGJlbGlldmUgdGhhdCB5b3Ugc2hvdWxkIGJlIG1ha2luZyB0aGlzIHByb3BlcnR5IG9wdGlvbmFs
IHNpbmNlCm5vdCBhbGwgU29DcyBkbyBoYXZlIGEgZGVkaWNhdGVkIHJlc2V0IGNvbnRyb2xsZXIg
bGluZSBmb3IgU1BJL0hTU1BJIChpZgphdCBhbGwpLgoKVGhhbmsgeW91IQotLSAKRmxvcmlhbgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
