Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B6D987019
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 05:13:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QLO6TVmYyoIA34BZtmRmZZZxeqxe1ZZ2KfCmNHnw5rs=; b=Dfd3jsOy3TYY5j
	/NO42GVUKSTWj46ICO+1Gh5x+ZCSuEThI7GenVxyygZpKaWrTqlsMl96xTsE25k0gVbVG8VugMXe6
	ILLZRbMelOYdxs9TJIu6ZRWtdLY5ViKxEIBnW/VNOZB8xMdd9tEBRVJ5o8Q9RHlow9yvgu70DJKy4
	/5W0xtHCdJ1mZAChZ0RGXEDOEhCf8mG1R5W2h0xkdlYc7o7uAA1GngeASnek7u41sQ1rZ3UGIzeCf
	nQLdnw5NDbBW/BQmdBIGK7QpZBfm90erEtofj9mnGUBKHxHakipo/4o5/IYGYkXgPy/XutQbal9w1
	z1ppInixVP9CtH9nxSVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvvLA-0007EC-Cw; Fri, 09 Aug 2019 03:13:16 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvvKv-0007DG-Qe
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 03:13:04 +0000
Received: by mail-wr1-f67.google.com with SMTP id q12so6574681wrj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 20:13:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uonr7JGvdCWxCXj+k6k7pRPYOSgXIk19KhW6G51a7QQ=;
 b=sTFmoBBjm76dEqEX4qmYLRuKDPOVC5fR7Jf80OXIO6wt36QEPdsbfvJVIGWZlp4MqP
 xN9P0joWuctNnhfU0x0m1x95VTigDFplP+bGxOccURxJ9Gd2hIIQeCCcnhjrfhCnXr3h
 5O5a0/EF1vMGFlIu1tX+mNylftKYIXRWtwRfjfr/u3PxZnruiJqvUUku80phqQ/WpeNg
 6OHP7BIEJPaac7dEaaMfxvcZ8sR2He7bcU3n8RzYsCb2DjahAZJiVo3DQiCJ3nPZh/lm
 LddZv7MNlZueyVu85jnKnX1rw0CKtLU/UQBW+9aGVpJIHZNbjCv0bIj4dEMBTPVKs9bX
 uMBQ==
X-Gm-Message-State: APjAAAVnptAnc/1aIcTISL17jYNMRp1yzBj9PZA3pf4SaFUbnOktzCj+
 tcYqTsBYPGieD0OiKqP5Cb8=
X-Google-Smtp-Source: APXvYqxTo5Q9T2mOXycuvfbxR4lb1X0KpEpQKQKLAhovI4Yky74FgaZTgY7LTdrzkcmNh0U1VAJxjQ==
X-Received: by 2002:adf:fe10:: with SMTP id n16mr20512822wrr.92.1565320380703; 
 Thu, 08 Aug 2019 20:13:00 -0700 (PDT)
Received: from tfsielt31850.garage.tyco.com ([79.97.20.138])
 by smtp.gmail.com with ESMTPSA id l14sm119815wrn.42.2019.08.08.20.12.59
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 08 Aug 2019 20:13:00 -0700 (PDT)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: imx: stop adjusting ar8031 phy tx delay
Date: Fri,  9 Aug 2019 04:12:56 +0100
Message-Id: <20190809031256.3594-1-git@andred.net>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_201301_860148_07D94D81 
X-CRM114-Status: GOOD (  14.53  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andre.draszik[at]gmail.com)
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>,
 Sascha Hauer <s.hauer@pengutronix.de>, Russell King <linux@armlinux.org.uk>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shawn Guo <shawnguo@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UmVjZW50IGNoYW5nZXMgdG8gdGhlIEF0aGVyb3MgYXQ4MDN4IGRyaXZlciBjYXVzZQp0aGUgYXBw
cm9hY2ggdGFrZW4gaGVyZSB0byBzdG9wIHdvcmtpbmcgYmVjYXVzZQpjb21taXQgNmQ0Y2QwNDFm
MGFmCigibmV0OiBwaHk6IGF0ODAzeDogZGlzYWJsZSBkZWxheSBvbmx5IGZvciBSR01JSSBtb2Rl
IikKYW5kIGNvbW1pdCBjZDI4ZDFkNmU1MmUKKCJuZXQ6IHBoeTogYXQ4MDN4OiBEaXNhYmxlIHBo
eSBkZWxheSBmb3IgUkdNSUkgbW9kZSIpCmZpeCB0aGUgQVI4MDMxIGRyaXZlciB0byBjb25maWd1
cmUgdGhlIHBoeSdzIChSWC9UWCkKZGVsYXlzIGFzIHBlciB0aGUgJ3BoeS1tb2RlJyBpbiB0aGUg
ZGV2aWNlIHRyZWUuCgpJbiBwYXJ0aWN1bGFyLCB0aGUgcGh5IHR4IChhbmQgcngpIGRlbGF5cyBh
cmUgdXBkYXRlZAphZ2FpbiBhcyBwZXIgdGhlICdwaHktbW9kZScgKmFmdGVyKiB0aGUgY29kZSBp
biBoZXJlCnJ1bnMuCgpUaGluZ3Mgd29ya2VkIGJlZm9yZSBhYm92ZSBjb21taXRzLCBiZWNhdXNl
IHRoZSBBUjgwMzEKY29tZXMgb3V0IG9mIHJlc2V0IHdpdGggUlggZGVsYXkgZW5hYmxlZCwgYW5k
IHRoZQphdDgwM3ggZHJpdmVyIGRpZG4ndCB0b3VjaCB0aGUgZGVsYXkgY29uZmlndXJhdGlvbiBh
dAphbGwgd2hlbiAicmdtaWkiIG1vZGUgd2FzIHNlbGVjdGVkLgoKSXQgYXBwZWFycyB0aGUgY29k
ZSBpbiBoZXJlIHRyaWVzIHRvIG1ha2UgZGV2aWNlCnRyZWVzIHdvcmsgdGhhdCBpbmNvcnJlY3Rs
eSBzcGVjaWZ5ICJyZ21paSIsIGJ1dAp0aGF0IGNhbid0IHdvcmsgYW55IG1vcmUgYW5kIGl0IGlz
IGltcGVyYXRpdmUgc2luY2UKYWJvdmUgY29tbWl0cyB0byBoYXZlIHRoZSBwaHktbW9kZSBjb25m
aWd1cmVkCmNvcnJlY3RseSBpbiB0aGUgZGV2aWNlIHRyZWUuCgpJIHN1c3BlY3QgdGhlcmUgYXJl
IGEgZmV3IGlteDdkIGJhc2VkIGJvYXJkcyB1c2luZwp0aGUgYXI4MDMxIHBoeSBhbmQgcGh5LW1v
ZGUgPSAicmdtaWkiLCBidXQgZ2l2ZW4gSQpkb24ndCBrbm93IHdoaWNoIG9uZXMgZXhhY3RseSwg
SSBhbSBub3QgaW4gYQpwb3NpdGlvbiB0byB1cGRhdGUgdGhlIHJlc3BlY3RpdmUgZGV2aWNlIHRy
ZWVzLgoKSGVuY2UgdGhpcyBwYXRjaCBpcyBzaW1wbHkgcmVtb3ZpbmcgdGhlIHN1cGVyZmx1b3Vz
CmNvZGUgZnJvbSB0aGUgaW14N2QgaW5pdGlhbGlzYXRpb24uIEFuIGFsdGVybmF0aXZlCmNvdWxk
IGJlIHRvIGFkZCBhIHdhcm5pbmcgaW5zdGVhZCwgYnV0IHRoYXQgd291bGQKcGVuYWxpemUgYWxs
IGJvYXJkcyB0aGF0IGhhdmUgYmVlbiB1cGRhdGVkIGFscmVhZHkuCgpTaWduZWQtb2ZmLWJ5OiBB
bmRyw6kgRHJhc3ppayA8Z2l0QGFuZHJlZC5uZXQ+CkNDOiBSdXNzZWxsIEtpbmcgPGxpbnV4QGFy
bWxpbnV4Lm9yZy51az4KQ0M6IFNoYXduIEd1byA8c2hhd25ndW9Aa2VybmVsLm9yZz4KQ0M6IFNh
c2NoYSBIYXVlciA8cy5oYXVlckBwZW5ndXRyb25peC5kZT4KQ0M6IFBlbmd1dHJvbml4IEtlcm5l
bCBUZWFtIDxrZXJuZWxAcGVuZ3V0cm9uaXguZGU+CkNDOiBGYWJpbyBFc3RldmFtIDxmZXN0ZXZh
bUBnbWFpbC5jb20+CkNDOiBOWFAgTGludXggVGVhbSA8bGludXgtaW14QG54cC5jb20+CkNDOiBL
YXRlIFN0ZXdhcnQgPGtzdGV3YXJ0QGxpbnV4Zm91bmRhdGlvbi5vcmc+CkNDOiBHcmVnIEtyb2Fo
LUhhcnRtYW4gPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPgpDQzogVGhvbWFzIEdsZWl4bmVy
IDx0Z2x4QGxpbnV0cm9uaXguZGU+CkNDOiBMZW9uYXJkIENyZXN0ZXogPGxlb25hcmQuY3Jlc3Rl
ekBueHAuY29tPgpDQzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCi0tLQog
YXJjaC9hcm0vbWFjaC1pbXgvbWFjaC1pbXg3ZC5jIHwgNiAtLS0tLS0KIDEgZmlsZSBjaGFuZ2Vk
LCA2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL21hY2gtaW14L21hY2gtaW14
N2QuYyBiL2FyY2gvYXJtL21hY2gtaW14L21hY2gtaW14N2QuYwppbmRleCA5NTcxMzQ1MDU5MWEu
LmViYjI3NTkyYTlmNyAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vbWFjaC1pbXgvbWFjaC1pbXg3ZC5j
CisrKyBiL2FyY2gvYXJtL21hY2gtaW14L21hY2gtaW14N2QuYwpAQCAtMzAsMTIgKzMwLDYgQEAg
c3RhdGljIGludCBhcjgwMzFfcGh5X2ZpeHVwKHN0cnVjdCBwaHlfZGV2aWNlICpkZXYpCiAJdmFs
ICY9IH4oMHgxIDw8IDgpOwogCXBoeV93cml0ZShkZXYsIDB4ZSwgdmFsKTsKIAotCS8qIGludHJv
ZHVjZSB0eCBjbG9jayBkZWxheSAqLwotCXBoeV93cml0ZShkZXYsIDB4MWQsIDB4NSk7Ci0JdmFs
ID0gcGh5X3JlYWQoZGV2LCAweDFlKTsKLQl2YWwgfD0gMHgwMTAwOwotCXBoeV93cml0ZShkZXYs
IDB4MWUsIHZhbCk7Ci0KIAlyZXR1cm4gMDsKIH0KIAotLSAKMi4yMC4xCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
