Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1732B11F77F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 12:50:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s76kvSR+uzruchl9W2GAMI4SkF1RPL0iczM/VXJWHxs=; b=BvVAyGaSe5eNAW
	bJ/JtaGS8bcKJ8SE1A33G0x6jA/DJdGO/f+iC64e8Od+0TkD8V1eHljeGeY7EtFhFv5W0IaNqvtFp
	Ip7bgdTExy9k2Co3q7LmNyLQTOELS4ZI0HuDCcOzpMvRqwx5I5OQ85QBy3JGq2hRmLiRNZe8AEQYO
	N1KYEam+i+sR6PIOjFiOBWlI9klYAyJauVRFyOrvIEJGnmXVGKqaP32e1/KUiqSuCkRsY7eUgYi0d
	9Z1oyzu3BdG9eWTLMNKWGGXEp42O4A0VBs2E6ALFeb0K2ERLb+8fq6HpGxVNEOAvsRQA5ZrrpFBYb
	R+cFSK5+Xp817a5X2W6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igSQI-0007m7-Kt; Sun, 15 Dec 2019 11:50:54 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igSQA-0007lU-Tq
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Dec 2019 11:50:48 +0000
Received: by mail-ed1-f68.google.com with SMTP id r21so2781558edq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Dec 2019 03:50:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=VQb8AJk5LNTjc5T1l/6wnDNHTC2CJyoRZWm9i8TCC6Y=;
 b=Tw6H5Ua+armCokwhagzIxi1PT3fgkzysB93KMyxM6UDDxhY2nYaubEz20I8G4sYbQF
 xB0SMBkxhxnIua0VCPgD3hsP9P9EcZ+gNM9aMavMPOG4tEYq7+fuu91HrbqqzUjTILiJ
 XAKYNIF0Dqm9dQW/fLpbWjPjFsxm7CYVtxOdOYPVLTOuguxxUzs4isWRbjyPObb16vda
 0uUSTC6MtBj/OwZjKNIHztihVOzU+Ud4MN7V4fn0SDs8TTQjt4S7iqRqYkXiEqsYaFiv
 2k7T4P9gIl71eF1rH/d5UUCq483RgdrFCxstgYAU1YLq6WSLwrMLk1Nqz8hJGMFffpoB
 fM4A==
X-Gm-Message-State: APjAAAXWYTbKuEFSXU+nRbZah9GztVidnqahaX/4Smdi8WCDIRvvsc/e
 qHWOoTQykBhjuAUDONqPFCw=
X-Google-Smtp-Source: APXvYqySGZN88GuNZI3q/4jIa46RYAeOm8r3e/4RoLEa9a1DPs6w4iZdHpCADlYueTiK1rOSy2zyGw==
X-Received: by 2002:a17:906:229b:: with SMTP id
 p27mr27526719eja.21.1576410643077; 
 Sun, 15 Dec 2019 03:50:43 -0800 (PST)
Received: from kozik-lap ([194.230.155.234])
 by smtp.googlemail.com with ESMTPSA id bo13sm1007730ejb.5.2019.12.15.03.50.41
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 15 Dec 2019 03:50:41 -0800 (PST)
Date: Sun, 15 Dec 2019 12:50:39 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Tomasz Figa <tomasz.figa@gmail.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] pinctrl: samsung: Fix missing OF and GPIOLIB dependency
 on S3C24xx and S3C64xx
Message-ID: <20191215115039.GA30973@kozik-lap>
References: <1576221873-28738-1-git-send-email-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1576221873-28738-1-git-send-email-krzk@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_035046_962979_3FB52919 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Chen Zhou <chenzhou10@huawei.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBEZWMgMTMsIDIwMTkgYXQgMDg6MjQ6MzNBTSArMDEwMCwgS3J6eXN6dG9mIEtvemxv
d3NraSB3cm90ZToKPiBBbGwgU2Ftc3VuZyBwaW5jdHJsIGRyaXZlcnMgc2VsZWN0IGNvbW1vbiBw
YXJ0IC0gUElOQ1RSTF9TQU1TVU5HIHdoaWNoIHVzZXMKPiBib3RoIE9GIGFuZCBHUElPTElCIGlu
c2lkZS4gIEhvd2V2ZXIgb25seSBFeHlub3MgZHJpdmVycyBkZXBlbmQgb24gdGhlc2UsCj4gdGhl
cmVmb3JlIGFmdGVyIGVuYWJsaW5nIENPTVBJTEVfVEVTVCwgb24geDg2XzY0IGJ1aWxkIG9mIFMz
QzY0eHggZHJpdmVyCj4gZmFpbGVkOgo+IAo+ICAgICBkcml2ZXJzL3BpbmN0cmwvc2Ftc3VuZy9w
aW5jdHJsLXNhbXN1bmcuYzogSW4gZnVuY3Rpb24g4oCYc2Ftc3VuZ19ncGlvbGliX3JlZ2lzdGVy
4oCZOgo+ICAgICBkcml2ZXJzL3BpbmN0cmwvc2Ftc3VuZy9waW5jdHJsLXNhbXN1bmcuYzo5Njk6
NTogZXJyb3I6IOKAmHN0cnVjdCBncGlvX2NoaXDigJkgaGFzIG5vIG1lbWJlciBuYW1lZCDigJhv
Zl9ub2Rl4oCZCj4gICAgICAgIGdjLT5vZl9ub2RlID0gYmFuay0+b2Zfbm9kZTsKPiAgICAgICAg
ICBeCj4gCj4gUmV3b3JrIHRoZSBkZXBlbmRlbmNpZXMgc28gYWxsIFNhbXN1bmcgZHJpdmVycyBh
bmQgY29tbW9uCj4gUElOQ1RSTF9TQU1TVU5HIHBhcnQgZGVwZW5kIG9uIE9GX0dQSU8gKHdoaWNo
IGlzIGRlZmF1bHQgeWVzIGlmIEdQSU9MSUIKPiBhbmQgT0YgYXJlIGVuYWJsZWQpLgo+IAo+IFJl
cG9ydGVkLWJ5OiBDaGVuIFpob3UgPGNoZW56aG91MTBAaHVhd2VpLmNvbT4KPiBTaWduZWQtb2Zm
LWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+Cj4gLS0tCj4gIGRyaXZl
cnMvcGluY3RybC9zYW1zdW5nL0tjb25maWcgfCA2ICsrKystLQoKQXBwbGllZC4KCkJlc3QgcmVn
YXJkcywKS3J6eXN6dG9mCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
