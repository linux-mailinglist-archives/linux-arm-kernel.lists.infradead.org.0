Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 617B43303F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 14:51:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AY7jUsWjDdlHVC0AilqHEvORjYbLW/+FnDoMjTnhRZ4=; b=UgCZhhdFLIC007
	O6LL5Yq936z4SLRPDFFpcFGg+z6LdDDP6AoUyhYgAP4wWPMAGN+D0Uf9Le/pQU3qVqMOdEn9xMzqH
	k7WGd51aLN1GJYo90hrmsim7103QTo7HJmBkX/pJVwC28VSb4C5rad+tOloKBMvAWm2RhzCw1ofGL
	z2LDoG1Q2iliR/d50vHTLMYw0HCxq4hfmb0B2jpz1BqIg78SX/642UDjmhSNugj6IeGwhhh52EZE5
	Jba34O3RVqwNitOxenHyHNvO3ntbLm2vkmTR9evU8KFmOP1wrqXr6hi1Ggo2UCae6Z/0eY+pGcLtI
	usp05bJfQDLNgIV9PFxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXmQk-0001ab-Q9; Mon, 03 Jun 2019 12:51:14 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXmQc-0001ZA-Qw
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 12:51:08 +0000
Received: by mail-wr1-x442.google.com with SMTP id m3so11952891wrv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 05:51:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=Gu01FJdT8iHjfGbObjNMXaKdqJRnjnPuDUOlDA7g+Ho=;
 b=hz76u68QnLVZg+MUvRgCUMQpgCR8bfyTUAn5wmEPbdTZMqiwYz3puAXYDEnF15Qb99
 DJP8N6x1peCWy+3dOp5y1NUS1WpGvfzMptIwPsMTVxToWg/A/NM4NlH7/lgZRXtyjrHB
 YWey/x7suDa1RNfv5CjD2ORJWwuGYI61lP8+6PrPR2BpOoIEJv31tHoTqivOI+1dQqSg
 E9S/FayYRVyThI2Pmos4V1gErrZrW8Va2piLUIQSmAHsbazRfmvrMJkP5gqJU4ldNyic
 uZdNAdjyCEyk36K0hdyTy+FsgLRKw5ysBExFFeldg0efSdLOoNf6BHoBg5E2/jTveksa
 3NpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=Gu01FJdT8iHjfGbObjNMXaKdqJRnjnPuDUOlDA7g+Ho=;
 b=R4D8yXFGiMan8HBEqF0XKTkD3gWcev0NTiKHFnpbzkatfUyHND6pB4jciEUKeqS4Nj
 ttfH0vA6kr7Lgq1+Lu5N50lwAge3o7dOIiabbrupPlD/yKMBnEzXsbAlcx1isu09XdVj
 KiM9z2Cd7WF/xoJK1Bq84XdjiaFPQmjW0gDIVD+8UNjw0dx1rJIMVzpq/kXUpZV1Dbil
 kW7quPAo1zuzQaAxrCS/LYzDapxsUu3yMKl5Mx6bLcULx+kAlB0spywphRfWio7bt4sa
 gN/hU3U1r5/CWiHjBoTlTis6VH7NhuKf57O8pbqBPRC2lWY0mMjUMSMmFj8Df8T4OMID
 ZeFA==
X-Gm-Message-State: APjAAAV1dErN81mGgop8yVFWRfU1ugbFloMx0FK8ipQDu5dWe3Lp9V12
 5tSlvE0hVIz8ZrSlsZ12/52dIg==
X-Google-Smtp-Source: APXvYqwEIRRQJ9W1Ubou1DKURwu6qEQwwCM/2Rt45+myG58VdTRRxGh5qC8RATz4uz1ZY6bqXtzc6g==
X-Received: by 2002:adf:e60f:: with SMTP id p15mr5370165wrm.332.1559566265093; 
 Mon, 03 Jun 2019 05:51:05 -0700 (PDT)
Received: from dell ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id y17sm34175499wrg.18.2019.06.03.05.51.04
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 03 Jun 2019 05:51:04 -0700 (PDT)
Date: Mon, 3 Jun 2019 13:51:02 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v2 1/3] mfd: bd718x7: Remove hardcoded config for button
 press duration
Message-ID: <20190603125102.GQ4797@dell>
References: <cover.1558471150.git.leonard.crestez@nxp.com>
 <3afb20a0e4b14588d9fc6af7bd86920127feeba2.1558471150.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3afb20a0e4b14588d9fc6af7bd86920127feeba2.1558471150.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_055106_892800_FBBCDE69 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Angus Ainslie <angus@akkea.ca>,
 Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Robin Gong <yibin.gong@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAyMSBNYXkgMjAxOSwgTGVvbmFyZCBDcmVzdGV6IHdyb3RlOgoKPiBUaGUgcmVzZXQg
YnV0dG9uIG9uIGlteDhtbS1ldmsgaXMgdGllZCB0byBQV1JPTl9CIHBpbiBvZiBiZDcxODQ3IGFu
ZCB0aGUKPiBsb25nIHByZXNzIGR1cmF0aW9uIGlzIHNldCB0byB6ZXJvIGZyb20gT1RQLiBUaGUg
bGludXggZHJpdmVyIG92ZXJyaWRlcwo+IHRob3NlIHZhbHVlcyBhbmQgYnJlYWtzIHJlc2V0IGZy
b20gYnV0dG9uLgo+IAo+IE92ZXJ3cml0aW5nIE9UUCBvciBib290bG9hZGVyIGNvbmZpZ3VyYXRp
b24gd2l0aCBzb21lIGhhcmRjb2RlZCBkZWZhdWx0cwo+IGlzIG5vdCBkZXNpcmFibGUsIGtlZXAg
YWxyZWFkeSBwcm9ncmFtbWVkIHZhbHVlcyBpbnN0ZWFkLgo+IAo+IFNpZ25lZC1vZmYtYnk6IExl
b25hcmQgQ3Jlc3RleiA8bGVvbmFyZC5jcmVzdGV6QG54cC5jb20+Cj4gQWNrZWQtQnk6IE1hdHRp
IFZhaXR0aW5lbiA8bWF0dGkudmFpdHRpbmVuQGZpLnJvaG1ldXJvcGUuY29tPgo+IC0tLQo+ICBk
cml2ZXJzL21mZC9yb2htLWJkNzE4eDcuYyB8IDIzIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4g
IDEgZmlsZSBjaGFuZ2VkLCAyMyBkZWxldGlvbnMoLSkKCkFwcGxpZWQsIHRoYW5rcy4KCi0tIApM
ZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFy
by5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJv
OiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
