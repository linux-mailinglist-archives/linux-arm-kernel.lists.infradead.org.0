Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB1471B97BA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 08:49:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Bs++pDCnvTMSx5Aj96WNviDrjxeoT36JSbLOnqhCC0=; b=LWHhEW4FboU57T
	jk+Avp8E+l5fbnrzmPqTtgkSzEhF04x8S2pJN3epTqV5bDLZiKwArQLOkRdBuTqyC0aOgGr+tjueA
	H3EN5CFvxDy68PT0d4okS4N2pjSXANQgQxsEbabQIa1oADdOcWGLabCZsVTP40LxqsUQd7JGRveX/
	wSs6z3JLc+P9CM3IW/aTByKLIrDWSSEmtkWZ/xoVOKhCh9gWlc+xXL8GRoh8l9mHE2Zcj+sr/2wke
	KxZYVcCTNhdlJRxU26BlGxboDXbKYfqB6yA3YlCNGo0Fi7LJXRa8zL/4wsNkux9HS5oy1EdxwEZBq
	1m8oRIuS4SG5wiJwShrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSxa0-0001pT-CE; Mon, 27 Apr 2020 06:49:24 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSxZr-0001oU-WF
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 06:49:17 +0000
Received: by mail-wr1-x444.google.com with SMTP id j2so19110816wrs.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Apr 2020 23:49:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=OIRTtsyYCkg1t+ohXCk6lMBH379NOlwqIHq+QRjBm7Y=;
 b=SvUvd1yxOiPnMe9YAUHgv8lQk0A2/6HHwopTOUCWs8NALsr8IaE+hEzfoKEo1yuqs2
 TjmUIlPobyTTQwgv36TEaJLcVdpJsaOogMMa4AuCDJpBCcsgiZU/DME2f/khPL6iHlIg
 EK+qQPX4JJRFUEvhskXLGcPGW04SF1toxWWM+RmxQ3XLi2BNb7WkSIEi+Hr6YfkXUGV9
 7r/ITt+NXy5qzPvRpN8Ht1AKkwLhwe14aeKCNyTT33vTINcvj7L/SRGzEV1yKIvqLi/8
 9pMTJn7ubL6lG8FAp4pE5t90T8NoZdw8q65UAq+7ypuxycxcTarTTWVpeWiyRhymWdH5
 vfoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=OIRTtsyYCkg1t+ohXCk6lMBH379NOlwqIHq+QRjBm7Y=;
 b=rdadlk8t23Ne13GRnYlHSWcRGGQveEh6N4774LcbHTzq2ut9xNaBIFxOxNexFaSXew
 eWs+3ZYQL3hPCP0LwS67LQxvMvtIm4Bw7HAZgu3uLEPfbBxcpzINmRa7Kg4rRwybWCJ/
 3pL2Wgw0oeiqx36Y6GC7Gv2Qu7l0CrEmMDjoi+SspUjgbp/4Zp+3AgkHjVwv3f/IEwsK
 N6SoRpAzKz8+6uwxdXDbk25bLRjUQDdMl46R9IzvP1g0DxFv4jW6p1kEIlXmhJO+Zeky
 aSJjqZd+/g0vRTNLnM8XMwRvBxZ7VuF4fKqR5xbjVBNHSSQUmUeVUZxA2HvKZhTtpgql
 UphA==
X-Gm-Message-State: AGi0PubWXlB8JSVycxIe3qaeIYdmn1y/RRZVom1SlwlOMNOReIKV+elT
 Roaov08dYtKB68KW1guDm9LTTg==
X-Google-Smtp-Source: APiQypI8chzF5P4rL2qpeRVXfTfA1qmduiJM0OWyA6AOLxbJHzUHnF5rqPqCGyojl0yXIHmSI+roCA==
X-Received: by 2002:adf:f884:: with SMTP id u4mr25202217wrp.171.1587970153463; 
 Sun, 26 Apr 2020 23:49:13 -0700 (PDT)
Received: from dell ([2.31.163.63])
 by smtp.gmail.com with ESMTPSA id z10sm20140795wrg.69.2020.04.26.23.49.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Apr 2020 23:49:12 -0700 (PDT)
Date: Mon, 27 Apr 2020 07:49:10 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Adrian Pop <pop.adrian61@gmail.com>
Subject: Re: [PATCH 1/2] arm: dt-bindings: mfd: stm32f-rcc: Add missing DSI
 clock
Message-ID: <20200427064910.GC3559@dell>
References: <20200424181642.32084-1-pop.adrian61@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200424181642.32084-1-pop.adrian61@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_234916_041150_C0648EEC 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Alexandre Torgue <alexandre.torgue@st.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAyNCBBcHIgMjAyMCwgQWRyaWFuIFBvcCB3cm90ZToKCj4gQWRkIG1pc3NpbmcgY2xv
Y2suCj4gCj4gU2lnbmVkLW9mZi1ieTogQWRyaWFuIFBvcCA8cG9wLmFkcmlhbjYxQGdtYWlsLmNv
bT4KPiAtLS0KPiAgaW5jbHVkZS9kdC1iaW5kaW5ncy9tZmQvc3RtMzJmNy1yY2MuaCB8IDEgKwo+
ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCkkgYXNzdW1lIHBhdGNoIDIgZGVwZW5k
cyBvbiB0aGlzPwoKSWYgc28sIHdoZXJlIGlzIGl0PyAgV2h5IGlzbid0IGl0IGluIG15IGluYm94
PwoKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kdC1iaW5kaW5ncy9tZmQvc3RtMzJmNy1yY2MuaCBi
L2luY2x1ZGUvZHQtYmluZGluZ3MvbWZkL3N0bTMyZjctcmNjLmgKPiBpbmRleCBhOTBmMzYxM2M1
ODQuLmJhNWNiNzQ1NmVlNCAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL2R0LWJpbmRpbmdzL21mZC9z
dG0zMmY3LXJjYy5oCj4gKysrIGIvaW5jbHVkZS9kdC1iaW5kaW5ncy9tZmQvc3RtMzJmNy1yY2Mu
aAo+IEBAIC0xMDcsNiArMTA3LDcgQEAKPiAgI2RlZmluZSBTVE0zMkY3X1JDQ19BUEIyX1NBSTEJ
CTIyCj4gICNkZWZpbmUgU1RNMzJGN19SQ0NfQVBCMl9TQUkyCQkyMwo+ICAjZGVmaW5lIFNUTTMy
RjdfUkNDX0FQQjJfTFREQwkJMjYKPiArI2RlZmluZSBTVE0zMkY3X1JDQ19BUEIyX0RTSQkJMjcK
PiAgCj4gICNkZWZpbmUgU1RNMzJGN19BUEIyX1JFU0VUKGJpdCkJKFNUTTMyRjdfUkNDX0FQQjJf
IyNiaXQgKyAoMHgyNCAqIDgpKQo+ICAjZGVmaW5lIFNUTTMyRjdfQVBCMl9DTE9DSyhiaXQpCShT
VE0zMkY3X1JDQ19BUEIyXyMjYml0ICsgMHhBMCkKCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10K
TGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNl
IHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIg
fCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
