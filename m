Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AF86102B0D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 18:53:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zQYz+gTvU+2ImwZ6F4sz9nXQhdXTmt7nA6E5L6l10Vc=; b=km5XPeDsEaWSHu
	Te5Xod/5ZogvRmCZmz2ab7R2pH/PWCOsmECpJ3AfBAwsdeoDsMYzdhYw10dUUBeDkkIQeN5HI/GEd
	rS1bzsiOdx3CxhadmZAuOgF3Y/fnZwrZzNBfwFpv/n2N84hUKNmKKZiahaNao/fT238yE/576HlX7
	gkivJKCtgpnbFT/9m2asm21fS1cgO5guCp/aTw6ZOpHEQfsuM9EEg3CoWRGaoUOa14J8V7lsXim5d
	wi72Xyjz3DzMFOS2Px5AWbq3ftg9+aDHW+H9rCulFSAAgow9eEbA0KiepVsESt4YYFdquRpHp2Zn8
	j8IcLeL6PjcSpETpM4hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX7h8-0007JK-83; Tue, 19 Nov 2019 17:53:42 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX7gt-0007H1-1G
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 17:53:28 +0000
Received: by mail-wm1-x343.google.com with SMTP id j18so3073723wmk.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 Nov 2019 09:53:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rUwtSzPXTRcEUR7weY+64klnEjLlQGMUJOj+eZFoLpY=;
 b=WV2YmFq/1NqnLUrXwSeECTAhQndtc/FQ1Y0TJjLJTP7V6IATxEkFqu00exfnnXxb2/
 FG2PXwM2VCS7uY4/x8vz+mLEWUcGXFYGyL2b8nQNpgGz6ASMB3i8iQRHbDlBYvsn9iPh
 QCq3PzuReqaaJ/XbzM3GSSTIfw5X1UdXJF/hVjlGXMLPC0SYpSJWKLT6dG3bJ7GJzv47
 BTVDycl+qCcQ+n4yXOstNBOnDFAcC7X+Ny+nMnltQ2eztdjKkUKC0zgUprp6fOX2+59n
 i79L9CLOX0Pe+guZrPO1JpdFTLyMAN7v6QYssv0A/9+QRKz28Et7lJHQy2SaFi3lLLHn
 aszg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rUwtSzPXTRcEUR7weY+64klnEjLlQGMUJOj+eZFoLpY=;
 b=j6RD0PJ1qVm6+Y6Cdvus4sw8SznzhyWTZ9FsotO3hNFuC3jed02vF6y/jTnAqY0WW4
 K/jEjontShxwhSR3agyw3JyRseMJK76pLjmvz9NTGQOfbT1E0Xd89kR0TaGkfzz/SBCl
 mo0lmA251j3S97F3I3wSJKCccXciAAirH1xTsXXhoJbam1g0R5jwXgIad+KbJliknpHF
 4omUFPAkxOMuJ/VfSl0p1dlpTfX8J0nQbllqZra2y4OrXthpjRbDaVv8IXka5DaoFgA6
 4yOWL14lMefG1O8IYwhFezmd67s0tBZJGcoz9i1hf42TvXixQMiQOFB8PNFqraeyf0qT
 iiMw==
X-Gm-Message-State: APjAAAXvj8/xPJcPDY06kmFTnQNoLvlEGyJWSQSisXrMIncNyFhfG4kZ
 crLjvpbr32t7uSpanwj45JQ=
X-Google-Smtp-Source: APXvYqwRygRbzbAUfcVeS+0wJOvcRhwtVsXt8DZUDn5OP2ZJRPfaOEWt3fbHlAVyMzU6EfJZg5G/Iw==
X-Received: by 2002:a7b:c10e:: with SMTP id w14mr7624417wmi.40.1574186004594; 
 Tue, 19 Nov 2019 09:53:24 -0800 (PST)
Received: from clement-Latitude-7490.outsight.local
 (lputeaux-656-1-11-33.w82-127.abo.wanadoo.fr. [82.127.142.33])
 by smtp.gmail.com with ESMTPSA id l13sm3772618wmh.12.2019.11.19.09.53.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Nov 2019 09:53:23 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <pza@pengutronix.de>
Subject: [PATCH v7 0/8] Add support for H6 PWM
Date: Tue, 19 Nov 2019 18:53:11 +0100
Message-Id: <20191119175319.16561-1-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_095327_104645_6BF860A3 
X-CRM114-Status: GOOD (  18.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpUaGlzIGlzIGEgcmV3b3JrIG9mIEplcm5laidzIHByZXZpb3VzIHdvcmtbMV0gdGFraW5n
IGFjY291bnQgYWxsIHRoZQpwcmV2aW91cyByZW1hcmtzLgoKQmluZGluZ3MgaXMgc3RpbGwgc3Ry
aWN0IGJ1dCBwcm9iZSBpbiB0aGUgZHJpdmVyIGFyZSBub3cgb3B0aW9ubmFscy4KCklmIHNvbWVv
bmUgY291bGQgY29uZmlybSB0aGF0IHRoZSBQV00gaXMgbm90IGJyb2tlbiwgYXMgbXkgYm9hcmQK
ZG9lc24ndCBvdXRwdXQgaXQuCgpJIGRpZG4ndCBhZGQgdGhlIGFja2VkLXRhZ3MgYXMgdGhlcmUg
YXJlIGJpZyBjaGFuZ2VzLgoKVGhhbmtzLApDbMOpbWVudAoKSmVybmVqJ3MgY292ZXI6CkFsbHdp
bm5lciBINiBTb0MgaGFzIFBXTSBjb3JlIHdoaWNoIGlzIGJhc2ljYWxseSB0aGUgc2FtZSBhcyB0
aGF0IGZvdW5kCmluIEEyMCwgaXQncyBqdXN0IGRlcGVuZHMgb24gYWRkaXRpb25hbCBidXMgY2xv
Y2sgYW5kIHJlc2V0IGxpbmUuCgpUaGlzIHNlcmllcyBhZGRzIHN1cHBvcnQgZm9yIGl0IGFuZCBl
eHRlbmRzIFBXTSBkcml2ZXIgZnVuY3Rpb25hbGl0eSBpbgphIHdheSB0aGF0IGl0J3Mgbm93IHBv
c3NpYmxlIHRvIGJ5cGFzcyB3aG9sZSBjb3JlIGFuZCBvdXRwdXQgUFdNIHNvdXJjZQpjbG9jayBk
aXJlY3RseSBhcyBhIFBXTSBzaWduYWwuIFRoaXMgZnVuY3Rpb25hbGl0eSBpcyBuZWVkZWQgYnkg
QUMyMDAKY2hpcCwgd2hpY2ggaXMgYnVuZGxlZCBpbiBzYW1lIHBoeXNpY2FsIHBhY2thZ2UgYXMg
SDYgU29DLCB0byBzZXJ2ZSBhcyBhCmNsb2NrIHNvdXJjZSBvZiAyNCBNSHouIEFDMjAwIGNsb2Nr
IGlucHV0IHBpbiBpcyBib25kZWQgaW50ZXJuYWxseSB0bwp0aGUgc2Vjb25kIFBXTSBjaGFubmVs
LgoKSSB3b3VsZCBiZSBncmF0ZWZ1bCBpZiBhbnlvbmUgY2FuIHRlc3QgdGhpcyBwYXRjaCBzZXJp
ZXMgZm9yIGFueSBraW5kIG9mCnJlZ3Jlc3Npb24gb24gb3RoZXIgU29Dcy4KClsxXTogaHR0cHM6
Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9jb3Zlci8xMTA2MTczNy8KCkNoYW5nZXMgaW4gdjc6CiAt
IEZpeCBpbmRlbnQgaW4gWWFtbCBiaW5kaW5ncwoKQ2hhbmdlcyBpbiB2NjoKIC0gVXBkYXRlIGdp
dCBjb21taXQgbG9nCiAtIERpc3Rpbmd1aXNoIGVycm9yIG1lc3NhZ2UgCgpDaGFuZ2VzIGluIHY1
OgogLSBNb3ZlIGJ5cGFzcyBjYWxjdWxhdGlvbiB0byBwd21fY2FsY3VsYXRlCiAtIFNwbGl0IG1v
ZF9jbG9jayBmYWxsYmFjayBmcm9tIGJ1c19jbGsgcHJvYmUgICAgCiAtIFVwZGF0ZSBjb21tZW50
CiAtIE1vdmUgbXkgU29CIGFmdGVyIGFja2VkLWJ5L3Jldmlld2VkLWJ5CgpDaGFuZ2VzIGluIHY0
OgogLSBpdGVtIGRlc2NyaXB0aW9uIGluIGNvcnJlY3Qgb3JkZXIgYW5kIGFkZCBhIGJsYW5rIGxp
bmUKIC0gdXNlICVwZSBmb3IgcHJpbnRpbmcgUFRSX0VSUgogLSBkb24ndCBwcmludCBlcnJvciB3
aGVuIGl0J3MgYW4gRVBST0JFX0RFRkVSCiAtIGNoYW5nZSBvdXRwdXQgY2xvY2sgYnlwYXNzIGZv
cm11bGEgdG8gbWF0Y2ggUFdNIHBvbGljeQoKQ2hhbmdlcyBpbiB2MzoKIC0gRG9jdW1lbnRhdGlv
biB1cGRhdGUgdG8gYWxsb3cgb25lIGNsb2NrIHdpdGhvdXQgbmFtZQogLSBDaGFuZ2UgcmVzZXQg
b3B0aW9uYWwgdG8gc2hhcmVkCiAtIElmIHJlc2V0IHByb2JlIGZhaWxlZCByZXR1cm4gYW4gZXJy
b3IKIC0gUmVtb3ZlIG9sZCBjbG9jayBwcm9iZQogLSBVcGRhdGUgYnlwYXNzIGVuYWJsZWQgZm9y
bXVsYQoKQ2hhbmdlcyBpbiB2MjoKIC0gUmVtb3ZlIGFsbE9mIGluIERvY3VtZW50YXRpb24KIC0g
QWRkIEg2IGV4YW1wbGUgaW4gRG9jdW1lbnRhdGlvbgogLSBDaGFuZ2UgY2xvY2sgbmFtZSBmcm9t
ICJwd20iIHRvICJtb2QiCiAtIENoYW5nZSByZXNldCBxdWlyayB0byBvcHRpb25hbCBwcm9iZQog
LSBDaGFuZ2UgYnVzX2Nsb2NrIHF1aXJrIHRvIG9wdGlvbmFsIHByb2JlCiAtIEFkZCBsaW1pdGF0
aW9uIGNvbW1lbnQgYWJvdXQgbW9kX2Nsa19vdXRwdXQKIC0gQWRkIHF1aXJrIGZvciBtb2RfY2xr
X291dHB1dAogLSBDaGFuZ2UgYnlwYXNzIGZvcm11bGEKCkNsw6ltZW50IFDDqXJvbiAoMik6CiAg
cHdtOiBzdW40aTogUHJlZmVyICJtb2QiIGNsb2NrIHRvIHVubmFtZWQKICBbRE8gTk9UIE1FUkdF
XSBhcm02NDogYWxsd2lubmVyOiBoNjogZW5hYmxlIEJlZWxpbmsgR1MxIFBXTQoKSmVybmVqIFNr
cmFiZWMgKDYpOgogIGR0LWJpbmRpbmdzOiBwd206IGFsbHdpbm5lcjogQWRkIEg2IFBXTSBkZXNj
cmlwdGlvbgogIHB3bTogc3VuNGk6IEFkZCBhbiBvcHRpb25hbCBwcm9iZSBmb3IgcmVzZXQgbGlu
ZQogIHB3bTogc3VuNGk6IEFkZCBhbiBvcHRpb25hbCBwcm9iZSBmb3IgYnVzIGNsb2NrCiAgcHdt
OiBzdW40aTogQWRkIHN1cHBvcnQgdG8gb3V0cHV0IHNvdXJjZSBjbG9jayBkaXJlY3RseQogIHB3
bTogc3VuNGk6IEFkZCBzdXBwb3J0IGZvciBINiBQV00KICBhcm02NDogZHRzOiBhbGx3aW5uZXI6
IGg2OiBBZGQgUFdNIG5vZGUKCiAuLi4vYmluZGluZ3MvcHdtL2FsbHdpbm5lcixzdW40aS1hMTAt
cHdtLnlhbWwgfCAgNDggKysrKysKIC4uLi9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1iZWVsaW5r
LWdzMS5kdHMgICB8ICAgNCArCiBhcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGkt
aDYuZHRzaSAgfCAgMTAgKwogZHJpdmVycy9wd20vcHdtLXN1bjRpLmMgICAgICAgICAgICAgICAg
ICAgICAgIHwgMTg1ICsrKysrKysrKysrKysrKy0tLQogNCBmaWxlcyBjaGFuZ2VkLCAyMTUgaW5z
ZXJ0aW9ucygrKSwgMzIgZGVsZXRpb25zKC0pCgotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
