Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A53921F39B7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 13:31:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fwh4m9ur9H5msKynmgF6renjSLpjW+SZ0NrJ+/SWGyA=; b=ktdsCol0aQWHSs
	FpZ/AQfdkm7Pfjva8q1WhiPydErUcWp/Th4q/EPI8bCdxacGaggJ4FjJP4NIidTqb4hONq2M7Invs
	f2jx+7Qvw0F5DGnP8bWNo6agE6jdqtLt5k284ma5rHOyA2e6XOIzwgY5gVQfoJ3+tAZ5OAtS0RbR5
	+pBHP/5hxAojowIRGcOWAAxzOlKJjQ6lYIlWl8Gr5wizG68quWXSP+vS3KV5JB0TIYqzUmnNQvRt7
	Pomh3QHeV5VbmAcNoXmpm8EgZzHuQ9Xsy3X1sFq0XlW0g8qUTsR+shV00zM0QJ7Y5wJZ1pFsCs8/0
	uNZbc1iCv2fU+vKhh/5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jicTE-0002W0-3A; Tue, 09 Jun 2020 11:31:08 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jicSz-0002V6-Jt
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 11:30:54 +0000
Received: by mail-wm1-x341.google.com with SMTP id l17so2495022wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 04:30:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3F1gyxKHBurPb/9ok1v4N24kKX2n+9TWOucrfqchLWY=;
 b=ZsdiY8jl9Jpr1ldvwxYtPVPzIrdk/uVXvx/XPB+EuuPnl0iddkOfSg0IUeV5UH8eoo
 NmfYAGbAplHnt+r3whiyBk9EOsX9cxEoE8cTAJ2hTKrTuqTY8W7jH0LF9lR+DuBpBD92
 ld1KYmLUXdkiG5wGYIwCherT87jGlh49f/3U2Ssz4kags6S8WZ/YLo+aA1BLb/26lY55
 38VUTBcFJ7IEqwxRSv9Lw0EhFZusZmL3Tj3nSBO5BiOVvvOgsbOYz3+PlUY9P4NZF6AD
 YkfgPixw3NQ5Fs8dz4Qt8eDrEPJdIdi1iWzyMC0rNuHpFRbp5QAXkloDKTv2EwDL3oJt
 Zn7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3F1gyxKHBurPb/9ok1v4N24kKX2n+9TWOucrfqchLWY=;
 b=Hrv5MIqtu2kiEjVSAm7/D/mZSgWzdFZSmoVz2WQyt3o8sw/tj7MDMposZQGYuDI8GR
 0BjEvoYMmdaJ3DWGrBogdUaSNG85FwA2pQ3WrqHEN1xEF7yHQLG5YWbH8d6jUOzVjauP
 On45xijk+GtTIEC32eTKBwIo5zRaWBFklwbOFtXmvNgGW4ltTcfHuIkJ47Vl9kf+A30c
 wtbY14xcIII8Uvofogu9qZ1TXDzI2v5cWzFxAtS4YSEpoxmAOeS8jz+6BkjXaCMfdGxf
 y1YEdKLlTLOEkmrgJCc9Pi3QM/49jKMreQa02xu7OVtPOfrebSYzLvHiXXPBal/cUsfn
 znhA==
X-Gm-Message-State: AOAM532nryojWlEvMexoTV3sHq6DPngF1SAUf1qOmpyqt3okjpKGo7jz
 hVSjoT66kyaT+FAxGw3DXoNXt8EjDRkt5g==
X-Google-Smtp-Source: ABdhPJzB5erSGFbNCwsaeqvVH5GDJoZV986EhUW8/5DtXC+UWnt8VGsHXea24ldhT44j5dfcYPiKgg==
X-Received: by 2002:a1c:7305:: with SMTP id d5mr3634968wmb.85.1591702252324;
 Tue, 09 Jun 2020 04:30:52 -0700 (PDT)
Received: from skynet.lan (28.red-83-49-61.dynamicip.rima-tde.net.
 [83.49.61.28])
 by smtp.gmail.com with ESMTPSA id l17sm2609877wmi.16.2020.06.09.04.30.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2020 04:30:51 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 f.fainelli@gmail.com, bcm-kernel-feedback-list@broadcom.com,
 julia.lawall@lip6.fr, f4bug@amsat.org, jonas.gorski@gmail.com,
 lkp@intel.com, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] clk: bcm63xx-gate: add BCM6318 support
Date: Tue,  9 Jun 2020 13:30:47 +0200
Message-Id: <20200609113049.4035426-1-noltari@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_043053_669300_810B1C46 
X-CRM114-Status: UNSURE (   7.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
