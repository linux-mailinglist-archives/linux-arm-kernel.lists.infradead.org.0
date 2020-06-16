Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52EEC1FBD05
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 19:33:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=D8XE01yp/qBY0zyEZ7tKrodTtgXmAIEBAGkAwoPamdg=; b=T8A5Noe9+kyWRv
	Nho3bYDgfkdNQ6lWtl2qpSQFRNdtQoNb3+Uh5T0cQumyelgFgDnwXpxPO3dhALqHFd1gwqAiW0MqO
	PTo1nSVqYog7FI5J7Y+mg0kkmS7ZqktZUCaBmrCsv9sq40SCUfs6wlH9FRF333uywimttWPJzKAUl
	a+gyUZv4QLZVUo+HUtxiaZNQ7HIzhUZR7Af/vOT/8ukbjrPcD1iF9HRHtmbXv1tlb1OGd0PUEZLFe
	YdmEyLGFEui741uaRH2fD7KiJnn+qxKiXd5MZy6By1U28ntF6DSEBgXcF/LtpClR2C/eAXuhLvX1f
	xVA7C4uyVj6VihopsGOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlFS9-0001Cp-JP; Tue, 16 Jun 2020 17:32:53 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlFRx-0001Ba-P4
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 17:32:42 +0000
Received: by mail-wr1-x42e.google.com with SMTP id x6so21592588wrm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 10:32:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1/rWQhYqkKv3AA+tgURnEw8UDH0QpH1z730vDcNorC0=;
 b=u/xL2YRB0FzdzPajA2xmnWxbOTOw2G3go/1daObGY0IJIUSScLcGbBdin4iNgSuX9e
 Jva4FgeQ1lQJn6GMzSo4FRMjnl95o92wHKgTouK7wOUbuFZEeVauKhH+KhJQBO5fB/39
 GpbAdv+IweWl2azYR/uQlzPlXMfjoes+jbuxv7rOWQtpPjypRf10RnuwJsUVUJ4aVUzu
 j6VJBsr5DjJB76bl0s61OH8YfBZkYthVTnobJKNfxxMQi7cxqZCajszGy8jesnGi9rNK
 Ui4FflTZQTtT+7CrC74aEoSy4AkYTZ6ryjENBQmSN7Fzt9FbwunIRNKZTaB1cD77b7rA
 2jQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1/rWQhYqkKv3AA+tgURnEw8UDH0QpH1z730vDcNorC0=;
 b=kY4Ay84kAbwlyiveXy02pXkdCmSWKcKJ1fRKhi93eas6wt7py0O+h5GeLgLVYsAtOg
 1KmUOvhS9uFv2ocaTHRYW93r5INmh0KRLbrVV2lAKlTTU5NAx3V4jCYP7FXALVCcJnOk
 Hk2Ft56q7o8jLJje1nMfWowI6bym1DKtUJTVenJO/6jJKxQoNX10irzvzuEjOJt6I3Ds
 xZB2RdeECNGC5bkm1xGxNnlgGsDgaVgfYM0f6YmUaqJaeh8XxWq0demZU2ovnb6hQBsh
 RCIkMqdBYf8YmhfQyfCfKGwb1lWnIK5kEOZmPdBJ3KyUQ3KDM9S242LFg6LqCynPAk8T
 j1GQ==
X-Gm-Message-State: AOAM532Fzd83aZhPAgAhRLHud5EhjQ3WB8maX472m6uTMwQhHO1Gl8lQ
 P1MiD69iHW6I2MPBiluR5Ck=
X-Google-Smtp-Source: ABdhPJyLeoPqvD4+LxPE8fop2SvP4lmtgPFmNzRCmlzyHx4LIzbvjTK3qbGPiobkMsX74O3NXPiqkA==
X-Received: by 2002:adf:e84e:: with SMTP id d14mr4046243wrn.31.1592328758604; 
 Tue, 16 Jun 2020 10:32:38 -0700 (PDT)
Received: from skynet.lan (90.red-88-20-62.staticip.rima-tde.net.
 [88.20.62.90])
 by smtp.gmail.com with ESMTPSA id f16sm5014402wmh.27.2020.06.16.10.32.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 10:32:38 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: broonie@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, p.zabel@pengutronix.de,
 linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 0/2] spi: bcm63xx: add BMIPS support
Date: Tue, 16 Jun 2020 19:32:33 +0200
Message-Id: <20200616173235.3473149-1-noltari@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_103241_834916_94530162 
X-CRM114-Status: UNSURE (   6.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42e listed in]
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
ZCBCQ002MzI2OCkuCgp2NDogc2ltcGxpZnkgZGV2bV9yZXNldF9jb250cm9sX2dldF9vcHRpb25h
bF9leGNsdXNpdmUgcmV0dXJuIGhhbmRsaW5nCnYzOiB1c2UgZGV2bV9yZXNldF9jb250cm9sX2dl
dF9vcHRpb25hbF9leGNsdXNpdmUKdjI6IHVzZSBkZXZtX3Jlc2V0X2NvbnRyb2xfZ2V0X2V4Y2x1
c2l2ZQoKw4FsdmFybyBGZXJuw6FuZGV6IFJvamFzICgyKToKICBzcGk6IGJjbTYzeHgtc3BpOiBh
ZGQgcmVzZXQgc3VwcG9ydAogIHNwaTogYmNtNjN4eC1oc3NwaTogYWRkIHJlc2V0IHN1cHBvcnQK
CiBkcml2ZXJzL3NwaS9zcGktYmNtNjN4eC1oc3NwaS5jIHwgMTIgKysrKysrKysrKysrCiBkcml2
ZXJzL3NwaS9zcGktYmNtNjN4eC5jICAgICAgIHwgMTIgKysrKysrKysrKysrCiAyIGZpbGVzIGNo
YW5nZWQsIDI0IGluc2VydGlvbnMoKykKCi0tIAoyLjI3LjAKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
