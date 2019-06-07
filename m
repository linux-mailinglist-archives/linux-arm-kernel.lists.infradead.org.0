Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 582FF399A0
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 01:13:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nM+rzxUfac7X1s0L05U4i7cQKMo3jDKju7Ow5vPpWBU=; b=akS/KxJIUw0LDD
	mAfjBek6S322FC2erjyyXrtlxVB1iBecAhffsz3HEQWCXEoQYnPsct8WsVmniBGnaGkOIH4M1W8wr
	ico/XD+QQSAiELwsuk2/KIkJyACEjl3qwoQzxAJoyqtcNlV+f8Qlp8XeN0RO2zdwAzg76Gwy+VjlS
	bwpXFJmtIN/JwfaA4thVm5HOtA3dWHaCp2VQvpfXrLN3j+yQm8bznPc+gsjs9fwy3pApiIRLJB4bK
	AzIYTRblEEv7dhglUp0rVxOg/ffvsZzYFI44axbCQ3+VW8nkc8yPtLRL9W65Am2ELdDiwK0NAhGLk
	baqoMZ+nwJ9ffrJnlhDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZO3R-00035n-Ba; Fri, 07 Jun 2019 23:13:49 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZO10-00011T-Sd
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 23:11:20 +0000
Received: by mail-wm1-x342.google.com with SMTP id f10so3503458wmb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 16:11:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BsQBIKOAel5fnBJ7QqXJ25YvFcF3acsbydOzLPIsKmY=;
 b=F3abP1GJdWlmfJW/OC7w6iBmIU7IT9Rbr586VC3aGTc5hCHZyoeC5LXUTU52seqokB
 0lum/lXwTv7VihyKAp25E94NNv6ebzvAlfrF1jvag8+cGfIg6N3uFqkt0Zi6NXd2Z9Nz
 /W7Te95jk8n3pJ2prulZW7n8rxtBYqG+Tbr71BswZlyJrmixfWUJN9VCTfgwv7RxTIj1
 Ob2CvmKyf8VQAGtQZ+QTSEJEBXR6w7gebLF/0Np8PGacuW8DCAIbVC/5dnyxZm5XarBV
 lA4m/UiPjNoxuw+jm0uxhugbVpVpF2qCtC2PEbOjG8ErLgIaxVd+0k9v+YGJvRZkfFRV
 4Zgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BsQBIKOAel5fnBJ7QqXJ25YvFcF3acsbydOzLPIsKmY=;
 b=S0euLdRMEVwch88au4GcYLY8ExJstxmixWb1X6WQGAvsqeuQeN+U0x9pFUucdTUX3a
 pIQAJ4m2byOR8G0g6ZpuKKWvttNQR2DYsYToOTXxTngkwTk2OTSebvoSaZ6bRSgOiBdG
 XYxhaNV8KmuTW+PzgafZBHzRVjX7Wim1mkMAITKY5DAIhRET568m9kpi851cf1LHJVxM
 Rzx7RjRjK54QLwlB7F3JtlIucPHNfgy0dXuKZJJfgWL3D+8MYRnF/RRceG4/3f2Gmvpd
 vIDdzZwfZAnnK8omy32tkAxnN13Mvu5q9RDEvLab3xLa6TAON+j33DOcjILS6cK4RMfs
 J5kg==
X-Gm-Message-State: APjAAAWjuzcfULcJ5QnAk3REn9r0TOBIWaEcsSq1a1xffYSv+aMAlFsA
 YTBfB3dUlYXGeHvqpvDqQ0w=
X-Google-Smtp-Source: APXvYqzHBE1qVb3MOsnJZBaCNkT/iFJTJDAo6+g+YPS8ESoYt0STIvyQR+CFM/+/sd3m4Oxt45Vn0Q==
X-Received: by 2002:a05:600c:1150:: with SMTP id
 z16mr4958318wmz.168.1559949077095; 
 Fri, 07 Jun 2019 16:11:17 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id h84sm4108559wmf.43.2019.06.07.16.11.16
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 07 Jun 2019 16:11:16 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v5 08/13] arm64: dts: allwinner: a64: Add IR node
Date: Sat,  8 Jun 2019 01:10:55 +0200
Message-Id: <20190607231100.5894-9-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190607231100.5894-1-peron.clem@gmail.com>
References: <20190607231100.5894-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_161118_941125_C728887F 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 Sean Young <sean@mess.org>, linux-kernel@vger.kernel.org,
 Igors Makejevs <git_bb@bwzone.com>, linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogSWdvcnMgTWFrZWpldnMgPGdpdF9iYkBid3pvbmUuY29tPgoKSVIgcGVyaXBoZXJhbCBp
cyBjb21wbGV0ZWx5IGNvbXBhdGlibGUgd2l0aCBBMzEgb25lLgoKU2lnbmVkLW9mZi1ieTogSWdv
cnMgTWFrZWpldnMgPGdpdF9iYkBid3pvbmUuY29tPgpTaWduZWQtb2ZmLWJ5OiBKZXJuZWogU2ty
YWJlYyA8amVybmVqLnNrcmFiZWNAc2lvbC5uZXQ+ClNpZ25lZC1vZmYtYnk6IENsw6ltZW50IFDD
qXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+CkFja2VkLWJ5OiBTZWFuIFlvdW5nIDxzZWFuQG1l
c3Mub3JnPgotLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1hNjQuZHRz
aSB8IDE4ICsrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDE4IGluc2VydGlvbnMo
KykKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktYTY0
LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktYTY0LmR0c2kKaW5k
ZXggOGM1YjUyMWU2Mzg5Li5iMjJiMGFhODk1MTUgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvYWxsd2lubmVyL3N1bjUwaS1hNjQuZHRzaQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L2FsbHdpbm5lci9zdW41MGktYTY0LmR0c2kKQEAgLTEwNzIsNiArMTA3MiwxOSBAQAogCQkJI3Np
emUtY2VsbHMgPSA8MD47CiAJCX07CiAKKwkJcl9pcjogaXJAMWYwMjAwMCB7CisJCQljb21wYXRp
YmxlID0gImFsbHdpbm5lcixzdW41MGktYTY0LWlyIiwKKwkJCQkgICAgICJhbGx3aW5uZXIsc3Vu
NmktYTMxLWlyIjsKKwkJCXJlZyA9IDwweDAxZjAyMDAwIDB4NDAwPjsKKwkJCWNsb2NrcyA9IDwm
cl9jY3UgQ0xLX0FQQjBfSVI+LCA8JnJfY2N1IENMS19JUj47CisJCQljbG9jay1uYW1lcyA9ICJh
cGIiLCAiaXIiOworCQkJcmVzZXRzID0gPCZyX2NjdSBSU1RfQVBCMF9JUj47CisJCQlpbnRlcnJ1
cHRzID0gPEdJQ19TUEkgMzcgSVJRX1RZUEVfTEVWRUxfSElHSD47CisJCQlwaW5jdHJsLW5hbWVz
ID0gImRlZmF1bHQiOworCQkJcGluY3RybC0wID0gPCZyX2lyX3J4X3Bpbj47CisJCQlzdGF0dXMg
PSAiZGlzYWJsZWQiOworCQl9OworCiAJCXJfcHdtOiBwd21AMWYwMzgwMCB7CiAJCQljb21wYXRp
YmxlID0gImFsbHdpbm5lcixzdW41MGktYTY0LXB3bSIsCiAJCQkJICAgICAiYWxsd2lubmVyLHN1
bjVpLWExMy1wd20iOwpAQCAtMTA5OSw2ICsxMTEyLDExIEBACiAJCQkJZnVuY3Rpb24gPSAic19p
MmMiOwogCQkJfTsKIAorCQkJcl9pcl9yeF9waW46IHItaXItcngtcGluIHsKKwkJCQlwaW5zID0g
IlBMMTEiOworCQkJCWZ1bmN0aW9uID0gInNfY2lyX3J4IjsKKwkJCX07CisKIAkJCXJfcHdtX3Bp
bjogci1wd20tcGluIHsKIAkJCQlwaW5zID0gIlBMMTAiOwogCQkJCWZ1bmN0aW9uID0gInNfcHdt
IjsKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
