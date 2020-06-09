Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D37051F38B9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 12:53:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2TYe7U+hmFGxHFtI1uX1l6tnRMyA0b31/cl8c2ieg/0=; b=eQA24TJ1bckf05
	UbEs3Y8IiEYbJjTNjwzZ7U0/0Qx+xwq4zdqqucHiXW2DlLO/pD1HFmz0s9D29gWviTQ/vWuWNBW8i
	+tTOPmHUdfjhEAcNZMupENYtfvE8YP2n89hHTu700oOSOq2knFWsQskBnFB77BChGuNT68QeTkxsA
	kdhaeoDmUdXIis6AXt80gshR/Ct61VSyqOkXuAAGTsDo0BwOo7y7DBT+Ug0UhlKN9wO85BD0Pk92b
	r1s+QYeS+aPHnr8XEy4CtW6JJO3l28Js4OcnSHj6hMqwG03GLUnndBgZvOw528bffdwEcbKlz5Eo7
	+dbRNv0y+6ZnKtolf0Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jibsY-0006S6-6h; Tue, 09 Jun 2020 10:53:14 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jibsA-0006Fz-0g
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 10:52:51 +0000
Received: by mail-wr1-x441.google.com with SMTP id x13so20765753wrv.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 03:52:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RN8qA9KeRPApUC9s9M9mqLxO489K/MfoAz940jHP23Y=;
 b=KQ/bjzvZAfoLGfoT12i5X6Z0l3Dwg03CsiU22jQmf6WO4U3kjZL6jNOLH3pVVe5Tnt
 RgELItRui03zlzAWxLo/jV5rJxyxBOuFMyhHq95/oZE+QMScFX8PFN05KO+6vMrd/Ykv
 Qn7A/jpMmd9UUj55yUg8OULwYyGSEvlRXeY5nh8S8XLpVk74TUNBRfPzrhlsZDukx7Ui
 RiVziKKAInDR5h0GQ/NjNmQhJadTxgBwgVwdw0Dzo3GZRWFRzyokoufLUNKWfOmrUKQf
 sqVPTK069lREajkxb04vUVcDRFSaGBrZA8DL8pbReeLepaXr4RVEEJclUttXLpYzFZ2h
 hWLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RN8qA9KeRPApUC9s9M9mqLxO489K/MfoAz940jHP23Y=;
 b=ZAXm4Oun/Zbr6V1hPpKcr7gB1cqt7MFA5FHnK4UDWbkIz/iRIhoxWF5gK950svvwC/
 uUVMKltijg648Sx9wE3p3KsydxlJ/fIJVl7X4qah4L4AREJurxWrN7I0qpLjTeY0tmoh
 yTOlnAcIh08O3P6MPB/aVKfVoHrlNJ0VqdMXxQVYQodUX8X5ILRuqHQDkRJJJXamwKhd
 SzQ8SqC845ViDt2We7NT7QUsN51GVJt7/Y86pbduHh11gXfplSCH0Nwo1/ayMggy6Nxh
 mfOMjkaBYR/A0c0+UNwGbD7SgYzfZNeQiUnWz7t6Ccl7u3GnVML/9P2AK4Kft1tbHaRc
 jIgQ==
X-Gm-Message-State: AOAM533vrZJfegzQzpXYJ/+/dbB/HBKE26ywIyXjaLljJuLfEQ3Dq6dM
 DF28G7kjLp+WRWNTLUIuF4A=
X-Google-Smtp-Source: ABdhPJz4YtWMdIQH3Ns4x4rDx6zL4PJImYd9panLoTN08va8Aq47KKkXfkMIGis/Zhdd8xQK0JiL0A==
X-Received: by 2002:adf:ee47:: with SMTP id w7mr3661475wro.171.1591699967688; 
 Tue, 09 Jun 2020 03:52:47 -0700 (PDT)
Received: from skynet.lan (28.red-83-49-61.dynamicip.rima-tde.net.
 [83.49.61.28])
 by smtp.gmail.com with ESMTPSA id h5sm2949931wrw.85.2020.06.09.03.52.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2020 03:52:47 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: hauke@hauke-m.de, zajec5@gmail.com, tsbogend@alpha.franken.de,
 robh+dt@kernel.org, f.fainelli@gmail.com, jonas.gorski@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-mips@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/4] dt-bindings: soc: brcm: add BCM63xx power domain binding
Date: Tue,  9 Jun 2020 12:52:41 +0200
Message-Id: <20200609105244.4014823-2-noltari@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200609105244.4014823-1-noltari@gmail.com>
References: <20200609105244.4014823-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_035250_056311_63AE5B05 
X-CRM114-Status: UNSURE (   8.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

QkNNNjMxOCwgQkNNNjMyOCwgQkNNNjM2MiBhbmQgQkNNNjMyNjggU29DcyBoYXZlIGEgcG93ZXIg
ZG9tYWluIGNvbnRyb2xsZXIKdG8gZW5hYmxlL2Rpc2FibGUgY2VydGFpbiBjb21wb25lbnRzIGlu
IG9yZGVyIHRvIHNhdmUgcG93ZXIuCgpTaWduZWQtb2ZmLWJ5OiDDgWx2YXJvIEZlcm7DoW5kZXog
Um9qYXMgPG5vbHRhcmlAZ21haWwuY29tPgotLS0KIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL21p
cHMvYnJjbS9zb2MudHh0ICAgICAgIHwgMTcgKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFu
Z2VkLCAxNyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL21pcHMvYnJjbS9zb2MudHh0IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL21pcHMvYnJjbS9zb2MudHh0CmluZGV4IDNhNjZkM2M0ODNlMS4uMjJlYzllMzli
ZmY3IDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWlwcy9i
cmNtL3NvYy50eHQKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21pcHMv
YnJjbS9zb2MudHh0CkBAIC0xNjQsMyArMTY0LDIwIEBAIEV4YW1wbGU6CiAJCXJlZyA9IDwweDQw
NjdjMCAweDQwPjsKIAkJaW50ZXJydXB0cyA9IDwmcGVyaXBoX2ludGMgMTk+OwogCX07CisKK0JD
TTYzeHgKKy0tLS0tLS0KKworPSBQb3dlciBkb21haW4gY29udHJvbGxlcgorCitCQ002MzE4LCBC
Q002MzI4LCBCQ002MzYyIGFuZCBCQ002MzI2OCBTb0NzIGhhdmUgYSBwb3dlciBkb21haW4gY29u
dHJvbGxlcgordG8gZW5hYmxlL2Rpc2FibGUgY2VydGFpbiBjb21wb25lbnRzIGluIG9yZGVyIHRv
IHNhdmUgcG93ZXIuCisKKy0gY29tcGF0aWJsZQkJOiBzaG91bGQgY29udGFpbiBvbmUgb2Y6CisJ
CQkgICJicmNtLGJjbTYzMTgtcG93ZXItY29udHJvbGxlciIKKwkJCSAgImJyY20sYmNtNjMyOC1w
b3dlci1jb250cm9sbGVyIgorCQkJICAiYnJjbSxiY202MzYyLXBvd2VyLWNvbnRyb2xsZXIiCisJ
CQkgICJicmNtLGJjbTYzMjY4LXBvd2VyLWNvbnRyb2xsZXIiCistIHJlZyAJCQk6IHRoZSByZWdp
c3RlciBzdGFydCBhbmQgbGVuZ3RoIGZvciB0aGUgcG93ZXIgZG9tYWluCisJCQkgIGNvbnRyb2xs
ZXIgYmxvY2sKKy0gI3Bvd2VyLWRvbWFpbi1jZWxscwk6IG11c3QgYmUgMQotLSAKMi4yNi4yCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
