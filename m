Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 958F42C77A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 15:11:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Jbt9y7eV8eVoENKPLDdT0jEYyQ1HfDJOTJrgg7V6Sp0=; b=c/ir8+jFxwiBs2
	IEuQ9inxiYrSWBOCPu5gYcFyAK86rbReXJvyU/GnPxnLTmyUzM0u5WSs+IN+OviFP5+1pJX6bjuNc
	PJUzuh6x5RLg1WbQrC/4J3OXdgETxK25tBGcrduTIcOlrFbqt5l+Lpee7KiX81o0Gg4dV6ZHHs5uF
	vRQle2sKBkceNhF/9v3fs0c/OJtx8jbOj808HPtsiYHk++kdUjzn8eXTH+YNDpugJhfmFUeOQ1ary
	rBvKywyuWHLBaOJW3m+pfktlO+jTOmPLTc2Nl5RbzwmiGWFaZ31ecTyw4GeW0k8HXofmf9WaUqVIZ
	Wy1iBULPO/FbDjXgvNFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVbsZ-0004va-8d; Tue, 28 May 2019 13:10:59 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVbsD-0004hp-Eu
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 13:10:38 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x4SDAXeZ060641;
 Tue, 28 May 2019 08:10:33 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559049033;
 bh=j/HzWeJq7uUYskgj6xTmASdH7f56zUC9hO0ZwJte/V8=;
 h=From:To:CC:Subject:Date;
 b=jp1iwcFQHLiuDEgMeAAZ9JygmEqLBQPZhasyyK9kYwabsH0vtlI88PbaRm4nNqczV
 PqhwlUlgKd3PIa7wfT3w0Hk0Rc1JfqliM1N29IDEKTAJgHl7YI4LuEOtg1zH7/h4R8
 fKTpufiTSWTgWwaW9ITJoLOU+gxULu7igkSbIOoc=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x4SDAX3I090325
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 28 May 2019 08:10:33 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 28
 May 2019 08:10:33 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 28 May 2019 08:10:33 -0500
Received: from gomoku.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x4SDAVBu079520;
 Tue, 28 May 2019 08:10:31 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <linux-clk@vger.kernel.org>, <sboyd@kernel.org>, <mturquette@baylibre.com>,
 <ssantosh@kernel.org>, <nm@ti.com>
Subject: [PATCHv2 0/5] clk: keystone: clock optimizations / fixes
Date: Tue, 28 May 2019 16:10:19 +0300
Message-ID: <1559049024-30872-1-git-send-email-t-kristo@ti.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_061037_558513_01CE58CD 
X-CRM114-Status: UNSURE (   8.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpUaGlzIGlzIGEgcmUtYmFzZSAvIHJlLXNwaW4gb2YgdGhlIEtleXN0b25lIGNsb2NrIG9w
dGltaXphdGlvbiBzZXJpZXMgWzFdLgoKQ2hhbmdlcyBmcm9tIHYxOgotIHJlYmFzZWQgb24gdG9w
IG9mIDUuMi1yYzEKLSBhZGRlZCBzdXBwb3J0IGZvciBjbGstaWRzIDI1NSsKLSBjaGFuZ2VkIHBh
dGNoICMzIHRvIHBhcnNlIGFsc28gJ2Fzc2lnbmVkLWNsb2NrcycgaW4gYWRkaXRpb24gdG8gJ2Ns
b2NrcycKICBEVCBub2RlcyBvbmx5LiBUaGlzIGFsbG93cyBhdXRvbWF0aWMgKERUIGJhc2VkKSBw
cm9ncmFtbWluZyBvZiBjbG9ja3MKICB0aGF0IGFyZSBub3QgZGlyZWN0bHkgdG91Y2hlZCBieSBh
bnkgZHJpdmVyLgoKUGxlYXNlIG5vdGUgdGhhdCB0aGVyZSBpcyBoYXJkIGRlcGVuZGVuY3kgYmV0
d2VlbiBwYXRjaGVzIDQgJiA1LCBwYXRjaCAjNQptdXN0IGJlIGFwcGxpZWQgYWZ0ZXIgcGF0Y2gg
IzQsIG90aGVyd2lzZSBiYWQgdGhpbmdzIHdpbGwgaGFwcGVuIChiYXNpY2FsbHkKYm9vdCBicmVh
a3MuKSBUaGUgY2FzdCBtYWdpYyBpbiBwYXRjaCAjNCBpcyBkb25lIGFsc28gc28gdGhhdCB0aGlz
IG9yZGVyCm9mIHBhdGNoZXMgY2FuIGJlIHVzZWQgYW5kIGJpc2VjdGFiaWxpdHkgaXMgcmV0YWlu
ZWQuCgotVGVybwoKWzFdwqBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1hcm0ta2VybmVs
LzE1NTUwOTMzNDItNDI4LTEtZ2l0LXNlbmQtZW1haWwtdC1rcmlzdG9AdGkuY29tLwoKCi0tClRl
eGFzIEluc3RydW1lbnRzIEZpbmxhbmQgT3ksIFBvcmtrYWxhbmthdHUgMjIsIDAwMTgwIEhlbHNp
bmtpLiBZLXR1bm51cy9CdXNpbmVzcyBJRDogMDYxNTUyMS00LiBLb3RpcGFpa2thL0RvbWljaWxl
OiBIZWxzaW5raQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
