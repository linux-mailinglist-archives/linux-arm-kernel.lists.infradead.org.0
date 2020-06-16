Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 471961FBC60
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 19:07:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=j6ytrjtft4tyLOmzP8Zy1LxBXYjL1JNTFrwvxBmpQAI=; b=hI0MGGRboamzgpzdrs1VAgq70H
	kSI7pv1N9emITSSzCiJE4WqgDporz7+uHaRqr1coVS+GP5hixY8JivFbd27zzgpyVYzXCY/Ot8wT0
	vUB82BJq/mCaJIjE/tRsa/eAtzWTxUzLzVDe+2Yp2g0YM2WHBuyg30Ai1cVX5cUZLZJMRBdYCKhxY
	oJc6j8poLt57TcCYuYUxi5Uh5aCs1pck/ccPt1nF/hz3rs+wo3F7QP7kcOMIaxHemh64TUk0kUyML
	8spqzDoQKC5ubeTFyCAXW/mtv0e4uLyMBGdlKWF4BZB7ON/HAeCoVe7jA+eQJ+WgFMiKvnaKhKEvp
	J3g/q/hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlF3K-0001BC-0r; Tue, 16 Jun 2020 17:07:14 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlF3B-0001Aq-QP
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 17:07:07 +0000
Received: by mail-wr1-x441.google.com with SMTP id x13so21543436wrv.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 10:07:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=XMRBF1iQXQfH8W0ohSSsJlVWNTVQ83/Rjd5oppXCtLI=;
 b=fivDMkIpU7zc1RLCtNnjZu694XM1KnvZyMTP4oijXbaExASqH0Oa3tHON1Oqyv9G3g
 qUhYNAnl6KORNi2nzVGi5fpj36Oibrg8Ztjk7odIHBRn1QUIogqFOoilx3AB7DrnN2ZH
 1cCM8HKluGPQCeBi6Z1UvyFgxcRHKgbFG4KDqgvMdl8RtwYvpFLGXFgfzzRX5T2bYDft
 d2ybxqYbn/wxEO5ULepxUI5kxC9qoTQcBBrNNV6mFBKOR9S3CQfWIcmI/vq7wje8cMG6
 5a+3vK/VPNoNX2vrFc9KqxKGOGPcAJQx9VZGR74wEuhi1prQjeASf0/XYWAWSRHQxYpE
 RZeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=XMRBF1iQXQfH8W0ohSSsJlVWNTVQ83/Rjd5oppXCtLI=;
 b=r9KiGm/8e+6T2DT6m8bzht3deXBBSRxoVgE5frngHM1oHp75h18xv942OJItqMXTES
 IrADMhFgFXaZSw4M0rvxdNZ1YACn6uUqHMTenOGa6Z0km8W2NoFlRk2loxn8kg586nFh
 AJPl+TJpMco3lIXQvBG06Xk7iJvXGXAzT/4I6ZoMdy8483yLBYRcnpUw+vaxaT3CdO7Q
 LSxZztvIA731iGbhAy3yd7tAM4ZnHpgcRvPu9tT4tbaXXzQvvje8VLU5AyVbNRWC/60C
 +XITq1uinoj0OqCeXy9B9F3V4S15EzahOr+dfv4s26wcXHF0f28yIiN/Ahl8L+9Kn2dm
 79Fg==
X-Gm-Message-State: AOAM531PQ2VyebQNVhES9314nPtzSQJm0KtroVLk/R4hXpvGKjANc2E+
 xJ2vN8/5Ftru8MsrxK4p0LMxcS1Q
X-Google-Smtp-Source: ABdhPJyRfWOKefA3MT1NqEbsEMU8JAdkdhU0tJ2NJpjEQ182ORyfFqdpipoj8k/8d8CeY3edcuA+2g==
X-Received: by 2002:adf:e751:: with SMTP id c17mr3882788wrn.134.1592327224273; 
 Tue, 16 Jun 2020 10:07:04 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 u4sm5008813wmb.48.2020.06.16.10.07.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 16 Jun 2020 10:07:03 -0700 (PDT)
Subject: Re: [PATCH v3 3/4] spi: bcm63xx-hsspi: add reset support
To: =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 broonie@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, p.zabel@pengutronix.de,
 linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20200616070223.3401282-1-noltari@gmail.com>
 <20200616070223.3401282-4-noltari@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <fb07654a-048d-c428-545a-f5cb87cc9acc@gmail.com>
Date: Tue, 16 Jun 2020 10:07:00 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200616070223.3401282-4-noltari@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_100705_873071_5AE733FC 
X-CRM114-Status: UNSURE (   7.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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

CgpPbiA2LzE2LzIwMjAgMTI6MDIgQU0sIMOBbHZhcm8gRmVybsOhbmRleiBSb2phcyB3cm90ZToK
PiBiY202M3h4IGFyY2ggcmVzZXRzIHRoZSBIU1NQSSBjb250cm9sbGVyIGF0IGVhcmx5IGJvb3Qu
IEhvd2V2ZXIsIGJtaXBzIGFyY2gKPiBuZWVkcyB0byBwZXJmb3JtIGEgcmVzZXQgd2hlbiBwcm9i
aW5nIHRoZSBkcml2ZXIuCj4gCj4gU2lnbmVkLW9mZi1ieTogw4FsdmFybyBGZXJuw6FuZGV6IFJv
amFzIDxub2x0YXJpQGdtYWlsLmNvbT4KPiBSZXZpZXdlZC1ieTogUGhpbGlwcCBaYWJlbCA8cC56
YWJlbEBwZW5ndXRyb25peC5kZT4KPiAtLS0KClNhbWUgY29tbWVudCBhcyBwYXRjaCAjMS4KLS0g
CkZsb3JpYW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
