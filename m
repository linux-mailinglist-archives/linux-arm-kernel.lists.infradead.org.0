Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8764114E9B1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 09:44:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qHvGT8yPXxOpn7TuW05xf15YkQrBU4VZ0QuddTsTV6E=; b=MA8CZ1lctI0jjY
	snfvA2GNS4e4e/EKX56mjdZ9xVg5EZ+JUISWUG2tTi6WdlQW1ffEmiMUzC5Xs6lTf6gsR8jXeYoas
	jt3BdsDnVha3eSqYn5ZJITPKqJDWDMthnbd1eFPznzkFkzXjrBomj/dLr8ucjH6E34DziGge9tLGX
	lR2OwNlaruTEL6jP/8xVOI/+VaxfY0jxr5BHQTVzE36dze8h1QmXlhZICXusqiq5k1BCrrnM7hJUD
	KDPd4zC5DZavDrgf/knrJtCySyaNKB16vGbENHNvNZs3y5mvQOuh/XFaxLPra8mACvXGIOqSQtcP4
	3xUJui0TM4ZMW2G5FCeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixRuN-0000Le-KS; Fri, 31 Jan 2020 08:44:11 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixRsH-0006iN-1Z
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 08:42:02 +0000
Received: by mail-wm1-f66.google.com with SMTP id t14so7694722wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 Jan 2020 00:42:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2dEBK2/0QEjcEIbTow6H8atvD57XckSzsqrktuuuwiQ=;
 b=uepTS7YjwQAo4N4aXsEhtOY2NRA3gJaKeWliWn5cnqsV4i/T/VN9+nZttZKnUOl2XA
 +3RBUh7+HAqzRWS6CckWMyVe3+2HILH1ir7qCgw7OI2qdr3SNnt93FwplbuH11b7mvvh
 0Kx0qvmwkzqWQ61hy0VH3mldJmZIw+biCJqj4pOBwG6JfJlaq4Lyx0Vx80ncpDzciDaF
 DtukWbxblrvlQoJ+iKhGTot1cv52uXqZpAG5O1+KmJIxOffLDb9U3Zg5DzNwyWM0GY5a
 KS18OUwmVAcjUgMrPzpDLD6DWPFow9DhXRkIvDTnjGSIUP2wQRRtQMREWa/7iSQ1Nb1K
 DwBQ==
X-Gm-Message-State: APjAAAUdwVB4WyHpNoXcPzOq/GfbNIHELeu34vzBlnUaDccYsp8oRbTW
 MSwtqojSUKzrPRvq+eP0qtE=
X-Google-Smtp-Source: APXvYqyHY3SsN8sdxcNTZKwuYJH0cgDW0nY1gVdu6YC/r1hZq5mTO/Ua3IXVS/iQwDDxxCzDvFMN6w==
X-Received: by 2002:a1c:6389:: with SMTP id
 x131mr11106584wmb.155.1580460119746; 
 Fri, 31 Jan 2020 00:41:59 -0800 (PST)
Received: from 1aq-andre.garage.tyco.com ([77.107.218.170])
 by smtp.gmail.com with ESMTPSA id x7sm11034302wrq.41.2020.01.31.00.41.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 31 Jan 2020 00:41:59 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 10/12] ARM: dts: imx7d: cl-som-imx7: add WiLink8 WLAN
 support
Date: Fri, 31 Jan 2020 08:36:36 +0000
Message-Id: <20200131083638.6118-10-git@andred.net>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20200131083638.6118-1-git@andred.net>
References: <20200131083638.6118-1-git@andred.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_004201_105181_3C019E62 
X-CRM114-Status: GOOD (  14.32  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.66 listed in wl.mailspike.net]
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
