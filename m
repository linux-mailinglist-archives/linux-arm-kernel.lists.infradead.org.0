Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF6F94DC3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 21:20:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cd70OCy+lr6xclh+21u24Ccj+KrOMPOcj90H85MLccA=; b=H7afA+FirP6Z2W
	NXGoyTd1DNngaUpEE5xtRkXixqEhhZ/QMC0mUszqoHQqEwXTUXM8QzzVbuZtLg2LkWFoRD3AMWPPL
	qnY00NSzXZs+I3OTNn9jVbrzTWBa/p6KRJzJXqqSPNQkeqA2NbfpdO5j+Com2zfVButCC3bLZJ/KB
	olzyqGQD78SXBoJE5ysDEAZAsx6bDS3+NJzmafFm6KmCVNznXb37D32Uy/panHnfbZlup9Yd+z/ty
	dqJ7DDtFg843A1MvZZUUqlXqBBSOKRHRMw7v7xOANmEe0gvNCIXZoZotXxIT/X39XdmuqnMoZWidn
	zbu32XZdNjDE3wo3AzRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hznCe-0006RG-1K; Mon, 19 Aug 2019 19:20:28 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hznCO-0006Qo-8P
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 19:20:13 +0000
Received: by mail-lj1-x242.google.com with SMTP id l14so2826873lje.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 12:20:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=N1FJcWQF1tKSEgluxrWB6NkTiT1Cjd+gdeCsUdxZ1K4=;
 b=hfrU9m2s/Dvghd7ZW5ecHUaFz92ArpQe/hBZrdRvGb4OaDy99gu1Yg4KFjtyracFHD
 QdnHHl/tMe6WZARq9FujHnTMPY6KRqvGl3DE55VgA1AknTln8FvO/7yjDciTzls6OOhX
 Ej5xBUXPZbX5QgvV7sGIR5rLBQC9f8bhhxbd0hs8FSTRbLEuStkgvjAoQXFShOm9XN9T
 iyrFwMECFpFgk/6J82yRkjYTxCYJl7dKRHT9u4NmMlRdRtZQrdPRQH62tTf4C/CFSlNB
 RzMOqCTIhHT8tJzHkuJTBDI9s/PYDJgCbzO9h6sH08124j0JJCB/RCA6wnVNmPpZ/tzs
 Kxrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=N1FJcWQF1tKSEgluxrWB6NkTiT1Cjd+gdeCsUdxZ1K4=;
 b=qyttJ9oF8RkbOvcXPNoN4fy8eNW29rM+Tgs+DrY49SzMHa/bVxbCK4Rf+WIOMEDJiJ
 iq2MxXLljLkBaWWd8ERoyLqVLlA7V5UAndXmn8VyYqYgFEsRGycxHOVfy793VhesBUMU
 4x1Mtulq6FiVxXpl1FiYOK1gsVMuhTWRh0LLwKSD3AX1xugcirGLYabsPljzWplEiLOg
 arl95NQrdFOk8dhEu4N2XY9SE2RMrdkWxK3UN0GgDgTjonTdB4n6h/Y8moC5EwfRcJCI
 JgPDMvSSpuelKinXbR4FA1kv4jfG5PmeRL6ISEiykPgB0NhTevnQO8lUurDLjtwQvsWo
 RGGg==
X-Gm-Message-State: APjAAAWqUdkr2nNhNUw5YyYGm6+1kMLIVNKOda3P7YEUc36tyn4dYXb0
 f+LLzXBkzwEaFhNIIVQ8s2LsrpC1XPuBrAHUzII=
X-Google-Smtp-Source: APXvYqxnzrHi/ifYk2Gm6ducLy7eJLjEJT/H5brIIBwTTPD/q1O1/wmN/CSmfwpdz3tvX9E0uCT5uQmos/W1HnoW0dM=
X-Received: by 2002:a2e:81cb:: with SMTP id s11mr13142236ljg.179.1566242410015; 
 Mon, 19 Aug 2019 12:20:10 -0700 (PDT)
MIME-Version: 1.0
References: <e32cd4009153b184103554009135c7bf7c9975d7.1560783090.git-series.maxime.ripard@bootlin.com>
 <5978761.uBj7R84RrF@jernej-laptop>
In-Reply-To: <5978761.uBj7R84RrF@jernej-laptop>
From: Thomas Graichen <thomas.graichen@googlemail.com>
Date: Mon, 19 Aug 2019 21:20:00 +0200
Message-ID: <CAOUEw13CCVhk9kt_z2VkguX0=TCeARkH-8+qSh_nF-J+r0Rscg@mail.gmail.com>
Subject: Re: [v5,05/12] drm/modes: Rewrite the command line parser
To: =?UTF-8?Q?Jernej_=C5=A0krabec?= <jernej.skrabec@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_122012_327579_773A383E 
X-CRM114-Status: GOOD (  14.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thomas.graichen[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: eben@raspberrypi.org, Maxime Ripard <maxime.ripard@bootlin.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 dri-devel@lists.freedesktop.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 David Airlie <airlied@linux.ie>, Sean Paul <seanpaul@chromium.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Maxime Ripard <maxime.ripard@free-electrons.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBBdWcgMTksIDIwMTkgYXQgODo1NCBQTSBKZXJuZWogxaBrcmFiZWMgPGplcm5lai5z
a3JhYmVjQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiArQ0M6IFRob21hcyBHcmFpY2hlbgo+Cj4gRG5l
IHBvbmVkZWxqZWssIDE3LiBqdW5paiAyMDE5IG9iIDE2OjUxOjMyIENFU1QgamUgTWF4aW1lIFJp
cGFyZCBuYXBpc2FsKGEpOgo+ID4gRnJvbTogTWF4aW1lIFJpcGFyZCA8bWF4aW1lLnJpcGFyZEBm
cmVlLWVsZWN0cm9ucy5jb20+Cj4gPgo+ID4gUmV3cml0ZSB0aGUgY29tbWFuZCBsaW5lIHBhcnNl
ciBpbiBvcmRlciB0byBnZXQgYXdheSBmcm9tIHRoZSBzdGF0ZSBtYWNoaW5lCj4gPiBwYXJzaW5n
IHRoZSB2aWRlbyBtb2RlIGxpbmVzLgo+ID4KPiA+IEhvcGVmdWxseSwgdGhpcyB3aWxsIGFsbG93
IHRvIGV4dGVuZCBpdCBtb3JlIGVhc2lseSB0byBzdXBwb3J0IG5hbWVkIG1vZGVzCj4gPiBhbmQg
LyBvciBwcm9wZXJ0aWVzIHNldCBkaXJlY3RseSBvbiB0aGUgY29tbWFuZCBsaW5lLgo+ID4KPiA+
IFJldmlld2VkLWJ5OiBOb3JhbGYgVHLDuG5uZXMgPG5vcmFsZkB0cm9ubmVzLm9yZz4KPiA+IFNp
Z25lZC1vZmYtYnk6IE1heGltZSBSaXBhcmQgPG1heGltZS5yaXBhcmRAZnJlZS1lbGVjdHJvbnMu
Y29tPgo+Cj4gVGhvbWFzIHJlcG9ydGVkIHRvIG1lIHRoYXQgdGhpcyBwYXRjaCBicmVha3MgInZp
ZGVvPUNPTk5FQ1RPUjplIiBrZXJuZWwKPiBwYXJhbWV0ZXIgd2hpY2ggaGUgY3VycmVudGx5IHVz
ZXMgYXMgYSB3b3JrYXJvdW5kIGZvciBINiBIRE1JIG1vbml0b3IKPiBkZXRlY3Rpb24gaXNzdWUg
b24gb25lIFNUQi4KPgo+IEkgc3VwcG9zZSB0aGlzIGlzIHRoZSBzYW1lIGlzc3VlIHRoYXQgRG1p
dHJ5IG5vdGljZWQuCj4KPiBUaG9tYXMgR3JhaWNoZW4gKGluIENDKSBjYW4gcHJvdmlkZSBtb3Jl
IGluZm9ybWF0aW9uIGlmIG5lZWRlZC4KPgo+IEJlc3QgcmVnYXJkcywKPiBKZXJuZWoKCmFzIGpl
cm5laiBhbHJlYWR5IG1lbnRpb25lZCBpIGFtIGN1cnJlbnRseSBoYXZpbmcgdG8gdXNlIHRoZSBr
ZXJuZWwKY21kbGluZSBvcHRpb24gdmlkZW89SERNSS1BLTE6ZSB0byBnZXQgYSB3b3JraW5nIGhk
bWkgb3V0cHV0IG9uIGFuCmVhY2hsaW5rIGg2IG1pbmkgdHYgYm94IGFuZCB3YXMgd29uZGVyaW5n
IHRoYXQgaSBkaWQgbm90IGdldCBhbnkgaGRtaQpvdXRwdXQgZXZlbiB3aXRoIHRoaXMgb3B0aW9u
IHdoZW4gc3dpdGNoaW5nIGZyb20gdGhlCmh0dHBzOi8vZ2l0aHViLmNvbS9tZWdvdXMvbGludXgg
b3ByYW5nZS1waS01LjIgdG8gdGhlIG9yYW5nZS1waS01LjMKYnJhbmNoIHdoaWNoIHNlZW1zIHRv
IGNvbnRhaW4gdGhpcyBwYXRjaC4gYXMgaSBoYWQgbm8gaWRlYSB3aGF0IG1pZ2h0CmhhdmUgY2F1
c2VkIHRoZSBicmVha2FnZSBvZiB0aGUgaGRtaSBvdXRwdXQgYW5kIGRpZCBhIGZ1bGwgYmlzZWN0
IG9mCnRoZSBrZXJuZWwgYmV0d2VlbiB0aG9zZSB0d28gdmVyc2lvbnMsIHdoaWNoIGVuZGVkIHJl
bGlhYmx5IGF0IGV4YWN0bHkKdGhpcyBwYXRjaCAtIHNvIGkgZ3Vlc3MgdGhlcmUgaXMgYSByZWdy
ZXNzaW9uIGF0IGxlYXN0IHdpdGggdGhlCnZpZGVvPUNPTk5FQ1RPUjplIG9wdGlvbiAobWF5YmUg
b3RoZXJzIHRvbz8pIHdpdGggdGhpcyBwYXRjaGVzIGNvZGUKd2hpY2ggbWFrZXMgaXQgbm90IHdv
cmtpbmcgYW55bW9yZS4KCmJlc3Qgd2lzaGVzIC0gdGhvbWFzCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
