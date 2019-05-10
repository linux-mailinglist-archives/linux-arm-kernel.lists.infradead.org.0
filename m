Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23B3319FF2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 17:16:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lTfKfFVNY1LXtrVvzIfLCxp6eJCrqAUivrTrgeFY0Wk=; b=GlCaaxUt+Cijrh
	F5a61PcKkun4wpiJCRcjem3iDQpW4y631WPWJI11NAjagRKHk0B3zTNNwy/lWDS88Vigj2khtNI1i
	CG24P7JajLB0JloNFyI4WF8IAfbY5Vv5Cff2/lICSDiZcTyfdc04KINK2LdItOXjGPkPrfKti90qU
	+eEr0ZmSSZgb5g8RHxcQRVJDnNgIiYL0zozw7hmIPfZc4y/kqmAt1OqqIbuxxpfBhojpXHALqZPNf
	GqLzLRyyTnsfv/UXId7qWZiMewhYMLsBNy6LU3S2Cj47nV6S2OWZw3wvSFcN3FkLnIxyNNPD9FR8v
	wQ+JkP273KBafKClXCRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP7Fp-0003Oa-Ve; Fri, 10 May 2019 15:16:09 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP7Fj-0003O9-2G
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 15:16:04 +0000
Received: by mail-wm1-x341.google.com with SMTP id f2so7920645wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 May 2019 08:16:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=HNTqfGPCwHotSSFB/bs3NRxKL+FaiL/rv+Medyfbh88=;
 b=P9mrqU4+sESJPNllGdbaccCTv5uBF42euzxH8O6o8zHSGzXapBATU/ejvkoDYJd8pX
 6AJBVyP+RdkRIdNRvSa4EzWUeFPzAQShL4KAOw0t3O2xYe5xHu7M3H3ylRZTfAkpdvf2
 ue+dkzSeHV7jn0J84ADyxcL0PbUaXMbV8FwFURUkTQ4K2TFgvKyXk4HsgXm5u4/HZqJI
 HbpDbjtOV/p/ZxxNEI9efJL4OUiW5dqVY6gxO3PbOtSMc4BYqRlShapCRdVTHpknfn+c
 8h6L57V14ODLHHpOGw7A3c0Aj8/IMBuJZqjVBLF3NZ2/ROIyz8U83oRLNQ68NkPE71GJ
 8k6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=HNTqfGPCwHotSSFB/bs3NRxKL+FaiL/rv+Medyfbh88=;
 b=cZEgtSjjyFLM6SYc7OwpuSnvAunL7hwm5b8EOCYe46G9r3s3FC4Ow3PXgwaRYcR9k/
 IiEsSch8I6WZR1V/uEOQJu3oESG/rIgBPBqxT8eoeVVZ2ZNqWGy3NJLZoagpKY8Mxv8k
 tSCFmbL6VWBQMXvjOGF2/m0JFqngFddv8BjQY2Xt07XAGVdfCJf7wCFGhpUiQ4X5mZNd
 bRV+APar1Y6NMBGUuzd/O3QSwFUn6hnYw/QLtilYBWKlD+jf2kB4+aFK13jFsPiOdRAA
 aiCnfKXL9Jz6JeQz4ZtebMxW4HR9U05LGHAkm+DwV9vX2tB5A08l/i6Qx310OPS+zECm
 y5eQ==
X-Gm-Message-State: APjAAAUNKn94RLCvq4PMcfvJ/iRVq0p5NFw0XwKfXt/oLIaL8d4CRtCj
 6k3JVg7Jjnmryl0ukpGw9StmLQ==
X-Google-Smtp-Source: APXvYqwNcxQ+wZMQA6guBn6Potmx/LFX1w8O7OL3E3EWuj53qYCOqeHNdMVEJUOrPTEFTAuf9pvusQ==
X-Received: by 2002:a1c:14:: with SMTP id 20mr7907578wma.66.1557501360717;
 Fri, 10 May 2019 08:16:00 -0700 (PDT)
Received: from dell ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id v189sm8817961wma.3.2019.05.10.08.15.58
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 10 May 2019 08:15:59 -0700 (PDT)
Date: Fri, 10 May 2019 16:15:56 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Amelie Delaunay <amelie.delaunay@st.com>
Subject: Re: [GIT PULL] Immutable branch between MFD and Pinctrl due for the
 v5.2 merge window
Message-ID: <20190510151556.GA4319@dell>
References: <1557392336-28239-1-git-send-email-amelie.delaunay@st.com>
 <20190510072314.GC7321@dell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190510072314.GC7321@dell>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_081603_115520_0571447E 
X-CRM114-Status: GOOD (  14.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

KiogQ29udGFpbnMgZml4IGZvciBpMzg2IGJ1aWxkIGJyZWFrYWdlICoqCgpFbmpveSEKClRoZSBm
b2xsb3dpbmcgY2hhbmdlcyBzaW5jZSBjb21taXQgZTkzYzljOTlhNjI5YzYxODM3ZDVhN2ZjMjEy
MGNkMmI2YzcwZGJkZDoKCiAgTGludXggNS4xICgyMDE5LTA1LTA1IDE3OjQyOjU4IC0wNzAwKQoK
YXJlIGF2YWlsYWJsZSBpbiB0aGUgR2l0IHJlcG9zaXRvcnkgYXQ6CgogIGdpdDovL2dpdC5rZXJu
ZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9sZWUvbWZkLmdpdCB0YWdzL2liLW1mZC1w
aW5jdHJsLXY1LjItMQoKZm9yIHlvdSB0byBmZXRjaCBjaGFuZ2VzIHVwIHRvIDlhZjJkZTc2NTdm
NWE1MmY5ZTE1YWViYjZmOTM0OGY5YjhmMjUwYTY6CgogIHBpbmN0cmw6IEtjb25maWc6IEZpeCBT
VE1GWCBHUElPIGV4cGFuZGVyIFBpbmN0cmwvR1BJTyBkcml2ZXIgZGVwZW5kZW5jaWVzICgyMDE5
LTA1LTEwIDE2OjA5OjU2ICswMTAwKQoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpJbW11dGFibGUgYnJhbmNoIGJldHdlZW4g
TUZEIGFuZCBQaW5jdHJsIGR1ZSBmb3IgdGhlIHY1LjIgbWVyZ2Ugd2luZG93CgpDb250YWlucyBm
aXggZm9yIGkzODYgYnVpbGQgYnJlYWthZ2UKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KQW1lbGllIERlbGF1bmF5ICg1KToK
ICAgICAgZHQtYmluZGluZ3M6IG1mZDogQWRkIFNUIE11bHRpLUZ1bmN0aW9uIGVYcGFuZGVyIChT
VE1GWCkgY29yZSBiaW5kaW5ncwogICAgICBtZmQ6IEFkZCBTVCBNdWx0aS1GdW5jdGlvbiBlWHBh
bmRlciAoU1RNRlgpIGNvcmUgZHJpdmVyCiAgICAgIGR0LWJpbmRpbmdzOiBwaW5jdHJsOiBkb2N1
bWVudCB0aGUgU1RNRlggcGluY3RybCBiaW5kaW5ncwogICAgICBwaW5jdHJsOiBBZGQgU1RNRlgg
R1BJTyBleHBhbmRlciBQaW5jdHJsL0dQSU8gZHJpdmVyCiAgICAgIHBpbmN0cmw6IEtjb25maWc6
IEZpeCBTVE1GWCBHUElPIGV4cGFuZGVyIFBpbmN0cmwvR1BJTyBkcml2ZXIgZGVwZW5kZW5jaWVz
CgogRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9zdG1meC50eHQgICAgfCAg
MjggKwogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvcGluY3RybC9waW5jdHJsLXN0bWZ4LnR4dCAg
fCAxMTYgKysrCiBkcml2ZXJzL21mZC9LY29uZmlnICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICB8ICAxMyArCiBkcml2ZXJzL21mZC9NYWtlZmlsZSAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICB8ICAgMiArLQogZHJpdmVycy9tZmQvc3RtZnguYyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgfCA1NDUgKysrKysrKysrKysrKysKIGRyaXZlcnMvcGluY3RybC9LY29uZmln
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDE0ICsKIGRyaXZlcnMvcGluY3RybC9NYWtl
ZmlsZSAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAxICsKIGRyaXZlcnMvcGluY3RybC9w
aW5jdHJsLXN0bWZ4LmMgICAgICAgICAgICAgICAgICAgIHwgODIwICsrKysrKysrKysrKysrKysr
KysrKwogaW5jbHVkZS9saW51eC9tZmQvc3RtZnguaCAgICAgICAgICAgICAgICAgICAgICAgICAg
fCAxMjMgKysrKwogOSBmaWxlcyBjaGFuZ2VkLCAxNjYxIGluc2VydGlvbnMoKyksIDEgZGVsZXRp
b24oLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvbWZkL3N0bWZ4LnR4dAogY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9waW5jdHJsL3BpbmN0cmwtc3RtZngudHh0CiBjcmVhdGUgbW9kZSAxMDA2
NDQgZHJpdmVycy9tZmQvc3RtZnguYwogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvcGluY3Ry
bC9waW5jdHJsLXN0bWZ4LmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2xpbnV4L21mZC9z
dG1meC5oCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNlcyBUZWNobmlj
YWwgTGVhZApMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MK
Rm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
