Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46CECB75B0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 11:07:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JqTOXrHIhM3ChR9GQahwPjOLzBevfYc406l9D+4UUHc=; b=SLnthGdGTl+gdd
	x48dBu3zlamM5m0fNtLPrytSyhpK7cr0lRuxbe4UJWgimNFoyWL2UFPApZTryMikGcRxWp3Q9U74n
	LghleJBQykbCAHWQi1XixbqEBlo6yTGnBHTiDO96ApTNCCsCqyENcFfsglKhV5tP9iY89E5hOMWS/
	aE4FYkeh/Qn0oPJBtXHRDB7fsfHsOfnxNdGxr4acF5F5GQJGYfGGVkNFbl0sUg2Yu5wTWZKdwmkoD
	urBzpVsdF6dxcGmcLP5Np6M3mOFeGkmPTZ6c6eHH4qjUilsxudf395XeOygazGv04dbp0HPYk/w5k
	zBSZ0P5SkJUAlPn6U3Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAsOi-0004oS-Lw; Thu, 19 Sep 2019 09:06:45 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAsOF-0004n5-QE
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 09:06:18 +0000
Received: by mail-ot1-f66.google.com with SMTP id b2so2397627otq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 02:06:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=wDQS67j3lG7TwomTYu6phRtQVo+Lq0+3xuq57RPV6D8=;
 b=M0EDnAj3DpRNMOWk0d9R19W4u7x7tu+GLPS1H9bZKpUYyen5eOsvgq3gJACBn3yxQL
 5+a1AT9ZL2+5iylmPntVFR65/31nqobpkZDsri9KhnMEFSpdxA3/oCfsUYXwYJFNwKXK
 I0cZUBx7moimFMcpFl91sradNtp8d9sfLJ70+VU8PNf2uwFVbIndnB6akIOW9RBhdRjg
 Q1c0hDxAiEepcD91YJ5WjL21S28jHASugXeiOP4QpyRxcX6QtA12WPMdACB7rxeVaBX3
 onfb4F2Nsy6LyLOi08mR3hF2RCF6pUyUKyd13np2X1aBKSFlJ+CRt8DudcxRh2oi9q3B
 IIGw==
X-Gm-Message-State: APjAAAU5YD1hTo8lJcPiiTmrE48fZo2ZdiEsJvQHP0107XjzWz2rZO+e
 c+yDWIW1xFEeSCcKikaIxp2byZP0zS3yENOtyS8=
X-Google-Smtp-Source: APXvYqzkCVuzCTBNypl4Lg61PDxEIAb1NQVdXkZR4+Hm131qcRPrUobeyAbVKE3pL8YI02rUdNiF6OshW6FylYOc9ac=
X-Received: by 2002:a9d:4d0d:: with SMTP id n13mr5907611otf.297.1568883971244; 
 Thu, 19 Sep 2019 02:06:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190731.094150.851749535529247096.davem@davemloft.net>
 <20190731185023.20954-1-natechancellor@gmail.com>
 <b3444283-7a77-ece8-7ac6-41756aa7dc60@infradead.org>
 <64f7ef68-c373-5ff5-ff6d-8a7ce0e30798@infradead.org>
In-Reply-To: <64f7ef68-c373-5ff5-ff6d-8a7ce0e30798@infradead.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 19 Sep 2019 11:06:00 +0200
Message-ID: <CAMuHMdXya55UJttU1xvX5+-N658Xqfa0k8sSKTGbtdBHgPEFcg@mail.gmail.com>
Subject: Re: [PATCH] net: mdio-octeon: Fix build error and Kconfig warning
To: Randy Dunlap <rdunlap@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_020616_105898_042A7128 
X-CRM114-Status: UNSURE (   9.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: driverdevel <devel@driverdev.osuosl.org>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, kbuild test robot <lkp@intel.com>,
 kernel-build-reports@lists.linaro.org, Greg KH <gregkh@linuxfoundation.org>,
 Matthew Wilcox <willy@infradead.org>, Mark Brown <broonie@kernel.org>,
 Linux-Next <linux-next@vger.kernel.org>, netdev <netdev@vger.kernel.org>,
 Nathan Chancellor <natechancellor@gmail.com>,
 "David S. Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBBdWcgMSwgMjAxOSBhdCAxOjUyIEFNIFJhbmR5IER1bmxhcCA8cmR1bmxhcEBpbmZy
YWRlYWQub3JnPiB3cm90ZToKPiBIb3dldmVyLCB0aGVyZSBhcmUgbG90cyBvZiB0eXBlL2Nhc3Qg
d2FybmluZ3MgaW4gYm90aCBtZGlvLW9jdGVvbiBhbmQgbWRpby1jYXZpdW06Cj4KPiAuLi9kcml2
ZXJzL25ldC9waHkvbWRpby1vY3Rlb24uYzogSW4gZnVuY3Rpb24g4oCYb2N0ZW9uX21kaW9idXNf
cHJvYmXigJk6Cj4gLi4vZHJpdmVycy9uZXQvcGh5L21kaW8tb2N0ZW9uLmM6NDg6Mzogd2Fybmlu
ZzogY2FzdCBmcm9tIHBvaW50ZXIgdG8gaW50ZWdlciBvZiBkaWZmZXJlbnQgc2l6ZSBbLVdwb2lu
dGVyLXRvLWludC1jYXN0XQo+ICAgICh1NjQpZGV2bV9pb3JlbWFwKCZwZGV2LT5kZXYsIG1kaW9f
cGh5cywgcmVnc2l6ZSk7Cj4gICAgXgoKY2F2aXVtX21kaW9idXMucmVnaXN0ZXJfYmFzZSBzaG91
bGQgYmUgInZvaWQgX19pb21lbSAqIiBpbnN0ZWFkIG9mICJ1NjQiLAphbmQgdGhlIGNhc3Qgc2hv
dWxkIGJlIGRyb3BwZWQuCgo+IEluIGZpbGUgaW5jbHVkZWQgZnJvbSAuLi9kcml2ZXJzL25ldC9w
aHkvbWRpby1vY3Rlb24uYzoxNDowOgo+IC4uL2RyaXZlcnMvbmV0L3BoeS9tZGlvLWNhdml1bS5o
OjExMzo0ODogd2FybmluZzogY2FzdCB0byBwb2ludGVyIGZyb20gaW50ZWdlciBvZiBkaWZmZXJl
bnQgc2l6ZSBbLVdpbnQtdG8tcG9pbnRlci1jYXN0XQo+ICAjZGVmaW5lIG9jdF9tZGlvX3dyaXRl
cSh2YWwsIGFkZHIpIHdyaXRlcSh2YWwsICh2b2lkICopYWRkcikKPiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBeCgouLi4gd2hpY2ggYWxsb3dzIHRvIGRy
b3AgdGhpcyBjYXN0IGFzIHdlbGwuCgpDYXN0cyBhcmUgZXZpbCwgYW5kIHVzdWFsbHkgYSBzaWdu
IHRoYXQgeW91J3JlIGRvaW5nIHNvbWV0aGluZyB3cm9uZy4KCkdye29ldGplLGVldGluZ31zLAoK
ICAgICAgICAgICAgICAgICAgICAgICAgR2VlcnQKCi0tIApHZWVydCBVeXR0ZXJob2V2ZW4gLS0g
VGhlcmUncyBsb3RzIG9mIExpbnV4IGJleW9uZCBpYTMyIC0tIGdlZXJ0QGxpbnV4LW02OGsub3Jn
CgpJbiBwZXJzb25hbCBjb252ZXJzYXRpb25zIHdpdGggdGVjaG5pY2FsIHBlb3BsZSwgSSBjYWxs
IG15c2VsZiBhIGhhY2tlci4gQnV0CndoZW4gSSdtIHRhbGtpbmcgdG8gam91cm5hbGlzdHMgSSBq
dXN0IHNheSAicHJvZ3JhbW1lciIgb3Igc29tZXRoaW5nIGxpa2UgdGhhdC4KICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAtLSBMaW51cyBUb3J2YWxkcwoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
