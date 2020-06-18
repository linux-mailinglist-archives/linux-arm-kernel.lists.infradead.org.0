Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0D111FED5A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 10:17:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A1Vvr6kzYiYCxvr8+q5P2d03sZnX9+4EiW8kjKbC+CM=; b=YGsYoqIteBKvGM
	Q4qVA0YqFAZUjwuxJeEisA5+1hCg12zt+L5uPd17QHTQNxvpFv1IeWho7wQOd90kOQr/M9Cnwn4r2
	gFzohEXSghNgYaE9ire2s/wPajl8WH0FpNpJm0XVLQHyeQS7o2WsqxT3ZgOZT7N4vNcFX62UIXYdW
	FSo7JigE8CO8mnoxRqrEmD1CboeLdpCxd2+C4B8sycoIzy81akKOQTvaKn8zoi0plTWMJS8p3AyUJ
	TY3qpg/WuTnXVBgf/Pe9qfkG2Dx0KU85PCfFNNS7p5fe3u1DBredOwBHQhu3MyoEbkIxseH5hqelM
	YckWccDB4ctWc86dkcZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlpjd-0004k4-3Y; Thu, 18 Jun 2020 08:17:21 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlpjI-0004i6-DM
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 08:17:03 +0000
Received: by mail-wm1-x341.google.com with SMTP id f185so4669722wmf.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 01:17:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=NDyr9zstTs9Nq+zPZv6Gql9N0F6eSp5HHPdSh/JTGbE=;
 b=MJlDC6ysXgmjeUc1Qc+dVLIpYvX7pC1p6fQJsbFdp5S8FrVR+Kq+idOo26bUeeWIja
 e/8Q+asaRlszugusmnJN8yJgQQLlR0N3jkXAPXcKSiX5LcoWhWecTAy4yKpU9cUfvwPm
 AzA06IoaxMXGuBrRLZLe2U9QAwqfBV/Kepzl0t54uMKpjJ1cjHeMoOEOzzEahkiNF9BK
 lYqwuxk6HaVO0azDXianiiFMaUaCvl+I59c1x02uT08lTGCIzIEW3K4atLjn86ezIu2c
 +m5QC5+zWt75hYbirmBHH80hAJOrFmqPdezZgA/tVOCYl8+k6SfG736TlxaLhAGcOcKJ
 Z3IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=NDyr9zstTs9Nq+zPZv6Gql9N0F6eSp5HHPdSh/JTGbE=;
 b=Kyv8FDN17sMnM4wLfVK/o18Q4QJSpG9HvWXXWOjTPHAqa00dnggwy77iKztstYxHmP
 NMnvMDvHISx1iVLZruIx3leOIvfXW50vMOm4VCqrW7uic7jv/jz6ARqsjPXjTsssGVkH
 lIs4k5x7ZzUMVjVlO1Tr9afuMfOd70oEZYSEwqZt3plP0lHs4jQ6l2SbVucIK/udwH6Z
 ELCb1bZemk7zPnxkyy/O4qsd7HiLrRV3nR13Jc2Vz0k8jdAjoqfCQ6kN52LH8JC4lq4z
 x46528aFa4yY4Ma7klCT5EA3FyJHNYeD8icbKOHwztgNPm8cFTT0+sGLvUIjsg648dgT
 E4UQ==
X-Gm-Message-State: AOAM533IuGuv3WUZyb8ihTCr9DoJgNuzKds+4nCn61OnlnFOf7ecbaBC
 O1+Tw/BmX7WZHT1osj5jXGqsHw==
X-Google-Smtp-Source: ABdhPJynqsLitcWa78812w1ql91heYr7oKRr0vEFQTLuGV6/e9w6jwU/14rOdWKeAcyy4QFw6t7aVw==
X-Received: by 2002:a1c:16:: with SMTP id 22mr2684181wma.42.1592468218943;
 Thu, 18 Jun 2020 01:16:58 -0700 (PDT)
Received: from dell ([95.149.164.118])
 by smtp.gmail.com with ESMTPSA id 4sm2525430wrf.74.2020.06.18.01.16.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 01:16:58 -0700 (PDT)
Date: Thu, 18 Jun 2020 09:16:56 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v3 1/5] dt-bindings: mfd: add Khadas Microcontroller
 bindings
Message-ID: <20200618081656.GB2608702@dell>
References: <20200608091739.2368-1-narmstrong@baylibre.com>
 <20200608091739.2368-2-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200608091739.2368-2-narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_011700_488571_F7AC82D3 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, amit.kucheria@verdurent.com,
 linux-pm@vger.kernel.org, daniel.lezcano@linaro.org,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 rui.zhang@intel.com, Rob Herring <robh@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAwOCBKdW4gMjAyMCwgTmVpbCBBcm1zdHJvbmcgd3JvdGU6Cgo+IFRoaXMgTWljcm9j
b250cm9sbGVyIGlzIHByZXNlbnQgb24gdGhlIEtoYWRhcyBWSU0xLCBWSU0yLCBWSU0zIGFuZCBF
ZGdlCj4gYm9hcmRzLgo+IAo+IEl0IGhhcyBtdWx0aXBsZSBib290IGNvbnRyb2wgZmVhdHVyZXMg
bGlrZSBwYXNzd29yZCBjaGVjaywgcG93ZXItb24KPiBvcHRpb25zLCBwb3dlci1vZmYgY29udHJv
bCBhbmQgc3lzdGVtIEZBTiBjb250cm9sIG9uIHJlY2VudCBib2FyZHMuCj4gCj4gU2lnbmVkLW9m
Zi1ieTogTmVpbCBBcm1zdHJvbmcgPG5hcm1zdHJvbmdAYmF5bGlicmUuY29tPgo+IFJldmlld2Vk
LWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgo+IC0tLQo+ICAuLi4vZGV2aWNldHJl
ZS9iaW5kaW5ncy9tZmQva2hhZGFzLG1jdS55YW1sICAgfCA0NCArKysrKysrKysrKysrKysrKysr
Cj4gIDEgZmlsZSBjaGFuZ2VkLCA0NCBpbnNlcnRpb25zKCspCj4gIGNyZWF0ZSBtb2RlIDEwMDY0
NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL2toYWRhcyxtY3UueWFtbAoK
QXBwbGllZCwgdGhhbmtzLgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpTZW5pb3IgVGVjaG5p
Y2FsIExlYWQgLSBEZXZlbG9wZXIgU2VydmljZXMKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ug
c29mdHdhcmUgZm9yIEFybSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8
IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
