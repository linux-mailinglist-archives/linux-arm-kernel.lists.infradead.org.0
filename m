Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D0C1B0C30
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 15:02:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CEiHumQ1Oz8e2FWHybmiCxCCcgMIUmy1Hm/tdRsbZJs=; b=PuNKqIGX9AJeUV
	t7T6K97vQi2B/9qGD4dkgXA78p4FSOXlNVdNnRU4oRXX8juvvzgF1LPAM2BsClNeAsKoqub2Ltk6I
	Y+Shq03Afh0wpLUkHzr9HYto5yTzZa7Mwxf5bKHYLSPbEXtmDvIVsLesCPcNOXA+yK0vl+3iP4RZ6
	f0gOQSe1ndNh8MvkWb/MxK76lGRoIDcqhwfcEvVKDZINVqKT1Dnxln2a5MCaNrmE+eM9F6dUyhXC1
	9Ou+9vzhW5A5pKIfd/sLBQqIVBopUCI9vRguA5VMwZiXOXqDH2PhHH0XNRzfN5W/RvLtVSjDIngFw
	ZPDDB7tat3d8Gv+pOevg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQW40-0004f3-KX; Mon, 20 Apr 2020 13:02:16 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQW2L-0003Ir-3h
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 13:00:34 +0000
Received: by mail-wr1-x443.google.com with SMTP id t14so11985565wrw.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 06:00:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=06l4F0Fbj1OIjrhQursMZ1QtwSUf8beeJ0SuDwg+II8=;
 b=tlcLr+qcBQd9nD7QTtS+m5qGw78g7dkv2yrPeWwNs6uF2RCgIM/TURYFZ5xXCa7aNk
 GAFKd/dAXeZd9KopdEWzHTPSjwx7PaY4v0kW9saJGP9AN7lGtidS6vy+KkRdrCXTcskt
 8+psFyi6qmQwNpctFj0guZuFF0NdPwBLumKbNkieMkO8ceutAMf4DA/eDPwc4u6gwcSa
 E7lFccjL0M6zaxke2M1rh+385s3DxP+X9DTIKkVeIzGLECL3WxG0iBAbg9Fk/Et0/LWT
 tw7iINCDR+O9hiQlM47fpeqiBYbPYNYMxU6P8vZRLptuJUA4neKsJ5iD4LBFMAAnl0Ak
 HRNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=06l4F0Fbj1OIjrhQursMZ1QtwSUf8beeJ0SuDwg+II8=;
 b=qkzY92R1Fqmcqfng/0aDvkQsCYhI+BVTNWXm+LDpkR+9sx3bQixu5qnCQaru27eRYt
 NeG5RKwVPsS3UK1o3gQ8a+hg2d3aTV/YHi+McU1vYo3O5iWOSZyLldPRh8aocjjziUBe
 IH+IYmXpXwmNUNyhRbOQwM66Vb+QrEB3OoB2hDyOZQH1+68tEzpZWCxIcZ0ZcEgTkLVX
 SzmhLjnVRYXMycEF1u7c+M+4/5SKsuyPuMhl6nCg5kbaeF/w3dJGCdjTclx3xhj3HkBt
 OSW89QJRNo+qjTQeFSUkqXK8pPdDct3Ry0FCn1NywjIImP6pFlmo71pkfTvNkKTygPCA
 dtQQ==
X-Gm-Message-State: AGi0PubqVqp3N2eDGWv7YYf1hJXmRqqObFBMx+dMTVRRfey+WW0rCtMQ
 qVd31AwCGvvfhUzQNcuITDuHf46BfKU=
X-Google-Smtp-Source: APiQypItG1WvEk1CoQQJoT17pn5VvxyJhlZZM+GMUHSUrzirP1En3WB80UMtZwmFIkhpHpRAGw4bkw==
X-Received: by 2002:adf:f450:: with SMTP id f16mr18688995wrp.346.1587387631354; 
 Mon, 20 Apr 2020 06:00:31 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0:4e7:1fdd:b7c2:b3ab])
 by smtp.gmail.com with ESMTPSA id
 e11sm1081680wrn.87.2020.04.20.06.00.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 06:00:30 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v5 6/9] arm64: dts: allwinner: h6: Enable CPU opp tables for
 Orange Pi 3
Date: Mon, 20 Apr 2020 15:00:18 +0200
Message-Id: <20200420130021.3841-7-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200420130021.3841-1-peron.clem@gmail.com>
References: <20200420130021.3841-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_060033_184454_BD67E62D 
X-CRM114-Status: GOOD (  12.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

RW5hYmxlIENQVSBvcHAgdGFibGVzIGZvciBPcmFuZ2UgUGkgMy4KClRoaXMgbmVlZHMgdG8gY2hh
bmdlIHRoZSBDUFUgcmVndWxhdG9yIG1heCB2b2x0YWdlIHRvIGZpdAp0aGUgT1BQIHRhYmxlLgoK
QWxzbyBhZGQgdGhlIHJhbXAtZGVsYXkgaW5mb3JtYXRpb24gdG8gYXZvaWQgYW55IG91dCBvZiBz
cGVjCnJ1bm5pbmcgYXMgdGhlIHJlZ3VsYXRvciBpcyBzbG93ZXIgYXQgcmVhY2hpbmcgdGhlIHZv
bHRhZ2UKcmVxdWVzdGVkIGNvbXBhcmUgdG8gdGhlIFBMTCByZWFjaGluZyB0aGUgZnJlcXVlbmN5
LgoKVGhlcmUgaXMgbm8gc3VjaCBpbmZvcm1hdGlvbiBmb3IgQVhQODA1IGJ1dCBzaW1pbGFyIFBN
SUMgKEFYUDgxMykKaGFzIGEgRFZNIChEeW5hbWljIFZvbHRhZ2Ugc2NhbGluZyBNYW5hZ2VtZW50
KSByYW1wIHJhdGUgZXF1YWwKdG8gMjUwMHVWL3VzLgoKU2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQg
UMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KLS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL2Fs
bHdpbm5lci9zdW41MGktaDYtb3JhbmdlcGktMy5kdHMgfCAzICsrKwogMSBmaWxlIGNoYW5nZWQs
IDMgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lu
bmVyL3N1bjUwaS1oNi1vcmFuZ2VwaS0zLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lu
bmVyL3N1bjUwaS1oNi1vcmFuZ2VwaS0zLmR0cwppbmRleCA0N2Y1Nzk2MTBkY2MuLjE1YzlkZDhj
NDQ3OSAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2
LW9yYW5nZXBpLTMuZHRzCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUw
aS1oNi1vcmFuZ2VwaS0zLmR0cwpAQCAtNCw2ICs0LDcgQEAKIC9kdHMtdjEvOwogCiAjaW5jbHVk
ZSAic3VuNTBpLWg2LmR0c2kiCisjaW5jbHVkZSAic3VuNTBpLWg2LWNwdS1vcHAuZHRzaSIKIAog
I2luY2x1ZGUgPGR0LWJpbmRpbmdzL2dwaW8vZ3Bpby5oPgogCkBAIC0yNTcsNiArMjU4LDcgQEAK
IAkJCQlyZWd1bGF0b3ItYWx3YXlzLW9uOwogCQkJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0g
PDgwMDAwMD47CiAJCQkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MTE2MDAwMD47CisJCQkJ
cmVndWxhdG9yLXJhbXAtZGVsYXkgPSA8MjUwMD47CiAJCQkJcmVndWxhdG9yLW5hbWUgPSAidmRk
LWNwdSI7CiAJCQl9OwogCkBAIC0yNjQsNiArMjY2LDcgQEAKIAkJCQlyZWd1bGF0b3ItZW5hYmxl
LXJhbXAtZGVsYXkgPSA8MzIwMDA+OwogCQkJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDgx
MDAwMD47CiAJCQkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MTA4MDAwMD47CisJCQkJcmVn
dWxhdG9yLXJhbXAtZGVsYXkgPSA8MjUwMD47CiAJCQkJcmVndWxhdG9yLW5hbWUgPSAidmRkLWdw
dSI7CiAJCQl9OwogCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
