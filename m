Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE1F1F92BE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 11:08:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZFHrxALWHcGuNVA+klQ8L/QOIbaQ6kC4i3AT3YW0by4=; b=F8UBusJOTYU4wK
	UEDUk4ux4VxZrng+hA+cNG91/nhy/L4Pv2sg+p7nvKm+4bVmHiHtpH94ldQhWToRoJ48zLQtdJjAQ
	9U4AoNEiVRTXZIWNko7FhThGVqHxRYfoXCKuc1xPiSArjx7fOOJT0FObzm+OwchR64jdl6a4vFBZW
	VN0eXGAaNwLfrbRsUX4ItaVj4OBoesKG/a4x5XUwU1qWVaP4yy+oMKt2iVYQ0Dov8sXjwo5OKfthk
	vHBOUSD6+f42I6X6uZA6QLTaBPtCJlAvrIHihuFyA7V193fgcXE3Y8IOFIf3E0BvHcoSr122D3+Os
	PqP9wnKEAMFM05QD5UFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkl6C-0005CD-0T; Mon, 15 Jun 2020 09:08:12 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkl0t-0007h7-KZ
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 09:02:48 +0000
Received: by mail-wm1-x329.google.com with SMTP id l17so13821083wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 02:02:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cJ0uxRdi9VEd/TOL8ED+lcxK3NI1zfgFx15e2ixS1k4=;
 b=e6fPh/icrbjbhyw0BeCx94yeiXcmNnPTJTSQjk1tm5EOL/UtIwcojt7fieEnRGLcQw
 YiUfaRwFFd/juPYoDUiOusjx9BFpAEtZHriY0u5z6IL1xtseQ5jUp1lEA7tt5oIARqxC
 m5J5Nw0oZtfG8Ty8MR+57WlsfhW8DjxUqhMq8jQpr/0MvbunUHIC9AN4AhAQMhP24LKU
 wF6zU32YdWcPe47uVmbH6AhLcZSw2lZlec7b9N1BlzQXKi0ylu9xeYa/eJO3mV3aBtRZ
 iNunjh0AjiQOKBf3dyZbZVLqK/exfU5DjpKDoXdZZc0T7oWdR3tDTfFZcGzvZhUo3e9T
 QOJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cJ0uxRdi9VEd/TOL8ED+lcxK3NI1zfgFx15e2ixS1k4=;
 b=a1D5NsB14ny507NM/g/Qcz+YGwQkYloHxT+QCdkJ41kS9PrSzm0Qjv4pUQbX0rXYeN
 ln9+lIi5l3ekOLK9+HvSSZs/1xf8DkfdTVA8fgABgf+mJ94Ijld5si9BLUD7VbKAt78t
 kSEwaI2e0S1dRWs6d60GxaE4VTxUr1speq7+1wUt0mBZVKxNzLohjvp632w4v2B91NQw
 3rCTAcrBZrFHxfpp3yNnooPytlvTJuZQmZFsDfPAhu8K0Tbte+zKWSEoqFrLo55/3Nfy
 ySPNbHky0YBJiywIlYg+FuLCv1OlQUu9PDS7GF4u0GW+QhWIoH1thQIESaxVsdhDHpnf
 25Iw==
X-Gm-Message-State: AOAM530nYMqmSY2K19D5YVbEh/b9a9R0AxBOlPQdM62zXcHsepsEkhxs
 0vJGEOvjo1b682Dnjsrn6dE=
X-Google-Smtp-Source: ABdhPJykT5vQvP9A9keEIoJeerQLZ0fPea/ZllQI8Xc8lISOTXMHBRJ0V3qK9KhCAGp2crETqhGNSg==
X-Received: by 2002:a7b:c201:: with SMTP id x1mr11812966wmi.58.1592211761939; 
 Mon, 15 Jun 2020 02:02:41 -0700 (PDT)
Received: from skynet.lan (168.red-88-20-188.staticip.rima-tde.net.
 [88.20.188.168])
 by smtp.gmail.com with ESMTPSA id o15sm24089516wrv.48.2020.06.15.02.02.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 02:02:41 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: mturquette@baylibre.com, sboyd@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, robh+dt@kernel.org,
 julia.lawall@lip6.fr, jonas.gorski@gmail.com, lkp@intel.com,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH 6/8] mips: bmips: add BCM6368 clock definitions
Date: Mon, 15 Jun 2020 11:02:29 +0200
Message-Id: <20200615090231.2932696-7-noltari@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200615090231.2932696-1-noltari@gmail.com>
References: <20200615090231.2932696-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_020243_704684_9C1B4143 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:329 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIGhlYWRlciB3aXRoIEJDTTYzNjggZGVmaW5pdGlvbnMgaW4gb3JkZXIgdG8gYmUgYWJsZSB0
byBpbmNsdWRlIGl0IGZyb20KZGV2aWNlIHRyZWUgZmlsZXMuCgpTaWduZWQtb2ZmLWJ5OiDDgWx2
YXJvIEZlcm7DoW5kZXogUm9qYXMgPG5vbHRhcmlAZ21haWwuY29tPgotLS0KIGluY2x1ZGUvZHQt
YmluZGluZ3MvY2xvY2svYmNtNjM2OC1jbG9jay5oIHwgMjQgKysrKysrKysrKysrKysrKysrKysr
KysKIDEgZmlsZSBjaGFuZ2VkLCAyNCBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQg
aW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay9iY202MzY4LWNsb2NrLmgKCmRpZmYgLS1naXQgYS9p
bmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL2JjbTYzNjgtY2xvY2suaCBiL2luY2x1ZGUvZHQtYmlu
ZGluZ3MvY2xvY2svYmNtNjM2OC1jbG9jay5oCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAw
MDAwMDAwMDAwMC4uZjE2MWQ1MzMzODgzCi0tLSAvZGV2L251bGwKKysrIGIvaW5jbHVkZS9kdC1i
aW5kaW5ncy9jbG9jay9iY202MzY4LWNsb2NrLmgKQEAgLTAsMCArMSwyNCBAQAorLyogU1BEWC1M
aWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjArICovCisKKyNpZm5kZWYgX19EVF9CSU5ESU5HU19D
TE9DS19CQ002MzY4X0gKKyNkZWZpbmUgX19EVF9CSU5ESU5HU19DTE9DS19CQ002MzY4X0gKKwor
I2RlZmluZSBCQ002MzY4X0NMS19WRFNMX1FQUk9DCQkyCisjZGVmaW5lIEJDTTYzNjhfQ0xLX1ZE
U0xfQUZFCQkzCisjZGVmaW5lIEJDTTYzNjhfQ0xLX1ZEU0xfQk9ORElORwk0CisjZGVmaW5lIEJD
TTYzNjhfQ0xLX1ZEU0wJCTUKKyNkZWZpbmUgQkNNNjM2OF9DTEtfUEhZTUlQUwkJNgorI2RlZmlu
ZSBCQ002MzY4X0NMS19TV1BLVF9VU0IJCTcKKyNkZWZpbmUgQkNNNjM2OF9DTEtfU1dQS1RfU0FS
CQk4CisjZGVmaW5lIEJDTTYzNjhfQ0xLX1NQSQkJCTkKKyNkZWZpbmUgQkNNNjM2OF9DTEtfVVNC
RAkJMTAKKyNkZWZpbmUgQkNNNjM2OF9DTEtfU0FSCQkJMTEKKyNkZWZpbmUgQkNNNjM2OF9DTEtf
Uk9CT1NXCQkxMgorI2RlZmluZSBCQ002MzY4X0NMS19VVE9QSUEJCTEzCisjZGVmaW5lIEJDTTYz
NjhfQ0xLX1BDTQkJCTE0CisjZGVmaW5lIEJDTTYzNjhfQ0xLX1VTQkgJCTE1CisjZGVmaW5lIEJD
TTYzNjhfQ0xLX0RJU19HTEVTUwkJMTYKKyNkZWZpbmUgQkNNNjM2OF9DTEtfTkFORAkJMTcKKyNk
ZWZpbmUgQkNNNjM2OF9DTEtfSVBTRUMJCTE4CisKKyNlbmRpZiAvKiBfX0RUX0JJTkRJTkdTX0NM
T0NLX0JDTTYzNjhfSCAqLwotLSAKMi4yNy4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
