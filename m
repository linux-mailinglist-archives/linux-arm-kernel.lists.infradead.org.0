Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BE4287017
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 05:13:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9/HQDtr9RgTmkqKZ0SzF4InkYrewcT6dIZ1PQcwxsWc=; b=Ap2bCl5MIXM/gl
	kkTqgo1X6xJunutExOCSKqb8eBF6MNqm8l9Wt1P1arKwSnHWT97Q0yaEr9JIO9T4a3NBPXkk0NRA3
	Z1WqGrbzMWXQca3NgBfOZMaCU5UpvNW59Qt0nMmQ3d6EszuaE074pLYT8jjZTw46yi1DaWa0bz59w
	n3F5DGnMEf/t+KI3ZqcEsJ6+mcAcfbFnN97tvLCLWol7dtf9XYHe/OsA0vMj7hP6qVZIJ5zIqoAMr
	58gkfCNAvv49EXzlShnUtlnNFGk8z4MKBRfF6nSWq0EmXfBqNMcYNLUY02d1s831hhrzfdZuf3UDs
	P9vHc76pNLjtvXPWTC6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvvKl-0006zv-Da; Fri, 09 Aug 2019 03:12:51 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvvKX-0006yz-W8
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 03:12:40 +0000
Received: by mail-wr1-f67.google.com with SMTP id b16so124405wrq.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 20:12:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EGHNJ41q8Xk+rxqslkgHM8iSCXHrbORbX9tN8p2H7Dg=;
 b=H2+X/EwchOlwlH4oWoXvtNvt7pcUBQ4nln5x420Pi9G+376yzGY7Vv4sM9d7lq4jn8
 //p9peL5NHILvUsQrjWKHxRAkXVA/8QqWCxerQC2BZjot7covvO3MCpcnWE2Fny2V45N
 85w6bjPR3rD9ac0PIX2ZerAI4hMr4917cIagXpqSNUtQqnLznSElh8UD9LHTuE/mH/L8
 uXyoODW+4ZSYYxjmAQdgJ5NhvUucjeB04JG1IA+1sGAn1Szyu1LKUkdFQ8texJyv5V91
 D8tCVbvXN9uUyiolLudtMb/53dWu/iwGkPFQQj3W0BNJtJz5O1JIp8yQsGJvFrJj1Fps
 5Tow==
X-Gm-Message-State: APjAAAUKMEYoU7QpdJQT9GG8tqGUuFH+VTRcUlR7YTI9Bk/SkN12tQmW
 fr0vfU0+hSKw8ufOgLbRVX4=
X-Google-Smtp-Source: APXvYqyEWcvAnhF4Ue9wN4qIrQ6LTTi30ZSRVlF3B9zoC2iuTwaAv0Ylfl09QVksRxGknvXGG4p0/A==
X-Received: by 2002:a5d:46d1:: with SMTP id g17mr7959113wrs.131.1565320353238; 
 Thu, 08 Aug 2019 20:12:33 -0700 (PDT)
Received: from tfsielt31850.garage.tyco.com ([79.97.20.138])
 by smtp.gmail.com with ESMTPSA id t19sm4798565wmi.29.2019.08.08.20.12.31
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 08 Aug 2019 20:12:32 -0700 (PDT)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: dts: imx7d: cl-som-imx7: make ethernet work again
Date: Fri,  9 Aug 2019 04:12:27 +0100
Message-Id: <20190809031227.3319-1-git@andred.net>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_201238_037037_18CE77D9 
X-CRM114-Status: GOOD (  14.77  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Igor Grinberg <grinberg@compulab.co.il>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Ilya Ledvich <ilya@compulab.co.il>,
 NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UmVjZW50IGNoYW5nZXMgdG8gdGhlIGF0aGVyb3MgYXQ4MDN4IGRyaXZlciBjYXVzZWQKZXRoZXJu
ZXQgdG8gc3RvcCB3b3JraW5nIG9uIHRoaXMgYm9hcmQuCkluIHBhcnRpY3VsYXIgY29tbWl0IDZk
NGNkMDQxZjBhZgooIm5ldDogcGh5OiBhdDgwM3g6IGRpc2FibGUgZGVsYXkgb25seSBmb3IgUkdN
SUkgbW9kZSIpCmFuZCBjb21taXQgY2QyOGQxZDZlNTJlCigibmV0OiBwaHk6IGF0ODAzeDogRGlz
YWJsZSBwaHkgZGVsYXkgZm9yIFJHTUlJIG1vZGUiKQpmaXggdGhlIEFSODAzMSBkcml2ZXIgdG8g
Y29uZmlndXJlIHRoZSBwaHkncyAoUlgvVFgpCmRlbGF5cyBhcyBwZXIgdGhlICdwaHktbW9kZScg
aW4gdGhlIGRldmljZSB0cmVlLgoKVGhpcyBub3cgcHJldmVudHMgZXRoZXJuZXQgZnJvbSB3b3Jr
aW5nIG9uIHRoaXMgYm9hcmQuCgpJdCB1c2VkIHRvIHdvcmsgYmVmb3JlIHRob3NlIGNvbW1pdHMs
IGJlY2F1c2UgdGhlCkFSODAzMSBjb21lcyBvdXQgb2YgcmVzZXQgd2l0aCBSWCBkZWxheSBlbmFi
bGVkLCBhbmQKdGhlIGF0ODAzeCBkcml2ZXIgZGlkbid0IHRvdWNoIHRoZSBkZWxheSBjb25maWd1
cmF0aW9uCmF0IGFsbCB3aGVuICJyZ21paSIgbW9kZSB3YXMgc2VsZWN0ZWQsIGFuZCBiZWNhdXNl
CmFyY2gvYXJtL21hY2gtaW14L21hY2gtaW14N2QuYzphcjgwMzFfcGh5X2ZpeHVwKCkKdW5jb25k
aXRpb25hbGx5IGVuYWJsZXMgVFggZGVsYXkuCgpTaW5jZSBhYm92ZSBjb21taXRzIGFyODAzMV9w
aHlfZml4dXAoKSBhbHNvIGhhcyBubwplZmZlY3QgYW55bW9yZSwgYW5kIHRoZSBlbmQtcmVzdWx0
IGlzIHRoYXQgYWxsIGRlbGF5cwphcmUgZGlzYWJsZWQgaW4gdGhlIHBoeSwgbm8gZXRoZXJuZXQu
CgpVcGRhdGUgdGhlIGRldmljZSB0cmVlIHRvIHJlc3RvcmUgZnVuY3Rpb25hbGl0eS4KClNpZ25l
ZC1vZmYtYnk6IEFuZHLDqSBEcmFzemlrIDxnaXRAYW5kcmVkLm5ldD4KQ0M6IElseWEgTGVkdmlj
aCA8aWx5YUBjb21wdWxhYi5jby5pbD4KQ0M6IElnb3IgR3JpbmJlcmcgPGdyaW5iZXJnQGNvbXB1
bGFiLmNvLmlsPgpDQzogUm9iIEhlcnJpbmcgPHJvYmgrZHRAa2VybmVsLm9yZz4KQ0M6IE1hcmsg
UnV0bGFuZCA8bWFyay5ydXRsYW5kQGFybS5jb20+CkNDOiBTaGF3biBHdW8gPHNoYXduZ3VvQGtl
cm5lbC5vcmc+CkNDOiBTYXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+CkNDOiBQ
ZW5ndXRyb25peCBLZXJuZWwgVGVhbSA8a2VybmVsQHBlbmd1dHJvbml4LmRlPgpDQzogRmFiaW8g
RXN0ZXZhbSA8ZmVzdGV2YW1AZ21haWwuY29tPgpDQzogTlhQIExpbnV4IFRlYW0gPGxpbnV4LWlt
eEBueHAuY29tPgpDQzogZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmcKQ0M6IGxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwotLS0KIGFyY2gvYXJtL2Jvb3QvZHRzL2lteDdkLWNs
LXNvbS1pbXg3LmR0cyB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwg
MiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9pbXg3ZC1jbC1z
b20taW14Ny5kdHMgYi9hcmNoL2FybS9ib290L2R0cy9pbXg3ZC1jbC1zb20taW14Ny5kdHMKaW5k
ZXggZTYxNTY3NDM3ZDczLi42MmQ1ZTlhNGE3ODEgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3Qv
ZHRzL2lteDdkLWNsLXNvbS1pbXg3LmR0cworKysgYi9hcmNoL2FybS9ib290L2R0cy9pbXg3ZC1j
bC1zb20taW14Ny5kdHMKQEAgLTQ0LDcgKzQ0LDcgQEAKIAkJCSAgPCZjbGtzIElNWDdEX0VORVQx
X1RJTUVfUk9PVF9DTEs+OwogCWFzc2lnbmVkLWNsb2NrLXBhcmVudHMgPSA8JmNsa3MgSU1YN0Rf
UExMX0VORVRfTUFJTl8xMDBNX0NMSz47CiAJYXNzaWduZWQtY2xvY2stcmF0ZXMgPSA8MD4sIDwx
MDAwMDAwMDA+OwotCXBoeS1tb2RlID0gInJnbWlpIjsKKwlwaHktbW9kZSA9ICJyZ21paS1pZCI7
CiAJcGh5LWhhbmRsZSA9IDwmZXRocGh5MD47CiAJZnNsLG1hZ2ljLXBhY2tldDsKIAlzdGF0dXMg
PSAib2theSI7CkBAIC03MCw3ICs3MCw3IEBACiAJCQkgIDwmY2xrcyBJTVg3RF9FTkVUMl9USU1F
X1JPT1RfQ0xLPjsKIAlhc3NpZ25lZC1jbG9jay1wYXJlbnRzID0gPCZjbGtzIElNWDdEX1BMTF9F
TkVUX01BSU5fMTAwTV9DTEs+OwogCWFzc2lnbmVkLWNsb2NrLXJhdGVzID0gPDA+LCA8MTAwMDAw
MDAwPjsKLQlwaHktbW9kZSA9ICJyZ21paSI7CisJcGh5LW1vZGUgPSAicmdtaWktaWQiOwogCXBo
eS1oYW5kbGUgPSA8JmV0aHBoeTE+OwogCWZzbCxtYWdpYy1wYWNrZXQ7CiAJc3RhdHVzID0gIm9r
YXkiOwotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
