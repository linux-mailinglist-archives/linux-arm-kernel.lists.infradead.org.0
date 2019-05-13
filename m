Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64C701B131
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 09:31:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kL6+uN/APDgFkk4gG9KUtt8/cC/WlGfB3PJJT7NH9QU=; b=s6nuTZ6m+XpdQb
	T6MPn6Wq5igOFPTBAY9u1bvT/NzXy1p8bpjpBY7gqsCr+dnT5I/cEqhSTxtex0WVSmkZY9tGwJ4if
	fteHVFeUw42c7SKK1B4PSv3KxFI5Sc80zrZLLkMBaIM+5Uh/Pa8ZLPjf+KE4TLrRdjRH+gr41u2c8
	r09cT7b65P4obYyZuMwBFyRd60fSXrkUE37XATIPd0+B218jotiMbYijJNzzxGRNjp78p9/PO8h2L
	Up8foF3eDu/zdAZ5qMWRo14q5j+M70Ni96ozZpoDpPUl/ReSh3vHuzUyhBz8yFDPsGOc68KKaMT4d
	HBo/Ge1BzsuWNTz+fpLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ5QX-00036U-In; Mon, 13 May 2019 07:31:13 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ5QN-00033k-Uk
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 07:31:06 +0000
Received: by mail-wr1-x444.google.com with SMTP id d9so5591624wrx.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 00:31:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=kGPFbW+hAp4ZfBjUVrsplA4gJ28xyqGrAsYk0A4f3dY=;
 b=lz8fzQ6Gz+asmdxNLtzFcLWkBMrUdSBHelD85bth92l8kTB4hxwCgTqu5/B25eVF5v
 S+B9UiRacIiIjM3Idn833UGwVqpeRUS3e0B6vNsdQnia96Pfnom2j64c6+iPu5PbVFNj
 SyjW4RRVfI8090bOQV3veOlJTBmYKuFaQ8BFp1xhZmc81mgnOF9ywaXeDGQDd7Ifun5m
 U1jw3oz3YobaiK3auuebmGI+u6/RAbT7iSYsE0GKGDxnXZIkSpQaE2LD3qNBPno7ingJ
 1UWVvnlbiXytARZGAgQ5zf8hd7nqLFnizIleWswizIMTQXWTK4hK19EN2XuZIeQ9rr29
 I0UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=kGPFbW+hAp4ZfBjUVrsplA4gJ28xyqGrAsYk0A4f3dY=;
 b=r4ZORXlbqC6ayShqAkbBvNienp+7HkcVAfRBVIUwgYLu7Sm7UksWoREGmNfBs1uhuy
 jwEVmqz27eS48nNK5LEBVpUqQpDRaYXdsyvfjKtcn4MKD9H3nplgQefPqrs4H5oTps00
 YWhV3mPJNiYI40i7yqnF+vS35ulzIGTwNfn6Asc/f7VEIPeNsXygqZOCdYQQI66V8sVi
 kfkR9P+c+xP5K+wov5uTFYsT/ZEKgSOnT2s3SJmSW26hn8G72B1GJkcQ/nET4TuhGLtz
 1IVw8mQ4ZfJLfxK0ASIE+MrCrP60ulWZUGkkpBrXG1VgFgvr+zjMQAKbDjjd0C9KXTyP
 c1NQ==
X-Gm-Message-State: APjAAAXFKUJAVt0DvHcMEdxcbcoWSwWRxkvIjowtoQxRGQ6adalvinYs
 BtOoVDrfA5LvozoQ9e2U+wpBEg==
X-Google-Smtp-Source: APXvYqzX49vkFGCT6QTfo03i3mfS7qcl2HtkeUZpVM7cWYP9Z4ZY6HQkd2M1j6oCG52utv6rjLNS+Q==
X-Received: by 2002:adf:b3d1:: with SMTP id x17mr16024449wrd.31.1557732661790; 
 Mon, 13 May 2019 00:31:01 -0700 (PDT)
Received: from dell ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id h14sm993503wrt.11.2019.05.13.00.31.00
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 May 2019 00:31:01 -0700 (PDT)
Date: Mon, 13 May 2019 08:30:59 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [PATCH] mfd: stmfx: Fix macro definition spelling
Message-ID: <20190513073059.GH4319@dell>
References: <20190511012301.2661-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190511012301.2661-1-natechancellor@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_003104_010782_62FA1859 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
Cc: Amelie Delaunay <amelie.delaunay@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAxMCBNYXkgMjAxOSwgTmF0aGFuIENoYW5jZWxsb3Igd3JvdGU6Cgo+IENsYW5nIHdh
cm5zOgo+IAo+IEluIGZpbGUgaW5jbHVkZWQgZnJvbSBkcml2ZXJzL21mZC9zdG1meC5jOjEzOgo+
IGluY2x1ZGUvbGludXgvbWZkL3N0bWZ4Lmg6Nzo5OiB3YXJuaW5nOiAnTUZEX1NUTUZYX0gnIGlz
IHVzZWQgYXMgYQo+IGhlYWRlciBndWFyZCBoZXJlLCBmb2xsb3dlZCBieSAjZGVmaW5lIG9mIGEg
ZGlmZmVyZW50IG1hY3JvCj4gWy1XaGVhZGVyLWd1YXJkXQo+IAo+IEZpeGVzOiAwNjI1MmFkZTkx
NTYgKCJtZmQ6IEFkZCBTVCBNdWx0aS1GdW5jdGlvbiBlWHBhbmRlciAoU1RNRlgpIGNvcmUgZHJp
dmVyIikKPiBMaW5rOiBodHRwczovL2dpdGh1Yi5jb20vQ2xhbmdCdWlsdExpbnV4L2xpbnV4L2lz
c3Vlcy80NzUKPiBTaWduZWQtb2ZmLWJ5OiBOYXRoYW4gQ2hhbmNlbGxvciA8bmF0ZWNoYW5jZWxs
b3JAZ21haWwuY29tPgo+IC0tLQo+ICBpbmNsdWRlL2xpbnV4L21mZC9zdG1meC5oIHwgMiArLQo+
ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCkFwcGxpZWQs
IHRoYW5rcy4KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJvIFNlcnZpY2VzIFRlY2hu
aWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29D
cwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
