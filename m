Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6F517065D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 19:06:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-ID:MIME-Version:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=f42niOmkprt1g2OjTgb2mAnQwJaxftn0o4VPRxsLhjA=; b=Ov4udx68QjEW5LjuvS3nGJkFH
	LvZHyEZ2mW3mW59VjnhgDlfPXhtLYDF4efyrnYufQiRHtKkkM9jtLYa8r8FC2spXi5nz/PTYOXTrt
	oOrGB4TLAKvXd18Q1CeIB/6wRTFFpez2wLKTsVMscpETiKzd3eBZ0VoW7OqeeicY5w+IfC+nBQjV0
	VoRi/CFedNHnAVw2AYP+38hZkJU49uKdVCN78KtWeiznE8LQ8EQ+WDRRDutywsX5E20TCzzMSkdyg
	GgAeeZO6j7XcN6M7ph+pSscln8kKWVLGlNwBkhb/kSOrPIjxdwp5BgyHxueRINH4Gl2MFwwwwjvj+
	IKh79TNQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpblP-0001wp-8I; Mon, 22 Jul 2019 17:06:15 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpbks-0001wM-3Q; Mon, 22 Jul 2019 17:05:44 +0000
Received: by mail-wm1-x343.google.com with SMTP id x15so35942328wmj.3;
 Mon, 22 Jul 2019 10:05:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:mime-version:message-id:in-reply-to
 :references:user-agent:content-transfer-encoding;
 bh=nq7CeC6p5mh4ddPFoATS1/ulmU6fyyb3CmoLsoOHvn4=;
 b=sb/Is2rFfkBLkukqlHbV/FuvmwbaLkKzMXT51ZHBpL9p7Iyg5QIYeqCZofLftfQZSX
 WKhn+LvchJrSq3m8iNJJ8Fwo+8L+VG3Y/aYBRwZJ7A+84hrfj5hqYXzs/ePSMR7Ogl+t
 g66fLTx0QwpIpxpwHaj/+S0lO5RjXIfpb4NLVb6FpWWGWaB4U5xgoEfVBPuUixA/Z++0
 hiygw3zIV9G1AY2h+3CYwn8PMpaJREuR4sHxhImO8Febw6ko1Zm5djO6USV8wfiOL5x3
 DMbNj+7/k5ync27mhGDXzuPvBBQK1u+jLZ3QBj62yvB/rYIeKhd3qGJ5Psthsi9mAmFd
 6XZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:mime-version:message-id
 :in-reply-to:references:user-agent:content-transfer-encoding;
 bh=nq7CeC6p5mh4ddPFoATS1/ulmU6fyyb3CmoLsoOHvn4=;
 b=YwqO03IpVg4e3QVhQ9quQJROBuEnJm2yyPkEdO8in+HHt5EEDshwuQcukrV0YGLViu
 KQrWkLrkGQ44KCt9RHrrXXEvbDSpVnvA7H5LuNDRoIcugPmIADTV4d13ox+4hY/kJpXS
 B4u+hOpRMSu8s+LjWofwLnfvfQE/O0+pjt9/ywdpyolvNeJK5esumL1CIFUiJOuiCM/n
 UWgG8NWqrgdrdbFCuMxcCBq4ylk/q1OCQX/MvLEvmDQCYP3+656hfNwDBsIxWSEXbHke
 iwGpy22tNk4m/DMvZRUvkiyJWqbl4rqtUiWikRAad37jt4KxiBfrXbWw0MImFeEpuGVG
 8BpQ==
X-Gm-Message-State: APjAAAXeRF1v/g/2NybbLNwxMcxKmqV/tojfnsznpzGsDxQnZIEGSVn4
 3qZZTW2MOncHWcrpXALj/60=
X-Google-Smtp-Source: APXvYqysWX1Q2bPH6/qCBkBac/F7odwyru4m5rGZKQti//2Br39EVcRq/h6HJA/02X4cbPXlkY9B8Q==
X-Received: by 2002:a1c:c742:: with SMTP id x63mr68271803wmf.0.1563815140416; 
 Mon, 22 Jul 2019 10:05:40 -0700 (PDT)
Received: from localhost ([92.59.185.54])
 by smtp.gmail.com with ESMTPSA id y16sm82319910wrg.85.2019.07.22.10.05.38
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 10:05:38 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
To: Marc Zyngier <marc.zyngier@arm.com>
Subject: Re: kexec on rk3399
Date: Mon, 22 Jul 2019 19:05:37 +0200
MIME-Version: 1.0
Message-ID: <d5959b93-40ce-455c-877e-c661a3f22351@gmail.com>
In-Reply-To: <91c53121-9041-e8a2-97a2-5b5626e24c6e@arm.com>
References: <ebcb52be-2063-4e2c-9a09-fdcacb94f855@gmail.com>
 <91c53121-9041-e8a2-97a2-5b5626e24c6e@arm.com>
User-Agent: Trojita
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_100542_162521_1F4A501D 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vicencb[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Matthias Brugger <mbrugger@suse.com>, Heiko Stuebner <heiko@sntech.de>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uZGF5LCBKdWx5IDIyLCAyMDE5IDQ6NTQ6NDEgUE0gQ0VTVCwgTWFyYyBaeW5naWVyIHdy
b3RlOgo+IE9uIDIyLzA3LzIwMTkgMTU6MzEsIFZpY2VudGUgQmVyZ2FzIHdyb3RlOgo+PiBIaSwg
aSBoYXZlIGJlZW4gcnVubmluZyBsaW51eCBvbiByazMzOTkgYm9vdGVkIHdpdGgga2V4ZWMgZmlu
ZSB1bnRpbCA1LjIKPj4gRnJvbSA1LjIgb253YXJkcywgdGhlcmUgYXJlIG1lbW9yeSBjb3JydXB0
aW9uIGlzc3VlcyBhcyByZXBvcnRlZCBoZXJlOgo+PiBodHRwOi8vbGttbC5pdS5lZHUvaHlwZXJt
YWlsL2xpbnV4L2tlcm5lbC8xOTA2LjIvMDcyMTEuaHRtbAo+PiBrZXhlYyBoYXMgYmVlbiBpZGVu
dGlmaWVkIGFzIHRoZSBwcmluY2lwYWwgcmVhc29uIGZvciB0aGUgaXNzdWVzLgo+PiAKPj4gSXQg
dHVybnMgb3V0IHRoYXQga2V4ZWMgaGFzIG5ldmVyIHdvcmtlZCByZWxpYWJseSBvbiB0aGlzIHBs
YXRmb3JtLCAuLi4KPgo+IE5vdCB0aGUgbW9zdCB0cnVzdGVkIHZlcnNpb24sIGJ1dCBoZXksIHdo
eSBub3QuLi4KPgo+PiAgMi4tIEtleGVjIGludG8gdjUuMi4yCj4+ICAzLi0gVGhlIGtlcm5lbCBy
ZXBvcnRzIG5vdGhpbmcgKGVhcmx5Y29uIG5vdCBlbmFibGVkKSBhbmQgZG9lcyBub3QgYm9vdC4K
Pj4gVGhlIHNhbWUga2VybmVsIHY1LjIuMiB3b3JrcyBmaW5lIHdoZW4gYm9vdGVkIHdpdGhvdXQg
a2V4ZWMuCj4KPiBDYW4geW91IHBsZWFzZSBlbmFibGUgZWFybHljb24gYW5kIGxldCB1cyBrbm93
IGhvdyBmYXIgaXQgZ29lcz8gWW91cgo+IHByZXZpb3VzIHJlcG9ydHMgaGludGluZyBhdCBydW50
aW1lIG1lbW9yeSBjb3JydXB0aW9uLCBidXQgdGhpcyBzZWVtcyB0bwo+IGJlIG11Y2ggbW9yZSBy
YWRpY2FsLi4uCgpEZXRhaWxzIG9uIHByZXZpb3VzIGVtYWlsLCBidXQgYmFzaWNhbGx5LCBlYXJs
eWNvbiBhZmZlY3RzIHJlcHJvZHVjaWJpbGl0eS4KCklmIGl0IGlzIGEgcnVudGltZSBtZW1vcnkg
Y29ycnVwdGlvbiwgd2hhdCBhcmUgd2UgaHVudGluZyBmb3I/IGFuIGlzc3VlIGluCnRoZSBrZXJu
ZWwgYmVmb3JlIGtleGVjIG9yIGluIHRoZSBrZXJuZWwgYWZ0ZXIga2V4ZWM/Cgo+IEZXSVcsIEkg
d2FzIGFibGUgdG8ga2V4ZWMgdXNpbmcgNS4yLXJjeCAoZm9yIHZhbHVlcyBvZiB4IGFyb3VuZCA2
KSBvbiBhCj4gTmFub1BDLVQ0LCB1c2luZyBhIG1haW5saW5lIHUtYm9vdCBhbmQgZmlybXdhcmUu
Cj4KPiBUaGFua3MsCj4KPiAJTS4KClJlZ2FyZHMsCiAgVmljZW7Dpy4KCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
