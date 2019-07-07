Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D78A614FD
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  7 Jul 2019 15:22:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fbY4IF2YaYoYTR+7rQiL3bI6VtTCfVWCHg468mABfqE=; b=oMlVvCCsu4bfTn
	NQrS/egkBGmK/M48A6bhwRiGYACY4xSF1tP0w+a/K3eZga0V0aI1w/3iQnNtAXO2LHnwwH2j36Xtq
	5ZX6N73+2xoJ7KaIMT+MtGdCUBfn1pduF0GJyMNP2MEX84daSb2nBF17cBPNEuVyin2rrsVHhhlFO
	JUTA30KczijrmnlfgjU7Jq6Mu/qePAmbue+W504BAZsZAqCQogKGPkR99f7Ecq7KmlllAu9+Ukzlt
	nUNQnh0UL/wGslqfT1buKWO8e0xG7WVONX3AItQY2UqtUvMgPeFclrDBdN1bcyjZIWMs+uOjJNmfB
	Bk3M5pcR+ZsLisMlsqbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hk77s-00028u-Hb; Sun, 07 Jul 2019 13:22:44 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hk77i-00028R-AB
 for linux-arm-kernel@lists.infradead.org; Sun, 07 Jul 2019 13:22:36 +0000
Received: by mail-wm1-x341.google.com with SMTP id z23so13813426wma.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 07 Jul 2019 06:22:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :content-transfer-encoding:user-agent;
 bh=maw3v3SsxZvP2hs3eSVhueNHJP3NzyEzBgv+qOl/tFw=;
 b=FmLySaHSR8hDhMp0k/g/JHe8uE5E02ORynW/W9hbG4ZNmjzSpI6GCDwR0qaMThvQkl
 gvxZ8Tj0dmUyrGiE84lJFCOm6s7uIE4G5kSS6cKT7dr9Ytlm7zX/M5Rb5O5/qFRZpLEY
 /aX6ARcf3utafuCjDjbLK26GyDPnAY4t9jTYBLk0MEm0niGikRtm81Ve2Zcj6WfXKRyG
 w3oOHtYzlaE3SR3kbZdgshYvec0WFqNZrjQa/FjwCeJG1VZ3ro3X7rDMZN2VMcX5WCEV
 masYn9Zf7f6QzIwHIOO0Kl5hZyx42Cj2R29+xCWl9h6YJZXPop7mEANLG5Jdnk6P3bEW
 H6DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:content-transfer-encoding:user-agent;
 bh=maw3v3SsxZvP2hs3eSVhueNHJP3NzyEzBgv+qOl/tFw=;
 b=s2t1/DnstcBM5UzEPAbl2Ugy0knUPfg75LHqhLfgdxhVoOA9rwt8GkhlMUjAOcK6Xy
 eOriNDHdzOsPSorj8yZDxVj6CWl28gWANoLPV/2iv7EEC6uHqHWpvsJMLq5U4e0rBCAk
 DlpcGZtnJm6T0XJ7Qlr6KaVBYkrAfaI8j3yOc8ucffhhAZ3lbzkvR0Vs37M8PA2w8+h4
 /juhr3fh+60EFCcm+Lqs/XrZsiPuDUFuvR4YU82mGqhQx28c7XvvbhlHsGBdmplkQ/Ww
 smrGWiLMHvXP9DJi5zS2Nyj1KVyc24rUMU4MH4RPWSdepWNNjfZYtYWVmpPML2tEmqHz
 CO4A==
X-Gm-Message-State: APjAAAXnz7eC2frWhL8mMxz2UvH/JGdl9gFcQ8xNyrJ4hC4uqRIb61Bi
 IG3MIESzX/5sLoSRgVpaAoA=
X-Google-Smtp-Source: APXvYqzIXdSfGGdUQKO93qhQl5ThP4h5LXbw+AQ5El8H6F2i1WPUTm8LvYOfXvmYXKWpS2pcPIfQ3A==
X-Received: by 2002:a1c:3cc4:: with SMTP id j187mr11579030wma.36.1562505752416; 
 Sun, 07 Jul 2019 06:22:32 -0700 (PDT)
Received: from arks.localdomain (179.red-83-58-138.dynamicip.rima-tde.net.
 [83.58.138.179])
 by smtp.gmail.com with ESMTPSA id a12sm13652465wrr.70.2019.07.07.06.22.30
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 07 Jul 2019 06:22:31 -0700 (PDT)
Date: Sun, 7 Jul 2019 15:22:23 +0200
From: Aleix Roca Nonell <kernelrocks@gmail.com>
To: Andreas =?utf-8?Q?F=C3=A4rber?= <afaerber@suse.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <marc.zyngier@arm.com>
Subject: [PATCH 0/6] Add Banana Pi BPI-W2 basic support
Message-ID: <20190707132223.GA13340@arks.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190707_062234_380748_0822C7DE 
X-CRM114-Status: GOOD (  16.37  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kernelrocks[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Matthias Brugger <matthias.bgg@gmail.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBwYXRjaCBzZXJpZXMgYWRkcyBtaW5pbXVtIHN1cHBvcnQgdG8gYm9vdCBhIEJhbmFuYSBQ
aSBCUEktVzIuIFRoaXMKYm9hcmQgc2VyaWFsIGludGVyZmFjZSBpcyBtdXhlZCB0aHJvdWdoIGEg
Y3VzdG9tIFJlYWx0ZWsgZHJpdmVyIG5vdApjdXJyZW50bHkgaW4gbWFpbmxpbmUuIFdpdGhvdXQg
dGhlIGRyaXZlciwgaXQgaXMgb25seSBwb3NzaWJsZSB0bwppbml0aWFsaXplIGEgYm9vdGNvbnNv
bGUsIGJ1dCBpbml0IGNhbm5vdCBiZSBydW4uIFRoZSBkYXRhc2hlZXQgb2YgdGhlCmJvYXJkJ3Mg
UlREMTI5NiBTb0MgaXMgbm90IHB1YmxpY2x5IGF2YWlsYWJsZSBhbmQgdGhlIHByb2NlZHVyZSB0
bwppbnRlcmZhY2UgdGhlIGludGVycnVwdCBjb250cm9sbGVyIHJlZ2lzdGVycyBpcyBub3QgY29t
cGxldGVseSBrbm93bgp5ZXQsIGhvd2V2ZXIsIGl0IHdvcmtzLgoKVGhpcyBwYXRjaCBpcyBiYXNl
ZCBvbiB0aGUgb2ZmaWNpYWwgQlBJLVcyIGRvd25zdHJlYW0ga2VybmVsIGRyaXZlciBbMV0KYW5k
IHRoZSBsYXN0IGF0dGVtcHQgb2YgQW5kcmVhcyBGw6RyYmVyIFsyXSB0byBzdXBwb3J0IHN1Y2gg
ZHJpdmVyLgoKUGxlYXNlLCBub3RlIHRoYXQgdGhlIGJvYXJkIHN0aWxsIHJlcXVpcmVzIGEgc2xp
Z2h0bHkgbW9kaWZpZWQgdmVyc2lvbgpvZiB0aGUgZG93bnN0cmVhbWVkIFJlYWx0ZWsgVS1Cb290
IHRvIGxhdW5jaCB0aGUgTGludXggS2VybmVsLCB3aGljaAplc3NlbnRpYWxseSByZW1vdmVzIHRo
ZSBuZWVkIGZvciBzb21lIGR0cyBub2RlcyBub3QgaW5jbHVkZWQgaW4gdGhpcwpwYXRjaCBhbmQg
cmVhbGxvY2F0ZXMgdS1ib290IGJlZm9yZSBsb2FkaW5nIHRoZSBrZXJuZWwgdG8gYXZvaWQKb3Zl
cnJpZGluZyBVLUJvb3QgY29kZS4KClsxXSAtIGh0dHBzOi8vZ2l0aHViLmNvbS9CUEktU0lOT1ZP
SVAvQlBJLVcyLWJzcApbMl0gLSBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3BhdGNoLzEw
MDExODkxCgpBbGVpeCBSb2NhIE5vbmVsbCAoNik6CiAgZHQtYmluZGluZ3M6IGludGVycnVwdC1j
b250cm9sbGVyOiBEb2N1bWVudCBSVEQxMjl4CiAgaXJxY2hpcDogQWRkIFJlYWx0ZWsgUlREMTI5
eCBpbnRjIGRyaXZlcgogIGFybTY0OiBkdHM6IHJlYWx0ZWs6IE1vdmUgcnRkMTI5NSBtZW1yZXNl
cnZlIGFyZWFzIGZyb20gdGhlIGdlbmVyaWMKICAgIHJ0ZDEyOXggdG8gaXRzIHNwZWNpZmljIGR0
c2kKICBhcm02NDogZHRzOiByZWFsdGVrOiBBZGQgcmVhbHRlayBpbnRjIHRvIFJURDEyOXgKICBk
dC1iaW5kaW5nczogYXJtOiBEb2N1bWVudCBSVEQxMjk2CiAgYXJtNjQ6IGR0czogcmVhbHRlazog
QWRkIGJwaS13MiBib2FyZCBzdXBwb3J0IGFuZCBpdHMgUlREMTI5NiBTb0MKCiAuLi4vZGV2aWNl
dHJlZS9iaW5kaW5ncy9hcm0vcmVhbHRlay50eHQgICAgICAgfCAgMTMgKwogLi4uL3JlYWx0ZWss
cnRkMTI5eC1pbnRjLnR4dCAgICAgICAgICAgICAgICAgIHwgIDI0ICsrCiBhcmNoL2FybTY0L2Jv
b3QvZHRzL3JlYWx0ZWsvTWFrZWZpbGUgICAgICAgICAgfCAgIDEgKwogYXJjaC9hcm02NC9ib290
L2R0cy9yZWFsdGVrL3J0ZDEyOTUuZHRzaSAgICAgIHwgICAzICsKIC4uLi9kdHMvcmVhbHRlay9y
dGQxMjk2LWJhbmFuYXBpLWJwaS13Mi5kdHMgICB8ICAyNyArKwogYXJjaC9hcm02NC9ib290L2R0
cy9yZWFsdGVrL3J0ZDEyOTYuZHRzaSAgICAgIHwgIDc3ICsrKysKIGFyY2gvYXJtNjQvYm9vdC9k
dHMvcmVhbHRlay9ydGQxMjl4LmR0c2kgICAgICB8ICAxMiArLQogZHJpdmVycy9pcnFjaGlwL01h
a2VmaWxlICAgICAgICAgICAgICAgICAgICAgIHwgICAxICsKIGRyaXZlcnMvaXJxY2hpcC9pcnEt
cnRkMTI5eC5jICAgICAgICAgICAgICAgICB8IDM3MSArKysrKysrKysrKysrKysrKysKIDkgZmls
ZXMgY2hhbmdlZCwgNTI3IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9k
ZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2ludGVycnVwdC1jb250
cm9sbGVyL3JlYWx0ZWsscnRkMTI5eC1pbnRjLnR4dAogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gv
YXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjk2LWJhbmFuYXBpLWJwaS13Mi5kdHMKIGNyZWF0
ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5Ni5kdHNpCiBj
cmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9pcnFjaGlwL2lycS1ydGQxMjl4LmMKCi0tIAoyLjIx
LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
