Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF84441E6A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 09:56:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lpG23R7gsBrfwZzsh9/t874wogy5jT1SWDL1T1mFyX8=; b=rFIa8IitOs7gV4
	4O+CzET2TqRODZeO6u7U3R4AHNTxrSnFtrHPsH2X07DRPoLrfPFY58X+8mphk0M1gNghTSYxdvWU9
	wrQ02yXdOf5BuSwSyM42HksgjHOYWslS8z7WOUOXe7vHr7vAJpFV2gFnUyxk0fFjslRjZCjbiSTbZ
	Fklc4hVVrHpaTMfJcclrEwMzhcfCSa6+Ll+RPLSdXWpuKWkOljK2VUedzM1AWyMJ8TXb5a/TDh67t
	s20XNCbQfqXZpgl1vKHRR+xwXXVofQ6AIduty33uNpCvD5RbzFA0YhtLTC58mRnS7w8U3wT9b7aTW
	aWGbj4tF1SKCPJiZLjcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hay7g-00071V-3T; Wed, 12 Jun 2019 07:56:44 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hay6S-0006F6-Qk
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 07:55:34 +0000
Received: by mail-pg1-x544.google.com with SMTP id p10so2625227pgn.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 00:55:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dX8ayxbG6dv3ymS6EHBWk6+IbbfEAXYHv1SHsYeWqgY=;
 b=yvSF1zZk6pvNg3yFSmYEkBkETtB1a1JUR6L7bc1OTd/8jnUDx8NpWPT+rMvSSxmler
 bAa3EkGpAMX/kK/42QdaOAs0fZoppiIq5RbF0NdfvKZt4tu/cVvpB2NmsQiv2TIp1YAs
 bjHEbIPH1T2yhCQTobs8pQpHJxCYgZBQTuiFdLJLs6N/bv9MHC3LstILSi7dH+SvrUZN
 IuVUCuEC2db48RsElxYwBeIbSM2kqmPsNIeImGzlgPuaOjFnqMARqk6e62uk42LsUiwb
 vCWlA3zMDijl5Kz44kxGMPxD+BtjOJ6TOffTTsj/BwA+6v90GgDJRTnuDUMWnEzqvYbb
 +ylA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dX8ayxbG6dv3ymS6EHBWk6+IbbfEAXYHv1SHsYeWqgY=;
 b=nnf9f1yAptarywproPkUNyT9BAiqXU56/oVdWCbWAnlpak55Ql9hf4E2x1TY14kdOj
 hpLVjMVjfKiVGu4jQ/qUhTqTFDS58FIp1SOqzUBhwJeVxzsNHzUgXaUhWQyB7c/aSqr7
 ZHEV0FHI/5mCOG3nDDZbArNivhUiZt3kjPy2S9kC5xmZqnA2ac0bnWV7o/x+wXjZofLP
 oaaxQ+osp6D3GEFM84PHU9fHOK3CFycrfqnl4l0raUTdvwlOnCO51ivnVEsyMS3TqmtR
 /wfmk1rvKX9XpQoRr3JVaOaTQ3hyM5+gz0Ty9QwgX/7JstsD/KiQUJOSucrcXiVzyOxf
 6EyQ==
X-Gm-Message-State: APjAAAWQjMIm2QTvwRZbCek6pRpAFOBcSnSIxOiJBdOYfyhfRF1tVLIB
 f6bQrnTFFiqDWbno5PVrTW1QqdzzzBFl
X-Google-Smtp-Source: APXvYqy9brcyJa9cOLqSc4S85FGB54wo9ovBp6MNXHxx9AHNw51a1v1EA4T5P76BseRnHvE/D7bdwg==
X-Received: by 2002:a65:668e:: with SMTP id b14mr19917390pgw.407.1560326126600; 
 Wed, 12 Jun 2019 00:55:26 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:894:d456:15b5:9ca9:e3ec:c06a])
 by smtp.gmail.com with ESMTPSA id b15sm16846399pfi.141.2019.06.12.00.55.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 12 Jun 2019 00:55:26 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: mcoquelin.stm32@gmail.com,
	alexandre.torgue@st.com,
	robh+dt@kernel.org
Subject: [PATCH v4 4/4] ARM: dts: Add Avenger96 devicetree support based on
 STM32MP157A
Date: Wed, 12 Jun 2019 13:24:51 +0530
Message-Id: <20190612075451.8643-5-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190612075451.8643-1-manivannan.sadhasivam@linaro.org>
References: <20190612075451.8643-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_005529_046191_834FD120 
X-CRM114-Status: GOOD (  16.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, loic.pallardy@st.com,
 linux-kernel@vger.kernel.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIGRldmljZXRyZWUgc3VwcG9ydCBmb3IgQXZlbmdlcjk2IGJvYXJkIGJhc2VkIG9uIFNUTTMy
TVAxNTdBIE1QVQpmcm9tIFNUIE1pY3JvLiBUaGlzIGJvYXJkIGlzIG9uZSBvZiB0aGUgOTZCb2Fy
ZHMgQ29uc3VtZXIgRWRpdGlvbiBib2FyZApmcm9tIEFycm93IEVsZWN0cm9uaWNzIGFuZCBoYXMg
dGhlIGZvbGxvd2luZyBmZWF0dXJlczoKClNvQzogU1RNMzJNUDE1N0FBQwpQTUlDOiBTVFBNSUMx
QQpSQU06IDEwMjQgTWJ5dGUgQCA1MzNNSHoKU3RvcmFnZTogZU1NQyB2NC41MTogOCBHYnl0ZQog
ICAgICAgICBtaWNyb1NEIFNvY2tldDogVUhTLTEgdjMuMDEKRXRoZXJuZXQgUG9ydDogMTAvMTAw
LzEwMDAgTWJpdC9zLCBJRUVFIDgwMi4zIENvbXBsaWFudApXaXJlbGVzczogV2lGaSA1IEdIeiAm
IDIuNEdIeiBJRUVFIDgwMi4xMWEvYi9nL24vYWMKICAgICAgICAgIEJsdWV0b290aMKudjQuMiAo
QlIvRURSL0JMRSkKVVNCOiAyeCBUeXBlIEEgKFVTQiAyLjApIEhvc3QgYW5kIDF4IE1pY3JvIEIg
KFVTQiAyLjApIE9URwpEaXNwbGF5OiBIRE1JOiBXWEdBICgxMzY2eDc2OClAIDYwIGZwcywgSERN
SSAxLjQKTEVEOiA0eCBVc2VyIExFRCwgMXggV2lGaSBMRUQsIDF4IEJUIExFRAoKTW9yZSBpbmZv
cm1hdGlvbiBhYm91dCB0aGlzIGJvYXJkIGNhbiBiZSBmb3VuZCBpbiA5NkJvYXJkcyB3ZWJzaXRl
OgpodHRwczovL3d3dy45NmJvYXJkcy5vcmcvcHJvZHVjdC9hdmVuZ2VyOTYvCgpTaWduZWQtb2Zm
LWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBsaW5hcm8u
b3JnPgotLS0KIGFyY2gvYXJtL2Jvb3QvZHRzL01ha2VmaWxlICAgICAgICAgICAgICAgICAgfCAg
IDEgKwogYXJjaC9hcm0vYm9vdC9kdHMvc3RtMzJtcDE1N2EtYXZlbmdlcjk2LmR0cyB8IDMyMSAr
KysrKysrKysrKysrKysrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCAzMjIgaW5zZXJ0aW9ucygrKQog
Y3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtL2Jvb3QvZHRzL3N0bTMybXAxNTdhLWF2ZW5nZXI5
Ni5kdHMKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9NYWtlZmlsZSBiL2FyY2gvYXJt
L2Jvb3QvZHRzL01ha2VmaWxlCmluZGV4IGRhYjI5MTRmYTI5My4uOTE4Yzg1YzIyN2I1IDEwMDY0
NAotLS0gYS9hcmNoL2FybS9ib290L2R0cy9NYWtlZmlsZQorKysgYi9hcmNoL2FybS9ib290L2R0
cy9NYWtlZmlsZQpAQCAtOTc1LDYgKzk3NSw3IEBAIGR0Yi0kKENPTkZJR19BUkNIX1NUTTMyKSAr
PSBcCiAJc3RtMzI3NDZnLWV2YWwuZHRiIFwKIAlzdG0zMmg3NDNpLWV2YWwuZHRiIFwKIAlzdG0z
Mmg3NDNpLWRpc2NvLmR0YiBcCisJc3RtMzJtcDE1N2EtYXZlbmdlcjk2LmR0YiBcCiAJc3RtMzJt
cDE1N2EtZGsxLmR0YiBcCiAJc3RtMzJtcDE1N2MtZGsyLmR0YiBcCiAJc3RtMzJtcDE1N2MtZWQx
LmR0YiBcCmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9zdG0zMm1wMTU3YS1hdmVuZ2Vy
OTYuZHRzIGIvYXJjaC9hcm0vYm9vdC9kdHMvc3RtMzJtcDE1N2EtYXZlbmdlcjk2LmR0cwpuZXcg
ZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLjlkMDBiZTc4MDEwZgotLS0gL2Rl
di9udWxsCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3N0bTMybXAxNTdhLWF2ZW5nZXI5Ni5kdHMK
QEAgLTAsMCArMSwzMjEgQEAKKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCBP
UiBCU0QtMy1DbGF1c2UpCisvKgorICogQ29weXJpZ2h0IChDKSBMaW5hcm8gTHRkIDIwMTkgLSBB
bGwgUmlnaHRzIFJlc2VydmVkCisgKiBBdXRob3I6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFu
aXZhbm5hbi5zYWRoYXNpdmFtQGxpbmFyby5vcmc+CisgKi8KKworL2R0cy12MS87CisKKyNpbmNs
dWRlICJzdG0zMm1wMTU3Yy5kdHNpIgorI2luY2x1ZGUgInN0bTMybXAxNTctcGluY3RybC5kdHNp
IgorI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2dwaW8vZ3Bpby5oPgorI2luY2x1ZGUgPGR0LWJpbmRp
bmdzL21mZC9zdCxzdHBtaWMxLmg+CisKKy8geworCW1vZGVsID0gIkFycm93IEVsZWN0cm9uaWNz
IFNUTTMyTVAxNTdBIEF2ZW5nZXI5NiBib2FyZCI7CisJY29tcGF0aWJsZSA9ICJhcnJvdyxzdG0z
Mm1wMTU3YS1hdmVuZ2VyOTYiLCAic3Qsc3RtMzJtcDE1NyI7CisKKwlhbGlhc2VzIHsKKwkJZXRo
ZXJuZXQwID0gJmV0aGVybmV0MDsKKwkJbW1jMCA9ICZzZG1tYzE7CisJCXNlcmlhbDAgPSAmdWFy
dDQ7CisJCXNlcmlhbDEgPSAmdWFydDc7CisJfTsKKworCWNob3NlbiB7CisJCXN0ZG91dC1wYXRo
ID0gInNlcmlhbDA6MTE1MjAwbjgiOworCX07CisKKwltZW1vcnlAYzAwMDAwMDAgeworCQlkZXZp
Y2VfdHlwZSA9ICJtZW1vcnkiOworCQlyZWcgPSA8MHhjMDAwMDAwMCAweDQwMDAwMDAwPjsKKwl9
OworCisJbGVkIHsKKwkJY29tcGF0aWJsZSA9ICJncGlvLWxlZHMiOworCQlsZWQxIHsKKwkJCWxh
YmVsID0gImdyZWVuOnVzZXIxIjsKKwkJCWdwaW9zID0gPCZncGlveiA3IEdQSU9fQUNUSVZFX0hJ
R0g+OworCQkJbGludXgsZGVmYXVsdC10cmlnZ2VyID0gImhlYXJ0YmVhdCI7CisJCQlkZWZhdWx0
LXN0YXRlID0gIm9mZiI7CisJCX07CisKKwkJbGVkMiB7CisJCQlsYWJlbCA9ICJncmVlbjp1c2Vy
MiI7CisJCQlncGlvcyA9IDwmZ3Bpb2YgMyBHUElPX0FDVElWRV9ISUdIPjsKKwkJCWxpbnV4LGRl
ZmF1bHQtdHJpZ2dlciA9ICJtbWMwIjsKKwkJCWRlZmF1bHQtc3RhdGUgPSAib2ZmIjsKKwkJfTsK
KworCQlsZWQzIHsKKwkJCWxhYmVsID0gImdyZWVuOnVzZXIzIjsKKwkJCWdwaW9zID0gPCZncGlv
ZyAwIEdQSU9fQUNUSVZFX0hJR0g+OworCQkJbGludXgsZGVmYXVsdC10cmlnZ2VyID0gIm1tYzEi
OworCQkJZGVmYXVsdC1zdGF0ZSA9ICJvZmYiOworCQl9OworCisJCWxlZDQgeworCQkJbGFiZWwg
PSAiZ3JlZW46dXNlcjMiOworCQkJZ3Bpb3MgPSA8JmdwaW9nIDEgR1BJT19BQ1RJVkVfSElHSD47
CisJCQlsaW51eCxkZWZhdWx0LXRyaWdnZXIgPSAibm9uZSI7CisJCQlkZWZhdWx0LXN0YXRlID0g
Im9mZiI7CisJCQlwYW5pYy1pbmRpY2F0b3I7CisJCX07CisKKwkJbGVkNSB7CisJCQlsYWJlbCA9
ICJ5ZWxsb3c6d2lmaSI7CisJCQlncGlvcyA9IDwmZ3Bpb3ogMyBHUElPX0FDVElWRV9ISUdIPjsK
KwkJCWxpbnV4LGRlZmF1bHQtdHJpZ2dlciA9ICJwaHkwdHgiOworCQkJZGVmYXVsdC1zdGF0ZSA9
ICJvZmYiOworCQl9OworCisJCWxlZDYgeworCQkJbGFiZWwgPSAiYmx1ZTpidCI7CisJCQlncGlv
cyA9IDwmZ3Bpb3ogNiBHUElPX0FDVElWRV9ISUdIPjsKKwkJCWxpbnV4LGRlZmF1bHQtdHJpZ2dl
ciA9ICJibHVldG9vdGgtcG93ZXIiOworCQkJZGVmYXVsdC1zdGF0ZSA9ICJvZmYiOworCQl9Owor
CX07Cit9OworCismZXRoZXJuZXQwIHsKKwlzdGF0dXMgPSAib2theSI7CisJcGluY3RybC0wID0g
PCZldGhlcm5ldDBfcmdtaWlfcGluc19hPjsKKwlwaW5jdHJsLTEgPSA8JmV0aGVybmV0MF9yZ21p
aV9waW5zX3NsZWVwX2E+OworCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCIsICJzbGVlcCI7CisJ
cGh5LW1vZGUgPSAicmdtaWkiOworCW1heC1zcGVlZCA9IDwxMDAwPjsKKwlwaHktaGFuZGxlID0g
PCZwaHkwPjsKKworCW1kaW8wIHsKKwkJI2FkZHJlc3MtY2VsbHMgPSA8MT47CisJCSNzaXplLWNl
bGxzID0gPDA+OworCQljb21wYXRpYmxlID0gInNucHMsZHdtYWMtbWRpbyI7CisJCXBoeTA6IGV0
aGVybmV0LXBoeUA3IHsKKwkJCXJlZyA9IDw3PjsKKwkJfTsKKwl9OworfTsKKworJmkyYzEgewor
CXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7CisJcGluY3RybC0wID0gPCZpMmMxX3BpbnNfYj47
CisJaTJjLXNjbC1yaXNpbmctdGltZS1ucyA9IDwxODU+OworCWkyYy1zY2wtZmFsbGluZy10aW1l
LW5zID0gPDIwPjsKKwlzdGF0dXMgPSAib2theSI7CisJL2RlbGV0ZS1wcm9wZXJ0eS9kbWFzOwor
CS9kZWxldGUtcHJvcGVydHkvZG1hLW5hbWVzOworfTsKKworJmkyYzIgeworCXBpbmN0cmwtbmFt
ZXMgPSAiZGVmYXVsdCI7CisJcGluY3RybC0wID0gPCZpMmMyX3BpbnNfYjEgJmkyYzJfcGluc19i
Mj47CisJaTJjLXNjbC1yaXNpbmctdGltZS1ucyA9IDwxODU+OworCWkyYy1zY2wtZmFsbGluZy10
aW1lLW5zID0gPDIwPjsKKwlzdGF0dXMgPSAib2theSI7CisJL2RlbGV0ZS1wcm9wZXJ0eS9kbWFz
OworCS9kZWxldGUtcHJvcGVydHkvZG1hLW5hbWVzOworfTsKKworJmkyYzQgeworCXBpbmN0cmwt
bmFtZXMgPSAiZGVmYXVsdCI7CisJcGluY3RybC0wID0gPCZpMmM0X3BpbnNfYT47CisJaTJjLXNj
bC1yaXNpbmctdGltZS1ucyA9IDwxODU+OworCWkyYy1zY2wtZmFsbGluZy10aW1lLW5zID0gPDIw
PjsKKwlzdGF0dXMgPSAib2theSI7CisJL2RlbGV0ZS1wcm9wZXJ0eS9kbWFzOworCS9kZWxldGUt
cHJvcGVydHkvZG1hLW5hbWVzOworCisJcG1pYzogc3RwbWljQDMzIHsKKwkJY29tcGF0aWJsZSA9
ICJzdCxzdHBtaWMxIjsKKwkJcmVnID0gPDB4MzM+OworCQlpbnRlcnJ1cHRzLWV4dGVuZGVkID0g
PCZleHRpIDU1IElSUV9UWVBFX0VER0VfRkFMTElORz47CisJCWludGVycnVwdC1jb250cm9sbGVy
OworCQkjaW50ZXJydXB0LWNlbGxzID0gPDI+OworCQlzdGF0dXMgPSAib2theSI7CisKKwkJc3Qs
bWFpbi1jb250cm9sLXJlZ2lzdGVyID0gPDB4MDQ+OworCQlzdCx2aW4tY29udHJvbC1yZWdpc3Rl
ciA9IDwweGMwPjsKKwkJc3QsdXNiLWNvbnRyb2wtcmVnaXN0ZXIgPSA8MHgzMD47CisKKwkJcmVn
dWxhdG9ycyB7CisJCQljb21wYXRpYmxlID0gInN0LHN0cG1pYzEtcmVndWxhdG9ycyI7CisKKwkJ
CWxkbzEtc3VwcGx5ID0gPCZ2M3YzPjsKKwkJCWxkbzItc3VwcGx5ID0gPCZ2M3YzPjsKKwkJCWxk
bzMtc3VwcGx5ID0gPCZ2ZGRfZGRyPjsKKwkJCWxkbzUtc3VwcGx5ID0gPCZ2M3YzPjsKKwkJCWxk
bzYtc3VwcGx5ID0gPCZ2M3YzPjsKKwkJCXB3cl9zdzEtc3VwcGx5ID0gPCZic3Rfb3V0PjsKKwkJ
CXB3cl9zdzItc3VwcGx5ID0gPCZic3Rfb3V0PjsKKworCQkJdmRkY29yZTogYnVjazEgeworCQkJ
CXJlZ3VsYXRvci1uYW1lID0gInZkZGNvcmUiOworCQkJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0
ID0gPDEyMDAwMDA+OworCQkJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDEzNTAwMDA+Owor
CQkJCXJlZ3VsYXRvci1hbHdheXMtb247CisJCQkJcmVndWxhdG9yLWluaXRpYWwtbW9kZSA9IDww
PjsKKwkJCQlyZWd1bGF0b3Itb3Zlci1jdXJyZW50LXByb3RlY3Rpb247CisJCQl9OworCisJCQl2
ZGRfZGRyOiBidWNrMiB7CisJCQkJcmVndWxhdG9yLW5hbWUgPSAidmRkX2RkciI7CisJCQkJcmVn
dWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MTM1MDAwMD47CisJCQkJcmVndWxhdG9yLW1heC1taWNy
b3ZvbHQgPSA8MTM1MDAwMD47CisJCQkJcmVndWxhdG9yLWFsd2F5cy1vbjsKKwkJCQlyZWd1bGF0
b3ItaW5pdGlhbC1tb2RlID0gPDA+OworCQkJCXJlZ3VsYXRvci1vdmVyLWN1cnJlbnQtcHJvdGVj
dGlvbjsKKwkJCX07CisKKwkJCXZkZDogYnVjazMgeworCQkJCXJlZ3VsYXRvci1uYW1lID0gInZk
ZCI7CisJCQkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MzMwMDAwMD47CisJCQkJcmVndWxh
dG9yLW1heC1taWNyb3ZvbHQgPSA8MzMwMDAwMD47CisJCQkJcmVndWxhdG9yLWFsd2F5cy1vbjsK
KwkJCQlzdCxtYXNrX3Jlc2V0OworCQkJCXJlZ3VsYXRvci1pbml0aWFsLW1vZGUgPSA8MD47CisJ
CQkJcmVndWxhdG9yLW92ZXItY3VycmVudC1wcm90ZWN0aW9uOworCQkJfTsKKworCQkJdjN2Mzog
YnVjazQgeworCQkJCXJlZ3VsYXRvci1uYW1lID0gInYzdjMiOworCQkJCXJlZ3VsYXRvci1taW4t
bWljcm92b2x0ID0gPDMzMDAwMDA+OworCQkJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDMz
MDAwMDA+OworCQkJCXJlZ3VsYXRvci1hbHdheXMtb247CisJCQkJcmVndWxhdG9yLW92ZXItY3Vy
cmVudC1wcm90ZWN0aW9uOworCQkJCXJlZ3VsYXRvci1pbml0aWFsLW1vZGUgPSA8MD47CisJCQl9
OworCisJCQl2ZGRhOiBsZG8xIHsKKwkJCQlyZWd1bGF0b3ItbmFtZSA9ICJ2ZGRhIjsKKwkJCQly
ZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwyOTAwMDAwPjsKKwkJCQlyZWd1bGF0b3ItbWF4LW1p
Y3Jvdm9sdCA9IDwyOTAwMDAwPjsKKwkJCQlpbnRlcnJ1cHRzID0gPElUX0NVUkxJTV9MRE8xIDA+
OworCQkJCWludGVycnVwdC1wYXJlbnQgPSA8JnBtaWM+OworCQkJfTsKKworCQkJdjJ2ODogbGRv
MiB7CisJCQkJcmVndWxhdG9yLW5hbWUgPSAidjJ2OCI7CisJCQkJcmVndWxhdG9yLW1pbi1taWNy
b3ZvbHQgPSA8MjgwMDAwMD47CisJCQkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MjgwMDAw
MD47CisJCQkJaW50ZXJydXB0cyA9IDxJVF9DVVJMSU1fTERPMiAwPjsKKwkJCQlpbnRlcnJ1cHQt
cGFyZW50ID0gPCZwbWljPjsKKwkJCX07CisKKwkJCXZ0dF9kZHI6IGxkbzMgeworCQkJCXJlZ3Vs
YXRvci1uYW1lID0gInZ0dF9kZHIiOworCQkJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDUw
MDAwMD47CisJCQkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8NzUwMDAwPjsKKwkJCQlyZWd1
bGF0b3ItYWx3YXlzLW9uOworCQkJCXJlZ3VsYXRvci1vdmVyLWN1cnJlbnQtcHJvdGVjdGlvbjsK
KwkJCX07CisKKwkJCXZkZF91c2I6IGxkbzQgeworCQkJCXJlZ3VsYXRvci1uYW1lID0gInZkZF91
c2IiOworCQkJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDMzMDAwMDA+OworCQkJCXJlZ3Vs
YXRvci1tYXgtbWljcm92b2x0ID0gPDMzMDAwMDA+OworCQkJCWludGVycnVwdHMgPSA8SVRfQ1VS
TElNX0xETzQgMD47CisJCQkJaW50ZXJydXB0LXBhcmVudCA9IDwmcG1pYz47CisJCQl9OworCisJ
CQl2ZGRfc2Q6IGxkbzUgeworCQkJCXJlZ3VsYXRvci1uYW1lID0gInZkZF9zZCI7CisJCQkJcmVn
dWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MjkwMDAwMD47CisJCQkJcmVndWxhdG9yLW1heC1taWNy
b3ZvbHQgPSA8MjkwMDAwMD47CisJCQkJaW50ZXJydXB0cyA9IDxJVF9DVVJMSU1fTERPNSAwPjsK
KwkJCQlpbnRlcnJ1cHQtcGFyZW50ID0gPCZwbWljPjsKKwkJCQlyZWd1bGF0b3ItYm9vdC1vbjsK
KwkJCX07CisKKwkJCXYxdjg6IGxkbzYgeworCQkJCXJlZ3VsYXRvci1uYW1lID0gInYxdjgiOwor
CQkJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDE4MDAwMDA+OworCQkJCXJlZ3VsYXRvci1t
YXgtbWljcm92b2x0ID0gPDE4MDAwMDA+OworCQkJCWludGVycnVwdHMgPSA8SVRfQ1VSTElNX0xE
TzYgMD47CisJCQkJaW50ZXJydXB0LXBhcmVudCA9IDwmcG1pYz47CisJCQkJcmVndWxhdG9yLWVu
YWJsZS1yYW1wLWRlbGF5ID0gPDMwMDAwMD47CisJCQl9OworCisJCQl2cmVmX2RkcjogdnJlZl9k
ZHIgeworCQkJCXJlZ3VsYXRvci1uYW1lID0gInZyZWZfZGRyIjsKKwkJCQlyZWd1bGF0b3ItYWx3
YXlzLW9uOworCQkJCXJlZ3VsYXRvci1vdmVyLWN1cnJlbnQtcHJvdGVjdGlvbjsKKwkJCX07CisK
KwkJCWJzdF9vdXQ6IGJvb3N0IHsKKwkJCQlyZWd1bGF0b3ItbmFtZSA9ICJic3Rfb3V0IjsKKwkJ
CQlpbnRlcnJ1cHRzID0gPElUX09DUF9CT09TVCAwPjsKKwkJCQlpbnRlcnJ1cHQtcGFyZW50ID0g
PCZwbWljPjsKKwkJCX07CisKKwkJCXZidXNfb3RnOiBwd3Jfc3cxIHsKKwkJCQlyZWd1bGF0b3It
bmFtZSA9ICJ2YnVzX290ZyI7CisJCQkJaW50ZXJydXB0cyA9IDxJVF9PQ1BfT1RHIDA+OworCQkJ
CWludGVycnVwdC1wYXJlbnQgPSA8JnBtaWM+OworCQkJCXJlZ3VsYXRvci1hY3RpdmUtZGlzY2hh
cmdlOworCQkJfTsKKworCQkJdmJ1c19zdzogcHdyX3N3MiB7CisJCQkJcmVndWxhdG9yLW5hbWUg
PSAidmJ1c19zdyI7CisJCQkJaW50ZXJydXB0cyA9IDxJVF9PQ1BfU1dPVVQgMD47CisJCQkJaW50
ZXJydXB0LXBhcmVudCA9IDwmcG1pYz47CisJCQkJcmVndWxhdG9yLWFjdGl2ZS1kaXNjaGFyZ2U7
CisJCQl9OworCQl9OworCisJCW9ua2V5IHsKKwkJCWNvbXBhdGlibGUgPSAic3Qsc3RwbWljMS1v
bmtleSI7CisJCQlpbnRlcnJ1cHRzID0gPElUX1BPTktFWV9GIDA+LCA8SVRfUE9OS0VZX1IgMT47
CisJCQlpbnRlcnJ1cHQtbmFtZXMgPSAib25rZXktZmFsbGluZyIsICJvbmtleS1yaXNpbmciOwor
CQkJc3RhdHVzID0gIm9rYXkiOworCQl9OworCisJCXdhdGNoZG9nIHsKKwkJCWNvbXBhdGlibGUg
PSAic3Qsc3RwbWljMS13ZHQiOworCQkJc3RhdHVzID0gImRpc2FibGVkIjsKKwkJfTsKKwl9Owor
fTsKKworJml3ZGcyIHsKKwl0aW1lb3V0LXNlYyA9IDwzMj47CisJc3RhdHVzID0gIm9rYXkiOwor
fTsKKworJnJuZzEgeworCXN0YXR1cyA9ICJva2F5IjsKK307CisKKyZydGMgeworCXN0YXR1cyA9
ICJva2F5IjsKK307CisKKyZzZG1tYzEgeworCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCIsICJv
cGVuZHJhaW4iLCAic2xlZXAiOworCXBpbmN0cmwtMCA9IDwmc2RtbWMxX2I0X3BpbnNfYSAmc2Rt
bWMxX2Rpcl9waW5zX2E+OworCXBpbmN0cmwtMSA9IDwmc2RtbWMxX2I0X29kX3BpbnNfYT47CisJ
cGluY3RybC0yID0gPCZzZG1tYzFfYjRfc2xlZXBfcGluc19hPjsKKwlicm9rZW4tY2Q7CisJc3Qs
c2lnLWRpcjsKKwlzdCxuZWctZWRnZTsKKwlzdCx1c2UtY2tpbjsKKwlidXMtd2lkdGggPSA8ND47
CisJdm1tYy1zdXBwbHkgPSA8JnZkZF9zZD47CisJc3RhdHVzID0gIm9rYXkiOworfTsKKworJnVh
cnQ0IHsKKwkvKiBPbiBMb3cgc3BlZWQgZXhwYW5zaW9uIGhlYWRlciAqLworCWxhYmVsID0gIkxT
LVVBUlQxIjsKKwlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOworCXBpbmN0cmwtMCA9IDwmdWFy
dDRfcGluc19iPjsKKwlzdGF0dXMgPSAib2theSI7Cit9OworCismdWFydDcgeworCS8qIE9uIExv
dyBzcGVlZCBleHBhbnNpb24gaGVhZGVyICovCisJbGFiZWwgPSAiTFMtVUFSVDAiOworCXBpbmN0
cmwtbmFtZXMgPSAiZGVmYXVsdCI7CisJcGluY3RybC0wID0gPCZ1YXJ0N19waW5zX2E+OworCXN0
YXR1cyA9ICJva2F5IjsKK307Ci0tIAoyLjE3LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
