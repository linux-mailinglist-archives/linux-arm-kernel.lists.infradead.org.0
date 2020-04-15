Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 950FF1A9419
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 09:20:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mm+2u/cnHeCX/d0QOst9ZHEIJcyepePHWpGLnra+c3I=; b=twvm9OsU4SdVfT
	FSVSN8W3YXkcy71u+KQvnpp2HakeGbIPhzF5t95GdI/S+IkdlPY+oKYN9xNWg2odVN9UYXeuhEWtK
	UC8id9F/PLqdrGNzocHh1Yh5SFbdgTqCXgY9B6H3AJeHAy44fDkmCk/OPdj3BltAH6pqKW1szt9jj
	zTnkLD65FB0fdsnlOkoQGZ/iYx+iRY423MDut8WG0KJB4vBKVjzflA3sqvsfvtLphBWOFH/TCwvOm
	dLq8VueIN4VfT+cMFWFg6LccC1Hp+GSKD0F17bIfkxJopxXqUgW9776A2KrOIAlFi9+E1ZDRAkjHQ
	B+zy5OH/X1/PkzZUm4oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOcLP-00028O-6w; Wed, 15 Apr 2020 07:20:23 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOcLC-0001oN-Ta
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 07:20:13 +0000
Received: by mail-wm1-x343.google.com with SMTP id g12so9774448wmh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 00:20:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=JNTtrAlb/mmW6eYfSwP0Ro8M7IaMvjXCniYxJ2CnwM8=;
 b=icZ8PQrXhCZI6D32MNsceXbhSUdE3ss+k0PgEpqDHKKpUuNLoudWdHM44NERTbVm8o
 LgPj3+qoxx5rF5qJjQv0Y1ykLL37R/dqLSLiZ3J9hvBMgGZ8SBYTXgL4W61sPsaPkkmg
 tj8QWK8y/A2zfxups2uwgfp/r8d19M2NCwdg4cf5sElp5s0no2yDwcTjLX6DRaaNwZK6
 sU/M+nt9Hk9F9avYx4KpUOdeSVd6vX9NBHEAEQ1Uh9M3Esv8cpfZnoAyxp2ig3UX2B4y
 DMziWRGoduMn20Oc0ArYn16VU+Y8rXMG+QmlShsO9H/q0VXyNs0/rf79/7Pg/bvbRN2/
 3Sww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=JNTtrAlb/mmW6eYfSwP0Ro8M7IaMvjXCniYxJ2CnwM8=;
 b=B0jZmTK1NYhhrAhw59Tywo9hsS2GktT2G6QR37xqCoUaeCjGKjnhIk8QMBVcVbs6Ft
 vaxUgtJZxbi5ew1Iz3RgGq1DoOWuJ2V2HSNKbR0TAxLhzeLUEba+1587PZSzEBzKTghE
 dUTDH2H27X8+ZbBtvIk9oobzM3E0l9syfuuYJC3OByVs9tVKBKSEVN6UPq9MDSiHTDZ7
 bTkO9wu4u3bFCO7w5VRV96VTlci9QWSaoxh5qS1eWXCnnPPVkWIWYh8rHS0Sxsrr4l9G
 WXnGr0dY0uQHVAwOO7AC6sSnKMo4iXUMmQYWZjdBuTkH5PaWOT/glA5MY6/bi4dymW34
 3c8Q==
X-Gm-Message-State: AGi0PuYO1DMtT6rgvH9wrZdoM8VLeCBBbYHu4ZF1MraNtRlNm34pbUxk
 r90LY0T/GQFjtCS0lDJy1AFIfw==
X-Google-Smtp-Source: APiQypIt8y3v1RcXGhlIV5rcKng20PQp5/POLLPotSkVPDavNgF+b9tnwft19fx0HP2uPFDJdrAkQQ==
X-Received: by 2002:a1c:1d92:: with SMTP id d140mr3649301wmd.67.1586935208412; 
 Wed, 15 Apr 2020 00:20:08 -0700 (PDT)
Received: from dell ([95.149.164.124])
 by smtp.gmail.com with ESMTPSA id a9sm16577131wmm.38.2020.04.15.00.20.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 00:20:07 -0700 (PDT)
Date: Wed, 15 Apr 2020 08:21:08 +0100
From: Lee Jones <lee.jones@linaro.org>
To: =?utf-8?B?Z2VuZV9jaGVuKOmZs+S/iuWuhyk=?= <gene_chen@richtek.com>
Subject: Re: [PATCH resend v8] mfd: mt6360: add pmic mt6360 driver
Message-ID: <20200415072108.GE2167633@dell>
References: <1586273804-7722-1-git-send-email-gene.chen.richtek@gmail.com>
 <0f60497f62d24a37a0530941d6eec258@ex1.rt.l>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0f60497f62d24a37a0530941d6eec258@ex1.rt.l>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_002011_470050_A0B1C80E 
X-CRM114-Status: GOOD (  15.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 =?utf-8?B?Y3lfaHVhbmco6buD5ZWf5Y6fKQ==?= <cy_huang@richtek.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 Gene Chen <gene.chen.richtek@gmail.com>,
 "Wilma.Wu@mediatek.com" <Wilma.Wu@mediatek.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 =?utf-8?B?c2h1ZmFuX2xlZSjmnY7mm7jluIYp?= <shufan_lee@richtek.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAxNSBBcHIgMjAyMCwgZ2VuZV9jaGVuKOmZs+S/iuWuhykgd3JvdGU6Cgo+IEhpIExl
ZS9NYXR0aGlhcywKPiAKPiBJIHRyeSB0byBmaXggc3ViamVjdCBhbmQgdXBkYXRlIGFnYWluLCBw
bGVhc2UgaGVscCB0byByZXZpZXcgaXQsIHRoYW5rcwoKRmV3IHRoaW5ncyB3cm9uZyB3aXRoIHRo
aXMuCgogLSBQbGVhc2UgZG9uJ3QgdG9wIHBvc3QKIC0gUGxlYXNlIHNuaXAgdGhlIHBhcnRzIG9m
IHRoZSBtZXNzYWdlIHlvdSdyZSBub3QgZGlyZWN0bHkgcmVwbHlpbmcgdG8gCiAtIFBsZWFzZSBk
byBub3Qgc2VuZCBjb250ZW50bGVzcyBwaW5ncwoKV2l0aCByZWdhcmRzIHRvIHRoZSBsYXR0ZXIg
cG9pbnQ7IHlvdSBzZW50IHRoaXMgcGF0Y2ggZHVyaW5nIHRoZQptZXJnZS13aW5kb3cgKHBsZWFz
ZSBwYXkgYXR0ZW50aW9uIHRvIHRoZSByZWxlYXNlIGN5Y2xlKS4gIE5vdCBhIGdyZWF0CmRlYWwg
b2YgcmV2aWV3aW5nIGhhcHBlbnMgZHVyaW5nIHRoaXMgcGVyaW9kLiAgSWYgfjIgd2Vla3MgaGF2
ZSBwYXNzZWQKKHRoZXkgaGF2ZW4ndCksIHlvdSBtYXkgYXNzdW1lIHRoYXQgeW91ciBwYXRjaCBo
YXMgYmVlbiBtaXNzZWQgYW5kCnN1Ym1pdCBhIFtSRVNFTkRdLCBidXQgd2hhdGV2ZXIgaGFwcGVu
cywgZG8gbm90IHBpbmcuCgpGWUksIHlvdXIgcGF0Y2ggaXMgb24gdGhlIGxpc3QgLSB5b3UgZG8g
bm90IG5lZWQgdG8gc2VuZCBhIFtSRVNFTkRdLgoKPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0t
LQo+IEZyb206IEdlbmUgQ2hlbiBbbWFpbHRvOmdlbmUuY2hlbi5yaWNodGVrQGdtYWlsLmNvbV0K
PiBTZW50OiBUdWVzZGF5LCBBcHJpbCAwNywgMjAyMCAxMTozNyBQTQo+IFRvOiBsZWUuam9uZXNA
bGluYXJvLm9yZzsgbWF0dGhpYXMuYmdnQGdtYWlsLmNvbQo+IENjOiBsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmc7IGxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmc7
IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IGdlbmVfY2hlbijpmbPkv4rlrocpIDxnZW5l
X2NoZW5AcmljaHRlay5jb20+OyBXaWxtYS5XdUBtZWRpYXRlay5jb207IHNodWZhbl9sZWUo5p2O
5pu45biGKSA8c2h1ZmFuX2xlZUByaWNodGVrLmNvbT47IGN5X2h1YW5nKOm7g+WVn+WOnykgPGN5
X2h1YW5nQHJpY2h0ZWsuY29tPgo+IFN1YmplY3Q6IFtQQVRDSCByZXNlbmQgdjhdIG1mZDogbXQ2
MzYwOiBhZGQgcG1pYyBtdDYzNjAgZHJpdmVyCj4gCj4gQWRkIG1mZCBkcml2ZXIgZm9yIG10NjM2
MCBwbWljIGNoaXAgaW5jbHVkZSBCYXR0ZXJ5IENoYXJnZXIvVVNCX1BEL0ZsYXNoIExFRC9SR0Ig
TEVEL0xETy9CdWNrCj4gCj4gU2lnbmVkLW9mZi1ieTogR2VuZSBDaGVuIDxnZW5lX2NoZW5Acmlj
aHRlay5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvbWZkL0tjb25maWcgICAgICAgIHwgIDEyICsrCj4g
IGRyaXZlcnMvbWZkL01ha2VmaWxlICAgICAgIHwgICAxICsKPiAgZHJpdmVycy9tZmQvbXQ2MzYw
LWNvcmUuYyAgfCA0MjUgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrCj4gIGluY2x1ZGUvbGludXgvbWZkL210NjM2MC5oIHwgMjQwICsrKysrKysrKysrKysrKysr
KysrKysrKysKPiAgNCBmaWxlcyBjaGFuZ2VkLCA2NzggaW5zZXJ0aW9ucygrKQo+ICBjcmVhdGUg
bW9kZSAxMDA2NDQgZHJpdmVycy9tZmQvbXQ2MzYwLWNvcmUuYyAgY3JlYXRlIG1vZGUgMTAwNjQ0
IGluY2x1ZGUvbGludXgvbWZkL210NjM2MC5oCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCkxp
bmFybyBTZXJ2aWNlcyBUZWNobmljYWwgTGVhZApMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBz
b2Z0d2FyZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwg
QmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
