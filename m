Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3B0120212B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jun 2020 06:01:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=utMdEd3o87LW8JbP13Ue+oqaLh36ixA/zwHA1L8Qu4U=; b=Ui9QSnQSmWKhZp+tMFMEG1MMT1
	XWZlf2pCgzydOWaoaH4WneM23dD7GE9BVxUIaiR8kCNrYKFTWtXHkyGbxhoUuq4bIAM6svE3uealM
	ytR1Ljk6tQcXWdj9lppRdUnn+LH4YvfK004/Lh8lbyKAwdXn2W+xBZm05QS0iaKHRs7U+8oGENP9q
	Xfukz13gjzBLwig8luKq/tR/AMIXDLJTK7hrSqsLBzIRqlHmsN21PQoeHxZsS5azCa+snNT6ty3Y/
	9hgwdmXF8ksdL+SuFHVx+z39ZPK0B6q4nkSvKUgq2J0i0DsHKP8a7aujEo1TYa1MhxPEKNVkseFqS
	vPlbwXGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmUhE-000528-GJ; Sat, 20 Jun 2020 04:01:36 +0000
Received: from mail-ej1-x641.google.com ([2a00:1450:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmUh5-00051q-IJ
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jun 2020 04:01:28 +0000
Received: by mail-ej1-x641.google.com with SMTP id n24so12444432ejd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 21:01:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=JCYHOTJ0HAS5x0UPsw2q9jK1wV+WcKeUblO0ISjlJgU=;
 b=BpTrv6FS1BtxTu/7reJBA3v3AN2iHL8PqOPuMbDISbkfo1Y9F0QDR+xfvUAUYnXk7L
 HGd0iPvNVB2ne44BuzwbEF/UV9TZZXBI+kummTWlnH5N6IT7G+uAVt+s/aIdA4ENPEa4
 6OnXvslHMUMra91nAYKQzM9N7LxDQSRuSa6fZ13W5OcKc+hpSI49Z8iiC4MYecUPk6Q+
 ysaVxPr3LZiyllP93dDWnxf/mbn9jyPFsFFxNqEOEkeKBzgjiAyEutTwN3wGyEED6IXa
 v4J9hF0lm0oLvNCzCbNYeOAnN3efqV79/gMrK2+vW99kyP5XYZVlXv6bCU5Qi4+1r0Ry
 +JrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=JCYHOTJ0HAS5x0UPsw2q9jK1wV+WcKeUblO0ISjlJgU=;
 b=BLBw2N4wwhZxSMcNVSiN3gfem2dXvlhmIIIJO/VLpWeLVU5CRjwe9lNXxj3IBzPJMt
 Si9J2rrMM9qh8fTwvbSJZOQbiRk0IXzAAvAznGKuMJ1dzrZWu7lJ0kYnCiucbSEWyMsg
 CeK6cyBBbP/SH7nGFXkuz6XqNadKAgHbqrPpIJ15G8dgcLA22AmTdRBX+RwHPjBonR9V
 Fm/DUBBModEl5D02htL5zu2kWvYIj27PdfwQVFl0yWbp2e4xUI8A68steP6RlmxQyysx
 S1znNnoKM3xo4F57/CsEMekLeZR2AsngplnxkLj13zLhLxkzGKNF5IhJ3FzNAZN6lEUF
 slAQ==
X-Gm-Message-State: AOAM531X9yqDEODo1ieVTkuvpbkhB6a5Hzn8UE+eII0JW5coiKyZnHEA
 quTVSw+ohYKiMTrfvfIJVzzdW8XQ
X-Google-Smtp-Source: ABdhPJw8B1IDFKZl+3uJjpFdOAUNzM5C+vslwfi8RWTQWvnrVzqSBDRH9VsMG7hJ3K+t/v5fDAV0ew==
X-Received: by 2002:a17:906:6410:: with SMTP id
 d16mr6860682ejm.376.1592625684787; 
 Fri, 19 Jun 2020 21:01:24 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 lw11sm6000247ejb.58.2020.06.19.21.01.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 19 Jun 2020 21:01:24 -0700 (PDT)
Subject: Re: [PATCH v5 2/2] phy: bcm63xx-usbh: Add BCM63xx USBH driver
To: =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 jonas.gorski@gmail.com, kishon@ti.com, vkoul@kernel.org, robh+dt@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, p.zabel@pengutronix.de,
 krzk@kernel.org, gregkh@linuxfoundation.org, alcooperx@gmail.com,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20200619100035.4032596-1-noltari@gmail.com>
 <20200619100035.4032596-3-noltari@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <b5c1993b-dce9-f963-54f0-c92def0c7582@gmail.com>
Date: Fri, 19 Jun 2020 21:01:20 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200619100035.4032596-3-noltari@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_210127_623760_7B7DCF75 
X-CRM114-Status: UNSURE (   7.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiA2LzE5LzIwMjAgMzowMCBBTSwgw4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIHdyb3RlOgo+
IEFkZCBCQ002M3h4IFVTQkggUEhZIGRyaXZlciBmb3IgQk1JUFMuCj4gCj4gU2lnbmVkLW9mZi1i
eTogw4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIDxub2x0YXJpQGdtYWlsLmNvbT4KClJldmlld2Vk
LWJ5OiBGbG9yaWFuIEZhaW5lbGxpIDxmLmZhaW5lbGxpQGdtYWlsLmNvbT4KClRoaXMgbG9va3Mg
Z3JlYXQsIHRoYW5rcyBBbHZhcm8hCi0tIApGbG9yaWFuCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
