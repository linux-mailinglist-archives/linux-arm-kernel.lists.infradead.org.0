Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D0F2105AB8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 20:59:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=g78KPIcUZmuiqLdcx0KGZVX6nZhtbbI5Bc55BPPxTN4=; b=d3WrIA98ME3CHg
	O7l161dOholASQar5A+iagcO/tty87T+oCjP5pZFQ+/zksj08S6Zqc/Mg2F5K/PxHihHFXOqnOkZP
	VfLITj6f+AdUuS6wFA9mwDLEf0qsnFzwWomgxTlGu6Xj/vZUNF55q0F/CfDunY/8ZLxVp3VV/CSZ9
	R8khJI1vx0zcgw6eZDU47wvYCVm+ECXTb6lTzKjaxSyh/Xbzywt4v73fDieJXUrl6NhIWVcEj8Yyt
	onQ42cHYzSYOTV1dsI3ag/X350pODB7wYiyOx3+QZ8Ax4Tr/v4gakyCDz4SdX+SHyxmiMAJ4jrKZk
	TMMoN30ukOpItf3rRC2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXsbv-0001Bo-BW; Thu, 21 Nov 2019 19:59:27 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXsbf-0001Aw-4R
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 19:59:12 +0000
Received: by mail-wm1-x341.google.com with SMTP id u18so5118819wmc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 11:59:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QEHAUzD9B/6AoeSWvZc7hvkK4ObltWVKU4PeW75EXHE=;
 b=dyoMamB9KK7VtbcqWyXyjklzKJdIjCkkQpwvWp0yExtoeLYWENnSnOdSn7VlI6AUyL
 ewvhFxnmzz12sBDFGACCusAMTa1Urm1YdMOcpLgOV4JsmO7r+ur98dyVpFebrVfuGlih
 Ijf36Sa4DH96Ua46PCr2093urnpq7fZnEROIizpMCurjKu4OnHt8JSsStdBvO8kaqFTE
 jx4LAiPnT1bYzHn/YLMZ30SrB+A9jUtJl7P9F9SpdX4KmYaaz+0o9z86km1uycgGwxsJ
 Y9BJsfvLWmTNUrCdw3jwVT8lDnZiNse2gP3DzGx1Rte/nEYR6fXAVs0WiolaLVe5c8TP
 NDPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QEHAUzD9B/6AoeSWvZc7hvkK4ObltWVKU4PeW75EXHE=;
 b=MTOaRxWLmS1gwAfjFrvHIzk8+iHExySAEUHvzA8cENv45ZrnPzdV9+6g7VhbW3x7PT
 teinre6Q/oI5vlLpxTP/mFyYq30rBxo3hjORccybs0znpD7ss05F7o5oi6b+N4/suLY6
 hcnNbL53s5TmILuwqnYbcGc60C5ykVkPsnB1hVDC0G8F5xPEZFNI2Y8xzxJo/5ilv1FO
 tbE7ZlV7p3ovufpzXDxT4iLIybpqHT7lhkLzrgu5+plKzIN5+8zb/Jwqpx1WWcKJ/PGX
 hJ/pR7l0RtEF4A2KIe02jS2mUCrUYbT7qxe1H5WfSxec3TbVCTTpQaosLfw22Ufh8K4D
 XR+g==
X-Gm-Message-State: APjAAAVBbhrB9LU+I4KVgvyQYJgwkrf5RwjZ8uj19iILWwKJMVLeoTga
 OzZYKqPMLnvZi45rHN9zSSA=
X-Google-Smtp-Source: APXvYqwf6osdAeqnz19E7fQNOOeiKMEOfYyQ/BPJ4UDiWPrxD5qp/ZuY3M+bkrrRNeUWprmULBS34Q==
X-Received: by 2002:a05:600c:2919:: with SMTP id
 i25mr12050283wmd.158.1574366349212; 
 Thu, 21 Nov 2019 11:59:09 -0800 (PST)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id l4sm747124wme.4.2019.11.21.11.59.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Nov 2019 11:59:08 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <pza@pengutronix.de>
Subject: [PATCH v8 0/6] Add support for H6 PWM
Date: Thu, 21 Nov 2019 20:58:56 +0100
Message-Id: <20191121195902.6906-1-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_115911_180339_B89FDE1B 
X-CRM114-Status: GOOD (  18.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
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
czovL3BhdGNod29yay5rZXJuZWwub3JnL2NvdmVyLzExMDYxNzM3LwoKQ2hhbmdlcyBpbiB2ODoK
IC0gRGlzcGxheSBlcnJvciByZXR1cm4gY29kZQogLSBzcGxpdCBjb21taXQKIC0gYnlwYXNzIGlz
IGZhbHNlIGlmIHVuc3VwcG9ydGVkCiAtIHJldHVybiBpbnN0ZWFkIG9mIGdvdG8KCkNoYW5nZXMg
aW4gdjc6CiAtIEZpeCBpbmRlbnQgaW4gWWFtbCBiaW5kaW5ncwoKQ2hhbmdlcyBpbiB2NjoKIC0g
VXBkYXRlIGdpdCBjb21taXQgbG9nCiAtIERpc3Rpbmd1aXNoIGVycm9yIG1lc3NhZ2UKCkNoYW5n
ZXMgaW4gdjU6CiAtIE1vdmUgYnlwYXNzIGNhbGN1bGF0aW9uIHRvIHB3bV9jYWxjdWxhdGUKIC0g
U3BsaXQgbW9kX2Nsb2NrIGZhbGxiYWNrIGZyb20gYnVzX2NsayBwcm9iZSAgIAogLSBVcGRhdGUg
Y29tbWVudAogLSBNb3ZlIG15IFNvQiBhZnRlciBhY2tlZC1ieS9yZXZpZXdlZC1ieQoKQ2hhbmdl
cyBpbiB2NDoKIC0gaXRlbSBkZXNjcmlwdGlvbiBpbiBjb3JyZWN0IG9yZGVyIGFuZCBhZGQgYSBi
bGFuayBsaW5lCiAtIHVzZSAlcGUgZm9yIHByaW50aW5nIFBUUl9FUlIKIC0gZG9uJ3QgcHJpbnQg
ZXJyb3Igd2hlbiBpdCdzIGFuIEVQUk9CRV9ERUZFUgogLSBjaGFuZ2Ugb3V0cHV0IGNsb2NrIGJ5
cGFzcyBmb3JtdWxhIHRvIG1hdGNoIFBXTSBwb2xpY3kKCkNoYW5nZXMgaW4gdjM6CiAtIERvY3Vt
ZW50YXRpb24gdXBkYXRlIHRvIGFsbG93IG9uZSBjbG9jayB3aXRob3V0IG5hbWUKIC0gQ2hhbmdl
IHJlc2V0IG9wdGlvbmFsIHRvIHNoYXJlZAogLSBJZiByZXNldCBwcm9iZSBmYWlsZWQgcmV0dXJu
IGFuIGVycm9yCiAtIFJlbW92ZSBvbGQgY2xvY2sgcHJvYmUKIC0gVXBkYXRlIGJ5cGFzcyBlbmFi
bGVkIGZvcm11bGEKCkNoYW5nZXMgaW4gdjI6CiAtIFJlbW92ZSBhbGxPZiBpbiBEb2N1bWVudGF0
aW9uCiAtIEFkZCBINiBleGFtcGxlIGluIERvY3VtZW50YXRpb24KIC0gQ2hhbmdlIGNsb2NrIG5h
bWUgZnJvbSAicHdtIiB0byAibW9kIgogLSBDaGFuZ2UgcmVzZXQgcXVpcmsgdG8gb3B0aW9uYWwg
cHJvYmUKIC0gQ2hhbmdlIGJ1c19jbG9jayBxdWlyayB0byBvcHRpb25hbCBwcm9iZQogLSBBZGQg
bGltaXRhdGlvbiBjb21tZW50IGFib3V0IG1vZF9jbGtfb3V0cHV0CiAtIEFkZCBxdWlyayBmb3Ig
bW9kX2Nsa19vdXRwdXQKIC0gQ2hhbmdlIGJ5cGFzcyBmb3JtdWxhCgpDbMOpbWVudCBQw6lyb24g
KDIpOgogIHB3bTogc3VuNGk6IFByZWZlciAibW9kIiBjbG9jayB0byB1bm5hbWVkCiAgcHdtOiBz
dW40aTogQWx3YXlzIGNhbGN1bGF0ZSBwYXJhbXMgd2hlbiBhcHBseWluZyBuZXcgcGFyYW1ldGVy
cwoKSmVybmVqIFNrcmFiZWMgKDQpOgogIHB3bTogc3VuNGk6IEFkZCBhbiBvcHRpb25hbCBwcm9i
ZSBmb3IgcmVzZXQgbGluZQogIHB3bTogc3VuNGk6IEFkZCBhbiBvcHRpb25hbCBwcm9iZSBmb3Ig
YnVzIGNsb2NrCiAgcHdtOiBzdW40aTogQWRkIHN1cHBvcnQgdG8gb3V0cHV0IHNvdXJjZSBjbG9j
ayBkaXJlY3RseQogIHB3bTogc3VuNGk6IEFkZCBzdXBwb3J0IGZvciBINiBQV00KCiBkcml2ZXJz
L3B3bS9wd20tc3VuNGkuYyB8IDE4NyArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKyst
LS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTU2IGluc2VydGlvbnMoKyksIDMxIGRlbGV0aW9ucygt
KQoKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
