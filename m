Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A0F4D0BC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 16:48:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qQcBs76/1N+X7WkRF7bE4FQPfcmkuPPk1F4dtb1nZ8E=; b=VffLaI/msIrcWV
	DrZIRzP3DRGWGo1sSbGmnBevoEKvYWwA/eOaX5GKxOgYokqmHrOcN/07jQkCUQWV5wifaBgkLspDQ
	Sqq66QNFjIL0SYmCo8LkYDmzvDhsG8VkYQQ5jqT/L5bpHj0gjcJ3ubIrMzZwkwlfMiKCZtcjRdSkU
	M47PioX7ZZkt5VAxq1CA/CNyhFR5/p3ZKt34gtvp39KzTOeSIGJbaQbTmohD1o2E+RBC0N1o4lIIe
	+gXp6rxj5EMNPz4+vX2zOT7J36mf5E1+ZRAk6AYX+ozfYYRJbKKYvI3RH1iLHq4LJA3C7ZJB1T3oQ
	vGtjoG9+ymZQkBweQpww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdyMd-0003lw-HY; Thu, 20 Jun 2019 14:48:35 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdyMC-0003iL-Q2
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 14:48:10 +0000
Received: by mail-lj1-x244.google.com with SMTP id v24so2928431ljg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 07:48:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GrUwatgKfRETWcIOI87bY9cay5YKvy8zjzEuCkPjsuY=;
 b=a/o6N+hTwZ+lrx5CJoloqhlv1pHvXMtuoxcloninxKoLN0WQs14UVYgEdzCYSH7Pcz
 plJWpf8NGVOLqb5GNQd6RLqbQxiUrPEvjlMwlc56+w2MP+olNvYvNZpPWPH7gF1f9h/y
 4ROsSck7mpEnLBhsWqC+FOrhRjqCjA17/vuGJkv3LW7ufo+KI+XjKD8AXRuRVciENi9t
 7NuBb4EVUXd5XDJG3ClAtIpdyOqwkSy58s3/eGN1UzQ9C9tTYYGjyqtKUWG9tEP47B5h
 UZ5ATVAI5G1PyYn0Tz72gvseK6ws9wJLN2vBsYq2H3PdAzk+wp6d9Gok3IRWsI9bmxmk
 YJLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GrUwatgKfRETWcIOI87bY9cay5YKvy8zjzEuCkPjsuY=;
 b=GYyLx2aFIo3kJk8fnbQbXZlCDjG7aRfR7Fnf13r4KX2p+i2VIFARbW8P257F4ttxru
 eJWccAg7RU8l4Y2LW5dyCL+FGvhXNHLVSLwM9ghlFsb9xLZShnbGctYLA4MZ1/Zmp08o
 Xuu65rkLzUdtJ0B8/zF+XIF3wPZX9nAvHhNTifyBGG4XWsx3fsFjM0yqUOVldiA51SEd
 BWuljxZGI/qI/1sQhSgNy6DJdIbb9o0MTPPSBQXMRVBFFsVDFq9uj7F4ODMnk7WXHhbm
 Jv/JhrdkrC2xxJv8B40HCHuGCWnZiXskP1axp/TetCiIrl9XaciRiVZCcd9qQmLXmQtQ
 RY6g==
X-Gm-Message-State: APjAAAVvYhPHOvYNtHretsDlNk6cdcJVWHOgTFZec3I9z7Tpu1gORSjc
 l8MGjPTNGoTbr3h1pbnrlDQ=
X-Google-Smtp-Source: APXvYqyK/pqyU6S3QbQf7S/2Ho1sMdLUU9XqeUG1Z4xZ49ccKg246cCv6SsEfL0ddj1t4c2Em2upYg==
X-Received: by 2002:a2e:8613:: with SMTP id a19mr8732452lji.163.1561042086924; 
 Thu, 20 Jun 2019 07:48:06 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id f10sm3577768ljk.95.2019.06.20.07.48.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 20 Jun 2019 07:48:06 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH RFC v1 0/7] serial: imx: fix RTS and RTS/CTS handling
Date: Thu, 20 Jun 2019 17:47:46 +0300
Message-Id: <1561042073-617-1-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <20190614072801.3187-1-s.hauer@pengutronix.de>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_074808_887917_91609855 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sorganov[at]gmail.com)
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
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>, linux-arm-kernel@lists.infradead.org,
 linux-serial@vger.kernel.org,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIHBhdGNoZXMgYXJlIG5vdCB0ZXN0ZWQgeWV0LCBzbyB0aGUgUkZDIGluIHRoZSBoZWFkZXIu
IEknbGwgcmUtcm9sbAp3aXRob3V0IFJGQyBvbmNlIFNhc2hhIEhhdWVyIHRlc3RzIHRoZW0uCgpT
YXNoYSwgaW4gYWRkaXRpb24gdG8gYWxyZWFkeSBkaXNjdXNzZWQgZml4ZXMsIEkndmUgYWxzbyBy
ZW9yZGVyZWQgMgpwYXRjaGVzIHNvIHRoYXQgdGhlIHNlcXVlbmNlIG1ha2VzIHNlbnNlLgoKQ2hh
bmdlbG9nOgoKICB2MToKCiAgICAgICogRml4ZWQgaW4gInNlcmlhbDogaW14OiBzZXRfdGVybWlv
cygpOiBwcmVzZXJ2ZSBSVFMgc3RhdGUiCgotKwl1Y3IyID0gVUNSMl9TUlNUIHwgVUNSMl9JUlRT
OworKwl1Y3IyIHw9IFVDUjJfU1JTVCB8IFVDUjJfSVJUUzsKICAgICAgCiAgICAgICAgYXMgbm90
aWNlZCBieSBMb3RoYXIgV2HDn21hbm4gPExXQEtBUk8tZWxlY3Ryb25pY3MuZGU+CgogICAgICAq
IEZpeGVkIGluICJzZXJpYWw6IGlteDogc2V0X3Rlcm1pb3MoKTogcHJlc2VydmUgUlRTIHN0YXRl
IgogICAgICAKLSsJdWNyMiA9IG9sZF91Y3IyICYgKFVDUjJfVFhFTiB8IFVDUjJfUlhFTiB8IFVD
UjJfQVRFTiB8IFVDUjJfQ1RTQyk7CisrCXVjcjIgPSBvbGRfdWNyMiAmIChVQ1IyX1RYRU4gfCBV
Q1IyX1JYRU4gfCBVQ1IyX0FURU4gfCBVQ1IyX0NUUyk7CgogICAgICAgIGFzIHRoZSBmaXggZm9y
IHRoZSBwcm9ibGVtIGZvdW5kIGJ5IFNhc2NoYSBIYXVlcgogICAgICAgIDxzLmhhdWVyQHBlbmd1
dHJvbml4LmRlPgoKICAgICAgKiBSZW9yZGVyZWQ6CgogICAgICAgIHNlcmlhbDogaW14OiBzZXRf
dGVybWlvcygpOiBwcmVzZXJ2ZSBSVFMgc3RhdGUKICAgICAgICBzZXJpYWw6IGlteDogc2V0X3Rl
cm1pb3MoKTogZG8gbm90IGVuYWJsZSBhdXRvUlRTIGlmIFJUUyBpcyB1bnNldAoKICAgICAgICBh
cyB0aGUgbGF0dGVyIG1ha2VzIHNlbnNlIG9ubHkgcHJvdmlkZWQgdGhlIGZvcm1lciBpcyBhbHJl
YWR5IGFwcGxpZWQuCiAgICAgIAoKU2VyZ2V5IE9yZ2Fub3YgKDcpOgogIHNlcmlhbDogaW14OiBm
aXggbG9ja2luZyBpbiBzZXRfdGVybWlvcygpCiAgc2VyaWFsOiBpbXg6IHNldF90ZXJtaW9zKCk6
IGZhY3Rvci1vdXQgJ3VjcjInIGluaXRpYWwgdmFsdWUKICBzZXJpYWw6IGlteDogc2V0X3Rlcm1p
b3MoKTogY2xhcmlmeSBSVFMvQ1RTIGJpdHMgY2FsY3VsYXRpb24KICBzZXJpYWw6IGlteDogc2V0
X3Rlcm1pb3MoKTogcHJlc2VydmUgUlRTIHN0YXRlCiAgc2VyaWFsOiBpbXg6IHNldF90ZXJtaW9z
KCk6IGRvIG5vdCBlbmFibGUgYXV0b1JUUyBpZiBSVFMgaXMgdW5zZXQKICBzZXJpYWw6IGlteDog
c2V0X21jdHJsKCk6IGNvcnJlY3RseSByZXN0b3JlIGF1dG9SVFMgc3RhdGUKICBzZXJpYWw6IGlt
eDogZ2V0IHJpZCBvZiBpbXhfdWFydF9ydHNfYXV0bygpCgogZHJpdmVycy90dHkvc2VyaWFsL2lt
eC5jIHwgOTMgKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
CiAxIGZpbGUgY2hhbmdlZCwgNDcgaW5zZXJ0aW9ucygrKSwgNDYgZGVsZXRpb25zKC0pCgotLQoy
LjEwLjAuMS5nNTdiMDFhMwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
