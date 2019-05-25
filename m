Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4A1F2A62A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 20:11:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZEWZJsm14ZNWtBnTfKVVwn7Tb/9oBiStdoGGyqZ5JKI=; b=pN59O5MQAXSzWv
	wCRD5aROBTUfUfJ1FH4tNME3jR0pBuzKfg0/06k+DKCSiU03jbpaCbqtB0gcNQyyO344LsbtRQfnt
	nmaSyfdCiScMwzPQwL4i/DTz8m1ZyKf9dbfw6drn9B6UHvcdPEfP6Zg7KQFWcAzxZ7Qr/xolPicvT
	D2+qOnD6HtiSagC0TNXiYhuO4trKe/k8Z0GQbCPVc9NcBunr7n9YHmMVMelGS9Rt2yQOqnEiqXHeK
	yYiw9g26oUdBKXkbk13aRGVr3tIw3rJMyXt58BBuaoVyqGQCYKgN30ILhxWxzqCdyfnnmKfxJPC2b
	hbl0Xe/nAdwoOyOtVcnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUb8z-00026V-Si; Sat, 25 May 2019 18:11:45 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUb7I-0006qQ-Ni
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 18:10:07 +0000
Received: by mail-wm1-x341.google.com with SMTP id z23so8001617wma.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 25 May 2019 11:09:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=R6G/HHE3Lw7PsZVrg7cAYjp5rZiFrvQ8UHmrA7ixhEk=;
 b=HvLEmGP+oz6IILCePytF8sAaQ99YcS9Ye2KaDW2bp14SIY5A83hIfqGuc2JLh2at5m
 VMJU7AEvIeX4yVeHXtfNbRseSxGpkzfo3gLbjygTCtvrniKNUIF1pYOcTcwahejKWhgk
 vqLP4JhR5yTm7uDe9Y0jfl9mjgmr9mGn3eDCNA77CJ1yS0PnJzVOWphbOumb2LjSNyqr
 RxALxjCXdaASu+UhkIRjx9gIqei1r+9v/hgYkdykV6L3wsAyEe77B3DtHDQAPn6FyFO3
 4WhLFWqZ8kFxTpUDJKXwsAMGFipCziF/yGDlUhb3eEm+cRdZxa3HaDh04MZLfArAqLVJ
 +19g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=R6G/HHE3Lw7PsZVrg7cAYjp5rZiFrvQ8UHmrA7ixhEk=;
 b=QKQ62Zfx6OOmzdV1RR106TxYpgt5wPXOJilJXx0xDdBo8hTfU9xatAEATYoM0WlBVW
 TiztSHO9Ye3O7doXnN12gIXW8h5Ym+GEZLD0KqIrEIG3AFicQMRh8r2VLOk4mhfmQ9go
 pQZ0Q1D9uQ3OfkdK3tQz0FLEgAVkHr3sfJdy1Q5qCagDExL7d90SObQZFEQdCWzjuZNf
 0d5pf2rrlg3DIzT+NCbcs/seRom+u1QWLF7LSe6gHBzdQvwhTn+Y3+xS5rQesztDvsYN
 yZ1HBJbeaTzW4tozBvwiXqm9//nocqg40DgRuIwxzkLvf/K0FPNgaaur7xBSmfnMkeY+
 9F8A==
X-Gm-Message-State: APjAAAUxh1rCP52g+VDijdz5Ozg4fvdDF5Ftu42Wee2iOTkYkMRnvQPa
 KzydMzfIRP52WFyQfxzr5m4=
X-Google-Smtp-Source: APXvYqyYLDpTxJSeuF/1FJtv064Jskcgj+3h2xNEtTfvS4X8dDGpHndFg5GKJaevnY+0KGJxDUs/uQ==
X-Received: by 2002:a1c:d143:: with SMTP id i64mr4263747wmg.176.1558807778819; 
 Sat, 25 May 2019 11:09:38 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id s127sm5656914wmf.48.2019.05.25.11.09.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 May 2019 11:09:38 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH 09/10] arm64: dts: allwinner: h6: Enable IR on H6 boards
Date: Sat, 25 May 2019 20:09:22 +0200
Message-Id: <20190525180923.6105-10-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190525180923.6105-1-peron.clem@gmail.com>
References: <20190525180923.6105-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_111000_863286_4061A30C 
X-CRM114-Status: GOOD (  13.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

QmVlbGluayBHUzEsIE9yYW5nZVBpIEg2IGJvYXJkcyBhbmQgUGluZSBINjQgIGhhdmUgYW4gSVIg
cmVjZWl2ZXIuCgpFbmFibGUgaXQgaW4gdGhlaXIgZGV2aWNlLXRyZWUuCgpTaWduZWQtb2ZmLWJ5
OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgotLS0KIGFyY2gvYXJtNjQv
Ym9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1iZWVsaW5rLWdzMS5kdHMgfCA0ICsrKysKIGFy
Y2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1vcmFuZ2VwaS5kdHNpICAgfCA0
ICsrKysKIGFyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1waW5lLWg2NC5k
dHMgICAgfCA0ICsrKysKIDMgZmlsZXMgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKQoKZGlmZiAt
LWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1iZWVsaW5rLWdz
MS5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtYmVlbGluay1n
czEuZHRzCmluZGV4IDBkYzMzYzkwZGQ2MC4uNjgwZGMyOWNiMDg5IDEwMDY0NAotLS0gYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtYmVlbGluay1nczEuZHRzCisrKyBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1iZWVsaW5rLWdzMS5kdHMK
QEAgLTIzMiw2ICsyMzIsMTAgQEAKIAl9OwogfTsKIAorJnJfaXIgeworCXN0YXR1cyA9ICJva2F5
IjsKK307CisKICZyX3BpbyB7CiAJLyoKIAkgKiBQTDAgYW5kIFBMMSBhcmUgdXNlZCBmb3IgUE1J
QyBJMkMKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1o
Ni1vcmFuZ2VwaS5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2
LW9yYW5nZXBpLmR0c2kKaW5kZXggNjJlMjc5NDhhM2ZhLi5lYzliNmE1NzhlM2YgMTAwNjQ0Ci0t
LSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1vcmFuZ2VwaS5kdHNp
CisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1vcmFuZ2VwaS5k
dHNpCkBAIC0xODksNiArMTg5LDEwIEBACiAJfTsKIH07CiAKKyZyX2lyIHsKKwlzdGF0dXMgPSAi
b2theSI7Cit9OworCiAmdWFydDAgewogCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7CiAJcGlu
Y3RybC0wID0gPCZ1YXJ0MF9waF9waW5zPjsKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9k
dHMvYWxsd2lubmVyL3N1bjUwaS1oNi1waW5lLWg2NC5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L2FsbHdpbm5lci9zdW41MGktaDYtcGluZS1oNjQuZHRzCmluZGV4IDQ4MDI5MDJlMTI4Zi4uYWUx
MmVlNGZjYzc3IDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41
MGktaDYtcGluZS1oNjQuZHRzCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1
bjUwaS1oNi1waW5lLWg2NC5kdHMKQEAgLTI0Nyw2ICsyNDcsMTAgQEAKIAl9OwogfTsKIAorJnJf
aXIgeworCXN0YXR1cyA9ICJva2F5IjsKK307CisKICZ1YXJ0MCB7CiAJcGluY3RybC1uYW1lcyA9
ICJkZWZhdWx0IjsKIAlwaW5jdHJsLTAgPSA8JnVhcnQwX3BoX3BpbnM+OwotLSAKMi4yMC4xCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
