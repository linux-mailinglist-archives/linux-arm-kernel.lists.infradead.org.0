Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52D6314E9B0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 09:44:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sm6FElvFFWDWmN0oFciBuR4/mtAyg+KMdB5LCY4xu5g=; b=gg46fd5EnBGDv+
	FrejFWn2xYo8E6IGJA56i2QekwyJP6Mk2HOFsr/GJMtmi8kG2jRLUoO7uuE0XGySWPWBGwKqL98lr
	yXAtr5hjasVXbKrZs49ERjvfjcmlR/LXGnVeWA1JCcYwlJbGo03RLRVYADAEFxND0+0PN/zfk8/Ul
	YdlN+ZE5giNYRdLlfIu/L1317I6jpCwnpwLd+TxgIov76jncW9/TXQk0HYgFAgg6KANg4Cu61MJAO
	gQZpIyr7wVumMcAa87sPRxvfdXeUkAq9KJczqpqloRRz9goC7tpO52kAWb2fFUGBRPPmU8GpEwOd9
	KPXqeYNrmfKFWaUha/Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixRuD-000071-AO; Fri, 31 Jan 2020 08:44:01 +0000
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixRsF-0006hE-UZ
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 08:42:01 +0000
Received: by mail-wm1-f65.google.com with SMTP id p9so6945250wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 Jan 2020 00:41:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1rCIaYhy19uhXqC3cBNmvWggUiwiZruQsnEVhDd61mE=;
 b=fZsMFb+dgUoYcDAGQrrDFiW6xqEVRBi3rwzimK+4FMovA7nelSfnx79uLJDo+OAF0k
 ObIGgdEpIbyFN0QuglVjmCUdXrWhcZRxWIxWMYlXbQcNrgX+FwAYgTD9qAMh3A23qdyf
 uwknY5zIYdxJSYvhmdGv0vA/sKE3OzobkQyr5jqzhOj9c5DaOHNJ6D2dMKQ7kogv65ZK
 V6nio7WxNBC+s+RqOTpZM9/HgyNN4F4E4Cf9fGLzIVMQe8puBvMiWR83Wf9WR5/TN3b9
 HfWc2kHxwJ0ACrCl5vMh0yiWxd2D8SpM2+Tthh26dbgW77GPQ7KbAQMGmsOoQLjFehzJ
 pufg==
X-Gm-Message-State: APjAAAV7uZfiMbnP+QM+cXBEthTeDX6Hz65reSCzMeX8w4HbK7/1yB34
 UnzNnbXmaJqAwzkyJ0MU3L02kD2hCzI=
X-Google-Smtp-Source: APXvYqypc6MF6QgCbmPRGX+Y/IH0R/dp9yLZXlhDd9OMREV7VANLITul+BVlNBUSXC75nGwIZHUBxQ==
X-Received: by 2002:a1c:8095:: with SMTP id b143mr10365919wmd.7.1580460118795; 
 Fri, 31 Jan 2020 00:41:58 -0800 (PST)
Received: from 1aq-andre.garage.tyco.com ([77.107.218.170])
 by smtp.gmail.com with ESMTPSA id x7sm11034302wrq.41.2020.01.31.00.41.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 31 Jan 2020 00:41:58 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 09/12] ARM: dts: imx7d: cl-som-imx7: add SMSC USB3503 usb
 hub
Date: Fri, 31 Jan 2020 08:36:35 +0000
Message-Id: <20200131083638.6118-9-git@andred.net>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20200131083638.6118-1-git@andred.net>
References: <20200131083638.6118-1-git@andred.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_004200_010382_0E8C62D8 
X-CRM114-Status: GOOD (  12.39  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.65 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andre.draszik[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

QXMgcGVyIHRoZSBTb00gZGVzaWduLCBhZGQgdGhlIFNNU0MgVVNCMzUwMyB0aGF0IGlzCnVzZWQg
YXMgYSBQSFkgaW4gaGFyZHdhcmUtb25seSBtb2RlLCBjb25uZWN0ZWQKdG8gdGhlIGlteDdkJ3Mg
JnVzYmggaW50ZXJmYWNlLCBwcm92aWRpbmcgYWRkaXRpb25hbApVU0IgcG9ydHMgZm9yIFVTQiBh
bmQgbWluaS1QQ0llLgoKU2lnbmVkLW9mZi1ieTogQW5kcsOpIERyYXN6aWsgPGdpdEBhbmRyZWQu
bmV0PgpDYzogSWx5YSBMZWR2aWNoIDxpbHlhQGNvbXB1bGFiLmNvLmlsPgpDYzogSWdvciBHcmlu
YmVyZyA8Z3JpbmJlcmdAY29tcHVsYWIuY28uaWw+CkNjOiBSb2IgSGVycmluZyA8cm9iaCtkdEBr
ZXJuZWwub3JnPgpDYzogTWFyayBSdXRsYW5kIDxtYXJrLnJ1dGxhbmRAYXJtLmNvbT4KQ2M6IFNo
YXduIEd1byA8c2hhd25ndW9Aa2VybmVsLm9yZz4KQ2M6IFNhc2NoYSBIYXVlciA8cy5oYXVlckBw
ZW5ndXRyb25peC5kZT4KQ2M6IFBlbmd1dHJvbml4IEtlcm5lbCBUZWFtIDxrZXJuZWxAcGVuZ3V0
cm9uaXguZGU+CkNjOiBGYWJpbyBFc3RldmFtIDxmZXN0ZXZhbUBnbWFpbC5jb20+CkNjOiBOWFAg
TGludXggVGVhbSA8bGludXgtaW14QG54cC5jb20+CkNjOiBkZXZpY2V0cmVlQHZnZXIua2VybmVs
Lm9yZwpDYzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCi0tLQogYXJjaC9h
cm0vYm9vdC9kdHMvaW14N2QtY2wtc29tLWlteDcuZHRzIHwgNiArKysrKysKIDEgZmlsZSBjaGFu
Z2VkLCA2IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9pbXg3
ZC1jbC1zb20taW14Ny5kdHMgYi9hcmNoL2FybS9ib290L2R0cy9pbXg3ZC1jbC1zb20taW14Ny5k
dHMKaW5kZXggZjgwYmU4NTViNGVjLi5hMTZjYmIwNzBhMTIgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJt
L2Jvb3QvZHRzL2lteDdkLWNsLXNvbS1pbXg3LmR0cworKysgYi9hcmNoL2FybS9ib290L2R0cy9p
bXg3ZC1jbC1zb20taW14Ny5kdHMKQEAgLTIyLDYgKzIyLDEyIEBACiAJCWRldmljZV90eXBlID0g
Im1lbW9yeSI7CiAJCXJlZyA9IDwweDgwMDAwMDAwIDB4MTAwMDAwMDA+OyAvKiAyNTYgTUIgLSBt
aW5pbWFsIGNvbmZpZ3VyYXRpb24gKi8KIAl9OworCisJLyogU01TQyBVU0IzNTAzIGNvbm5lY3Rl
ZCB0byAmdXNiaCAqLworCXVzYl9odWI6IHVzYi1odWIgeworCQljb21wYXRpYmxlID0gInNtc2Ms
dXNiMzUwMyI7CisJCXJlc2V0LWdwaW9zID0gPCZwY2E5NTU1IDYgR1BJT19BQ1RJVkVfTE9XPjsK
Kwl9OwogfTsKIAogJmNwdTAgewotLSAKMi4yMy4wLnJjMQoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
