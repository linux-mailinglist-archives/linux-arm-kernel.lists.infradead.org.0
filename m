Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 056331AB944
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 09:04:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lNmuygqPnBVdsDOoInBbIqrNqihpQTxz5f3WsSEmPOY=; b=Sl9B1LsAlRIVZA
	RT2Wl3I+5BdcBuAu5FjgCzXOfNM6zz5YMR29mmB81dCwZm+uq57z+weO78EySsHNCZn08e9bHDv6h
	eYobU1zdquTU2Y8FY0ZGQr4LLYqxKxnlpf4Onu4H1+x3zeX+UvM5PRkGrwFwgxc8yOq6ijA/+Cbwi
	z54a+V7lHVmQNI03SCGb/k0VTO3tH76HaTmfZ6Iu7n13hmI8Xqcj0KWBRxzWJbK4TXCbMCUELvKQe
	xoj2Znbjj26RuyFbpdPCqXQgIQieOE1iZ9sloFoBghiXCtZpzGAuhJbooyogttFOLLejqAKph/TXE
	aMfUGs1o0M1L2Uevm1Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOyYw-000858-Fg; Thu, 16 Apr 2020 07:03:50 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOyXj-00074a-6C
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 07:02:37 +0000
Received: by mail-wr1-x444.google.com with SMTP id d27so3550683wra.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 00:02:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=UcbV/1U7fcT3mqmBtnCZDKM08tchT85s7YFfnWx+Mb8=;
 b=zS3y8LnlF68g0JllYixN26PbAwCSYY7xSlE8nXjsy7YcsVxDwbGAO2rKjNYL1Vw91a
 cDrmXmEMPfKStjnT6sMkP5P5xZ8usWxZHQ37ENd8X7uF3wahkUpFfF65sbOObwpTipWH
 TwoCG+Z5BXWUk1u0ookteA/VWEm7Wd0Jed1o8tTilBP9B0hvhsJE5Z0KHkyyIpWzxfRH
 doTWrjcELR9xW1KFiQWOEp6uzvD1Nu0DMMHEgI58rgOUMG1xKY+G6wCXfFHBYPbGaMxd
 5TBnIdhsAJvm7fT4SxC6iM6fvjYQgs5DBb/i/3w3d45KPazkLTm3Ew6LM+RzDHcGFe5f
 6/Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=UcbV/1U7fcT3mqmBtnCZDKM08tchT85s7YFfnWx+Mb8=;
 b=gBjAyptrQ1Oy8gbDYZVTL6vCqv9SHd1vsvJiTBgNuhHvaejZDNV7bs+cG7AEazw8C+
 08uZrhy0ZMPAyqyaLQbZeCMRUzi1y9E5TVex/EbO/19givLEDMqRjWy/Epcrk8Hz75q+
 4bPoOnMKTewOKnfR4gjwK2jj27iE6+Zj49hVbl0bRuZyU+L4igA5GjiZ8cZIoq4NOeaP
 zF3lYON2+AVQDnVgw2ew3ILOuhWNdigBmD8AGgZbgpaWGhkAplA6YADKOdkEjtt4c27z
 GwPfU6KcaP5ZJNdjLblX981Enm0qmQ/DDUxMg4IPkVv+vep9vQ0oD+aKEyupKm/f40Tz
 uBHQ==
X-Gm-Message-State: AGi0PuZZ1DoTgBq6rvs8AGT7dZeBY0+7EEUH9IobQ06dp/olBn50WuNo
 FdDdjIuN+ywgTb58hXwmPn7XfLhP+go=
X-Google-Smtp-Source: APiQypJ96rWLxKp7VAvSeHK7hZEqilWnmaYg11vV8dBdjgLm8n9pRM8C8e1VgmyHDPezkPAvIIBirQ==
X-Received: by 2002:adf:ed0e:: with SMTP id a14mr32770394wro.400.1587020553212; 
 Thu, 16 Apr 2020 00:02:33 -0700 (PDT)
Received: from dell ([95.149.164.124])
 by smtp.gmail.com with ESMTPSA id j11sm4915082wrr.62.2020.04.16.00.02.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Apr 2020 00:02:32 -0700 (PDT)
Date: Thu, 16 Apr 2020 08:03:23 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH v6 4/6] mfd: stm32: enable regmap fast_io for stm32-lptimer
Message-ID: <20200416070323.GO2167633@dell>
References: <20200401083909.18886-1-benjamin.gaignard@st.com>
 <20200401083909.18886-5-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200401083909.18886-5-benjamin.gaignard@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_000235_769043_9E972E00 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 mcoquelin.stm32@gmail.com, tglx@linutronix.de, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAwMSBBcHIgMjAyMCwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6Cgo+IEJlY2F1c2Ug
c3RtMzItbHB0aW1lciBuZWVkIHRvIHdyaXRlIGluIHJlZ2lzdGVycyBpbiBpbnRlcnJ1cHQgY29u
dGV4dAo+IGVuYWJsZSByZWdtYXAgZmFzdF9pbyB0byB1c2UgYSBzcGluX2xvY2sgdG8gcHJvdGVj
dCByZWdpc3RlcnMgYWNjZXNzCj4gcmF0aGVyIHRoYW4gYSBtdXRleC4KPiAKPiBTaWduZWQtb2Zm
LWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAc3QuY29tPgo+IC0tLQo+
ICBkcml2ZXJzL21mZC9zdG0zMi1scHRpbWVyLmMgfCAxICsKPiAgMSBmaWxlIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspCgpGb3IgbXkgb3duIHJlZmVyZW5jZToKICBBY2tlZC1mb3ItTUZELWJ5OiBM
ZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pav
XQpMaW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBzb3Vy
Y2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRl
ciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
