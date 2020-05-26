Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 141911E1CAB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 09:58:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FV70B1zgABfBQuycJeliRSwgInVy7nF+Doq5QwawYeo=; b=S3bcgF+VcCOOMb
	XOaXHdNT4yWTLmPqvRHFfdQ0d98Ms179UHNuhPLxslPEWd5FjcEhw27yZn4xd+gA/ir4ZFFVXTURr
	30sQy/2zz7dWs4eeWS2p5wqeoTIxQ2913hJiVYXXLtf3KW5cvMaEcZYEzuOW5oayXY71b8+vJNo1y
	RjknNPuKe0lkHfSbR9e46scH2henkzzx5BJdsY4IniSJI080tf1gV59w3cHWdBRvo5/Ysw4AvBLMi
	1gbmNqfIpjWhTVAW3rjbaWkrd112fc5KzE59abzHZfeHo20PFjpnnucyy15oocwsrqPlsFaxDRvk/
	I9HfRT7gyewBlj2n321Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdUTp-0008KD-2S; Tue, 26 May 2020 07:58:33 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdUTf-0008Jl-Ex
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 07:58:24 +0000
Received: by mail-wm1-x341.google.com with SMTP id n5so2294917wmd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 00:58:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=dJ7nNUH8waduGIyWxEV016jy3YBm4py1dEFZ4+moc0s=;
 b=A7d9iE7b9Upf36zlLWHFUh7N1P1CY4mQqszhIpb9d5Sl8zevcB1DdmcwQavIqWQbmw
 pX+23S3Y1u3fl+wZ932ldGkO8w6Lrtdl76NH7X0zFC1xB8ALdR3JhznT+pd07/KSSnsf
 hCNw+RSP5VLmcXqsozFu77d+Obd993ZdQ9KthTUkdwwx5xKTcb+n12El7J8g2uHUZw7s
 T/kxf3Nm+HWWBNgPaItR7FgJhTv8WyEaKfpONmcc1Py0NV6pLjU7LcHxvNrlRdSJr7im
 ACQBHGegYS3SNrFf59kTSNyyP10AXgMMR2wvqDAM4Wh2QHgxSgJIYVk/PAfvvrItr5on
 ZwJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=dJ7nNUH8waduGIyWxEV016jy3YBm4py1dEFZ4+moc0s=;
 b=uU/YGEqQSItrawfkz+5Tz8GMEB0bEBis8fWdIjiE07wQ6ArQg9d1osT4tM72d6ZwvN
 kDH14GGpUnz/dAvO7RTPqOy/xS26wrCZLEZScRpbGsXyOcG9cd9Z8w0nbOceZMTe1Hhy
 XLsvQHKzypNt/K1LCyu2I0w+Rjb4MvcCZVijPYdlLf5huvwo8XTlnEK8chbl+8VmSXWA
 D3P3c92YMQFZY7X2UMqOOZFvBzu8xniAjXYkViamwjf/BjqE+UTww6WUso/5Hz0qG1EP
 y6boQ5ewPIUUTNP19DPWhvUGqVs2bpgnXbWmAW2w1/4Ld15ywS0x6SHOKRmF6s54Opbl
 I3tw==
X-Gm-Message-State: AOAM531va9mhggS3HFY8QIK45G250A0wU/rHhor721JdCenZLzDF778L
 aMSsPcVxM8HPiIFEXij6fuOeNw==
X-Google-Smtp-Source: ABdhPJy8TQ7mKu5n0oMECEFkFjYc1EBZIzKzt2vRKCSKp3QhxeDkjqVyOGQXnuS+OyFgvG/1kqiDJw==
X-Received: by 2002:a1c:a1c5:: with SMTP id k188mr176648wme.41.1590479902146; 
 Tue, 26 May 2020 00:58:22 -0700 (PDT)
Received: from dell ([95.149.164.102])
 by smtp.gmail.com with ESMTPSA id j4sm18893746wrx.24.2020.05.26.00.58.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 00:58:21 -0700 (PDT)
Date: Tue, 26 May 2020 08:58:19 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Amelie Delaunay <amelie.delaunay@st.com>
Subject: Re: [PATCH 2/3] mfd: stmfx: fix stmfx_irq_init error path
Message-ID: <20200526075819.GF3628@dell>
References: <20200422090833.9743-1-amelie.delaunay@st.com>
 <20200422090833.9743-3-amelie.delaunay@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200422090833.9743-3-amelie.delaunay@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_005823_500620_9A57B707 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAyMiBBcHIgMjAyMCwgQW1lbGllIERlbGF1bmF5IHdyb3RlOgoKPiBJbiBjYXNlIHRo
ZSBpbnRlcnJ1cHQgc2lnbmFsIGNhbid0IGJlIGNvbmZpZ3VyZWQsIElSUSBkb21haW4gbmVlZHMg
dG8gYmUKPiByZW1vdmVkLgo+IAo+IEZpeGVzOiAwNjI1MmFkZTkxNTYgKCJtZmQ6IEFkZCBTVCBN
dWx0aS1GdW5jdGlvbiBlWHBhbmRlciAoU1RNRlgpIGNvcmUgZHJpdmVyIikKPiBTaWduZWQtb2Zm
LWJ5OiBBbWVsaWUgRGVsYXVuYXkgPGFtZWxpZS5kZWxhdW5heUBzdC5jb20+Cj4gLS0tCj4gIGRy
aXZlcnMvbWZkL3N0bWZ4LmMgfCA5ICsrKysrKystLQo+ICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNl
cnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKQXBwbGllZCwgdGhhbmtzLgoKLS0gCkxlZSBKb25l
cyBb5p2O55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDi
lIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vi
b29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
