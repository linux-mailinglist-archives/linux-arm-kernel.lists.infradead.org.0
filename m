Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59D091F592F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 18:34:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dnahb2yu7MrCkBb9n+jOCudUa3zAyx2l5DXyCSBH1P8=; b=BFjMheNMV4pLFP
	qWDLexmtc9lAbhNnlPmeoLEgrSa2XvMM1VgvO+p167+JDwzxKDlZIZpL1/fWNVGCu/LBaqL919VC2
	Vhd6G5a2n2ucD3KRJzj0l/UF8yz4yccphGFEKayBtc0ES0UVjP+izd3Urr8uiNm02u6sa0OsgsPwp
	x5Qt0IbHfmnMir32vwZ7qXl/yI/GEAEegcltnVMGdeIxNGNUDEZPx0aiRxUa0wLfcELT/PdtzHtzu
	CVDRGJhB0k4J4HLut2S3CCtjnTOM2Oed6U/pkXx0sED/3SdB4r7aHa6ttBRzo5M8a7efychaKGiLQ
	r30JSH1NphCrRGXFEFZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj3gM-0001KJ-4q; Wed, 10 Jun 2020 16:34:30 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj3f3-0000GX-5l
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 16:33:10 +0000
Received: by mail-wr1-x42c.google.com with SMTP id r7so3025990wro.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 09:33:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mgTl/QDxn4TQmCxa1B/g2WIYRwMAAuGhWmdBVwlNgB0=;
 b=OJA8GCOgm3W1T6mRWRrRuvk2UsIKp/aq80UWD815Q6ZWn14+pma3Rscmqr6+MHJ5Jt
 qBJhWZ8Hq2qmtzUHSBUAA7XSzcQD2IkVvXJRyYkbowAl+4jfDsSdEQt5MjZTDSjnl8J7
 z/oh+2P66Ld/PoDOmILlenK/i6sO/nbg2aanxeDJVJFd8Adg6efF1U2X+AUlkHSB8O4O
 T/luR9FTh09CI+sWOC3gYv/t0wRbMsNf4uUR/PSIk2ntp0HZssNFiJH2nIgAgpzSexR6
 VVM177a+md6mRQyUTwbovSl9aIcRSl4ctQutF+3u066KyAkI0LHdcayiYY6I1W15Y573
 FqCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mgTl/QDxn4TQmCxa1B/g2WIYRwMAAuGhWmdBVwlNgB0=;
 b=GJuvm8S8Yx2uxaQiiI1byKys+E1dTIO96C5nJynDpl3Qf1AmTJM48SADB0xRXs0yJj
 5nH9usXbBEY+JVcAOintmHUO9oYZvqkMGRnYVKlxAzFtPyH25g6OCW4Oi3y1hLMw3UFZ
 eSNVRE3sEPM3zwkaUM+xI+sJ1AZC9MhGpGVqUN7P+C/FqXa/O9YunIjdSnVounOIjMye
 6h84W5BQq4XFoJakPv2dNj3kzempllCbAIxbud8I8bACdHl1wuUrXkryFtvARN6g8hP3
 xGJe8DykXoLlrXSWI4ncBuFZXpeafeoATZWs/OFuQ3TDcp+iizAc6QP+WMTV8FkmioBP
 UyqQ==
X-Gm-Message-State: AOAM533+jt6LobnK/vGmLcpipEnMJpDtsVkm3C3zD/qfGEAC++NE0C+r
 /ljUehvQ9WRTPkiwO7wNf18=
X-Google-Smtp-Source: ABdhPJyqjB6h1TfK5ilab4XOCrY+QpxKWAdqvFNqQCCEKtzYTj5baWJwDG77NOl0Ts3HMp9/GrKZ3Q==
X-Received: by 2002:a5d:4a0d:: with SMTP id m13mr4925299wrq.12.1591806786682; 
 Wed, 10 Jun 2020 09:33:06 -0700 (PDT)
Received: from skynet.lan (28.red-83-49-61.dynamicip.rima-tde.net.
 [83.49.61.28])
 by smtp.gmail.com with ESMTPSA id t7sm414430wrq.41.2020.06.10.09.33.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 09:33:06 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: hauke@hauke-m.de, zajec5@gmail.com, tsbogend@alpha.franken.de,
 robh+dt@kernel.org, f.fainelli@gmail.com, jonas.gorski@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-mips@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 3/6] mips: bmips: dts: add BCM6328 power domain support
Date: Wed, 10 Jun 2020 18:32:58 +0200
Message-Id: <20200610163301.461160-4-noltari@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200610163301.461160-1-noltari@gmail.com>
References: <20200609105244.4014823-1-noltari@gmail.com>
 <20200610163301.461160-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_093309_234864_9D092EA6 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42c listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

QkNNNjMyOCBTb0NzIGhhdmUgYSBwb3dlciBkb21haW4gY29udHJvbGxlciB0byBlbmFibGUvZGlz
YWJsZSBjZXJ0YWluCmNvbXBvbmVudHMgaW4gb3JkZXIgdG8gc2F2ZSBwb3dlci4KClNpZ25lZC1v
ZmYtYnk6IMOBbHZhcm8gRmVybsOhbmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+CkFja2Vk
LWJ5OiBGbG9yaWFuIEZhaW5lbGxpIDxmLmZhaW5lbGxpQGdtYWlsLmNvbT4KLS0tCiB2MjogQWRk
IGR0LWJpbmRpbmdzIGhlYWRlciBmaWxlcy4KCiBhcmNoL21pcHMvYm9vdC9kdHMvYnJjbS9iY202
MzI4LmR0c2kgfCAgNiArKysrKysKIGluY2x1ZGUvZHQtYmluZGluZ3Mvc29jL2JjbTYzMjgtcG0u
aCB8IDE3ICsrKysrKysrKysrKysrKysrCiAyIGZpbGVzIGNoYW5nZWQsIDIzIGluc2VydGlvbnMo
KykKIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2R0LWJpbmRpbmdzL3NvYy9iY202MzI4LXBt
LmgKCmRpZmYgLS1naXQgYS9hcmNoL21pcHMvYm9vdC9kdHMvYnJjbS9iY202MzI4LmR0c2kgYi9h
cmNoL21pcHMvYm9vdC9kdHMvYnJjbS9iY202MzI4LmR0c2kKaW5kZXggYWY4NjBkMDZkZWY2Li4x
ZjllZGQ3MTAzOTIgMTAwNjQ0Ci0tLSBhL2FyY2gvbWlwcy9ib290L2R0cy9icmNtL2JjbTYzMjgu
ZHRzaQorKysgYi9hcmNoL21pcHMvYm9vdC9kdHMvYnJjbS9iY202MzI4LmR0c2kKQEAgLTExMCw2
ICsxMTAsMTIgQEAgbGVkczA6IGxlZC1jb250cm9sbGVyQDEwMDAwODAwIHsKIAkJCXN0YXR1cyA9
ICJkaXNhYmxlZCI7CiAJCX07CiAKKwkJcGVyaXBoX3B3cjogcG93ZXItY29udHJvbGxlckAxMDAw
MTg0OCB7CisJCQljb21wYXRpYmxlID0gImJyY20sYmNtNjMyOC1wb3dlci1jb250cm9sbGVyIjsK
KwkJCXJlZyA9IDwweDEwMDAxODQ4IDB4ND47CisJCQkjcG93ZXItZG9tYWluLWNlbGxzID0gPDE+
OworCQl9OworCiAJCWVoY2k6IHVzYkAxMDAwMjUwMCB7CiAJCQljb21wYXRpYmxlID0gImJyY20s
YmNtNjMyOC1laGNpIiwgImdlbmVyaWMtZWhjaSI7CiAJCQlyZWcgPSA8MHgxMDAwMjUwMCAweDEw
MD47CmRpZmYgLS1naXQgYS9pbmNsdWRlL2R0LWJpbmRpbmdzL3NvYy9iY202MzI4LXBtLmggYi9p
bmNsdWRlL2R0LWJpbmRpbmdzL3NvYy9iY202MzI4LXBtLmgKbmV3IGZpbGUgbW9kZSAxMDA2NDQK
aW5kZXggMDAwMDAwMDAwMDAwLi41NTdlMWE2OWI3ZjcKLS0tIC9kZXYvbnVsbAorKysgYi9pbmNs
dWRlL2R0LWJpbmRpbmdzL3NvYy9iY202MzI4LXBtLmgKQEAgLTAsMCArMSwxNyBAQAorLyogU1BE
WC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjArICovCisKKyNpZm5kZWYgX19EVF9CSU5ESU5H
U19CTUlQU19CQ002MzI4X1BNX0gKKyNkZWZpbmUgX19EVF9CSU5ESU5HU19CTUlQU19CQ002MzI4
X1BNX0gKKworI2RlZmluZSBCQ002MzI4X1BPV0VSX0RPTUFJTl9BRFNMMl9NSVBTCTAKKyNkZWZp
bmUgQkNNNjMyOF9QT1dFUl9ET01BSU5fQURTTDJfUEhZCTEKKyNkZWZpbmUgQkNNNjMyOF9QT1dF
Ul9ET01BSU5fQURTTDJfQUZFCTIKKyNkZWZpbmUgQkNNNjMyOF9QT1dFUl9ET01BSU5fU0FSCTMK
KyNkZWZpbmUgQkNNNjMyOF9QT1dFUl9ET01BSU5fUENNCTQKKyNkZWZpbmUgQkNNNjMyOF9QT1dF
Ul9ET01BSU5fVVNCRAk1CisjZGVmaW5lIEJDTTYzMjhfUE9XRVJfRE9NQUlOX1VTQkgJNgorI2Rl
ZmluZSBCQ002MzI4X1BPV0VSX0RPTUFJTl9QQ0lFCTcKKyNkZWZpbmUgQkNNNjMyOF9QT1dFUl9E
T01BSU5fUk9CT1NXCTgKKyNkZWZpbmUgQkNNNjMyOF9QT1dFUl9ET01BSU5fRVBIWQk5CisKKyNl
bmRpZiAvKiBfX0RUX0JJTkRJTkdTX0JNSVBTX0JDTTYzMjhfUE1fSCAqLwotLSAKMi4yNi4yCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
