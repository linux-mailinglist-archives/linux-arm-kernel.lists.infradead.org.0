Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D580EE212
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 15:21:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JkjAs8mvm3FxptDMKvJScIvRRLoSmaN4ucMk1fdxF3k=; b=EdoRoJ4kr/QIJ7
	8D/COQ4vfDglrAbpDGLzhM2iFz6WpufWC89rkZOw50IKi9w+thrY30HsQ96dZmwqprrhtddiuVtGg
	QYHytfPJUBRxd0+2aRmrKqNRpKv0A3MJEJxzMh8+U46jHVHsGY/4iBEQA5Aq1ONN5G6mVQoje4frq
	i4uzxX2QIExG4XlYC4uY6rxhbTS5dijGeVirZsrq/6vWt5Ho9GNmq7gRG96zkyru/lc2f/yS9E/8W
	PuLSiwu0TSq+UKCe86YMSB6o/KsAfYqZPUtgIiTTNAxKZNSR4WdArivT+RiBgBBWBtN4IzcqmJGR7
	I6QW5ACZr+Lxy/NGj7NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRdEM-0006QK-4M; Mon, 04 Nov 2019 14:21:18 +0000
Received: from coyote.holtmann.net ([212.227.132.17] helo=mail.holtmann.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRdED-0006PM-OE
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 14:21:12 +0000
Received: from marcel-macbook.fritz.box (p4FEFC197.dip0.t-ipconnect.de
 [79.239.193.151])
 by mail.holtmann.org (Postfix) with ESMTPSA id 52BD1CECD7;
 Mon,  4 Nov 2019 15:30:03 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3601.0.10\))
Subject: Re: [PATCH v2 1/3] dt-bindings: net: bluetooth: add DT binding for
 Realtek controllers
From: Marcel Holtmann <marcel@holtmann.org>
In-Reply-To: <20191101080256.gjc4tacltehro3iw@hendrix>
Date: Mon, 4 Nov 2019 15:20:59 +0100
Message-Id: <6C5CE71F-37F2-4C8A-9D94-1BC75937B478@holtmann.org>
References: <20191030224333.70241-1-bonstra@bonstra.fr.eu.org>
 <20191030224333.70241-2-bonstra@bonstra.fr.eu.org>
 <20191101080256.gjc4tacltehro3iw@hendrix>
To: Maxime Ripard <mripard@kernel.org>
X-Mailer: Apple Mail (2.3601.0.10)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_062109_934821_F494C9F9 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.132.17 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Johan Hedberg <johan.hedberg@gmail.com>,
 Hugo Grostabussiat <bonstra@bonstra.fr.eu.org>,
 linux-bluetooth@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSHVnbywKCj4+IFRoZSBydGxfYnQgZHJpdmVyIGFscmVhZHkgc3VwcG9ydHMgc29tZSBSZWFs
dGVrIGNvbnRyb2xsZXJzIG9uIEFDUEkKPj4gcGxhdGZvcm1zLgo+PiBUaGlzIGNvbW1pdCBhZGRz
IGJpbmRpbmdzIGZvciBEVC1vbmx5IHBsYXRmb3Jtcy4KPj4gCj4+IFNpZ25lZC1vZmYtYnk6IEh1
Z28gR3Jvc3RhYnVzc2lhdCA8Ym9uc3RyYUBib25zdHJhLmZyLmV1Lm9yZz4KPj4gLS0tCj4+IC4u
Li9iaW5kaW5ncy9uZXQvcmVhbHRlay1ibHVldG9vdGgudHh0ICAgICAgICB8IDI1ICsrKysrKysr
KysrKysrKysrKysKPj4gMSBmaWxlIGNoYW5nZWQsIDI1IGluc2VydGlvbnMoKykKPj4gY3JlYXRl
IG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvcmVhbHRl
ay1ibHVldG9vdGgudHh0Cj4gCj4gWW91IHNob3VsZCB3cml0ZSB0aGF0IGJpbmRpbmcgdXNpbmcg
YSBZQU1MIGRlc2NyaXB0aW9uLiBGcmVlLWZvcm0KPiBkZXZpY2UgdHJlZSBiaW5kaW5ncyBhcmUg
bW9yZSBvciBsZXNzIGRlcHJlY2F0ZWQgbm93LgoKdW5sZXNzIHdlIGNoYW5nZSBhbGwgdGhlIEJs
dWV0b290aCBkZXNjcmlwdGlvbnMsIEkgcHJlZmVyIHdlIGtlZXAgaXQgdGhlIOKAnG9sZOKAnSB3
YXkuCgo+IElJUkMsIHRoYXQgaGFzIGJlZW4gZGlzY3Vzc2VkIGJlZm9yZSBhbmQgdGhlIHN0YW5k
YXJkICJtb2RlbCIgcHJvcGVydHkKPiB3YXMgdG8gYmUgcHJlZmVycmVkLgoKVGhpcyBvbmUgc2hv
dWxkIHJlYWxseSBnZXQgYW4gQUNLIGZyb20gUm9iLgoKUmVnYXJkcwoKTWFyY2VsCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
