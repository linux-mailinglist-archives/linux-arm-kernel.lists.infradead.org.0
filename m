Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4440A4170D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 23:41:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Rh4LILiuo8LGRV9h2rNQxOVT6mNvKwlqgFP3AG7RdR4=; b=UZ5avtiyFK6X0Z
	pDtnRoEe7l7FmoevGaDp/yUwq+jFBENw2JesZv5iyDBdSS279QOvJQb5f89DxlLakC9GmBqSEQhn7
	pzxdMDAPZPGXeAkCKd5n+wBC/TTV4ZQy2crCOGOXdkitzVpfBk8hShvDFiMGYMwyyaUpJdgUacghB
	v/hAdilZmWsPzr7Az5WrHSNOiWTxQGektCuevkeZhFsOQ2HjjekQff6ylwH+pxqID1NTY88I2O4LN
	MsHpvdDzbwCKjxrw99y1gPFu3742GfewKE9fRODu/vss7Efc6gDMDDfiwkq9bsbyHqL3P0UzAZPB+
	NrCUIj6A8c88Dr3SR+Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haoW8-0003pG-I7; Tue, 11 Jun 2019 21:41:20 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haoVw-0003oQ-Vj
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 21:41:10 +0000
Received: by mail-lj1-x243.google.com with SMTP id 16so13127734ljv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 14:41:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3ii1oya7iM4Av9Rw52ktXKCBjEV+f23dDHXfRcuKC7U=;
 b=tDpq1FPh+8DoAEFemXdFgNmDrzuVv7HGs7bDdX0R9e3N1l3s9MVEGOQ5pryKvmwcbc
 OUT9v/DYKJ4pSzu/37eK6FUyNNXM3gCClZFQnjYRNVjKWbBM5O7Ek7i7xrKjBz7cGwjt
 RN+1YHuMwvnWKElb5PrcetXueToyb+Vu/Nfmy7BVXshrF77WMUJ6q8jrSY6PjiwoH/bL
 HUUQDm8NYRZEofJrRjX7eK99zGFmbUFj1qAP0zcpM0wDC++KxbneuxugHM8AZ6kEO6HC
 Qrkx+g3DrsHDMivJ3D6yuAE9+7qkSVAbK4Q5ACEJwtRmKD0pYMXYKo7LLe0DMdAxZdEt
 37pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3ii1oya7iM4Av9Rw52ktXKCBjEV+f23dDHXfRcuKC7U=;
 b=JEGOVpWweBqJW4oxWvUfr6PBy06NqNtqpXu5YUlqAG4eXFomtmjCii1xT5Jj4KNsQP
 jW1SHLJ0OMN77JcqtXFdh+rE/Qkkx942eu/H5mCvLr76KtgR9wQU38uYyzqjWSX0ngiO
 2aLy3/ZZIkLRll3BwXmvTbb/BvHjwbORMH36dPdxrF+Ju5qJGCGl+rG1HMXI6Vq/ofMg
 XSnB6L3UVdiMfigSxrnidhtJtdKKLaGJeu78IyeDt8rbIxtCYbf3fU744Ee6+tlRmLHJ
 0+T4pI6JhRLN81U9wjN/ZZcSwkoUF4y4fQ9onqDbHxAkcw8oI34TCUiVZc6Rt4JD9e5a
 zmMQ==
X-Gm-Message-State: APjAAAWzPJOm21/jCtbXyDeAZu3V0Ekcq70OXEHP/teTvWpsP5Ke3s87
 xiiiMgKg59cBPF5NE9j1WXQ=
X-Google-Smtp-Source: APXvYqwpbdaBbT64OJKC3t9fsLS0BFJ1owt5dbrSWV35mRrRMwtNVEd1E9+KBDaYKDDjJry0MrJTJQ==
X-Received: by 2002:a2e:751c:: with SMTP id q28mr16897532ljc.178.1560289264111; 
 Tue, 11 Jun 2019 14:41:04 -0700 (PDT)
Received: from localhost.localdomain (80-248-250-227.cust.suomicom.net.
 [80.248.250.227])
 by smtp.gmail.com with ESMTPSA id o187sm2695914lfa.88.2019.06.11.14.41.02
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 14:41:03 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Dan Williams <dan.j.williams@intel.com>
Subject: [PATCH v4] arm64: dts: allwinner: h6: Add DMA node
Date: Tue, 11 Jun 2019 23:40:55 +0200
Message-Id: <20190611214055.25613-1-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_144109_021206_389C9FDA 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
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
Cc: devicetree@vger.kernel.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 linux-kernel@vger.kernel.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 dmaengine@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0PgoKSDYgaGFzIERN
QSBjb250cm9sbGVyIHdoaWNoIHN1cHBvcnRzIDE2IGNoYW5uZWxzLgoKQWRkIGEgbm9kZSBmb3Ig
aXQuCgpTaWduZWQtb2ZmLWJ5OiBKZXJuZWogU2tyYWJlYyA8amVybmVqLnNrcmFiZWNAc2lvbC5u
ZXQ+ClNpZ25lZC1vZmYtYnk6IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+
Ci0tLQoKQ2hhbmdlcyBzaW5jZSB2MzoKIC0gUmViYXNlIG9uIHRvcCBvZiBzdW54aS9mb3ItbmV4
dAogLSBTb3J0IGJ5IHBoeXNpY2FsIGFkZHJlc3MKCiBhcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdp
bm5lci9zdW41MGktaDYuZHRzaSB8IDEyICsrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDEy
IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5l
ci9zdW41MGktaDYuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1o
Ni5kdHNpCmluZGV4IGI5YTdkYzhkMmE0MC4uNzYyOGE3YzgzMDk2IDEwMDY0NAotLS0gYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaQorKysgYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaQpAQCAtMjAzLDYgKzIwMywxOCBAQAog
CQkJI3Jlc2V0LWNlbGxzID0gPDE+OwogCQl9OwogCisJCWRtYTogZG1hLWNvbnRyb2xsZXJAMzAw
MjAwMCB7CisJCQljb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW41MGktaDYtZG1hIjsKKwkJCXJl
ZyA9IDwweDAzMDAyMDAwIDB4MTAwMD47CisJCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgNDMgSVJR
X1RZUEVfTEVWRUxfSElHSD47CisJCQljbG9ja3MgPSA8JmNjdSBDTEtfQlVTX0RNQT4sIDwmY2N1
IENMS19NQlVTX0RNQT47CisJCQljbG9jay1uYW1lcyA9ICJidXMiLCAibWJ1cyI7CisJCQlkbWEt
Y2hhbm5lbHMgPSA8MTY+OworCQkJZG1hLXJlcXVlc3RzID0gPDQ2PjsKKwkJCXJlc2V0cyA9IDwm
Y2N1IFJTVF9CVVNfRE1BPjsKKwkJCSNkbWEtY2VsbHMgPSA8MT47CisJCX07CisKIAkJc2lkOiBz
aWRAMzAwNjAwMCB7CiAJCQljb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW41MGktaDYtc2lkIjsK
IAkJCXJlZyA9IDwweDAzMDA2MDAwIDB4NDAwPjsKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
