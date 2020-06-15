Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F3671F9339
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 11:22:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Aet55qf6G7sIt6hgpVn0LfqcWf1hxdmEzi2DtDgDSeg=; b=u9rEhuv3LcmENF
	7E5Gbiz/vvo/ZXraScs1/ULuU5t83da/wqbVre/a0RSSWOX9e3Ty3aoLlcvsAu12gWdObTUmfzDRM
	ejvjmqvfu6wSg52EZxuR9poK4vLm44DX3hNyz2l4F0R5VeCY25Kgh839r8cbcsfMhK/VfYDOfives
	cER8VUN1trM9dQSmNJnQcq0el6mgC3SHwoL2Rr1gNQ5/aHBkjAoj5RyQEnUUlAxfPvSxMNPAi5A/z
	5dDwYDPcd0VsWJvp7WQLADympcJrxSKRakUgB3MkqrnByryOmASfjkkJbEIsCgdNsDLCc/wQok8mW
	lQ9ZYvlTui77PI//iEkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jklJo-0007XR-Af; Mon, 15 Jun 2020 09:22:16 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkl7j-0006nu-KV
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 09:09:59 +0000
Received: by mail-wr1-x436.google.com with SMTP id e1so16286048wrt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 02:09:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wWe0dPSepbRkhIrx/P9OFbxlWpLX58b/aaaTuIJ8EVM=;
 b=K1lDEnnWOpcbHlNK13IscIis9/Te0HddSGIP7HnTFsMt7pqvq5BBlytlsGQy2+jsQB
 VHKMhhLmZH5tvVwfDznXMwihpgBkezZVyufBSF4xLD6l0qJoE7HtgnDAYyX/tZKvpyJf
 sbyHb4Wb3y5r3BOIYnnrsxWfWiu7ZiwnGUhjJNARuGNOhrze/e5hFC5DwqqwxPtxZmul
 OpbpqjlEmZ6aF7rJXmhXZLZU30EXDfV4vh4YkSxY6aoEfsvkFTI5RYEB/VUDB05NWCxm
 RzC4pr/UIrwIUgEixToDYnfErKKPBmhF7QhFvqkRB6mVCbNBXxgvjxcZ8sv3ZkaKYytd
 dfOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wWe0dPSepbRkhIrx/P9OFbxlWpLX58b/aaaTuIJ8EVM=;
 b=tJIGFnc9wfh43S62pGX60509jfBSciRwKVuek2G192W7CBfP1JOov61HC9vUfSWse9
 oZLp5ZsIj5ZMV5UEP6MZtGIs3tN/4fJEnNQThKER7kk7QIitUpLso2aonkeUcnHg0OgZ
 nDfoOHE25J3/Fr5D+5dbK7bsVD1IBMIAGtJ7GTlnvtGN40z64kwZOTCH5Ibti9QnvHOv
 5n6B8mMybqB+h26JTS+eECaVSa+/SYt3Th3uyEajDTtEztXHFC5sxfQ9srH6vz96LPbW
 7+uEiOxUv4ysPZ7l6NA00BpNXB35EF/4bG+bnpswgEhEJ7PublSZDwDpcMwD7iXbzhth
 sRgw==
X-Gm-Message-State: AOAM530e5kq/nP6kQjiORqFtL0CFjCMLXlpLIqeRQ2ChO76gAwsSn+sj
 QRYEdnAl8FPi2RqPV2T/86s=
X-Google-Smtp-Source: ABdhPJy16EawT2d8WoSHLA3avvLM4HBMOaqYQGYYaOFDz6vtilAsoS0fwcwoqIg8DSXB4x3S3mAbrg==
X-Received: by 2002:a5d:428e:: with SMTP id k14mr27556780wrq.21.1592212185663; 
 Mon, 15 Jun 2020 02:09:45 -0700 (PDT)
Received: from skynet.lan (168.red-88-20-188.staticip.rima-tde.net.
 [88.20.188.168])
 by smtp.gmail.com with ESMTPSA id z7sm23109370wrt.6.2020.06.15.02.09.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 02:09:45 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: broonie@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, p.zabel@pengutronix.de,
 linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/4] spi: bcm63xx: add BMIPS support
Date: Mon, 15 Jun 2020 11:09:39 +0200
Message-Id: <20200615090943.2936839-1-noltari@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200615080309.2897694-1-noltari@gmail.com>
References: <20200615080309.2897694-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_020947_690293_32A37BE9 
X-CRM114-Status: UNSURE (   8.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:436 listed in]
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
ZCBCQ002MzI2OCkuCgp2MjogdXNlIGRldm1fcmVzZXRfY29udHJvbF9nZXRfZXhjbHVzaXZlCgrD
gWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgKDQpOgogIHNwaTogYmNtNjN4eC1zcGk6IGFkZCByZXNl
dCBzdXBwb3J0CiAgc3BpOiBiY202M3h4LXNwaTogYWxsb3cgYnVpbGRpbmcgZm9yIEJNSVBTCiAg
c3BpOiBiY202M3h4LWhzc3BpOiBhZGQgcmVzZXQgc3VwcG9ydAogIHNwaTogYmNtNjN4eC1oc3Nw
aTogYWxsb3cgYnVpbGRpbmcgZm9yIEJNSVBTCgogZHJpdmVycy9zcGkvS2NvbmZpZyAgICAgICAg
ICAgICB8ICA0ICsrLS0KIGRyaXZlcnMvc3BpL3NwaS1iY202M3h4LWhzc3BpLmMgfCAxNyArKysr
KysrKysrKysrKysrKwogZHJpdmVycy9zcGkvc3BpLWJjbTYzeHguYyAgICAgICB8IDE3ICsrKysr
KysrKysrKysrKysrCiAzIGZpbGVzIGNoYW5nZWQsIDM2IGluc2VydGlvbnMoKyksIDIgZGVsZXRp
b25zKC0pCgotLSAKMi4yNy4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
