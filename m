Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11671E6547
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 27 Oct 2019 21:08:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uwo09yjvSp+BdoMxx0qGqMJIV51OQEZm7mjZ6eJ4tYQ=; b=fL0ZfofX3Q2Seh
	WOT9Gotkt+B3V5LDH5bP06zwM0EphzS65ddRpLzclAwWH0w6QcFikLI0BnpR29KJrHttzPaciHIhm
	n59Epok+F5NORWZKybi5ITA3fKckltTHriWp6gJD8NJP2AElNebjZTnnofqGeDNkXPNiaT8LbXRI4
	EebTSs0cQFpCiLpbEwV2svoBS/Fp5uLtZ8c9wFp++PYUViXii5rt658LoK26+LDthPlGY5/A1Buv2
	JQDKp7hFm5bKaZfZgzo4p/R7Pcd5FCxVnAXBJOL0AhnwaXBqUoxuKExG7oz/Dhwo6ypf5WMqWl/+N
	ME9B6nDeEbn/xvSez8nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOopt-00027E-2U; Sun, 27 Oct 2019 20:08:25 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOopl-00026H-UL
 for linux-arm-kernel@lists.infradead.org; Sun, 27 Oct 2019 20:08:19 +0000
Received: by mail-wm1-x343.google.com with SMTP id v6so7035439wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 27 Oct 2019 13:08:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uILHnq2ITfdDUPR3qFBlC6hvnz1kzbF3v1izfuQrKFw=;
 b=KosvU5MG6bLLKxIv6Q1GTSUvZR2Y0/dnt1uUCaeKm23meFQ6ZyXdc5rIx0y4b6mlvr
 W4G48Tg4nYLf1XzXNokP+Zk16znbBAyuc1shsbomZUzwA95PkYYE3N8qhz41TJOfaQyu
 Ar5YJOxzgr0RH16u4xoAeNBYiNoEjUouGcqttTEBZD4mc76yvCMGpbKsF+lSwaqS6XL7
 FF6XFS5X47EjY0XuTf7PgzpnMJnDVM2ZyLBuk8sG3MYf1CGs/TXz1r9A9snvYeow7JV7
 eZ6M6JHbe/awtIKk1Vyb+PK2N5GeAH98rdpsdh+lyrrgLNU3/K9tw1NR01IpnHHLvs6V
 1PbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uILHnq2ITfdDUPR3qFBlC6hvnz1kzbF3v1izfuQrKFw=;
 b=Jes07HhVl3FNUWLmnrcm5weSS7F/b2fxTKpIkY+2vpOWRlCsUVGIWSbB8XT9ObBQzJ
 QfCoyNOpPB/qGGsBBv/9XI6GUWFQovEvUSDGMmRqfHDwBqqJOjpf62ytfa/gO7AaWai8
 +B/S/LuwTLW2x+ay7QOd8ddgtnMmIhbQfA/03VCdL/zWK/XxokvLBMhJkmLwQGlYdJ3i
 83+oXlt24HA+9415wN/qB3MJDTQec0o9Fc8B6cQvUZq5J+n8nq7Q28NORaVksHybhnsp
 Y4IBJLBHClle7RsNvqHgF147S42A2tJLEHvYTWqoqTWrwRZLVw8Nlx43jjOF7XzNwOjJ
 jSGA==
X-Gm-Message-State: APjAAAUDVwLuoRUNE+8Oec84Ns8L38meryesasYBqSVDW59l0j6yS8iu
 p14PT8+eSSwzgnZnXWqS2f8=
X-Google-Smtp-Source: APXvYqwyOASmJjLwg6ZT+C/jtzSWM3AVB0aUtxw+W5AEL7GrQyB/V5+FJN06i2VjrR7nVF3WoGClxg==
X-Received: by 2002:a1c:2b45:: with SMTP id r66mr11035621wmr.163.1572206894390; 
 Sun, 27 Oct 2019 13:08:14 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id o11sm8539538wmh.28.2019.10.27.13.08.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Oct 2019 13:08:14 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Sean Young <sean@mess.org>, Christian Hewitt <christianshewitt@gmail.com>
Subject: [PATCH 2/2] arm64: dts: allwinner: beelink-gs1: Add rc-beelink-gs1
 keymap
Date: Sun, 27 Oct 2019 21:07:38 +0100
Message-Id: <20191027200738.24802-2-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191027200738.24802-1-peron.clem@gmail.com>
References: <20191027200738.24802-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_130818_003133_7C523B30 
X-CRM114-Status: GOOD (  11.76  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QmVlbGluayBHUzEgc2hpcHMgd2l0aCBhIE5FQyByZW1vdGUgY29udHJvbC4KCkFkZCB0aGUgcmMg
a2V5bWFwIHRvIHRoZSBkZXZpY2UtdHJlZS4KClNpZ25lZC1vZmYtYnk6IENsw6ltZW50IFDDqXJv
biA8cGVyb24uY2xlbUBnbWFpbC5jb20+Ci0tLQogYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5u
ZXIvc3VuNTBpLWg2LWJlZWxpbmstZ3MxLmR0cyB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3Vu
NTBpLWg2LWJlZWxpbmstZ3MxLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1
bjUwaS1oNi1iZWVsaW5rLWdzMS5kdHMKaW5kZXggMWQwNWQ1NzAxNDJmLi5jZTRiMDY3OTgzOWQg
MTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1iZWVs
aW5rLWdzMS5kdHMKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2
LWJlZWxpbmstZ3MxLmR0cwpAQCAtMjUyLDYgKzI1Miw3IEBACiB9OwogCiAmcl9pciB7CisJbGlu
dXgscmMtbWFwLW5hbWUgPSAicmMtYmVlbGluay1nczEiOwogCXN0YXR1cyA9ICJva2F5IjsKIH07
CiAKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
