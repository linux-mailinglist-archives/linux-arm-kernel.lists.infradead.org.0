Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97A12145AD2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 18:27:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=msee4cVL+ISikiSxz25AIV7JLShYEV8UTQs2xKW2Q4Y=; b=cxclrRCOGzdPzc
	otnBcxAdRxcBEUXJnFIvl+VSPY4mBCNFcUD7e08rQfPMc+pFb2jd64Y4wrYvxzT6Cg+SWu5TChSCw
	KcjosD3jOEk4ZR+z1f9XJg1It85eMyjHpbRnMvNnaCkBObZpHGh+hg5k49FHu4SuWq9r96Z0fbgLR
	oTDGKMt3BAVLC+TZ7CR+vej9oJyoD41PrMcRhI50fJMtfBHgDIv4dgmnVXZoXyom3NMR3+1s34V3b
	m18Y/F7j39ffROY0EDNUAnubLhQbVBTkuyOJf/7K9r63oxoCqZRkdKg8KEtU7Yfvf6s2hwN0ccx1Q
	l2vSPVpQAwJj3Wg3mXDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuJmg-0004ld-78; Wed, 22 Jan 2020 17:27:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuJmR-0004kQ-Ih
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 17:27:04 +0000
Received: from localhost.localdomain (unknown [194.230.155.229])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 51E7B2465A;
 Wed, 22 Jan 2020 17:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579714022;
 bh=EX0+I6dyirdMjWxr9MIssWyHmCGela91rfZhzH27bJI=;
 h=From:To:Cc:Subject:Date:From;
 b=uNKJuz/xgJtyaiKDYxe67Gt1Y8aBDTo+neAvz1Exsh9dwal6414SpNP5d3yPkVkb6
 Y4u5Dj9r6D6IYYUnAiBK2rzuwd0R3gjBfFvEef6dMsoNrC4LE44J2p/ZHPH/mdEsCx
 4OPmr04T68DVeKiOPDGfW+T3T1vrshM5gGEY0Ftc=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] ARM: mach: s3c/exynos for v5.6, part 2
Date: Wed, 22 Jan 2020 18:26:49 +0100
Message-Id: <20200122172649.3143-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_092703_643300_84644731 
X-CRM114-Status: GOOD (  12.34  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-samsung-soc@vger.kernel.org, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzk@kernel.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiB0b3Agb2YgcHJldmlvdXMgcHVsbCByZXF1ZXN0LiBMYXN0IG1pbnV0ZSBjaGFuZ2Vz
LgoKCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgoKVGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNl
IGNvbW1pdCA0NTk4NGYwYzcwY2NjMDNlMDlmOTdlZTVkMDc0OTM5NjU0N2I2NTk0OgoKICBBUk06
IHNhbXN1bmc6IFJlbmFtZSBTYW1zdW5nIGFuZCBFeHlub3MgdG8gbG93ZXJjYXNlICgyMDIwLTAx
LTA3IDIwOjQ0OjIyICswMTAwKQoKYXJlIGF2YWlsYWJsZSBpbiB0aGUgR2l0IHJlcG9zaXRvcnkg
YXQ6CgogIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2ty
emsvbGludXguZ2l0IHRhZ3Mvc2Ftc3VuZy1zb2MtNS42LTIKCmZvciB5b3UgdG8gZmV0Y2ggY2hh
bmdlcyB1cCB0byBhZjE1YTExYjkwNDY3MjJmODMxNTg4ZWZmOGZjNDIzZDI4YTFkZjQ0OgoKICBB
Uk06IHMzYzY0eHg6IERyb3AgdW5uZWVkZWQgc2VsZWN0IG9mIFRJTUVSX09GICgyMDIwLTAxLTIx
IDIwOjU4OjAzICswMTAwKQoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpTYW1zdW5nIG1hY2gvc29jIGNoYW5nZXMgZm9yIHY1
LjYsIHBhcnQgMgoKMS4gU3dpdGNoIGZyb20gbGVnYWN5IHRvIGF0b21pYyBwd20gQVBJIGluIHJ4
MTk1MCAoczNjMjR4eCksCjIuIENsZWFudXBzIG9mIHVubmVlZGVkIHNlbGVjdHMgaW4gS2NvbmZp
Zy4KCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0KR2VlcnQgVXl0dGVyaG9ldmVuICgyKToKICAgICAgQVJNOiBleHlub3M6IERy
b3AgdW5uZWVkZWQgc2VsZWN0IG9mIE1JR0hUX0hBVkVfQ0FDSEVfTDJYMAogICAgICBBUk06IHMz
YzY0eHg6IERyb3AgdW5uZWVkZWQgc2VsZWN0IG9mIFRJTUVSX09GCgpVd2UgS2xlaW5lLUvDtm5p
ZyAoMSk6CiAgICAgIEFSTTogczNjMjR4eDogU3dpdGNoIHRvIGF0b21pYyBwd20gQVBJIGluIHJ4
MTk1MAoKIGFyY2gvYXJtL21hY2gtZXh5bm9zL0tjb25maWcgICAgICAgIHwgIDEgLQogYXJjaC9h
cm0vbWFjaC1zM2MyNHh4L21hY2gtcngxOTUwLmMgfCAxOSArKysrKysrKysrKystLS0tLS0tCiBh
cmNoL2FybS9tYWNoLXMzYzY0eHgvS2NvbmZpZyAgICAgICB8ICAxIC0KIDMgZmlsZXMgY2hhbmdl
ZCwgMTIgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
