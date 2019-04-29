Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82B7EE8A6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 19:19:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7YW3UNDipgwudDwTxgnEVluFndoIpTd3l8xTZ8rlfIA=; b=qeVwGgLGJxCpxK
	gRR7SgcXC8tRilbRk9TOJff/AimR7S+JciI8dGOR4HKS2re4G9jJ71i0gNgwJmafzE3C0UDxJpkvF
	mAHalp95IiUMJO/xHeSl/cxmtOR8CJlxZEy7l30tsf6P36wmv3cZ2N5J1Df7S7qufTErKyXxbTzEx
	O+Gmjmu2r9EGJ23ZOAmE4VmLHbB45eBIQT+mfY75aJL4e6eojPKpx0d9b2VtFpaWyPSMyH93CUgG/
	kRrYk2GV12pRcxCPfDMNFbYYhh1yiCL1UmVEspaGLdl+hktgEAXYOwaRoO2i5MpaGIuRu7J5YPtpZ
	f4aXUqRRXymYv+SByxbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL9vm-0003JJ-SD; Mon, 29 Apr 2019 17:19:06 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL9vf-0003IF-AJ
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 17:19:00 +0000
Received: by mail-qt1-x842.google.com with SMTP id b3so12789802qtc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 10:18:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jSTnY20qh+9b+fgMWdr7QdTtLxQEdNrvMsQhAEqFRPQ=;
 b=J4ZnqAXRg9j1GFxYtxKe6YVghngN71fz2kjh093Y+OOWzlrzrkDXWNLlfywFD3OlOB
 zuYHLS0Y/EWauPsTFyrxOeOSHPyquWEV3uuuEb8qmAS5S4M4e1Qaz8eI9InMlbS/Nl12
 hfrAZ4vd36BctyDjW8ajK5Hqeu4N/giB/+OYpeLW3d5qld8voDl8xZpIx0ydsFSGfN5H
 hN02DMonp4+3iz2woY0xyYExueonPxo4jxCRtKsy3VpocSAPVIhY5nw1Z5o6LYn2exYh
 fYO1nuRdtSNUlDSYXOIXr/b8cGIVm+riWuZLU9giLGVhso85uLRYedbJRNoXNdOWzyz7
 301w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jSTnY20qh+9b+fgMWdr7QdTtLxQEdNrvMsQhAEqFRPQ=;
 b=ESo48CIUdCv8A4vA4fD6Qf4EO1DMscjgk0i6bSY01tLuDpUgJYZOfOJktu6Dc6FNC8
 0vqApkV0KSfIMZF9r8Koa1krmNkaF+4I2QUX7EUyYHn0olZQ3zK2URN+YDIe3peFkqAD
 iHMktaJAZbe43MhtT5xWEqExZbUhZ31WCgdLzWzeFAX3Fq4bxKE4tbXHk3lAw0GcGFkI
 jntJrqIgFLzOX6vMoxg54HxA+6fw/KyiArKV38oVO3cc990llWsfXrfGgpT7gBVnYf6P
 9t+KsVATiW5geEnDE5BULfqeuLCtyT+F4fvmHt2FzzlvZFMaRYX7avdW2ZJ+7AccLMjq
 Jf4w==
X-Gm-Message-State: APjAAAXwijlKuhkwsWvOlKQ9YRatQqPUtwz/OqlWLU55WZdmpmX1q2q6
 Bpuc9QAiiEpjDT0AZbzn8bDjAQ==
X-Google-Smtp-Source: APXvYqzDpiBsyJcAKjWLppvlEr8mrOVkh4RSHLNQbBP/5FkuX6AtXnf/sYzYfCOFZ5hGGWjHuCWC8w==
X-Received: by 2002:a0c:fba9:: with SMTP id m9mr749817qvp.32.1556558337608;
 Mon, 29 Apr 2019 10:18:57 -0700 (PDT)
Received: from dhcp-41-57.bos.redhat.com (nat-pool-bos-t.redhat.com.
 [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id e4sm18216200qtb.61.2019.04.29.10.18.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Apr 2019 10:18:57 -0700 (PDT)
Message-ID: <1556558335.6132.9.camel@lca.pw>
Subject: Re: [PATCH] arm64: fix pte_unmap() -Wunused-but-set-variable
From: Qian Cai <cai@lca.pw>
To: Will Deacon <will.deacon@arm.com>
Date: Mon, 29 Apr 2019 13:18:55 -0400
In-Reply-To: <20190429164923.GA26912@fuggles.cambridge.arm.com>
References: <20190427012842.93737-1-cai@lca.pw>
 <20190429164923.GA26912@fuggles.cambridge.arm.com>
X-Mailer: Evolution 3.22.6 (3.22.6-10.el7) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_101859_402127_60920DC3 
X-CRM114-Status: GOOD (  16.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
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
Cc: catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAyMDE5LTA0LTI5IGF0IDE3OjQ5ICswMTAwLCBXaWxsIERlYWNvbiB3cm90ZToKPiA+
IMKgYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9wZ3RhYmxlLmggfCA0ICsrLS0KPiA+IMKgMSBmaWxl
IGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAt
LWdpdCBhL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vcGd0YWJsZS5oCj4gPiBiL2FyY2gvYXJtNjQv
aW5jbHVkZS9hc20vcGd0YWJsZS5oCj4gPiBpbmRleCBkZTcwYzFlYWJmMzMuLjc1NDNlMzQ1ZTA3
OCAxMDA2NDQKPiA+IC0tLSBhL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vcGd0YWJsZS5oCj4gPiAr
KysgYi9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL3BndGFibGUuaAo+ID4gQEAgLTQ3OCw2ICs0Nzgs
OCBAQCBzdGF0aWMgaW5saW5lIHBoeXNfYWRkcl90IHBtZF9wYWdlX3BhZGRyKHBtZF90IHBtZCkK
PiA+IMKgCXJldHVybiBfX3BtZF90b19waHlzKHBtZCk7Cj4gPiDCoH0KPiA+IMKgCj4gPiArc3Rh
dGljIGlubGluZSB2b2lkIHB0ZV91bm1hcChwdGVfdCAqcHRlKSB7IH0KPiAKPiBIbW0sIGlzIHRo
aXMgZ3VhcmFudGVlZCB0byBzdG9wIHRoZSBjb21waWxlciBmcm9tIHdhcm5pbmc/IEFzc3VtaW5n
IHRoZQo+IHB0ZV91bm1hcCgpIGNhbGwgaXMgaW5saW5lZCwgSSdkIGV4cGVjdCBpdCB0byBrZWVw
IGNvbXBsYWluaW5nLiBXaGF0Cj4gY29tcGlsZXIgYXJlIHlvdSB1c2luZz8KClllcywgaXQgaXMg
Z3VhcmFudGVlZC4gVGVzdGVkIG9uIGJvdGggZ2NjIGFuZCBjbGFuZy4KCj4gCj4gQWxzbywgdGhl
cmUgYXJlIGEgYnVuY2ggb2Ygb3RoZXIgYXJjaGl0ZWN0dXJlcyB0aGF0IEkgd291bGQgZXhwZWN0
IHRvIGhhdmUKPiB0aGlzIHNhbWUgaXNzdWUgYmVjYXVzZSB0aGV5IGRlZmluZWQgcHRlX3VubWFw
KCkgZXhhY3RseSB0aGUgc2FtZSB3YXkuCgpUaGlzIGhhcyBhbHJlYWR5IGZpeGVkIGluIHBvd2Vy
cGMgdGhhdCB3ZW50IGluLgoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8yMDE5MDMwNzE0
NDAzMS41MjQ5NC0xLWNhaUBsY2EucHcvCgpJIGFtIG5vdCBzdXJlIGlmIEkgY2FyZSBhYm91dCBh
bnkgb3RoZXIgYXJjaGVzIG5vciBJIGhhdmUgcmVhbCBoYXJkd2FyZSB0byB0ZXN0CmZ1cnRoZXIu
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
