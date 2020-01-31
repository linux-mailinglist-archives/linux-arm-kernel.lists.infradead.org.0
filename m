Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 416D914E9A4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 09:42:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z2BvVDpKrr8bYf/wFAPQaYoeRVLUsYvnhF3lbKQz+9c=; b=Wy3ylb2j3V+CfC
	otnBcsn3UimWjYja/NHUbRENYk7lhGL9izuhT1cPea0JHnT1xo7l6Rx3VMtU6v1Ls6xb7YnTVlD6s
	OaS/CwWyVGGefRCeJiNsIkhBSJM2OrvstBBDFzVGO/nhZ3cjdsQGBq68ObuuIHmsQqPiuGjPUGB96
	Wb61WijqMIoWAAUleQzXzVKaGPmjnFF5uBE2HP8zJn5ply5yUHbaFZ0bU/g4ZdYrpQWztJ2OvLW9Z
	E3uoQffhU6hDTOEJVwIF9xsKu67COGpl1qBzrD36XQAVqBP0SW8YGw7f6kkIQjoqWrT7BtqFGKv/i
	5INIoiXxSefVjn2eud+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixRt1-00076g-MO; Fri, 31 Jan 2020 08:42:47 +0000
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixRsB-0006ct-LF
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 08:41:57 +0000
Received: by mail-wr1-f65.google.com with SMTP id a6so7544220wrx.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 Jan 2020 00:41:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=a4whMVybYrFM/VJAJPt+RDbk4EyD/C4nT92WrUXXMMQ=;
 b=PElEgV5VK+aiZtiYNArkmdLfqyohq034pxgmBDxVFiF5GVwBvJXfrl+sRHmES7DMws
 cnbY4BCNz150Iw40r3QHXCiIQWiX9qECMYawhGyR8WvIBqjuTiy0TDO0V4Z8qZOtYGBV
 jF0vMTsl3GM1f0Tofh814tEJUNTyeb7IUmKDMl1S6VCESf2hh7FahX1QZgUu2cGNz/i6
 rCv65OH98s4PL9x+XjT6Eymrcbt1GIMgcojXKmCzwKztnMAbEhHQ2lSLuGEpzODFk04h
 orFAuGGLAHt0QDg62DvZ9Fn+05YjLvYG/0MFv1xfNKE+XI9GB/+tw5pldiA9vWTPADYD
 deGw==
X-Gm-Message-State: APjAAAW0OASR7xt+0nUpseKniQi3DSXZhaFMuX6FE1irYPtII8ABiD4/
 U0AaV4q5iSIM9CoX9e+n51M=
X-Google-Smtp-Source: APXvYqwVssG86O2ErBa6n9RNwfEo2zbOuBOpqzLbdB2yNiTtwkz3BXzSwlTSq0J98OUyvSyrwBqSug==
X-Received: by 2002:adf:e483:: with SMTP id i3mr10556484wrm.215.1580460113362; 
 Fri, 31 Jan 2020 00:41:53 -0800 (PST)
Received: from 1aq-andre.garage.tyco.com ([77.107.218.170])
 by smtp.gmail.com with ESMTPSA id x7sm11034302wrq.41.2020.01.31.00.41.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 31 Jan 2020 00:41:52 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 04/12] ARM: dts: imx7d: cl-som-imx7: add emmicro, em3027 RTC
Date: Fri, 31 Jan 2020 08:36:30 +0000
Message-Id: <20200131083638.6118-4-git@andred.net>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20200131083638.6118-1-git@andred.net>
References: <20200131083638.6118-1-git@andred.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_004155_705209_864EC34F 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andre.draszik[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Igor Grinberg <grinberg@compulab.co.il>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Ilya Ledvich <ilya@compulab.co.il>,
 NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

YWRkL2VuYWJsZSBSVEMgc3VwcG9ydCB1c2luZyB0aGUgb24tYm9hcmQgRU0zMDI3IHJlYWwgdGlt
ZQpjbG9jayBvbiBpMmMyLgoKU2lnbmVkLW9mZi1ieTogQW5kcsOpIERyYXN6aWsgPGdpdEBhbmRy
ZWQubmV0PgpDYzogSWx5YSBMZWR2aWNoIDxpbHlhQGNvbXB1bGFiLmNvLmlsPgpDYzogSWdvciBH
cmluYmVyZyA8Z3JpbmJlcmdAY29tcHVsYWIuY28uaWw+CkNjOiBSb2IgSGVycmluZyA8cm9iaCtk
dEBrZXJuZWwub3JnPgpDYzogTWFyayBSdXRsYW5kIDxtYXJrLnJ1dGxhbmRAYXJtLmNvbT4KQ2M6
IFNoYXduIEd1byA8c2hhd25ndW9Aa2VybmVsLm9yZz4KQ2M6IFNhc2NoYSBIYXVlciA8cy5oYXVl
ckBwZW5ndXRyb25peC5kZT4KQ2M6IFBlbmd1dHJvbml4IEtlcm5lbCBUZWFtIDxrZXJuZWxAcGVu
Z3V0cm9uaXguZGU+CkNjOiBGYWJpbyBFc3RldmFtIDxmZXN0ZXZhbUBnbWFpbC5jb20+CkNjOiBO
WFAgTGludXggVGVhbSA8bGludXgtaW14QG54cC5jb20+CkNjOiBkZXZpY2V0cmVlQHZnZXIua2Vy
bmVsLm9yZwpDYzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCi0tLQogYXJj
aC9hcm0vYm9vdC9kdHMvaW14N2QtY2wtc29tLWlteDcuZHRzIHwgNSArKysrKwogMSBmaWxlIGNo
YW5nZWQsIDUgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2lt
eDdkLWNsLXNvbS1pbXg3LmR0cyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDdkLWNsLXNvbS1pbXg3
LmR0cwppbmRleCBlYzgyZjQ3MzhjNGYuLjQ4MWJkMzk3MWM1NSAxMDA2NDQKLS0tIGEvYXJjaC9h
cm0vYm9vdC9kdHMvaW14N2QtY2wtc29tLWlteDcuZHRzCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRz
L2lteDdkLWNsLXNvbS1pbXg3LmR0cwpAQCAtMTgxLDYgKzE4MSwxMSBAQAogCQlyZWcgPSA8MHg1
MD47CiAJCXBhZ2VzaXplID0gPDE2PjsKIAl9OworCisJcnRjQDU2IHsKKwkJY29tcGF0aWJsZSA9
ICJlbW1pY3JvLGVtMzAyNyI7CisJCXJlZyA9IDwweDU2PjsKKwl9OwogfTsKIAogJnVhcnQxIHsK
LS0gCjIuMjMuMC5yYzEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
