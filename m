Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A57991FA969
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 09:02:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9IKUesKJffl5nnYmDBgrEYjFqrRjeLELEyjbxJpP2qU=; b=nki8Bf+GfoWR4s
	/hwGmSLuHBnRaAcT+Lk1j67dF8ypr0Qc/qr03llkucVo3csTgysPPd6GpJDjVM8hOA/e0j2n+etHt
	DydxI9wOoBAJgGFNzRcLivLvD7xKaPUyA6piHI7OjUh46Tg4ZhgCX+OA79JNJfIRTfZiPrXOFl8gC
	dTuUqNp6/Pc5AK1T1bxDO9zEcPgozkU2vtBYLcwIi12RSfg0qIU8ITXMFR/9cDd+JrsBDiJg9EZHP
	cb/5yYo+pPm1/yPKW8hrraSAeTtMpZjy+HFxGkRJpNOKug+IfCiOEbG4uxd/O9wbP5S1qgR1btWx1
	a+HwMk2CfWgrpBJXOMmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl5cE-0008DR-Tw; Tue, 16 Jun 2020 07:02:38 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl5c5-0008CF-Ej
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 07:02:30 +0000
Received: by mail-wr1-x42b.google.com with SMTP id e1so19562543wrt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 00:02:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9WZthhuU//B6wQw1RFUk3CQpL8RxxxfDOiN2psXzJ30=;
 b=mR/Rr5NBXyT29lrK1jJ2dX0W50EtQXJGcssYXymYzPi/NbGzH/5jsZiBcVuIeoqSrJ
 M7fkPimXCdKTnzK2D1eIr2EdzEXm/aJhS8B6tjzfUI6fB+8J0Q9pKfXRqZnTteKrgFG+
 LBzJLRXJwFc1d+yRnFCSVjLDnTOHJ4Q3m0lBVWIs5wlExs3t7o+7CeBqby1wl8sKm59+
 1aVUNhSNqGKXQ56GiX13j7GxdIzUCxdZaAz/vUI6zfTxpL3wDSOTRUY2Gp9bLzkRtdWy
 K1zeR4+FL52hB9J0CaGBzgTlpPPE1Ws5NhFvk2AckpIBxQdN5BxLtoxwFSZKyGAeTp4U
 v91g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9WZthhuU//B6wQw1RFUk3CQpL8RxxxfDOiN2psXzJ30=;
 b=lLZHAJcDnKsbYu5/UdyaaxGmRhcqLtLxv3hTZwevSMG23qvoWvST1J6ng6eodCMqWE
 WnaE70YKIXsuvj1hyRgK1xaJLAdRJh+EgZyMbxg9OogBLY5mvCmk9qgAuSU5q3WAHTER
 m3Fq3jeQFt5ia/Awpn700PzW8k42Vy6wNMYZ2qo43wmg0xLFcedwna/5YxCS6QbyUQnj
 OCsl0YvVadgxslQbnMN/+GpkSCHpInrWYIgW3if+rP4CNLekOiDKU9OX4uYzdXCvtUTr
 EOD/OhazaBChVGInlIqkCSAGz2NU3CIciy9q5WG491bnxf/M+X6L2VBmYFItQuLx8RKf
 1ZSA==
X-Gm-Message-State: AOAM530tUiMrm2B/6QBSfvL9hncSIF4v12CrQaAITsUSL0wdYeRM/9Od
 3gNmDCooh4mDz4T7jG+MMEI=
X-Google-Smtp-Source: ABdhPJzA4UCgJ2AbMfjQ3ZdhBe0623Lw1JbpKljb0BlnktIWeajUb3wlXXR3PX7lOdwSZ2ZUwPVbsg==
X-Received: by 2002:a5d:554b:: with SMTP id g11mr1450317wrw.260.1592290946770; 
 Tue, 16 Jun 2020 00:02:26 -0700 (PDT)
Received: from skynet.lan (90.red-88-20-62.staticip.rima-tde.net.
 [88.20.62.90])
 by smtp.gmail.com with ESMTPSA id a81sm2792897wmd.25.2020.06.16.00.02.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 00:02:25 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: broonie@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, p.zabel@pengutronix.de,
 linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 0/4] spi: bcm63xx: add BMIPS support
Date: Tue, 16 Jun 2020 09:02:19 +0200
Message-Id: <20200616070223.3401282-1-noltari@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_000229_515755_0DE71794 
X-CRM114-Status: UNSURE (   7.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42b listed in]
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

QkNNNjN4eCBTUEkgYW5kIEhTU1BJIGNvbnRyb2xsZXIgYXJlIHByZXNlbnQgb24gc2V2ZXJhbCBC
TUlQUyBTb0NzIChCQ002MzE4LApCQ002MzI4LCBCQ002MzU4LCBCQ002MzYyLCBCQ002MzY4IGFu
ZCBCQ002MzI2OCkuCgp2MzogdXNlIGRldm1fcmVzZXRfY29udHJvbF9nZXRfb3B0aW9uYWxfZXhj
bHVzaXZlCnYyOiB1c2UgZGV2bV9yZXNldF9jb250cm9sX2dldF9leGNsdXNpdmUKCsOBbHZhcm8g
RmVybsOhbmRleiBSb2phcyAoNCk6CiAgc3BpOiBiY202M3h4LXNwaTogYWRkIHJlc2V0IHN1cHBv
cnQKICBzcGk6IGJjbTYzeHgtc3BpOiBhbGxvdyBidWlsZGluZyBmb3IgQk1JUFMKICBzcGk6IGJj
bTYzeHgtaHNzcGk6IGFkZCByZXNldCBzdXBwb3J0CiAgc3BpOiBiY202M3h4LWhzc3BpOiBhbGxv
dyBidWlsZGluZyBmb3IgQk1JUFMKCiBkcml2ZXJzL3NwaS9LY29uZmlnICAgICAgICAgICAgIHwg
IDQgKystLQogZHJpdmVycy9zcGkvc3BpLWJjbTYzeHgtaHNzcGkuYyB8IDE3ICsrKysrKysrKysr
KysrKysrCiBkcml2ZXJzL3NwaS9zcGktYmNtNjN4eC5jICAgICAgIHwgMTcgKysrKysrKysrKysr
KysrKysKIDMgZmlsZXMgY2hhbmdlZCwgMzYgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkK
Ci0tIAoyLjI3LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
