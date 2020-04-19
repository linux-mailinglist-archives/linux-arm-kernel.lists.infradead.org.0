Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DACB1AFAFA
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 15:51:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GfWRsgv3ftpPcN0GJI6aSeuRDEFsFrPwRMwV0Di4qgU=; b=Ct4hjArSSnPjiD
	it1nGmfQztGm16I5OtNJ2BF0g2mqQZw0RBdP1dIP9rd/bUwd6FSLyk4o+y7OvH6HSCWWdWmMCE2Mz
	TISPaBVkC1gdYQAFibG6klxfBPzjj4M/kltVZUuGWhHWNw0E1av6/vRcnxgBNP/NRdexsijhblypn
	NZ5p9JHHfDaAW5UrZmvFhHuJx9BXTSVoZWA8aCXCYaANJ4PgCFkni44Bezs+vBlKC5/1OuIEjZ6l2
	tU4l3MaVkSig2ABTaNCOnxjYtcYfAM+u03/95Owvwp94KPYX+56qvy5RPlw8yL5ytpKbvGCfliicr
	7+mrsErZkfyJXkg3qSpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQAM6-00016f-8D; Sun, 19 Apr 2020 13:51:30 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQAKw-0000JW-Om
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 13:50:20 +0000
Received: by mail-wr1-x442.google.com with SMTP id j1so3279476wrt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Apr 2020 06:50:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ETKn5k65i8M5k8rygdWEKhtzpcpoZWZs8fff2gycZGA=;
 b=rgiAOtVHPa1zatADZlRO24mQNsXNHAxivgbcNTmfXyMdlQ00fNv5bV2ehm35jthzEd
 SHRg+OIOz8myxhPDfKFajej7usenM4P77EfYLjTHYIh2iReXohgKdygH7wlVm8CNbUgn
 Dj7E30PjybDOCviu7E4b3UULqkNMDR9dg0OiUD6oIffo1aM+ErVh0tWaNbPvDnTFYBv1
 h0mkU4eqJx9bXaye4UHAqNcGvtK6R1shtJXYc2pZRZidniA5x4aiLnAQSjtc8VWLqp/3
 G3NCXt1DApoMVjycr451L2mq5Soxch09ZvQbJncV3Y1PoMGlUmLxrW3uFjaL35v8uMA+
 QFEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ETKn5k65i8M5k8rygdWEKhtzpcpoZWZs8fff2gycZGA=;
 b=I7geYdde8/0cI56/qZ7DiOuuBctl7uuRNHo2zSBtwQQdyHzYPV5ocEx8fMpyeYlpcg
 FNugLpcZa2zNQOwDRxFa/l55WEoGMEct4iLqsdjes+asRur+1HAwee7NbFa5fArFeJ+I
 bbFnun216CHThZcby2tPFHZgq/jcQBXx2/7XXqUJsqcFOY6RsPxQOGlWoEVpuCIGk0oZ
 P/ghC1p54YLmaM3Vd/1xJNX9EVEZ7arA/pIMy2a1SP6LjxXZptkcJIU9K6GIIwaslVw3
 D+BPE//xYIELlKdHmTcaB2CrxjuqaZuS3c7Ne8yzRSEQ7nksFzNqkfQPYQDr1ICs5LBb
 FH6Q==
X-Gm-Message-State: AGi0Pua7S5tqTq5QDsIWg6x5PBXuVjVuK17ZnbG1Td3RV3+2NyJNZmOX
 lrEZKofC4fMr80J2fCY4jJsza6vUxUq+xg==
X-Google-Smtp-Source: APiQypLWb6JaBbHbIaPvq6jUnkWNI1T6T4GUXsqZp3+S35yKOvv/C3kGsMefXplJu6vKaunuodoaTw==
X-Received: by 2002:a5d:4248:: with SMTP id s8mr13483030wrr.216.1587304217237; 
 Sun, 19 Apr 2020 06:50:17 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0:4e7:1fdd:b7c2:b3ab])
 by smtp.gmail.com with ESMTPSA id
 z8sm20183940wrr.40.2020.04.19.06.50.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Apr 2020 06:50:16 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 3/7] arm64: dts: allwinner: h6: Enable CPU opp tables for
 Beelink GS1
Date: Sun, 19 Apr 2020 15:50:07 +0200
Message-Id: <20200419135011.18010-4-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200419135011.18010-1-peron.clem@gmail.com>
References: <20200419135011.18010-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_065018_803737_F6C88103 
X-CRM114-Status: GOOD (  13.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RW5hYmxlIENQVSBvcHAgdGFibGVzIGZvciBCZWVsaW5rIEdTMS4KClRoaXMgbmVlZHMgdG8gY2hh
bmdlIHRoZSBDUFUgcmVndWxhdG9yIG1heCB2b2x0YWdlIHRvIGZpdAp0aGUgT1BQIHRhYmxlLgoK
QWxzbyBhZGQgdGhlIHJhbXAtZGVsYXkgaW5mb3JtYXRpb24gdG8gYXZvaWQgYW55IG91dCBvZiBz
cGVjCnJ1bm5pbmcgYXMgdGhlIHJlZ3VsYXRvciBpcyBzbG93ZXIgYXQgcmVhY2hpbmcgdGhlIHZv
bHRhZ2UKcmVxdWVzdGVkIGNvbXBhcmUgdG8gdGhlIFBMTCByZWFjaGluZyB0aGUgZnJlcXVlbmN5
LgoKVGhlcmUgaXMgbm8gc3VjaCBpbmZvcm1hdGlvbiBmb3IgQVhQODA1IGJ1dCBzaW1pbGFyIFBN
SUMgKEFYUDgxMykKaGFzIGEgRFZNIChEeW5hbWljIFZvbHRhZ2Ugc2NhbGluZyBNYW5hZ2VtZW50
KSByYW1wIHJhdGUgZXF1YWwKdG8gMjUwMHVWL3VzLgoKU2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQg
UMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KLS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL2Fs
bHdpbm5lci9zdW41MGktaDYtYmVlbGluay1nczEuZHRzIHwgOSArKysrKysrKy0KIDEgZmlsZSBj
aGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtYmVlbGluay1nczEuZHRzIGIvYXJj
aC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LWJlZWxpbmstZ3MxLmR0cwppbmRl
eCA4ZjA5ZDIwOTM1OWIuLjNmN2NlZWIxYTc2NyAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290
L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LWJlZWxpbmstZ3MxLmR0cworKysgYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtYmVlbGluay1nczEuZHRzCkBAIC00LDYgKzQs
NyBAQAogL2R0cy12MS87CiAKICNpbmNsdWRlICJzdW41MGktaDYuZHRzaSIKKyNpbmNsdWRlICJz
dW41MGktaDYtY3B1LW9wcC5kdHNpIgogCiAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvZ3Bpby9ncGlv
Lmg+CiAKQEAgLTc3LDYgKzc4LDEwIEBACiAJfTsKIH07CiAKKyZjcHUwIHsKKwljcHUtc3VwcGx5
ID0gPCZyZWdfZGNkY2E+OworfTsKKwogJmRlIHsKIAlzdGF0dXMgPSAib2theSI7CiB9OwpAQCAt
MjM0LDcgKzIzOSw4IEBACiAJCQlyZWdfZGNkY2E6IGRjZGNhIHsKIAkJCQlyZWd1bGF0b3ItYWx3
YXlzLW9uOwogCQkJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDgxMDAwMD47Ci0JCQkJcmVn
dWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MTA4MDAwMD47CisJCQkJcmVndWxhdG9yLW1heC1taWNy
b3ZvbHQgPSA8MTE2MDAwMD47CisJCQkJcmVndWxhdG9yLXJhbXAtZGVsYXkgPSA8MjUwMD47CiAJ
CQkJcmVndWxhdG9yLW5hbWUgPSAidmRkLWNwdSI7CiAJCQl9OwogCkBAIC0yNDIsNiArMjQ4LDcg
QEAKIAkJCQlyZWd1bGF0b3ItZW5hYmxlLXJhbXAtZGVsYXkgPSA8MzIwMDA+OwogCQkJCXJlZ3Vs
YXRvci1taW4tbWljcm92b2x0ID0gPDgxMDAwMD47CiAJCQkJcmVndWxhdG9yLW1heC1taWNyb3Zv
bHQgPSA8MTA4MDAwMD47CisJCQkJcmVndWxhdG9yLXJhbXAtZGVsYXkgPSA8MjUwMD47CiAJCQkJ
cmVndWxhdG9yLW5hbWUgPSAidmRkLWdwdSI7CiAJCQl9OwogCi0tIAoyLjIwLjEKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
