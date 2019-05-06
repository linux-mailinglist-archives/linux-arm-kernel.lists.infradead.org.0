Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98AAE1481E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 12:05:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pFW2l0Wx8GtyIH60+ilQtjzD5sIZmWilgUyXBb9aLGk=; b=ncBkMzs9H7s2kn
	jvtLvs3rGTs6RXRJBhSYUsJUycfhvlo8oc75dElo4mndZvSrMcv5vOeaqyIxoqhZLaL1+WbXgH51P
	Pb3Lwktz4ICLgAxrJ8GYVyW4KxCiK0tO0NfuI+1Lv/BOcdHqP5HtLGyN+3ZucHgD+hquOBygiHga8
	eaGRKz/UBRy2Ge0UyNqEQENXkqFTAvZx1XsYj5nD91t17Dg3M139Ia+DEIjzI72bs1u/K5LcxEphc
	tEQe4lT32QoowPcEXtQQJHYBHaMXDES4hO3Ogs95Ebe/8ByfYa6P7W7T2Nhc5dVA4E+fs4FEYiJSl
	cVppDqkeW38TMbW+HOPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNaVR-0006as-IF; Mon, 06 May 2019 10:05:57 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNaVI-0006a1-3A
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 10:05:49 +0000
Received: by mail-pf1-x441.google.com with SMTP id b3so6506199pfd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 03:05:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PzJC2cGnv4guPyK0TH8rxdCNy91Y2MqZHMVt0Hj1UZg=;
 b=NL1GyKgbriLVakxOq1jPwdxkfiGtpgzEVVNcaaGHD2TRfHVkTxbpCyNV/1ywD9Jw5w
 yfbKzH10+nSa4f1w868NzXQMhVjbjmb9hcWAJs2OIuuLBlApd7pU5kTD2U/5l0YSzSBm
 T2si2DEKppfFDmics//fwthVrvWKMnT78xAG1Wvz/uAfRWN9q7+0TPNvG6ZTgCFIVNae
 Iwc+ttvFGJj/N6XC7LZdcgBXrXblJ+kJdiJ4ZQo3uxX+qz7h956lAdwSK8YtWglHxHVs
 eRA9iqWc8ouN3gnGRhDk9I0VAD/2YnJbslPtEv+zv0seh2Oryf5aakf1VOhaRLdQp6Bf
 /BXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PzJC2cGnv4guPyK0TH8rxdCNy91Y2MqZHMVt0Hj1UZg=;
 b=O5NZU7YVtv0VRMcExZUnJjKU5SwDltrQocQ87aprYeZSH7nwD4BMUQLFWby2DrDIzr
 /XzGA+IWuYrL4XxRcywO1M+Lmn4qtukRKaxhoa4ECM1+1tv3R0JsILqi1W3yjYmIxcAN
 RGNbGhpoJ8c/Tx5w2AOJYISaXG+3uDIc4aro9/1cRWvX9ipNfUuZ0QOSZWWgQFQVeVid
 RvSFpkveEIME7/a6LEmPri/gLcSSwtNEtZyQaRid7ItqCIc3vNgqjQ2C55IuF4H+Dhx4
 Y+heDu01kwgPz7GWTEpsFYM9WVqcUp3HvNsbzqeW80ne7qzjvI9Bx/jn+3oi9f/OJEh5
 yeTA==
X-Gm-Message-State: APjAAAXYa/8lSOA5eE/Z5oXBeoArwmLn7fSLbYeywPsb8ywnvL4ojGm2
 0jrSLJfibzFWVHcw1e+9nrnM
X-Google-Smtp-Source: APXvYqz0D0CtKqL3bIVtaE3Zyo+/xiVoozF07VaHqELDfSxUqbd9yW66ihVnrA16JSi02lR98iLN2Q==
X-Received: by 2002:a62:3684:: with SMTP id d126mr31872502pfa.70.1557137146052; 
 Mon, 06 May 2019 03:05:46 -0700 (PDT)
Received: from localhost.localdomain
 ([2409:4072:611b:55a4:e119:3b84:2d86:5b07])
 by smtp.gmail.com with ESMTPSA id c137sm16229653pfb.154.2019.05.06.03.05.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 03:05:45 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: mcoquelin.stm32@gmail.com,
	alexandre.torgue@st.com,
	robh+dt@kernel.org
Subject: [PATCH v2 0/3] Add Avenger96 board support
Date: Mon,  6 May 2019 15:35:31 +0530
Message-Id: <20190506100534.24145-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_030548_140321_CBFB38E2 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
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
VGhhbmtzLApNYW5pCgpDaGFuZ2VzIGluIHYyOgoKQXMgcGVyIEFsZXgncyByZXZpZXc6CgoqIEZp
eGVkIEkyQzIgcGluY3RybCBub2RlCiogU29ydGVkIHRoZSBhdmVuZ2VyOTYgZHRiIGluIGFscGhh
YmV0aWNhbCBvcmRlcgoqIEFkZGVkIGRldmljZS10eXBlIHByb3BlcnR5IHRvIG1lbW9yeSBub2Rl
CgpNYW5pdmFubmFuIFNhZGhhc2l2YW0gKDMpOgogIGR0LWJpbmRpbmdzOiBhcm06IHN0bTMyOiBE
b2N1bWVudCBBdmVuZ2VyOTYgZGV2aWNldHJlZSBiaW5kaW5nCiAgQVJNOiBkdHM6IHN0bTMybXAx
NTc6IEFkZCBtaXNzaW5nIHBpbmN0cmwgZGVmaW5pdGlvbnMKICBBUk06IGR0czogQWRkIEF2ZW5n
ZXI5NiBkZXZpY2V0cmVlIHN1cHBvcnQgYmFzZWQgb24gU1RNMzJNUDE1N0EKCiAuLi4vZGV2aWNl
dHJlZS9iaW5kaW5ncy9hcm0vc3RtMzIvc3RtMzIudHh0ICAgfCAgIDYgKwogYXJjaC9hcm0vYm9v
dC9kdHMvTWFrZWZpbGUgICAgICAgICAgICAgICAgICAgIHwgICAxICsKIGFyY2gvYXJtL2Jvb3Qv
ZHRzL3N0bTMybXAxNTctcGluY3RybC5kdHNpICAgICB8ICA3NSArKysrCiBhcmNoL2FybS9ib290
L2R0cy9zdG0zMm1wMTU3YS1hdmVuZ2VyOTYuZHRzICAgfCAzMjEgKysrKysrKysrKysrKysrKysr
CiA0IGZpbGVzIGNoYW5nZWQsIDQwMyBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQg
YXJjaC9hcm0vYm9vdC9kdHMvc3RtMzJtcDE1N2EtYXZlbmdlcjk2LmR0cwoKLS0gCjIuMTcuMQoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
