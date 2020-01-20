Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 481D01425E5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 09:39:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LXeh15tVosW7ejVF3zHCG3V/Glb39CtSBZNCsPc8SrE=; b=YYm2Ou3XJWWFrk
	8xMiSNdAtHToZQ/1Yk6GVR2hEMyFyn6HFMqqBNgUKy4yoImsL6XM9Z1Phxxq/QCp3tUYmVuC2PS1n
	2vCwOyPLg8ORZfCXzE6K/H/nxPiQwLPVVagjqOta91/FQ1aC6FM1QyJFWDpwebX71j7u2x6BzrwGe
	yY9uUjyHpMMHPSo7DEZYiXxqi0orhgXkPSLlJkR3XpSUjmMEx5zuxrhmy0lJniky8OlpAalpCsQZK
	U979tQ0LBVIA7ZvtnsmxVdr554MwwOSQWuUkrB19301CgX/SrqG2qhlAqa/cKs4YQKIOIDhMPXHm5
	cuDslLBNnJ1dpLQs0D3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itSaU-00069x-Gq; Mon, 20 Jan 2020 08:39:10 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itSaH-00068T-DY
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 08:39:01 +0000
Received: by mail-wr1-x442.google.com with SMTP id j42so28487893wrj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Jan 2020 00:38:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=rQFcL2jcWZJExt1pJvgNmGZQG6G5eQtrXtrdmESpdhU=;
 b=rN0DdGff7euhnoh1U14uSXN28jZJpMISMBspCPJ/TDrYW7d/NN9zt+tsw71ueCKIi0
 2ka2QOCL+c5VAo1YwQ5Swlyn00EvFHOsxpOBH1pw2vJ2V8eqe49plmXXI4gchWm84bD8
 x/0hz2EZ+d4SqZrMrww3SR345LtI0qBaAwiEQmvxapGkqaxS8DDyASll4c9R6U7NMiCU
 fkjkHToX/+l+h84FFOF3KUqJXiLcYTY1+CazuTEmixtHes4S9njkn4hkWD0jzjnIH/mi
 7lWToqDLao0YD5J7RqFW2lAqFRhlcvQFFROq5MxDWZPlA3PI9ie/uzv46MZN5hAh41tT
 PwdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=rQFcL2jcWZJExt1pJvgNmGZQG6G5eQtrXtrdmESpdhU=;
 b=rYN5uDWkhLrFxqmdXgAySugYqWQKNeSCFsB6T7glN+Tn+0d3yb/uG4PedtV7CVl/hU
 +J03sRrZNDOa96Mgy6XQ+PHdius9IumvCNV8T32atFok9oNxBLOn3lrnxus07Yum1ucc
 JylE6jkAWHR+8eY8G9sfvmf793EG02/t+bmZxw++RFQayoGZiUKC83roJinKOQ1ugcqz
 joePXaa/kEMKzCuvY8UhD7z9uCE80v2n2dmGIfvxqloQOTlb+B53IVK16eE47bp1Jzb1
 +o8ZUkxoXdOLcgy9zFzaRxWNlFXhwSKTS5nvF2Mmgkaeq5WyUBhiqkyCcqMxZ0IXl5A8
 mq+Q==
X-Gm-Message-State: APjAAAWJ12Tb+W2XqZ2wV8vEvNhC3exSw76Nz0ExP6KjL8UkmFCpckRX
 D/wlmv7SmhSnWjtxQeGCT9Nya84cIe4=
X-Google-Smtp-Source: APXvYqzeVB7HzioVZsHsLXa6sKg0B7Lo1W1Bz8s9/s9W1MM97QSS0Z9RkuMkfW2z8/7a0vF9xowEaw==
X-Received: by 2002:a5d:6144:: with SMTP id y4mr16714639wrt.15.1579509533039; 
 Mon, 20 Jan 2020 00:38:53 -0800 (PST)
Received: from dell ([2.27.35.227])
 by smtp.gmail.com with ESMTPSA id x11sm47604751wre.68.2020.01.20.00.38.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Jan 2020 00:38:52 -0800 (PST)
Date: Mon, 20 Jan 2020 08:39:08 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: atmel-usart: remove wildcard
Message-ID: <20200120083908.GT15507@dell>
References: <1579262309-6542-1-git-send-email-claudiu.beznea@microchip.com>
 <1579262309-6542-2-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579262309-6542-2-git-send-email-claudiu.beznea@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_003857_489606_C49F7F9E 
X-CRM114-Status: UNSURE (   8.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 alexandre.belloni@bootlin.com, richard.genoud@gmail.com,
 linux-kernel@vger.kernel.org, radu_nicolae.pirea@upb.ro,
 linux-spi@vger.kernel.org, ludovic.desroches@microchip.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAxNyBKYW4gMjAyMCwgQ2xhdWRpdSBCZXpuZWEgd3JvdGU6Cgo+IFJlbW92ZSBjaGlw
IHdoaWxkY2FyZCBhbmQgaW50cm9kdWNlIHRoZSBsaXN0IG9mIGNvbXBhdGlibGVzIGluc3RlYWQu
Cj4gCj4gU2lnbmVkLW9mZi1ieTogQ2xhdWRpdSBCZXpuZWEgPGNsYXVkaXUuYmV6bmVhQG1pY3Jv
Y2hpcC5jb20+Cj4gLS0tCj4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQv
YXRtZWwtdXNhcnQudHh0IHwgOSArKysrKy0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0
aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCkFwcGxpZWQsIHRoYW5rcy4KCi0tIApMZWUgSm9uZXMg
W+adjueQvOaWr10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSC
IE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9v
ayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
