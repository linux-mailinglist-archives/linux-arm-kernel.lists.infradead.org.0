Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 420F59D329
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 17:41:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qHvGT8yPXxOpn7TuW05xf15YkQrBU4VZ0QuddTsTV6E=; b=PF9jTGFn3qAVVB
	gdJcycDIRAP453varO0Y1UdkJjdkn9kZ2ePB35kb29j7jdwLZzZUuKKAwQkxp562+IVPRQg7LBKab
	A3TY6JFcQCHHhwAlSrk/HFYUc8+x20jd5IvGtXeuNSwvapLbufF0EqfmnYEEQqC34QEe3e9hBp12x
	z1GQQDq3sEyzqCOr5DmNlB9B/B0RHBx6yXc1ioNzOhDlrR1zKmR0+1bvvMr1VR8nG/0hCQXdOIsHG
	Qx20sCP3Sz/djNefYwArmD/mh1Y7zHnYC1NwT94WB4BZIOvnrL0YUeifsg1IB9YANweMHcTedQfiK
	a3k4gum3rVDR2jW1t7pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2H7Z-0005rz-HT; Mon, 26 Aug 2019 15:41:29 +0000
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2H53-0002q0-O2
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 15:38:55 +0000
Received: by mail-wr1-f65.google.com with SMTP id y8so15759223wrn.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 08:38:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2dEBK2/0QEjcEIbTow6H8atvD57XckSzsqrktuuuwiQ=;
 b=jF+TUwREtJBz0rVJHJ1GhVbLzrOAc6DdFfcLqxFTG0BtRZmU9OsfugwEdWW9Bh0LtU
 z5uGAim8mVWbKK3MbmdMLHBZM2HPciSGsDJi0QpDEhAhXaMxLPGVujmX0bZ6eBaYLt7/
 xC7oU+9J//qAEmmZErtCL6Hudh2zHlx7RD9Wcv0ZNtvGXEBPOmSKFFdukXpmGrCoTA98
 hHuLE7q8YutLDynEktUTU7JcPhrQa62fjJwZIJY7zsPj/5pGXcQCw4ETPBE1veoB8LHG
 zUCzSfM4XA5tKcl8p4iEeXMd/VPUe14T83W0X6PSRyni1L2Kzx+nd1xnYofCPwWDCtaf
 gIww==
X-Gm-Message-State: APjAAAVZrsXbrfqHGmqbPosOQpPPnv4ukbNvqSLi2M24xP5q9MYqWC7K
 VSJI1R/49qIepawMfboVl5k=
X-Google-Smtp-Source: APXvYqwjXotGvt0EQ3krMpcIpOWZidN92OK/jBtmB2hqylriN76aoWIA6r+Xj3p2ErKfcs5YQG1CBQ==
X-Received: by 2002:a5d:63d0:: with SMTP id c16mr23237426wrw.22.1566833932617; 
 Mon, 26 Aug 2019 08:38:52 -0700 (PDT)
Received: from 1aq-andre.garage.tyco.com ([77.107.218.170])
 by smtp.gmail.com with ESMTPSA id z8sm11580798wru.13.2019.08.26.08.38.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 08:38:52 -0700 (PDT)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 10/12] ARM: dts: imx7d: cl-som-imx7: add WiLink8 WLAN support
Date: Mon, 26 Aug 2019 16:37:58 +0100
Message-Id: <20190826153800.35400-10-git@andred.net>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190826153800.35400-1-git@andred.net>
References: <20190826153800.35400-1-git@andred.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_083853_991030_AAEDC659 
X-CRM114-Status: GOOD (  14.28  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andre.draszik[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

YWRkIC8gZW5hYmxlIFRJJ3MgV2lMaW5rOCBXTEFOIG1vZHVsZSBvbiBTRElPMi4KCk5vdGVzOgoq
IHBvd2VyIGlzIGFsd2F5cyBlbmFibGVkIChiZWNhdXNlIG9mIGJsdWV0b290aCkKKiB0aGUgZG93
bnN0cmVhbSBkZWxheSBvZiA3MG1zIGFmdGVyIHBvd2VyLW9uCiAgZG9lc24ndCBzZWVtIHRvIHJl
bGlhYmx5IHdvcmssIGhlbmNlIGl0IHdhcwogIGJ1bXBlZCB0byA3MDBtcwoKU2lnbmVkLW9mZi1i
eTogQW5kcsOpIERyYXN6aWsgPGdpdEBhbmRyZWQubmV0PgpDYzogSWx5YSBMZWR2aWNoIDxpbHlh
QGNvbXB1bGFiLmNvLmlsPgpDYzogSWdvciBHcmluYmVyZyA8Z3JpbmJlcmdAY29tcHVsYWIuY28u
aWw+CkNjOiBSb2IgSGVycmluZyA8cm9iaCtkdEBrZXJuZWwub3JnPgpDYzogTWFyayBSdXRsYW5k
IDxtYXJrLnJ1dGxhbmRAYXJtLmNvbT4KQ2M6IFNoYXduIEd1byA8c2hhd25ndW9Aa2VybmVsLm9y
Zz4KQ2M6IFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5ndXRyb25peC5kZT4KQ2M6IFBlbmd1dHJv
bml4IEtlcm5lbCBUZWFtIDxrZXJuZWxAcGVuZ3V0cm9uaXguZGU+CkNjOiBGYWJpbyBFc3RldmFt
IDxmZXN0ZXZhbUBnbWFpbC5jb20+CkNjOiBOWFAgTGludXggVGVhbSA8bGludXgtaW14QG54cC5j
b20+CkNjOiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZwpDYzogbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCi0tLQogYXJjaC9hcm0vYm9vdC9kdHMvaW14N2QtY2wtc29tLWlt
eDcuZHRzIHwgNjAgKysrKysrKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDYw
IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9pbXg3ZC1jbC1z
b20taW14Ny5kdHMgYi9hcmNoL2FybS9ib290L2R0cy9pbXg3ZC1jbC1zb20taW14Ny5kdHMKaW5k
ZXggYTE2Y2JiMDcwYTEyLi40Y2IzNmRlY2VmM2QgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3Qv
ZHRzL2lteDdkLWNsLXNvbS1pbXg3LmR0cworKysgYi9hcmNoL2FybS9ib290L2R0cy9pbXg3ZC1j
bC1zb20taW14Ny5kdHMKQEAgLTI4LDYgKzI4LDI0IEBACiAJCWNvbXBhdGlibGUgPSAic21zYyx1
c2IzNTAzIjsKIAkJcmVzZXQtZ3Bpb3MgPSA8JnBjYTk1NTUgNiBHUElPX0FDVElWRV9MT1c+Owog
CX07CisKKwlwd3JzZXFfdGlfd2lmaTogdGktd2lmaS1wd3JzZXEgeworCQljb21wYXRpYmxlID0g
Im1tYy1wd3JzZXEtc2ltcGxlIjsKKwkJcmVzZXQtZ3Bpb3MgPSA8JnBjYTk1NTUgMCBHUElPX0FD
VElWRV9MT1c+OworCQlwb3N0LXBvd2VyLW9uLWRlbGF5LW1zID0gPDcwMD47CisJCS8qIDEwzrxz
IGR1cmluZyBzaHV0ZG93biwgYnV0IDYwzrxzIGJldHdlZW4gdHdvIGVuYWJsZXMgKi8KKwkJcG93
ZXItb2ZmLWRlbGF5LXVzID0gIjYwIjsKKwl9OworCisJcmVnX3RpX3dpZmk6IHJlZ3VsYXRvci10
aS13aWZpIHsKKwkJY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOworCQlyZWd1bGF0b3It
bmFtZSA9ICJ3aWxpbmstcmVndWxhdG9yIjsKKwkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8
MzMwMDAwMD47CisJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDMzMDAwMDA+OworCQlncGlv
ID0gPCZwY2E5NTU1IDkgR1BJT19BQ1RJVkVfSElHSD47CisJCWVuYWJsZS1hY3RpdmUtaGlnaDsK
KwkJcmVndWxhdG9yLWFsd2F5cy1vbjsKKwl9OwogfTsKIAogJmNwdTAgewpAQCAtMjMyLDYgKzI1
MCwzMSBAQAogCXN0YXR1cyA9ICJva2F5IjsKIH07CiAKKyZ1c2RoYzIgeworCXBpbmN0cmwtbmFt
ZXMgPSAiZGVmYXVsdCI7CisJcGluY3RybC0wID0gPCZwaW5jdHJsX3VzZGhjMj47CisJYnVzLXdp
ZHRoID0gPDQ+OworCW5vLTEtOC12OworCWtlZXAtcG93ZXItaW4tc3VzcGVuZDsKKwl3YWtldXAt
c291cmNlOworCXZtbWMtc3VwcGx5ID0gPCZyZWdfdGlfd2lmaT47CisJbW1jLXB3cnNlcSA9IDwm
cHdyc2VxX3RpX3dpZmk+OworCW5vbi1yZW1vdmFibGU7CisJY2FwLXBvd2VyLW9mZi1jYXJkOwor
CXN0YXR1cyA9ICJva2F5IjsKKworCSNhZGRyZXNzLWNlbGxzID0gPDE+OworCSNzaXplLWNlbGxz
ID0gPDA+OworCXdsY29yZTogd2xjb3JlQDIgeworCQljb21wYXRpYmxlID0gInRpLHdsMTgzNSI7
CisJCXJlZyA9IDwyPjsKKwkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKKwkJcGluY3RybC0w
ID0gPCZwaW5jdHJsX3VzZGhjMl93bGNvcmU+OworCQlpbnRlcnJ1cHQtcGFyZW50ID0gPCZncGlv
MT47CisJCWludGVycnVwdHMgPSA8MTUgSVJRX1RZUEVfTEVWRUxfSElHSD47CisJfTsKK307CisK
ICZ1c2RoYzMgewogCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7CiAJcGluY3RybC0wID0gPCZw
aW5jdHJsX3VzZGhjMz47CkBAIC0zMDgsNiArMzUxLDIzIEBACiAJCT47CiAJfTsKIAorCXBpbmN0
cmxfdXNkaGMyOiB1c2RoYzJncnAgeworCQlmc2wscGlucyA9IDwKKwkJCU1YN0RfUEFEX1NEMl9D
TURfX1NEMl9DTUQJCTB4NTkKKwkJCU1YN0RfUEFEX1NEMl9DTEtfX1NEMl9DTEsJCTB4MTkKKwkJ
CU1YN0RfUEFEX1NEMl9EQVRBMF9fU0QyX0RBVEEwCQkweDU5CisJCQlNWDdEX1BBRF9TRDJfREFU
QTFfX1NEMl9EQVRBMQkJMHg1OQorCQkJTVg3RF9QQURfU0QyX0RBVEEyX19TRDJfREFUQTIJCTB4
NTkKKwkJCU1YN0RfUEFEX1NEMl9EQVRBM19fU0QyX0RBVEEzCQkweDU5CisJCT47CisJfTsKKwor
CXBpbmN0cmxfdXNkaGMyX3dsY29yZTogdXNkaGMyd2xjb3JlZ3JwIHsKKwkJZnNsLHBpbnMgPSA8
CisJCQlNWDdEX1BBRF9HUElPMV9JTzE1X19HUElPMV9JTzE1CQkweDM0CisJCT47CisJfTsKKwog
CXBpbmN0cmxfdXNkaGMzOiB1c2RoYzNncnAgewogCQlmc2wscGlucyA9IDwKIAkJCU1YN0RfUEFE
X1NEM19DTURfX1NEM19DTUQJCTB4NTkKLS0gCjIuMjMuMC5yYzEKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
