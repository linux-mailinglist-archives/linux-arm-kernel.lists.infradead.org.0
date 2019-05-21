Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5801A253D3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 17:24:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4wPge3B14ij/cQYkDes86ATo1Mg0euEvbGxZ/0I3XRg=; b=a2RjXZ7nTu8phR
	UhUVPf1P8HP+UM/ZYi5xtSQH729G5i0ZX8prFxwD+JaRTs2L7SnsDuU/hUEGiKOeGcnGflVeDxmga
	CnOwkVcI3fe0k3wEjV0PwJKqr4NGEPB4GC/v3ozu3wVv+vXf87O8PpLk/1Sn1xMSMFHTVpnScAeb+
	hDFMlhsfTirzuMKdA+vCc8TjznWu2jiCWL9Lj0BE/8VkNQc3ZeNKghMdhn+y1YJCvtWnlQWbKtzdF
	8Y+7HFcGxbu7k/PM/DFl4ixawRsGZO/oovFY9jFdYRl3udxsh/NfbCmKeYeC0KZOJs7VBKS4iwtzW
	p4nfc12Jelg8RARPWifw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT6d2-0008Ke-Hz; Tue, 21 May 2019 15:24:36 +0000
Received: from mail-pg1-x52f.google.com ([2607:f8b0:4864:20::52f])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT6cv-0008KL-E0
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 15:24:30 +0000
Received: by mail-pg1-x52f.google.com with SMTP id 145so8753287pgg.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 08:24:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=FZGxEnw+Cq/7/xFciEEXndDBcT5dwsPHVUXvpgqfPhU=;
 b=spu1eU36eUlj/ISZDY3h5GN/TopdhdmSbMVu15gL0F5WYOfmChY3SCG86OhJaxnEcZ
 h5wKcrfSGEpNwYmq09nfAIs+LRSScxDV8gWU1hpCgeYWgzRtxnReTU5jXJfBFZ4xaM2G
 0b0al/UfKG051YPxwjZCY08sLKgfV3HhE59yRdENcgNPa6Z7Y0RxGMw+Vrgd/XwsEBPx
 Y9COLMJS6tR2aMopZxJAPiFC3nZhbyl/ldjhpC4wGsiQMWgDVKaD2PwrzNrKfb5pI/WM
 nfMSp9mqVUy8evPt2tzHjFkozUvqgwLKilTse0MbCmf1rXTvmlWAdqyfpaj92eweF18K
 4vjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=FZGxEnw+Cq/7/xFciEEXndDBcT5dwsPHVUXvpgqfPhU=;
 b=i0KwYxwZeKO2w+TPzyNzKY6HFIa2ANybxPG5VQ4lXNoCRYq6K6x8K0hnUG0JrZ8GIB
 9auMrcmDftriLeki1palFdAgWVclrhqoFoPsoLkcmpGZ2qJKR+sKJMpWmDsbFIXlnAIW
 sCGPS67PckbCwW96Qk4wxKoJECGEcXe5uObe/c6tou/pp2afgu10sLL3lq8MRVFaEJ2C
 6B4YdQzHeH5wxeegVt7Cp3I1A4gM+pC57W1VJhOvr+6M5nvy4V0DlDPp6tAcbfdum1SN
 qYm1HGCmWQeoCThfZaT4QteDiSQZ8cJQY1dKwQp+mzLVdaYuSw8YDzcbG7GpD7HS/NRn
 wk1g==
X-Gm-Message-State: APjAAAWY8QU6qFIzO6ZcOS6I4eEvrXCgCCVkT4M60ZLJgSQ8zgI58lMd
 +Uzz6eKoWw3kblEKL4EY0ug=
X-Google-Smtp-Source: APXvYqytwdSC0czncLqkaOLf8Iw+bRcA/ip/wJD8sj+GzlF9snR25W6WVdGVoMoondaJ4WYw2dMLFQ==
X-Received: by 2002:a63:318b:: with SMTP id
 x133mr82478653pgx.297.1558452268022; 
 Tue, 21 May 2019 08:24:28 -0700 (PDT)
Received: from [10.8.0.6] ([45.63.26.232])
 by smtp.gmail.com with ESMTPSA id d186sm22625134pgc.58.2019.05.21.08.24.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 May 2019 08:24:27 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: PL111 DRM for TI Nspire
From: Daniel Tang <dt.tangr@gmail.com>
In-Reply-To: <CACRpkdadF31-jKZPuFJCz0bk7iF=7VzbyPD4EpjiK3DnbpHuOA@mail.gmail.com>
Date: Wed, 22 May 2019 00:24:19 +0900
Message-Id: <F4EF7060-DEC5-4122-8D51-B5DC3F1D553E@gmail.com>
References: <CACRpkdadF31-jKZPuFJCz0bk7iF=7VzbyPD4EpjiK3DnbpHuOA@mail.gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>
X-Mailer: Apple Mail (2.3445.9.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_082429_498413_77F9870E 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52f listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dt.tangr[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTGludXMsCgpUaGFua3MgZm9yIHJlYWNoaW5nIG91dC4gQXQgdGhpcyBzdGFnZSwgSeKAmW0g
bm90IGFibGUgdG8gcGVyc29uYWxseSB0ZXN0IHBhdGNoZXMgYXMgSeKAmW0gbm8gbG9uZ2VyIGFj
dGl2ZWx5IGRldmVsb3Bpbmcgb24gdGhpcyBwbGF0Zm9ybS4gSG93ZXZlciwgSSB3aWxsIHJlYWNo
IG91dCBhbmQgZGlyZWN0IHlvdXIgcmVxdWVzdCB0byBzb21lIHBlb3BsZSB3aG8gY2FuIGhlbHAg
KGFuZCBob3BlZnVsbHkgZmluZCBhIG1vcmUgYXBwcm9wcmlhdGUgbWFpbnRhaW5lcikuIAoKSSB3
aWxsIHRyeSB0byBnZXQgYmFjayB0byB5b3UgYXMgc29vbiBhcyBwb3NzaWJsZS4KCkNoZWVycywK
RGFuaWVsCgo+IE9uIDIxIE1heSAyMDE5LCBhdCAxMDo1MiBhbSwgTGludXMgV2FsbGVpaiA8bGlu
dXMud2FsbGVpakBsaW5hcm8ub3JnPiB3cm90ZToKPiAKPiBIaSBmb2xrcywKPiAKPiBJIGhhdmUg
b25lIG1vcmUgdXNlciBvZiB0aGUgb2xkIFBMMTExIGZiZGV2IGRyaXZlciBiZWZvcmUgSSBjYW4K
PiBzd2l0Y2ggdGhlbSBhbGwgb3ZlciB0byB0aGUgbmV3IERSTSBkcml2ZXIgaW4gZHJpdmVycy9n
cHUvZHJtL3BsMTExCj4gYW5kIGZpbmFsbHkgZGVsZXRlIHRoZSBvbGQgZHJpdmVyOiBUSSBOc3Bp
cmUuCj4gCj4gQmVmb3JlIEkgaW52ZXN0IHRpbWUgSSB3YW50IHRvIGFzY2VydGFpbiB0aGF0IHRo
ZSBtYWludGFpbmVycyBhcmUKPiBhY3RpdmVseSB1c2luZyBOc3BpcmUgYW5kIGNhbiB0ZXN0IHBh
dGNoZXMgaW4gcmVhc29uYWJsZSB0aW1lIGlmCj4gSSB3b3JrIG9uIHRoaXMsIHNpbmNlIEkgY2Fu
bm90IHRlc3QgaXQgbXlzZWxmLgo+IAo+IEl0IHNlZW1zIGVhc3kgZW5vdWdoIHRvIGNvbnZlcnQg
dGhhdCBJIHdvdWxkIGRhcmUgZHJ5LWNvZGluZyBpdAo+IGlmIEkgY2FuIGdldCBzb21lIGhlbHAg
dGVzdGluZyBhbmQgZml4aW5nIHVwIHJvdWdoIGVkZ2VzLgo+IAo+IElzIE5zcGlyZSByZWFkeSB0
byB0ZXN0IHNvbWUgcGF0Y2hlcz8KPiAKPiBZb3VycywKPiBMaW51cyBXYWxsZWlqCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
