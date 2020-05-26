Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81FA31E1C9C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 09:57:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JkSQC8tHWOTjVf5c9jBsbelojxP9PyHQE4yCUiTeG9A=; b=JyfRNIj3XwUjK3
	RB12fIiI6lcjwJvYZzp98VRIfVwXvWx9/BsOEA97K95IaDD1zaJbtntRLZJpcnCBysYVI96xq6wyd
	r6xL8jtKpMevVU3RvxljFvXhastoGhquGQn3YXRX3fCPgGu2Nl9LeaILmc+DazluaRCfSK0A3Mp5W
	TZH63kcOUzvLQnvBomviOf623LJ4nsSpYvRiR70VLjOlpLubBJk/teaW5aOeShaxnHNNh5uOTeOrl
	BoQiD3AJ84pBISr46TG/VwSTRf6NM6McgW0GRdN8+wtaRNr8ZeB1auJ7wrmiZnI51DJTBRI9C2vdR
	VMNvT6vgcmTr8UeHgi0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdUSw-00081R-H9; Tue, 26 May 2020 07:57:38 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdUSj-00080X-CK
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 07:57:26 +0000
Received: by mail-wr1-x442.google.com with SMTP id j16so6977408wrb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 00:57:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=f4CVXpIwbYA1/rSO3By0QAy5Aok5IdKGfU45oFxadek=;
 b=t5FQ5+tazNQZsu+Wc06IXbeyHxcZj04wOnM1WAOZod74jk0nVN+HvZzxoUv6Dz7tsI
 EApI6/nxS/j2UONJ+N8D/YNKcNnNSA6Xm5bRC28FTWy46oex7A7mQ6BMELMNQs4wc3Fq
 9yI0xDi7xVi7P9vfcei2EAKKljYXwHgjtiHk9yeXjLTW0DjfQYLbUiUMYkueG8npr5YO
 ZN+HNILf+FzKYTZ2Wk/Wkg5PVV6F9ejS/1DWzrGFd4q3EWqxBxUMdXLUSuqsBA2+XJDN
 VOiJtBaucsQF58wwW0ai/ukJlm72bo7w0CD+ufxxLvroTcQEKIOCU2Sh+yO81YHi3v3G
 D1jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=f4CVXpIwbYA1/rSO3By0QAy5Aok5IdKGfU45oFxadek=;
 b=qYSXpG27QPQuAmJEHMhFzB5A1MxCB79AYYzzYWUKXdwrH/WGorrivbqgUUBKzFXs9K
 oBu5WtflS0iLbfcFS1RaOD2D300lCtcCIml2oxoUuALgj6seatWnKCXOOY+uRKLoorD9
 AQZnYkWz0xSTf8rzhBGgm8B6qXz5kqe6l5//rZgTasndZGcRIFSmA4UwsNfM0tBc386K
 4Q6trH2DL9oRcIZrFxvnlCv2+/XljPN8ZbnvZSsT793bW8t6dZOknCji97mG1h13IwT/
 J9irZe3fuUf8XRSyMnD6TrTZ88MqDGjOFJ2Gkeai4Irq7j/NWTsMK/xOOHROL+HRLeCt
 5CQg==
X-Gm-Message-State: AOAM531k7HpVarKatdwo6mXdoGopNT0zcArGsle4eNNltw4WoOjd9IXH
 luz+L6JMobZHs8x3ZkfN6dy8TQ==
X-Google-Smtp-Source: ABdhPJzl4RWw8izusLBGpeBBKAIALyCyKMKS4tx46Usuii5EVZ40Iz2jybqnYKnh8NS7Yl2OGR4tvg==
X-Received: by 2002:adf:fd49:: with SMTP id h9mr19360150wrs.67.1590479843845; 
 Tue, 26 May 2020 00:57:23 -0700 (PDT)
Received: from dell ([95.149.164.102])
 by smtp.gmail.com with ESMTPSA id j68sm217211wrj.28.2020.05.26.00.57.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 00:57:22 -0700 (PDT)
Date: Tue, 26 May 2020 08:57:21 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Amelie Delaunay <amelie.delaunay@st.com>
Subject: Re: [PATCH 1/3] mfd: stmfx: reset chip on resume as supply was
 disabled
Message-ID: <20200526075721.GE3628@dell>
References: <20200422090833.9743-1-amelie.delaunay@st.com>
 <20200422090833.9743-2-amelie.delaunay@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200422090833.9743-2-amelie.delaunay@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_005725_423705_50C8FE4F 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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

T24gV2VkLCAyMiBBcHIgMjAyMCwgQW1lbGllIERlbGF1bmF5IHdyb3RlOgoKPiBTVE1GWCBzdXBw
bHkgaXMgZGlzYWJsZWQgZHVyaW5nIHN1c3BlbmQuIFRvIGF2b2lkIGEgdG9vIGVhcmx5IGFjY2Vz
cyB0bwo+IHRoZSBTVE1GWCBmaXJtd2FyZSBvbiByZXN1bWUsIHJlc2V0IHRoZSBjaGlwIGFuZCB3
YWl0IGZvciBpdHMgZmlybXdhcmUgdG8KPiBiZSBsb2FkZWQuCj4gCj4gRml4ZXM6IDA2MjUyYWRl
OTE1NiAoIm1mZDogQWRkIFNUIE11bHRpLUZ1bmN0aW9uIGVYcGFuZGVyIChTVE1GWCkgY29yZSBk
cml2ZXIiKQo+IFNpZ25lZC1vZmYtYnk6IEFtZWxpZSBEZWxhdW5heSA8YW1lbGllLmRlbGF1bmF5
QHN0LmNvbT4KPiAtLS0KPiAgZHJpdmVycy9tZmQvc3RtZnguYyB8IDcgKysrKysrKwo+ICAxIGZp
bGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspCgpBcHBsaWVkLCB0aGFua3MuCgotLSAKTGVlIEpv
bmVzIFvmnY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNlcyBUZWNobmljYWwgTGVhZApMaW5hcm8ub3Jn
IOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExpbmFybzogRmFj
ZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
