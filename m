Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF93A1F8712
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 14 Jun 2020 06:49:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0+j91MxvtvUGL0bA/pRi5r4h5cZI7oi3DqkCnoWPk18=; b=O3U5XGqRZC2SNlOFSR7CoDA7wF
	xDJoHdd9Hn7nlSoy538VHgewb2CPD6TDZYjYnlgHYEdq2pce+Oj0duuYRoqNrHXvnIjgbxnpfg+u0
	kt07XVZfnjtYNnYKnzBgMbAEjzPT3YBbVZ1XOLoQxWE0Fb2xuyQBjXzx6WEDNjuxBEEeyo8CKQnIK
	l54wnrARVIW6h54YIszl0jx3tc7nNkzqDmlEnjmE9LYJCcpDsbWd53P7Hp8X94oatZYVdM9p8CQkj
	iQIjWPLuGHlsNDXDN1vY99HoqKR8E8vCExT0hQ1ZNDGmGrENMTuz/10LhvZtV5reJQyTYIvO617lc
	Fp3EJ3iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkKa1-00019c-W4; Sun, 14 Jun 2020 04:49:13 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkKZk-00014Q-Jn
 for linux-arm-kernel@lists.infradead.org; Sun, 14 Jun 2020 04:48:57 +0000
Received: by mail-pf1-x443.google.com with SMTP id b201so6339118pfb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 21:48:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=PgJ5b+UEwrozzGSOBAFI1RY5zGb2lRM32/G1o3U/E7s=;
 b=pq/RszAMYiboOsEOWEJtEVkBio/+jaPIwW93WsfTlXvOATINwbRfKl/n2gP5VCIcs5
 oH7RbiQpwSEgqmFKWcsjE7Qk0mU0AUJKMiSzausgfzp13GznRvtcvKTwno+DeL15huN1
 TGAsAJJecuoa1cq9EeRQqB4JQk17QCix78ageHpU1rd81AiESg4fAjiGZWJbckDHYovi
 XOjBEMAyqLivGRCzCjofEeOQDcRVGvQxXfUaK+d7Kt+Iv73aS2MXBP/QUFjHbOsWed/I
 UO9zLBkFViRqu9aMqqIFyN3fUMfeOiUn55+ZewlNF73IVvfuAMEyi4lD+Sj8K7TfSYE5
 d5kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=PgJ5b+UEwrozzGSOBAFI1RY5zGb2lRM32/G1o3U/E7s=;
 b=TGNG9/tMZQs7x4b05ZSzp4cmA0lGPdJWBDXfE7gYjtm2w6J07ZYQyBr3VBVBz0Ytzw
 1F3dbm1lgCnmmNvYsopAsSZd6B30XI5BPvgV3DlbIGOBUylum1kvDAUVbKsbDvOD2vjZ
 qNDZKKB/joTONvlrty78zumtEDpmLDxDeISgO2Wi7fNrw10lZ3JrXg7HvTRYa1QacepD
 7otwgjYuryGyVofYUkR5pWxmxZIReYDRu8HqMJVzIZF28MgcDZyoWbcgFv5GERJO2hha
 XlOgK1eogS6m39X7nzwMVXTgCtyVDvz+P6887Ectw5K5tkbpgABJBypsP1mVAYjDTlcC
 uPfw==
X-Gm-Message-State: AOAM532JxenRv2uFbSk/y7cWpH6+QGcWmfIDne3GUU1ajQW9yJsP5a/n
 88zoLrCR/iSZr0REIykcAo95ieeZ
X-Google-Smtp-Source: ABdhPJzii1q4w0HLM+bjPy+t+uAVibzzPFXm3fCuKpih9ad43FpQGmwaXgAFkK2O4rhogh1lZ6Jkfw==
X-Received: by 2002:a63:1c15:: with SMTP id c21mr11679662pgc.363.1592110135692; 
 Sat, 13 Jun 2020 21:48:55 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 130sm9905158pfw.176.2020.06.13.21.48.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 13 Jun 2020 21:48:54 -0700 (PDT)
Subject: Re: [PATCH v4 6/9] soc: bcm: add BCM63xx power domain driver
To: =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 hauke@hauke-m.de, zajec5@gmail.com, tsbogend@alpha.franken.de,
 robh+dt@kernel.org, f.fainelli@gmail.com, jonas.gorski@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-mips@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20200610171630.465579-1-noltari@gmail.com>
 <20200613082140.2009461-1-noltari@gmail.com>
 <20200613082140.2009461-7-noltari@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <40e2da52-1242-ac96-046f-b3622f9099d3@gmail.com>
Date: Sat, 13 Jun 2020 21:48:52 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200613082140.2009461-7-noltari@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_214856_704445_C52175F4 
X-CRM114-Status: UNSURE (   7.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiA2LzEzLzIwMjAgMToyMSBBTSwgw4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIHdyb3RlOgo+
IEJDTTYzMTgsIEJDTTYzMjgsIEJDTTYzNjIgYW5kIEJDTTYzMjY4IFNvQ3MgaGF2ZSBhIHBvd2Vy
IGRvbWFpbiBjb250cm9sbGVyCj4gdG8gZW5hYmxlL2Rpc2FibGUgY2VydGFpbiBjb21wb25lbnRz
IGluIG9yZGVyIHRvIHNhdmUgcG93ZXIuCj4gCj4gU2lnbmVkLW9mZi1ieTogw4FsdmFybyBGZXJu
w6FuZGV6IFJvamFzIDxub2x0YXJpQGdtYWlsLmNvbT4KClJldmlld2VkLWJ5OiBGbG9yaWFuIEZh
aW5lbGxpIDxGLmZhaW5lbGxpQGdtYWlsLmNvbT4KLS0gCkZsb3JpYW4KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
