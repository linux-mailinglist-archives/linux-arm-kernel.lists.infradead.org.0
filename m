Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3737412726
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 07:31:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SKwVJ1rZKwY3NqdC9Zf/iNVMu63lXayV3LEXy+r0ERw=; b=Bdurf/X6iYUhXZ
	106804Nog98RORnrFRmoba/TbGcFzAC6Bj3gH1BR60GanPK1rWU0fGloOoIIXZKfybRDmrKx+4IAc
	TgTJrYFL8B8BokhS4CoZwAVZsVKSit9WwGsndQWrNm28jLHDSzE5ppZVOd6SzjpRUe+H0Zw7r4f7U
	Bjg06+KvydUKMCqv3aTbEbS7KWTdphcrgx+rBKnHAZrot4TbLbOU56J+a7gjYm1vsYao4Dirsfyp/
	AfpOENAZmLm5+sAfoDHNMMe57oqm5VWeqm2N7p1AqUiyoPlvCdfPwkNhP1acmL4NwG1iFXAVzaFmg
	gYkM9rdKlBjKbSzspZ9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMQnT-0001ro-OF; Fri, 03 May 2019 05:31:47 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMQnM-0001qw-6k
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 05:31:41 +0000
Received: by mail-pg1-x541.google.com with SMTP id t22so2159465pgi.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 22:31:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vbA+h1SWOeC+A9lxbgQ9nyiTDR7RZSnCD5SEiXc6Chc=;
 b=Lnij2FPqvmSvFcPoNxUkNY/JS83WNPIYA/lZMituG08241YitIDNyfyYAsIOyD2Vh7
 mPJcAWqwUWvDcuiJDnes/xhUyrREUUDjtGk72y8FQISb0WqkF/rLk2Y5TsKzoEM1vnpc
 t78JV1qjKZGg6Bg4HyO2Q+i76zrgSDWvXioq5M5V33GczeXpvgZQjQFnqx3Mlct7t1Tn
 CpexQ+3yESDh8pR647ZS71i1ozQR7ZdPGPXXXGF6WoreVf5pNozrPzsHYgBwzR9Vd17M
 e4+0EOPKodzzCLmTEltxUcckAVPtISrrtbLDxDNUCw3BTjZTOFiqLj7nJUFHyOeL/Ezt
 xztg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vbA+h1SWOeC+A9lxbgQ9nyiTDR7RZSnCD5SEiXc6Chc=;
 b=R2xztKy06vjIebIw/PQRu7+eHHk39MR448434FRsqCNAxO1AHMCmfroZBTgANC/nF0
 NfpsQ4cBI8xjjdDLpc6EjPBS/Hb9tZ6VmyPWpDzs4atr0wdsY60iE36Fhp7POpkTV39v
 txxn40O23tHcVPccvOUBjQ/9UjfMf8ODEx24pZvd4EEwx7hnnAfAe6G8DDqwW7w1uTcm
 7/JjA6sNHmJPaUw/+fa9ZTziWBQC7p2Sqym03Nf5Ih0P0pBX8EL2jfMFE/DxhJCfmybD
 9Q5aZgN3zkleg3ECZ34CgpBgdY6mOhKGJnRRakZ7q2eBPpDNLp/uYSW8dF1z2SQoU/UP
 pO7w==
X-Gm-Message-State: APjAAAXIOOG5s3eOXHTe7tPOHs3x2Xz6LFEUY/clL3WtsXObKC24MbCY
 oQo2xw9zKiJ5MyTDPYaV4o9b
X-Google-Smtp-Source: APXvYqwdnJ1wGysGVAJNxsji+b4A9Fu8qkeqQd4DxFfJGQBIFlAwwOQZoni5fRsBgxCIpFPuLIDZLg==
X-Received: by 2002:a65:5246:: with SMTP id q6mr8137656pgp.296.1556861496796; 
 Thu, 02 May 2019 22:31:36 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:72c7:3835:31df:f367:f70b:ed86])
 by smtp.gmail.com with ESMTPSA id l15sm1152226pgb.71.2019.05.02.22.31.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 22:31:36 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: mcoquelin.stm32@gmail.com,
	alexandre.torgue@st.com,
	robh+dt@kernel.org
Subject: [PATCH 0/3] Add Avenger96 board support
Date: Fri,  3 May 2019 11:01:20 +0530
Message-Id: <20190503053123.6828-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_223140_271180_DCBFD5DC 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

SGVsbG8sCgpUaGlzIHBhdGNoc2V0IGFkZHMgQXZlbmdlcjk2IGJvYXJkIHN1cHBvcnQuIFRoaXMg
Ym9hcmQgaXMgb25lIG9mIHRoZQpDb25zdW1lciBFZGl0aW9uIGJvYXJkcyBvZiB0aGUgOTZCb2Fy
ZHMgZmFtaWx5IGZyb20gQXJyb3cgRWxlY3Ryb25pY3MKZmVhdHVyaW5nIFNUTTMyTVAxNTdBIE1Q
VSBhbmQgaGFzIHRoZSBmb2xsb3dpbmcgZmVhdHVyZXM6CiAgICAKU29DOiBTVE0zMk1QMTU3QUFD
ClBNSUM6IFNUUE1JQzFBClJBTTogMTAyNCBNYnl0ZSBAIDUzM01IegpTdG9yYWdlOiBlTU1DIHY0
LjUxOiA4IEdieXRlCiAgICAgICAgIG1pY3JvU0QgU29ja2V0OiBVSFMtMSB2My4wMQpFdGhlcm5l
dCBQb3J0OiAxMC8xMDAvMTAwMCBNYml0L3MsIElFRUUgODAyLjMgQ29tcGxpYW50CldpcmVsZXNz
OiBXaUZpIDUgR0h6ICYgMi40R0h6IElFRUUgODAyLjExYS9iL2cvbi9hYwogICAgICAgICAgQmx1
ZXRvb3Rowq52NC4yIChCUi9FRFIvQkxFKQpVU0I6IDJ4IFR5cGUgQSAoVVNCIDIuMCkgSG9zdCBh
bmQgMXggTWljcm8gQiAoVVNCIDIuMCkgT1RHCkRpc3BsYXk6IEhETUk6IFdYR0EgKDEzNjZ4NzY4
KUAgNjAgZnBzLCBIRE1JIDEuNApMRUQ6IDR4IFVzZXIgTEVELCAxeCBXaUZpIExFRCwgMXggQlQg
TEVECgpNb3JlIGluZm9ybWF0aW9uIGFib3V0IHRoaXMgYm9hcmQgY2FuIGJlIGZvdW5kIGluIDk2
Qm9hcmRzIHdlYnNpdGU6Cmh0dHBzOi8vd3d3Ljk2Ym9hcmRzLm9yZy9wcm9kdWN0L2F2ZW5nZXI5
Ni8KClRoYW5rcywKTWFuaQoKTWFuaXZhbm5hbiBTYWRoYXNpdmFtICgzKToKICBkdC1iaW5kaW5n
czogYXJtOiBzdG0zMjogRG9jdW1lbnQgQXZlbmdlcjk2IGRldmljZXRyZWUgYmluZGluZwogIEFS
TTogZHRzOiBzdG0zMm1wMTU3OiBBZGQgbWlzc2luZyBwaW5jdHJsIGRlZmluaXRpb25zCiAgQVJN
OiBkdHM6IEFkZCBBdmVuZ2VyOTYgZGV2aWNldHJlZSBzdXBwb3J0IGJhc2VkIG9uIFNUTTMyTVAx
NTdBCgogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3N0bTMyL3N0bTMyLnR4dCAgIHwgICA2
ICsKIGFyY2gvYXJtL2Jvb3QvZHRzL01ha2VmaWxlICAgICAgICAgICAgICAgICAgICB8ICAgMSAr
CiBhcmNoL2FybS9ib290L2R0cy9zdG0zMm1wMTU3LXBpbmN0cmwuZHRzaSAgICAgfCAgNjIgKysr
KwogYXJjaC9hcm0vYm9vdC9kdHMvc3RtMzJtcDE1N2EtYXZlbmdlcjk2LmR0cyAgIHwgMzIwICsr
KysrKysrKysrKysrKysrKwogNCBmaWxlcyBjaGFuZ2VkLCAzODkgaW5zZXJ0aW9ucygrKQogY3Jl
YXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtL2Jvb3QvZHRzL3N0bTMybXAxNTdhLWF2ZW5nZXI5Ni5k
dHMKCi0tIAoyLjE3LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
