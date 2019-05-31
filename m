Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C66308BA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 08:39:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vGM0NBkZMAsXNKGaDJkSjwyDtSAl1JFRXMcFR6vpVuM=; b=kHwr+1jj/W0hSa
	YEMaPVmw/GPpd0dgVzMFD+CrF2gRTL2cpWLdoQCD2QepsTZ6b3CqN4oyhk+hpuTXRl87XUMVhDTia
	2znse3rkRveDZADENGZYVKa8Q1MbwpfEB/zscPHRbHC9VPdTk4UQD5p4szCf84AIMRPpsJP5fVVHs
	pV4Lk/5/W9qGW2OWv4UrNfOw1DSBxwYQ4T6xuF07N7euiQO5vnf8lSDc5nrF87U+b6N8AK4Ch1JAE
	GH6ApuDx0todzJx2ierh0nXFuYYKSmbE9o8JL8rCskO6z8Nxt809lucjMLG4jTxJxldKzkU+3I7PL
	43s+Sgn+52vwI8rT6ssA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWbCG-00039N-7p; Fri, 31 May 2019 06:39:24 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWbC8-00038b-Gb
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 06:39:18 +0000
Received: by mail-pg1-x544.google.com with SMTP id h17so3490197pgv.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 23:39:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SXBhhNmLSZ7SfSIDocpcP+tG+VZK/npThfwPX+RXL68=;
 b=DPebLeDbFNVD5P67tqP0E6NbXfo0GqBg57A5cpk0ASEU2EHf6awCPba6G4D+1PwlRj
 YhsRX/gA0mlYVXED8lkdcJV8bWS2fB9I4CqPcbawD/e2P+1RPta6Kb/8y4DQXjWw9gm0
 +H3zmCDCa3KW537AnnuScG0NEae48ULqRfGYODDp2u4Pv7GdHb+4t17s+Dqj77brlAs5
 JDJRlvf4tsykSLgQU84EyPwqQ6OgsG4flhnrJVBbMlBoDARGLJqIHwj5DbmUPcpAYjKg
 AVCnE0ukyuWLUZelupQ7fL261pnfoDdFWrj6/KLqGfTT8PkZjxmKb5c9viU0i+Qn/TMl
 O4ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SXBhhNmLSZ7SfSIDocpcP+tG+VZK/npThfwPX+RXL68=;
 b=pNQ2CC8KvfNodZyQd6yUEalP5mtqLI/GuKLFq3Vy8W6UeN+j5I/tesZtxRVwQ8Klrc
 4AxRXvH8m3Vn5vlJkECSwuyqXXjFm3/DuwVStkdKzxoLntpSn3BZo02lXSI0SDMVJoFa
 BofZITYCzNg64o9pPf0ITQhtK+a6ypHpFC9qZzmCBb/OGuL9YjSS1Z+DvZvI8cU+ufu0
 0wWzmBI5lwVjnKGl145nSJFLkjeM9rx9iWoFW5jh6NmajL9jjwDOofb+mRvkFwv0a/4w
 cb11OxJ48UWehvQxMoR4sSL5S+aZ/kRJ0K+iGJfGNfCZ1xQiT5BciuUl9rn3D1cZy4nI
 Jedw==
X-Gm-Message-State: APjAAAVT4KGd58GHejfhH25SpQe4+bEopbzi0QBjxwvx9cG/OWceLWKr
 1AHrvSAkb9NCgtXQ/MDkX3Us
X-Google-Smtp-Source: APXvYqxSXSKcfJHZzFiDp9JVK/XspKz74WHAtcBbnHiEhOKXCoHZ3JHNNC2pEpI0Wj0IJGDLpMcR/g==
X-Received: by 2002:a63:ff52:: with SMTP id s18mr3535804pgk.187.1559284753339; 
 Thu, 30 May 2019 23:39:13 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:72cb:ebf2:a51d:3877:feab:5634])
 by smtp.gmail.com with ESMTPSA id y12sm4644158pgp.63.2019.05.30.23.39.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 May 2019 23:39:12 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: mcoquelin.stm32@gmail.com,
	alexandre.torgue@st.com,
	robh+dt@kernel.org
Subject: [PATCH v3 0/4] Add Avenger96 board support
Date: Fri, 31 May 2019 12:08:45 +0530
Message-Id: <20190531063849.26142-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_233916_562610_4D2BE611 
X-CRM114-Status: GOOD (  11.15  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
VSBhbmQgaGFzIHRoZSBmb2xsb3dpbmcgZmVhdHVyZXM6CgpTb0M6IFNUTTMyTVAxNTdBQUMKUE1J
QzogU1RQTUlDMUEKUkFNOiAxMDI0IE1ieXRlIEAgNTMzTUh6ClN0b3JhZ2U6IGVNTUMgdjQuNTE6
IDggR2J5dGUKICAgICAgICAgbWljcm9TRCBTb2NrZXQ6IFVIUy0xIHYzLjAxCkV0aGVybmV0IFBv
cnQ6IDEwLzEwMC8xMDAwIE1iaXQvcywgSUVFRSA4MDIuMyBDb21wbGlhbnQKV2lyZWxlc3M6IFdp
RmkgNSBHSHogJiAyLjRHSHogSUVFRSA4MDIuMTFhL2IvZy9uL2FjCiAgICAgICAgICBCbHVldG9v
dGjCrnY0LjIgKEJSL0VEUi9CTEUpClVTQjogMnggVHlwZSBBIChVU0IgMi4wKSBIb3N0IGFuZCAx
eCBNaWNybyBCIChVU0IgMi4wKSBPVEcKRGlzcGxheTogSERNSTogV1hHQSAoMTM2Nng3NjgpQCA2
MCBmcHMsIEhETUkgMS40CkxFRDogNHggVXNlciBMRUQsIDF4IFdpRmkgTEVELCAxeCBCVCBMRUQK
Ck1vcmUgaW5mb3JtYXRpb24gYWJvdXQgdGhpcyBib2FyZCBjYW4gYmUgZm91bmQgaW4gOTZCb2Fy
ZHMgd2Vic2l0ZToKaHR0cHM6Ly93d3cuOTZib2FyZHMub3JnL3Byb2R1Y3QvYXZlbmdlcjk2LwoK
VGhhbmtzLApNYW5pCgpDaGFuZ2VzIGluIHYzOgoKKiBDb252ZXJ0ZWQgU1RNMzIgcGxhdGZvcm0g
YmluZGluZ3MgdG8gRFQgc2NoZW1hCgpDaGFuZ2VzIGluIHYyOgoKQXMgcGVyIEFsZXgncyByZXZp
ZXc6CgoqIEZpeGVkIEkyQzIgcGluY3RybCBub2RlCiogU29ydGVkIHRoZSBhdmVuZ2VyOTYgZHRi
IGluIGFscGhhYmV0aWNhbCBvcmRlcgoqIEFkZGVkIGRldmljZS10eXBlIHByb3BlcnR5IHRvIG1l
bW9yeSBub2RlCgpNYW5pdmFubmFuIFNhZGhhc2l2YW0gKDQpOgogIEFSTTogZHRzOiBzdG0zMm1w
MTU3OiBBZGQgbWlzc2luZyBwaW5jdHJsIGRlZmluaXRpb25zCiAgZHQtYmluZGluZ3M6IGFybTog
c3RtMzI6IENvbnZlcnQgU1RNMzIgU29DIGJpbmRpbmdzIHRvIERUIHNjaGVtYQogIGR0LWJpbmRp
bmdzOiBhcm06IHN0bTMyOiBEb2N1bWVudCBBdmVuZ2VyOTYgZGV2aWNldHJlZSBiaW5kaW5nCiAg
QVJNOiBkdHM6IEFkZCBBdmVuZ2VyOTYgZGV2aWNldHJlZSBzdXBwb3J0IGJhc2VkIG9uIFNUTTMy
TVAxNTdBCgogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3N0bTMyL3N0bTMyLnlhbWwgIHwg
IDMxICsrCiBhcmNoL2FybS9ib290L2R0cy9NYWtlZmlsZSAgICAgICAgICAgICAgICAgICAgfCAg
IDEgKwogYXJjaC9hcm0vYm9vdC9kdHMvc3RtMzJtcDE1Ny1waW5jdHJsLmR0c2kgICAgIHwgIDc1
ICsrKysKIGFyY2gvYXJtL2Jvb3QvZHRzL3N0bTMybXAxNTdhLWF2ZW5nZXI5Ni5kdHMgICB8IDMy
MSArKysrKysrKysrKysrKysrKysKIDQgZmlsZXMgY2hhbmdlZCwgNDI4IGluc2VydGlvbnMoKykK
IGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJt
L3N0bTMyL3N0bTMyLnlhbWwKIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9ib290L2R0cy9z
dG0zMm1wMTU3YS1hdmVuZ2VyOTYuZHRzCgotLSAKMi4xNy4xCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
