Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19A8B14458A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 20:59:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NWbtUdkx0TSIXKJN/F/OwdntxO3tGBEPAbpc7c1IfbY=; b=tMrrWYaSDmmmmu
	1jjA6QwIJRJxIsam8ECBgGx6gLLVFsvoLbVD4+tgmCWv0L0JvuJ92acxQHm2NBG+XYX+A/ePNPKNf
	/9F0vKdA8ISO9pBRXTwxaU1cu4w0sgjA0zpKfUVKzmLPhz0EC5OYHag9fQoEwfNfIvLsbrxeaYnQW
	L31r+3xaY0bai8aHFMTFzVsciJefN2ijPKOzlmZxFQPhD11dyNNb4kuoU9Qr5qGsBhw9E0GHiS1KK
	VVKlmmv/4FP23MCZIsOUkye2r1GhfTS+ioYcU3s/tn+tUIy1QT89WerxcQvbnoF6zzHP13t96ny+d
	J1WeHKMOMVu1dy/RDWGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itzgM-0000k0-5K; Tue, 21 Jan 2020 19:59:26 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itzgC-0000ja-D5
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 19:59:17 +0000
Received: by mail-ed1-f68.google.com with SMTP id v28so4252003edw.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Jan 2020 11:59:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=uhJ95Ie/Yb8Dbq3RWjp7bO5gpLNFCl4QU9krsyTd1e4=;
 b=ZeIvdJpVtnKhnp+NYEqeSMWCJw7EbzuYbxqu+bX7hn5lLYMIrud8g1NldppK38FRNK
 3sEeSYTR532iAV99k8dr1hgF/myxJ5qb2FKwZ5Tx8ig+hE/VIO/tpjdmbYbmoANMCnjX
 BVwiyam77T+R3NK7PrmouMBHgM3RdZqBkcp2sHuVLox39vcXfFI/jqejmoPTOb96dBRj
 iC23I4fHO/Q0FWxxfColruJO8X/7qL2l9d99WlNoBNV3jJK2luBBDsXN4fknFwLlMeE5
 cCe36PHKp7KNRZU2Qo4oWntmvU8KvcqZai/Y9BMTV+4fHqyfdhbR0CwHRIp3MNPmOKQ+
 AvRg==
X-Gm-Message-State: APjAAAUOpMkciErkyTh2JE5M8YqYScbj5Xe91B/5tTq9xkKTWxaNnaUh
 32afoZsjpb6Vj4+d1GIJ0DiZYHr1
X-Google-Smtp-Source: APXvYqy5oKpC5VbO57NNFXXW4t25xYdgBIF+hM+FYIhxJRDJvlHiKDyjWIptp4kr1V4nPuREunpnYg==
X-Received: by 2002:a17:906:e083:: with SMTP id
 gh3mr5866963ejb.231.1579636754353; 
 Tue, 21 Jan 2020 11:59:14 -0800 (PST)
Received: from kozik-lap ([194.230.155.229])
 by smtp.googlemail.com with ESMTPSA id f9sm1429279edr.66.2020.01.21.11.59.13
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 21 Jan 2020 11:59:13 -0800 (PST)
Date: Tue, 21 Jan 2020 20:59:11 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
Subject: Re: [PATCH] ARM: s3c24xx/rx1950: switch to atomic pwm API
Message-ID: <20200121195911.GA24380@kozik-lap>
References: <20200120193328.17007-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200120193328.17007-1-uwe@kleine-koenig.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_115916_447710_9C548B9F 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-samsung-soc@vger.kernel.org, Kukjin Kim <kgene@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-pwm@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBKYW4gMjAsIDIwMjAgYXQgMDg6MzM6MjhQTSArMDEwMCwgVXdlIEtsZWluZS1Lw7Zu
aWcgd3JvdGU6Cj4gU3RvcCB1c2luZyB0aGUgbGVnYWN5IFBXTSBBUEkgd2hpY2ggb25seSBzdGls
bCBleGlzdHMgYmVjYXVzZSB0aGVyZSBhcmUKPiBzb21lIHVzZXJzIGxlZnQuCj4gCj4gTm90ZSB0
aGlzIGNoYW5nZSBtYWtlIHVzZSBvZiB0aGUgZmFjdCB0aGF0IHRoZSB2YWx1ZSBvZiBzdHJ1Y3QK
PiBwd21fc3RhdGU6OmR1dHlfY3ljbGUgZG9lc24ndCBtYXR0ZXIgZm9yIGEgZGlzYWJsZWQgUFdN
IGFuZCBzbyBpdHMgdmFsdWUKPiBjYW4gc3RheSBjb25zdGFudCBzaW1wbGlmeWluZyB0aGUgY29k
ZSBhIGJpdC4KPiAKPiBBIHNpZGUgZWZmZWN0IG9mIHRoZSBjb252ZXJzaW9uIGlzIHRoYXQgdGhl
IHB3bSBpc24ndCBzdG9wcGVkIGluCj4gcngxOTUwX2JhY2tsaWdodF9pbml0KCkgYnkgdGhlIGNh
bGwgdG8gcHdtX2FwcGx5X2FyZ3MoKSBqdXN0IGJlZm9yZQo+IHJlZW5hYmxpbmcgaXQgd2hlbiBy
eDE5NTBfbGNkX3Bvd2VyKDEpIGlzIGNhbGxlZC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBVd2UgS2xl
aW5lLUvDtm5pZyA8dXdlQGtsZWluZS1rb2VuaWcub3JnPgo+IC0tLQo+ICBhcmNoL2FybS9tYWNo
LXMzYzI0eHgvbWFjaC1yeDE5NTAuYyB8IDE5ICsrKysrKysrKysrKy0tLS0tLS0KClRoYW5rcywg
YXBwbGllZC4KCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
