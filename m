Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8B901F568B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 16:09:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fwh4m9ur9H5msKynmgF6renjSLpjW+SZ0NrJ+/SWGyA=; b=p6RO47cCtWciov
	J3DKQWhntwntaW9iTuWv/fR/lImRPYXPUQA+qruSEitFFjJdKsqq6MkZYmzxlbXatnXAoMrbyuBWp
	+Jj1KYr5nx+oN0vYCW4sEPvpBjfgSBrjIG3vD8byGCa7Lp/JkOe8VbVAnbDOzdhvl3roD7Ritb72L
	U0oYFgwmhCVlxYHpOqa6bltXN29y6bDxeb1tAsBTo4YNgkatj5I+M5FNyJyPF8UHa6apWozinbaKE
	2I0mgEXzFEa5tWQGLfVlSoUp60N1/gOH/hrJhd9kmcKXupz+HpQ4S/3oJkgrbCq+5c/Of3azA6b0l
	UHw943QOkl0ex37eOe/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj1Po-0001yv-4Q; Wed, 10 Jun 2020 14:09:16 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj1Pc-0001y8-JC
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 14:09:06 +0000
Received: by mail-wr1-x429.google.com with SMTP id h5so2445006wrc.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 07:09:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3F1gyxKHBurPb/9ok1v4N24kKX2n+9TWOucrfqchLWY=;
 b=ioj0E5CLNbfjs5oCFAoQKIzYeZBkUzsBNDPcTEesJcSJ6K2WjEvS0sIXyNdZBne2fA
 YVFOwVpX6Kvagq0fqimlc2N6UHRM3yksJYSb7cdJeqS69EwbPc7lWT+HhdtAD/Sl8MoY
 LCK4KOoGz/PNI2oe94EnCJZhuHdMPSJZrfkrCERMqgfai5qijCfK4HEipycaa+0Q1CZb
 jU1hc5X10bIoud+iLtWn8xlol613jWOuAg/hpOKsShywXzBWw8RLjXFtn4XT5b+9hCSC
 G03APnvbzi4imW3NZmsUKI/D10zqfJWQqo+3rNODPeenxyc17qu4TDyRwkaMioqpAhUc
 eK1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3F1gyxKHBurPb/9ok1v4N24kKX2n+9TWOucrfqchLWY=;
 b=YbqX8sLbyKRMaiNlSvB8U/d5bTJy73j6I/E04g1O7Uaq+P/T3NAGN8xoFrulMbSIMN
 jRDPPOLunmMAQJEzO5Kh0FV0KOpoiPL0smdUlqj9UpXXfoNNuvjtLPl6wYkF1PFrNx6D
 Tm4G9KISztPoLFRZtjUL1vIbuF9TQWFx8994zSasAp1Hyhnx7FOKTys5iKCGxkLq/Gsj
 C3CVkfvObjll7c8A6rzEyUfKuFy9f4GJD0dlN25uoR+p1X6p9/6HnqxMPsO182iuMY27
 YW2sKB1h+8O0oOgjNksO3q8vHHmhLGGly3hEYZmn6LkwRNyhtEWotVwvGQfKkw6I9bIk
 RzEA==
X-Gm-Message-State: AOAM532OewbP+ZNDwsK3yKvPGe1pJfHGqkbjRsTNIWUruSt8GyO7E3D1
 A2F2RoxMJQgO5oitzY4paHFOsA1MYhiaqQ==
X-Google-Smtp-Source: ABdhPJz+sj/GScpXnuaN0U+4nlhrlDJQgiftq51b43NZYNgW3u6u9jGX7pG3KxZLtkZNex4KR2PtwA==
X-Received: by 2002:a5d:4bcb:: with SMTP id l11mr4180112wrt.363.1591798142300; 
 Wed, 10 Jun 2020 07:09:02 -0700 (PDT)
Received: from skynet.lan (28.red-83-49-61.dynamicip.rima-tde.net.
 [83.49.61.28])
 by smtp.gmail.com with ESMTPSA id r5sm8565883wrq.0.2020.06.10.07.09.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 07:09:01 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 f.fainelli@gmail.com, bcm-kernel-feedback-list@broadcom.com,
 julia.lawall@lip6.fr, f4bug@amsat.org, jonas.gorski@gmail.com,
 lkp@intel.com, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] clk: bcm63xx-gate: add BCM6318 support
Date: Wed, 10 Jun 2020 16:08:56 +0200
Message-Id: <20200610140858.207329-1-noltari@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200609113049.4035426-1-noltari@gmail.com>
References: <20200609113049.4035426-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_070904_631142_C2642FA0 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:429 listed in]
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

QWRkIHN1cHBvcnQgZm9yIHRoZSBnYXRlZCBjbG9jayBjb250cm9sbGVycyBmb3VuZCBvbiB0aGUg
QkNNNjMxOC4KCsOBbHZhcm8gRmVybsOhbmRleiBSb2phcyAoMik6CiAgZHQtYmluZGluZ3M6IGNs
b2NrOiBiY202M3h4OiBhZGQgNjMxOCBnYXRlZCBjbG9jayBiaW5kaW5ncwogIGNsazogYmNtNjN4
eC1nYXRlOiBhZGQgQkNNNjMxOCBzdXBwb3J0CgogLi4uL2JpbmRpbmdzL2Nsb2NrL2JyY20sYmNt
NjN4eC1jbG9ja3MudHh0ICAgIHwgIDIgKwogZHJpdmVycy9jbGsvYmNtL2Nsay1iY202M3h4LWdh
dGUuYyAgICAgICAgICAgIHwgNDQgKysrKysrKysrKysrKysrKysrKwogMiBmaWxlcyBjaGFuZ2Vk
LCA0NiBpbnNlcnRpb25zKCspCgotLSAKMi4yNi4yCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
