Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 014D2108455
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 Nov 2019 18:30:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HytQkdBIoq5Y0yV0mZQmUsbrel1E4c+VTDsq9CG9Oek=; b=Xobyrs86Ftq7Vu
	56C0IAlyffk7exR7ctSTG0UMXqkmRSTkIQYcD5iyRgp9VFSABtOFYI6vfykudoBEdKwtT6+LHlwMX
	0CzqvQVFmrMsXPF91QvXx9ZexIefldTvXuF48lnmtzahlorw27dhn48ly0DdmtRpMbBNMOV7zEJU7
	/nNPX2eqnfsF/DQpU6DIctVN6BerpomOMX4W8GDzwdGC/vpi6AV/+f+OXrlx7jomHg90sQHpHsaih
	I6zbYQzWspr2JwjVIGmKM2jTw0bqAeGlJomip8greIlCyPwdRCtXXF+KYgVTlYXAAfAeA8wLr0pPs
	uzs1ykZrxYlXXji9H/Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYviB-0004tZ-Q8; Sun, 24 Nov 2019 17:30:15 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYvhy-0004Zp-6I
 for linux-arm-kernel@lists.infradead.org; Sun, 24 Nov 2019 17:30:03 +0000
Received: by mail-wr1-x444.google.com with SMTP id b18so14667501wrj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 24 Nov 2019 09:30:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uGgPipfEFZWFwRwOJjgrASaTd0TQYkmoA4Tjo4oBFUc=;
 b=vND+AQHeVrhINFZ4UDVHu58t/f+qBqUvbP7TqVB3/0goOOJCe8I2oR7GT1/p+RN5/E
 WxN2vQ9j0KfPfEYNuAPQT+kTxt6FE2XTlFQJLoH+FYwMyzX7bffYruhqjklwBb+arxjw
 KIW7ED5yJnXpGr5l3MX8b9v7xm4I4iwMtm1tw24mY4FoIk2ezPzNJ8s65Kz8iHRBcflm
 QbD/DCVmTfkob2TTDwsGfi4dBcoq7TOi2vwYgu1aO5sp1OaHiz15B62BK/PMVugLz15K
 zHo/qk/WgWPiG3Yc10JGL153B/mda+vShSnfzFKOOer5XG0NPWcq4+trXvs8yP/6UfmY
 jc5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uGgPipfEFZWFwRwOJjgrASaTd0TQYkmoA4Tjo4oBFUc=;
 b=Sq6qvGPZbAo6sEh+ddP1T2mtkQ9E6bCpBXkwsR87AH4nO2z8H+ACa1fL1pK4CQAcE9
 j73Nlj61d9Nx1P1C/Pe9RXrHc6au5x2E2aE9Ego1j1FY0N6qtQ3tRyCmvQiy29uwkFYT
 ip5yKdZACHAEA0aEdd3zK8D9uV03jzyf17/3RBheT9dvs1oINpISu8IyPYjUh18QLgKZ
 3o1jlAMbCxbQnQGyOiQLyrKy4qT0yvr8qnXE3FFHE9TduKYcibSpq83MBAWgRtBtVvOX
 3JrCCgRgOI74HHspDLM0OAZzc/Dfj+mhD2DqMXcpUIxhimo5CCufuIenZtYZXNCxt/uE
 MY9A==
X-Gm-Message-State: APjAAAWder7EpWlfm1vNt5IL7vh8USWommuwGRyBWBYsq1EWv57zrM5B
 5vWhkoSMyiCTGEhswqGHQN8=
X-Google-Smtp-Source: APXvYqzCaeqjuWWepuHVZDNLDDp3b8VLbgpBzaodvuX34Rg653xyvG74z8MdFcuL0oOfDoO2AS4FHQ==
X-Received: by 2002:a5d:5484:: with SMTP id h4mr25794215wrv.136.1574616598780; 
 Sun, 24 Nov 2019 09:29:58 -0800 (PST)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id n13sm5537275wmi.25.2019.11.24.09.29.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 Nov 2019 09:29:57 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <pza@pengutronix.de>
Subject: [PATCH v9 0/6] Add support for H6 PWM
Date: Sun, 24 Nov 2019 18:29:02 +0100
Message-Id: <20191124172908.10804-1-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_093002_262313_88E769F3 
X-CRM114-Status: GOOD (  17.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-pwm@vger.kernel.org, linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpUaGlzIGlzIGEgcmV3b3JrIG9mIEplcm5laidzIHByZXZpb3VzIHdvcmtbMV0gdGFraW5n
IGFjY291bnQgYWxsIHRoZQpwcmV2aW91cyByZW1hcmtzLgoKQmluZGluZ3MgaXMgc3RpbGwgc3Ry
aWN0IGJ1dCBwcm9iZSBpbiB0aGUgZHJpdmVyIGFyZSBub3cgb3B0aW9ubmFscy4KCklmIHNvbWVv
bmUgY291bGQgY29uZmlybSB0aGF0IHRoZSBQV00gaXMgbm90IGJyb2tlbiwgYXMgbXkgYm9hcmQK
ZG9lc24ndCBvdXRwdXQgaXQuCgpUaGFua3MsCkNsw6ltZW50CgpKZXJuZWoncyBjb3ZlcjoKQWxs
d2lubmVyIEg2IFNvQyBoYXMgUFdNIGNvcmUgd2hpY2ggaXMgYmFzaWNhbGx5IHRoZSBzYW1lIGFz
IHRoYXQgZm91bmQKaW4gQTIwLCBpdCdzIGp1c3QgZGVwZW5kcyBvbiBhZGRpdGlvbmFsIGJ1cyBj
bG9jayBhbmQgcmVzZXQgbGluZS4KClRoaXMgc2VyaWVzIGFkZHMgc3VwcG9ydCBmb3IgaXQgYW5k
IGV4dGVuZHMgUFdNIGRyaXZlciBmdW5jdGlvbmFsaXR5IGluCmEgd2F5IHRoYXQgaXQncyBub3cg
cG9zc2libGUgdG8gYnlwYXNzIHdob2xlIGNvcmUgYW5kIG91dHB1dCBQV00gc291cmNlCmNsb2Nr
IGRpcmVjdGx5IGFzIGEgUFdNIHNpZ25hbC4gVGhpcyBmdW5jdGlvbmFsaXR5IGlzIG5lZWRlZCBi
eSBBQzIwMApjaGlwLCB3aGljaCBpcyBidW5kbGVkIGluIHNhbWUgcGh5c2ljYWwgcGFja2FnZSBh
cyBINiBTb0MsIHRvIHNlcnZlIGFzIGEKY2xvY2sgc291cmNlIG9mIDI0IE1Iei4gQUMyMDAgY2xv
Y2sgaW5wdXQgcGluIGlzIGJvbmRlZCBpbnRlcm5hbGx5IHRvCnRoZSBzZWNvbmQgUFdNIGNoYW5u
ZWwuCgpJIHdvdWxkIGJlIGdyYXRlZnVsIGlmIGFueW9uZSBjYW4gdGVzdCB0aGlzIHBhdGNoIHNl
cmllcyBmb3IgYW55IGtpbmQgb2YKcmVncmVzc2lvbiBvbiBvdGhlciBTb0NzLgoKWzFdOiBodHRw
czovL3BhdGNod29yay5rZXJuZWwub3JnL2NvdmVyLzExMDYxNzM3LwoKQ2hhbmdlcyBpbiB2OToK
IC0gcHJpbnQgZXJyb3IgY29kZSBpbiBlcnJvciBtZXNzYWdlCiAtIG5vIGNhcGl0YWwgbGV0dGVy
IHRvIGtlZXAgY29oZXJlbmN5CgpDaGFuZ2VzIGluIHY4OgogLSBEaXNwbGF5IGVycm9yIHJldHVy
biBjb2RlCiAtIHNwbGl0IGNvbW1pdAogLSBieXBhc3MgaXMgZmFsc2UgaWYgdW5zdXBwb3J0ZWQK
IC0gcmV0dXJuIGluc3RlYWQgb2YgZ290bwoKQ2hhbmdlcyBpbiB2NzoKIC0gRml4IGluZGVudCBp
biBZYW1sIGJpbmRpbmdzCgpDaGFuZ2VzIGluIHY2OgogLSBVcGRhdGUgZ2l0IGNvbW1pdCBsb2cK
IC0gRGlzdGluZ3Vpc2ggZXJyb3IgbWVzc2FnZQoKQ2hhbmdlcyBpbiB2NToKIC0gTW92ZSBieXBh
c3MgY2FsY3VsYXRpb24gdG8gcHdtX2NhbGN1bGF0ZQogLSBTcGxpdCBtb2RfY2xvY2sgZmFsbGJh
Y2sgZnJvbSBidXNfY2xrIHByb2JlICAgCiAtIFVwZGF0ZSBjb21tZW50CiAtIE1vdmUgbXkgU29C
IGFmdGVyIGFja2VkLWJ5L3Jldmlld2VkLWJ5CgpDaGFuZ2VzIGluIHY0OgogLSBpdGVtIGRlc2Ny
aXB0aW9uIGluIGNvcnJlY3Qgb3JkZXIgYW5kIGFkZCBhIGJsYW5rIGxpbmUKIC0gdXNlICVwZSBm
b3IgcHJpbnRpbmcgUFRSX0VSUgogLSBkb24ndCBwcmludCBlcnJvciB3aGVuIGl0J3MgYW4gRVBS
T0JFX0RFRkVSCiAtIGNoYW5nZSBvdXRwdXQgY2xvY2sgYnlwYXNzIGZvcm11bGEgdG8gbWF0Y2gg
UFdNIHBvbGljeQoKQ2hhbmdlcyBpbiB2MzoKIC0gRG9jdW1lbnRhdGlvbiB1cGRhdGUgdG8gYWxs
b3cgb25lIGNsb2NrIHdpdGhvdXQgbmFtZQogLSBDaGFuZ2UgcmVzZXQgb3B0aW9uYWwgdG8gc2hh
cmVkCiAtIElmIHJlc2V0IHByb2JlIGZhaWxlZCByZXR1cm4gYW4gZXJyb3IKIC0gUmVtb3ZlIG9s
ZCBjbG9jayBwcm9iZQogLSBVcGRhdGUgYnlwYXNzIGVuYWJsZWQgZm9ybXVsYQoKQ2hhbmdlcyBp
biB2MjoKIC0gUmVtb3ZlIGFsbE9mIGluIERvY3VtZW50YXRpb24KIC0gQWRkIEg2IGV4YW1wbGUg
aW4gRG9jdW1lbnRhdGlvbgogLSBDaGFuZ2UgY2xvY2sgbmFtZSBmcm9tICJwd20iIHRvICJtb2Qi
CiAtIENoYW5nZSByZXNldCBxdWlyayB0byBvcHRpb25hbCBwcm9iZQogLSBDaGFuZ2UgYnVzX2Ns
b2NrIHF1aXJrIHRvIG9wdGlvbmFsIHByb2JlCiAtIEFkZCBsaW1pdGF0aW9uIGNvbW1lbnQgYWJv
dXQgbW9kX2Nsa19vdXRwdXQKIC0gQWRkIHF1aXJrIGZvciBtb2RfY2xrX291dHB1dAogLSBDaGFu
Z2UgYnlwYXNzIGZvcm11bGEKCkNsw6ltZW50IFDDqXJvbiAoMik6CiAgcHdtOiBzdW40aTogUHJl
ZmVyICJtb2QiIGNsb2NrIHRvIHVubmFtZWQKICBwd206IHN1bjRpOiBBbHdheXMgY2FsY3VsYXRl
IHBhcmFtcyB3aGVuIGFwcGx5aW5nIG5ldyBwYXJhbWV0ZXJzCgpKZXJuZWogU2tyYWJlYyAoNCk6
CiAgcHdtOiBzdW40aTogQWRkIGFuIG9wdGlvbmFsIHByb2JlIGZvciByZXNldCBsaW5lCiAgcHdt
OiBzdW40aTogQWRkIGFuIG9wdGlvbmFsIHByb2JlIGZvciBidXMgY2xvY2sKICBwd206IHN1bjRp
OiBBZGQgc3VwcG9ydCB0byBvdXRwdXQgc291cmNlIGNsb2NrIGRpcmVjdGx5CiAgcHdtOiBzdW40
aTogQWRkIHN1cHBvcnQgZm9yIEg2IFBXTQoKIGRyaXZlcnMvcHdtL3B3bS1zdW40aS5jIHwgMTg3
ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0KIDEgZmlsZSBjaGFuZ2Vk
LCAxNTYgaW5zZXJ0aW9ucygrKSwgMzEgZGVsZXRpb25zKC0pCgotLSAKMi4yMC4xCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
