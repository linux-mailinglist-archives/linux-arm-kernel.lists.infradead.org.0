Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3513A5357
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 11:49:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ySEHOWH0ZZrAqbX8Uivw/67R0P0UzWTjqsfuBV8fUPU=; b=S+C06OeJS2PFz3
	Be0WpZ6jZYdV7Qgo/L38eLE972xmKGyUeMRB6y+nb5r0oyklwSfoi+GsBQrYrPCgNvB+idaJ+dA7K
	hxAddYG/OPFcuC8OWToJrV1w+nNYeF80DSakSFAWZfwhwcpO8ZmuRu+X+OqIhOsfU9oh4B53dXWKl
	3AvZow/WZ5B+q295CTEt/VIGxcxK5oOrA3HX08E23/apQ/sQ2+Ixf6w4350ZzljWshkzNoY1OglN5
	22xppB3Z+ndtxCuVmRnEEgUboKUqwz7BO0IyUXkQzDRESbvAxx1ma4CFKEqxvEI0vtXsLWtACKxo7
	L/ZMUyuOiyqmQQcV4LeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4ixk-0000K7-1G; Mon, 02 Sep 2019 09:49:28 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4ixW-0000JP-L0
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 09:49:16 +0000
Received: by mail-wm1-x344.google.com with SMTP id k1so13822695wmi.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 02:49:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=XaAC2UGpsh6Rl+xXtvt/zZ4Jj3WqlV6FbUQcE8k/OFE=;
 b=Fcsdc6RsuDuPiLa9pJ8ykgClftxCpIfBC4pIswB4N3NPQ/dju7ZCK2iNiSXswtyj/X
 onUbd2EYdbmi/UWWCD7zjcsDPMiG5XTAZG76ZhDiq630WGO0CJ8ctok2U9T1ws4CnIU0
 cd3LpxfkhDnVpdEAWCsJdlssixcxlRXmQZ1SgJxhMvp6UL07wzmdGcltI4n1yoGAaKlG
 tiqXclivUmF51+g3TukhyPU3JUJgXZGsqRjz3I/oPR6umzQZhomRnzIifIH0Wg2XqCkm
 5/WO/rUvC8XJPuBpPPRUeI8swzV5ri0OYmpkoQCaKoLzDV61bygBpJmLoi9eMqsfA+qB
 2q5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=XaAC2UGpsh6Rl+xXtvt/zZ4Jj3WqlV6FbUQcE8k/OFE=;
 b=lj+MhMhlYg4IeJhIwOJ3DbFdcDLEbyohBy7ZJl7jZnIaIn/YVoo7Rmqk+xpi+MThR1
 UDabBHMFr5ylGCfjA8IxjpQQSRF+v5ihRLWLN7RyFHCDDCRAVFt3AO4O3pFOpzlprGhD
 4SFvxSSx8vkHredvlH9cMd2s9Cpx3xnNY7ZGdt3ecj3AP8vtsBusLhEVKjT2Q/6rVlAh
 KlajU65c0S95dEPraxtM/3cdP6a4dqB0fxOOAYU+Rtp6Fn90amzJK06z6h47MWaPcRD5
 zhGlJW+AdPARBrhT199r7z4Ld1wrlgcbCg55ZFuyU9y+gsxA2URKcLdMFioLuLOXtDfd
 7zwA==
X-Gm-Message-State: APjAAAX2kJQz+A+nKSKzR6M4fQ+x/s8403mtMB8hVZMnfX3cEASQP4a6
 SHMo7bpAysfdLI5M9qhswK4aIg==
X-Google-Smtp-Source: APXvYqyAb3NYJI26X7MqFVxjVL23b6sr38r91MjidNGuAZG0y8cjvNgpZZPuH9ZCIogojja2cubR/w==
X-Received: by 2002:a7b:cf37:: with SMTP id m23mr7434346wmg.53.1567417753357; 
 Mon, 02 Sep 2019 02:49:13 -0700 (PDT)
Received: from dell ([95.147.198.93])
 by smtp.gmail.com with ESMTPSA id n12sm19426057wmc.24.2019.09.02.02.49.12
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 02 Sep 2019 02:49:12 -0700 (PDT)
Date: Mon, 2 Sep 2019 10:49:11 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Frank Wunderlich <frank-w@public-files.de>
Subject: Re: [PATCH v6 06/13] mfd: mt6397: add mutex include
Message-ID: <20190902094911.GT32232@dell>
References: <20190818135611.7776-1-frank-w@public-files.de>
 <20190818135611.7776-7-frank-w@public-files.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190818135611.7776-7-frank-w@public-files.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_024914_914718_56476ABC 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Sean Wang <sean.wang@mediatek.com>,
 "linux-arm-kernel @ lists . infradead . org Alessandro Zummo"
 <a.zummo@towertech.it>, linux-pm@vger.kernel.org,
 Josef Friedl <josef.friedl@speed.at>, linux-kernel@vger.kernel.org,
 Tianping Fang <tianping.fang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Sebastian Reichel <sre@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Mark Rutland <mark.rutland@arm.com>,
 Eddie Huang <eddie.huang@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCAxOCBBdWcgMjAxOSwgRnJhbmsgV3VuZGVybGljaCB3cm90ZToKCj4gRnJvbTogSm9z
ZWYgRnJpZWRsIDxqb3NlZi5mcmllZGxAc3BlZWQuYXQ+Cj4gCj4gYWRkIG1pc3NpbmcgbXV0ZXgu
aAoKSW4gZnV0dXJlLCBwbGVhc2UgdXNlIGNvcnJlY3QgRW5nbGlzaCBncmFtbWFyIGluIGNvbW1p
dCBtZXNzYWdlcy4KCkkgd2lsbCBmaXggdGhlbSBmb3IgdGhpcyBzdWJtaXNzaW9uLgoKPiBTaWdu
ZWQtb2ZmLWJ5OiBKb3NlZiBGcmllZGwgPGpvc2VmLmZyaWVkbEBzcGVlZC5hdD4KPiBTaWduZWQt
b2ZmLWJ5OiBGcmFuayBXdW5kZXJsaWNoIDxmcmFuay13QHB1YmxpYy1maWxlcy5kZT4KPiAtLS0K
PiBjaGFuZ2VzIHNpbmNlIHY1OiBzZXBhcmF0ZWQgZnJvbSAicG93ZXI6IHJlc2V0OiBhZGQgZHJp
dmVyIGZvciBtdDYzMjMgcG93ZXJvZmYiCj4gLS0tCj4gIGluY2x1ZGUvbGludXgvbWZkL210NjM5
Ny9jb3JlLmggfCAyICsrCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKCkFwcGxp
ZWQsIHRoYW5rcy4KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJvIFNlcnZpY2VzIFRl
Y2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0g
U29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
